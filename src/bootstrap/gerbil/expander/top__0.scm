(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709125255)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89690_)
        (letrec ((_expand-special89692_
                  (lambda (_hd89694_ _K89695_ _rest89696_ _r89697_)
                    (_K89695_
                     _rest89696_
                     (cons (gx#core-expand-top _hd89694_) _r89697_)))))
          (gx#core-expand-block__0 _stx89690_ _expand-special89692_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89443_)
        (letrec ((_expand-special89445_
                  (lambda (_hd89565_ _K89566_ _rest89567_ _r89568_)
                    (let* ((_K89572_
                            (lambda (_e89570_)
                              (_K89566_ _rest89567_ (cons _e89570_ _r89568_))))
                           (_e8957389602_ _hd89565_)
                           (_E8959789606_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8957389602_)))
                           (_E8959389618_
                            (lambda ()
                              (if (gx#stx-pair? _e8957389602_)
                                  (let ((_e8959889610_
                                         (gx#syntax-e _e8957389602_)))
                                    (let ((_hd8959989613_
                                           (##car _e8959889610_))
                                          (_tl8960089615_
                                           (##cdr _e8959889610_)))
                                      (if (and (gx#identifier? _hd8959989613_)
                                               (gx#core-identifier=?
                                                _hd8959989613_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89572_
                                               (gx#core-expand-define-runtime%
                                                _hd89565_))
                                              (_E8959789606_))
                                          (_E8959789606_))))
                                  (_E8959789606_))))
                           (_E8958989630_
                            (lambda ()
                              (if (gx#stx-pair? _e8957389602_)
                                  (let ((_e8959489622_
                                         (gx#syntax-e _e8957389602_)))
                                    (let ((_hd8959589625_
                                           (##car _e8959489622_))
                                          (_tl8959689627_
                                           (##cdr _e8959489622_)))
                                      (if (and (gx#identifier? _hd8959589625_)
                                               (gx#core-identifier=?
                                                _hd8959589625_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89572_
                                               (gx#core-expand-define-alias%
                                                _hd89565_))
                                              (_E8959389618_))
                                          (_E8959389618_))))
                                  (_E8959389618_))))
                           (_E8957989642_
                            (lambda ()
                              (if (gx#stx-pair? _e8957389602_)
                                  (let ((_e8959089634_
                                         (gx#syntax-e _e8957389602_)))
                                    (let ((_hd8959189637_
                                           (##car _e8959089634_))
                                          (_tl8959289639_
                                           (##cdr _e8959089634_)))
                                      (if (and (gx#identifier? _hd8959189637_)
                                               (gx#core-identifier=?
                                                _hd8959189637_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89572_
                                               (gx#core-expand-define-syntax%
                                                _hd89565_))
                                              (_E8958989630_))
                                          (_E8958989630_))))
                                  (_E8958989630_))))
                           (_E8957589674_
                            (lambda ()
                              (if (gx#stx-pair? _e8957389602_)
                                  (let ((_e8958089646_
                                         (gx#syntax-e _e8957389602_)))
                                    (let ((_hd8958189649_
                                           (##car _e8958089646_))
                                          (_tl8958289651_
                                           (##cdr _e8958089646_)))
                                      (if (and (gx#identifier? _hd8958189649_)
                                               (gx#core-identifier=?
                                                _hd8958189649_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8958289651_)
                                              (let ((_e8958389654_
                                                     (gx#syntax-e
                                                      _tl8958289651_)))
                                                (let ((_hd8958489657_
                                                       (##car _e8958389654_))
                                                      (_tl8958589659_
                                                       (##cdr _e8958389654_)))
                                                  (let ((_hd-bind89662_
                                                         _hd8958489657_))
                                                    (if (gx#stx-pair?
                                                         _tl8958589659_)
                                                        (let ((_e8958689664_
                                                               (gx#syntax-e
                                                                _tl8958589659_)))
                                                          (let ((_hd8958789667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8958689664_))
                        (_tl8958889669_ (##cdr _e8958689664_)))
                    (let ((_expr89672_ _hd8958789667_))
                      (if (gx#stx-null? _tl8958889669_)
                          (if (gx#core-bind-values? _hd-bind89662_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89662_)
                                (_K89572_ _hd89565_))
                              (_E8957989642_))
                          (_E8957989642_)))))
                (_E8957989642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8957989642_))
                                          (_E8957989642_))))
                                  (_E8957989642_))))
                           (_E8957489686_
                            (lambda ()
                              (if (gx#stx-pair? _e8957389602_)
                                  (let ((_e8957689678_
                                         (gx#syntax-e _e8957389602_)))
                                    (let ((_hd8957789681_
                                           (##car _e8957689678_))
                                          (_tl8957889683_
                                           (##cdr _e8957689678_)))
                                      (if (and (gx#identifier? _hd8957789681_)
                                               (gx#core-identifier=?
                                                _hd8957789681_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89572_
                                               (gx#core-expand-begin-syntax%
                                                _hd89565_))
                                              (_E8957589674_))
                                          (_E8957589674_))))
                                  (_E8957589674_)))))
                      (_E8957489686_))))
                 (_eval-body89446_
                  (lambda (_rbody89454_)
                    (let _lp89456_ ((_rest89458_ _rbody89454_)
                                    (_body89459_ '())
                                    (_ebody89460_ '()))
                      (let* ((_rest8946189469_ _rest89458_)
                             (_else8946389477_
                              (lambda ()
                                (values _body89459_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89460_)
                                          (gx#stx-source _stx89443_))))))
                             (_K8946589553_
                              (lambda (_rest89480_ _hd89481_)
                                (let* ((_e8948289499_ _hd89481_)
                                       (_E8949489503_
                                        (lambda ()
                                          (_lp89456_
                                           _rest89480_
                                           (cons _hd89481_ _body89459_)
                                           (cons _hd89481_ _ebody89460_))))
                                       (_E8948489515_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8948289499_)
                                              (let ((_e8949589507_
                                                     (gx#syntax-e
                                                      _e8948289499_)))
                                                (let ((_hd8949689510_
                                                       (##car _e8949589507_))
                                                      (_tl8949789512_
                                                       (##cdr _e8949589507_)))
                                                  (if (and (gx#identifier?
                                                            _hd8949689510_)
                                                           (gx#core-identifier=?
                                                            _hd8949689510_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89456_
                                                           _rest89480_
                                                           (cons _hd89481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89459_)
                   _ebody89460_)
                  (_E8949489503_))
              (_E8949489503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8949489503_))))
                                       (_E8948389549_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8948289499_)
                                              (let ((_e8948589519_
                                                     (gx#syntax-e
                                                      _e8948289499_)))
                                                (let ((_hd8948689522_
                                                       (##car _e8948589519_))
                                                      (_tl8948789524_
                                                       (##cdr _e8948589519_)))
                                                  (if (and (gx#identifier?
                                                            _hd8948689522_)
                                                           (gx#core-identifier=?
                                                            _hd8948689522_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8948789524_)
                                                          (let ((_e8948889527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8948789524_)))
                    (let ((_hd8948989530_ (##car _e8948889527_))
                          (_tl8949089532_ (##cdr _e8948889527_)))
                      (let ((_hd-bind89535_ _hd8948989530_))
                        (if (gx#stx-pair? _tl8949089532_)
                            (let ((_e8949189537_ (gx#syntax-e _tl8949089532_)))
                              (let ((_hd8949289540_ (##car _e8949189537_))
                                    (_tl8949389542_ (##cdr _e8949189537_)))
                                (let ((_expr89545_ _hd8949289540_))
                                  (if (gx#stx-null? _tl8949389542_)
                                      (if '#t
                                          (let ((_ehd89547_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89535_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89545_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89481_))))
                                            (_lp89456_
                                             _rest89480_
                                             (cons _ehd89547_ _body89459_)
                                             (cons _ehd89547_ _ebody89460_)))
                                          (_E8948489515_))
                                      (_E8948489515_)))))
                            (_E8948489515_)))))
                  (_E8948489515_))
              (_E8948489515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8948489515_)))))
                                  (_E8948389549_)))))
                        (if (##pair? _rest8946189469_)
                            (let ((_hd8946689556_ (##car _rest8946189469_))
                                  (_tl8946789558_ (##cdr _rest8946189469_)))
                              (let* ((_hd89561_ _hd8946689556_)
                                     (_rest89563_ _tl8946789558_))
                                (_K8946589553_ _rest89563_ _hd89561_)))
                            (_else8946389477_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89449_
                     (gx#core-expand-block__1
                      _stx89443_
                      _expand-special89445_
                      '#f))
                    (_g89713_ (_eval-body89446_ _rbody89449_)))
               (begin
                 (let ((_g89714_
                        (if (##values? _g89713_)
                            (##vector-length _g89713_)
                            1)))
                   (if (not (##fx= _g89714_ 2))
                       (error "Context expects 2 values" _g89714_)))
                 (let ((_expanded-body89451_ (##vector-ref _g89713_ 0))
                       (_value89452_ (##vector-ref _g89713_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89451_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89452_ '())))
                    (gx#stx-source _stx89443_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89413_)
        (let* ((_e8941489421_ _stx89413_)
               (_E8941689425_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8941489421_)))
               (_E8941589439_
                (lambda ()
                  (if (gx#stx-pair? _e8941489421_)
                      (let ((_e8941789429_ (gx#syntax-e _e8941489421_)))
                        (let ((_hd8941889432_ (##car _e8941789429_))
                              (_tl8941989434_ (##cdr _e8941789429_)))
                          (let ((_body89437_ _tl8941989434_))
                            (if (gx#stx-list? _body89437_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89437_)
                                 (gx#stx-source _stx89413_))
                                (_E8941689425_)))))
                      (_E8941689425_)))))
          (_E8941589439_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89411_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89411_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx89357_)
        (let* ((_e8935889371_ _stx89357_)
               (_E8936089375_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8935889371_)))
               (_E8935989407_
                (lambda ()
                  (if (gx#stx-pair? _e8935889371_)
                      (let ((_e8936189379_ (gx#syntax-e _e8935889371_)))
                        (let ((_hd8936289382_ (##car _e8936189379_))
                              (_tl8936389384_ (##cdr _e8936189379_)))
                          (if (gx#stx-pair? _tl8936389384_)
                              (let ((_e8936489387_
                                     (gx#syntax-e _tl8936389384_)))
                                (let ((_hd8936589390_ (##car _e8936489387_))
                                      (_tl8936689392_ (##cdr _e8936489387_)))
                                  (let ((_ann89395_ _hd8936589390_))
                                    (if (gx#stx-pair? _tl8936689392_)
                                        (let ((_e8936789397_
                                               (gx#syntax-e _tl8936689392_)))
                                          (let ((_hd8936889400_
                                                 (##car _e8936789397_))
                                                (_tl8936989402_
                                                 (##cdr _e8936789397_)))
                                            (let ((_expr89405_ _hd8936889400_))
                                              (if (gx#stx-null? _tl8936989402_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann89395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr89405_) '())))
               (gx#stx-source _stx89357_))
              (_E8936089375_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8936089375_)))))
                                        (_E8936089375_)))))
                              (_E8936089375_))))
                      (_E8936089375_)))))
          (_E8935989407_))))
    (define gx#core-expand-local-block
      (lambda (_stx89081_ _body89082_)
        (letrec ((_expand-special89084_
                  (lambda (_hd89352_ _K89353_ _rest89354_ _r89355_)
                    (_K89353_
                     '()
                     (cons (_expand-internal89085_ _hd89352_ _rest89354_)
                           _r89355_))))
                 (_expand-internal89085_
                  (lambda (_hd89348_ _rest89349_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal89087_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd89348_ _rest89349_))
                          (gx#stx-source _stx89081_))
                         _expand-internal-special89086_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89707
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89707)
                       __obj89707))))
                 (_expand-internal-special89086_
                  (lambda (_hd89243_ _K89244_ _rest89245_ _r89246_)
                    (let* ((_e8924789272_ _hd89243_)
                           (_E8926789276_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8924789272_)))
                           (_E8926389288_
                            (lambda ()
                              (if (gx#stx-pair? _e8924789272_)
                                  (let ((_e8926889280_
                                         (gx#syntax-e _e8924789272_)))
                                    (let ((_hd8926989283_
                                           (##car _e8926889280_))
                                          (_tl8927089285_
                                           (##cdr _e8926889280_)))
                                      (if (and (gx#identifier? _hd8926989283_)
                                               (gx#core-identifier=?
                                                _hd8926989283_
                                                '%#declare))
                                          (if '#t
                                              (_K89244_
                                               _rest89245_
                                               (cons (gx#core-expand-declare%
                                                      _hd89243_)
                                                     _r89246_))
                                              (_E8926789276_))
                                          (_E8926789276_))))
                                  (_E8926789276_))))
                           (_E8925989300_
                            (lambda ()
                              (if (gx#stx-pair? _e8924789272_)
                                  (let ((_e8926489292_
                                         (gx#syntax-e _e8924789272_)))
                                    (let ((_hd8926589295_
                                           (##car _e8926489292_))
                                          (_tl8926689297_
                                           (##cdr _e8926489292_)))
                                      (if (and (gx#identifier? _hd8926589295_)
                                               (gx#core-identifier=?
                                                _hd8926589295_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd89243_)
                                                (_K89244_
                                                 _rest89245_
                                                 _r89246_))
                                              (_E8926389288_))
                                          (_E8926389288_))))
                                  (_E8926389288_))))
                           (_E8924989312_
                            (lambda ()
                              (if (gx#stx-pair? _e8924789272_)
                                  (let ((_e8926089304_
                                         (gx#syntax-e _e8924789272_)))
                                    (let ((_hd8926189307_
                                           (##car _e8926089304_))
                                          (_tl8926289309_
                                           (##cdr _e8926089304_)))
                                      (if (and (gx#identifier? _hd8926189307_)
                                               (gx#core-identifier=?
                                                _hd8926189307_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd89243_)
                                                (_K89244_
                                                 _rest89245_
                                                 _r89246_))
                                              (_E8925989300_))
                                          (_E8925989300_))))
                                  (_E8925989300_))))
                           (_E8924889344_
                            (lambda ()
                              (if (gx#stx-pair? _e8924789272_)
                                  (let ((_e8925089316_
                                         (gx#syntax-e _e8924789272_)))
                                    (let ((_hd8925189319_
                                           (##car _e8925089316_))
                                          (_tl8925289321_
                                           (##cdr _e8925089316_)))
                                      (if (and (gx#identifier? _hd8925189319_)
                                               (gx#core-identifier=?
                                                _hd8925189319_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8925289321_)
                                              (let ((_e8925389324_
                                                     (gx#syntax-e
                                                      _tl8925289321_)))
                                                (let ((_hd8925489327_
                                                       (##car _e8925389324_))
                                                      (_tl8925589329_
                                                       (##cdr _e8925389324_)))
                                                  (let ((_hd-bind89332_
                                                         _hd8925489327_))
                                                    (if (gx#stx-pair?
                                                         _tl8925589329_)
                                                        (let ((_e8925689334_
                                                               (gx#syntax-e
                                                                _tl8925589329_)))
                                                          (let ((_hd8925789337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8925689334_))
                        (_tl8925889339_ (##cdr _e8925689334_)))
                    (let ((_expr89342_ _hd8925789337_))
                      (if (gx#stx-null? _tl8925889339_)
                          (if (gx#core-bind-values? _hd-bind89332_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89332_)
                                (_K89244_
                                 _rest89245_
                                 (cons _hd89243_ _r89246_)))
                              (_E8924989312_))
                          (_E8924989312_)))))
                (_E8924989312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8924989312_))
                                          (_E8924989312_))))
                                  (_E8924989312_)))))
                      (_E8924889344_))))
                 (_wrap-internal89087_
                  (lambda (_rbody89089_)
                    (let _lp89091_ ((_rest89093_ _rbody89089_)
                                    (_decls89094_ '())
                                    (_bind89095_ '())
                                    (_body89096_ '()))
                      (let* ((_e8909789104_ _rest89093_)
                             (_E8909989153_
                              (lambda ()
                                (let* ((_body89148_
                                        (let* ((_body8910789117_ _body89096_)
                                               (_else8911089125_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89096_)
                                                   (gx#stx-source
                                                    _stx89081_)))))
                                          (let ((_K8911589145_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx89081_)))
                                                (_K8911289131_
                                                 (lambda (_expr89129_)
                                                   _expr89129_)))
                                            (let ((_try-match8910989141_
                                                   (lambda ()
                                                     (if (##pair? _body8910789117_)
                                                         (let ((_tl8911489136_
                                                                (##cdr _body8910789117_))
                                                               (_hd8911389134_
                                                                (##car _body8910789117_)))
                                                           (if (##null? _tl8911489136_)
                                                               (let ((_expr89139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8911389134_))
                         (_K8911289131_ _expr89139_))
                       (_else8911089125_)))
                 (_else8911089125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8910789117_)
                                                  (_K8911589145_)
                                                  (_try-match8910989141_))))))
                                       (_body89150_
                                        (if (null? _bind89095_)
                                            _body89148_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind89095_
                                                         (cons _body89148_
                                                               '())))
                                             (gx#stx-source _stx89081_)))))
                                  (if (null? _decls89094_)
                                      _body89150_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls89094_
                                                   (cons _body89150_ '())))
                                       (gx#stx-source _stx89081_))))))
                             (_E8909889239_
                              (lambda ()
                                (if (gx#stx-pair? _e8909789104_)
                                    (let ((_e8910089157_
                                           (gx#syntax-e _e8909789104_)))
                                      (let ((_hd8910189160_
                                             (##car _e8910089157_))
                                            (_tl8910289162_
                                             (##cdr _e8910089157_)))
                                        (let* ((_hd89165_ _hd8910189160_)
                                               (_rest89167_ _tl8910289162_))
                                          (if '#t
                                              (let* ((_e8916889185_ _hd89165_)
                                                     (_E8918089189_
                                                      (lambda ()
                                                        (if (null? _bind89095_)
                                                            (_lp89091_
                                                             _rest89167_
                                                             _decls89094_
                                                             _bind89095_
                                                             (cons _hd89165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body89096_))
                    (_lp89091_
                     _rest89167_
                     _decls89094_
                     (cons (cons '#f (cons _hd89165_ '())) _bind89095_)
                     _body89096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8917089203_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8916889185_)
                                                            (let ((_e8918189193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8916889185_)))
                      (let ((_hd8918289196_ (##car _e8918189193_))
                            (_tl8918389198_ (##cdr _e8918189193_)))
                        (if (and (gx#identifier? _hd8918289196_)
                                 (gx#core-identifier=?
                                  _hd8918289196_
                                  '%#declare))
                            (let ((_xdecls89201_ _tl8918389198_))
                              (if '#t
                                  (_lp89091_
                                   _rest89167_
                                   (gx#stx-foldr
                                    cons
                                    _decls89094_
                                    _xdecls89201_)
                                   _bind89095_
                                   _body89096_)
                                  (_E8918089189_)))
                            (_E8918089189_))))
                    (_E8918089189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8916989235_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8916889185_)
                                                            (let ((_e8917189207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8916889185_)))
                      (let ((_hd8917289210_ (##car _e8917189207_))
                            (_tl8917389212_ (##cdr _e8917189207_)))
                        (if (and (gx#identifier? _hd8917289210_)
                                 (gx#core-identifier=?
                                  _hd8917289210_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8917389212_)
                                (let ((_e8917489215_
                                       (gx#syntax-e _tl8917389212_)))
                                  (let ((_hd8917589218_ (##car _e8917489215_))
                                        (_tl8917689220_ (##cdr _e8917489215_)))
                                    (let ((_hd-bind89223_ _hd8917589218_))
                                      (if (gx#stx-pair? _tl8917689220_)
                                          (let ((_e8917789225_
                                                 (gx#syntax-e _tl8917689220_)))
                                            (let ((_hd8917889228_
                                                   (##car _e8917789225_))
                                                  (_tl8917989230_
                                                   (##cdr _e8917789225_)))
                                              (let ((_expr89233_
                                                     _hd8917889228_))
                                                (if (gx#stx-null?
                                                     _tl8917989230_)
                                                    (if '#t
                                                        (_lp89091_
                                                         _rest89167_
                                                         _decls89094_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind89223_)
                             (cons (gx#core-expand-expression _expr89233_)
                                   '()))
                       _bind89095_)
                 _body89096_)
                (_E8917089203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8917089203_)))))
                                          (_E8917089203_)))))
                                (_E8917089203_))
                            (_E8917089203_))))
                    (_E8917089203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8916989235_))
                                              (_E8909989153_)))))
                                    (_E8909989153_)))))
                        (_E8909889239_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body89082_)
            (gx#stx-source _stx89081_))
           _expand-special89084_))))
    (define gx#core-expand-declare%
      (lambda (_stx89019_)
        (let* ((_e8902089027_ _stx89019_)
               (_E8902289031_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8902089027_)))
               (_E8902189077_
                (lambda ()
                  (if (gx#stx-pair? _e8902089027_)
                      (let ((_e8902389035_ (gx#syntax-e _e8902089027_)))
                        (let ((_hd8902489038_ (##car _e8902389035_))
                              (_tl8902589040_ (##cdr _e8902389035_)))
                          (let ((_body89043_ _tl8902589040_))
                            (if (gx#stx-list? _body89043_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89045_)
                                     (let* ((_e8904689053_ _decl89045_)
                                            (_E8904889057_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8904689053_)))
                                            (_E8904789073_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8904689053_)
                                                   (let ((_e8904989061_
                                                          (gx#syntax-e
                                                           _e8904689053_)))
                                                     (let ((_hd8905089064_
                                                            (##car _e8904989061_))
                                                           (_tl8905189066_
                                                            (##cdr _e8904989061_)))
                                                       (let* ((_head89069_
                                                               _hd8905089064_)
                                                              (_args89071_
                                                               _tl8905189066_))
                                                         (if (gx#stx-list?
                                                              _args89071_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89045_)
                                                             (_E8904889057_)))))
                                                   (_E8904889057_)))))
                                       (_E8904789073_)))
                                   _body89043_))
                                 (gx#stx-source _stx89019_))
                                (_E8902289031_)))))
                      (_E8902289031_)))))
          (_E8902189077_))))
    (define gx#core-expand-extern%
      (lambda (_stx88923_)
        (let* ((_e8892488931_ _stx88923_)
               (_E8892688935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8892488931_)))
               (_E8892589015_
                (lambda ()
                  (if (gx#stx-pair? _e8892488931_)
                      (let ((_e8892788939_ (gx#syntax-e _e8892488931_)))
                        (let ((_hd8892888942_ (##car _e8892788939_))
                              (_tl8892988944_ (##cdr _e8892788939_)))
                          (let ((_body88947_ _tl8892988944_))
                            (if '#t
                                (let _lp88949_ ((_rest88951_ _body88947_)
                                                (_r88952_ '()))
                                  (let* ((_e8895388967_ _rest88951_)
                                         (_E8896588971_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88923_)))
                                         (_E8895588975_
                                          (lambda ()
                                            (if (gx#stx-null? _e8895388967_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88952_))
                                                     (gx#stx-source
                                                      _stx88923_))
                                                    (_E8896588971_))
                                                (_E8896588971_))))
                                         (_E8895489011_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8895388967_)
                                                (let ((_e8895688979_
                                                       (gx#syntax-e
                                                        _e8895388967_)))
                                                  (let ((_hd8895788982_
                                                         (##car _e8895688979_))
                                                        (_tl8895888984_
                                                         (##cdr _e8895688979_)))
                                                    (if (gx#stx-pair?
                                                         _hd8895788982_)
                                                        (let ((_e8895988987_
                                                               (gx#syntax-e
                                                                _hd8895788982_)))
                                                          (let ((_hd8896088990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8895988987_))
                        (_tl8896188992_ (##cdr _e8895988987_)))
                    (let ((_id88995_ _hd8896088990_))
                      (if (gx#stx-pair? _tl8896188992_)
                          (let ((_e8896288997_ (gx#syntax-e _tl8896188992_)))
                            (let ((_hd8896389000_ (##car _e8896288997_))
                                  (_tl8896489002_ (##cdr _e8896288997_)))
                              (let ((_eid89005_ _hd8896389000_))
                                (if (gx#stx-null? _tl8896489002_)
                                    (let ((_rest89007_ _tl8895888984_))
                                      (if (and (gx#identifier? _id88995_)
                                               (gx#identifier? _eid89005_))
                                          (let ((_eid89009_
                                                 (gx#stx-e _eid89005_)))
                                            (gx#core-bind-extern!__0
                                             _id88995_
                                             _eid89009_)
                                            (_lp88949_
                                             _rest89007_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id88995_)
                                                         (cons _eid89009_ '()))
                                                   _r88952_)))
                                          (_E8895588975_)))
                                    (_E8895588975_)))))
                          (_E8895588975_)))))
                (_E8895588975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8895588975_)))))
                                    (_E8895489011_)))
                                (_E8892688935_)))))
                      (_E8892688935_)))))
          (_E8892589015_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88869_)
        (let* ((_e8887088883_ _stx88869_)
               (_E8887288887_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8887088883_)))
               (_E8887188919_
                (lambda ()
                  (if (gx#stx-pair? _e8887088883_)
                      (let ((_e8887388891_ (gx#syntax-e _e8887088883_)))
                        (let ((_hd8887488894_ (##car _e8887388891_))
                              (_tl8887588896_ (##cdr _e8887388891_)))
                          (if (gx#stx-pair? _tl8887588896_)
                              (let ((_e8887688899_
                                     (gx#syntax-e _tl8887588896_)))
                                (let ((_hd8887788902_ (##car _e8887688899_))
                                      (_tl8887888904_ (##cdr _e8887688899_)))
                                  (let ((_hd88907_ _hd8887788902_))
                                    (if (gx#stx-pair? _tl8887888904_)
                                        (let ((_e8887988909_
                                               (gx#syntax-e _tl8887888904_)))
                                          (let ((_hd8888088912_
                                                 (##car _e8887988909_))
                                                (_tl8888188914_
                                                 (##cdr _e8887988909_)))
                                            (let ((_expr88917_ _hd8888088912_))
                                              (if (gx#stx-null? _tl8888188914_)
                                                  (if (gx#core-bind-values?
                                                       _hd88907_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88907_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88907_)
                             (cons (gx#core-expand-expression _expr88917_)
                                   '())))
                 (gx#stx-source _stx88869_)))
              (_E8887288887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8887288887_)))))
                                        (_E8887288887_)))))
                              (_E8887288887_))))
                      (_E8887288887_)))))
          (_E8887188919_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88813_)
        (let* ((_e8881488827_ _stx88813_)
               (_E8881688831_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8881488827_)))
               (_E8881588865_
                (lambda ()
                  (if (gx#stx-pair? _e8881488827_)
                      (let ((_e8881788835_ (gx#syntax-e _e8881488827_)))
                        (let ((_hd8881888838_ (##car _e8881788835_))
                              (_tl8881988840_ (##cdr _e8881788835_)))
                          (if (gx#stx-pair? _tl8881988840_)
                              (let ((_e8882088843_
                                     (gx#syntax-e _tl8881988840_)))
                                (let ((_hd8882188846_ (##car _e8882088843_))
                                      (_tl8882288848_ (##cdr _e8882088843_)))
                                  (let ((_id88851_ _hd8882188846_))
                                    (if (gx#stx-pair? _tl8882288848_)
                                        (let ((_e8882388853_
                                               (gx#syntax-e _tl8882288848_)))
                                          (let ((_hd8882488856_
                                                 (##car _e8882388853_))
                                                (_tl8882588858_
                                                 (##cdr _e8882388853_)))
                                            (let ((_binding-id88861_
                                                   _hd8882488856_))
                                              (if (gx#stx-null? _tl8882588858_)
                                                  (if (and (gx#identifier?
                                                            _id88851_)
                                                           (gx#identifier?
                                                            _binding-id88861_))
                                                      (let ((_eid88863_
                                                             (gx#stx-e
                                                              _binding-id88861_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88851_
                                                         _eid88863_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88851_)
                             (cons _eid88863_ '())))))
              (_E8881688831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8881688831_)))))
                                        (_E8881688831_)))))
                              (_E8881688831_))))
                      (_E8881688831_)))))
          (_E8881588865_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88756_)
        (let* ((_e8875788770_ _stx88756_)
               (_E8875988774_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8875788770_)))
               (_E8875888809_
                (lambda ()
                  (if (gx#stx-pair? _e8875788770_)
                      (let ((_e8876088778_ (gx#syntax-e _e8875788770_)))
                        (let ((_hd8876188781_ (##car _e8876088778_))
                              (_tl8876288783_ (##cdr _e8876088778_)))
                          (if (gx#stx-pair? _tl8876288783_)
                              (let ((_e8876388786_
                                     (gx#syntax-e _tl8876288783_)))
                                (let ((_hd8876488789_ (##car _e8876388786_))
                                      (_tl8876588791_ (##cdr _e8876388786_)))
                                  (let ((_id88794_ _hd8876488789_))
                                    (if (gx#stx-pair? _tl8876588791_)
                                        (let ((_e8876688796_
                                               (gx#syntax-e _tl8876588791_)))
                                          (let ((_hd8876788799_
                                                 (##car _e8876688796_))
                                                (_tl8876888801_
                                                 (##cdr _e8876688796_)))
                                            (let ((_expr88804_ _hd8876788799_))
                                              (if (gx#stx-null? _tl8876888801_)
                                                  (if (gx#identifier?
                                                       _id88794_)
                                                      (let ((_g89715_
                                                             (gx#core-expand-expression+1
                                                              _expr88804_)))
                                                        (begin
                                                          (let ((_g89716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89715_)
                             (##vector-length _g89715_)
                             1)))
                    (if (not (##fx= _g89716_ 2))
                        (error "Context expects 2 values" _g89716_)))
                  (let ((_e-stx88806_ (##vector-ref _g89715_ 0))
                        (_e88807_ (##vector-ref _g89715_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88794_ _e88807_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88794_)
                                   (cons _e-stx88806_ '())))
                       (gx#stx-source _stx88756_))))))
              (_E8875988774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8875988774_)))))
                                        (_E8875988774_)))))
                              (_E8875988774_))))
                      (_E8875988774_)))))
          (_E8875888809_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88700_)
        (let* ((_e8870188714_ _stx88700_)
               (_E8870388718_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8870188714_)))
               (_E8870288752_
                (lambda ()
                  (if (gx#stx-pair? _e8870188714_)
                      (let ((_e8870488722_ (gx#syntax-e _e8870188714_)))
                        (let ((_hd8870588725_ (##car _e8870488722_))
                              (_tl8870688727_ (##cdr _e8870488722_)))
                          (if (gx#stx-pair? _tl8870688727_)
                              (let ((_e8870788730_
                                     (gx#syntax-e _tl8870688727_)))
                                (let ((_hd8870888733_ (##car _e8870788730_))
                                      (_tl8870988735_ (##cdr _e8870788730_)))
                                  (let ((_id88738_ _hd8870888733_))
                                    (if (gx#stx-pair? _tl8870988735_)
                                        (let ((_e8871088740_
                                               (gx#syntax-e _tl8870988735_)))
                                          (let ((_hd8871188743_
                                                 (##car _e8871088740_))
                                                (_tl8871288745_
                                                 (##cdr _e8871088740_)))
                                            (let ((_alias-id88748_
                                                   _hd8871188743_))
                                              (if (gx#stx-null? _tl8871288745_)
                                                  (if (and (gx#identifier?
                                                            _id88738_)
                                                           (gx#identifier?
                                                            _alias-id88748_))
                                                      (let ((_alias-id88750_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88748_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88738_
                                                         _alias-id88750_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88738_)
                             (cons _alias-id88750_ '())))))
              (_E8870388718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8870388718_)))))
                                        (_E8870388718_)))))
                              (_E8870388718_))))
                      (_E8870388718_)))))
          (_E8870288752_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88643_ _wrap?88644_)
        (let* ((_e8864588655_ _stx88643_)
               (_E8864788659_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8864588655_)))
               (_E8864688686_
                (lambda ()
                  (if (gx#stx-pair? _e8864588655_)
                      (let ((_e8864888663_ (gx#syntax-e _e8864588655_)))
                        (let ((_hd8864988666_ (##car _e8864888663_))
                              (_tl8865088668_ (##cdr _e8864888663_)))
                          (if (gx#stx-pair? _tl8865088668_)
                              (let ((_e8865188671_
                                     (gx#syntax-e _tl8865088668_)))
                                (let ((_hd8865288674_ (##car _e8865188671_))
                                      (_tl8865388676_ (##cdr _e8865188671_)))
                                  (let* ((_hd88679_ _hd8865288674_)
                                         (_body88681_ _tl8865388676_))
                                    (if (gx#core-bind-values? _hd88679_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88679_)
                                           (let ((_body88684_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88679_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88643_
                                                               _body88681_)
                                                              '()))))
                                             (if _wrap?88644_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88684_)
                                                  (gx#stx-source _stx88643_))
                                                 _body88684_)))
                                         gx#current-expander-context
                                         (let ((__obj89708
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89708)
                                           __obj89708))
                                        (_E8864788659_)))))
                              (_E8864788659_))))
                      (_E8864788659_)))))
          (_E8864688686_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88693_)
        (let ((_wrap?88695_ '#t))
          (gx#core-expand-lambda%__% _stx88693_ _wrap?88695_))))
    (define gx#core-expand-lambda%
      (lambda _g89718_
        (let ((_g89717_ (##length _g89718_)))
          (cond ((##fx= _g89717_ 1)
                 (apply (lambda (_stx88693_)
                          (gx#core-expand-lambda%__0 _stx88693_))
                        _g89718_))
                ((##fx= _g89717_ 2)
                 (apply (lambda (_stx88697_ _wrap?88698_)
                          (gx#core-expand-lambda%__% _stx88697_ _wrap?88698_))
                        _g89718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89718_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88607_)
        (let* ((_e8860888615_ _stx88607_)
               (_E8861088619_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8860888615_)))
               (_E8860988638_
                (lambda ()
                  (if (gx#stx-pair? _e8860888615_)
                      (let ((_e8861188623_ (gx#syntax-e _e8860888615_)))
                        (let ((_hd8861288626_ (##car _e8861188623_))
                              (_tl8861388628_ (##cdr _e8861188623_)))
                          (let ((_clauses88631_ _tl8861388628_))
                            (if (gx#stx-list? _clauses88631_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88633_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88633_)
                                       (let ((_$e88635_
                                              (gx#stx-source _clause88633_)))
                                         (if _$e88635_
                                             _$e88635_
                                             (gx#stx-source _stx88607_))))
                                      '#f))
                                   _clauses88631_))
                                 (gx#stx-source _stx88607_))
                                (_E8861088619_)))))
                      (_E8861088619_)))))
          (_E8860988638_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88561_)
        (let* ((_e8856288572_ _stx88561_)
               (_E8856488576_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8856288572_)))
               (_E8856388603_
                (lambda ()
                  (if (gx#stx-pair? _e8856288572_)
                      (let ((_e8856588580_ (gx#syntax-e _e8856288572_)))
                        (let ((_hd8856688583_ (##car _e8856588580_))
                              (_tl8856788585_ (##cdr _e8856588580_)))
                          (if (gx#stx-pair? _tl8856788585_)
                              (let ((_e8856888588_
                                     (gx#syntax-e _tl8856788585_)))
                                (let ((_hd8856988591_ (##car _e8856888588_))
                                      (_tl8857088593_ (##cdr _e8856888588_)))
                                  (let* ((_hd88596_ _hd8856988591_)
                                         (_body88598_ _tl8857088593_))
                                    (if (gx#core-expand-let-bind? _hd88596_)
                                        (let ((_expressions88600_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88596_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88596_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88596_
                                                           _expressions88600_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88561_
                         _body88598_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88561_)))
                                           gx#current-expander-context
                                           (let ((__obj89709
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89709)
                                             __obj89709)))
                                        (_E8856488576_)))))
                              (_E8856488576_))))
                      (_E8856488576_)))))
          (_E8856388603_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88506_ _form88507_)
        (let* ((_e8850888518_ _stx88506_)
               (_E8851088522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8850888518_)))
               (_E8850988547_
                (lambda ()
                  (if (gx#stx-pair? _e8850888518_)
                      (let ((_e8851188526_ (gx#syntax-e _e8850888518_)))
                        (let ((_hd8851288529_ (##car _e8851188526_))
                              (_tl8851388531_ (##cdr _e8851188526_)))
                          (if (gx#stx-pair? _tl8851388531_)
                              (let ((_e8851488534_
                                     (gx#syntax-e _tl8851388531_)))
                                (let ((_hd8851588537_ (##car _e8851488534_))
                                      (_tl8851688539_ (##cdr _e8851488534_)))
                                  (let* ((_hd88542_ _hd8851588537_)
                                         (_body88544_ _tl8851688539_))
                                    (if (gx#core-expand-let-bind? _hd88542_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88542_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88507_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88542_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88542_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88506_
                                                               _body88544_)
                                                              '())))
                                            (gx#stx-source _stx88506_)))
                                         gx#current-expander-context
                                         (let ((__obj89710
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89710)
                                           __obj89710))
                                        (_E8851088522_)))))
                              (_E8851088522_))))
                      (_E8851088522_)))))
          (_E8850988547_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88554_)
        (let ((_form88556_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88554_ _form88556_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89720_
        (let ((_g89719_ (##length _g89720_)))
          (cond ((##fx= _g89719_ 1)
                 (apply (lambda (_stx88554_)
                          (gx#core-expand-letrec-values%__0 _stx88554_))
                        _g89720_))
                ((##fx= _g89719_ 2)
                 (apply (lambda (_stx88558_ _form88559_)
                          (gx#core-expand-letrec-values%__%
                           _stx88558_
                           _form88559_))
                        _g89720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89720_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88503_)
        (gx#core-expand-letrec-values%__% _stx88503_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88460_)
        (if (gx#stx-list? _stx88460_)
            (gx#stx-andmap
             (lambda (_bind88462_)
               (let* ((_e8846388473_ _bind88462_)
                      (_E8846588477_ (lambda () '#f))
                      (_E8846488499_
                       (lambda ()
                         (if (gx#stx-pair? _e8846388473_)
                             (let ((_e8846688481_ (gx#syntax-e _e8846388473_)))
                               (let ((_hd8846788484_ (##car _e8846688481_))
                                     (_tl8846888486_ (##cdr _e8846688481_)))
                                 (let ((_hd88489_ _hd8846788484_))
                                   (if (gx#stx-pair? _tl8846888486_)
                                       (let ((_e8846988491_
                                              (gx#syntax-e _tl8846888486_)))
                                         (let ((_hd8847088494_
                                                (##car _e8846988491_))
                                               (_tl8847188496_
                                                (##cdr _e8846988491_)))
                                           (if (gx#stx-null? _tl8847188496_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88489_)
                                                   (_E8846588477_))
                                               (_E8846588477_))))
                                       (_E8846588477_)))))
                             (_E8846588477_)))))
                 (_E8846488499_)))
             _stx88460_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88419_)
        (let* ((_e8842088430_ _bind88419_)
               (_E8842288434_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8842088430_)))
               (_E8842188456_
                (lambda ()
                  (if (gx#stx-pair? _e8842088430_)
                      (let ((_e8842388438_ (gx#syntax-e _e8842088430_)))
                        (let ((_hd8842488441_ (##car _e8842388438_))
                              (_tl8842588443_ (##cdr _e8842388438_)))
                          (if (gx#stx-pair? _tl8842588443_)
                              (let ((_e8842688446_
                                     (gx#syntax-e _tl8842588443_)))
                                (let ((_hd8842788449_ (##car _e8842688446_))
                                      (_tl8842888451_ (##cdr _e8842688446_)))
                                  (let ((_expr88454_ _hd8842788449_))
                                    (if (gx#stx-null? _tl8842888451_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88454_)
                                            (_E8842288434_))
                                        (_E8842288434_)))))
                              (_E8842288434_))))
                      (_E8842288434_)))))
          (_E8842188456_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind88378_)
        (let* ((_e8837988389_ _bind88378_)
               (_E8838188393_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8837988389_)))
               (_E8838088415_
                (lambda ()
                  (if (gx#stx-pair? _e8837988389_)
                      (let ((_e8838288397_ (gx#syntax-e _e8837988389_)))
                        (let ((_hd8838388400_ (##car _e8838288397_))
                              (_tl8838488402_ (##cdr _e8838288397_)))
                          (let ((_hd88405_ _hd8838388400_))
                            (if (gx#stx-pair? _tl8838488402_)
                                (let ((_e8838588407_
                                       (gx#syntax-e _tl8838488402_)))
                                  (let ((_hd8838688410_ (##car _e8838588407_))
                                        (_tl8838788412_ (##cdr _e8838588407_)))
                                    (if (gx#stx-null? _tl8838788412_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd88405_)
                                            (_E8838188393_))
                                        (_E8838188393_))))
                                (_E8838188393_)))))
                      (_E8838188393_)))))
          (_E8838088415_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind88336_ _expr88337_)
        (let* ((_e8833888348_ _bind88336_)
               (_E8834088352_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8833888348_)))
               (_E8833988374_
                (lambda ()
                  (if (gx#stx-pair? _e8833888348_)
                      (let ((_e8834188356_ (gx#syntax-e _e8833888348_)))
                        (let ((_hd8834288359_ (##car _e8834188356_))
                              (_tl8834388361_ (##cdr _e8834188356_)))
                          (let ((_hd88364_ _hd8834288359_))
                            (if (gx#stx-pair? _tl8834388361_)
                                (let ((_e8834488366_
                                       (gx#syntax-e _tl8834388361_)))
                                  (let ((_hd8834588369_ (##car _e8834488366_))
                                        (_tl8834688371_ (##cdr _e8834488366_)))
                                    (if (gx#stx-null? _tl8834688371_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd88364_)
                                                  (cons _expr88337_ '()))
                                            (_E8834088352_))
                                        (_E8834088352_))))
                                (_E8834088352_)))))
                      (_E8834088352_)))))
          (_E8833988374_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx88290_)
        (let* ((_e8829188301_ _stx88290_)
               (_E8829388305_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8829188301_)))
               (_E8829288332_
                (lambda ()
                  (if (gx#stx-pair? _e8829188301_)
                      (let ((_e8829488309_ (gx#syntax-e _e8829188301_)))
                        (let ((_hd8829588312_ (##car _e8829488309_))
                              (_tl8829688314_ (##cdr _e8829488309_)))
                          (if (gx#stx-pair? _tl8829688314_)
                              (let ((_e8829788317_
                                     (gx#syntax-e _tl8829688314_)))
                                (let ((_hd8829888320_ (##car _e8829788317_))
                                      (_tl8829988322_ (##cdr _e8829788317_)))
                                  (let* ((_hd88325_ _hd8829888320_)
                                         (_body88327_ _tl8829988322_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88325_)
                                        (let ((_expanders88329_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd88325_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd88325_
                                              _expanders88329_)
                                             (gx#core-expand-local-block
                                              _stx88290_
                                              _body88327_))
                                           gx#current-expander-context
                                           (let ((__obj89711
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89711)
                                             __obj89711)))
                                        (_E8829388305_)))))
                              (_E8829388305_))))
                      (_E8829388305_)))))
          (_E8829288332_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx88239_)
        (let* ((_e8824088250_ _stx88239_)
               (_E8824288254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8824088250_)))
               (_E8824188286_
                (lambda ()
                  (if (gx#stx-pair? _e8824088250_)
                      (let ((_e8824388258_ (gx#syntax-e _e8824088250_)))
                        (let ((_hd8824488261_ (##car _e8824388258_))
                              (_tl8824588263_ (##cdr _e8824388258_)))
                          (if (gx#stx-pair? _tl8824588263_)
                              (let ((_e8824688266_
                                     (gx#syntax-e _tl8824588263_)))
                                (let ((_hd8824788269_ (##car _e8824688266_))
                                      (_tl8824888271_ (##cdr _e8824688266_)))
                                  (let* ((_hd88274_ _hd8824788269_)
                                         (_body88276_ _tl8824888271_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88274_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd88274_
                                            (make-list__%
                                             (gx#stx-length _hd88274_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8827888281_
                                                     _g8827988283_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8827888281_
                                               _g8827988283_
                                               '#t))
                                            _hd88274_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd88274_))
                                           (gx#core-expand-local-block
                                            _stx88239_
                                            _body88276_))
                                         gx#current-expander-context
                                         (let ((__obj89712
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89712)
                                           __obj89712))
                                        (_E8824288254_)))))
                              (_E8824288254_))))
                      (_E8824288254_)))))
          (_E8824188286_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx88196_)
        (if (gx#stx-list? _stx88196_)
            (gx#stx-andmap
             (lambda (_bind88198_)
               (let* ((_e8819988209_ _bind88198_)
                      (_E8820188213_ (lambda () '#f))
                      (_E8820088235_
                       (lambda ()
                         (if (gx#stx-pair? _e8819988209_)
                             (let ((_e8820288217_ (gx#syntax-e _e8819988209_)))
                               (let ((_hd8820388220_ (##car _e8820288217_))
                                     (_tl8820488222_ (##cdr _e8820288217_)))
                                 (let ((_hd88225_ _hd8820388220_))
                                   (if (gx#stx-pair? _tl8820488222_)
                                       (let ((_e8820588227_
                                              (gx#syntax-e _tl8820488222_)))
                                         (let ((_hd8820688230_
                                                (##car _e8820588227_))
                                               (_tl8820788232_
                                                (##cdr _e8820588227_)))
                                           (if (gx#stx-null? _tl8820788232_)
                                               (if '#t
                                                   (gx#identifier? _hd88225_)
                                                   (_E8820188213_))
                                               (_E8820188213_))))
                                       (_E8820188213_)))))
                             (_E8820188213_)))))
                 (_E8820088235_)))
             _stx88196_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind88153_)
        (let* ((_e8815488164_ _bind88153_)
               (_E8815688168_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8815488164_)))
               (_E8815588192_
                (lambda ()
                  (if (gx#stx-pair? _e8815488164_)
                      (let ((_e8815788172_ (gx#syntax-e _e8815488164_)))
                        (let ((_hd8815888175_ (##car _e8815788172_))
                              (_tl8815988177_ (##cdr _e8815788172_)))
                          (if (gx#stx-pair? _tl8815988177_)
                              (let ((_e8816088180_
                                     (gx#syntax-e _tl8815988177_)))
                                (let ((_hd8816188183_ (##car _e8816088180_))
                                      (_tl8816288185_ (##cdr _e8816088180_)))
                                  (let ((_expr88188_ _hd8816188183_))
                                    (if (gx#stx-null? _tl8816288185_)
                                        (if '#t
                                            (let ((_g89721_
                                                   (gx#core-expand-expression+1
                                                    _expr88188_)))
                                              (begin
                                                (let ((_g89722_
                                                       (if (##values? _g89721_)
                                                           (##vector-length
                                                            _g89721_)
                                                           1)))
                                                  (if (not (##fx= _g89722_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89722_)))
                                                (let ((_e88190_
                                                       (##vector-ref
                                                        _g89721_
                                                        1)))
                                                  _e88190_)))
                                            (_E8815688168_))
                                        (_E8815688168_)))))
                              (_E8815688168_))))
                      (_E8815688168_)))))
          (_E8815588192_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind88098_ _e88099_ _rebind?88100_)
        (let* ((_e8810188111_ _bind88098_)
               (_E8810388115_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8810188111_)))
               (_E8810288137_
                (lambda ()
                  (if (gx#stx-pair? _e8810188111_)
                      (let ((_e8810488119_ (gx#syntax-e _e8810188111_)))
                        (let ((_hd8810588122_ (##car _e8810488119_))
                              (_tl8810688124_ (##cdr _e8810488119_)))
                          (let ((_id88127_ _hd8810588122_))
                            (if (gx#stx-pair? _tl8810688124_)
                                (let ((_e8810788129_
                                       (gx#syntax-e _tl8810688124_)))
                                  (let ((_hd8810888132_ (##car _e8810788129_))
                                        (_tl8810988134_ (##cdr _e8810788129_)))
                                    (if (gx#stx-null? _tl8810988134_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id88127_
                                             _e88099_
                                             _rebind?88100_)
                                            (_E8810388115_))
                                        (_E8810388115_))))
                                (_E8810388115_)))))
                      (_E8810388115_)))))
          (_E8810288137_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind88144_ _e88145_)
        (let ((_rebind?88147_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind88144_
           _e88145_
           _rebind?88147_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89724_
        (let ((_g89723_ (##length _g89724_)))
          (cond ((##fx= _g89723_ 2)
                 (apply (lambda (_bind88144_ _e88145_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind88144_
                           _e88145_))
                        _g89724_))
                ((##fx= _g89723_ 3)
                 (apply (lambda (_bind88149_ _e88150_ _rebind?88151_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind88149_
                           _e88150_
                           _rebind?88151_))
                        _g89724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89724_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88056_)
        (let* ((_e8805788067_ _stx88056_)
               (_E8805988071_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8805788067_)))
               (_E8805888093_
                (lambda ()
                  (if (gx#stx-pair? _e8805788067_)
                      (let ((_e8806088075_ (gx#syntax-e _e8805788067_)))
                        (let ((_hd8806188078_ (##car _e8806088075_))
                              (_tl8806288080_ (##cdr _e8806088075_)))
                          (if (gx#stx-pair? _tl8806288080_)
                              (let ((_e8806388083_
                                     (gx#syntax-e _tl8806288080_)))
                                (let ((_hd8806488086_ (##car _e8806388083_))
                                      (_tl8806588088_ (##cdr _e8806388083_)))
                                  (let ((_expr88091_ _hd8806488086_))
                                    (if (gx#stx-null? _tl8806588088_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88091_)
                                            (_E8805988071_))
                                        (_E8805988071_)))))
                              (_E8805988071_))))
                      (_E8805988071_)))))
          (_E8805888093_))))
    (define gx#core-expand-quote%
      (lambda (_stx88015_)
        (let* ((_e8801688026_ _stx88015_)
               (_E8801888030_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8801688026_)))
               (_E8801788052_
                (lambda ()
                  (if (gx#stx-pair? _e8801688026_)
                      (let ((_e8801988034_ (gx#syntax-e _e8801688026_)))
                        (let ((_hd8802088037_ (##car _e8801988034_))
                              (_tl8802188039_ (##cdr _e8801988034_)))
                          (if (gx#stx-pair? _tl8802188039_)
                              (let ((_e8802288042_
                                     (gx#syntax-e _tl8802188039_)))
                                (let ((_hd8802388045_ (##car _e8802288042_))
                                      (_tl8802488047_ (##cdr _e8802288042_)))
                                  (let ((_e88050_ _hd8802388045_))
                                    (if (gx#stx-null? _tl8802488047_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88050_)
                                                         '()))
                                             (gx#stx-source _stx88015_))
                                            (_E8801888030_))
                                        (_E8801888030_)))))
                              (_E8801888030_))))
                      (_E8801888030_)))))
          (_E8801788052_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87974_)
        (let* ((_e8797587985_ _stx87974_)
               (_E8797787989_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8797587985_)))
               (_E8797688011_
                (lambda ()
                  (if (gx#stx-pair? _e8797587985_)
                      (let ((_e8797887993_ (gx#syntax-e _e8797587985_)))
                        (let ((_hd8797987996_ (##car _e8797887993_))
                              (_tl8798087998_ (##cdr _e8797887993_)))
                          (if (gx#stx-pair? _tl8798087998_)
                              (let ((_e8798188001_
                                     (gx#syntax-e _tl8798087998_)))
                                (let ((_hd8798288004_ (##car _e8798188001_))
                                      (_tl8798388006_ (##cdr _e8798188001_)))
                                  (let ((_e88009_ _hd8798288004_))
                                    (if (gx#stx-null? _tl8798388006_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88009_)
                                                         '()))
                                             (gx#stx-source _stx87974_))
                                            (_E8797787989_))
                                        (_E8797787989_)))))
                              (_E8797787989_))))
                      (_E8797787989_)))))
          (_E8797688011_))))
    (define gx#core-expand-call%
      (lambda (_stx87931_)
        (let* ((_e8793287942_ _stx87931_)
               (_E8793487946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8793287942_)))
               (_E8793387970_
                (lambda ()
                  (if (gx#stx-pair? _e8793287942_)
                      (let ((_e8793587950_ (gx#syntax-e _e8793287942_)))
                        (let ((_hd8793687953_ (##car _e8793587950_))
                              (_tl8793787955_ (##cdr _e8793587950_)))
                          (if (gx#stx-pair? _tl8793787955_)
                              (let ((_e8793887958_
                                     (gx#syntax-e _tl8793787955_)))
                                (let ((_hd8793987961_ (##car _e8793887958_))
                                      (_tl8794087963_ (##cdr _e8793887958_)))
                                  (let* ((_rator87966_ _hd8793987961_)
                                         (_args87968_ _tl8794087963_))
                                    (if (gx#stx-list? _args87968_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87966_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87968_))
                                         (gx#stx-source _stx87931_))
                                        (_E8793487946_)))))
                              (_E8793487946_))))
                      (_E8793487946_)))))
          (_E8793387970_))))
    (define gx#core-expand-if%
      (lambda (_stx87864_)
        (let* ((_e8786587881_ _stx87864_)
               (_E8786787885_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8786587881_)))
               (_E8786687927_
                (lambda ()
                  (if (gx#stx-pair? _e8786587881_)
                      (let ((_e8786887889_ (gx#syntax-e _e8786587881_)))
                        (let ((_hd8786987892_ (##car _e8786887889_))
                              (_tl8787087894_ (##cdr _e8786887889_)))
                          (if (gx#stx-pair? _tl8787087894_)
                              (let ((_e8787187897_
                                     (gx#syntax-e _tl8787087894_)))
                                (let ((_hd8787287900_ (##car _e8787187897_))
                                      (_tl8787387902_ (##cdr _e8787187897_)))
                                  (let ((_test87905_ _hd8787287900_))
                                    (if (gx#stx-pair? _tl8787387902_)
                                        (let ((_e8787487907_
                                               (gx#syntax-e _tl8787387902_)))
                                          (let ((_hd8787587910_
                                                 (##car _e8787487907_))
                                                (_tl8787687912_
                                                 (##cdr _e8787487907_)))
                                            (let ((_K87915_ _hd8787587910_))
                                              (if (gx#stx-pair? _tl8787687912_)
                                                  (let ((_e8787787917_
                                                         (gx#syntax-e
                                                          _tl8787687912_)))
                                                    (let ((_hd8787887920_
                                                           (##car _e8787787917_))
                                                          (_tl8787987922_
                                                           (##cdr _e8787787917_)))
                                                      (let ((_E87925_
                                                             _hd8787887920_))
                                                        (if (gx#stx-null?
                                                             _tl8787987922_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87905_)
                                     (cons (gx#core-expand-expression _K87915_)
                                           (cons (gx#core-expand-expression
                                                  _E87925_)
                                                 '()))))
                         (gx#stx-source _stx87864_))
                        (_E8786787885_))
                    (_E8786787885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8786787885_)))))
                                        (_E8786787885_)))))
                              (_E8786787885_))))
                      (_E8786787885_)))))
          (_E8786687927_))))
    (define gx#core-expand-ref%
      (lambda (_stx87823_)
        (let* ((_e8782487834_ _stx87823_)
               (_E8782687838_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8782487834_)))
               (_E8782587860_
                (lambda ()
                  (if (gx#stx-pair? _e8782487834_)
                      (let ((_e8782787842_ (gx#syntax-e _e8782487834_)))
                        (let ((_hd8782887845_ (##car _e8782787842_))
                              (_tl8782987847_ (##cdr _e8782787842_)))
                          (if (gx#stx-pair? _tl8782987847_)
                              (let ((_e8783087850_
                                     (gx#syntax-e _tl8782987847_)))
                                (let ((_hd8783187853_ (##car _e8783087850_))
                                      (_tl8783287855_ (##cdr _e8783087850_)))
                                  (let ((_id87858_ _hd8783187853_))
                                    (if (gx#stx-null? _tl8783287855_)
                                        (if (gx#identifier? _id87858_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87858_
                                                          _stx87823_)
                                                         '()))
                                             (gx#stx-source _stx87823_))
                                            (_E8782687838_))
                                        (_E8782687838_)))))
                              (_E8782687838_))))
                      (_E8782687838_)))))
          (_E8782587860_))))
    (define gx#core-expand-setq%
      (lambda (_stx87769_)
        (let* ((_e8777087783_ _stx87769_)
               (_E8777287787_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8777087783_)))
               (_E8777187819_
                (lambda ()
                  (if (gx#stx-pair? _e8777087783_)
                      (let ((_e8777387791_ (gx#syntax-e _e8777087783_)))
                        (let ((_hd8777487794_ (##car _e8777387791_))
                              (_tl8777587796_ (##cdr _e8777387791_)))
                          (if (gx#stx-pair? _tl8777587796_)
                              (let ((_e8777687799_
                                     (gx#syntax-e _tl8777587796_)))
                                (let ((_hd8777787802_ (##car _e8777687799_))
                                      (_tl8777887804_ (##cdr _e8777687799_)))
                                  (let ((_id87807_ _hd8777787802_))
                                    (if (gx#stx-pair? _tl8777887804_)
                                        (let ((_e8777987809_
                                               (gx#syntax-e _tl8777887804_)))
                                          (let ((_hd8778087812_
                                                 (##car _e8777987809_))
                                                (_tl8778187814_
                                                 (##cdr _e8777987809_)))
                                            (let ((_expr87817_ _hd8778087812_))
                                              (if (gx#stx-null? _tl8778187814_)
                                                  (if (gx#identifier?
                                                       _id87807_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87807_
                            _stx87769_)
                           (cons (gx#core-expand-expression _expr87817_) '())))
               (gx#stx-source _stx87769_))
              (_E8777287787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8777287787_)))))
                                        (_E8777287787_)))))
                              (_E8777287787_))))
                      (_E8777287787_)))))
          (_E8777187819_))))
    (define gx#macro-expand-extern
      (lambda (_stx87617_)
        (letrec ((_generate87619_
                  (lambda (_body87649_)
                    (let _lp87651_ ((_rest87653_ _body87649_)
                                    (_ns87654_ (gx#core-context-namespace__0))
                                    (_r87655_ '()))
                      (let* ((_e8765687671_ _rest87653_)
                             (_E8766987675_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8765687671_)))
                             (_E8766587679_
                              (lambda ()
                                (if (gx#stx-null? _e8765687671_)
                                    (if '#t (reverse _r87655_) (_E8766987675_))
                                    (_E8766987675_))))
                             (_E8765887736_
                              (lambda ()
                                (if (gx#stx-pair? _e8765687671_)
                                    (let ((_e8766687683_
                                           (gx#syntax-e _e8765687671_)))
                                      (let ((_hd8766787686_
                                             (##car _e8766687683_))
                                            (_tl8766887688_
                                             (##cdr _e8766687683_)))
                                        (let* ((_hd87691_ _hd8766787686_)
                                               (_rest87693_ _tl8766887688_))
                                          (if '#t
                                              (if (gx#identifier? _hd87691_)
                                                  (_lp87651_
                                                   _rest87693_
                                                   _ns87654_
                                                   (cons (cons _hd87691_
                                                               (cons (if _ns87654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87691_
                                  _ns87654_
                                  '"#"
                                  _hd87691_)
                                 _hd87691_)
                             '()))
                 _r87655_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8769487704_
                                                          _hd87691_)
                                                         (_E8769687708_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8769487704_)))
                                                         (_E8769587732_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8769487704_)
                        (let ((_e8769787712_ (gx#syntax-e _e8769487704_)))
                          (let ((_hd8769887715_ (##car _e8769787712_))
                                (_tl8769987717_ (##cdr _e8769787712_)))
                            (let ((_id87720_ _hd8769887715_))
                              (if (gx#stx-pair? _tl8769987717_)
                                  (let ((_e8770087722_
                                         (gx#syntax-e _tl8769987717_)))
                                    (let ((_hd8770187725_
                                           (##car _e8770087722_))
                                          (_tl8770287727_
                                           (##cdr _e8770087722_)))
                                      (let ((_eid87730_ _hd8770187725_))
                                        (if (gx#stx-null? _tl8770287727_)
                                            (if (and (gx#identifier? _id87720_)
                                                     (gx#identifier?
                                                      _eid87730_))
                                                (_lp87651_
                                                 _rest87693_
                                                 _ns87654_
                                                 (cons (cons _id87720_
                                                             (cons _eid87730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87655_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8769687708_))
                                            (_E8769687708_)))))
                                  (_E8769687708_)))))
                        (_E8769687708_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8769587732_)))
                                              (_E8766587679_)))))
                                    (_E8766587679_))))
                             (_E8765787765_
                              (lambda ()
                                (if (gx#stx-pair? _e8765687671_)
                                    (let ((_e8765987740_
                                           (gx#syntax-e _e8765687671_)))
                                      (let ((_hd8766087743_
                                             (##car _e8765987740_))
                                            (_tl8766187745_
                                             (##cdr _e8765987740_)))
                                        (if (eq? (gx#stx-e _hd8766087743_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8766187745_)
                                                (let ((_e8766287748_
                                                       (gx#syntax-e
                                                        _tl8766187745_)))
                                                  (let ((_hd8766387751_
                                                         (##car _e8766287748_))
                                                        (_tl8766487753_
                                                         (##cdr _e8766287748_)))
                                                    (let* ((_ns87756_
                                                            _hd8766387751_)
                                                           (_rest87758_
                                                            _tl8766487753_))
                                                      (if '#t
                                                          (let ((_ns87763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87756_)
                             (symbol->string (gx#stx-e _ns87756_))
                             (if (or (gx#stx-string? _ns87756_)
                                     (gx#stx-false? _ns87756_))
                                 (gx#stx-e _ns87756_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87617_
                                  _ns87756_)))))
                    (_lp87651_ _rest87758_ _ns87763_ _r87655_))
                  (_E8765887736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8765887736_))
                                            (_E8765887736_))))
                                    (_E8765887736_)))))
                        (_E8765787765_))))))
          (let* ((_e8762087627_ _stx87617_)
                 (_E8762287631_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8762087627_)))
                 (_E8762187645_
                  (lambda ()
                    (if (gx#stx-pair? _e8762087627_)
                        (let ((_e8762387635_ (gx#syntax-e _e8762087627_)))
                          (let ((_hd8762487638_ (##car _e8762387635_))
                                (_tl8762587640_ (##cdr _e8762387635_)))
                            (let ((_body87643_ _tl8762587640_))
                              (if (gx#stx-list? _body87643_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87619_ _body87643_))
                                  (_E8762287631_)))))
                        (_E8762287631_)))))
            (_E8762187645_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87563_)
        (let* ((_e8756487577_ _stx87563_)
               (_E8756687581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8756487577_)))
               (_E8756587613_
                (lambda ()
                  (if (gx#stx-pair? _e8756487577_)
                      (let ((_e8756787585_ (gx#syntax-e _e8756487577_)))
                        (let ((_hd8756887588_ (##car _e8756787585_))
                              (_tl8756987590_ (##cdr _e8756787585_)))
                          (if (gx#stx-pair? _tl8756987590_)
                              (let ((_e8757087593_
                                     (gx#syntax-e _tl8756987590_)))
                                (let ((_hd8757187596_ (##car _e8757087593_))
                                      (_tl8757287598_ (##cdr _e8757087593_)))
                                  (let ((_hd87601_ _hd8757187596_))
                                    (if (gx#stx-pair? _tl8757287598_)
                                        (let ((_e8757387603_
                                               (gx#syntax-e _tl8757287598_)))
                                          (let ((_hd8757487606_
                                                 (##car _e8757387603_))
                                                (_tl8757587608_
                                                 (##cdr _e8757387603_)))
                                            (let ((_expr87611_ _hd8757487606_))
                                              (if (gx#stx-null? _tl8757587608_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87601_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87601_)
                          (cons _expr87611_ '())))
              (_E8756687581_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8756687581_)))))
                                        (_E8756687581_)))))
                              (_E8756687581_))))
                      (_E8756687581_)))))
          (_E8756587613_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87509_)
        (let* ((_e8751087523_ _stx87509_)
               (_E8751287527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8751087523_)))
               (_E8751187559_
                (lambda ()
                  (if (gx#stx-pair? _e8751087523_)
                      (let ((_e8751387531_ (gx#syntax-e _e8751087523_)))
                        (let ((_hd8751487534_ (##car _e8751387531_))
                              (_tl8751587536_ (##cdr _e8751387531_)))
                          (if (gx#stx-pair? _tl8751587536_)
                              (let ((_e8751687539_
                                     (gx#syntax-e _tl8751587536_)))
                                (let ((_hd8751787542_ (##car _e8751687539_))
                                      (_tl8751887544_ (##cdr _e8751687539_)))
                                  (let ((_hd87547_ _hd8751787542_))
                                    (if (gx#stx-pair? _tl8751887544_)
                                        (let ((_e8751987549_
                                               (gx#syntax-e _tl8751887544_)))
                                          (let ((_hd8752087552_
                                                 (##car _e8751987549_))
                                                (_tl8752187554_
                                                 (##cdr _e8751987549_)))
                                            (let ((_expr87557_ _hd8752087552_))
                                              (if (gx#stx-null? _tl8752187554_)
                                                  (if (gx#identifier?
                                                       _hd87547_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87557_ '())))
              (_E8751287527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8751287527_)))))
                                        (_E8751287527_)))))
                              (_E8751287527_))))
                      (_E8751287527_)))))
          (_E8751187559_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87455_)
        (let* ((_e8745687469_ _stx87455_)
               (_E8745887473_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8745687469_)))
               (_E8745787505_
                (lambda ()
                  (if (gx#stx-pair? _e8745687469_)
                      (let ((_e8745987477_ (gx#syntax-e _e8745687469_)))
                        (let ((_hd8746087480_ (##car _e8745987477_))
                              (_tl8746187482_ (##cdr _e8745987477_)))
                          (if (gx#stx-pair? _tl8746187482_)
                              (let ((_e8746287485_
                                     (gx#syntax-e _tl8746187482_)))
                                (let ((_hd8746387488_ (##car _e8746287485_))
                                      (_tl8746487490_ (##cdr _e8746287485_)))
                                  (let ((_id87493_ _hd8746387488_))
                                    (if (gx#stx-pair? _tl8746487490_)
                                        (let ((_e8746587495_
                                               (gx#syntax-e _tl8746487490_)))
                                          (let ((_hd8746687498_
                                                 (##car _e8746587495_))
                                                (_tl8746787500_
                                                 (##cdr _e8746587495_)))
                                            (let ((_alias-id87503_
                                                   _hd8746687498_))
                                              (if (gx#stx-null? _tl8746787500_)
                                                  (if (and (gx#identifier?
                                                            _id87493_)
                                                           (gx#identifier?
                                                            _alias-id87503_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87503_ '())))
              (_E8745887473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8745887473_)))))
                                        (_E8745887473_)))))
                              (_E8745887473_))))
                      (_E8745887473_)))))
          (_E8745787505_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87412_)
        (let* ((_e8741387423_ _stx87412_)
               (_E8741587427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8741387423_)))
               (_E8741487451_
                (lambda ()
                  (if (gx#stx-pair? _e8741387423_)
                      (let ((_e8741687431_ (gx#syntax-e _e8741387423_)))
                        (let ((_hd8741787434_ (##car _e8741687431_))
                              (_tl8741887436_ (##cdr _e8741687431_)))
                          (if (gx#stx-pair? _tl8741887436_)
                              (let ((_e8741987439_
                                     (gx#syntax-e _tl8741887436_)))
                                (let ((_hd8742087442_ (##car _e8741987439_))
                                      (_tl8742187444_ (##cdr _e8741987439_)))
                                  (let* ((_hd87447_ _hd8742087442_)
                                         (_body87449_ _tl8742187444_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87447_)
                                             (gx#stx-list? _body87449_)
                                             (not (gx#stx-null? _body87449_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87447_)
                                         _body87449_)
                                        (_E8741587427_)))))
                              (_E8741587427_))))
                      (_E8741587427_)))))
          (_E8741487451_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx87348_)
        (letrec ((_generate87350_
                  (lambda (_clause87380_)
                    (let* ((_e8738187388_ _clause87380_)
                           (_E8738387392_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx87348_
                               _clause87380_)))
                           (_E8738287408_
                            (lambda ()
                              (if (gx#stx-pair? _e8738187388_)
                                  (let ((_e8738487396_
                                         (gx#syntax-e _e8738187388_)))
                                    (let ((_hd8738587399_
                                           (##car _e8738487396_))
                                          (_tl8738687401_
                                           (##cdr _e8738487396_)))
                                      (let* ((_hd87404_ _hd8738587399_)
                                             (_body87406_ _tl8738687401_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd87404_)
                                                 (gx#stx-list? _body87406_)
                                                 (not (gx#stx-null?
                                                       _body87406_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd87404_)
                                                   _body87406_)
                                             (gx#stx-source _clause87380_))
                                            (_E8738387392_)))))
                                  (_E8738387392_)))))
                      (_E8738287408_)))))
          (let* ((_e8735187358_ _stx87348_)
                 (_E8735387362_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8735187358_)))
                 (_E8735287376_
                  (lambda ()
                    (if (gx#stx-pair? _e8735187358_)
                        (let ((_e8735487366_ (gx#syntax-e _e8735187358_)))
                          (let ((_hd8735587369_ (##car _e8735487366_))
                                (_tl8735687371_ (##cdr _e8735487366_)))
                            (let ((_clauses87374_ _tl8735687371_))
                              (if (gx#stx-list? _clauses87374_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate87350_
                                    _clauses87374_))
                                  (_E8735387362_)))))
                        (_E8735387362_)))))
            (_E8735287376_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx87249_ _form87250_)
        (letrec ((_generate87252_
                  (lambda (_bind87295_)
                    (let* ((_e8729687306_ _bind87295_)
                           (_E8729887310_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx87249_
                               _bind87295_)))
                           (_E8729787334_
                            (lambda ()
                              (if (gx#stx-pair? _e8729687306_)
                                  (let ((_e8729987314_
                                         (gx#syntax-e _e8729687306_)))
                                    (let ((_hd8730087317_
                                           (##car _e8729987314_))
                                          (_tl8730187319_
                                           (##cdr _e8729987314_)))
                                      (let ((_ids87322_ _hd8730087317_))
                                        (if (gx#stx-pair? _tl8730187319_)
                                            (let ((_e8730287324_
                                                   (gx#syntax-e
                                                    _tl8730187319_)))
                                              (let ((_hd8730387327_
                                                     (##car _e8730287324_))
                                                    (_tl8730487329_
                                                     (##cdr _e8730287324_)))
                                                (let ((_expr87332_
                                                       _hd8730387327_))
                                                  (if (gx#stx-null?
                                                       _tl8730487329_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids87322_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids87322_)
                        (cons _expr87332_ '()))
                  (_E8729887310_))
              (_E8729887310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8729887310_)))))
                                  (_E8729887310_)))))
                      (_E8729787334_)))))
          (let* ((_e8725387263_ _stx87249_)
                 (_E8725587267_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8725387263_)))
                 (_E8725487291_
                  (lambda ()
                    (if (gx#stx-pair? _e8725387263_)
                        (let ((_e8725687271_ (gx#syntax-e _e8725387263_)))
                          (let ((_hd8725787274_ (##car _e8725687271_))
                                (_tl8725887276_ (##cdr _e8725687271_)))
                            (if (gx#stx-pair? _tl8725887276_)
                                (let ((_e8725987279_
                                       (gx#syntax-e _tl8725887276_)))
                                  (let ((_hd8726087282_ (##car _e8725987279_))
                                        (_tl8726187284_ (##cdr _e8725987279_)))
                                    (let* ((_hd87287_ _hd8726087282_)
                                           (_body87289_ _tl8726187284_))
                                      (if (and (gx#stx-list? _hd87287_)
                                               (gx#stx-list? _body87289_)
                                               (not (gx#stx-null?
                                                     _body87289_)))
                                          (gx#core-cons*
                                           _form87250_
                                           (gx#stx-map1
                                            _generate87252_
                                            _hd87287_)
                                           _body87289_)
                                          (_E8725587267_)))))
                                (_E8725587267_))))
                        (_E8725587267_)))))
            (_E8725487291_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx87341_)
        (let ((_form87343_ '%#let-values))
          (gx#macro-expand-let-values__% _stx87341_ _form87343_))))
    (define gx#macro-expand-let-values
      (lambda _g89726_
        (let ((_g89725_ (##length _g89726_)))
          (cond ((##fx= _g89725_ 1)
                 (apply (lambda (_stx87341_)
                          (gx#macro-expand-let-values__0 _stx87341_))
                        _g89726_))
                ((##fx= _g89725_ 2)
                 (apply (lambda (_stx87345_ _form87346_)
                          (gx#macro-expand-let-values__%
                           _stx87345_
                           _form87346_))
                        _g89726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89726_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx87246_)
        (gx#macro-expand-let-values__% _stx87246_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx87244_)
        (gx#macro-expand-let-values__% _stx87244_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx87135_)
        (let* ((_e8713687162_ _stx87135_)
               (_E8714887166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8713687162_)))
               (_E8713887208_
                (lambda ()
                  (if (gx#stx-pair? _e8713687162_)
                      (let ((_e8714987170_ (gx#syntax-e _e8713687162_)))
                        (let ((_hd8715087173_ (##car _e8714987170_))
                              (_tl8715187175_ (##cdr _e8714987170_)))
                          (if (gx#stx-pair? _tl8715187175_)
                              (let ((_e8715287178_
                                     (gx#syntax-e _tl8715187175_)))
                                (let ((_hd8715387181_ (##car _e8715287178_))
                                      (_tl8715487183_ (##cdr _e8715287178_)))
                                  (let ((_test87186_ _hd8715387181_))
                                    (if (gx#stx-pair? _tl8715487183_)
                                        (let ((_e8715587188_
                                               (gx#syntax-e _tl8715487183_)))
                                          (let ((_hd8715687191_
                                                 (##car _e8715587188_))
                                                (_tl8715787193_
                                                 (##cdr _e8715587188_)))
                                            (let ((_K87196_ _hd8715687191_))
                                              (if (gx#stx-pair? _tl8715787193_)
                                                  (let ((_e8715887198_
                                                         (gx#syntax-e
                                                          _tl8715787193_)))
                                                    (let ((_hd8715987201_
                                                           (##car _e8715887198_))
                                                          (_tl8716087203_
                                                           (##cdr _e8715887198_)))
                                                      (let ((_E87206_
                                                             _hd8715987201_))
                                                        (if (gx#stx-null?
                                                             _tl8716087203_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test87186_
                         _K87196_
                         _E87206_)
                        (_E8714887166_))
                    (_E8714887166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8714887166_)))))
                                        (_E8714887166_)))))
                              (_E8714887166_))))
                      (_E8714887166_))))
               (_E8713787240_
                (lambda ()
                  (if (gx#stx-pair? _e8713687162_)
                      (let ((_e8713987212_ (gx#syntax-e _e8713687162_)))
                        (let ((_hd8714087215_ (##car _e8713987212_))
                              (_tl8714187217_ (##cdr _e8713987212_)))
                          (if (gx#stx-pair? _tl8714187217_)
                              (let ((_e8714287220_
                                     (gx#syntax-e _tl8714187217_)))
                                (let ((_hd8714387223_ (##car _e8714287220_))
                                      (_tl8714487225_ (##cdr _e8714287220_)))
                                  (let ((_test87228_ _hd8714387223_))
                                    (if (gx#stx-pair? _tl8714487225_)
                                        (let ((_e8714587230_
                                               (gx#syntax-e _tl8714487225_)))
                                          (let ((_hd8714687233_
                                                 (##car _e8714587230_))
                                                (_tl8714787235_
                                                 (##cdr _e8714587230_)))
                                            (let ((_K87238_ _hd8714687233_))
                                              (if (gx#stx-null? _tl8714787235_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test87228_
                                                       _K87238_
                                                       '#!void)
                                                      (_E8713887208_))
                                                  (_E8713887208_)))))
                                        (_E8713887208_)))))
                              (_E8713887208_))))
                      (_E8713887208_)))))
          (_E8713787240_))))
    (define gx#free-identifier=?
      (lambda (_xid87123_ _yid87124_)
        (let ((_xe87126_ (gx#resolve-identifier__0 _xid87123_))
              (_ye87127_ (gx#resolve-identifier__0 _yid87124_)))
          (if (and _xe87126_ _ye87127_)
              (let ((_$e87129_ (eq? _xe87126_ _ye87127_)))
                (if _$e87129_
                    _$e87129_
                    (if (##structure-instance-of? _xe87126_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye87127_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe87126_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye87127_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe87126_ _ye87127_)
                  '#f
                  (gx#stx-eq? _xid87123_ _yid87124_))))))
    (define gx#bound-identifier=?
      (lambda (_xid87107_ _yid87108_)
        (letrec ((_context87110_
                  (lambda (_e87121_)
                    (if (##structure-direct-instance-of?
                         _e87121_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e87121_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks87111_
                  (lambda (_e87119_)
                    (if (symbol? _e87119_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e87119_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e87119_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e87119_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap87112_
                  (lambda (_e87117_)
                    (if (symbol? _e87117_)
                        _e87117_
                        (gx#syntax-local-unwrap _e87117_)))))
          (let ((_x87114_ (_unwrap87112_ _xid87107_))
                (_y87115_ (_unwrap87112_ _yid87108_)))
            (if (gx#stx-eq? _x87114_ _y87115_)
                (if (eq? (_context87110_ _x87114_) (_context87110_ _y87115_))
                    (equal? (_marks87111_ _x87114_) (_marks87111_ _y87115_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx87105_)
        (if (gx#identifier? _stx87105_)
            (gx#core-identifier=? _stx87105_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx87103_)
        (if (gx#identifier? _stx87103_)
            (gx#core-identifier=? _stx87103_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x87101_)
        (if (gx#identifier? _x87101_)
            (if (not (gx#underscore? _x87101_)) _x87101_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87047_ _where87048_)
        (let _lp87050_ ((_rest87052_ (gx#syntax->list _stx87047_)))
          (let* ((_rest8705387061_ _rest87052_)
                 (_else8705587069_ (lambda () '#t))
                 (_K8705787079_
                  (lambda (_rest87072_ _hd87073_)
                    (if (not (gx#identifier? _hd87073_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87048_
                         _hd87073_)
                        (if (find (lambda (_g8707487076_)
                                    (gx#bound-identifier=?
                                     _g8707487076_
                                     _hd87073_))
                                  _rest87072_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87048_
                             _hd87073_)
                            (_lp87050_ _rest87072_))))))
            (if (##pair? _rest8705387061_)
                (let ((_hd8705887082_ (##car _rest8705387061_))
                      (_tl8705987084_ (##cdr _rest8705387061_)))
                  (let* ((_hd87087_ _hd8705887082_)
                         (_rest87089_ _tl8705987084_))
                    (_K8705787079_ _rest87089_ _hd87087_)))
                (_else8705587069_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx87094_)
        (let ((_where87096_ _stx87094_))
          (gx#check-duplicate-identifiers__% _stx87094_ _where87096_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89728_
        (let ((_g89727_ (##length _g89728_)))
          (cond ((##fx= _g89727_ 1)
                 (apply (lambda (_stx87094_)
                          (gx#check-duplicate-identifiers__0 _stx87094_))
                        _g89728_))
                ((##fx= _g89727_ 2)
                 (apply (lambda (_stx87098_ _where87099_)
                          (gx#check-duplicate-identifiers__%
                           _stx87098_
                           _where87099_))
                        _g89728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89728_))))))
    (define gx#core-bind-values?
      (lambda (_stx87039_)
        (gx#stx-andmap
         (lambda (_x87041_)
           (let ((_$e87043_ (gx#identifier? _x87041_)))
             (if _$e87043_ _$e87043_ (gx#stx-false? _x87041_))))
         _stx87039_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87003_ _rebind?87004_ _phi87005_ _ctx87006_)
        (gx#stx-for-each1
         (lambda (_id87008_)
           (if (gx#identifier? _id87008_)
               (gx#core-bind-runtime!__%
                _id87008_
                _rebind?87004_
                _phi87005_
                _ctx87006_)
               '#!void))
         _stx87003_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87013_)
        (let* ((_rebind?87015_ '#f)
               (_phi87017_ (gx#current-expander-phi))
               (_ctx87019_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87013_
           _rebind?87015_
           _phi87017_
           _ctx87019_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87021_ _rebind?87022_)
        (let* ((_phi87024_ (gx#current-expander-phi))
               (_ctx87026_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87021_
           _rebind?87022_
           _phi87024_
           _ctx87026_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87028_ _rebind?87029_ _phi87030_)
        (let ((_ctx87032_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87028_
           _rebind?87029_
           _phi87030_
           _ctx87032_))))
    (define gx#core-bind-values!
      (lambda _g89730_
        (let ((_g89729_ (##length _g89730_)))
          (cond ((##fx= _g89729_ 1)
                 (apply (lambda (_stx87013_)
                          (gx#core-bind-values!__0 _stx87013_))
                        _g89730_))
                ((##fx= _g89729_ 2)
                 (apply (lambda (_stx87021_ _rebind?87022_)
                          (gx#core-bind-values!__1 _stx87021_ _rebind?87022_))
                        _g89730_))
                ((##fx= _g89729_ 3)
                 (apply (lambda (_stx87028_ _rebind?87029_ _phi87030_)
                          (gx#core-bind-values!__2
                           _stx87028_
                           _rebind?87029_
                           _phi87030_))
                        _g89730_))
                ((##fx= _g89729_ 4)
                 (apply (lambda (_stx87034_
                                 _rebind?87035_
                                 _phi87036_
                                 _ctx87037_)
                          (gx#core-bind-values!__%
                           _stx87034_
                           _rebind?87035_
                           _phi87036_
                           _ctx87037_))
                        _g89730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89730_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx86998_)
        (gx#stx-map1
         (lambda (_x87000_)
           (if (gx#identifier? _x87000_)
               (gx#core-quote-syntax__0 _x87000_)
               '#f))
         _stx86998_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86991_)
        (if (gx#identifier? _stx86991_)
            (let* ((_bind86993_ (gx#resolve-identifier__0 _stx86991_))
                   (_$e86995_ (not _bind86993_)))
              (if _$e86995_
                  _$e86995_
                  (##structure-instance-of?
                   _bind86993_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86983_ _form86984_)
        (let ((_bind86986_ (gx#resolve-identifier__0 _id86983_)))
          (if (##structure-instance-of? _bind86986_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86983_)
              (if (not _bind86986_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86983_)))
                      (gx#core-quote-syntax__0 _id86983_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86984_
                       _id86983_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86984_
                   _id86983_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86942_ _rebind?86943_ _phi86944_ _ctx86945_)
        (let* ((_key86947_ (gx#core-identifier-key _id86942_))
               (_eid86949_
                (gx#make-binding-id__% _key86947_ '#f _phi86944_ _ctx86945_))
               (_bind86951_
                (if (##structure-instance-of? _ctx86945_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86949_
                     _key86947_
                     _phi86944_
                     _ctx86945_)
                    (if (##structure-instance-of?
                         _ctx86945_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86949_
                         _key86947_
                         _phi86944_)
                        (if (##structure-instance-of?
                             _ctx86945_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86949_
                             _key86947_
                             _phi86944_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86949_
                             _key86947_
                             _phi86944_))))))
          (gx#bind-identifier!__%
           _id86942_
           _bind86951_
           _rebind?86943_
           _phi86944_
           _ctx86945_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86957_)
        (let* ((_rebind?86959_ '#f)
               (_phi86961_ (gx#current-expander-phi))
               (_ctx86963_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86957_
           _rebind?86959_
           _phi86961_
           _ctx86963_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86965_ _rebind?86966_)
        (let* ((_phi86968_ (gx#current-expander-phi))
               (_ctx86970_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86965_
           _rebind?86966_
           _phi86968_
           _ctx86970_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86972_ _rebind?86973_ _phi86974_)
        (let ((_ctx86976_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86972_
           _rebind?86973_
           _phi86974_
           _ctx86976_))))
    (define gx#core-bind-runtime!
      (lambda _g89732_
        (let ((_g89731_ (##length _g89732_)))
          (cond ((##fx= _g89731_ 1)
                 (apply (lambda (_id86957_)
                          (gx#core-bind-runtime!__0 _id86957_))
                        _g89732_))
                ((##fx= _g89731_ 2)
                 (apply (lambda (_id86965_ _rebind?86966_)
                          (gx#core-bind-runtime!__1 _id86965_ _rebind?86966_))
                        _g89732_))
                ((##fx= _g89731_ 3)
                 (apply (lambda (_id86972_ _rebind?86973_ _phi86974_)
                          (gx#core-bind-runtime!__2
                           _id86972_
                           _rebind?86973_
                           _phi86974_))
                        _g89732_))
                ((##fx= _g89731_ 4)
                 (apply (lambda (_id86978_
                                 _rebind?86979_
                                 _phi86980_
                                 _ctx86981_)
                          (gx#core-bind-runtime!__%
                           _id86978_
                           _rebind?86979_
                           _phi86980_
                           _ctx86981_))
                        _g89732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89732_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86897_ _eid86898_ _rebind?86899_ _phi86900_ _ctx86901_)
        (let* ((_key86903_ (gx#core-identifier-key _id86897_))
               (_bind86905_
                (if (##structure-instance-of? _ctx86901_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86898_
                     _key86903_
                     _phi86900_
                     _ctx86901_)
                    (if (##structure-instance-of?
                         _ctx86901_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86898_
                         _key86903_
                         _phi86900_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86898_
                         _key86903_
                         _phi86900_)))))
          (gx#bind-identifier!__%
           _id86897_
           _bind86905_
           _rebind?86899_
           _phi86900_
           _ctx86901_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86911_ _eid86912_)
        (let* ((_rebind?86914_ '#f)
               (_phi86916_ (gx#current-expander-phi))
               (_ctx86918_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86911_
           _eid86912_
           _rebind?86914_
           _phi86916_
           _ctx86918_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86920_ _eid86921_ _rebind?86922_)
        (let* ((_phi86924_ (gx#current-expander-phi))
               (_ctx86926_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86920_
           _eid86921_
           _rebind?86922_
           _phi86924_
           _ctx86926_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86928_ _eid86929_ _rebind?86930_ _phi86931_)
        (let ((_ctx86933_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86928_
           _eid86929_
           _rebind?86930_
           _phi86931_
           _ctx86933_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89734_
        (let ((_g89733_ (##length _g89734_)))
          (cond ((##fx= _g89733_ 2)
                 (apply (lambda (_id86911_ _eid86912_)
                          (gx#core-bind-runtime-reference!__0
                           _id86911_
                           _eid86912_))
                        _g89734_))
                ((##fx= _g89733_ 3)
                 (apply (lambda (_id86920_ _eid86921_ _rebind?86922_)
                          (gx#core-bind-runtime-reference!__1
                           _id86920_
                           _eid86921_
                           _rebind?86922_))
                        _g89734_))
                ((##fx= _g89733_ 4)
                 (apply (lambda (_id86928_
                                 _eid86929_
                                 _rebind?86930_
                                 _phi86931_)
                          (gx#core-bind-runtime-reference!__2
                           _id86928_
                           _eid86929_
                           _rebind?86930_
                           _phi86931_))
                        _g89734_))
                ((##fx= _g89733_ 5)
                 (apply (lambda (_id86935_
                                 _eid86936_
                                 _rebind?86937_
                                 _phi86938_
                                 _ctx86939_)
                          (gx#core-bind-runtime-reference!__%
                           _id86935_
                           _eid86936_
                           _rebind?86937_
                           _phi86938_
                           _ctx86939_))
                        _g89734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89734_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86857_ _eid86858_ _rebind?86859_ _phi86860_ _ctx86861_)
        (gx#bind-identifier!__%
         _id86857_
         (##structure
          gx#extern-binding::t
          _eid86858_
          (gx#core-identifier-key _id86857_)
          _phi86860_)
         _rebind?86859_
         _phi86860_
         _ctx86861_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86866_ _eid86867_)
        (let* ((_rebind?86869_ '#f)
               (_phi86871_ (gx#current-expander-phi))
               (_ctx86873_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86866_
           _eid86867_
           _rebind?86869_
           _phi86871_
           _ctx86873_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86875_ _eid86876_ _rebind?86877_)
        (let* ((_phi86879_ (gx#current-expander-phi))
               (_ctx86881_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86875_
           _eid86876_
           _rebind?86877_
           _phi86879_
           _ctx86881_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86883_ _eid86884_ _rebind?86885_ _phi86886_)
        (let ((_ctx86888_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86883_
           _eid86884_
           _rebind?86885_
           _phi86886_
           _ctx86888_))))
    (define gx#core-bind-extern!
      (lambda _g89736_
        (let ((_g89735_ (##length _g89736_)))
          (cond ((##fx= _g89735_ 2)
                 (apply (lambda (_id86866_ _eid86867_)
                          (gx#core-bind-extern!__0 _id86866_ _eid86867_))
                        _g89736_))
                ((##fx= _g89735_ 3)
                 (apply (lambda (_id86875_ _eid86876_ _rebind?86877_)
                          (gx#core-bind-extern!__1
                           _id86875_
                           _eid86876_
                           _rebind?86877_))
                        _g89736_))
                ((##fx= _g89735_ 4)
                 (apply (lambda (_id86883_
                                 _eid86884_
                                 _rebind?86885_
                                 _phi86886_)
                          (gx#core-bind-extern!__2
                           _id86883_
                           _eid86884_
                           _rebind?86885_
                           _phi86886_))
                        _g89736_))
                ((##fx= _g89735_ 5)
                 (apply (lambda (_id86890_
                                 _eid86891_
                                 _rebind?86892_
                                 _phi86893_
                                 _ctx86894_)
                          (gx#core-bind-extern!__%
                           _id86890_
                           _eid86891_
                           _rebind?86892_
                           _phi86893_
                           _ctx86894_))
                        _g89736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89736_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86811_ _e86812_ _rebind?86813_ _phi86814_ _ctx86815_)
        (gx#bind-identifier!__%
         _id86811_
         (let ((_key86820_ (gx#core-identifier-key _id86811_))
               (_e86821_
                (if (or (##structure-instance-of? _e86812_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86812_
                         'gx#expander-context::t))
                    _e86812_
                    (##structure
                     gx#user-expander::t
                     _e86812_
                     _ctx86815_
                     _phi86814_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86820_ '#t _phi86814_ _ctx86815_)
            _key86820_
            _phi86814_
            _e86821_))
         _rebind?86813_
         _phi86814_
         _ctx86815_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86826_ _e86827_)
        (let* ((_rebind?86829_ '#f)
               (_phi86831_ (gx#current-expander-phi))
               (_ctx86833_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86826_
           _e86827_
           _rebind?86829_
           _phi86831_
           _ctx86833_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86835_ _e86836_ _rebind?86837_)
        (let* ((_phi86839_ (gx#current-expander-phi))
               (_ctx86841_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86835_
           _e86836_
           _rebind?86837_
           _phi86839_
           _ctx86841_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86843_ _e86844_ _rebind?86845_ _phi86846_)
        (let ((_ctx86848_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86843_
           _e86844_
           _rebind?86845_
           _phi86846_
           _ctx86848_))))
    (define gx#core-bind-syntax!
      (lambda _g89738_
        (let ((_g89737_ (##length _g89738_)))
          (cond ((##fx= _g89737_ 2)
                 (apply (lambda (_id86826_ _e86827_)
                          (gx#core-bind-syntax!__0 _id86826_ _e86827_))
                        _g89738_))
                ((##fx= _g89737_ 3)
                 (apply (lambda (_id86835_ _e86836_ _rebind?86837_)
                          (gx#core-bind-syntax!__1
                           _id86835_
                           _e86836_
                           _rebind?86837_))
                        _g89738_))
                ((##fx= _g89737_ 4)
                 (apply (lambda (_id86843_ _e86844_ _rebind?86845_ _phi86846_)
                          (gx#core-bind-syntax!__2
                           _id86843_
                           _e86844_
                           _rebind?86845_
                           _phi86846_))
                        _g89738_))
                ((##fx= _g89737_ 5)
                 (apply (lambda (_id86850_
                                 _e86851_
                                 _rebind?86852_
                                 _phi86853_
                                 _ctx86854_)
                          (gx#core-bind-syntax!__%
                           _id86850_
                           _e86851_
                           _rebind?86852_
                           _phi86853_
                           _ctx86854_))
                        _g89738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89738_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86794_ _e86795_ _rebind?86796_)
        (gx#core-bind-syntax!__%
         _id86794_
         _e86795_
         _rebind?86796_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86801_ _e86802_)
        (let ((_rebind?86804_ '#f))
          (gx#core-bind-root-syntax!__% _id86801_ _e86802_ _rebind?86804_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89740_
        (let ((_g89739_ (##length _g89740_)))
          (cond ((##fx= _g89739_ 2)
                 (apply (lambda (_id86801_ _e86802_)
                          (gx#core-bind-root-syntax!__0 _id86801_ _e86802_))
                        _g89740_))
                ((##fx= _g89739_ 3)
                 (apply (lambda (_id86806_ _e86807_ _rebind?86808_)
                          (gx#core-bind-root-syntax!__%
                           _id86806_
                           _e86807_
                           _rebind?86808_))
                        _g89740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89740_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86752_ _alias-id86753_ _rebind?86754_ _phi86755_ _ctx86756_)
        (gx#bind-identifier!__%
         _id86752_
         (let ((_key86758_ (gx#core-identifier-key _id86752_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86758_ '#t _phi86755_ _ctx86756_)
            _key86758_
            _phi86755_
            _alias-id86753_))
         _rebind?86754_
         _phi86755_
         _ctx86756_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86763_ _alias-id86764_)
        (let* ((_rebind?86766_ '#f)
               (_phi86768_ (gx#current-expander-phi))
               (_ctx86770_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86763_
           _alias-id86764_
           _rebind?86766_
           _phi86768_
           _ctx86770_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86772_ _alias-id86773_ _rebind?86774_)
        (let* ((_phi86776_ (gx#current-expander-phi))
               (_ctx86778_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86772_
           _alias-id86773_
           _rebind?86774_
           _phi86776_
           _ctx86778_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86780_ _alias-id86781_ _rebind?86782_ _phi86783_)
        (let ((_ctx86785_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86780_
           _alias-id86781_
           _rebind?86782_
           _phi86783_
           _ctx86785_))))
    (define gx#core-bind-alias!
      (lambda _g89742_
        (let ((_g89741_ (##length _g89742_)))
          (cond ((##fx= _g89741_ 2)
                 (apply (lambda (_id86763_ _alias-id86764_)
                          (gx#core-bind-alias!__0 _id86763_ _alias-id86764_))
                        _g89742_))
                ((##fx= _g89741_ 3)
                 (apply (lambda (_id86772_ _alias-id86773_ _rebind?86774_)
                          (gx#core-bind-alias!__1
                           _id86772_
                           _alias-id86773_
                           _rebind?86774_))
                        _g89742_))
                ((##fx= _g89741_ 4)
                 (apply (lambda (_id86780_
                                 _alias-id86781_
                                 _rebind?86782_
                                 _phi86783_)
                          (gx#core-bind-alias!__2
                           _id86780_
                           _alias-id86781_
                           _rebind?86782_
                           _phi86783_))
                        _g89742_))
                ((##fx= _g89741_ 5)
                 (apply (lambda (_id86787_
                                 _alias-id86788_
                                 _rebind?86789_
                                 _phi86790_
                                 _ctx86791_)
                          (gx#core-bind-alias!__%
                           _id86787_
                           _alias-id86788_
                           _rebind?86789_
                           _phi86790_
                           _ctx86791_))
                        _g89742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89742_))))))
    (define gx#make-binding-id__%
      (lambda (_key86709_ _syntax?86710_ _phi86711_ _ctx86712_)
        (if (uninterned-symbol? _key86709_)
            (gensym 'L)
            (if (pair? _key86709_)
                (gensym (car _key86709_))
                (if (##structure-instance-of? _ctx86712_ 'gx#top-context::t)
                    (let ((_ns86714_
                           (gx#core-context-namespace__% _ctx86712_)))
                      (if (and (fxzero? _phi86711_) (not _syntax?86710_))
                          (if _ns86714_
                              (make-symbol__1 _ns86714_ '"#" _key86709_)
                              _key86709_)
                          (if _syntax?86710_
                              (make-symbol__1
                               (let ((_$e86716_ _ns86714_))
                                 (if _$e86716_ _$e86716_ '""))
                               '"[:"
                               (number->string _phi86711_)
                               '":]#"
                               _key86709_)
                              (make-symbol__1
                               (let ((_$e86719_ _ns86714_))
                                 (if _$e86719_ _$e86719_ '""))
                               '"["
                               (number->string _phi86711_)
                               '"]#"
                               _key86709_))))
                    (gensym _key86709_))))))
    (define gx#make-binding-id__0
      (lambda (_key86725_)
        (let* ((_syntax?86727_ '#f)
               (_phi86729_ (gx#current-expander-phi))
               (_ctx86731_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86725_
           _syntax?86727_
           _phi86729_
           _ctx86731_))))
    (define gx#make-binding-id__1
      (lambda (_key86733_ _syntax?86734_)
        (let* ((_phi86736_ (gx#current-expander-phi))
               (_ctx86738_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86733_
           _syntax?86734_
           _phi86736_
           _ctx86738_))))
    (define gx#make-binding-id__2
      (lambda (_key86740_ _syntax?86741_ _phi86742_)
        (let ((_ctx86744_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86740_
           _syntax?86741_
           _phi86742_
           _ctx86744_))))
    (define gx#make-binding-id
      (lambda _g89744_
        (let ((_g89743_ (##length _g89744_)))
          (cond ((##fx= _g89743_ 1)
                 (apply (lambda (_key86725_)
                          (gx#make-binding-id__0 _key86725_))
                        _g89744_))
                ((##fx= _g89743_ 2)
                 (apply (lambda (_key86733_ _syntax?86734_)
                          (gx#make-binding-id__1 _key86733_ _syntax?86734_))
                        _g89744_))
                ((##fx= _g89743_ 3)
                 (apply (lambda (_key86740_ _syntax?86741_ _phi86742_)
                          (gx#make-binding-id__2
                           _key86740_
                           _syntax?86741_
                           _phi86742_))
                        _g89744_))
                ((##fx= _g89743_ 4)
                 (apply (lambda (_key86746_
                                 _syntax?86747_
                                 _phi86748_
                                 _ctx86749_)
                          (gx#make-binding-id__%
                           _key86746_
                           _syntax?86747_
                           _phi86748_
                           _ctx86749_))
                        _g89744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89744_))))))))
