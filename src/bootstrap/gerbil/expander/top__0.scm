(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1707416390)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx147903_)
        (letrec ((_expand-special147905_
                  (lambda (_hd147907_ _K147908_ _rest147909_ _r147910_)
                    (_K147908_
                     _rest147909_
                     (cons (gx#core-expand-top _hd147907_) _r147910_)))))
          (gx#core-expand-block__0 _stx147903_ _expand-special147905_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx147656_)
        (letrec ((_expand-special147658_
                  (lambda (_hd147778_ _K147779_ _rest147780_ _r147781_)
                    (let* ((_K147785_
                            (lambda (_e147783_)
                              (_K147779_
                               _rest147780_
                               (cons _e147783_ _r147781_))))
                           (_e147786147815_ _hd147778_)
                           (_E147810147819_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147786147815_)))
                           (_E147806147831_
                            (lambda ()
                              (if (gx#stx-pair? _e147786147815_)
                                  (let ((_e147811147823_
                                         (gx#syntax-e _e147786147815_)))
                                    (let ((_hd147812147826_
                                           (##car _e147811147823_))
                                          (_tl147813147828_
                                           (##cdr _e147811147823_)))
                                      (if (and (gx#identifier?
                                                _hd147812147826_)
                                               (gx#core-identifier=?
                                                _hd147812147826_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K147785_
                                               (gx#core-expand-define-runtime%
                                                _hd147778_))
                                              (_E147810147819_))
                                          (_E147810147819_))))
                                  (_E147810147819_))))
                           (_E147802147843_
                            (lambda ()
                              (if (gx#stx-pair? _e147786147815_)
                                  (let ((_e147807147835_
                                         (gx#syntax-e _e147786147815_)))
                                    (let ((_hd147808147838_
                                           (##car _e147807147835_))
                                          (_tl147809147840_
                                           (##cdr _e147807147835_)))
                                      (if (and (gx#identifier?
                                                _hd147808147838_)
                                               (gx#core-identifier=?
                                                _hd147808147838_
                                                '%#define-alias))
                                          (if '#t
                                              (_K147785_
                                               (gx#core-expand-define-alias%
                                                _hd147778_))
                                              (_E147806147831_))
                                          (_E147806147831_))))
                                  (_E147806147831_))))
                           (_E147792147855_
                            (lambda ()
                              (if (gx#stx-pair? _e147786147815_)
                                  (let ((_e147803147847_
                                         (gx#syntax-e _e147786147815_)))
                                    (let ((_hd147804147850_
                                           (##car _e147803147847_))
                                          (_tl147805147852_
                                           (##cdr _e147803147847_)))
                                      (if (and (gx#identifier?
                                                _hd147804147850_)
                                               (gx#core-identifier=?
                                                _hd147804147850_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K147785_
                                               (gx#core-expand-define-syntax%
                                                _hd147778_))
                                              (_E147802147843_))
                                          (_E147802147843_))))
                                  (_E147802147843_))))
                           (_E147788147887_
                            (lambda ()
                              (if (gx#stx-pair? _e147786147815_)
                                  (let ((_e147793147859_
                                         (gx#syntax-e _e147786147815_)))
                                    (let ((_hd147794147862_
                                           (##car _e147793147859_))
                                          (_tl147795147864_
                                           (##cdr _e147793147859_)))
                                      (if (and (gx#identifier?
                                                _hd147794147862_)
                                               (gx#core-identifier=?
                                                _hd147794147862_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147795147864_)
                                              (let ((_e147796147867_
                                                     (gx#syntax-e
                                                      _tl147795147864_)))
                                                (let ((_hd147797147870_
                                                       (##car _e147796147867_))
                                                      (_tl147798147872_
                                                       (##cdr _e147796147867_)))
                                                  (let ((_hd-bind147875_
                                                         _hd147797147870_))
                                                    (if (gx#stx-pair?
                                                         _tl147798147872_)
                                                        (let ((_e147799147877_
                                                               (gx#syntax-e
                                                                _tl147798147872_)))
                                                          (let ((_hd147800147880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147799147877_))
                        (_tl147801147882_ (##cdr _e147799147877_)))
                    (let ((_expr147885_ _hd147800147880_))
                      (if (gx#stx-null? _tl147801147882_)
                          (if (gx#core-bind-values? _hd-bind147875_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147875_)
                                (_K147785_ _hd147778_))
                              (_E147792147855_))
                          (_E147792147855_)))))
                (_E147792147855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147792147855_))
                                          (_E147792147855_))))
                                  (_E147792147855_))))
                           (_E147787147899_
                            (lambda ()
                              (if (gx#stx-pair? _e147786147815_)
                                  (let ((_e147789147891_
                                         (gx#syntax-e _e147786147815_)))
                                    (let ((_hd147790147894_
                                           (##car _e147789147891_))
                                          (_tl147791147896_
                                           (##cdr _e147789147891_)))
                                      (if (and (gx#identifier?
                                                _hd147790147894_)
                                               (gx#core-identifier=?
                                                _hd147790147894_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K147785_
                                               (gx#core-expand-begin-syntax%
                                                _hd147778_))
                                              (_E147788147887_))
                                          (_E147788147887_))))
                                  (_E147788147887_)))))
                      (_E147787147899_))))
                 (_eval-body147659_
                  (lambda (_rbody147667_)
                    (let _lp147669_ ((_rest147671_ _rbody147667_)
                                     (_body147672_ '())
                                     (_ebody147673_ '()))
                      (let* ((_rest147674147682_ _rest147671_)
                             (_else147676147690_
                              (lambda ()
                                (values _body147672_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody147673_)
                                          (gx#stx-source _stx147656_))))))
                             (_K147678147766_
                              (lambda (_rest147693_ _hd147694_)
                                (let* ((_e147695147712_ _hd147694_)
                                       (_E147707147716_
                                        (lambda ()
                                          (_lp147669_
                                           _rest147693_
                                           (cons _hd147694_ _body147672_)
                                           (cons _hd147694_ _ebody147673_))))
                                       (_E147697147728_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147695147712_)
                                              (let ((_e147708147720_
                                                     (gx#syntax-e
                                                      _e147695147712_)))
                                                (let ((_hd147709147723_
                                                       (##car _e147708147720_))
                                                      (_tl147710147725_
                                                       (##cdr _e147708147720_)))
                                                  (if (and (gx#identifier?
                                                            _hd147709147723_)
                                                           (gx#core-identifier=?
                                                            _hd147709147723_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp147669_
                                                           _rest147693_
                                                           (cons _hd147694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body147672_)
                   _ebody147673_)
                  (_E147707147716_))
              (_E147707147716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147707147716_))))
                                       (_E147696147762_
                                        (lambda ()
                                          (if (gx#stx-pair? _e147695147712_)
                                              (let ((_e147698147732_
                                                     (gx#syntax-e
                                                      _e147695147712_)))
                                                (let ((_hd147699147735_
                                                       (##car _e147698147732_))
                                                      (_tl147700147737_
                                                       (##cdr _e147698147732_)))
                                                  (if (and (gx#identifier?
                                                            _hd147699147735_)
                                                           (gx#core-identifier=?
                                                            _hd147699147735_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl147700147737_)
                                                          (let ((_e147701147740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl147700147737_)))
                    (let ((_hd147702147743_ (##car _e147701147740_))
                          (_tl147703147745_ (##cdr _e147701147740_)))
                      (let ((_hd-bind147748_ _hd147702147743_))
                        (if (gx#stx-pair? _tl147703147745_)
                            (let ((_e147704147750_
                                   (gx#syntax-e _tl147703147745_)))
                              (let ((_hd147705147753_ (##car _e147704147750_))
                                    (_tl147706147755_ (##cdr _e147704147750_)))
                                (let ((_expr147758_ _hd147705147753_))
                                  (if (gx#stx-null? _tl147706147755_)
                                      (if '#t
                                          (let ((_ehd147760_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind147748_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr147758_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd147694_))))
                                            (_lp147669_
                                             _rest147693_
                                             (cons _ehd147760_ _body147672_)
                                             (cons _ehd147760_ _ebody147673_)))
                                          (_E147697147728_))
                                      (_E147697147728_)))))
                            (_E147697147728_)))))
                  (_E147697147728_))
              (_E147697147728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147697147728_)))))
                                  (_E147696147762_)))))
                        (if (##pair? _rest147674147682_)
                            (let ((_hd147679147769_ (##car _rest147674147682_))
                                  (_tl147680147771_
                                   (##cdr _rest147674147682_)))
                              (let* ((_hd147774_ _hd147679147769_)
                                     (_rest147776_ _tl147680147771_))
                                (_K147678147766_ _rest147776_ _hd147774_)))
                            (_else147676147690_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody147662_
                     (gx#core-expand-block__1
                      _stx147656_
                      _expand-special147658_
                      '#f))
                    (_g152120_ (_eval-body147659_ _rbody147662_)))
               (begin
                 (let ((_g152121_
                        (if (##values? _g152120_)
                            (##vector-length _g152120_)
                            1)))
                   (if (not (##fx= _g152121_ 2))
                       (error "Context expects 2 values" _g152121_)))
                 (let ((_expanded-body147664_ (##vector-ref _g152120_ 0))
                       (_value147665_ (##vector-ref _g152120_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body147664_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value147665_ '())))
                    (gx#stx-source _stx147656_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx147626_)
        (let* ((_e147627147634_ _stx147626_)
               (_E147629147638_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147627147634_)))
               (_E147628147652_
                (lambda ()
                  (if (gx#stx-pair? _e147627147634_)
                      (let ((_e147630147642_ (gx#syntax-e _e147627147634_)))
                        (let ((_hd147631147645_ (##car _e147630147642_))
                              (_tl147632147647_ (##cdr _e147630147642_)))
                          (let ((_body147650_ _tl147632147647_))
                            (if (gx#stx-list? _body147650_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body147650_)
                                 (gx#stx-source _stx147626_))
                                (_E147629147638_)))))
                      (_E147629147638_)))))
          (_E147628147652_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx147624_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx147624_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx147570_)
        (let* ((_e147571147584_ _stx147570_)
               (_E147573147588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147571147584_)))
               (_E147572147620_
                (lambda ()
                  (if (gx#stx-pair? _e147571147584_)
                      (let ((_e147574147592_ (gx#syntax-e _e147571147584_)))
                        (let ((_hd147575147595_ (##car _e147574147592_))
                              (_tl147576147597_ (##cdr _e147574147592_)))
                          (if (gx#stx-pair? _tl147576147597_)
                              (let ((_e147577147600_
                                     (gx#syntax-e _tl147576147597_)))
                                (let ((_hd147578147603_
                                       (##car _e147577147600_))
                                      (_tl147579147605_
                                       (##cdr _e147577147600_)))
                                  (let ((_ann147608_ _hd147578147603_))
                                    (if (gx#stx-pair? _tl147579147605_)
                                        (let ((_e147580147610_
                                               (gx#syntax-e _tl147579147605_)))
                                          (let ((_hd147581147613_
                                                 (##car _e147580147610_))
                                                (_tl147582147615_
                                                 (##cdr _e147580147610_)))
                                            (let ((_expr147618_
                                                   _hd147581147613_))
                                              (if (gx#stx-null?
                                                   _tl147582147615_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann147608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr147618_)
                                 '())))
               (gx#stx-source _stx147570_))
              (_E147573147588_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147573147588_)))))
                                        (_E147573147588_)))))
                              (_E147573147588_))))
                      (_E147573147588_)))))
          (_E147572147620_))))
    (define gx#core-expand-local-block
      (lambda (_stx147294_ _body147295_)
        (letrec ((_expand-special147297_
                  (lambda (_hd147565_ _K147566_ _rest147567_ _r147568_)
                    (_K147566_
                     '()
                     (cons (_expand-internal147298_ _hd147565_ _rest147567_)
                           _r147568_))))
                 (_expand-internal147298_
                  (lambda (_hd147561_ _rest147562_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal147300_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd147561_ _rest147562_))
                          (gx#stx-source _stx147294_))
                         _expand-internal-special147299_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj152114 (make-object* gx#local-context::t '6)))
                       (gx#local-context:::init! __obj152114)
                       __obj152114))))
                 (_expand-internal-special147299_
                  (lambda (_hd147456_ _K147457_ _rest147458_ _r147459_)
                    (let* ((_e147460147485_ _hd147456_)
                           (_E147480147489_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e147460147485_)))
                           (_E147476147501_
                            (lambda ()
                              (if (gx#stx-pair? _e147460147485_)
                                  (let ((_e147481147493_
                                         (gx#syntax-e _e147460147485_)))
                                    (let ((_hd147482147496_
                                           (##car _e147481147493_))
                                          (_tl147483147498_
                                           (##cdr _e147481147493_)))
                                      (if (and (gx#identifier?
                                                _hd147482147496_)
                                               (gx#core-identifier=?
                                                _hd147482147496_
                                                '%#declare))
                                          (if '#t
                                              (_K147457_
                                               _rest147458_
                                               (cons (gx#core-expand-declare%
                                                      _hd147456_)
                                                     _r147459_))
                                              (_E147480147489_))
                                          (_E147480147489_))))
                                  (_E147480147489_))))
                           (_E147472147513_
                            (lambda ()
                              (if (gx#stx-pair? _e147460147485_)
                                  (let ((_e147477147505_
                                         (gx#syntax-e _e147460147485_)))
                                    (let ((_hd147478147508_
                                           (##car _e147477147505_))
                                          (_tl147479147510_
                                           (##cdr _e147477147505_)))
                                      (if (and (gx#identifier?
                                                _hd147478147508_)
                                               (gx#core-identifier=?
                                                _hd147478147508_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd147456_)
                                                (_K147457_
                                                 _rest147458_
                                                 _r147459_))
                                              (_E147476147501_))
                                          (_E147476147501_))))
                                  (_E147476147501_))))
                           (_E147462147525_
                            (lambda ()
                              (if (gx#stx-pair? _e147460147485_)
                                  (let ((_e147473147517_
                                         (gx#syntax-e _e147460147485_)))
                                    (let ((_hd147474147520_
                                           (##car _e147473147517_))
                                          (_tl147475147522_
                                           (##cdr _e147473147517_)))
                                      (if (and (gx#identifier?
                                                _hd147474147520_)
                                               (gx#core-identifier=?
                                                _hd147474147520_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd147456_)
                                                (_K147457_
                                                 _rest147458_
                                                 _r147459_))
                                              (_E147472147513_))
                                          (_E147472147513_))))
                                  (_E147472147513_))))
                           (_E147461147557_
                            (lambda ()
                              (if (gx#stx-pair? _e147460147485_)
                                  (let ((_e147463147529_
                                         (gx#syntax-e _e147460147485_)))
                                    (let ((_hd147464147532_
                                           (##car _e147463147529_))
                                          (_tl147465147534_
                                           (##cdr _e147463147529_)))
                                      (if (and (gx#identifier?
                                                _hd147464147532_)
                                               (gx#core-identifier=?
                                                _hd147464147532_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl147465147534_)
                                              (let ((_e147466147537_
                                                     (gx#syntax-e
                                                      _tl147465147534_)))
                                                (let ((_hd147467147540_
                                                       (##car _e147466147537_))
                                                      (_tl147468147542_
                                                       (##cdr _e147466147537_)))
                                                  (let ((_hd-bind147545_
                                                         _hd147467147540_))
                                                    (if (gx#stx-pair?
                                                         _tl147468147542_)
                                                        (let ((_e147469147547_
                                                               (gx#syntax-e
                                                                _tl147468147542_)))
                                                          (let ((_hd147470147550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147469147547_))
                        (_tl147471147552_ (##cdr _e147469147547_)))
                    (let ((_expr147555_ _hd147470147550_))
                      (if (gx#stx-null? _tl147471147552_)
                          (if (gx#core-bind-values? _hd-bind147545_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind147545_)
                                (_K147457_
                                 _rest147458_
                                 (cons _hd147456_ _r147459_)))
                              (_E147462147525_))
                          (_E147462147525_)))))
                (_E147462147525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E147462147525_))
                                          (_E147462147525_))))
                                  (_E147462147525_)))))
                      (_E147461147557_))))
                 (_wrap-internal147300_
                  (lambda (_rbody147302_)
                    (let _lp147304_ ((_rest147306_ _rbody147302_)
                                     (_decls147307_ '())
                                     (_bind147308_ '())
                                     (_body147309_ '()))
                      (let* ((_e147310147317_ _rest147306_)
                             (_E147312147366_
                              (lambda ()
                                (let* ((_body147361_
                                        (let* ((_body147320147330_
                                                _body147309_)
                                               (_else147323147338_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body147309_)
                                                   (gx#stx-source
                                                    _stx147294_)))))
                                          (let ((_K147328147358_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx147294_)))
                                                (_K147325147344_
                                                 (lambda (_expr147342_)
                                                   _expr147342_)))
                                            (let ((_try-match147322147354_
                                                   (lambda ()
                                                     (if (##pair? _body147320147330_)
                                                         (let ((_tl147327147349_
                                                                (##cdr _body147320147330_))
                                                               (_hd147326147347_
                                                                (##car _body147320147330_)))
                                                           (if (##null? _tl147327147349_)
                                                               (let ((_expr147352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147326147347_))
                         (_K147325147344_ _expr147352_))
                       (_else147323147338_)))
                 (_else147323147338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body147320147330_)
                                                  (_K147328147358_)
                                                  (_try-match147322147354_))))))
                                       (_body147363_
                                        (if (null? _bind147308_)
                                            _body147361_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind147308_
                                                         (cons _body147361_
                                                               '())))
                                             (gx#stx-source _stx147294_)))))
                                  (if (null? _decls147307_)
                                      _body147363_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls147307_
                                                   (cons _body147363_ '())))
                                       (gx#stx-source _stx147294_))))))
                             (_E147311147452_
                              (lambda ()
                                (if (gx#stx-pair? _e147310147317_)
                                    (let ((_e147313147370_
                                           (gx#syntax-e _e147310147317_)))
                                      (let ((_hd147314147373_
                                             (##car _e147313147370_))
                                            (_tl147315147375_
                                             (##cdr _e147313147370_)))
                                        (let* ((_hd147378_ _hd147314147373_)
                                               (_rest147380_ _tl147315147375_))
                                          (if '#t
                                              (let* ((_e147381147398_
                                                      _hd147378_)
                                                     (_E147393147402_
                                                      (lambda ()
                                                        (if (null? _bind147308_)
                                                            (_lp147304_
                                                             _rest147380_
                                                             _decls147307_
                                                             _bind147308_
                                                             (cons _hd147378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body147309_))
                    (_lp147304_
                     _rest147380_
                     _decls147307_
                     (cons (cons '#f (cons _hd147378_ '())) _bind147308_)
                     _body147309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147383147416_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147381147398_)
                                                            (let ((_e147394147406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147381147398_)))
                      (let ((_hd147395147409_ (##car _e147394147406_))
                            (_tl147396147411_ (##cdr _e147394147406_)))
                        (if (and (gx#identifier? _hd147395147409_)
                                 (gx#core-identifier=?
                                  _hd147395147409_
                                  '%#declare))
                            (let ((_xdecls147414_ _tl147396147411_))
                              (if '#t
                                  (_lp147304_
                                   _rest147380_
                                   (gx#stx-foldr
                                    cons
                                    _decls147307_
                                    _xdecls147414_)
                                   _bind147308_
                                   _body147309_)
                                  (_E147393147402_)))
                            (_E147393147402_))))
                    (_E147393147402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E147382147448_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e147381147398_)
                                                            (let ((_e147384147420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e147381147398_)))
                      (let ((_hd147385147423_ (##car _e147384147420_))
                            (_tl147386147425_ (##cdr _e147384147420_)))
                        (if (and (gx#identifier? _hd147385147423_)
                                 (gx#core-identifier=?
                                  _hd147385147423_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl147386147425_)
                                (let ((_e147387147428_
                                       (gx#syntax-e _tl147386147425_)))
                                  (let ((_hd147388147431_
                                         (##car _e147387147428_))
                                        (_tl147389147433_
                                         (##cdr _e147387147428_)))
                                    (let ((_hd-bind147436_ _hd147388147431_))
                                      (if (gx#stx-pair? _tl147389147433_)
                                          (let ((_e147390147438_
                                                 (gx#syntax-e
                                                  _tl147389147433_)))
                                            (let ((_hd147391147441_
                                                   (##car _e147390147438_))
                                                  (_tl147392147443_
                                                   (##cdr _e147390147438_)))
                                              (let ((_expr147446_
                                                     _hd147391147441_))
                                                (if (gx#stx-null?
                                                     _tl147392147443_)
                                                    (if '#t
                                                        (_lp147304_
                                                         _rest147380_
                                                         _decls147307_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind147436_)
                             (cons (gx#core-expand-expression _expr147446_)
                                   '()))
                       _bind147308_)
                 _body147309_)
                (_E147383147416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E147383147416_)))))
                                          (_E147383147416_)))))
                                (_E147383147416_))
                            (_E147383147416_))))
                    (_E147383147416_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147382147448_))
                                              (_E147312147366_)))))
                                    (_E147312147366_)))))
                        (_E147311147452_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body147295_)
            (gx#stx-source _stx147294_))
           _expand-special147297_))))
    (define gx#core-expand-declare%
      (lambda (_stx147232_)
        (let* ((_e147233147240_ _stx147232_)
               (_E147235147244_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147233147240_)))
               (_E147234147290_
                (lambda ()
                  (if (gx#stx-pair? _e147233147240_)
                      (let ((_e147236147248_ (gx#syntax-e _e147233147240_)))
                        (let ((_hd147237147251_ (##car _e147236147248_))
                              (_tl147238147253_ (##cdr _e147236147248_)))
                          (let ((_body147256_ _tl147238147253_))
                            (if (gx#stx-list? _body147256_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl147258_)
                                     (let* ((_e147259147266_ _decl147258_)
                                            (_E147261147270_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e147259147266_)))
                                            (_E147260147286_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _e147259147266_)
                                                   (let ((_e147262147274_
                                                          (gx#syntax-e
                                                           _e147259147266_)))
                                                     (let ((_hd147263147277_
                                                            (##car _e147262147274_))
                                                           (_tl147264147279_
                                                            (##cdr _e147262147274_)))
                                                       (let* ((_head147282_
                                                               _hd147263147277_)
                                                              (_args147284_
                                                               _tl147264147279_))
                                                         (if (gx#stx-list?
                                                              _args147284_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl147258_)
                                                             (_E147261147270_)))))
                                                   (_E147261147270_)))))
                                       (_E147260147286_)))
                                   _body147256_))
                                 (gx#stx-source _stx147232_))
                                (_E147235147244_)))))
                      (_E147235147244_)))))
          (_E147234147290_))))
    (define gx#core-expand-extern%
      (lambda (_stx147136_)
        (let* ((_e147137147144_ _stx147136_)
               (_E147139147148_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147137147144_)))
               (_E147138147228_
                (lambda ()
                  (if (gx#stx-pair? _e147137147144_)
                      (let ((_e147140147152_ (gx#syntax-e _e147137147144_)))
                        (let ((_hd147141147155_ (##car _e147140147152_))
                              (_tl147142147157_ (##cdr _e147140147152_)))
                          (let ((_body147160_ _tl147142147157_))
                            (if '#t
                                (let _lp147162_ ((_rest147164_ _body147160_)
                                                 (_r147165_ '()))
                                  (let* ((_e147166147180_ _rest147164_)
                                         (_E147178147184_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx147136_)))
                                         (_E147168147188_
                                          (lambda ()
                                            (if (gx#stx-null? _e147166147180_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r147165_))
                                                     (gx#stx-source
                                                      _stx147136_))
                                                    (_E147178147184_))
                                                (_E147178147184_))))
                                         (_E147167147224_
                                          (lambda ()
                                            (if (gx#stx-pair? _e147166147180_)
                                                (let ((_e147169147192_
                                                       (gx#syntax-e
                                                        _e147166147180_)))
                                                  (let ((_hd147170147195_
                                                         (##car _e147169147192_))
                                                        (_tl147171147197_
                                                         (##cdr _e147169147192_)))
                                                    (if (gx#stx-pair?
                                                         _hd147170147195_)
                                                        (let ((_e147172147200_
                                                               (gx#syntax-e
                                                                _hd147170147195_)))
                                                          (let ((_hd147173147203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e147172147200_))
                        (_tl147174147205_ (##cdr _e147172147200_)))
                    (let ((_id147208_ _hd147173147203_))
                      (if (gx#stx-pair? _tl147174147205_)
                          (let ((_e147175147210_
                                 (gx#syntax-e _tl147174147205_)))
                            (let ((_hd147176147213_ (##car _e147175147210_))
                                  (_tl147177147215_ (##cdr _e147175147210_)))
                              (let ((_eid147218_ _hd147176147213_))
                                (if (gx#stx-null? _tl147177147215_)
                                    (let ((_rest147220_ _tl147171147197_))
                                      (if (and (gx#identifier? _id147208_)
                                               (gx#identifier? _eid147218_))
                                          (let ((_eid147222_
                                                 (gx#stx-e _eid147218_)))
                                            (gx#core-bind-extern!__0
                                             _id147208_
                                             _eid147222_)
                                            (_lp147162_
                                             _rest147220_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id147208_)
                                                         (cons _eid147222_
                                                               '()))
                                                   _r147165_)))
                                          (_E147168147188_)))
                                    (_E147168147188_)))))
                          (_E147168147188_)))))
                (_E147168147188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E147168147188_)))))
                                    (_E147167147224_)))
                                (_E147139147148_)))))
                      (_E147139147148_)))))
          (_E147138147228_))))
    (define gx#core-expand-define-values%
      (lambda (_stx147082_)
        (let* ((_e147083147096_ _stx147082_)
               (_E147085147100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147083147096_)))
               (_E147084147132_
                (lambda ()
                  (if (gx#stx-pair? _e147083147096_)
                      (let ((_e147086147104_ (gx#syntax-e _e147083147096_)))
                        (let ((_hd147087147107_ (##car _e147086147104_))
                              (_tl147088147109_ (##cdr _e147086147104_)))
                          (if (gx#stx-pair? _tl147088147109_)
                              (let ((_e147089147112_
                                     (gx#syntax-e _tl147088147109_)))
                                (let ((_hd147090147115_
                                       (##car _e147089147112_))
                                      (_tl147091147117_
                                       (##cdr _e147089147112_)))
                                  (let ((_hd147120_ _hd147090147115_))
                                    (if (gx#stx-pair? _tl147091147117_)
                                        (let ((_e147092147122_
                                               (gx#syntax-e _tl147091147117_)))
                                          (let ((_hd147093147125_
                                                 (##car _e147092147122_))
                                                (_tl147094147127_
                                                 (##cdr _e147092147122_)))
                                            (let ((_expr147130_
                                                   _hd147093147125_))
                                              (if (gx#stx-null?
                                                   _tl147094147127_)
                                                  (if (gx#core-bind-values?
                                                       _hd147120_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd147120_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd147120_)
                             (cons (gx#core-expand-expression _expr147130_)
                                   '())))
                 (gx#stx-source _stx147082_)))
              (_E147085147100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147085147100_)))))
                                        (_E147085147100_)))))
                              (_E147085147100_))))
                      (_E147085147100_)))))
          (_E147084147132_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx147026_)
        (let* ((_e147027147040_ _stx147026_)
               (_E147029147044_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e147027147040_)))
               (_E147028147078_
                (lambda ()
                  (if (gx#stx-pair? _e147027147040_)
                      (let ((_e147030147048_ (gx#syntax-e _e147027147040_)))
                        (let ((_hd147031147051_ (##car _e147030147048_))
                              (_tl147032147053_ (##cdr _e147030147048_)))
                          (if (gx#stx-pair? _tl147032147053_)
                              (let ((_e147033147056_
                                     (gx#syntax-e _tl147032147053_)))
                                (let ((_hd147034147059_
                                       (##car _e147033147056_))
                                      (_tl147035147061_
                                       (##cdr _e147033147056_)))
                                  (let ((_id147064_ _hd147034147059_))
                                    (if (gx#stx-pair? _tl147035147061_)
                                        (let ((_e147036147066_
                                               (gx#syntax-e _tl147035147061_)))
                                          (let ((_hd147037147069_
                                                 (##car _e147036147066_))
                                                (_tl147038147071_
                                                 (##cdr _e147036147066_)))
                                            (let ((_binding-id147074_
                                                   _hd147037147069_))
                                              (if (gx#stx-null?
                                                   _tl147038147071_)
                                                  (if (and (gx#identifier?
                                                            _id147064_)
                                                           (gx#identifier?
                                                            _binding-id147074_))
                                                      (let ((_eid147076_
                                                             (gx#stx-e
                                                              _binding-id147074_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id147064_
                                                         _eid147076_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id147064_)
                             (cons _eid147076_ '())))))
              (_E147029147044_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E147029147044_)))))
                                        (_E147029147044_)))))
                              (_E147029147044_))))
                      (_E147029147044_)))))
          (_E147028147078_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx146969_)
        (let* ((_e146970146983_ _stx146969_)
               (_E146972146987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146970146983_)))
               (_E146971147022_
                (lambda ()
                  (if (gx#stx-pair? _e146970146983_)
                      (let ((_e146973146991_ (gx#syntax-e _e146970146983_)))
                        (let ((_hd146974146994_ (##car _e146973146991_))
                              (_tl146975146996_ (##cdr _e146973146991_)))
                          (if (gx#stx-pair? _tl146975146996_)
                              (let ((_e146976146999_
                                     (gx#syntax-e _tl146975146996_)))
                                (let ((_hd146977147002_
                                       (##car _e146976146999_))
                                      (_tl146978147004_
                                       (##cdr _e146976146999_)))
                                  (let ((_id147007_ _hd146977147002_))
                                    (if (gx#stx-pair? _tl146978147004_)
                                        (let ((_e146979147009_
                                               (gx#syntax-e _tl146978147004_)))
                                          (let ((_hd146980147012_
                                                 (##car _e146979147009_))
                                                (_tl146981147014_
                                                 (##cdr _e146979147009_)))
                                            (let ((_expr147017_
                                                   _hd146980147012_))
                                              (if (gx#stx-null?
                                                   _tl146981147014_)
                                                  (if (gx#identifier?
                                                       _id147007_)
                                                      (let ((_g152122_
                                                             (gx#core-expand-expression+1
                                                              _expr147017_)))
                                                        (begin
                                                          (let ((_g152123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g152122_)
                             (##vector-length _g152122_)
                             1)))
                    (if (not (##fx= _g152123_ 2))
                        (error "Context expects 2 values" _g152123_)))
                  (let ((_e-stx147019_ (##vector-ref _g152122_ 0))
                        (_e147020_ (##vector-ref _g152122_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id147007_ _e147020_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id147007_)
                                   (cons _e-stx147019_ '())))
                       (gx#stx-source _stx146969_))))))
              (_E146972146987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146972146987_)))))
                                        (_E146972146987_)))))
                              (_E146972146987_))))
                      (_E146972146987_)))))
          (_E146971147022_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx146913_)
        (let* ((_e146914146927_ _stx146913_)
               (_E146916146931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146914146927_)))
               (_E146915146965_
                (lambda ()
                  (if (gx#stx-pair? _e146914146927_)
                      (let ((_e146917146935_ (gx#syntax-e _e146914146927_)))
                        (let ((_hd146918146938_ (##car _e146917146935_))
                              (_tl146919146940_ (##cdr _e146917146935_)))
                          (if (gx#stx-pair? _tl146919146940_)
                              (let ((_e146920146943_
                                     (gx#syntax-e _tl146919146940_)))
                                (let ((_hd146921146946_
                                       (##car _e146920146943_))
                                      (_tl146922146948_
                                       (##cdr _e146920146943_)))
                                  (let ((_id146951_ _hd146921146946_))
                                    (if (gx#stx-pair? _tl146922146948_)
                                        (let ((_e146923146953_
                                               (gx#syntax-e _tl146922146948_)))
                                          (let ((_hd146924146956_
                                                 (##car _e146923146953_))
                                                (_tl146925146958_
                                                 (##cdr _e146923146953_)))
                                            (let ((_alias-id146961_
                                                   _hd146924146956_))
                                              (if (gx#stx-null?
                                                   _tl146925146958_)
                                                  (if (and (gx#identifier?
                                                            _id146951_)
                                                           (gx#identifier?
                                                            _alias-id146961_))
                                                      (let ((_alias-id146963_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id146961_)))
                                                        (gx#core-bind-alias!__0
                                                         _id146951_
                                                         _alias-id146963_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id146951_)
                             (cons _alias-id146963_ '())))))
              (_E146916146931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146916146931_)))))
                                        (_E146916146931_)))))
                              (_E146916146931_))))
                      (_E146916146931_)))))
          (_E146915146965_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx146856_ _wrap?146857_)
        (let* ((_e146858146868_ _stx146856_)
               (_E146860146872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146858146868_)))
               (_E146859146899_
                (lambda ()
                  (if (gx#stx-pair? _e146858146868_)
                      (let ((_e146861146876_ (gx#syntax-e _e146858146868_)))
                        (let ((_hd146862146879_ (##car _e146861146876_))
                              (_tl146863146881_ (##cdr _e146861146876_)))
                          (if (gx#stx-pair? _tl146863146881_)
                              (let ((_e146864146884_
                                     (gx#syntax-e _tl146863146881_)))
                                (let ((_hd146865146887_
                                       (##car _e146864146884_))
                                      (_tl146866146889_
                                       (##cdr _e146864146884_)))
                                  (let* ((_hd146892_ _hd146865146887_)
                                         (_body146894_ _tl146866146889_))
                                    (if (gx#core-bind-values? _hd146892_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd146892_)
                                           (let ((_body146897_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd146892_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx146856_
                                                               _body146894_)
                                                              '()))))
                                             (if _wrap?146857_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body146897_)
                                                  (gx#stx-source _stx146856_))
                                                 _body146897_)))
                                         gx#current-expander-context
                                         (let ((__obj152115
                                                (make-object*
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152115)
                                           __obj152115))
                                        (_E146860146872_)))))
                              (_E146860146872_))))
                      (_E146860146872_)))))
          (_E146859146899_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx146906_)
        (let ((_wrap?146908_ '#t))
          (gx#core-expand-lambda%__% _stx146906_ _wrap?146908_))))
    (define gx#core-expand-lambda%
      (lambda _g152125_
        (let ((_g152124_ (##length _g152125_)))
          (cond ((##fx= _g152124_ 1)
                 (apply (lambda (_stx146906_)
                          (gx#core-expand-lambda%__0 _stx146906_))
                        _g152125_))
                ((##fx= _g152124_ 2)
                 (apply (lambda (_stx146910_ _wrap?146911_)
                          (gx#core-expand-lambda%__%
                           _stx146910_
                           _wrap?146911_))
                        _g152125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g152125_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx146820_)
        (let* ((_e146821146828_ _stx146820_)
               (_E146823146832_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146821146828_)))
               (_E146822146851_
                (lambda ()
                  (if (gx#stx-pair? _e146821146828_)
                      (let ((_e146824146836_ (gx#syntax-e _e146821146828_)))
                        (let ((_hd146825146839_ (##car _e146824146836_))
                              (_tl146826146841_ (##cdr _e146824146836_)))
                          (let ((_clauses146844_ _tl146826146841_))
                            (if (gx#stx-list? _clauses146844_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause146846_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause146846_)
                                       (let ((_$e146848_
                                              (gx#stx-source _clause146846_)))
                                         (if _$e146848_
                                             _$e146848_
                                             (gx#stx-source _stx146820_))))
                                      '#f))
                                   _clauses146844_))
                                 (gx#stx-source _stx146820_))
                                (_E146823146832_)))))
                      (_E146823146832_)))))
          (_E146822146851_))))
    (define gx#core-expand-let-values%
      (lambda (_stx146774_)
        (let* ((_e146775146785_ _stx146774_)
               (_E146777146789_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146775146785_)))
               (_E146776146816_
                (lambda ()
                  (if (gx#stx-pair? _e146775146785_)
                      (let ((_e146778146793_ (gx#syntax-e _e146775146785_)))
                        (let ((_hd146779146796_ (##car _e146778146793_))
                              (_tl146780146798_ (##cdr _e146778146793_)))
                          (if (gx#stx-pair? _tl146780146798_)
                              (let ((_e146781146801_
                                     (gx#syntax-e _tl146780146798_)))
                                (let ((_hd146782146804_
                                       (##car _e146781146801_))
                                      (_tl146783146806_
                                       (##cdr _e146781146801_)))
                                  (let* ((_hd146809_ _hd146782146804_)
                                         (_body146811_ _tl146783146806_))
                                    (if (gx#core-expand-let-bind? _hd146809_)
                                        (let ((_expressions146813_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd146809_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd146809_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd146809_
                                                           _expressions146813_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx146774_
                         _body146811_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx146774_)))
                                           gx#current-expander-context
                                           (let ((__obj152116
                                                  (make-object*
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152116)
                                             __obj152116)))
                                        (_E146777146789_)))))
                              (_E146777146789_))))
                      (_E146777146789_)))))
          (_E146776146816_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx146719_ _form146720_)
        (let* ((_e146721146731_ _stx146719_)
               (_E146723146735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146721146731_)))
               (_E146722146760_
                (lambda ()
                  (if (gx#stx-pair? _e146721146731_)
                      (let ((_e146724146739_ (gx#syntax-e _e146721146731_)))
                        (let ((_hd146725146742_ (##car _e146724146739_))
                              (_tl146726146744_ (##cdr _e146724146739_)))
                          (if (gx#stx-pair? _tl146726146744_)
                              (let ((_e146727146747_
                                     (gx#syntax-e _tl146726146744_)))
                                (let ((_hd146728146750_
                                       (##car _e146727146747_))
                                      (_tl146729146752_
                                       (##cdr _e146727146747_)))
                                  (let* ((_hd146755_ _hd146728146750_)
                                         (_body146757_ _tl146729146752_))
                                    (if (gx#core-expand-let-bind? _hd146755_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd146755_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form146720_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd146755_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd146755_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx146719_
                                                               _body146757_)
                                                              '())))
                                            (gx#stx-source _stx146719_)))
                                         gx#current-expander-context
                                         (let ((__obj152117
                                                (make-object*
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152117)
                                           __obj152117))
                                        (_E146723146735_)))))
                              (_E146723146735_))))
                      (_E146723146735_)))))
          (_E146722146760_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx146767_)
        (let ((_form146769_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx146767_ _form146769_))))
    (define gx#core-expand-letrec-values%
      (lambda _g152127_
        (let ((_g152126_ (##length _g152127_)))
          (cond ((##fx= _g152126_ 1)
                 (apply (lambda (_stx146767_)
                          (gx#core-expand-letrec-values%__0 _stx146767_))
                        _g152127_))
                ((##fx= _g152126_ 2)
                 (apply (lambda (_stx146771_ _form146772_)
                          (gx#core-expand-letrec-values%__%
                           _stx146771_
                           _form146772_))
                        _g152127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g152127_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx146716_)
        (gx#core-expand-letrec-values%__% _stx146716_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx146673_)
        (if (gx#stx-list? _stx146673_)
            (gx#stx-andmap
             (lambda (_bind146675_)
               (let* ((_e146676146686_ _bind146675_)
                      (_E146678146690_ (lambda () '#f))
                      (_E146677146712_
                       (lambda ()
                         (if (gx#stx-pair? _e146676146686_)
                             (let ((_e146679146694_
                                    (gx#syntax-e _e146676146686_)))
                               (let ((_hd146680146697_ (##car _e146679146694_))
                                     (_tl146681146699_
                                      (##cdr _e146679146694_)))
                                 (let ((_hd146702_ _hd146680146697_))
                                   (if (gx#stx-pair? _tl146681146699_)
                                       (let ((_e146682146704_
                                              (gx#syntax-e _tl146681146699_)))
                                         (let ((_hd146683146707_
                                                (##car _e146682146704_))
                                               (_tl146684146709_
                                                (##cdr _e146682146704_)))
                                           (if (gx#stx-null? _tl146684146709_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd146702_)
                                                   (_E146678146690_))
                                               (_E146678146690_))))
                                       (_E146678146690_)))))
                             (_E146678146690_)))))
                 (_E146677146712_)))
             _stx146673_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind146632_)
        (let* ((_e146633146643_ _bind146632_)
               (_E146635146647_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146633146643_)))
               (_E146634146669_
                (lambda ()
                  (if (gx#stx-pair? _e146633146643_)
                      (let ((_e146636146651_ (gx#syntax-e _e146633146643_)))
                        (let ((_hd146637146654_ (##car _e146636146651_))
                              (_tl146638146656_ (##cdr _e146636146651_)))
                          (if (gx#stx-pair? _tl146638146656_)
                              (let ((_e146639146659_
                                     (gx#syntax-e _tl146638146656_)))
                                (let ((_hd146640146662_
                                       (##car _e146639146659_))
                                      (_tl146641146664_
                                       (##cdr _e146639146659_)))
                                  (let ((_expr146667_ _hd146640146662_))
                                    (if (gx#stx-null? _tl146641146664_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146667_)
                                            (_E146635146647_))
                                        (_E146635146647_)))))
                              (_E146635146647_))))
                      (_E146635146647_)))))
          (_E146634146669_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind146591_)
        (let* ((_e146592146602_ _bind146591_)
               (_E146594146606_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146592146602_)))
               (_E146593146628_
                (lambda ()
                  (if (gx#stx-pair? _e146592146602_)
                      (let ((_e146595146610_ (gx#syntax-e _e146592146602_)))
                        (let ((_hd146596146613_ (##car _e146595146610_))
                              (_tl146597146615_ (##cdr _e146595146610_)))
                          (let ((_hd146618_ _hd146596146613_))
                            (if (gx#stx-pair? _tl146597146615_)
                                (let ((_e146598146620_
                                       (gx#syntax-e _tl146597146615_)))
                                  (let ((_hd146599146623_
                                         (##car _e146598146620_))
                                        (_tl146600146625_
                                         (##cdr _e146598146620_)))
                                    (if (gx#stx-null? _tl146600146625_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _hd146618_)
                                            (_E146594146606_))
                                        (_E146594146606_))))
                                (_E146594146606_)))))
                      (_E146594146606_)))))
          (_E146593146628_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind146549_ _expr146550_)
        (let* ((_e146551146561_ _bind146549_)
               (_E146553146565_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146551146561_)))
               (_E146552146587_
                (lambda ()
                  (if (gx#stx-pair? _e146551146561_)
                      (let ((_e146554146569_ (gx#syntax-e _e146551146561_)))
                        (let ((_hd146555146572_ (##car _e146554146569_))
                              (_tl146556146574_ (##cdr _e146554146569_)))
                          (let ((_hd146577_ _hd146555146572_))
                            (if (gx#stx-pair? _tl146556146574_)
                                (let ((_e146557146579_
                                       (gx#syntax-e _tl146556146574_)))
                                  (let ((_hd146558146582_
                                         (##car _e146557146579_))
                                        (_tl146559146584_
                                         (##cdr _e146557146579_)))
                                    (if (gx#stx-null? _tl146559146584_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd146577_)
                                                  (cons _expr146550_ '()))
                                            (_E146553146565_))
                                        (_E146553146565_))))
                                (_E146553146565_)))))
                      (_E146553146565_)))))
          (_E146552146587_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx146503_)
        (let* ((_e146504146514_ _stx146503_)
               (_E146506146518_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146504146514_)))
               (_E146505146545_
                (lambda ()
                  (if (gx#stx-pair? _e146504146514_)
                      (let ((_e146507146522_ (gx#syntax-e _e146504146514_)))
                        (let ((_hd146508146525_ (##car _e146507146522_))
                              (_tl146509146527_ (##cdr _e146507146522_)))
                          (if (gx#stx-pair? _tl146509146527_)
                              (let ((_e146510146530_
                                     (gx#syntax-e _tl146509146527_)))
                                (let ((_hd146511146533_
                                       (##car _e146510146530_))
                                      (_tl146512146535_
                                       (##cdr _e146510146530_)))
                                  (let* ((_hd146538_ _hd146511146533_)
                                         (_body146540_ _tl146512146535_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146538_)
                                        (let ((_expanders146542_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd146538_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd146538_
                                              _expanders146542_)
                                             (gx#core-expand-local-block
                                              _stx146503_
                                              _body146540_))
                                           gx#current-expander-context
                                           (let ((__obj152118
                                                  (make-object*
                                                   gx#local-context::t
                                                   '6)))
                                             (gx#local-context:::init!
                                              __obj152118)
                                             __obj152118)))
                                        (_E146506146518_)))))
                              (_E146506146518_))))
                      (_E146506146518_)))))
          (_E146505146545_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx146452_)
        (let* ((_e146453146463_ _stx146452_)
               (_E146455146467_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146453146463_)))
               (_E146454146499_
                (lambda ()
                  (if (gx#stx-pair? _e146453146463_)
                      (let ((_e146456146471_ (gx#syntax-e _e146453146463_)))
                        (let ((_hd146457146474_ (##car _e146456146471_))
                              (_tl146458146476_ (##cdr _e146456146471_)))
                          (if (gx#stx-pair? _tl146458146476_)
                              (let ((_e146459146479_
                                     (gx#syntax-e _tl146458146476_)))
                                (let ((_hd146460146482_
                                       (##car _e146459146479_))
                                      (_tl146461146484_
                                       (##cdr _e146459146479_)))
                                  (let* ((_hd146487_ _hd146460146482_)
                                         (_body146489_ _tl146461146484_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd146487_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd146487_
                                            (make-list
                                             (gx#stx-length _hd146487_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g146491146494_
                                                     _g146492146496_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g146491146494_
                                               _g146492146496_
                                               '#t))
                                            _hd146487_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd146487_))
                                           (gx#core-expand-local-block
                                            _stx146452_
                                            _body146489_))
                                         gx#current-expander-context
                                         (let ((__obj152119
                                                (make-object*
                                                 gx#local-context::t
                                                 '6)))
                                           (gx#local-context:::init!
                                            __obj152119)
                                           __obj152119))
                                        (_E146455146467_)))))
                              (_E146455146467_))))
                      (_E146455146467_)))))
          (_E146454146499_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx146409_)
        (if (gx#stx-list? _stx146409_)
            (gx#stx-andmap
             (lambda (_bind146411_)
               (let* ((_e146412146422_ _bind146411_)
                      (_E146414146426_ (lambda () '#f))
                      (_E146413146448_
                       (lambda ()
                         (if (gx#stx-pair? _e146412146422_)
                             (let ((_e146415146430_
                                    (gx#syntax-e _e146412146422_)))
                               (let ((_hd146416146433_ (##car _e146415146430_))
                                     (_tl146417146435_
                                      (##cdr _e146415146430_)))
                                 (let ((_hd146438_ _hd146416146433_))
                                   (if (gx#stx-pair? _tl146417146435_)
                                       (let ((_e146418146440_
                                              (gx#syntax-e _tl146417146435_)))
                                         (let ((_hd146419146443_
                                                (##car _e146418146440_))
                                               (_tl146420146445_
                                                (##cdr _e146418146440_)))
                                           (if (gx#stx-null? _tl146420146445_)
                                               (if '#t
                                                   (gx#identifier? _hd146438_)
                                                   (_E146414146426_))
                                               (_E146414146426_))))
                                       (_E146414146426_)))))
                             (_E146414146426_)))))
                 (_E146413146448_)))
             _stx146409_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind146366_)
        (let* ((_e146367146377_ _bind146366_)
               (_E146369146381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146367146377_)))
               (_E146368146405_
                (lambda ()
                  (if (gx#stx-pair? _e146367146377_)
                      (let ((_e146370146385_ (gx#syntax-e _e146367146377_)))
                        (let ((_hd146371146388_ (##car _e146370146385_))
                              (_tl146372146390_ (##cdr _e146370146385_)))
                          (if (gx#stx-pair? _tl146372146390_)
                              (let ((_e146373146393_
                                     (gx#syntax-e _tl146372146390_)))
                                (let ((_hd146374146396_
                                       (##car _e146373146393_))
                                      (_tl146375146398_
                                       (##cdr _e146373146393_)))
                                  (let ((_expr146401_ _hd146374146396_))
                                    (if (gx#stx-null? _tl146375146398_)
                                        (if '#t
                                            (let ((_g152128_
                                                   (gx#core-expand-expression+1
                                                    _expr146401_)))
                                              (begin
                                                (let ((_g152129_
                                                       (if (##values?
                                                            _g152128_)
                                                           (##vector-length
                                                            _g152128_)
                                                           1)))
                                                  (if (not (##fx= _g152129_ 2))
                                                      (error "Context expects 2 values"
                                                             _g152129_)))
                                                (let ((_e146403_
                                                       (##vector-ref
                                                        _g152128_
                                                        1)))
                                                  _e146403_)))
                                            (_E146369146381_))
                                        (_E146369146381_)))))
                              (_E146369146381_))))
                      (_E146369146381_)))))
          (_E146368146405_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind146311_ _e146312_ _rebind?146313_)
        (let* ((_e146314146324_ _bind146311_)
               (_E146316146328_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146314146324_)))
               (_E146315146350_
                (lambda ()
                  (if (gx#stx-pair? _e146314146324_)
                      (let ((_e146317146332_ (gx#syntax-e _e146314146324_)))
                        (let ((_hd146318146335_ (##car _e146317146332_))
                              (_tl146319146337_ (##cdr _e146317146332_)))
                          (let ((_id146340_ _hd146318146335_))
                            (if (gx#stx-pair? _tl146319146337_)
                                (let ((_e146320146342_
                                       (gx#syntax-e _tl146319146337_)))
                                  (let ((_hd146321146345_
                                         (##car _e146320146342_))
                                        (_tl146322146347_
                                         (##cdr _e146320146342_)))
                                    (if (gx#stx-null? _tl146322146347_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id146340_
                                             _e146312_
                                             _rebind?146313_)
                                            (_E146316146328_))
                                        (_E146316146328_))))
                                (_E146316146328_)))))
                      (_E146316146328_)))))
          (_E146315146350_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind146357_ _e146358_)
        (let ((_rebind?146360_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind146357_
           _e146358_
           _rebind?146360_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g152131_
        (let ((_g152130_ (##length _g152131_)))
          (cond ((##fx= _g152130_ 2)
                 (apply (lambda (_bind146357_ _e146358_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind146357_
                           _e146358_))
                        _g152131_))
                ((##fx= _g152130_ 3)
                 (apply (lambda (_bind146362_ _e146363_ _rebind?146364_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind146362_
                           _e146363_
                           _rebind?146364_))
                        _g152131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g152131_))))))
    (define gx#core-expand-expression%
      (lambda (_stx146269_)
        (let* ((_e146270146280_ _stx146269_)
               (_E146272146284_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146270146280_)))
               (_E146271146306_
                (lambda ()
                  (if (gx#stx-pair? _e146270146280_)
                      (let ((_e146273146288_ (gx#syntax-e _e146270146280_)))
                        (let ((_hd146274146291_ (##car _e146273146288_))
                              (_tl146275146293_ (##cdr _e146273146288_)))
                          (if (gx#stx-pair? _tl146275146293_)
                              (let ((_e146276146296_
                                     (gx#syntax-e _tl146275146293_)))
                                (let ((_hd146277146299_
                                       (##car _e146276146296_))
                                      (_tl146278146301_
                                       (##cdr _e146276146296_)))
                                  (let ((_expr146304_ _hd146277146299_))
                                    (if (gx#stx-null? _tl146278146301_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr146304_)
                                            (_E146272146284_))
                                        (_E146272146284_)))))
                              (_E146272146284_))))
                      (_E146272146284_)))))
          (_E146271146306_))))
    (define gx#core-expand-quote%
      (lambda (_stx146228_)
        (let* ((_e146229146239_ _stx146228_)
               (_E146231146243_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146229146239_)))
               (_E146230146265_
                (lambda ()
                  (if (gx#stx-pair? _e146229146239_)
                      (let ((_e146232146247_ (gx#syntax-e _e146229146239_)))
                        (let ((_hd146233146250_ (##car _e146232146247_))
                              (_tl146234146252_ (##cdr _e146232146247_)))
                          (if (gx#stx-pair? _tl146234146252_)
                              (let ((_e146235146255_
                                     (gx#syntax-e _tl146234146252_)))
                                (let ((_hd146236146258_
                                       (##car _e146235146255_))
                                      (_tl146237146260_
                                       (##cdr _e146235146255_)))
                                  (let ((_e146263_ _hd146236146258_))
                                    (if (gx#stx-null? _tl146237146260_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e146263_)
                                                         '()))
                                             (gx#stx-source _stx146228_))
                                            (_E146231146243_))
                                        (_E146231146243_)))))
                              (_E146231146243_))))
                      (_E146231146243_)))))
          (_E146230146265_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx146187_)
        (let* ((_e146188146198_ _stx146187_)
               (_E146190146202_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146188146198_)))
               (_E146189146224_
                (lambda ()
                  (if (gx#stx-pair? _e146188146198_)
                      (let ((_e146191146206_ (gx#syntax-e _e146188146198_)))
                        (let ((_hd146192146209_ (##car _e146191146206_))
                              (_tl146193146211_ (##cdr _e146191146206_)))
                          (if (gx#stx-pair? _tl146193146211_)
                              (let ((_e146194146214_
                                     (gx#syntax-e _tl146193146211_)))
                                (let ((_hd146195146217_
                                       (##car _e146194146214_))
                                      (_tl146196146219_
                                       (##cdr _e146194146214_)))
                                  (let ((_e146222_ _hd146195146217_))
                                    (if (gx#stx-null? _tl146196146219_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e146222_)
                                                         '()))
                                             (gx#stx-source _stx146187_))
                                            (_E146190146202_))
                                        (_E146190146202_)))))
                              (_E146190146202_))))
                      (_E146190146202_)))))
          (_E146189146224_))))
    (define gx#core-expand-call%
      (lambda (_stx146144_)
        (let* ((_e146145146155_ _stx146144_)
               (_E146147146159_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146145146155_)))
               (_E146146146183_
                (lambda ()
                  (if (gx#stx-pair? _e146145146155_)
                      (let ((_e146148146163_ (gx#syntax-e _e146145146155_)))
                        (let ((_hd146149146166_ (##car _e146148146163_))
                              (_tl146150146168_ (##cdr _e146148146163_)))
                          (if (gx#stx-pair? _tl146150146168_)
                              (let ((_e146151146171_
                                     (gx#syntax-e _tl146150146168_)))
                                (let ((_hd146152146174_
                                       (##car _e146151146171_))
                                      (_tl146153146176_
                                       (##cdr _e146151146171_)))
                                  (let* ((_rator146179_ _hd146152146174_)
                                         (_args146181_ _tl146153146176_))
                                    (if (gx#stx-list? _args146181_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator146179_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args146181_))
                                         (gx#stx-source _stx146144_))
                                        (_E146147146159_)))))
                              (_E146147146159_))))
                      (_E146147146159_)))))
          (_E146146146183_))))
    (define gx#core-expand-if%
      (lambda (_stx146077_)
        (let* ((_e146078146094_ _stx146077_)
               (_E146080146098_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146078146094_)))
               (_E146079146140_
                (lambda ()
                  (if (gx#stx-pair? _e146078146094_)
                      (let ((_e146081146102_ (gx#syntax-e _e146078146094_)))
                        (let ((_hd146082146105_ (##car _e146081146102_))
                              (_tl146083146107_ (##cdr _e146081146102_)))
                          (if (gx#stx-pair? _tl146083146107_)
                              (let ((_e146084146110_
                                     (gx#syntax-e _tl146083146107_)))
                                (let ((_hd146085146113_
                                       (##car _e146084146110_))
                                      (_tl146086146115_
                                       (##cdr _e146084146110_)))
                                  (let ((_test146118_ _hd146085146113_))
                                    (if (gx#stx-pair? _tl146086146115_)
                                        (let ((_e146087146120_
                                               (gx#syntax-e _tl146086146115_)))
                                          (let ((_hd146088146123_
                                                 (##car _e146087146120_))
                                                (_tl146089146125_
                                                 (##cdr _e146087146120_)))
                                            (let ((_K146128_ _hd146088146123_))
                                              (if (gx#stx-pair?
                                                   _tl146089146125_)
                                                  (let ((_e146090146130_
                                                         (gx#syntax-e
                                                          _tl146089146125_)))
                                                    (let ((_hd146091146133_
                                                           (##car _e146090146130_))
                                                          (_tl146092146135_
                                                           (##cdr _e146090146130_)))
                                                      (let ((_E146138_
                                                             _hd146091146133_))
                                                        (if (gx#stx-null?
                                                             _tl146092146135_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test146118_)
                                     (cons (gx#core-expand-expression
                                            _K146128_)
                                           (cons (gx#core-expand-expression
                                                  _E146138_)
                                                 '()))))
                         (gx#stx-source _stx146077_))
                        (_E146080146098_))
                    (_E146080146098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E146080146098_)))))
                                        (_E146080146098_)))))
                              (_E146080146098_))))
                      (_E146080146098_)))))
          (_E146079146140_))))
    (define gx#core-expand-ref%
      (lambda (_stx146036_)
        (let* ((_e146037146047_ _stx146036_)
               (_E146039146051_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e146037146047_)))
               (_E146038146073_
                (lambda ()
                  (if (gx#stx-pair? _e146037146047_)
                      (let ((_e146040146055_ (gx#syntax-e _e146037146047_)))
                        (let ((_hd146041146058_ (##car _e146040146055_))
                              (_tl146042146060_ (##cdr _e146040146055_)))
                          (if (gx#stx-pair? _tl146042146060_)
                              (let ((_e146043146063_
                                     (gx#syntax-e _tl146042146060_)))
                                (let ((_hd146044146066_
                                       (##car _e146043146063_))
                                      (_tl146045146068_
                                       (##cdr _e146043146063_)))
                                  (let ((_id146071_ _hd146044146066_))
                                    (if (gx#stx-null? _tl146045146068_)
                                        (if (gx#identifier? _id146071_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id146071_
                                                          _stx146036_)
                                                         '()))
                                             (gx#stx-source _stx146036_))
                                            (_E146039146051_))
                                        (_E146039146051_)))))
                              (_E146039146051_))))
                      (_E146039146051_)))))
          (_E146038146073_))))
    (define gx#core-expand-setq%
      (lambda (_stx145982_)
        (let* ((_e145983145996_ _stx145982_)
               (_E145985146000_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145983145996_)))
               (_E145984146032_
                (lambda ()
                  (if (gx#stx-pair? _e145983145996_)
                      (let ((_e145986146004_ (gx#syntax-e _e145983145996_)))
                        (let ((_hd145987146007_ (##car _e145986146004_))
                              (_tl145988146009_ (##cdr _e145986146004_)))
                          (if (gx#stx-pair? _tl145988146009_)
                              (let ((_e145989146012_
                                     (gx#syntax-e _tl145988146009_)))
                                (let ((_hd145990146015_
                                       (##car _e145989146012_))
                                      (_tl145991146017_
                                       (##cdr _e145989146012_)))
                                  (let ((_id146020_ _hd145990146015_))
                                    (if (gx#stx-pair? _tl145991146017_)
                                        (let ((_e145992146022_
                                               (gx#syntax-e _tl145991146017_)))
                                          (let ((_hd145993146025_
                                                 (##car _e145992146022_))
                                                (_tl145994146027_
                                                 (##cdr _e145992146022_)))
                                            (let ((_expr146030_
                                                   _hd145993146025_))
                                              (if (gx#stx-null?
                                                   _tl145994146027_)
                                                  (if (gx#identifier?
                                                       _id146020_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id146020_
                            _stx145982_)
                           (cons (gx#core-expand-expression _expr146030_)
                                 '())))
               (gx#stx-source _stx145982_))
              (_E145985146000_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145985146000_)))))
                                        (_E145985146000_)))))
                              (_E145985146000_))))
                      (_E145985146000_)))))
          (_E145984146032_))))
    (define gx#macro-expand-extern
      (lambda (_stx145830_)
        (letrec ((_generate145832_
                  (lambda (_body145862_)
                    (let _lp145864_ ((_rest145866_ _body145862_)
                                     (_ns145867_
                                      (gx#core-context-namespace__0))
                                     (_r145868_ '()))
                      (let* ((_e145869145884_ _rest145866_)
                             (_E145882145888_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e145869145884_)))
                             (_E145878145892_
                              (lambda ()
                                (if (gx#stx-null? _e145869145884_)
                                    (if '#t
                                        (reverse _r145868_)
                                        (_E145882145888_))
                                    (_E145882145888_))))
                             (_E145871145949_
                              (lambda ()
                                (if (gx#stx-pair? _e145869145884_)
                                    (let ((_e145879145896_
                                           (gx#syntax-e _e145869145884_)))
                                      (let ((_hd145880145899_
                                             (##car _e145879145896_))
                                            (_tl145881145901_
                                             (##cdr _e145879145896_)))
                                        (let* ((_hd145904_ _hd145880145899_)
                                               (_rest145906_ _tl145881145901_))
                                          (if '#t
                                              (if (gx#identifier? _hd145904_)
                                                  (_lp145864_
                                                   _rest145906_
                                                   _ns145867_
                                                   (cons (cons _hd145904_
                                                               (cons (if _ns145867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd145904_
                                  _ns145867_
                                  '"#"
                                  _hd145904_)
                                 _hd145904_)
                             '()))
                 _r145868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e145907145917_
                                                          _hd145904_)
                                                         (_E145909145921_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e145907145917_)))
                                                         (_E145908145945_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e145907145917_)
                        (let ((_e145910145925_ (gx#syntax-e _e145907145917_)))
                          (let ((_hd145911145928_ (##car _e145910145925_))
                                (_tl145912145930_ (##cdr _e145910145925_)))
                            (let ((_id145933_ _hd145911145928_))
                              (if (gx#stx-pair? _tl145912145930_)
                                  (let ((_e145913145935_
                                         (gx#syntax-e _tl145912145930_)))
                                    (let ((_hd145914145938_
                                           (##car _e145913145935_))
                                          (_tl145915145940_
                                           (##cdr _e145913145935_)))
                                      (let ((_eid145943_ _hd145914145938_))
                                        (if (gx#stx-null? _tl145915145940_)
                                            (if (and (gx#identifier?
                                                      _id145933_)
                                                     (gx#identifier?
                                                      _eid145943_))
                                                (_lp145864_
                                                 _rest145906_
                                                 _ns145867_
                                                 (cons (cons _id145933_
                                                             (cons _eid145943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r145868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145909145921_))
                                            (_E145909145921_)))))
                                  (_E145909145921_)))))
                        (_E145909145921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E145908145945_)))
                                              (_E145878145892_)))))
                                    (_E145878145892_))))
                             (_E145870145978_
                              (lambda ()
                                (if (gx#stx-pair? _e145869145884_)
                                    (let ((_e145872145953_
                                           (gx#syntax-e _e145869145884_)))
                                      (let ((_hd145873145956_
                                             (##car _e145872145953_))
                                            (_tl145874145958_
                                             (##cdr _e145872145953_)))
                                        (if (eq? (gx#stx-e _hd145873145956_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl145874145958_)
                                                (let ((_e145875145961_
                                                       (gx#syntax-e
                                                        _tl145874145958_)))
                                                  (let ((_hd145876145964_
                                                         (##car _e145875145961_))
                                                        (_tl145877145966_
                                                         (##cdr _e145875145961_)))
                                                    (let* ((_ns145969_
                                                            _hd145876145964_)
                                                           (_rest145971_
                                                            _tl145877145966_))
                                                      (if '#t
                                                          (let ((_ns145976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns145969_)
                             (symbol->string (gx#stx-e _ns145969_))
                             (if (or (gx#stx-string? _ns145969_)
                                     (gx#stx-false? _ns145969_))
                                 (gx#stx-e _ns145969_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx145830_
                                  _ns145969_)))))
                    (_lp145864_ _rest145971_ _ns145976_ _r145868_))
                  (_E145871145949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E145871145949_))
                                            (_E145871145949_))))
                                    (_E145871145949_)))))
                        (_E145870145978_))))))
          (let* ((_e145833145840_ _stx145830_)
                 (_E145835145844_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145833145840_)))
                 (_E145834145858_
                  (lambda ()
                    (if (gx#stx-pair? _e145833145840_)
                        (let ((_e145836145848_ (gx#syntax-e _e145833145840_)))
                          (let ((_hd145837145851_ (##car _e145836145848_))
                                (_tl145838145853_ (##cdr _e145836145848_)))
                            (let ((_body145856_ _tl145838145853_))
                              (if (gx#stx-list? _body145856_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate145832_ _body145856_))
                                  (_E145835145844_)))))
                        (_E145835145844_)))))
            (_E145834145858_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx145776_)
        (let* ((_e145777145790_ _stx145776_)
               (_E145779145794_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145777145790_)))
               (_E145778145826_
                (lambda ()
                  (if (gx#stx-pair? _e145777145790_)
                      (let ((_e145780145798_ (gx#syntax-e _e145777145790_)))
                        (let ((_hd145781145801_ (##car _e145780145798_))
                              (_tl145782145803_ (##cdr _e145780145798_)))
                          (if (gx#stx-pair? _tl145782145803_)
                              (let ((_e145783145806_
                                     (gx#syntax-e _tl145782145803_)))
                                (let ((_hd145784145809_
                                       (##car _e145783145806_))
                                      (_tl145785145811_
                                       (##cdr _e145783145806_)))
                                  (let ((_hd145814_ _hd145784145809_))
                                    (if (gx#stx-pair? _tl145785145811_)
                                        (let ((_e145786145816_
                                               (gx#syntax-e _tl145785145811_)))
                                          (let ((_hd145787145819_
                                                 (##car _e145786145816_))
                                                (_tl145788145821_
                                                 (##cdr _e145786145816_)))
                                            (let ((_expr145824_
                                                   _hd145787145819_))
                                              (if (gx#stx-null?
                                                   _tl145788145821_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd145814_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd145814_)
                          (cons _expr145824_ '())))
              (_E145779145794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145779145794_)))))
                                        (_E145779145794_)))))
                              (_E145779145794_))))
                      (_E145779145794_)))))
          (_E145778145826_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx145722_)
        (let* ((_e145723145736_ _stx145722_)
               (_E145725145740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145723145736_)))
               (_E145724145772_
                (lambda ()
                  (if (gx#stx-pair? _e145723145736_)
                      (let ((_e145726145744_ (gx#syntax-e _e145723145736_)))
                        (let ((_hd145727145747_ (##car _e145726145744_))
                              (_tl145728145749_ (##cdr _e145726145744_)))
                          (if (gx#stx-pair? _tl145728145749_)
                              (let ((_e145729145752_
                                     (gx#syntax-e _tl145728145749_)))
                                (let ((_hd145730145755_
                                       (##car _e145729145752_))
                                      (_tl145731145757_
                                       (##cdr _e145729145752_)))
                                  (let ((_hd145760_ _hd145730145755_))
                                    (if (gx#stx-pair? _tl145731145757_)
                                        (let ((_e145732145762_
                                               (gx#syntax-e _tl145731145757_)))
                                          (let ((_hd145733145765_
                                                 (##car _e145732145762_))
                                                (_tl145734145767_
                                                 (##cdr _e145732145762_)))
                                            (let ((_expr145770_
                                                   _hd145733145765_))
                                              (if (gx#stx-null?
                                                   _tl145734145767_)
                                                  (if (gx#identifier?
                                                       _hd145760_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd145760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr145770_ '())))
              (_E145725145740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145725145740_)))))
                                        (_E145725145740_)))))
                              (_E145725145740_))))
                      (_E145725145740_)))))
          (_E145724145772_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx145668_)
        (let* ((_e145669145682_ _stx145668_)
               (_E145671145686_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145669145682_)))
               (_E145670145718_
                (lambda ()
                  (if (gx#stx-pair? _e145669145682_)
                      (let ((_e145672145690_ (gx#syntax-e _e145669145682_)))
                        (let ((_hd145673145693_ (##car _e145672145690_))
                              (_tl145674145695_ (##cdr _e145672145690_)))
                          (if (gx#stx-pair? _tl145674145695_)
                              (let ((_e145675145698_
                                     (gx#syntax-e _tl145674145695_)))
                                (let ((_hd145676145701_
                                       (##car _e145675145698_))
                                      (_tl145677145703_
                                       (##cdr _e145675145698_)))
                                  (let ((_id145706_ _hd145676145701_))
                                    (if (gx#stx-pair? _tl145677145703_)
                                        (let ((_e145678145708_
                                               (gx#syntax-e _tl145677145703_)))
                                          (let ((_hd145679145711_
                                                 (##car _e145678145708_))
                                                (_tl145680145713_
                                                 (##cdr _e145678145708_)))
                                            (let ((_alias-id145716_
                                                   _hd145679145711_))
                                              (if (gx#stx-null?
                                                   _tl145680145713_)
                                                  (if (and (gx#identifier?
                                                            _id145706_)
                                                           (gx#identifier?
                                                            _alias-id145716_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id145706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id145716_ '())))
              (_E145671145686_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145671145686_)))))
                                        (_E145671145686_)))))
                              (_E145671145686_))))
                      (_E145671145686_)))))
          (_E145670145718_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx145625_)
        (let* ((_e145626145636_ _stx145625_)
               (_E145628145640_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145626145636_)))
               (_E145627145664_
                (lambda ()
                  (if (gx#stx-pair? _e145626145636_)
                      (let ((_e145629145644_ (gx#syntax-e _e145626145636_)))
                        (let ((_hd145630145647_ (##car _e145629145644_))
                              (_tl145631145649_ (##cdr _e145629145644_)))
                          (if (gx#stx-pair? _tl145631145649_)
                              (let ((_e145632145652_
                                     (gx#syntax-e _tl145631145649_)))
                                (let ((_hd145633145655_
                                       (##car _e145632145652_))
                                      (_tl145634145657_
                                       (##cdr _e145632145652_)))
                                  (let* ((_hd145660_ _hd145633145655_)
                                         (_body145662_ _tl145634145657_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd145660_)
                                             (gx#stx-list? _body145662_)
                                             (not (gx#stx-null? _body145662_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd145660_)
                                         _body145662_)
                                        (_E145628145640_)))))
                              (_E145628145640_))))
                      (_E145628145640_)))))
          (_E145627145664_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx145561_)
        (letrec ((_generate145563_
                  (lambda (_clause145593_)
                    (let* ((_e145594145601_ _clause145593_)
                           (_E145596145605_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx145561_
                               _clause145593_)))
                           (_E145595145621_
                            (lambda ()
                              (if (gx#stx-pair? _e145594145601_)
                                  (let ((_e145597145609_
                                         (gx#syntax-e _e145594145601_)))
                                    (let ((_hd145598145612_
                                           (##car _e145597145609_))
                                          (_tl145599145614_
                                           (##cdr _e145597145609_)))
                                      (let* ((_hd145617_ _hd145598145612_)
                                             (_body145619_ _tl145599145614_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd145617_)
                                                 (gx#stx-list? _body145619_)
                                                 (not (gx#stx-null?
                                                       _body145619_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd145617_)
                                                   _body145619_)
                                             (gx#stx-source _clause145593_))
                                            (_E145596145605_)))))
                                  (_E145596145605_)))))
                      (_E145595145621_)))))
          (let* ((_e145564145571_ _stx145561_)
                 (_E145566145575_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145564145571_)))
                 (_E145565145589_
                  (lambda ()
                    (if (gx#stx-pair? _e145564145571_)
                        (let ((_e145567145579_ (gx#syntax-e _e145564145571_)))
                          (let ((_hd145568145582_ (##car _e145567145579_))
                                (_tl145569145584_ (##cdr _e145567145579_)))
                            (let ((_clauses145587_ _tl145569145584_))
                              (if (gx#stx-list? _clauses145587_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate145563_
                                    _clauses145587_))
                                  (_E145566145575_)))))
                        (_E145566145575_)))))
            (_E145565145589_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx145462_ _form145463_)
        (letrec ((_generate145465_
                  (lambda (_bind145508_)
                    (let* ((_e145509145519_ _bind145508_)
                           (_E145511145523_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx145462_
                               _bind145508_)))
                           (_E145510145547_
                            (lambda ()
                              (if (gx#stx-pair? _e145509145519_)
                                  (let ((_e145512145527_
                                         (gx#syntax-e _e145509145519_)))
                                    (let ((_hd145513145530_
                                           (##car _e145512145527_))
                                          (_tl145514145532_
                                           (##cdr _e145512145527_)))
                                      (let ((_ids145535_ _hd145513145530_))
                                        (if (gx#stx-pair? _tl145514145532_)
                                            (let ((_e145515145537_
                                                   (gx#syntax-e
                                                    _tl145514145532_)))
                                              (let ((_hd145516145540_
                                                     (##car _e145515145537_))
                                                    (_tl145517145542_
                                                     (##cdr _e145515145537_)))
                                                (let ((_expr145545_
                                                       _hd145516145540_))
                                                  (if (gx#stx-null?
                                                       _tl145517145542_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids145535_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids145535_)
                        (cons _expr145545_ '()))
                  (_E145511145523_))
              (_E145511145523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E145511145523_)))))
                                  (_E145511145523_)))))
                      (_E145510145547_)))))
          (let* ((_e145466145476_ _stx145462_)
                 (_E145468145480_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e145466145476_)))
                 (_E145467145504_
                  (lambda ()
                    (if (gx#stx-pair? _e145466145476_)
                        (let ((_e145469145484_ (gx#syntax-e _e145466145476_)))
                          (let ((_hd145470145487_ (##car _e145469145484_))
                                (_tl145471145489_ (##cdr _e145469145484_)))
                            (if (gx#stx-pair? _tl145471145489_)
                                (let ((_e145472145492_
                                       (gx#syntax-e _tl145471145489_)))
                                  (let ((_hd145473145495_
                                         (##car _e145472145492_))
                                        (_tl145474145497_
                                         (##cdr _e145472145492_)))
                                    (let* ((_hd145500_ _hd145473145495_)
                                           (_body145502_ _tl145474145497_))
                                      (if (and (gx#stx-list? _hd145500_)
                                               (gx#stx-list? _body145502_)
                                               (not (gx#stx-null?
                                                     _body145502_)))
                                          (gx#core-cons*
                                           _form145463_
                                           (gx#stx-map1
                                            _generate145465_
                                            _hd145500_)
                                           _body145502_)
                                          (_E145468145480_)))))
                                (_E145468145480_))))
                        (_E145468145480_)))))
            (_E145467145504_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx145554_)
        (let ((_form145556_ '%#let-values))
          (gx#macro-expand-let-values__% _stx145554_ _form145556_))))
    (define gx#macro-expand-let-values
      (lambda _g152133_
        (let ((_g152132_ (##length _g152133_)))
          (cond ((##fx= _g152132_ 1)
                 (apply (lambda (_stx145554_)
                          (gx#macro-expand-let-values__0 _stx145554_))
                        _g152133_))
                ((##fx= _g152132_ 2)
                 (apply (lambda (_stx145558_ _form145559_)
                          (gx#macro-expand-let-values__%
                           _stx145558_
                           _form145559_))
                        _g152133_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g152133_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx145459_)
        (gx#macro-expand-let-values__% _stx145459_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx145457_)
        (gx#macro-expand-let-values__% _stx145457_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx145348_)
        (let* ((_e145349145375_ _stx145348_)
               (_E145361145379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e145349145375_)))
               (_E145351145421_
                (lambda ()
                  (if (gx#stx-pair? _e145349145375_)
                      (let ((_e145362145383_ (gx#syntax-e _e145349145375_)))
                        (let ((_hd145363145386_ (##car _e145362145383_))
                              (_tl145364145388_ (##cdr _e145362145383_)))
                          (if (gx#stx-pair? _tl145364145388_)
                              (let ((_e145365145391_
                                     (gx#syntax-e _tl145364145388_)))
                                (let ((_hd145366145394_
                                       (##car _e145365145391_))
                                      (_tl145367145396_
                                       (##cdr _e145365145391_)))
                                  (let ((_test145399_ _hd145366145394_))
                                    (if (gx#stx-pair? _tl145367145396_)
                                        (let ((_e145368145401_
                                               (gx#syntax-e _tl145367145396_)))
                                          (let ((_hd145369145404_
                                                 (##car _e145368145401_))
                                                (_tl145370145406_
                                                 (##cdr _e145368145401_)))
                                            (let ((_K145409_ _hd145369145404_))
                                              (if (gx#stx-pair?
                                                   _tl145370145406_)
                                                  (let ((_e145371145411_
                                                         (gx#syntax-e
                                                          _tl145370145406_)))
                                                    (let ((_hd145372145414_
                                                           (##car _e145371145411_))
                                                          (_tl145373145416_
                                                           (##cdr _e145371145411_)))
                                                      (let ((_E145419_
                                                             _hd145372145414_))
                                                        (if (gx#stx-null?
                                                             _tl145373145416_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test145399_
                         _K145409_
                         _E145419_)
                        (_E145361145379_))
                    (_E145361145379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E145361145379_)))))
                                        (_E145361145379_)))))
                              (_E145361145379_))))
                      (_E145361145379_))))
               (_E145350145453_
                (lambda ()
                  (if (gx#stx-pair? _e145349145375_)
                      (let ((_e145352145425_ (gx#syntax-e _e145349145375_)))
                        (let ((_hd145353145428_ (##car _e145352145425_))
                              (_tl145354145430_ (##cdr _e145352145425_)))
                          (if (gx#stx-pair? _tl145354145430_)
                              (let ((_e145355145433_
                                     (gx#syntax-e _tl145354145430_)))
                                (let ((_hd145356145436_
                                       (##car _e145355145433_))
                                      (_tl145357145438_
                                       (##cdr _e145355145433_)))
                                  (let ((_test145441_ _hd145356145436_))
                                    (if (gx#stx-pair? _tl145357145438_)
                                        (let ((_e145358145443_
                                               (gx#syntax-e _tl145357145438_)))
                                          (let ((_hd145359145446_
                                                 (##car _e145358145443_))
                                                (_tl145360145448_
                                                 (##cdr _e145358145443_)))
                                            (let ((_K145451_ _hd145359145446_))
                                              (if (gx#stx-null?
                                                   _tl145360145448_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test145441_
                                                       _K145451_
                                                       '#!void)
                                                      (_E145351145421_))
                                                  (_E145351145421_)))))
                                        (_E145351145421_)))))
                              (_E145351145421_))))
                      (_E145351145421_)))))
          (_E145350145453_))))
    (define gx#free-identifier=?
      (lambda (_xid145336_ _yid145337_)
        (let ((_xe145339_ (gx#resolve-identifier__0 _xid145336_))
              (_ye145340_ (gx#resolve-identifier__0 _yid145337_)))
          (if (and _xe145339_ _ye145340_)
              (let ((_$e145342_ (eq? _xe145339_ _ye145340_)))
                (if _$e145342_
                    _$e145342_
                    (if (##structure-instance-of? _xe145339_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _ye145340_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe145339_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye145340_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe145339_ _ye145340_)
                  '#f
                  (gx#stx-eq? _xid145336_ _yid145337_))))))
    (define gx#bound-identifier=?
      (lambda (_xid145320_ _yid145321_)
        (letrec ((_context145323_
                  (lambda (_e145334_)
                    (if (##structure-direct-instance-of?
                         _e145334_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e145334_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks145324_
                  (lambda (_e145332_)
                    (if (symbol? _e145332_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e145332_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e145332_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e145332_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap145325_
                  (lambda (_e145330_)
                    (if (symbol? _e145330_)
                        _e145330_
                        (gx#syntax-local-unwrap _e145330_)))))
          (let ((_x145327_ (_unwrap145325_ _xid145320_))
                (_y145328_ (_unwrap145325_ _yid145321_)))
            (if (gx#stx-eq? _x145327_ _y145328_)
                (if (eq? (_context145323_ _x145327_)
                         (_context145323_ _y145328_))
                    (equal? (_marks145324_ _x145327_)
                            (_marks145324_ _y145328_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx145318_)
        (if (gx#identifier? _stx145318_)
            (gx#core-identifier=? _stx145318_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx145316_)
        (if (gx#identifier? _stx145316_)
            (gx#core-identifier=? _stx145316_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x145314_)
        (if (gx#identifier? _x145314_)
            (if (not (gx#underscore? _x145314_)) _x145314_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx145260_ _where145261_)
        (let _lp145263_ ((_rest145265_ (gx#syntax->list _stx145260_)))
          (let* ((_rest145266145274_ _rest145265_)
                 (_else145268145282_ (lambda () '#t))
                 (_K145270145292_
                  (lambda (_rest145285_ _hd145286_)
                    (if (not (gx#identifier? _hd145286_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where145261_
                         _hd145286_)
                        (if (find (lambda (_g145287145289_)
                                    (gx#bound-identifier=?
                                     _g145287145289_
                                     _hd145286_))
                                  _rest145285_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where145261_
                             _hd145286_)
                            (_lp145263_ _rest145285_))))))
            (if (##pair? _rest145266145274_)
                (let ((_hd145271145295_ (##car _rest145266145274_))
                      (_tl145272145297_ (##cdr _rest145266145274_)))
                  (let* ((_hd145300_ _hd145271145295_)
                         (_rest145302_ _tl145272145297_))
                    (_K145270145292_ _rest145302_ _hd145300_)))
                (_else145268145282_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx145307_)
        (let ((_where145309_ _stx145307_))
          (gx#check-duplicate-identifiers__% _stx145307_ _where145309_))))
    (define gx#check-duplicate-identifiers
      (lambda _g152135_
        (let ((_g152134_ (##length _g152135_)))
          (cond ((##fx= _g152134_ 1)
                 (apply (lambda (_stx145307_)
                          (gx#check-duplicate-identifiers__0 _stx145307_))
                        _g152135_))
                ((##fx= _g152134_ 2)
                 (apply (lambda (_stx145311_ _where145312_)
                          (gx#check-duplicate-identifiers__%
                           _stx145311_
                           _where145312_))
                        _g152135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g152135_))))))
    (define gx#core-bind-values?
      (lambda (_stx145252_)
        (gx#stx-andmap
         (lambda (_x145254_)
           (let ((_$e145256_ (gx#identifier? _x145254_)))
             (if _$e145256_ _$e145256_ (gx#stx-false? _x145254_))))
         _stx145252_)))
    (define gx#core-bind-values!__%
      (lambda (_stx145216_ _rebind?145217_ _phi145218_ _ctx145219_)
        (gx#stx-for-each1
         (lambda (_id145221_)
           (if (gx#identifier? _id145221_)
               (gx#core-bind-runtime!__%
                _id145221_
                _rebind?145217_
                _phi145218_
                _ctx145219_)
               '#!void))
         _stx145216_)))
    (define gx#core-bind-values!__0
      (lambda (_stx145226_)
        (let* ((_rebind?145228_ '#f)
               (_phi145230_ (gx#current-expander-phi))
               (_ctx145232_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145226_
           _rebind?145228_
           _phi145230_
           _ctx145232_))))
    (define gx#core-bind-values!__1
      (lambda (_stx145234_ _rebind?145235_)
        (let* ((_phi145237_ (gx#current-expander-phi))
               (_ctx145239_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145234_
           _rebind?145235_
           _phi145237_
           _ctx145239_))))
    (define gx#core-bind-values!__2
      (lambda (_stx145241_ _rebind?145242_ _phi145243_)
        (let ((_ctx145245_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx145241_
           _rebind?145242_
           _phi145243_
           _ctx145245_))))
    (define gx#core-bind-values!
      (lambda _g152137_
        (let ((_g152136_ (##length _g152137_)))
          (cond ((##fx= _g152136_ 1)
                 (apply (lambda (_stx145226_)
                          (gx#core-bind-values!__0 _stx145226_))
                        _g152137_))
                ((##fx= _g152136_ 2)
                 (apply (lambda (_stx145234_ _rebind?145235_)
                          (gx#core-bind-values!__1
                           _stx145234_
                           _rebind?145235_))
                        _g152137_))
                ((##fx= _g152136_ 3)
                 (apply (lambda (_stx145241_ _rebind?145242_ _phi145243_)
                          (gx#core-bind-values!__2
                           _stx145241_
                           _rebind?145242_
                           _phi145243_))
                        _g152137_))
                ((##fx= _g152136_ 4)
                 (apply (lambda (_stx145247_
                                 _rebind?145248_
                                 _phi145249_
                                 _ctx145250_)
                          (gx#core-bind-values!__%
                           _stx145247_
                           _rebind?145248_
                           _phi145249_
                           _ctx145250_))
                        _g152137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g152137_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx145211_)
        (gx#stx-map1
         (lambda (_x145213_)
           (if (gx#identifier? _x145213_)
               (gx#core-quote-syntax__0 _x145213_)
               '#f))
         _stx145211_)))
    (define gx#core-runtime-ref?
      (lambda (_stx145204_)
        (if (gx#identifier? _stx145204_)
            (let* ((_bind145206_ (gx#resolve-identifier__0 _stx145204_))
                   (_$e145208_ (not _bind145206_)))
              (if _$e145208_
                  _$e145208_
                  (##structure-instance-of?
                   _bind145206_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id145196_ _form145197_)
        (let ((_bind145199_ (gx#resolve-identifier__0 _id145196_)))
          (if (##structure-instance-of? _bind145199_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id145196_)
              (if (not _bind145199_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id145196_)))
                      (gx#core-quote-syntax__0 _id145196_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form145197_
                       _id145196_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form145197_
                   _id145196_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id145155_ _rebind?145156_ _phi145157_ _ctx145158_)
        (let* ((_key145160_ (gx#core-identifier-key _id145155_))
               (_eid145162_
                (gx#make-binding-id__%
                 _key145160_
                 '#f
                 _phi145157_
                 _ctx145158_))
               (_bind145164_
                (if (##structure-instance-of?
                     _ctx145158_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145162_
                     _key145160_
                     _phi145157_
                     _ctx145158_)
                    (if (##structure-instance-of?
                         _ctx145158_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145162_
                         _key145160_
                         _phi145157_)
                        (if (##structure-instance-of?
                             _ctx145158_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid145162_
                             _key145160_
                             _phi145157_)
                            (##structure
                             gx#runtime-binding::t
                             _eid145162_
                             _key145160_
                             _phi145157_))))))
          (gx#bind-identifier!__%
           _id145155_
           _bind145164_
           _rebind?145156_
           _phi145157_
           _ctx145158_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id145170_)
        (let* ((_rebind?145172_ '#f)
               (_phi145174_ (gx#current-expander-phi))
               (_ctx145176_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145170_
           _rebind?145172_
           _phi145174_
           _ctx145176_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id145178_ _rebind?145179_)
        (let* ((_phi145181_ (gx#current-expander-phi))
               (_ctx145183_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145178_
           _rebind?145179_
           _phi145181_
           _ctx145183_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id145185_ _rebind?145186_ _phi145187_)
        (let ((_ctx145189_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id145185_
           _rebind?145186_
           _phi145187_
           _ctx145189_))))
    (define gx#core-bind-runtime!
      (lambda _g152139_
        (let ((_g152138_ (##length _g152139_)))
          (cond ((##fx= _g152138_ 1)
                 (apply (lambda (_id145170_)
                          (gx#core-bind-runtime!__0 _id145170_))
                        _g152139_))
                ((##fx= _g152138_ 2)
                 (apply (lambda (_id145178_ _rebind?145179_)
                          (gx#core-bind-runtime!__1
                           _id145178_
                           _rebind?145179_))
                        _g152139_))
                ((##fx= _g152138_ 3)
                 (apply (lambda (_id145185_ _rebind?145186_ _phi145187_)
                          (gx#core-bind-runtime!__2
                           _id145185_
                           _rebind?145186_
                           _phi145187_))
                        _g152139_))
                ((##fx= _g152138_ 4)
                 (apply (lambda (_id145191_
                                 _rebind?145192_
                                 _phi145193_
                                 _ctx145194_)
                          (gx#core-bind-runtime!__%
                           _id145191_
                           _rebind?145192_
                           _phi145193_
                           _ctx145194_))
                        _g152139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g152139_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id145110_ _eid145111_ _rebind?145112_ _phi145113_ _ctx145114_)
        (let* ((_key145116_ (gx#core-identifier-key _id145110_))
               (_bind145118_
                (if (##structure-instance-of?
                     _ctx145114_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid145111_
                     _key145116_
                     _phi145113_
                     _ctx145114_)
                    (if (##structure-instance-of?
                         _ctx145114_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid145111_
                         _key145116_
                         _phi145113_)
                        (##structure
                         gx#runtime-binding::t
                         _eid145111_
                         _key145116_
                         _phi145113_)))))
          (gx#bind-identifier!__%
           _id145110_
           _bind145118_
           _rebind?145112_
           _phi145113_
           _ctx145114_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id145124_ _eid145125_)
        (let* ((_rebind?145127_ '#f)
               (_phi145129_ (gx#current-expander-phi))
               (_ctx145131_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145124_
           _eid145125_
           _rebind?145127_
           _phi145129_
           _ctx145131_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id145133_ _eid145134_ _rebind?145135_)
        (let* ((_phi145137_ (gx#current-expander-phi))
               (_ctx145139_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145133_
           _eid145134_
           _rebind?145135_
           _phi145137_
           _ctx145139_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id145141_ _eid145142_ _rebind?145143_ _phi145144_)
        (let ((_ctx145146_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id145141_
           _eid145142_
           _rebind?145143_
           _phi145144_
           _ctx145146_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g152141_
        (let ((_g152140_ (##length _g152141_)))
          (cond ((##fx= _g152140_ 2)
                 (apply (lambda (_id145124_ _eid145125_)
                          (gx#core-bind-runtime-reference!__0
                           _id145124_
                           _eid145125_))
                        _g152141_))
                ((##fx= _g152140_ 3)
                 (apply (lambda (_id145133_ _eid145134_ _rebind?145135_)
                          (gx#core-bind-runtime-reference!__1
                           _id145133_
                           _eid145134_
                           _rebind?145135_))
                        _g152141_))
                ((##fx= _g152140_ 4)
                 (apply (lambda (_id145141_
                                 _eid145142_
                                 _rebind?145143_
                                 _phi145144_)
                          (gx#core-bind-runtime-reference!__2
                           _id145141_
                           _eid145142_
                           _rebind?145143_
                           _phi145144_))
                        _g152141_))
                ((##fx= _g152140_ 5)
                 (apply (lambda (_id145148_
                                 _eid145149_
                                 _rebind?145150_
                                 _phi145151_
                                 _ctx145152_)
                          (gx#core-bind-runtime-reference!__%
                           _id145148_
                           _eid145149_
                           _rebind?145150_
                           _phi145151_
                           _ctx145152_))
                        _g152141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g152141_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id145070_ _eid145071_ _rebind?145072_ _phi145073_ _ctx145074_)
        (gx#bind-identifier!__%
         _id145070_
         (##structure
          gx#extern-binding::t
          _eid145071_
          (gx#core-identifier-key _id145070_)
          _phi145073_)
         _rebind?145072_
         _phi145073_
         _ctx145074_)))
    (define gx#core-bind-extern!__0
      (lambda (_id145079_ _eid145080_)
        (let* ((_rebind?145082_ '#f)
               (_phi145084_ (gx#current-expander-phi))
               (_ctx145086_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145079_
           _eid145080_
           _rebind?145082_
           _phi145084_
           _ctx145086_))))
    (define gx#core-bind-extern!__1
      (lambda (_id145088_ _eid145089_ _rebind?145090_)
        (let* ((_phi145092_ (gx#current-expander-phi))
               (_ctx145094_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145088_
           _eid145089_
           _rebind?145090_
           _phi145092_
           _ctx145094_))))
    (define gx#core-bind-extern!__2
      (lambda (_id145096_ _eid145097_ _rebind?145098_ _phi145099_)
        (let ((_ctx145101_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id145096_
           _eid145097_
           _rebind?145098_
           _phi145099_
           _ctx145101_))))
    (define gx#core-bind-extern!
      (lambda _g152143_
        (let ((_g152142_ (##length _g152143_)))
          (cond ((##fx= _g152142_ 2)
                 (apply (lambda (_id145079_ _eid145080_)
                          (gx#core-bind-extern!__0 _id145079_ _eid145080_))
                        _g152143_))
                ((##fx= _g152142_ 3)
                 (apply (lambda (_id145088_ _eid145089_ _rebind?145090_)
                          (gx#core-bind-extern!__1
                           _id145088_
                           _eid145089_
                           _rebind?145090_))
                        _g152143_))
                ((##fx= _g152142_ 4)
                 (apply (lambda (_id145096_
                                 _eid145097_
                                 _rebind?145098_
                                 _phi145099_)
                          (gx#core-bind-extern!__2
                           _id145096_
                           _eid145097_
                           _rebind?145098_
                           _phi145099_))
                        _g152143_))
                ((##fx= _g152142_ 5)
                 (apply (lambda (_id145103_
                                 _eid145104_
                                 _rebind?145105_
                                 _phi145106_
                                 _ctx145107_)
                          (gx#core-bind-extern!__%
                           _id145103_
                           _eid145104_
                           _rebind?145105_
                           _phi145106_
                           _ctx145107_))
                        _g152143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g152143_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id145024_ _e145025_ _rebind?145026_ _phi145027_ _ctx145028_)
        (gx#bind-identifier!__%
         _id145024_
         (let ((_key145033_ (gx#core-identifier-key _id145024_))
               (_e145034_
                (if (or (##structure-instance-of? _e145025_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e145025_
                         'gx#expander-context::t))
                    _e145025_
                    (##structure
                     gx#user-expander::t
                     _e145025_
                     _ctx145028_
                     _phi145027_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key145033_ '#t _phi145027_ _ctx145028_)
            _key145033_
            _phi145027_
            _e145034_))
         _rebind?145026_
         _phi145027_
         _ctx145028_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id145039_ _e145040_)
        (let* ((_rebind?145042_ '#f)
               (_phi145044_ (gx#current-expander-phi))
               (_ctx145046_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id145039_
           _e145040_
           _rebind?145042_
           _phi145044_
           _ctx145046_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id145048_ _e145049_ _rebind?145050_)
        (let* ((_phi145052_ (gx#current-expander-phi))
               (_ctx145054_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id145048_
           _e145049_
           _rebind?145050_
           _phi145052_
           _ctx145054_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id145056_ _e145057_ _rebind?145058_ _phi145059_)
        (let ((_ctx145061_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id145056_
           _e145057_
           _rebind?145058_
           _phi145059_
           _ctx145061_))))
    (define gx#core-bind-syntax!
      (lambda _g152145_
        (let ((_g152144_ (##length _g152145_)))
          (cond ((##fx= _g152144_ 2)
                 (apply (lambda (_id145039_ _e145040_)
                          (gx#core-bind-syntax!__0 _id145039_ _e145040_))
                        _g152145_))
                ((##fx= _g152144_ 3)
                 (apply (lambda (_id145048_ _e145049_ _rebind?145050_)
                          (gx#core-bind-syntax!__1
                           _id145048_
                           _e145049_
                           _rebind?145050_))
                        _g152145_))
                ((##fx= _g152144_ 4)
                 (apply (lambda (_id145056_
                                 _e145057_
                                 _rebind?145058_
                                 _phi145059_)
                          (gx#core-bind-syntax!__2
                           _id145056_
                           _e145057_
                           _rebind?145058_
                           _phi145059_))
                        _g152145_))
                ((##fx= _g152144_ 5)
                 (apply (lambda (_id145063_
                                 _e145064_
                                 _rebind?145065_
                                 _phi145066_
                                 _ctx145067_)
                          (gx#core-bind-syntax!__%
                           _id145063_
                           _e145064_
                           _rebind?145065_
                           _phi145066_
                           _ctx145067_))
                        _g152145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g152145_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id145007_ _e145008_ _rebind?145009_)
        (gx#core-bind-syntax!__%
         _id145007_
         _e145008_
         _rebind?145009_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id145014_ _e145015_)
        (let ((_rebind?145017_ '#f))
          (gx#core-bind-root-syntax!__%
           _id145014_
           _e145015_
           _rebind?145017_))))
    (define gx#core-bind-root-syntax!
      (lambda _g152147_
        (let ((_g152146_ (##length _g152147_)))
          (cond ((##fx= _g152146_ 2)
                 (apply (lambda (_id145014_ _e145015_)
                          (gx#core-bind-root-syntax!__0 _id145014_ _e145015_))
                        _g152147_))
                ((##fx= _g152146_ 3)
                 (apply (lambda (_id145019_ _e145020_ _rebind?145021_)
                          (gx#core-bind-root-syntax!__%
                           _id145019_
                           _e145020_
                           _rebind?145021_))
                        _g152147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g152147_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id144965_
               _alias-id144966_
               _rebind?144967_
               _phi144968_
               _ctx144969_)
        (gx#bind-identifier!__%
         _id144965_
         (let ((_key144971_ (gx#core-identifier-key _id144965_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key144971_ '#t _phi144968_ _ctx144969_)
            _key144971_
            _phi144968_
            _alias-id144966_))
         _rebind?144967_
         _phi144968_
         _ctx144969_)))
    (define gx#core-bind-alias!__0
      (lambda (_id144976_ _alias-id144977_)
        (let* ((_rebind?144979_ '#f)
               (_phi144981_ (gx#current-expander-phi))
               (_ctx144983_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144976_
           _alias-id144977_
           _rebind?144979_
           _phi144981_
           _ctx144983_))))
    (define gx#core-bind-alias!__1
      (lambda (_id144985_ _alias-id144986_ _rebind?144987_)
        (let* ((_phi144989_ (gx#current-expander-phi))
               (_ctx144991_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144985_
           _alias-id144986_
           _rebind?144987_
           _phi144989_
           _ctx144991_))))
    (define gx#core-bind-alias!__2
      (lambda (_id144993_ _alias-id144994_ _rebind?144995_ _phi144996_)
        (let ((_ctx144998_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id144993_
           _alias-id144994_
           _rebind?144995_
           _phi144996_
           _ctx144998_))))
    (define gx#core-bind-alias!
      (lambda _g152149_
        (let ((_g152148_ (##length _g152149_)))
          (cond ((##fx= _g152148_ 2)
                 (apply (lambda (_id144976_ _alias-id144977_)
                          (gx#core-bind-alias!__0 _id144976_ _alias-id144977_))
                        _g152149_))
                ((##fx= _g152148_ 3)
                 (apply (lambda (_id144985_ _alias-id144986_ _rebind?144987_)
                          (gx#core-bind-alias!__1
                           _id144985_
                           _alias-id144986_
                           _rebind?144987_))
                        _g152149_))
                ((##fx= _g152148_ 4)
                 (apply (lambda (_id144993_
                                 _alias-id144994_
                                 _rebind?144995_
                                 _phi144996_)
                          (gx#core-bind-alias!__2
                           _id144993_
                           _alias-id144994_
                           _rebind?144995_
                           _phi144996_))
                        _g152149_))
                ((##fx= _g152148_ 5)
                 (apply (lambda (_id145000_
                                 _alias-id145001_
                                 _rebind?145002_
                                 _phi145003_
                                 _ctx145004_)
                          (gx#core-bind-alias!__%
                           _id145000_
                           _alias-id145001_
                           _rebind?145002_
                           _phi145003_
                           _ctx145004_))
                        _g152149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g152149_))))))
    (define gx#make-binding-id__%
      (lambda (_key144922_ _syntax?144923_ _phi144924_ _ctx144925_)
        (if (uninterned-symbol? _key144922_)
            (gensym 'L)
            (if (pair? _key144922_)
                (gensym (car _key144922_))
                (if (##structure-instance-of? _ctx144925_ 'gx#top-context::t)
                    (let ((_ns144927_
                           (gx#core-context-namespace__% _ctx144925_)))
                      (if (and (fxzero? _phi144924_) (not _syntax?144923_))
                          (if _ns144927_
                              (make-symbol__1 _ns144927_ '"#" _key144922_)
                              _key144922_)
                          (if _syntax?144923_
                              (make-symbol__1
                               (let ((_$e144929_ _ns144927_))
                                 (if _$e144929_ _$e144929_ '""))
                               '"[:"
                               (number->string _phi144924_)
                               '":]#"
                               _key144922_)
                              (make-symbol__1
                               (let ((_$e144932_ _ns144927_))
                                 (if _$e144932_ _$e144932_ '""))
                               '"["
                               (number->string _phi144924_)
                               '"]#"
                               _key144922_))))
                    (gensym _key144922_))))))
    (define gx#make-binding-id__0
      (lambda (_key144938_)
        (let* ((_syntax?144940_ '#f)
               (_phi144942_ (gx#current-expander-phi))
               (_ctx144944_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144938_
           _syntax?144940_
           _phi144942_
           _ctx144944_))))
    (define gx#make-binding-id__1
      (lambda (_key144946_ _syntax?144947_)
        (let* ((_phi144949_ (gx#current-expander-phi))
               (_ctx144951_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144946_
           _syntax?144947_
           _phi144949_
           _ctx144951_))))
    (define gx#make-binding-id__2
      (lambda (_key144953_ _syntax?144954_ _phi144955_)
        (let ((_ctx144957_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key144953_
           _syntax?144954_
           _phi144955_
           _ctx144957_))))
    (define gx#make-binding-id
      (lambda _g152151_
        (let ((_g152150_ (##length _g152151_)))
          (cond ((##fx= _g152150_ 1)
                 (apply (lambda (_key144938_)
                          (gx#make-binding-id__0 _key144938_))
                        _g152151_))
                ((##fx= _g152150_ 2)
                 (apply (lambda (_key144946_ _syntax?144947_)
                          (gx#make-binding-id__1 _key144946_ _syntax?144947_))
                        _g152151_))
                ((##fx= _g152150_ 3)
                 (apply (lambda (_key144953_ _syntax?144954_ _phi144955_)
                          (gx#make-binding-id__2
                           _key144953_
                           _syntax?144954_
                           _phi144955_))
                        _g152151_))
                ((##fx= _g152150_ 4)
                 (apply (lambda (_key144959_
                                 _syntax?144960_
                                 _phi144961_
                                 _ctx144962_)
                          (gx#make-binding-id__%
                           _key144959_
                           _syntax?144960_
                           _phi144961_
                           _ctx144962_))
                        _g152151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g152151_))))))))
