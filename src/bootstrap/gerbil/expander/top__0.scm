(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707384296)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx147893_)
        (letrec ((_expand-special147895_
                  (lambda (_hd147897_ _K147898_ _rest147899_ _r147900_)
                    (_K147898_
                     _rest147899_
                     (cons (gx#core-expand-top _hd147897_) _r147900_)))))
          (gx#core-expand-block__0 _stx147893_ _expand-special147895_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx147646_)
        (letrec ((_expand-special147648_
                  (lambda (_hd147768_ _K147769_ _rest147770_ _r147771_)
                    (let* ((_K147775_
                            (lambda (_e147773_)
                              (_K147769_
                               _rest147770_
                               (cons _e147773_ _r147771_))))
                           (_e147776147805_ _hd147768_)
                           (_E147800147809_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147776147805_)))
                           (_E147796147821_
                            (lambda ()
                              (if (gx#stx-pair? _e147776147805_)
                                  (let ((_e147801147813_
                                         (gx#syntax-e _e147776147805_)))
                                    (let ((_hd147802147816_
                                           (##car _e147801147813_))
                                          (_tl147803147818_
                                           (##cdr _e147801147813_)))
                                      (if (and (gx#identifier?
                                                _hd147802147816_)
                                               (gx#core-identifier=?
                                                _hd147802147816_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K147775_
                                               (gx#core-expand-define-runtime%
                                                _hd147768_))
                                              (_E147800147809_))
                                          (_E147800147809_))))
                                  (_E147800147809_))))
                           (_E147792147833_
                            (lambda ()
                              (if (gx#stx-pair? _e147776147805_)
                                  (let ((_e147797147825_
                                         (gx#syntax-e _e147776147805_)))
                                    (let ((_hd147798147828_
                                           (##car _e147797147825_))
                                          (_tl147799147830_
                                           (##cdr _e147797147825_)))
                                      (if (and (gx#identifier?
                                                _hd147798147828_)
                                               (gx#core-identifier=?
                                                _hd147798147828_
                                                '%#define-alias))
                                          (if '#t
                                              (_K147775_
                                               (gx#core-expand-define-alias%
                                                _hd147768_))
                                              (_E147796147821_))
                                          (_E147796147821_))))
                                  (_E147796147821_))))
                           (_E147782147845_
                            (lambda ()
                              (if (gx#stx-pair? _e147776147805_)
                                  (let ((_e147793147837_
                                         (gx#syntax-e _e147776147805_)))
                                    (let ((_hd147794147840_
                                           (##car _e147793147837_))
                                          (_tl147795147842_
                                           (##cdr _e147793147837_)))
                                      (if (and (gx#identifier?
                                                _hd147794147840_)
                                               (gx#core-identifier=?
                                                _hd147794147840_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K147775_
                                               (gx#core-expand-define-syntax%
                                                _hd147768_))
                                              (_E147792147833_))
                                          (_E147792147833_))))
                                  (_E147792147833_))))
                           (_E147778147877_
                            (lambda ()
                              (if (gx#stx-pair? _e147776147805_)
                                  (let ((_e147783147849_
                                         (gx#syntax-e _e147776147805_)))
                                    (let ((_hd147784147852_
                                           (##car _e147783147849_))
                                          (_tl147785147854_
                                           (##cdr _e147783147849_)))
                                      (if (and (gx#identifier?
                                                _hd147784147852_)
                                               (gx#core-identifier=?
                                                _hd147784147852_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147785147854_)
                                              (let ((_e147786147857_
                                                     (gx#syntax-e
                                                      _tl147785147854_)))
                                                (let ((_hd147787147860_
                                                       (##car _e147786147857_))
                                                      (_tl147788147862_
                                                       (##cdr _e147786147857_)))
                                                  (let ((_hd-bind147865_
                                                         _hd147787147860_))
                                                    (if (gx#stx-pair?
                                                         _tl147788147862_)
                                                        (let ((_e147789147867_
                                                               (gx#syntax-e
                                                                _tl147788147862_)))
                                                          (let ((_hd147790147870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147789147867_))
                        (_tl147791147872_ (##cdr _e147789147867_)))
                    (let ((_expr147875_ _hd147790147870_))
                      (if (gx#stx-null? _tl147791147872_)
                          (if (gx#core-bind-values? _hd-bind147865_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147865_)
                                (_K147775_ _hd147768_))
                              (_E147782147845_))
                          (_E147782147845_)))))
                (_E147782147845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147782147845_))
                                          (_E147782147845_))))
                                  (_E147782147845_))))
                           (_E147777147889_
                            (lambda ()
                              (if (gx#stx-pair? _e147776147805_)
                                  (let ((_e147779147881_
                                         (gx#syntax-e _e147776147805_)))
                                    (let ((_hd147780147884_
                                           (##car _e147779147881_))
                                          (_tl147781147886_
                                           (##cdr _e147779147881_)))
                                      (if (and (gx#identifier?
                                                _hd147780147884_)
                                               (gx#core-identifier=?
                                                _hd147780147884_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K147775_
                                               (gx#core-expand-begin-syntax%
                                                _hd147768_))
                                              (_E147778147877_))
                                          (_E147778147877_))))
                                  (_E147778147877_)))))
                      (_E147777147889_))))
                 (_eval-body147649_
                  (lambda (_rbody147657_)
                    (let _lp147659_ ((_rest147661_ _rbody147657_)
                                     (_body147662_ '())
                                     (_ebody147663_ '()))
                      (let* ((_rest147664147672_ _rest147661_)
                             (_else147666147680_
                              (lambda ()
                                (values _body147662_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody147663_)
                                          (gx#stx-source _stx147646_))))))
                             (_K147668147756_
                              (lambda (_rest147683_ _hd147684_)
                                (let* ((_e147685147702_ _hd147684_)
                                       (_E147697147706_
                                        (lambda ()
                                          (_lp147659_
                                           _rest147683_
                                           (cons _hd147684_ _body147662_)
                                           (cons _hd147684_ _ebody147663_))))
                                       (_E147687147718_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147685147702_)
                                              (let ((_e147698147710_
                                                     (gx#syntax-e
                                                      _e147685147702_)))
                                                (let ((_hd147699147713_
                                                       (##car _e147698147710_))
                                                      (_tl147700147715_
                                                       (##cdr _e147698147710_)))
                                                  (if (and (gx#identifier?
                                                            _hd147699147713_)
                                                           (gx#core-identifier=?
                                                            _hd147699147713_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp147659_
                                                           _rest147683_
                                                           (cons _hd147684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body147662_)
                   _ebody147663_)
                  (_E147697147706_))
              (_E147697147706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147697147706_))))
                                       (_E147686147752_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147685147702_)
                                              (let ((_e147688147722_
                                                     (gx#syntax-e
                                                      _e147685147702_)))
                                                (let ((_hd147689147725_
                                                       (##car _e147688147722_))
                                                      (_tl147690147727_
                                                       (##cdr _e147688147722_)))
                                                  (if (and (gx#identifier?
                                                            _hd147689147725_)
                                                           (gx#core-identifier=?
                                                            _hd147689147725_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl147690147727_)
                                                          (let ((_e147691147730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl147690147727_)))
                    (let ((_hd147692147733_ (##car _e147691147730_))
                          (_tl147693147735_ (##cdr _e147691147730_)))
                      (let ((_hd-bind147738_ _hd147692147733_))
                        (if (gx#stx-pair? _tl147693147735_)
                            (let ((_e147694147740_
                                   (gx#syntax-e _tl147693147735_)))
                              (let ((_hd147695147743_ (##car _e147694147740_))
                                    (_tl147696147745_ (##cdr _e147694147740_)))
                                (let ((_expr147748_ _hd147695147743_))
                                  (if (gx#stx-null? _tl147696147745_)
                                      (if '#t
                                          (let ((_ehd147750_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind147738_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr147748_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd147684_))))
                                            (_lp147659_
                                             _rest147683_
                                             (cons _ehd147750_ _body147662_)
                                             (cons _ehd147750_ _ebody147663_)))
                                          (_E147687147718_))
                                      (_E147687147718_)))))
                            (_E147687147718_)))))
                  (_E147687147718_))
              (_E147687147718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147687147718_)))))
                                  (_E147686147752_)))))
                        (if (##pair? _rest147664147672_)
                            (let ((_hd147669147759_ (##car _rest147664147672_))
                                  (_tl147670147761_
                                   (##cdr _rest147664147672_)))
                              (let* ((_hd147764_ _hd147669147759_)
                                     (_rest147766_ _tl147670147761_))
                                (_K147668147756_ _rest147766_ _hd147764_)))
                            (_else147666147680_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody147652_
                     (gx#core-expand-block__1
                      _stx147646_
                      _expand-special147648_
                      '#f))
                    (_g152110_ (_eval-body147649_ _rbody147652_)))
               (begin
                 (let ((_g152111_
                        (if (##values? _g152110_)
                            (##vector-length _g152110_)
                            1)))
                   (if (not (##fx= _g152111_ 2))
                       (error "Context expects 2 values" _g152111_)))
                 (let ((_expanded-body147654_ (##vector-ref _g152110_ 0))
                       (_value147655_ (##vector-ref _g152110_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body147654_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value147655_ '())))
                    (gx#stx-source _stx147646_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx147616_)
        (let* ((_e147617147624_ _stx147616_)
               (_E147619147628_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147617147624_)))
               (_E147618147642_
                (lambda ()
                  (if (gx#stx-pair? _e147617147624_)
                      (let ((_e147620147632_ (gx#syntax-e _e147617147624_)))
                        (let ((_hd147621147635_ (##car _e147620147632_))
                              (_tl147622147637_ (##cdr _e147620147632_)))
                          (let ((_body147640_ _tl147622147637_))
                            (if (gx#stx-list? _body147640_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body147640_)
                                 (gx#stx-source _stx147616_))
                                (_E147619147628_)))))
                      (_E147619147628_)))))
          (_E147618147642_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx147614_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx147614_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx147560_)
        (let* ((_e147561147574_ _stx147560_)
               (_E147563147578_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147561147574_)))
               (_E147562147610_
                (lambda ()
                  (if (gx#stx-pair? _e147561147574_)
                      (let ((_e147564147582_ (gx#syntax-e _e147561147574_)))
                        (let ((_hd147565147585_ (##car _e147564147582_))
                              (_tl147566147587_ (##cdr _e147564147582_)))
                          (if (gx#stx-pair? _tl147566147587_)
                              (let ((_e147567147590_
                                     (gx#syntax-e _tl147566147587_)))
                                (let ((_hd147568147593_
                                       (##car _e147567147590_))
                                      (_tl147569147595_
                                       (##cdr _e147567147590_)))
                                  (let ((_ann147598_ _hd147568147593_))
                                    (if (gx#stx-pair? _tl147569147595_)
                                        (let ((_e147570147600_
                                               (gx#syntax-e _tl147569147595_)))
                                          (let ((_hd147571147603_
                                                 (##car _e147570147600_))
                                                (_tl147572147605_
                                                 (##cdr _e147570147600_)))
                                            (let ((_expr147608_
                                                   _hd147571147603_))
                                              (if (gx#stx-null?
                                                   _tl147572147605_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann147598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr147608_)
                                 '())))
               (gx#stx-source _stx147560_))
              (_E147563147578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147563147578_)))))
                                        (_E147563147578_)))))
                              (_E147563147578_))))
                      (_E147563147578_)))))
          (_E147562147610_))))
    (define gx#core-expand-local-block
      (lambda (_stx147284_ _body147285_)
        (letrec ((_expand-special147287_
                  (lambda (_hd147555_ _K147556_ _rest147557_ _r147558_)
                    (_K147556_
                     '()
                     (cons (_expand-internal147288_ _hd147555_ _rest147557_)
                           _r147558_))))
                 (_expand-internal147288_
                  (lambda (_hd147551_ _rest147552_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal147290_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd147551_ _rest147552_))
                          (gx#stx-source _stx147284_))
                         _expand-internal-special147289_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj152104 (make-object* gx#local-context::t '6)))
                       (gx#local-context:::init! __obj152104)
                       __obj152104))))
                 (_expand-internal-special147289_
                  (lambda (_hd147446_ _K147447_ _rest147448_ _r147449_)
                    (let* ((_e147450147475_ _hd147446_)
                           (_E147470147479_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147450147475_)))
                           (_E147466147491_
                            (lambda ()
                              (if (gx#stx-pair? _e147450147475_)
                                  (let ((_e147471147483_
                                         (gx#syntax-e _e147450147475_)))
                                    (let ((_hd147472147486_
                                           (##car _e147471147483_))
                                          (_tl147473147488_
                                           (##cdr _e147471147483_)))
                                      (if (and (gx#identifier?
                                                _hd147472147486_)
                                               (gx#core-identifier=?
                                                _hd147472147486_
                                                '%#declare))
                                          (if '#t
                                              (_K147447_
                                               _rest147448_
                                               (cons (gx#core-expand-declare%
                                                      _hd147446_)
                                                     _r147449_))
                                              (_E147470147479_))
                                          (_E147470147479_))))
                                  (_E147470147479_))))
                           (_E147462147503_
                            (lambda ()
                              (if (gx#stx-pair? _e147450147475_)
                                  (let ((_e147467147495_
                                         (gx#syntax-e _e147450147475_)))
                                    (let ((_hd147468147498_
                                           (##car _e147467147495_))
                                          (_tl147469147500_
                                           (##cdr _e147467147495_)))
                                      (if (and (gx#identifier?
                                                _hd147468147498_)
                                               (gx#core-identifier=?
                                                _hd147468147498_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd147446_)
                                                (_K147447_
                                                 _rest147448_
                                                 _r147449_))
                                              (_E147466147491_))
                                          (_E147466147491_))))
                                  (_E147466147491_))))
                           (_E147452147515_
                            (lambda ()
                              (if (gx#stx-pair? _e147450147475_)
                                  (let ((_e147463147507_
                                         (gx#syntax-e _e147450147475_)))
                                    (let ((_hd147464147510_
                                           (##car _e147463147507_))
                                          (_tl147465147512_
                                           (##cdr _e147463147507_)))
                                      (if (and (gx#identifier?
                                                _hd147464147510_)
                                               (gx#core-identifier=?
                                                _hd147464147510_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd147446_)
                                                (_K147447_
                                                 _rest147448_
                                                 _r147449_))
                                              (_E147462147503_))
                                          (_E147462147503_))))
                                  (_E147462147503_))))
                           (_E147451147547_
                            (lambda ()
                              (if (gx#stx-pair? _e147450147475_)
                                  (let ((_e147453147519_
                                         (gx#syntax-e _e147450147475_)))
                                    (let ((_hd147454147522_
                                           (##car _e147453147519_))
                                          (_tl147455147524_
                                           (##cdr _e147453147519_)))
                                      (if (and (gx#identifier?
                                                _hd147454147522_)
                                               (gx#core-identifier=?
                                                _hd147454147522_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147455147524_)
                                              (let ((_e147456147527_
                                                     (gx#syntax-e
                                                      _tl147455147524_)))
                                                (let ((_hd147457147530_
                                                       (##car _e147456147527_))
                                                      (_tl147458147532_
                                                       (##cdr _e147456147527_)))
                                                  (let ((_hd-bind147535_
                                                         _hd147457147530_))
                                                    (if (gx#stx-pair?
                                                         _tl147458147532_)
                                                        (let ((_e147459147537_
                                                               (gx#syntax-e
                                                                _tl147458147532_)))
                                                          (let ((_hd147460147540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147459147537_))
                        (_tl147461147542_ (##cdr _e147459147537_)))
                    (let ((_expr147545_ _hd147460147540_))
                      (if (gx#stx-null? _tl147461147542_)
                          (if (gx#core-bind-values? _hd-bind147535_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147535_)
                                (_K147447_
                                 _rest147448_
                                 (cons _hd147446_ _r147449_)))
                              (_E147452147515_))
                          (_E147452147515_)))))
                (_E147452147515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147452147515_))
                                          (_E147452147515_))))
                                  (_E147452147515_)))))
                      (_E147451147547_))))
                 (_wrap-internal147290_
                  (lambda (_rbody147292_)
                    (let _lp147294_ ((_rest147296_ _rbody147292_)
                                     (_decls147297_ '())
                                     (_bind147298_ '())
                                     (_body147299_ '()))
                      (let* ((_e147300147307_ _rest147296_)
                             (_E147302147356_
                              (lambda ()
                                (let* ((_body147351_
                                        (let* ((_body147310147320_
                                                _body147299_)
                                               (_else147313147328_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body147299_)
                                                   (gx#stx-source
                                                    _stx147284_)))))
                                          (let ((_K147318147348_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx147284_)))
                                                (_K147315147334_
                                                 (lambda (_expr147332_)
                                                   _expr147332_)))
                                            (let ((_try-match147312147344_
                                                   (lambda ()
                                                     (if (##pair? _body147310147320_)
                                                         (let ((_tl147317147339_
                                                                (##cdr _body147310147320_))
                                                               (_hd147316147337_
                                                                (##car _body147310147320_)))
                                                           (if (##null? _tl147317147339_)
                                                               (let ((_expr147342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147316147337_))
                         (_K147315147334_ _expr147342_))
                       (_else147313147328_)))
                 (_else147313147328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body147310147320_)
                                                  (_K147318147348_)
                                                  (_try-match147312147344_))))))
                                       (_body147353_
                                        (if (null? _bind147298_)
                                            _body147351_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind147298_
                                                         (cons _body147351_
                                                               '())))
                                             (gx#stx-source _stx147284_)))))
                                  (if (null? _decls147297_)
                                      _body147353_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls147297_
                                                   (cons _body147353_ '())))
                                       (gx#stx-source _stx147284_))))))
                             (_E147301147442_
                              (lambda ()
                                (if (gx#stx-pair? _e147300147307_)
                                    (let ((_e147303147360_
                                           (gx#syntax-e _e147300147307_)))
                                      (let ((_hd147304147363_
                                             (##car _e147303147360_))
                                            (_tl147305147365_
                                             (##cdr _e147303147360_)))
                                        (let* ((_hd147368_ _hd147304147363_)
                                               (_rest147370_ _tl147305147365_))
                                          (if '#t
                                              (let* ((_e147371147388_
                                                      _hd147368_)
                                                     (_E147383147392_
                                                      (lambda ()
                                                        (if (null? _bind147298_)
                                                            (_lp147294_
                                                             _rest147370_
                                                             _decls147297_
                                                             _bind147298_
                                                             (cons _hd147368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body147299_))
                    (_lp147294_
                     _rest147370_
                     _decls147297_
                     (cons (cons '#f (cons _hd147368_ '())) _bind147298_)
                     _body147299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147373147406_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147371147388_)
                                                            (let ((_e147384147396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147371147388_)))
                      (let ((_hd147385147399_ (##car _e147384147396_))
                            (_tl147386147401_ (##cdr _e147384147396_)))
                        (if (and (gx#identifier? _hd147385147399_)
                                 (gx#core-identifier=?
                                  _hd147385147399_
                                  '%#declare))
                            (let ((_xdecls147404_ _tl147386147401_))
                              (if '#t
                                  (_lp147294_
                                   _rest147370_
                                   (gx#stx-foldr
                                    cons
                                    _decls147297_
                                    _xdecls147404_)
                                   _bind147298_
                                   _body147299_)
                                  (_E147383147392_)))
                            (_E147383147392_))))
                    (_E147383147392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147372147438_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147371147388_)
                                                            (let ((_e147374147410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147371147388_)))
                      (let ((_hd147375147413_ (##car _e147374147410_))
                            (_tl147376147415_ (##cdr _e147374147410_)))
                        (if (and (gx#identifier? _hd147375147413_)
                                 (gx#core-identifier=?
                                  _hd147375147413_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl147376147415_)
                                (let ((_e147377147418_
                                       (gx#syntax-e _tl147376147415_)))
                                  (let ((_hd147378147421_
                                         (##car _e147377147418_))
                                        (_tl147379147423_
                                         (##cdr _e147377147418_)))
                                    (let ((_hd-bind147426_ _hd147378147421_))
                                      (if (gx#stx-pair? _tl147379147423_)
                                          (let ((_e147380147428_
                                                 (gx#syntax-e
                                                  _tl147379147423_)))
                                            (let ((_hd147381147431_
                                                   (##car _e147380147428_))
                                                  (_tl147382147433_
                                                   (##cdr _e147380147428_)))
                                              (let ((_expr147436_
                                                     _hd147381147431_))
                                                (if (gx#stx-null?
                                                     _tl147382147433_)
                                                    (if '#t
                                                        (_lp147294_
                                                         _rest147370_
                                                         _decls147297_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind147426_)
                             (cons (gx#core-expand-expression _expr147436_)
                                   '()))
                       _bind147298_)
                 _body147299_)
                (_E147373147406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E147373147406_)))))
                                          (_E147373147406_)))))
                                (_E147373147406_))
                            (_E147373147406_))))
                    (_E147373147406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147372147438_))
                                              (_E147302147356_)))))
                                    (_E147302147356_)))))
                        (_E147301147442_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body147285_)
            (gx#stx-source _stx147284_))
           _expand-special147287_))))
    (define gx#core-expand-declare%
      (lambda (_stx147222_)
        (let* ((_e147223147230_ _stx147222_)
               (_E147225147234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147223147230_)))
               (_E147224147280_
                (lambda ()
                  (if (gx#stx-pair? _e147223147230_)
                      (let ((_e147226147238_ (gx#syntax-e _e147223147230_)))
                        (let ((_hd147227147241_ (##car _e147226147238_))
                              (_tl147228147243_ (##cdr _e147226147238_)))
                          (let ((_body147246_ _tl147228147243_))
                            (if (gx#stx-list? _body147246_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl147248_)
                                     (let* ((_e147249147256_ _decl147248_)
                                            (_E147251147260_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e147249147256_)))
                                            (_E147250147276_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e147249147256_)
                                                   (let ((_e147252147264_
                                                          (gx#syntax-e
                                                           _e147249147256_)))
                                                     (let ((_hd147253147267_
                                                            (##car _e147252147264_))
                                                           (_tl147254147269_
                                                            (##cdr _e147252147264_)))
                                                       (let* ((_head147272_
                                                               _hd147253147267_)
                                                              (_args147274_
                                                               _tl147254147269_))
                                                         (if (gx#stx-list?
                                                              _args147274_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl147248_)
                                                             (_E147251147260_)))))
                                                   (_E147251147260_)))))
                                       (_E147250147276_)))
                                   _body147246_))
                                 (gx#stx-source _stx147222_))
                                (_E147225147234_)))))
                      (_E147225147234_)))))
          (_E147224147280_))))
    (define gx#core-expand-extern%
      (lambda (_stx147126_)
        (let* ((_e147127147134_ _stx147126_)
               (_E147129147138_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147127147134_)))
               (_E147128147218_
                (lambda ()
                  (if (gx#stx-pair? _e147127147134_)
                      (let ((_e147130147142_ (gx#syntax-e _e147127147134_)))
                        (let ((_hd147131147145_ (##car _e147130147142_))
                              (_tl147132147147_ (##cdr _e147130147142_)))
                          (let ((_body147150_ _tl147132147147_))
                            (if '#t
                                (let _lp147152_ ((_rest147154_ _body147150_)
                                                 (_r147155_ '()))
                                  (let* ((_e147156147170_ _rest147154_)
                                         (_E147168147174_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx147126_)))
                                         (_E147158147178_
                                          (lambda ()
                                            (if (gx#stx-null? _e147156147170_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r147155_))
                                                     (gx#stx-source
                                                      _stx147126_))
                                                    (_E147168147174_))
                                                (_E147168147174_))))
                                         (_E147157147214_
                                          (lambda ()
                                            (if (gx#stx-pair? _e147156147170_)
                                                (let ((_e147159147182_
                                                       (gx#syntax-e
                                                        _e147156147170_)))
                                                  (let ((_hd147160147185_
                                                         (##car _e147159147182_))
                                                        (_tl147161147187_
                                                         (##cdr _e147159147182_)))
                                                    (if (gx#stx-pair?
                                                         _hd147160147185_)
                                                        (let ((_e147162147190_
                                                               (gx#syntax-e
                                                                _hd147160147185_)))
                                                          (let ((_hd147163147193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147162147190_))
                        (_tl147164147195_ (##cdr _e147162147190_)))
                    (let ((_id147198_ _hd147163147193_))
                      (if (gx#stx-pair? _tl147164147195_)
                          (let ((_e147165147200_
                                 (gx#syntax-e _tl147164147195_)))
                            (let ((_hd147166147203_ (##car _e147165147200_))
                                  (_tl147167147205_ (##cdr _e147165147200_)))
                              (let ((_eid147208_ _hd147166147203_))
                                (if (gx#stx-null? _tl147167147205_)
                                    (let ((_rest147210_ _tl147161147187_))
                                      (if (and (gx#identifier? _id147198_)
                                               (gx#identifier? _eid147208_))
                                          (let ((_eid147212_
                                                 (gx#stx-e _eid147208_)))
                                            (gx#core-bind-extern!__0
                                             _id147198_
                                             _eid147212_)
                                            (_lp147152_
                                             _rest147210_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id147198_)
                                                         (cons _eid147212_
                                                               '()))
                                                   _r147155_)))
                                          (_E147158147178_)))
                                    (_E147158147178_)))))
                          (_E147158147178_)))))
                (_E147158147178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147158147178_)))))
                                    (_E147157147214_)))
                                (_E147129147138_)))))
                      (_E147129147138_)))))
          (_E147128147218_))))
    (define gx#core-expand-define-values%
      (lambda (_stx147072_)
        (let* ((_e147073147086_ _stx147072_)
               (_E147075147090_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147073147086_)))
               (_E147074147122_
                (lambda ()
                  (if (gx#stx-pair? _e147073147086_)
                      (let ((_e147076147094_ (gx#syntax-e _e147073147086_)))
                        (let ((_hd147077147097_ (##car _e147076147094_))
                              (_tl147078147099_ (##cdr _e147076147094_)))
                          (if (gx#stx-pair? _tl147078147099_)
                              (let ((_e147079147102_
                                     (gx#syntax-e _tl147078147099_)))
                                (let ((_hd147080147105_
                                       (##car _e147079147102_))
                                      (_tl147081147107_
                                       (##cdr _e147079147102_)))
                                  (let ((_hd147110_ _hd147080147105_))
                                    (if (gx#stx-pair? _tl147081147107_)
                                        (let ((_e147082147112_
                                               (gx#syntax-e _tl147081147107_)))
                                          (let ((_hd147083147115_
                                                 (##car _e147082147112_))
                                                (_tl147084147117_
                                                 (##cdr _e147082147112_)))
                                            (let ((_expr147120_
                                                   _hd147083147115_))
                                              (if (gx#stx-null?
                                                   _tl147084147117_)
                                                  (if (gx#core-bind-values?
                                                       _hd147110_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd147110_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147110_)
                             (cons (gx#core-expand-expression _expr147120_)
                                   '())))
                 (gx#stx-source _stx147072_)))
              (_E147075147090_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147075147090_)))))
                                        (_E147075147090_)))))
                              (_E147075147090_))))
                      (_E147075147090_)))))
          (_E147074147122_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx147016_)
        (let* ((_e147017147030_ _stx147016_)
               (_E147019147034_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147017147030_)))
               (_E147018147068_
                (lambda ()
                  (if (gx#stx-pair? _e147017147030_)
                      (let ((_e147020147038_ (gx#syntax-e _e147017147030_)))
                        (let ((_hd147021147041_ (##car _e147020147038_))
                              (_tl147022147043_ (##cdr _e147020147038_)))
                          (if (gx#stx-pair? _tl147022147043_)
                              (let ((_e147023147046_
                                     (gx#syntax-e _tl147022147043_)))
                                (let ((_hd147024147049_
                                       (##car _e147023147046_))
                                      (_tl147025147051_
                                       (##cdr _e147023147046_)))
                                  (let ((_id147054_ _hd147024147049_))
                                    (if (gx#stx-pair? _tl147025147051_)
                                        (let ((_e147026147056_
                                               (gx#syntax-e _tl147025147051_)))
                                          (let ((_hd147027147059_
                                                 (##car _e147026147056_))
                                                (_tl147028147061_
                                                 (##cdr _e147026147056_)))
                                            (let ((_binding-id147064_
                                                   _hd147027147059_))
                                              (if (gx#stx-null?
                                                   _tl147028147061_)
                                                  (if (and (gx#identifier?
                                                            _id147054_)
                                                           (gx#identifier?
                                                            _binding-id147064_))
                                                      (let ((_eid147066_
                                                             (gx#stx-e
                                                              _binding-id147064_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id147054_
                                                         _eid147066_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id147054_)
                             (cons _eid147066_ '())))))
              (_E147019147034_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147019147034_)))))
                                        (_E147019147034_)))))
                              (_E147019147034_))))
                      (_E147019147034_)))))
          (_E147018147068_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx146959_)
        (let* ((_e146960146973_ _stx146959_)
               (_E146962146977_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146960146973_)))
               (_E146961147012_
                (lambda ()
                  (if (gx#stx-pair? _e146960146973_)
                      (let ((_e146963146981_ (gx#syntax-e _e146960146973_)))
                        (let ((_hd146964146984_ (##car _e146963146981_))
                              (_tl146965146986_ (##cdr _e146963146981_)))
                          (if (gx#stx-pair? _tl146965146986_)
                              (let ((_e146966146989_
                                     (gx#syntax-e _tl146965146986_)))
                                (let ((_hd146967146992_
                                       (##car _e146966146989_))
                                      (_tl146968146994_
                                       (##cdr _e146966146989_)))
                                  (let ((_id146997_ _hd146967146992_))
                                    (if (gx#stx-pair? _tl146968146994_)
                                        (let ((_e146969146999_
                                               (gx#syntax-e _tl146968146994_)))
                                          (let ((_hd146970147002_
                                                 (##car _e146969146999_))
                                                (_tl146971147004_
                                                 (##cdr _e146969146999_)))
                                            (let ((_expr147007_
                                                   _hd146970147002_))
                                              (if (gx#stx-null?
                                                   _tl146971147004_)
                                                  (if (gx#identifier?
                                                       _id146997_)
                                                      (let ((_g152112_
                                                             (gx#core-expand-expression+1
                                                              _expr147007_)))
                                                        (begin
                                                          (let ((_g152113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g152112_)
                             (##vector-length _g152112_)
                             1)))
                    (if (not (##fx= _g152113_ 2))
                        (error "Context expects 2 values" _g152113_)))
                  (let ((_e-stx147009_ (##vector-ref _g152112_ 0))
                        (_e147010_ (##vector-ref _g152112_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id146997_ _e147010_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id146997_)
                                   (cons _e-stx147009_ '())))
                       (gx#stx-source _stx146959_))))))
              (_E146962146977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146962146977_)))))
                                        (_E146962146977_)))))
                              (_E146962146977_))))
                      (_E146962146977_)))))
          (_E146961147012_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx146903_)
        (let* ((_e146904146917_ _stx146903_)
               (_E146906146921_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146904146917_)))
               (_E146905146955_
                (lambda ()
                  (if (gx#stx-pair? _e146904146917_)
                      (let ((_e146907146925_ (gx#syntax-e _e146904146917_)))
                        (let ((_hd146908146928_ (##car _e146907146925_))
                              (_tl146909146930_ (##cdr _e146907146925_)))
                          (if (gx#stx-pair? _tl146909146930_)
                              (let ((_e146910146933_
                                     (gx#syntax-e _tl146909146930_)))
                                (let ((_hd146911146936_
                                       (##car _e146910146933_))
                                      (_tl146912146938_
                                       (##cdr _e146910146933_)))
                                  (let ((_id146941_ _hd146911146936_))
                                    (if (gx#stx-pair? _tl146912146938_)
                                        (let ((_e146913146943_
                                               (gx#syntax-e _tl146912146938_)))
                                          (let ((_hd146914146946_
                                                 (##car _e146913146943_))
                                                (_tl146915146948_
                                                 (##cdr _e146913146943_)))
                                            (let ((_alias-id146951_
                                                   _hd146914146946_))
                                              (if (gx#stx-null?
                                                   _tl146915146948_)
                                                  (if (and (gx#identifier?
                                                            _id146941_)
                                                           (gx#identifier?
                                                            _alias-id146951_))
                                                      (let ((_alias-id146953_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id146951_)))
                                                        (gx#core-bind-alias!__0
                                                         _id146941_
                                                         _alias-id146953_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146941_)
                             (cons _alias-id146953_ '())))))
              (_E146906146921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146906146921_)))))
                                        (_E146906146921_)))))
                              (_E146906146921_))))
                      (_E146906146921_)))))
          (_E146905146955_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx146846_ _wrap?146847_)
        (let* ((_e146848146858_ _stx146846_)
               (_E146850146862_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146848146858_)))
               (_E146849146889_
                (lambda ()
                  (if (gx#stx-pair? _e146848146858_)
                      (let ((_e146851146866_ (gx#syntax-e _e146848146858_)))
                        (let ((_hd146852146869_ (##car _e146851146866_))
                              (_tl146853146871_ (##cdr _e146851146866_)))
                          (if (gx#stx-pair? _tl146853146871_)
                              (let ((_e146854146874_
                                     (gx#syntax-e _tl146853146871_)))
                                (let ((_hd146855146877_
                                       (##car _e146854146874_))
                                      (_tl146856146879_
                                       (##cdr _e146854146874_)))
                                  (let* ((_hd146882_ _hd146855146877_)
                                         (_body146884_ _tl146856146879_))
                                    (if (gx#core-bind-values? _hd146882_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd146882_)
                                           (let ((_body146887_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd146882_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx146846_
                                                               _body146884_)
                                                              '()))))
                                             (if _wrap?146847_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body146887_)
                                                  (gx#stx-source _stx146846_))
                                                 _body146887_)))
                                         gx#current-expander-context
                                         (let ((__obj152105
                                                (make-object*
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152105)
                                           __obj152105))
                                        (_E146850146862_)))))
                              (_E146850146862_))))
                      (_E146850146862_)))))
          (_E146849146889_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx146896_)
        (let ((_wrap?146898_ '#t))
          (gx#core-expand-lambda%__% _stx146896_ _wrap?146898_))))
    (define gx#core-expand-lambda%
      (lambda _g152115_
        (let ((_g152114_ (##length _g152115_)))
          (cond ((##fx= _g152114_ 1)
                 (apply (lambda (_stx146896_)
                          (gx#core-expand-lambda%__0 _stx146896_))
                        _g152115_))
                ((##fx= _g152114_ 2)
                 (apply (lambda (_stx146900_ _wrap?146901_)
                          (gx#core-expand-lambda%__%
                           _stx146900_
                           _wrap?146901_))
                        _g152115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g152115_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx146810_)
        (let* ((_e146811146818_ _stx146810_)
               (_E146813146822_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146811146818_)))
               (_E146812146841_
                (lambda ()
                  (if (gx#stx-pair? _e146811146818_)
                      (let ((_e146814146826_ (gx#syntax-e _e146811146818_)))
                        (let ((_hd146815146829_ (##car _e146814146826_))
                              (_tl146816146831_ (##cdr _e146814146826_)))
                          (let ((_clauses146834_ _tl146816146831_))
                            (if (gx#stx-list? _clauses146834_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause146836_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause146836_)
                                       (let ((_$e146838_
                                              (gx#stx-source _clause146836_)))
                                         (if _$e146838_
                                             _$e146838_
                                             (gx#stx-source _stx146810_))))
                                      '#f))
                                   _clauses146834_))
                                 (gx#stx-source _stx146810_))
                                (_E146813146822_)))))
                      (_E146813146822_)))))
          (_E146812146841_))))
    (define gx#core-expand-let-values%
      (lambda (_stx146764_)
        (let* ((_e146765146775_ _stx146764_)
               (_E146767146779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146765146775_)))
               (_E146766146806_
                (lambda ()
                  (if (gx#stx-pair? _e146765146775_)
                      (let ((_e146768146783_ (gx#syntax-e _e146765146775_)))
                        (let ((_hd146769146786_ (##car _e146768146783_))
                              (_tl146770146788_ (##cdr _e146768146783_)))
                          (if (gx#stx-pair? _tl146770146788_)
                              (let ((_e146771146791_
                                     (gx#syntax-e _tl146770146788_)))
                                (let ((_hd146772146794_
                                       (##car _e146771146791_))
                                      (_tl146773146796_
                                       (##cdr _e146771146791_)))
                                  (let* ((_hd146799_ _hd146772146794_)
                                         (_body146801_ _tl146773146796_))
                                    (if (gx#core-expand-let-bind? _hd146799_)
                                        (let ((_expressions146803_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd146799_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd146799_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd146799_
                                                           _expressions146803_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx146764_
                         _body146801_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx146764_)))
                                           gx#current-expander-context
                                           (let ((__obj152106
                                                  (make-object*
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152106)
                                             __obj152106)))
                                        (_E146767146779_)))))
                              (_E146767146779_))))
                      (_E146767146779_)))))
          (_E146766146806_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx146709_ _form146710_)
        (let* ((_e146711146721_ _stx146709_)
               (_E146713146725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146711146721_)))
               (_E146712146750_
                (lambda ()
                  (if (gx#stx-pair? _e146711146721_)
                      (let ((_e146714146729_ (gx#syntax-e _e146711146721_)))
                        (let ((_hd146715146732_ (##car _e146714146729_))
                              (_tl146716146734_ (##cdr _e146714146729_)))
                          (if (gx#stx-pair? _tl146716146734_)
                              (let ((_e146717146737_
                                     (gx#syntax-e _tl146716146734_)))
                                (let ((_hd146718146740_
                                       (##car _e146717146737_))
                                      (_tl146719146742_
                                       (##cdr _e146717146737_)))
                                  (let* ((_hd146745_ _hd146718146740_)
                                         (_body146747_ _tl146719146742_))
                                    (if (gx#core-expand-let-bind? _hd146745_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd146745_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form146710_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd146745_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd146745_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx146709_
                                                               _body146747_)
                                                              '())))
                                            (gx#stx-source _stx146709_)))
                                         gx#current-expander-context
                                         (let ((__obj152107
                                                (make-object*
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152107)
                                           __obj152107))
                                        (_E146713146725_)))))
                              (_E146713146725_))))
                      (_E146713146725_)))))
          (_E146712146750_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx146757_)
        (let ((_form146759_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx146757_ _form146759_))))
    (define gx#core-expand-letrec-values%
      (lambda _g152117_
        (let ((_g152116_ (##length _g152117_)))
          (cond ((##fx= _g152116_ 1)
                 (apply (lambda (_stx146757_)
                          (gx#core-expand-letrec-values%__0 _stx146757_))
                        _g152117_))
                ((##fx= _g152116_ 2)
                 (apply (lambda (_stx146761_ _form146762_)
                          (gx#core-expand-letrec-values%__%
                           _stx146761_
                           _form146762_))
                        _g152117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g152117_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx146706_)
        (gx#core-expand-letrec-values%__% _stx146706_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx146663_)
        (if (gx#stx-list? _stx146663_)
            (gx#stx-andmap
             (lambda (_bind146665_)
               (let* ((_e146666146676_ _bind146665_)
                      (_E146668146680_ (lambda () '#f))
                      (_E146667146702_
                       (lambda ()
                         (if (gx#stx-pair? _e146666146676_)
                             (let ((_e146669146684_
                                    (gx#syntax-e _e146666146676_)))
                               (let ((_hd146670146687_ (##car _e146669146684_))
                                     (_tl146671146689_
                                      (##cdr _e146669146684_)))
                                 (let ((_hd146692_ _hd146670146687_))
                                   (if (gx#stx-pair? _tl146671146689_)
                                       (let ((_e146672146694_
                                              (gx#syntax-e _tl146671146689_)))
                                         (let ((_hd146673146697_
                                                (##car _e146672146694_))
                                               (_tl146674146699_
                                                (##cdr _e146672146694_)))
                                           (if (gx#stx-null? _tl146674146699_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd146692_)
                                                   (_E146668146680_))
                                               (_E146668146680_))))
                                       (_E146668146680_)))))
                             (_E146668146680_)))))
                 (_E146667146702_)))
             _stx146663_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind146622_)
        (let* ((_e146623146633_ _bind146622_)
               (_E146625146637_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146623146633_)))
               (_E146624146659_
                (lambda ()
                  (if (gx#stx-pair? _e146623146633_)
                      (let ((_e146626146641_ (gx#syntax-e _e146623146633_)))
                        (let ((_hd146627146644_ (##car _e146626146641_))
                              (_tl146628146646_ (##cdr _e146626146641_)))
                          (if (gx#stx-pair? _tl146628146646_)
                              (let ((_e146629146649_
                                     (gx#syntax-e _tl146628146646_)))
                                (let ((_hd146630146652_
                                       (##car _e146629146649_))
                                      (_tl146631146654_
                                       (##cdr _e146629146649_)))
                                  (let ((_expr146657_ _hd146630146652_))
                                    (if (gx#stx-null? _tl146631146654_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146657_)
                                            (_E146625146637_))
                                        (_E146625146637_)))))
                              (_E146625146637_))))
                      (_E146625146637_)))))
          (_E146624146659_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind146581_)
        (let* ((_e146582146592_ _bind146581_)
               (_E146584146596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146582146592_)))
               (_E146583146618_
                (lambda ()
                  (if (gx#stx-pair? _e146582146592_)
                      (let ((_e146585146600_ (gx#syntax-e _e146582146592_)))
                        (let ((_hd146586146603_ (##car _e146585146600_))
                              (_tl146587146605_ (##cdr _e146585146600_)))
                          (let ((_hd146608_ _hd146586146603_))
                            (if (gx#stx-pair? _tl146587146605_)
                                (let ((_e146588146610_
                                       (gx#syntax-e _tl146587146605_)))
                                  (let ((_hd146589146613_
                                         (##car _e146588146610_))
                                        (_tl146590146615_
                                         (##cdr _e146588146610_)))
                                    (if (gx#stx-null? _tl146590146615_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd146608_)
                                            (_E146584146596_))
                                        (_E146584146596_))))
                                (_E146584146596_)))))
                      (_E146584146596_)))))
          (_E146583146618_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind146539_ _expr146540_)
        (let* ((_e146541146551_ _bind146539_)
               (_E146543146555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146541146551_)))
               (_E146542146577_
                (lambda ()
                  (if (gx#stx-pair? _e146541146551_)
                      (let ((_e146544146559_ (gx#syntax-e _e146541146551_)))
                        (let ((_hd146545146562_ (##car _e146544146559_))
                              (_tl146546146564_ (##cdr _e146544146559_)))
                          (let ((_hd146567_ _hd146545146562_))
                            (if (gx#stx-pair? _tl146546146564_)
                                (let ((_e146547146569_
                                       (gx#syntax-e _tl146546146564_)))
                                  (let ((_hd146548146572_
                                         (##car _e146547146569_))
                                        (_tl146549146574_
                                         (##cdr _e146547146569_)))
                                    (if (gx#stx-null? _tl146549146574_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd146567_)
                                                  (cons _expr146540_ '()))
                                            (_E146543146555_))
                                        (_E146543146555_))))
                                (_E146543146555_)))))
                      (_E146543146555_)))))
          (_E146542146577_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx146493_)
        (let* ((_e146494146504_ _stx146493_)
               (_E146496146508_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146494146504_)))
               (_E146495146535_
                (lambda ()
                  (if (gx#stx-pair? _e146494146504_)
                      (let ((_e146497146512_ (gx#syntax-e _e146494146504_)))
                        (let ((_hd146498146515_ (##car _e146497146512_))
                              (_tl146499146517_ (##cdr _e146497146512_)))
                          (if (gx#stx-pair? _tl146499146517_)
                              (let ((_e146500146520_
                                     (gx#syntax-e _tl146499146517_)))
                                (let ((_hd146501146523_
                                       (##car _e146500146520_))
                                      (_tl146502146525_
                                       (##cdr _e146500146520_)))
                                  (let* ((_hd146528_ _hd146501146523_)
                                         (_body146530_ _tl146502146525_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146528_)
                                        (let ((_expanders146532_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd146528_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd146528_
                                              _expanders146532_)
                                             (gx#core-expand-local-block
                                              _stx146493_
                                              _body146530_))
                                           gx#current-expander-context
                                           (let ((__obj152108
                                                  (make-object*
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152108)
                                             __obj152108)))
                                        (_E146496146508_)))))
                              (_E146496146508_))))
                      (_E146496146508_)))))
          (_E146495146535_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx146442_)
        (let* ((_e146443146453_ _stx146442_)
               (_E146445146457_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146443146453_)))
               (_E146444146489_
                (lambda ()
                  (if (gx#stx-pair? _e146443146453_)
                      (let ((_e146446146461_ (gx#syntax-e _e146443146453_)))
                        (let ((_hd146447146464_ (##car _e146446146461_))
                              (_tl146448146466_ (##cdr _e146446146461_)))
                          (if (gx#stx-pair? _tl146448146466_)
                              (let ((_e146449146469_
                                     (gx#syntax-e _tl146448146466_)))
                                (let ((_hd146450146472_
                                       (##car _e146449146469_))
                                      (_tl146451146474_
                                       (##cdr _e146449146469_)))
                                  (let* ((_hd146477_ _hd146450146472_)
                                         (_body146479_ _tl146451146474_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146477_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd146477_
                                            (make-list
                                             (gx#stx-length _hd146477_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g146481146484_
                                                     _g146482146486_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g146481146484_
                                               _g146482146486_
                                               '#t))
                                            _hd146477_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd146477_))
                                           (gx#core-expand-local-block
                                            _stx146442_
                                            _body146479_))
                                         gx#current-expander-context
                                         (let ((__obj152109
                                                (make-object*
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152109)
                                           __obj152109))
                                        (_E146445146457_)))))
                              (_E146445146457_))))
                      (_E146445146457_)))))
          (_E146444146489_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx146399_)
        (if (gx#stx-list? _stx146399_)
            (gx#stx-andmap
             (lambda (_bind146401_)
               (let* ((_e146402146412_ _bind146401_)
                      (_E146404146416_ (lambda () '#f))
                      (_E146403146438_
                       (lambda ()
                         (if (gx#stx-pair? _e146402146412_)
                             (let ((_e146405146420_
                                    (gx#syntax-e _e146402146412_)))
                               (let ((_hd146406146423_ (##car _e146405146420_))
                                     (_tl146407146425_
                                      (##cdr _e146405146420_)))
                                 (let ((_hd146428_ _hd146406146423_))
                                   (if (gx#stx-pair? _tl146407146425_)
                                       (let ((_e146408146430_
                                              (gx#syntax-e _tl146407146425_)))
                                         (let ((_hd146409146433_
                                                (##car _e146408146430_))
                                               (_tl146410146435_
                                                (##cdr _e146408146430_)))
                                           (if (gx#stx-null? _tl146410146435_)
                                               (if '#t
                                                   (gx#identifier? _hd146428_)
                                                   (_E146404146416_))
                                               (_E146404146416_))))
                                       (_E146404146416_)))))
                             (_E146404146416_)))))
                 (_E146403146438_)))
             _stx146399_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind146356_)
        (let* ((_e146357146367_ _bind146356_)
               (_E146359146371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146357146367_)))
               (_E146358146395_
                (lambda ()
                  (if (gx#stx-pair? _e146357146367_)
                      (let ((_e146360146375_ (gx#syntax-e _e146357146367_)))
                        (let ((_hd146361146378_ (##car _e146360146375_))
                              (_tl146362146380_ (##cdr _e146360146375_)))
                          (if (gx#stx-pair? _tl146362146380_)
                              (let ((_e146363146383_
                                     (gx#syntax-e _tl146362146380_)))
                                (let ((_hd146364146386_
                                       (##car _e146363146383_))
                                      (_tl146365146388_
                                       (##cdr _e146363146383_)))
                                  (let ((_expr146391_ _hd146364146386_))
                                    (if (gx#stx-null? _tl146365146388_)
                                        (if '#t
                                            (let ((_g152118_
                                                   (gx#core-expand-expression+1
                                                    _expr146391_)))
                                              (begin
                                                (let ((_g152119_
                                                       (if (##values?
                                                            _g152118_)
                                                           (##vector-length
                                                            _g152118_)
                                                           1)))
                                                  (if (not (##fx= _g152119_ 2))
                                                      (error "Context expects 2 values"
                                                             _g152119_)))
                                                (let ((_e146393_
                                                       (##vector-ref
                                                        _g152118_
                                                        1)))
                                                  _e146393_)))
                                            (_E146359146371_))
                                        (_E146359146371_)))))
                              (_E146359146371_))))
                      (_E146359146371_)))))
          (_E146358146395_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind146301_ _e146302_ _rebind?146303_)
        (let* ((_e146304146314_ _bind146301_)
               (_E146306146318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146304146314_)))
               (_E146305146340_
                (lambda ()
                  (if (gx#stx-pair? _e146304146314_)
                      (let ((_e146307146322_ (gx#syntax-e _e146304146314_)))
                        (let ((_hd146308146325_ (##car _e146307146322_))
                              (_tl146309146327_ (##cdr _e146307146322_)))
                          (let ((_id146330_ _hd146308146325_))
                            (if (gx#stx-pair? _tl146309146327_)
                                (let ((_e146310146332_
                                       (gx#syntax-e _tl146309146327_)))
                                  (let ((_hd146311146335_
                                         (##car _e146310146332_))
                                        (_tl146312146337_
                                         (##cdr _e146310146332_)))
                                    (if (gx#stx-null? _tl146312146337_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id146330_
                                             _e146302_
                                             _rebind?146303_)
                                            (_E146306146318_))
                                        (_E146306146318_))))
                                (_E146306146318_)))))
                      (_E146306146318_)))))
          (_E146305146340_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind146347_ _e146348_)
        (let ((_rebind?146350_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind146347_
           _e146348_
           _rebind?146350_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g152121_
        (let ((_g152120_ (##length _g152121_)))
          (cond ((##fx= _g152120_ 2)
                 (apply (lambda (_bind146347_ _e146348_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind146347_
                           _e146348_))
                        _g152121_))
                ((##fx= _g152120_ 3)
                 (apply (lambda (_bind146352_ _e146353_ _rebind?146354_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind146352_
                           _e146353_
                           _rebind?146354_))
                        _g152121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g152121_))))))
    (define gx#core-expand-expression%
      (lambda (_stx146259_)
        (let* ((_e146260146270_ _stx146259_)
               (_E146262146274_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146260146270_)))
               (_E146261146296_
                (lambda ()
                  (if (gx#stx-pair? _e146260146270_)
                      (let ((_e146263146278_ (gx#syntax-e _e146260146270_)))
                        (let ((_hd146264146281_ (##car _e146263146278_))
                              (_tl146265146283_ (##cdr _e146263146278_)))
                          (if (gx#stx-pair? _tl146265146283_)
                              (let ((_e146266146286_
                                     (gx#syntax-e _tl146265146283_)))
                                (let ((_hd146267146289_
                                       (##car _e146266146286_))
                                      (_tl146268146291_
                                       (##cdr _e146266146286_)))
                                  (let ((_expr146294_ _hd146267146289_))
                                    (if (gx#stx-null? _tl146268146291_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146294_)
                                            (_E146262146274_))
                                        (_E146262146274_)))))
                              (_E146262146274_))))
                      (_E146262146274_)))))
          (_E146261146296_))))
    (define gx#core-expand-quote%
      (lambda (_stx146218_)
        (let* ((_e146219146229_ _stx146218_)
               (_E146221146233_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146219146229_)))
               (_E146220146255_
                (lambda ()
                  (if (gx#stx-pair? _e146219146229_)
                      (let ((_e146222146237_ (gx#syntax-e _e146219146229_)))
                        (let ((_hd146223146240_ (##car _e146222146237_))
                              (_tl146224146242_ (##cdr _e146222146237_)))
                          (if (gx#stx-pair? _tl146224146242_)
                              (let ((_e146225146245_
                                     (gx#syntax-e _tl146224146242_)))
                                (let ((_hd146226146248_
                                       (##car _e146225146245_))
                                      (_tl146227146250_
                                       (##cdr _e146225146245_)))
                                  (let ((_e146253_ _hd146226146248_))
                                    (if (gx#stx-null? _tl146227146250_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e146253_)
                                                         '()))
                                             (gx#stx-source _stx146218_))
                                            (_E146221146233_))
                                        (_E146221146233_)))))
                              (_E146221146233_))))
                      (_E146221146233_)))))
          (_E146220146255_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx146177_)
        (let* ((_e146178146188_ _stx146177_)
               (_E146180146192_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146178146188_)))
               (_E146179146214_
                (lambda ()
                  (if (gx#stx-pair? _e146178146188_)
                      (let ((_e146181146196_ (gx#syntax-e _e146178146188_)))
                        (let ((_hd146182146199_ (##car _e146181146196_))
                              (_tl146183146201_ (##cdr _e146181146196_)))
                          (if (gx#stx-pair? _tl146183146201_)
                              (let ((_e146184146204_
                                     (gx#syntax-e _tl146183146201_)))
                                (let ((_hd146185146207_
                                       (##car _e146184146204_))
                                      (_tl146186146209_
                                       (##cdr _e146184146204_)))
                                  (let ((_e146212_ _hd146185146207_))
                                    (if (gx#stx-null? _tl146186146209_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e146212_)
                                                         '()))
                                             (gx#stx-source _stx146177_))
                                            (_E146180146192_))
                                        (_E146180146192_)))))
                              (_E146180146192_))))
                      (_E146180146192_)))))
          (_E146179146214_))))
    (define gx#core-expand-call%
      (lambda (_stx146134_)
        (let* ((_e146135146145_ _stx146134_)
               (_E146137146149_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146135146145_)))
               (_E146136146173_
                (lambda ()
                  (if (gx#stx-pair? _e146135146145_)
                      (let ((_e146138146153_ (gx#syntax-e _e146135146145_)))
                        (let ((_hd146139146156_ (##car _e146138146153_))
                              (_tl146140146158_ (##cdr _e146138146153_)))
                          (if (gx#stx-pair? _tl146140146158_)
                              (let ((_e146141146161_
                                     (gx#syntax-e _tl146140146158_)))
                                (let ((_hd146142146164_
                                       (##car _e146141146161_))
                                      (_tl146143146166_
                                       (##cdr _e146141146161_)))
                                  (let* ((_rator146169_ _hd146142146164_)
                                         (_args146171_ _tl146143146166_))
                                    (if (gx#stx-list? _args146171_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator146169_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args146171_))
                                         (gx#stx-source _stx146134_))
                                        (_E146137146149_)))))
                              (_E146137146149_))))
                      (_E146137146149_)))))
          (_E146136146173_))))
    (define gx#core-expand-if%
      (lambda (_stx146067_)
        (let* ((_e146068146084_ _stx146067_)
               (_E146070146088_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146068146084_)))
               (_E146069146130_
                (lambda ()
                  (if (gx#stx-pair? _e146068146084_)
                      (let ((_e146071146092_ (gx#syntax-e _e146068146084_)))
                        (let ((_hd146072146095_ (##car _e146071146092_))
                              (_tl146073146097_ (##cdr _e146071146092_)))
                          (if (gx#stx-pair? _tl146073146097_)
                              (let ((_e146074146100_
                                     (gx#syntax-e _tl146073146097_)))
                                (let ((_hd146075146103_
                                       (##car _e146074146100_))
                                      (_tl146076146105_
                                       (##cdr _e146074146100_)))
                                  (let ((_test146108_ _hd146075146103_))
                                    (if (gx#stx-pair? _tl146076146105_)
                                        (let ((_e146077146110_
                                               (gx#syntax-e _tl146076146105_)))
                                          (let ((_hd146078146113_
                                                 (##car _e146077146110_))
                                                (_tl146079146115_
                                                 (##cdr _e146077146110_)))
                                            (let ((_K146118_ _hd146078146113_))
                                              (if (gx#stx-pair?
                                                   _tl146079146115_)
                                                  (let ((_e146080146120_
                                                         (gx#syntax-e
                                                          _tl146079146115_)))
                                                    (let ((_hd146081146123_
                                                           (##car _e146080146120_))
                                                          (_tl146082146125_
                                                           (##cdr _e146080146120_)))
                                                      (let ((_E146128_
                                                             _hd146081146123_))
                                                        (if (gx#stx-null?
                                                             _tl146082146125_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test146108_)
                                     (cons (gx#core-expand-expression
                                            _K146118_)
                                           (cons (gx#core-expand-expression
                                                  _E146128_)
                                                 '()))))
                         (gx#stx-source _stx146067_))
                        (_E146070146088_))
                    (_E146070146088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146070146088_)))))
                                        (_E146070146088_)))))
                              (_E146070146088_))))
                      (_E146070146088_)))))
          (_E146069146130_))))
    (define gx#core-expand-ref%
      (lambda (_stx146026_)
        (let* ((_e146027146037_ _stx146026_)
               (_E146029146041_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146027146037_)))
               (_E146028146063_
                (lambda ()
                  (if (gx#stx-pair? _e146027146037_)
                      (let ((_e146030146045_ (gx#syntax-e _e146027146037_)))
                        (let ((_hd146031146048_ (##car _e146030146045_))
                              (_tl146032146050_ (##cdr _e146030146045_)))
                          (if (gx#stx-pair? _tl146032146050_)
                              (let ((_e146033146053_
                                     (gx#syntax-e _tl146032146050_)))
                                (let ((_hd146034146056_
                                       (##car _e146033146053_))
                                      (_tl146035146058_
                                       (##cdr _e146033146053_)))
                                  (let ((_id146061_ _hd146034146056_))
                                    (if (gx#stx-null? _tl146035146058_)
                                        (if (gx#identifier? _id146061_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id146061_
                                                          _stx146026_)
                                                         '()))
                                             (gx#stx-source _stx146026_))
                                            (_E146029146041_))
                                        (_E146029146041_)))))
                              (_E146029146041_))))
                      (_E146029146041_)))))
          (_E146028146063_))))
    (define gx#core-expand-setq%
      (lambda (_stx145972_)
        (let* ((_e145973145986_ _stx145972_)
               (_E145975145990_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145973145986_)))
               (_E145974146022_
                (lambda ()
                  (if (gx#stx-pair? _e145973145986_)
                      (let ((_e145976145994_ (gx#syntax-e _e145973145986_)))
                        (let ((_hd145977145997_ (##car _e145976145994_))
                              (_tl145978145999_ (##cdr _e145976145994_)))
                          (if (gx#stx-pair? _tl145978145999_)
                              (let ((_e145979146002_
                                     (gx#syntax-e _tl145978145999_)))
                                (let ((_hd145980146005_
                                       (##car _e145979146002_))
                                      (_tl145981146007_
                                       (##cdr _e145979146002_)))
                                  (let ((_id146010_ _hd145980146005_))
                                    (if (gx#stx-pair? _tl145981146007_)
                                        (let ((_e145982146012_
                                               (gx#syntax-e _tl145981146007_)))
                                          (let ((_hd145983146015_
                                                 (##car _e145982146012_))
                                                (_tl145984146017_
                                                 (##cdr _e145982146012_)))
                                            (let ((_expr146020_
                                                   _hd145983146015_))
                                              (if (gx#stx-null?
                                                   _tl145984146017_)
                                                  (if (gx#identifier?
                                                       _id146010_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id146010_
                            _stx145972_)
                           (cons (gx#core-expand-expression _expr146020_)
                                 '())))
               (gx#stx-source _stx145972_))
              (_E145975145990_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145975145990_)))))
                                        (_E145975145990_)))))
                              (_E145975145990_))))
                      (_E145975145990_)))))
          (_E145974146022_))))
    (define gx#macro-expand-extern
      (lambda (_stx145820_)
        (letrec ((_generate145822_
                  (lambda (_body145852_)
                    (let _lp145854_ ((_rest145856_ _body145852_)
                                     (_ns145857_
                                      (gx#core-context-namespace__0))
                                     (_r145858_ '()))
                      (let* ((_e145859145874_ _rest145856_)
                             (_E145872145878_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e145859145874_)))
                             (_E145868145882_
                              (lambda ()
                                (if (gx#stx-null? _e145859145874_)
                                    (if '#t
                                        (reverse _r145858_)
                                        (_E145872145878_))
                                    (_E145872145878_))))
                             (_E145861145939_
                              (lambda ()
                                (if (gx#stx-pair? _e145859145874_)
                                    (let ((_e145869145886_
                                           (gx#syntax-e _e145859145874_)))
                                      (let ((_hd145870145889_
                                             (##car _e145869145886_))
                                            (_tl145871145891_
                                             (##cdr _e145869145886_)))
                                        (let* ((_hd145894_ _hd145870145889_)
                                               (_rest145896_ _tl145871145891_))
                                          (if '#t
                                              (if (gx#identifier? _hd145894_)
                                                  (_lp145854_
                                                   _rest145896_
                                                   _ns145857_
                                                   (cons (cons _hd145894_
                                                               (cons (if _ns145857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd145894_
                                  _ns145857_
                                  '"#"
                                  _hd145894_)
                                 _hd145894_)
                             '()))
                 _r145858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e145897145907_
                                                          _hd145894_)
                                                         (_E145899145911_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e145897145907_)))
                                                         (_E145898145935_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e145897145907_)
                        (let ((_e145900145915_ (gx#syntax-e _e145897145907_)))
                          (let ((_hd145901145918_ (##car _e145900145915_))
                                (_tl145902145920_ (##cdr _e145900145915_)))
                            (let ((_id145923_ _hd145901145918_))
                              (if (gx#stx-pair? _tl145902145920_)
                                  (let ((_e145903145925_
                                         (gx#syntax-e _tl145902145920_)))
                                    (let ((_hd145904145928_
                                           (##car _e145903145925_))
                                          (_tl145905145930_
                                           (##cdr _e145903145925_)))
                                      (let ((_eid145933_ _hd145904145928_))
                                        (if (gx#stx-null? _tl145905145930_)
                                            (if (and (gx#identifier?
                                                      _id145923_)
                                                     (gx#identifier?
                                                      _eid145933_))
                                                (_lp145854_
                                                 _rest145896_
                                                 _ns145857_
                                                 (cons (cons _id145923_
                                                             (cons _eid145933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r145858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145899145911_))
                                            (_E145899145911_)))))
                                  (_E145899145911_)))))
                        (_E145899145911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145898145935_)))
                                              (_E145868145882_)))))
                                    (_E145868145882_))))
                             (_E145860145968_
                              (lambda ()
                                (if (gx#stx-pair? _e145859145874_)
                                    (let ((_e145862145943_
                                           (gx#syntax-e _e145859145874_)))
                                      (let ((_hd145863145946_
                                             (##car _e145862145943_))
                                            (_tl145864145948_
                                             (##cdr _e145862145943_)))
                                        (if (eq? (gx#stx-e _hd145863145946_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl145864145948_)
                                                (let ((_e145865145951_
                                                       (gx#syntax-e
                                                        _tl145864145948_)))
                                                  (let ((_hd145866145954_
                                                         (##car _e145865145951_))
                                                        (_tl145867145956_
                                                         (##cdr _e145865145951_)))
                                                    (let* ((_ns145959_
                                                            _hd145866145954_)
                                                           (_rest145961_
                                                            _tl145867145956_))
                                                      (if '#t
                                                          (let ((_ns145966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns145959_)
                             (symbol->string (gx#stx-e _ns145959_))
                             (if (or (gx#stx-string? _ns145959_)
                                     (gx#stx-false? _ns145959_))
                                 (gx#stx-e _ns145959_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx145820_
                                  _ns145959_)))))
                    (_lp145854_ _rest145961_ _ns145966_ _r145858_))
                  (_E145861145939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145861145939_))
                                            (_E145861145939_))))
                                    (_E145861145939_)))))
                        (_E145860145968_))))))
          (let* ((_e145823145830_ _stx145820_)
                 (_E145825145834_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145823145830_)))
                 (_E145824145848_
                  (lambda ()
                    (if (gx#stx-pair? _e145823145830_)
                        (let ((_e145826145838_ (gx#syntax-e _e145823145830_)))
                          (let ((_hd145827145841_ (##car _e145826145838_))
                                (_tl145828145843_ (##cdr _e145826145838_)))
                            (let ((_body145846_ _tl145828145843_))
                              (if (gx#stx-list? _body145846_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate145822_ _body145846_))
                                  (_E145825145834_)))))
                        (_E145825145834_)))))
            (_E145824145848_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx145766_)
        (let* ((_e145767145780_ _stx145766_)
               (_E145769145784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145767145780_)))
               (_E145768145816_
                (lambda ()
                  (if (gx#stx-pair? _e145767145780_)
                      (let ((_e145770145788_ (gx#syntax-e _e145767145780_)))
                        (let ((_hd145771145791_ (##car _e145770145788_))
                              (_tl145772145793_ (##cdr _e145770145788_)))
                          (if (gx#stx-pair? _tl145772145793_)
                              (let ((_e145773145796_
                                     (gx#syntax-e _tl145772145793_)))
                                (let ((_hd145774145799_
                                       (##car _e145773145796_))
                                      (_tl145775145801_
                                       (##cdr _e145773145796_)))
                                  (let ((_hd145804_ _hd145774145799_))
                                    (if (gx#stx-pair? _tl145775145801_)
                                        (let ((_e145776145806_
                                               (gx#syntax-e _tl145775145801_)))
                                          (let ((_hd145777145809_
                                                 (##car _e145776145806_))
                                                (_tl145778145811_
                                                 (##cdr _e145776145806_)))
                                            (let ((_expr145814_
                                                   _hd145777145809_))
                                              (if (gx#stx-null?
                                                   _tl145778145811_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd145804_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd145804_)
                          (cons _expr145814_ '())))
              (_E145769145784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145769145784_)))))
                                        (_E145769145784_)))))
                              (_E145769145784_))))
                      (_E145769145784_)))))
          (_E145768145816_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx145712_)
        (let* ((_e145713145726_ _stx145712_)
               (_E145715145730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145713145726_)))
               (_E145714145762_
                (lambda ()
                  (if (gx#stx-pair? _e145713145726_)
                      (let ((_e145716145734_ (gx#syntax-e _e145713145726_)))
                        (let ((_hd145717145737_ (##car _e145716145734_))
                              (_tl145718145739_ (##cdr _e145716145734_)))
                          (if (gx#stx-pair? _tl145718145739_)
                              (let ((_e145719145742_
                                     (gx#syntax-e _tl145718145739_)))
                                (let ((_hd145720145745_
                                       (##car _e145719145742_))
                                      (_tl145721145747_
                                       (##cdr _e145719145742_)))
                                  (let ((_hd145750_ _hd145720145745_))
                                    (if (gx#stx-pair? _tl145721145747_)
                                        (let ((_e145722145752_
                                               (gx#syntax-e _tl145721145747_)))
                                          (let ((_hd145723145755_
                                                 (##car _e145722145752_))
                                                (_tl145724145757_
                                                 (##cdr _e145722145752_)))
                                            (let ((_expr145760_
                                                   _hd145723145755_))
                                              (if (gx#stx-null?
                                                   _tl145724145757_)
                                                  (if (gx#identifier?
                                                       _hd145750_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd145750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr145760_ '())))
              (_E145715145730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145715145730_)))))
                                        (_E145715145730_)))))
                              (_E145715145730_))))
                      (_E145715145730_)))))
          (_E145714145762_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx145658_)
        (let* ((_e145659145672_ _stx145658_)
               (_E145661145676_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145659145672_)))
               (_E145660145708_
                (lambda ()
                  (if (gx#stx-pair? _e145659145672_)
                      (let ((_e145662145680_ (gx#syntax-e _e145659145672_)))
                        (let ((_hd145663145683_ (##car _e145662145680_))
                              (_tl145664145685_ (##cdr _e145662145680_)))
                          (if (gx#stx-pair? _tl145664145685_)
                              (let ((_e145665145688_
                                     (gx#syntax-e _tl145664145685_)))
                                (let ((_hd145666145691_
                                       (##car _e145665145688_))
                                      (_tl145667145693_
                                       (##cdr _e145665145688_)))
                                  (let ((_id145696_ _hd145666145691_))
                                    (if (gx#stx-pair? _tl145667145693_)
                                        (let ((_e145668145698_
                                               (gx#syntax-e _tl145667145693_)))
                                          (let ((_hd145669145701_
                                                 (##car _e145668145698_))
                                                (_tl145670145703_
                                                 (##cdr _e145668145698_)))
                                            (let ((_alias-id145706_
                                                   _hd145669145701_))
                                              (if (gx#stx-null?
                                                   _tl145670145703_)
                                                  (if (and (gx#identifier?
                                                            _id145696_)
                                                           (gx#identifier?
                                                            _alias-id145706_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id145696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id145706_ '())))
              (_E145661145676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145661145676_)))))
                                        (_E145661145676_)))))
                              (_E145661145676_))))
                      (_E145661145676_)))))
          (_E145660145708_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx145615_)
        (let* ((_e145616145626_ _stx145615_)
               (_E145618145630_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145616145626_)))
               (_E145617145654_
                (lambda ()
                  (if (gx#stx-pair? _e145616145626_)
                      (let ((_e145619145634_ (gx#syntax-e _e145616145626_)))
                        (let ((_hd145620145637_ (##car _e145619145634_))
                              (_tl145621145639_ (##cdr _e145619145634_)))
                          (if (gx#stx-pair? _tl145621145639_)
                              (let ((_e145622145642_
                                     (gx#syntax-e _tl145621145639_)))
                                (let ((_hd145623145645_
                                       (##car _e145622145642_))
                                      (_tl145624145647_
                                       (##cdr _e145622145642_)))
                                  (let* ((_hd145650_ _hd145623145645_)
                                         (_body145652_ _tl145624145647_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd145650_)
                                             (gx#stx-list? _body145652_)
                                             (not (gx#stx-null? _body145652_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd145650_)
                                         _body145652_)
                                        (_E145618145630_)))))
                              (_E145618145630_))))
                      (_E145618145630_)))))
          (_E145617145654_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx145551_)
        (letrec ((_generate145553_
                  (lambda (_clause145583_)
                    (let* ((_e145584145591_ _clause145583_)
                           (_E145586145595_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx145551_
                               _clause145583_)))
                           (_E145585145611_
                            (lambda ()
                              (if (gx#stx-pair? _e145584145591_)
                                  (let ((_e145587145599_
                                         (gx#syntax-e _e145584145591_)))
                                    (let ((_hd145588145602_
                                           (##car _e145587145599_))
                                          (_tl145589145604_
                                           (##cdr _e145587145599_)))
                                      (let* ((_hd145607_ _hd145588145602_)
                                             (_body145609_ _tl145589145604_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd145607_)
                                                 (gx#stx-list? _body145609_)
                                                 (not (gx#stx-null?
                                                       _body145609_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd145607_)
                                                   _body145609_)
                                             (gx#stx-source _clause145583_))
                                            (_E145586145595_)))))
                                  (_E145586145595_)))))
                      (_E145585145611_)))))
          (let* ((_e145554145561_ _stx145551_)
                 (_E145556145565_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145554145561_)))
                 (_E145555145579_
                  (lambda ()
                    (if (gx#stx-pair? _e145554145561_)
                        (let ((_e145557145569_ (gx#syntax-e _e145554145561_)))
                          (let ((_hd145558145572_ (##car _e145557145569_))
                                (_tl145559145574_ (##cdr _e145557145569_)))
                            (let ((_clauses145577_ _tl145559145574_))
                              (if (gx#stx-list? _clauses145577_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate145553_
                                    _clauses145577_))
                                  (_E145556145565_)))))
                        (_E145556145565_)))))
            (_E145555145579_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx145452_ _form145453_)
        (letrec ((_generate145455_
                  (lambda (_bind145498_)
                    (let* ((_e145499145509_ _bind145498_)
                           (_E145501145513_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx145452_
                               _bind145498_)))
                           (_E145500145537_
                            (lambda ()
                              (if (gx#stx-pair? _e145499145509_)
                                  (let ((_e145502145517_
                                         (gx#syntax-e _e145499145509_)))
                                    (let ((_hd145503145520_
                                           (##car _e145502145517_))
                                          (_tl145504145522_
                                           (##cdr _e145502145517_)))
                                      (let ((_ids145525_ _hd145503145520_))
                                        (if (gx#stx-pair? _tl145504145522_)
                                            (let ((_e145505145527_
                                                   (gx#syntax-e
                                                    _tl145504145522_)))
                                              (let ((_hd145506145530_
                                                     (##car _e145505145527_))
                                                    (_tl145507145532_
                                                     (##cdr _e145505145527_)))
                                                (let ((_expr145535_
                                                       _hd145506145530_))
                                                  (if (gx#stx-null?
                                                       _tl145507145532_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids145525_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids145525_)
                        (cons _expr145535_ '()))
                  (_E145501145513_))
              (_E145501145513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145501145513_)))))
                                  (_E145501145513_)))))
                      (_E145500145537_)))))
          (let* ((_e145456145466_ _stx145452_)
                 (_E145458145470_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145456145466_)))
                 (_E145457145494_
                  (lambda ()
                    (if (gx#stx-pair? _e145456145466_)
                        (let ((_e145459145474_ (gx#syntax-e _e145456145466_)))
                          (let ((_hd145460145477_ (##car _e145459145474_))
                                (_tl145461145479_ (##cdr _e145459145474_)))
                            (if (gx#stx-pair? _tl145461145479_)
                                (let ((_e145462145482_
                                       (gx#syntax-e _tl145461145479_)))
                                  (let ((_hd145463145485_
                                         (##car _e145462145482_))
                                        (_tl145464145487_
                                         (##cdr _e145462145482_)))
                                    (let* ((_hd145490_ _hd145463145485_)
                                           (_body145492_ _tl145464145487_))
                                      (if (and (gx#stx-list? _hd145490_)
                                               (gx#stx-list? _body145492_)
                                               (not (gx#stx-null?
                                                     _body145492_)))
                                          (gx#core-cons*
                                           _form145453_
                                           (gx#stx-map1
                                            _generate145455_
                                            _hd145490_)
                                           _body145492_)
                                          (_E145458145470_)))))
                                (_E145458145470_))))
                        (_E145458145470_)))))
            (_E145457145494_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx145544_)
        (let ((_form145546_ '%#let-values))
          (gx#macro-expand-let-values__% _stx145544_ _form145546_))))
    (define gx#macro-expand-let-values
      (lambda _g152123_
        (let ((_g152122_ (##length _g152123_)))
          (cond ((##fx= _g152122_ 1)
                 (apply (lambda (_stx145544_)
                          (gx#macro-expand-let-values__0 _stx145544_))
                        _g152123_))
                ((##fx= _g152122_ 2)
                 (apply (lambda (_stx145548_ _form145549_)
                          (gx#macro-expand-let-values__%
                           _stx145548_
                           _form145549_))
                        _g152123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g152123_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx145449_)
        (gx#macro-expand-let-values__% _stx145449_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx145447_)
        (gx#macro-expand-let-values__% _stx145447_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx145338_)
        (let* ((_e145339145365_ _stx145338_)
               (_E145351145369_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145339145365_)))
               (_E145341145411_
                (lambda ()
                  (if (gx#stx-pair? _e145339145365_)
                      (let ((_e145352145373_ (gx#syntax-e _e145339145365_)))
                        (let ((_hd145353145376_ (##car _e145352145373_))
                              (_tl145354145378_ (##cdr _e145352145373_)))
                          (if (gx#stx-pair? _tl145354145378_)
                              (let ((_e145355145381_
                                     (gx#syntax-e _tl145354145378_)))
                                (let ((_hd145356145384_
                                       (##car _e145355145381_))
                                      (_tl145357145386_
                                       (##cdr _e145355145381_)))
                                  (let ((_test145389_ _hd145356145384_))
                                    (if (gx#stx-pair? _tl145357145386_)
                                        (let ((_e145358145391_
                                               (gx#syntax-e _tl145357145386_)))
                                          (let ((_hd145359145394_
                                                 (##car _e145358145391_))
                                                (_tl145360145396_
                                                 (##cdr _e145358145391_)))
                                            (let ((_K145399_ _hd145359145394_))
                                              (if (gx#stx-pair?
                                                   _tl145360145396_)
                                                  (let ((_e145361145401_
                                                         (gx#syntax-e
                                                          _tl145360145396_)))
                                                    (let ((_hd145362145404_
                                                           (##car _e145361145401_))
                                                          (_tl145363145406_
                                                           (##cdr _e145361145401_)))
                                                      (let ((_E145409_
                                                             _hd145362145404_))
                                                        (if (gx#stx-null?
                                                             _tl145363145406_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test145389_
                         _K145399_
                         _E145409_)
                        (_E145351145369_))
                    (_E145351145369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145351145369_)))))
                                        (_E145351145369_)))))
                              (_E145351145369_))))
                      (_E145351145369_))))
               (_E145340145443_
                (lambda ()
                  (if (gx#stx-pair? _e145339145365_)
                      (let ((_e145342145415_ (gx#syntax-e _e145339145365_)))
                        (let ((_hd145343145418_ (##car _e145342145415_))
                              (_tl145344145420_ (##cdr _e145342145415_)))
                          (if (gx#stx-pair? _tl145344145420_)
                              (let ((_e145345145423_
                                     (gx#syntax-e _tl145344145420_)))
                                (let ((_hd145346145426_
                                       (##car _e145345145423_))
                                      (_tl145347145428_
                                       (##cdr _e145345145423_)))
                                  (let ((_test145431_ _hd145346145426_))
                                    (if (gx#stx-pair? _tl145347145428_)
                                        (let ((_e145348145433_
                                               (gx#syntax-e _tl145347145428_)))
                                          (let ((_hd145349145436_
                                                 (##car _e145348145433_))
                                                (_tl145350145438_
                                                 (##cdr _e145348145433_)))
                                            (let ((_K145441_ _hd145349145436_))
                                              (if (gx#stx-null?
                                                   _tl145350145438_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test145431_
                                                       _K145441_
                                                       '#!void)
                                                      (_E145341145411_))
                                                  (_E145341145411_)))))
                                        (_E145341145411_)))))
                              (_E145341145411_))))
                      (_E145341145411_)))))
          (_E145340145443_))))
    (define gx#free-identifier=?
      (lambda (_xid145326_ _yid145327_)
        (let ((_xe145329_ (gx#resolve-identifier__0 _xid145326_))
              (_ye145330_ (gx#resolve-identifier__0 _yid145327_)))
          (if (and _xe145329_ _ye145330_)
              (let ((_$e145332_ (eq? _xe145329_ _ye145330_)))
                (if _$e145332_
                    _$e145332_
                    (if (##structure-instance-of? _xe145329_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye145330_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe145329_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye145330_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe145329_ _ye145330_)
                  '#f
                  (gx#stx-eq? _xid145326_ _yid145327_))))))
    (define gx#bound-identifier=?
      (lambda (_xid145310_ _yid145311_)
        (letrec ((_context145313_
                  (lambda (_e145324_)
                    (if (##structure-direct-instance-of?
                         _e145324_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e145324_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks145314_
                  (lambda (_e145322_)
                    (if (symbol? _e145322_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e145322_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e145322_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e145322_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap145315_
                  (lambda (_e145320_)
                    (if (symbol? _e145320_)
                        _e145320_
                        (gx#syntax-local-unwrap _e145320_)))))
          (let ((_x145317_ (_unwrap145315_ _xid145310_))
                (_y145318_ (_unwrap145315_ _yid145311_)))
            (if (gx#stx-eq? _x145317_ _y145318_)
                (if (eq? (_context145313_ _x145317_)
                         (_context145313_ _y145318_))
                    (equal? (_marks145314_ _x145317_)
                            (_marks145314_ _y145318_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx145308_)
        (if (gx#identifier? _stx145308_)
            (gx#core-identifier=? _stx145308_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx145306_)
        (if (gx#identifier? _stx145306_)
            (gx#core-identifier=? _stx145306_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x145304_)
        (if (gx#identifier? _x145304_)
            (if (not (gx#underscore? _x145304_)) _x145304_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx145250_ _where145251_)
        (let _lp145253_ ((_rest145255_ (gx#syntax->list _stx145250_)))
          (let* ((_rest145256145264_ _rest145255_)
                 (_else145258145272_ (lambda () '#t))
                 (_K145260145282_
                  (lambda (_rest145275_ _hd145276_)
                    (if (not (gx#identifier? _hd145276_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where145251_
                         _hd145276_)
                        (if (find (lambda (_g145277145279_)
                                    (gx#bound-identifier=?
                                     _g145277145279_
                                     _hd145276_))
                                  _rest145275_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where145251_
                             _hd145276_)
                            (_lp145253_ _rest145275_))))))
            (if (##pair? _rest145256145264_)
                (let ((_hd145261145285_ (##car _rest145256145264_))
                      (_tl145262145287_ (##cdr _rest145256145264_)))
                  (let* ((_hd145290_ _hd145261145285_)
                         (_rest145292_ _tl145262145287_))
                    (_K145260145282_ _rest145292_ _hd145290_)))
                (_else145258145272_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx145297_)
        (let ((_where145299_ _stx145297_))
          (gx#check-duplicate-identifiers__% _stx145297_ _where145299_))))
    (define gx#check-duplicate-identifiers
      (lambda _g152125_
        (let ((_g152124_ (##length _g152125_)))
          (cond ((##fx= _g152124_ 1)
                 (apply (lambda (_stx145297_)
                          (gx#check-duplicate-identifiers__0 _stx145297_))
                        _g152125_))
                ((##fx= _g152124_ 2)
                 (apply (lambda (_stx145301_ _where145302_)
                          (gx#check-duplicate-identifiers__%
                           _stx145301_
                           _where145302_))
                        _g152125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g152125_))))))
    (define gx#core-bind-values?
      (lambda (_stx145242_)
        (gx#stx-andmap
         (lambda (_x145244_)
           (let ((_$e145246_ (gx#identifier? _x145244_)))
             (if _$e145246_ _$e145246_ (gx#stx-false? _x145244_))))
         _stx145242_)))
    (define gx#core-bind-values!__%
      (lambda (_stx145206_ _rebind?145207_ _phi145208_ _ctx145209_)
        (gx#stx-for-each1
         (lambda (_id145211_)
           (if (gx#identifier? _id145211_)
               (gx#core-bind-runtime!__%
                _id145211_
                _rebind?145207_
                _phi145208_
                _ctx145209_)
               '#!void))
         _stx145206_)))
    (define gx#core-bind-values!__0
      (lambda (_stx145216_)
        (let* ((_rebind?145218_ '#f)
               (_phi145220_ (gx#current-expander-phi))
               (_ctx145222_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145216_
           _rebind?145218_
           _phi145220_
           _ctx145222_))))
    (define gx#core-bind-values!__1
      (lambda (_stx145224_ _rebind?145225_)
        (let* ((_phi145227_ (gx#current-expander-phi))
               (_ctx145229_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145224_
           _rebind?145225_
           _phi145227_
           _ctx145229_))))
    (define gx#core-bind-values!__2
      (lambda (_stx145231_ _rebind?145232_ _phi145233_)
        (let ((_ctx145235_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145231_
           _rebind?145232_
           _phi145233_
           _ctx145235_))))
    (define gx#core-bind-values!
      (lambda _g152127_
        (let ((_g152126_ (##length _g152127_)))
          (cond ((##fx= _g152126_ 1)
                 (apply (lambda (_stx145216_)
                          (gx#core-bind-values!__0 _stx145216_))
                        _g152127_))
                ((##fx= _g152126_ 2)
                 (apply (lambda (_stx145224_ _rebind?145225_)
                          (gx#core-bind-values!__1
                           _stx145224_
                           _rebind?145225_))
                        _g152127_))
                ((##fx= _g152126_ 3)
                 (apply (lambda (_stx145231_ _rebind?145232_ _phi145233_)
                          (gx#core-bind-values!__2
                           _stx145231_
                           _rebind?145232_
                           _phi145233_))
                        _g152127_))
                ((##fx= _g152126_ 4)
                 (apply (lambda (_stx145237_
                                 _rebind?145238_
                                 _phi145239_
                                 _ctx145240_)
                          (gx#core-bind-values!__%
                           _stx145237_
                           _rebind?145238_
                           _phi145239_
                           _ctx145240_))
                        _g152127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g152127_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx145201_)
        (gx#stx-map1
         (lambda (_x145203_)
           (if (gx#identifier? _x145203_)
               (gx#core-quote-syntax__0 _x145203_)
               '#f))
         _stx145201_)))
    (define gx#core-runtime-ref?
      (lambda (_stx145194_)
        (if (gx#identifier? _stx145194_)
            (let* ((_bind145196_ (gx#resolve-identifier__0 _stx145194_))
                   (_$e145198_ (not _bind145196_)))
              (if _$e145198_
                  _$e145198_
                  (##structure-instance-of?
                   _bind145196_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id145186_ _form145187_)
        (let ((_bind145189_ (gx#resolve-identifier__0 _id145186_)))
          (if (##structure-instance-of? _bind145189_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id145186_)
              (if (not _bind145189_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id145186_)))
                      (gx#core-quote-syntax__0 _id145186_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form145187_
                       _id145186_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form145187_
                   _id145186_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id145145_ _rebind?145146_ _phi145147_ _ctx145148_)
        (let* ((_key145150_ (gx#core-identifier-key _id145145_))
               (_eid145152_
                (gx#make-binding-id__%
                 _key145150_
                 '#f
                 _phi145147_
                 _ctx145148_))
               (_bind145154_
                (if (##structure-instance-of?
                     _ctx145148_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145152_
                     _key145150_
                     _phi145147_
                     _ctx145148_)
                    (if (##structure-instance-of?
                         _ctx145148_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145152_
                         _key145150_
                         _phi145147_)
                        (if (##structure-instance-of?
                             _ctx145148_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid145152_
                             _key145150_
                             _phi145147_)
                            (##structure
                             gx#runtime-binding::t
                             _eid145152_
                             _key145150_
                             _phi145147_))))))
          (gx#bind-identifier!__%
           _id145145_
           _bind145154_
           _rebind?145146_
           _phi145147_
           _ctx145148_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id145160_)
        (let* ((_rebind?145162_ '#f)
               (_phi145164_ (gx#current-expander-phi))
               (_ctx145166_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145160_
           _rebind?145162_
           _phi145164_
           _ctx145166_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id145168_ _rebind?145169_)
        (let* ((_phi145171_ (gx#current-expander-phi))
               (_ctx145173_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145168_
           _rebind?145169_
           _phi145171_
           _ctx145173_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id145175_ _rebind?145176_ _phi145177_)
        (let ((_ctx145179_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145175_
           _rebind?145176_
           _phi145177_
           _ctx145179_))))
    (define gx#core-bind-runtime!
      (lambda _g152129_
        (let ((_g152128_ (##length _g152129_)))
          (cond ((##fx= _g152128_ 1)
                 (apply (lambda (_id145160_)
                          (gx#core-bind-runtime!__0 _id145160_))
                        _g152129_))
                ((##fx= _g152128_ 2)
                 (apply (lambda (_id145168_ _rebind?145169_)
                          (gx#core-bind-runtime!__1
                           _id145168_
                           _rebind?145169_))
                        _g152129_))
                ((##fx= _g152128_ 3)
                 (apply (lambda (_id145175_ _rebind?145176_ _phi145177_)
                          (gx#core-bind-runtime!__2
                           _id145175_
                           _rebind?145176_
                           _phi145177_))
                        _g152129_))
                ((##fx= _g152128_ 4)
                 (apply (lambda (_id145181_
                                 _rebind?145182_
                                 _phi145183_
                                 _ctx145184_)
                          (gx#core-bind-runtime!__%
                           _id145181_
                           _rebind?145182_
                           _phi145183_
                           _ctx145184_))
                        _g152129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g152129_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id145100_ _eid145101_ _rebind?145102_ _phi145103_ _ctx145104_)
        (let* ((_key145106_ (gx#core-identifier-key _id145100_))
               (_bind145108_
                (if (##structure-instance-of?
                     _ctx145104_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145101_
                     _key145106_
                     _phi145103_
                     _ctx145104_)
                    (if (##structure-instance-of?
                         _ctx145104_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145101_
                         _key145106_
                         _phi145103_)
                        (##structure
                         gx#runtime-binding::t
                         _eid145101_
                         _key145106_
                         _phi145103_)))))
          (gx#bind-identifier!__%
           _id145100_
           _bind145108_
           _rebind?145102_
           _phi145103_
           _ctx145104_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id145114_ _eid145115_)
        (let* ((_rebind?145117_ '#f)
               (_phi145119_ (gx#current-expander-phi))
               (_ctx145121_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145114_
           _eid145115_
           _rebind?145117_
           _phi145119_
           _ctx145121_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id145123_ _eid145124_ _rebind?145125_)
        (let* ((_phi145127_ (gx#current-expander-phi))
               (_ctx145129_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145123_
           _eid145124_
           _rebind?145125_
           _phi145127_
           _ctx145129_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id145131_ _eid145132_ _rebind?145133_ _phi145134_)
        (let ((_ctx145136_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145131_
           _eid145132_
           _rebind?145133_
           _phi145134_
           _ctx145136_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g152131_
        (let ((_g152130_ (##length _g152131_)))
          (cond ((##fx= _g152130_ 2)
                 (apply (lambda (_id145114_ _eid145115_)
                          (gx#core-bind-runtime-reference!__0
                           _id145114_
                           _eid145115_))
                        _g152131_))
                ((##fx= _g152130_ 3)
                 (apply (lambda (_id145123_ _eid145124_ _rebind?145125_)
                          (gx#core-bind-runtime-reference!__1
                           _id145123_
                           _eid145124_
                           _rebind?145125_))
                        _g152131_))
                ((##fx= _g152130_ 4)
                 (apply (lambda (_id145131_
                                 _eid145132_
                                 _rebind?145133_
                                 _phi145134_)
                          (gx#core-bind-runtime-reference!__2
                           _id145131_
                           _eid145132_
                           _rebind?145133_
                           _phi145134_))
                        _g152131_))
                ((##fx= _g152130_ 5)
                 (apply (lambda (_id145138_
                                 _eid145139_
                                 _rebind?145140_
                                 _phi145141_
                                 _ctx145142_)
                          (gx#core-bind-runtime-reference!__%
                           _id145138_
                           _eid145139_
                           _rebind?145140_
                           _phi145141_
                           _ctx145142_))
                        _g152131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g152131_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id145060_ _eid145061_ _rebind?145062_ _phi145063_ _ctx145064_)
        (gx#bind-identifier!__%
         _id145060_
         (##structure
          gx#extern-binding::t
          _eid145061_
          (gx#core-identifier-key _id145060_)
          _phi145063_)
         _rebind?145062_
         _phi145063_
         _ctx145064_)))
    (define gx#core-bind-extern!__0
      (lambda (_id145069_ _eid145070_)
        (let* ((_rebind?145072_ '#f)
               (_phi145074_ (gx#current-expander-phi))
               (_ctx145076_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145069_
           _eid145070_
           _rebind?145072_
           _phi145074_
           _ctx145076_))))
    (define gx#core-bind-extern!__1
      (lambda (_id145078_ _eid145079_ _rebind?145080_)
        (let* ((_phi145082_ (gx#current-expander-phi))
               (_ctx145084_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145078_
           _eid145079_
           _rebind?145080_
           _phi145082_
           _ctx145084_))))
    (define gx#core-bind-extern!__2
      (lambda (_id145086_ _eid145087_ _rebind?145088_ _phi145089_)
        (let ((_ctx145091_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145086_
           _eid145087_
           _rebind?145088_
           _phi145089_
           _ctx145091_))))
    (define gx#core-bind-extern!
      (lambda _g152133_
        (let ((_g152132_ (##length _g152133_)))
          (cond ((##fx= _g152132_ 2)
                 (apply (lambda (_id145069_ _eid145070_)
                          (gx#core-bind-extern!__0 _id145069_ _eid145070_))
                        _g152133_))
                ((##fx= _g152132_ 3)
                 (apply (lambda (_id145078_ _eid145079_ _rebind?145080_)
                          (gx#core-bind-extern!__1
                           _id145078_
                           _eid145079_
                           _rebind?145080_))
                        _g152133_))
                ((##fx= _g152132_ 4)
                 (apply (lambda (_id145086_
                                 _eid145087_
                                 _rebind?145088_
                                 _phi145089_)
                          (gx#core-bind-extern!__2
                           _id145086_
                           _eid145087_
                           _rebind?145088_
                           _phi145089_))
                        _g152133_))
                ((##fx= _g152132_ 5)
                 (apply (lambda (_id145093_
                                 _eid145094_
                                 _rebind?145095_
                                 _phi145096_
                                 _ctx145097_)
                          (gx#core-bind-extern!__%
                           _id145093_
                           _eid145094_
                           _rebind?145095_
                           _phi145096_
                           _ctx145097_))
                        _g152133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g152133_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id145014_ _e145015_ _rebind?145016_ _phi145017_ _ctx145018_)
        (gx#bind-identifier!__%
         _id145014_
         (let ((_key145023_ (gx#core-identifier-key _id145014_))
               (_e145024_
                (if (or (##structure-instance-of? _e145015_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e145015_
                         'gx#expander-context::t))
                    _e145015_
                    (##structure
                     gx#user-expander::t
                     _e145015_
                     _ctx145018_
                     _phi145017_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key145023_ '#t _phi145017_ _ctx145018_)
            _key145023_
            _phi145017_
            _e145024_))
         _rebind?145016_
         _phi145017_
         _ctx145018_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id145029_ _e145030_)
        (let* ((_rebind?145032_ '#f)
               (_phi145034_ (gx#current-expander-phi))
               (_ctx145036_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id145029_
           _e145030_
           _rebind?145032_
           _phi145034_
           _ctx145036_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id145038_ _e145039_ _rebind?145040_)
        (let* ((_phi145042_ (gx#current-expander-phi))
               (_ctx145044_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id145038_
           _e145039_
           _rebind?145040_
           _phi145042_
           _ctx145044_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id145046_ _e145047_ _rebind?145048_ _phi145049_)
        (let ((_ctx145051_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id145046_
           _e145047_
           _rebind?145048_
           _phi145049_
           _ctx145051_))))
    (define gx#core-bind-syntax!
      (lambda _g152135_
        (let ((_g152134_ (##length _g152135_)))
          (cond ((##fx= _g152134_ 2)
                 (apply (lambda (_id145029_ _e145030_)
                          (gx#core-bind-syntax!__0 _id145029_ _e145030_))
                        _g152135_))
                ((##fx= _g152134_ 3)
                 (apply (lambda (_id145038_ _e145039_ _rebind?145040_)
                          (gx#core-bind-syntax!__1
                           _id145038_
                           _e145039_
                           _rebind?145040_))
                        _g152135_))
                ((##fx= _g152134_ 4)
                 (apply (lambda (_id145046_
                                 _e145047_
                                 _rebind?145048_
                                 _phi145049_)
                          (gx#core-bind-syntax!__2
                           _id145046_
                           _e145047_
                           _rebind?145048_
                           _phi145049_))
                        _g152135_))
                ((##fx= _g152134_ 5)
                 (apply (lambda (_id145053_
                                 _e145054_
                                 _rebind?145055_
                                 _phi145056_
                                 _ctx145057_)
                          (gx#core-bind-syntax!__%
                           _id145053_
                           _e145054_
                           _rebind?145055_
                           _phi145056_
                           _ctx145057_))
                        _g152135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g152135_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id144997_ _e144998_ _rebind?144999_)
        (gx#core-bind-syntax!__%
         _id144997_
         _e144998_
         _rebind?144999_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id145004_ _e145005_)
        (let ((_rebind?145007_ '#f))
          (gx#core-bind-root-syntax!__%
           _id145004_
           _e145005_
           _rebind?145007_))))
    (define gx#core-bind-root-syntax!
      (lambda _g152137_
        (let ((_g152136_ (##length _g152137_)))
          (cond ((##fx= _g152136_ 2)
                 (apply (lambda (_id145004_ _e145005_)
                          (gx#core-bind-root-syntax!__0 _id145004_ _e145005_))
                        _g152137_))
                ((##fx= _g152136_ 3)
                 (apply (lambda (_id145009_ _e145010_ _rebind?145011_)
                          (gx#core-bind-root-syntax!__%
                           _id145009_
                           _e145010_
                           _rebind?145011_))
                        _g152137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g152137_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id144955_
               _alias-id144956_
               _rebind?144957_
               _phi144958_
               _ctx144959_)
        (gx#bind-identifier!__%
         _id144955_
         (let ((_key144961_ (gx#core-identifier-key _id144955_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key144961_ '#t _phi144958_ _ctx144959_)
            _key144961_
            _phi144958_
            _alias-id144956_))
         _rebind?144957_
         _phi144958_
         _ctx144959_)))
    (define gx#core-bind-alias!__0
      (lambda (_id144966_ _alias-id144967_)
        (let* ((_rebind?144969_ '#f)
               (_phi144971_ (gx#current-expander-phi))
               (_ctx144973_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144966_
           _alias-id144967_
           _rebind?144969_
           _phi144971_
           _ctx144973_))))
    (define gx#core-bind-alias!__1
      (lambda (_id144975_ _alias-id144976_ _rebind?144977_)
        (let* ((_phi144979_ (gx#current-expander-phi))
               (_ctx144981_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144975_
           _alias-id144976_
           _rebind?144977_
           _phi144979_
           _ctx144981_))))
    (define gx#core-bind-alias!__2
      (lambda (_id144983_ _alias-id144984_ _rebind?144985_ _phi144986_)
        (let ((_ctx144988_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144983_
           _alias-id144984_
           _rebind?144985_
           _phi144986_
           _ctx144988_))))
    (define gx#core-bind-alias!
      (lambda _g152139_
        (let ((_g152138_ (##length _g152139_)))
          (cond ((##fx= _g152138_ 2)
                 (apply (lambda (_id144966_ _alias-id144967_)
                          (gx#core-bind-alias!__0 _id144966_ _alias-id144967_))
                        _g152139_))
                ((##fx= _g152138_ 3)
                 (apply (lambda (_id144975_ _alias-id144976_ _rebind?144977_)
                          (gx#core-bind-alias!__1
                           _id144975_
                           _alias-id144976_
                           _rebind?144977_))
                        _g152139_))
                ((##fx= _g152138_ 4)
                 (apply (lambda (_id144983_
                                 _alias-id144984_
                                 _rebind?144985_
                                 _phi144986_)
                          (gx#core-bind-alias!__2
                           _id144983_
                           _alias-id144984_
                           _rebind?144985_
                           _phi144986_))
                        _g152139_))
                ((##fx= _g152138_ 5)
                 (apply (lambda (_id144990_
                                 _alias-id144991_
                                 _rebind?144992_
                                 _phi144993_
                                 _ctx144994_)
                          (gx#core-bind-alias!__%
                           _id144990_
                           _alias-id144991_
                           _rebind?144992_
                           _phi144993_
                           _ctx144994_))
                        _g152139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g152139_))))))
    (define gx#make-binding-id__%
      (lambda (_key144912_ _syntax?144913_ _phi144914_ _ctx144915_)
        (if (uninterned-symbol? _key144912_)
            (gensym 'L)
            (if (pair? _key144912_)
                (gensym (car _key144912_))
                (if (##structure-instance-of? _ctx144915_ 'gx#top-context::t)
                    (let ((_ns144917_
                           (gx#core-context-namespace__% _ctx144915_)))
                      (if (and (fxzero? _phi144914_) (not _syntax?144913_))
                          (if _ns144917_
                              (make-symbol__1 _ns144917_ '"#" _key144912_)
                              _key144912_)
                          (if _syntax?144913_
                              (make-symbol__1
                               (let ((_$e144919_ _ns144917_))
                                 (if _$e144919_ _$e144919_ '""))
                               '"[:"
                               (number->string _phi144914_)
                               '":]#"
                               _key144912_)
                              (make-symbol__1
                               (let ((_$e144922_ _ns144917_))
                                 (if _$e144922_ _$e144922_ '""))
                               '"["
                               (number->string _phi144914_)
                               '"]#"
                               _key144912_))))
                    (gensym _key144912_))))))
    (define gx#make-binding-id__0
      (lambda (_key144928_)
        (let* ((_syntax?144930_ '#f)
               (_phi144932_ (gx#current-expander-phi))
               (_ctx144934_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144928_
           _syntax?144930_
           _phi144932_
           _ctx144934_))))
    (define gx#make-binding-id__1
      (lambda (_key144936_ _syntax?144937_)
        (let* ((_phi144939_ (gx#current-expander-phi))
               (_ctx144941_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144936_
           _syntax?144937_
           _phi144939_
           _ctx144941_))))
    (define gx#make-binding-id__2
      (lambda (_key144943_ _syntax?144944_ _phi144945_)
        (let ((_ctx144947_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144943_
           _syntax?144944_
           _phi144945_
           _ctx144947_))))
    (define gx#make-binding-id
      (lambda _g152141_
        (let ((_g152140_ (##length _g152141_)))
          (cond ((##fx= _g152140_ 1)
                 (apply (lambda (_key144928_)
                          (gx#make-binding-id__0 _key144928_))
                        _g152141_))
                ((##fx= _g152140_ 2)
                 (apply (lambda (_key144936_ _syntax?144937_)
                          (gx#make-binding-id__1 _key144936_ _syntax?144937_))
                        _g152141_))
                ((##fx= _g152140_ 3)
                 (apply (lambda (_key144943_ _syntax?144944_ _phi144945_)
                          (gx#make-binding-id__2
                           _key144943_
                           _syntax?144944_
                           _phi144945_))
                        _g152141_))
                ((##fx= _g152140_ 4)
                 (apply (lambda (_key144949_
                                 _syntax?144950_
                                 _phi144951_
                                 _ctx144952_)
                          (gx#make-binding-id__%
                           _key144949_
                           _syntax?144950_
                           _phi144951_
                           _ctx144952_))
                        _g152141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g152141_))))))))
