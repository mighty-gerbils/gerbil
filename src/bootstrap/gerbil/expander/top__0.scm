(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708387688)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx88643_)
        (letrec ((_expand-special88645_
                  (lambda (_hd88647_ _K88648_ _rest88649_ _r88650_)
                    (_K88648_
                     _rest88649_
                     (cons (gx#core-expand-top _hd88647_) _r88650_)))))
          (gx#core-expand-block__0 _stx88643_ _expand-special88645_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88396_)
        (letrec ((_expand-special88398_
                  (lambda (_hd88518_ _K88519_ _rest88520_ _r88521_)
                    (let* ((_K88525_
                            (lambda (_e88523_)
                              (_K88519_ _rest88520_ (cons _e88523_ _r88521_))))
                           (_e8852688555_ _hd88518_)
                           (_E8855088559_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8852688555_)))
                           (_E8854688571_
                            (lambda ()
                              (if (gx#stx-pair? _e8852688555_)
                                  (let ((_e8855188563_
                                         (gx#syntax-e _e8852688555_)))
                                    (let ((_hd8855288566_
                                           (##car _e8855188563_))
                                          (_tl8855388568_
                                           (##cdr _e8855188563_)))
                                      (if (and (gx#identifier? _hd8855288566_)
                                               (gx#core-identifier=?
                                                _hd8855288566_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K88525_
                                               (gx#core-expand-define-runtime%
                                                _hd88518_))
                                              (_E8855088559_))
                                          (_E8855088559_))))
                                  (_E8855088559_))))
                           (_E8854288583_
                            (lambda ()
                              (if (gx#stx-pair? _e8852688555_)
                                  (let ((_e8854788575_
                                         (gx#syntax-e _e8852688555_)))
                                    (let ((_hd8854888578_
                                           (##car _e8854788575_))
                                          (_tl8854988580_
                                           (##cdr _e8854788575_)))
                                      (if (and (gx#identifier? _hd8854888578_)
                                               (gx#core-identifier=?
                                                _hd8854888578_
                                                '%#define-alias))
                                          (if '#t
                                              (_K88525_
                                               (gx#core-expand-define-alias%
                                                _hd88518_))
                                              (_E8854688571_))
                                          (_E8854688571_))))
                                  (_E8854688571_))))
                           (_E8853288595_
                            (lambda ()
                              (if (gx#stx-pair? _e8852688555_)
                                  (let ((_e8854388587_
                                         (gx#syntax-e _e8852688555_)))
                                    (let ((_hd8854488590_
                                           (##car _e8854388587_))
                                          (_tl8854588592_
                                           (##cdr _e8854388587_)))
                                      (if (and (gx#identifier? _hd8854488590_)
                                               (gx#core-identifier=?
                                                _hd8854488590_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K88525_
                                               (gx#core-expand-define-syntax%
                                                _hd88518_))
                                              (_E8854288583_))
                                          (_E8854288583_))))
                                  (_E8854288583_))))
                           (_E8852888627_
                            (lambda ()
                              (if (gx#stx-pair? _e8852688555_)
                                  (let ((_e8853388599_
                                         (gx#syntax-e _e8852688555_)))
                                    (let ((_hd8853488602_
                                           (##car _e8853388599_))
                                          (_tl8853588604_
                                           (##cdr _e8853388599_)))
                                      (if (and (gx#identifier? _hd8853488602_)
                                               (gx#core-identifier=?
                                                _hd8853488602_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8853588604_)
                                              (let ((_e8853688607_
                                                     (gx#syntax-e
                                                      _tl8853588604_)))
                                                (let ((_hd8853788610_
                                                       (##car _e8853688607_))
                                                      (_tl8853888612_
                                                       (##cdr _e8853688607_)))
                                                  (let ((_hd-bind88615_
                                                         _hd8853788610_))
                                                    (if (gx#stx-pair?
                                                         _tl8853888612_)
                                                        (let ((_e8853988617_
                                                               (gx#syntax-e
                                                                _tl8853888612_)))
                                                          (let ((_hd8854088620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8853988617_))
                        (_tl8854188622_ (##cdr _e8853988617_)))
                    (let ((_expr88625_ _hd8854088620_))
                      (if (gx#stx-null? _tl8854188622_)
                          (if (gx#core-bind-values? _hd-bind88615_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88615_)
                                (_K88525_ _hd88518_))
                              (_E8853288595_))
                          (_E8853288595_)))))
                (_E8853288595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8853288595_))
                                          (_E8853288595_))))
                                  (_E8853288595_))))
                           (_E8852788639_
                            (lambda ()
                              (if (gx#stx-pair? _e8852688555_)
                                  (let ((_e8852988631_
                                         (gx#syntax-e _e8852688555_)))
                                    (let ((_hd8853088634_
                                           (##car _e8852988631_))
                                          (_tl8853188636_
                                           (##cdr _e8852988631_)))
                                      (if (and (gx#identifier? _hd8853088634_)
                                               (gx#core-identifier=?
                                                _hd8853088634_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K88525_
                                               (gx#core-expand-begin-syntax%
                                                _hd88518_))
                                              (_E8852888627_))
                                          (_E8852888627_))))
                                  (_E8852888627_)))))
                      (_E8852788639_))))
                 (_eval-body88399_
                  (lambda (_rbody88407_)
                    (let _lp88409_ ((_rest88411_ _rbody88407_)
                                    (_body88412_ '())
                                    (_ebody88413_ '()))
                      (let* ((_rest8841488422_ _rest88411_)
                             (_else8841688430_
                              (lambda ()
                                (values _body88412_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody88413_)
                                          (gx#stx-source _stx88396_))))))
                             (_K8841888506_
                              (lambda (_rest88433_ _hd88434_)
                                (let* ((_e8843588452_ _hd88434_)
                                       (_E8844788456_
                                        (lambda ()
                                          (_lp88409_
                                           _rest88433_
                                           (cons _hd88434_ _body88412_)
                                           (cons _hd88434_ _ebody88413_))))
                                       (_E8843788468_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8843588452_)
                                              (let ((_e8844888460_
                                                     (gx#syntax-e
                                                      _e8843588452_)))
                                                (let ((_hd8844988463_
                                                       (##car _e8844888460_))
                                                      (_tl8845088465_
                                                       (##cdr _e8844888460_)))
                                                  (if (and (gx#identifier?
                                                            _hd8844988463_)
                                                           (gx#core-identifier=?
                                                            _hd8844988463_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp88409_
                                                           _rest88433_
                                                           (cons _hd88434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body88412_)
                   _ebody88413_)
                  (_E8844788456_))
              (_E8844788456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8844788456_))))
                                       (_E8843688502_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8843588452_)
                                              (let ((_e8843888472_
                                                     (gx#syntax-e
                                                      _e8843588452_)))
                                                (let ((_hd8843988475_
                                                       (##car _e8843888472_))
                                                      (_tl8844088477_
                                                       (##cdr _e8843888472_)))
                                                  (if (and (gx#identifier?
                                                            _hd8843988475_)
                                                           (gx#core-identifier=?
                                                            _hd8843988475_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8844088477_)
                                                          (let ((_e8844188480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8844088477_)))
                    (let ((_hd8844288483_ (##car _e8844188480_))
                          (_tl8844388485_ (##cdr _e8844188480_)))
                      (let ((_hd-bind88488_ _hd8844288483_))
                        (if (gx#stx-pair? _tl8844388485_)
                            (let ((_e8844488490_ (gx#syntax-e _tl8844388485_)))
                              (let ((_hd8844588493_ (##car _e8844488490_))
                                    (_tl8844688495_ (##cdr _e8844488490_)))
                                (let ((_expr88498_ _hd8844588493_))
                                  (if (gx#stx-null? _tl8844688495_)
                                      (if '#t
                                          (let ((_ehd88500_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind88488_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr88498_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd88434_))))
                                            (_lp88409_
                                             _rest88433_
                                             (cons _ehd88500_ _body88412_)
                                             (cons _ehd88500_ _ebody88413_)))
                                          (_E8843788468_))
                                      (_E8843788468_)))))
                            (_E8843788468_)))))
                  (_E8843788468_))
              (_E8843788468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8843788468_)))))
                                  (_E8843688502_)))))
                        (if (##pair? _rest8841488422_)
                            (let ((_hd8841988509_ (##car _rest8841488422_))
                                  (_tl8842088511_ (##cdr _rest8841488422_)))
                              (let* ((_hd88514_ _hd8841988509_)
                                     (_rest88516_ _tl8842088511_))
                                (_K8841888506_ _rest88516_ _hd88514_)))
                            (_else8841688430_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88402_
                     (gx#core-expand-block__1
                      _stx88396_
                      _expand-special88398_
                      '#f))
                    (_g88666_ (_eval-body88399_ _rbody88402_)))
               (begin
                 (let ((_g88667_
                        (if (##values? _g88666_)
                            (##vector-length _g88666_)
                            1)))
                   (if (not (##fx= _g88667_ 2))
                       (error "Context expects 2 values" _g88667_)))
                 (let ((_expanded-body88404_ (##vector-ref _g88666_ 0))
                       (_value88405_ (##vector-ref _g88666_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body88404_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value88405_ '())))
                    (gx#stx-source _stx88396_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88366_)
        (let* ((_e8836788374_ _stx88366_)
               (_E8836988378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8836788374_)))
               (_E8836888392_
                (lambda ()
                  (if (gx#stx-pair? _e8836788374_)
                      (let ((_e8837088382_ (gx#syntax-e _e8836788374_)))
                        (let ((_hd8837188385_ (##car _e8837088382_))
                              (_tl8837288387_ (##cdr _e8837088382_)))
                          (let ((_body88390_ _tl8837288387_))
                            (if (gx#stx-list? _body88390_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88390_)
                                 (gx#stx-source _stx88366_))
                                (_E8836988378_)))))
                      (_E8836988378_)))))
          (_E8836888392_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88364_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88364_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88310_)
        (let* ((_e8831188324_ _stx88310_)
               (_E8831388328_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8831188324_)))
               (_E8831288360_
                (lambda ()
                  (if (gx#stx-pair? _e8831188324_)
                      (let ((_e8831488332_ (gx#syntax-e _e8831188324_)))
                        (let ((_hd8831588335_ (##car _e8831488332_))
                              (_tl8831688337_ (##cdr _e8831488332_)))
                          (if (gx#stx-pair? _tl8831688337_)
                              (let ((_e8831788340_
                                     (gx#syntax-e _tl8831688337_)))
                                (let ((_hd8831888343_ (##car _e8831788340_))
                                      (_tl8831988345_ (##cdr _e8831788340_)))
                                  (let ((_ann88348_ _hd8831888343_))
                                    (if (gx#stx-pair? _tl8831988345_)
                                        (let ((_e8832088350_
                                               (gx#syntax-e _tl8831988345_)))
                                          (let ((_hd8832188353_
                                                 (##car _e8832088350_))
                                                (_tl8832288355_
                                                 (##cdr _e8832088350_)))
                                            (let ((_expr88358_ _hd8832188353_))
                                              (if (gx#stx-null? _tl8832288355_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88358_) '())))
               (gx#stx-source _stx88310_))
              (_E8831388328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8831388328_)))))
                                        (_E8831388328_)))))
                              (_E8831388328_))))
                      (_E8831388328_)))))
          (_E8831288360_))))
    (define gx#core-expand-local-block
      (lambda (_stx88034_ _body88035_)
        (letrec ((_expand-special88037_
                  (lambda (_hd88305_ _K88306_ _rest88307_ _r88308_)
                    (_K88306_
                     '()
                     (cons (_expand-internal88038_ _hd88305_ _rest88307_)
                           _r88308_))))
                 (_expand-internal88038_
                  (lambda (_hd88301_ _rest88302_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88040_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88301_ _rest88302_))
                          (gx#stx-source _stx88034_))
                         _expand-internal-special88039_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj88660
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj88660)
                       __obj88660))))
                 (_expand-internal-special88039_
                  (lambda (_hd88196_ _K88197_ _rest88198_ _r88199_)
                    (let* ((_e8820088225_ _hd88196_)
                           (_E8822088229_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8820088225_)))
                           (_E8821688241_
                            (lambda ()
                              (if (gx#stx-pair? _e8820088225_)
                                  (let ((_e8822188233_
                                         (gx#syntax-e _e8820088225_)))
                                    (let ((_hd8822288236_
                                           (##car _e8822188233_))
                                          (_tl8822388238_
                                           (##cdr _e8822188233_)))
                                      (if (and (gx#identifier? _hd8822288236_)
                                               (gx#core-identifier=?
                                                _hd8822288236_
                                                '%#declare))
                                          (if '#t
                                              (_K88197_
                                               _rest88198_
                                               (cons (gx#core-expand-declare%
                                                      _hd88196_)
                                                     _r88199_))
                                              (_E8822088229_))
                                          (_E8822088229_))))
                                  (_E8822088229_))))
                           (_E8821288253_
                            (lambda ()
                              (if (gx#stx-pair? _e8820088225_)
                                  (let ((_e8821788245_
                                         (gx#syntax-e _e8820088225_)))
                                    (let ((_hd8821888248_
                                           (##car _e8821788245_))
                                          (_tl8821988250_
                                           (##cdr _e8821788245_)))
                                      (if (and (gx#identifier? _hd8821888248_)
                                               (gx#core-identifier=?
                                                _hd8821888248_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88196_)
                                                (_K88197_
                                                 _rest88198_
                                                 _r88199_))
                                              (_E8821688241_))
                                          (_E8821688241_))))
                                  (_E8821688241_))))
                           (_E8820288265_
                            (lambda ()
                              (if (gx#stx-pair? _e8820088225_)
                                  (let ((_e8821388257_
                                         (gx#syntax-e _e8820088225_)))
                                    (let ((_hd8821488260_
                                           (##car _e8821388257_))
                                          (_tl8821588262_
                                           (##cdr _e8821388257_)))
                                      (if (and (gx#identifier? _hd8821488260_)
                                               (gx#core-identifier=?
                                                _hd8821488260_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88196_)
                                                (_K88197_
                                                 _rest88198_
                                                 _r88199_))
                                              (_E8821288253_))
                                          (_E8821288253_))))
                                  (_E8821288253_))))
                           (_E8820188297_
                            (lambda ()
                              (if (gx#stx-pair? _e8820088225_)
                                  (let ((_e8820388269_
                                         (gx#syntax-e _e8820088225_)))
                                    (let ((_hd8820488272_
                                           (##car _e8820388269_))
                                          (_tl8820588274_
                                           (##cdr _e8820388269_)))
                                      (if (and (gx#identifier? _hd8820488272_)
                                               (gx#core-identifier=?
                                                _hd8820488272_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8820588274_)
                                              (let ((_e8820688277_
                                                     (gx#syntax-e
                                                      _tl8820588274_)))
                                                (let ((_hd8820788280_
                                                       (##car _e8820688277_))
                                                      (_tl8820888282_
                                                       (##cdr _e8820688277_)))
                                                  (let ((_hd-bind88285_
                                                         _hd8820788280_))
                                                    (if (gx#stx-pair?
                                                         _tl8820888282_)
                                                        (let ((_e8820988287_
                                                               (gx#syntax-e
                                                                _tl8820888282_)))
                                                          (let ((_hd8821088290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8820988287_))
                        (_tl8821188292_ (##cdr _e8820988287_)))
                    (let ((_expr88295_ _hd8821088290_))
                      (if (gx#stx-null? _tl8821188292_)
                          (if (gx#core-bind-values? _hd-bind88285_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88285_)
                                (_K88197_
                                 _rest88198_
                                 (cons _hd88196_ _r88199_)))
                              (_E8820288265_))
                          (_E8820288265_)))))
                (_E8820288265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8820288265_))
                                          (_E8820288265_))))
                                  (_E8820288265_)))))
                      (_E8820188297_))))
                 (_wrap-internal88040_
                  (lambda (_rbody88042_)
                    (let _lp88044_ ((_rest88046_ _rbody88042_)
                                    (_decls88047_ '())
                                    (_bind88048_ '())
                                    (_body88049_ '()))
                      (let* ((_e8805088057_ _rest88046_)
                             (_E8805288106_
                              (lambda ()
                                (let* ((_body88101_
                                        (let* ((_body8806088070_ _body88049_)
                                               (_else8806388078_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88049_)
                                                   (gx#stx-source
                                                    _stx88034_)))))
                                          (let ((_K8806888098_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88034_)))
                                                (_K8806588084_
                                                 (lambda (_expr88082_)
                                                   _expr88082_)))
                                            (let ((_try-match8806288094_
                                                   (lambda ()
                                                     (if (##pair? _body8806088070_)
                                                         (let ((_tl8806788089_
                                                                (##cdr _body8806088070_))
                                                               (_hd8806688087_
                                                                (##car _body8806088070_)))
                                                           (if (##null? _tl8806788089_)
                                                               (let ((_expr88092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8806688087_))
                         (_K8806588084_ _expr88092_))
                       (_else8806388078_)))
                 (_else8806388078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8806088070_)
                                                  (_K8806888098_)
                                                  (_try-match8806288094_))))))
                                       (_body88103_
                                        (if (null? _bind88048_)
                                            _body88101_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88048_
                                                         (cons _body88101_
                                                               '())))
                                             (gx#stx-source _stx88034_)))))
                                  (if (null? _decls88047_)
                                      _body88103_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88047_
                                                   (cons _body88103_ '())))
                                       (gx#stx-source _stx88034_))))))
                             (_E8805188192_
                              (lambda ()
                                (if (gx#stx-pair? _e8805088057_)
                                    (let ((_e8805388110_
                                           (gx#syntax-e _e8805088057_)))
                                      (let ((_hd8805488113_
                                             (##car _e8805388110_))
                                            (_tl8805588115_
                                             (##cdr _e8805388110_)))
                                        (let* ((_hd88118_ _hd8805488113_)
                                               (_rest88120_ _tl8805588115_))
                                          (if '#t
                                              (let* ((_e8812188138_ _hd88118_)
                                                     (_E8813388142_
                                                      (lambda ()
                                                        (if (null? _bind88048_)
                                                            (_lp88044_
                                                             _rest88120_
                                                             _decls88047_
                                                             _bind88048_
                                                             (cons _hd88118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88049_))
                    (_lp88044_
                     _rest88120_
                     _decls88047_
                     (cons (cons '#f (cons _hd88118_ '())) _bind88048_)
                     _body88049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8812388156_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8812188138_)
                                                            (let ((_e8813488146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8812188138_)))
                      (let ((_hd8813588149_ (##car _e8813488146_))
                            (_tl8813688151_ (##cdr _e8813488146_)))
                        (if (and (gx#identifier? _hd8813588149_)
                                 (gx#core-identifier=?
                                  _hd8813588149_
                                  '%#declare))
                            (let ((_xdecls88154_ _tl8813688151_))
                              (if '#t
                                  (_lp88044_
                                   _rest88120_
                                   (gx#stx-foldr
                                    cons
                                    _decls88047_
                                    _xdecls88154_)
                                   _bind88048_
                                   _body88049_)
                                  (_E8813388142_)))
                            (_E8813388142_))))
                    (_E8813388142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8812288188_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8812188138_)
                                                            (let ((_e8812488160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8812188138_)))
                      (let ((_hd8812588163_ (##car _e8812488160_))
                            (_tl8812688165_ (##cdr _e8812488160_)))
                        (if (and (gx#identifier? _hd8812588163_)
                                 (gx#core-identifier=?
                                  _hd8812588163_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8812688165_)
                                (let ((_e8812788168_
                                       (gx#syntax-e _tl8812688165_)))
                                  (let ((_hd8812888171_ (##car _e8812788168_))
                                        (_tl8812988173_ (##cdr _e8812788168_)))
                                    (let ((_hd-bind88176_ _hd8812888171_))
                                      (if (gx#stx-pair? _tl8812988173_)
                                          (let ((_e8813088178_
                                                 (gx#syntax-e _tl8812988173_)))
                                            (let ((_hd8813188181_
                                                   (##car _e8813088178_))
                                                  (_tl8813288183_
                                                   (##cdr _e8813088178_)))
                                              (let ((_expr88186_
                                                     _hd8813188181_))
                                                (if (gx#stx-null?
                                                     _tl8813288183_)
                                                    (if '#t
                                                        (_lp88044_
                                                         _rest88120_
                                                         _decls88047_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88176_)
                             (cons (gx#core-expand-expression _expr88186_)
                                   '()))
                       _bind88048_)
                 _body88049_)
                (_E8812388156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8812388156_)))))
                                          (_E8812388156_)))))
                                (_E8812388156_))
                            (_E8812388156_))))
                    (_E8812388156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8812288188_))
                                              (_E8805288106_)))))
                                    (_E8805288106_)))))
                        (_E8805188192_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88035_)
            (gx#stx-source _stx88034_))
           _expand-special88037_))))
    (define gx#core-expand-declare%
      (lambda (_stx87972_)
        (let* ((_e8797387980_ _stx87972_)
               (_E8797587984_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8797387980_)))
               (_E8797488030_
                (lambda ()
                  (if (gx#stx-pair? _e8797387980_)
                      (let ((_e8797687988_ (gx#syntax-e _e8797387980_)))
                        (let ((_hd8797787991_ (##car _e8797687988_))
                              (_tl8797887993_ (##cdr _e8797687988_)))
                          (let ((_body87996_ _tl8797887993_))
                            (if (gx#stx-list? _body87996_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl87998_)
                                     (let* ((_e8799988006_ _decl87998_)
                                            (_E8800188010_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8799988006_)))
                                            (_E8800088026_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8799988006_)
                                                   (let ((_e8800288014_
                                                          (gx#syntax-e
                                                           _e8799988006_)))
                                                     (let ((_hd8800388017_
                                                            (##car _e8800288014_))
                                                           (_tl8800488019_
                                                            (##cdr _e8800288014_)))
                                                       (let* ((_head88022_
                                                               _hd8800388017_)
                                                              (_args88024_
                                                               _tl8800488019_))
                                                         (if (gx#stx-list?
                                                              _args88024_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl87998_)
                                                             (_E8800188010_)))))
                                                   (_E8800188010_)))))
                                       (_E8800088026_)))
                                   _body87996_))
                                 (gx#stx-source _stx87972_))
                                (_E8797587984_)))))
                      (_E8797587984_)))))
          (_E8797488030_))))
    (define gx#core-expand-extern%
      (lambda (_stx87876_)
        (let* ((_e8787787884_ _stx87876_)
               (_E8787987888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8787787884_)))
               (_E8787887968_
                (lambda ()
                  (if (gx#stx-pair? _e8787787884_)
                      (let ((_e8788087892_ (gx#syntax-e _e8787787884_)))
                        (let ((_hd8788187895_ (##car _e8788087892_))
                              (_tl8788287897_ (##cdr _e8788087892_)))
                          (let ((_body87900_ _tl8788287897_))
                            (if '#t
                                (let _lp87902_ ((_rest87904_ _body87900_)
                                                (_r87905_ '()))
                                  (let* ((_e8790687920_ _rest87904_)
                                         (_E8791887924_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87876_)))
                                         (_E8790887928_
                                          (lambda ()
                                            (if (gx#stx-null? _e8790687920_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87905_))
                                                     (gx#stx-source
                                                      _stx87876_))
                                                    (_E8791887924_))
                                                (_E8791887924_))))
                                         (_E8790787964_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8790687920_)
                                                (let ((_e8790987932_
                                                       (gx#syntax-e
                                                        _e8790687920_)))
                                                  (let ((_hd8791087935_
                                                         (##car _e8790987932_))
                                                        (_tl8791187937_
                                                         (##cdr _e8790987932_)))
                                                    (if (gx#stx-pair?
                                                         _hd8791087935_)
                                                        (let ((_e8791287940_
                                                               (gx#syntax-e
                                                                _hd8791087935_)))
                                                          (let ((_hd8791387943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8791287940_))
                        (_tl8791487945_ (##cdr _e8791287940_)))
                    (let ((_id87948_ _hd8791387943_))
                      (if (gx#stx-pair? _tl8791487945_)
                          (let ((_e8791587950_ (gx#syntax-e _tl8791487945_)))
                            (let ((_hd8791687953_ (##car _e8791587950_))
                                  (_tl8791787955_ (##cdr _e8791587950_)))
                              (let ((_eid87958_ _hd8791687953_))
                                (if (gx#stx-null? _tl8791787955_)
                                    (let ((_rest87960_ _tl8791187937_))
                                      (if (and (gx#identifier? _id87948_)
                                               (gx#identifier? _eid87958_))
                                          (let ((_eid87962_
                                                 (gx#stx-e _eid87958_)))
                                            (gx#core-bind-extern!__0
                                             _id87948_
                                             _eid87962_)
                                            (_lp87902_
                                             _rest87960_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id87948_)
                                                         (cons _eid87962_ '()))
                                                   _r87905_)))
                                          (_E8790887928_)))
                                    (_E8790887928_)))))
                          (_E8790887928_)))))
                (_E8790887928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8790887928_)))))
                                    (_E8790787964_)))
                                (_E8787987888_)))))
                      (_E8787987888_)))))
          (_E8787887968_))))
    (define gx#core-expand-define-values%
      (lambda (_stx87822_)
        (let* ((_e8782387836_ _stx87822_)
               (_E8782587840_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8782387836_)))
               (_E8782487872_
                (lambda ()
                  (if (gx#stx-pair? _e8782387836_)
                      (let ((_e8782687844_ (gx#syntax-e _e8782387836_)))
                        (let ((_hd8782787847_ (##car _e8782687844_))
                              (_tl8782887849_ (##cdr _e8782687844_)))
                          (if (gx#stx-pair? _tl8782887849_)
                              (let ((_e8782987852_
                                     (gx#syntax-e _tl8782887849_)))
                                (let ((_hd8783087855_ (##car _e8782987852_))
                                      (_tl8783187857_ (##cdr _e8782987852_)))
                                  (let ((_hd87860_ _hd8783087855_))
                                    (if (gx#stx-pair? _tl8783187857_)
                                        (let ((_e8783287862_
                                               (gx#syntax-e _tl8783187857_)))
                                          (let ((_hd8783387865_
                                                 (##car _e8783287862_))
                                                (_tl8783487867_
                                                 (##cdr _e8783287862_)))
                                            (let ((_expr87870_ _hd8783387865_))
                                              (if (gx#stx-null? _tl8783487867_)
                                                  (if (gx#core-bind-values?
                                                       _hd87860_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87860_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87860_)
                             (cons (gx#core-expand-expression _expr87870_)
                                   '())))
                 (gx#stx-source _stx87822_)))
              (_E8782587840_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8782587840_)))))
                                        (_E8782587840_)))))
                              (_E8782587840_))))
                      (_E8782587840_)))))
          (_E8782487872_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx87766_)
        (let* ((_e8776787780_ _stx87766_)
               (_E8776987784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8776787780_)))
               (_E8776887818_
                (lambda ()
                  (if (gx#stx-pair? _e8776787780_)
                      (let ((_e8777087788_ (gx#syntax-e _e8776787780_)))
                        (let ((_hd8777187791_ (##car _e8777087788_))
                              (_tl8777287793_ (##cdr _e8777087788_)))
                          (if (gx#stx-pair? _tl8777287793_)
                              (let ((_e8777387796_
                                     (gx#syntax-e _tl8777287793_)))
                                (let ((_hd8777487799_ (##car _e8777387796_))
                                      (_tl8777587801_ (##cdr _e8777387796_)))
                                  (let ((_id87804_ _hd8777487799_))
                                    (if (gx#stx-pair? _tl8777587801_)
                                        (let ((_e8777687806_
                                               (gx#syntax-e _tl8777587801_)))
                                          (let ((_hd8777787809_
                                                 (##car _e8777687806_))
                                                (_tl8777887811_
                                                 (##cdr _e8777687806_)))
                                            (let ((_binding-id87814_
                                                   _hd8777787809_))
                                              (if (gx#stx-null? _tl8777887811_)
                                                  (if (and (gx#identifier?
                                                            _id87804_)
                                                           (gx#identifier?
                                                            _binding-id87814_))
                                                      (let ((_eid87816_
                                                             (gx#stx-e
                                                              _binding-id87814_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id87804_
                                                         _eid87816_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87804_)
                             (cons _eid87816_ '())))))
              (_E8776987784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8776987784_)))))
                                        (_E8776987784_)))))
                              (_E8776987784_))))
                      (_E8776987784_)))))
          (_E8776887818_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx87709_)
        (let* ((_e8771087723_ _stx87709_)
               (_E8771287727_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8771087723_)))
               (_E8771187762_
                (lambda ()
                  (if (gx#stx-pair? _e8771087723_)
                      (let ((_e8771387731_ (gx#syntax-e _e8771087723_)))
                        (let ((_hd8771487734_ (##car _e8771387731_))
                              (_tl8771587736_ (##cdr _e8771387731_)))
                          (if (gx#stx-pair? _tl8771587736_)
                              (let ((_e8771687739_
                                     (gx#syntax-e _tl8771587736_)))
                                (let ((_hd8771787742_ (##car _e8771687739_))
                                      (_tl8771887744_ (##cdr _e8771687739_)))
                                  (let ((_id87747_ _hd8771787742_))
                                    (if (gx#stx-pair? _tl8771887744_)
                                        (let ((_e8771987749_
                                               (gx#syntax-e _tl8771887744_)))
                                          (let ((_hd8772087752_
                                                 (##car _e8771987749_))
                                                (_tl8772187754_
                                                 (##cdr _e8771987749_)))
                                            (let ((_expr87757_ _hd8772087752_))
                                              (if (gx#stx-null? _tl8772187754_)
                                                  (if (gx#identifier?
                                                       _id87747_)
                                                      (let ((_g88668_
                                                             (gx#core-expand-expression+1
                                                              _expr87757_)))
                                                        (begin
                                                          (let ((_g88669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g88668_)
                             (##vector-length _g88668_)
                             1)))
                    (if (not (##fx= _g88669_ 2))
                        (error "Context expects 2 values" _g88669_)))
                  (let ((_e-stx87759_ (##vector-ref _g88668_ 0))
                        (_e87760_ (##vector-ref _g88668_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id87747_ _e87760_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id87747_)
                                   (cons _e-stx87759_ '())))
                       (gx#stx-source _stx87709_))))))
              (_E8771287727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8771287727_)))))
                                        (_E8771287727_)))))
                              (_E8771287727_))))
                      (_E8771287727_)))))
          (_E8771187762_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx87653_)
        (let* ((_e8765487667_ _stx87653_)
               (_E8765687671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8765487667_)))
               (_E8765587705_
                (lambda ()
                  (if (gx#stx-pair? _e8765487667_)
                      (let ((_e8765787675_ (gx#syntax-e _e8765487667_)))
                        (let ((_hd8765887678_ (##car _e8765787675_))
                              (_tl8765987680_ (##cdr _e8765787675_)))
                          (if (gx#stx-pair? _tl8765987680_)
                              (let ((_e8766087683_
                                     (gx#syntax-e _tl8765987680_)))
                                (let ((_hd8766187686_ (##car _e8766087683_))
                                      (_tl8766287688_ (##cdr _e8766087683_)))
                                  (let ((_id87691_ _hd8766187686_))
                                    (if (gx#stx-pair? _tl8766287688_)
                                        (let ((_e8766387693_
                                               (gx#syntax-e _tl8766287688_)))
                                          (let ((_hd8766487696_
                                                 (##car _e8766387693_))
                                                (_tl8766587698_
                                                 (##cdr _e8766387693_)))
                                            (let ((_alias-id87701_
                                                   _hd8766487696_))
                                              (if (gx#stx-null? _tl8766587698_)
                                                  (if (and (gx#identifier?
                                                            _id87691_)
                                                           (gx#identifier?
                                                            _alias-id87701_))
                                                      (let ((_alias-id87703_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id87701_)))
                                                        (gx#core-bind-alias!__0
                                                         _id87691_
                                                         _alias-id87703_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87691_)
                             (cons _alias-id87703_ '())))))
              (_E8765687671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8765687671_)))))
                                        (_E8765687671_)))))
                              (_E8765687671_))))
                      (_E8765687671_)))))
          (_E8765587705_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx87596_ _wrap?87597_)
        (let* ((_e8759887608_ _stx87596_)
               (_E8760087612_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8759887608_)))
               (_E8759987639_
                (lambda ()
                  (if (gx#stx-pair? _e8759887608_)
                      (let ((_e8760187616_ (gx#syntax-e _e8759887608_)))
                        (let ((_hd8760287619_ (##car _e8760187616_))
                              (_tl8760387621_ (##cdr _e8760187616_)))
                          (if (gx#stx-pair? _tl8760387621_)
                              (let ((_e8760487624_
                                     (gx#syntax-e _tl8760387621_)))
                                (let ((_hd8760587627_ (##car _e8760487624_))
                                      (_tl8760687629_ (##cdr _e8760487624_)))
                                  (let* ((_hd87632_ _hd8760587627_)
                                         (_body87634_ _tl8760687629_))
                                    (if (gx#core-bind-values? _hd87632_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd87632_)
                                           (let ((_body87637_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd87632_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx87596_
                                                               _body87634_)
                                                              '()))))
                                             (if _wrap?87597_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body87637_)
                                                  (gx#stx-source _stx87596_))
                                                 _body87637_)))
                                         gx#current-expander-context
                                         (let ((__obj88661
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88661)
                                           __obj88661))
                                        (_E8760087612_)))))
                              (_E8760087612_))))
                      (_E8760087612_)))))
          (_E8759987639_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx87646_)
        (let ((_wrap?87648_ '#t))
          (gx#core-expand-lambda%__% _stx87646_ _wrap?87648_))))
    (define gx#core-expand-lambda%
      (lambda _g88671_
        (let ((_g88670_ (##length _g88671_)))
          (cond ((##fx= _g88670_ 1)
                 (apply (lambda (_stx87646_)
                          (gx#core-expand-lambda%__0 _stx87646_))
                        _g88671_))
                ((##fx= _g88670_ 2)
                 (apply (lambda (_stx87650_ _wrap?87651_)
                          (gx#core-expand-lambda%__% _stx87650_ _wrap?87651_))
                        _g88671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g88671_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx87560_)
        (let* ((_e8756187568_ _stx87560_)
               (_E8756387572_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8756187568_)))
               (_E8756287591_
                (lambda ()
                  (if (gx#stx-pair? _e8756187568_)
                      (let ((_e8756487576_ (gx#syntax-e _e8756187568_)))
                        (let ((_hd8756587579_ (##car _e8756487576_))
                              (_tl8756687581_ (##cdr _e8756487576_)))
                          (let ((_clauses87584_ _tl8756687581_))
                            (if (gx#stx-list? _clauses87584_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause87586_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause87586_)
                                       (let ((_$e87588_
                                              (gx#stx-source _clause87586_)))
                                         (if _$e87588_
                                             _$e87588_
                                             (gx#stx-source _stx87560_))))
                                      '#f))
                                   _clauses87584_))
                                 (gx#stx-source _stx87560_))
                                (_E8756387572_)))))
                      (_E8756387572_)))))
          (_E8756287591_))))
    (define gx#core-expand-let-values%
      (lambda (_stx87514_)
        (let* ((_e8751587525_ _stx87514_)
               (_E8751787529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8751587525_)))
               (_E8751687556_
                (lambda ()
                  (if (gx#stx-pair? _e8751587525_)
                      (let ((_e8751887533_ (gx#syntax-e _e8751587525_)))
                        (let ((_hd8751987536_ (##car _e8751887533_))
                              (_tl8752087538_ (##cdr _e8751887533_)))
                          (if (gx#stx-pair? _tl8752087538_)
                              (let ((_e8752187541_
                                     (gx#syntax-e _tl8752087538_)))
                                (let ((_hd8752287544_ (##car _e8752187541_))
                                      (_tl8752387546_ (##cdr _e8752187541_)))
                                  (let* ((_hd87549_ _hd8752287544_)
                                         (_body87551_ _tl8752387546_))
                                    (if (gx#core-expand-let-bind? _hd87549_)
                                        (let ((_expressions87553_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd87549_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd87549_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd87549_
                                                           _expressions87553_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx87514_
                         _body87551_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx87514_)))
                                           gx#current-expander-context
                                           (let ((__obj88662
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88662)
                                             __obj88662)))
                                        (_E8751787529_)))))
                              (_E8751787529_))))
                      (_E8751787529_)))))
          (_E8751687556_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx87459_ _form87460_)
        (let* ((_e8746187471_ _stx87459_)
               (_E8746387475_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8746187471_)))
               (_E8746287500_
                (lambda ()
                  (if (gx#stx-pair? _e8746187471_)
                      (let ((_e8746487479_ (gx#syntax-e _e8746187471_)))
                        (let ((_hd8746587482_ (##car _e8746487479_))
                              (_tl8746687484_ (##cdr _e8746487479_)))
                          (if (gx#stx-pair? _tl8746687484_)
                              (let ((_e8746787487_
                                     (gx#syntax-e _tl8746687484_)))
                                (let ((_hd8746887490_ (##car _e8746787487_))
                                      (_tl8746987492_ (##cdr _e8746787487_)))
                                  (let* ((_hd87495_ _hd8746887490_)
                                         (_body87497_ _tl8746987492_))
                                    (if (gx#core-expand-let-bind? _hd87495_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd87495_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form87460_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd87495_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd87495_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx87459_
                                                               _body87497_)
                                                              '())))
                                            (gx#stx-source _stx87459_)))
                                         gx#current-expander-context
                                         (let ((__obj88663
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88663)
                                           __obj88663))
                                        (_E8746387475_)))))
                              (_E8746387475_))))
                      (_E8746387475_)))))
          (_E8746287500_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx87507_)
        (let ((_form87509_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx87507_ _form87509_))))
    (define gx#core-expand-letrec-values%
      (lambda _g88673_
        (let ((_g88672_ (##length _g88673_)))
          (cond ((##fx= _g88672_ 1)
                 (apply (lambda (_stx87507_)
                          (gx#core-expand-letrec-values%__0 _stx87507_))
                        _g88673_))
                ((##fx= _g88672_ 2)
                 (apply (lambda (_stx87511_ _form87512_)
                          (gx#core-expand-letrec-values%__%
                           _stx87511_
                           _form87512_))
                        _g88673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g88673_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx87456_)
        (gx#core-expand-letrec-values%__% _stx87456_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx87413_)
        (if (gx#stx-list? _stx87413_)
            (gx#stx-andmap
             (lambda (_bind87415_)
               (let* ((_e8741687426_ _bind87415_)
                      (_E8741887430_ (lambda () '#f))
                      (_E8741787452_
                       (lambda ()
                         (if (gx#stx-pair? _e8741687426_)
                             (let ((_e8741987434_ (gx#syntax-e _e8741687426_)))
                               (let ((_hd8742087437_ (##car _e8741987434_))
                                     (_tl8742187439_ (##cdr _e8741987434_)))
                                 (let ((_hd87442_ _hd8742087437_))
                                   (if (gx#stx-pair? _tl8742187439_)
                                       (let ((_e8742287444_
                                              (gx#syntax-e _tl8742187439_)))
                                         (let ((_hd8742387447_
                                                (##car _e8742287444_))
                                               (_tl8742487449_
                                                (##cdr _e8742287444_)))
                                           (if (gx#stx-null? _tl8742487449_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd87442_)
                                                   (_E8741887430_))
                                               (_E8741887430_))))
                                       (_E8741887430_)))))
                             (_E8741887430_)))))
                 (_E8741787452_)))
             _stx87413_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87372_)
        (let* ((_e8737387383_ _bind87372_)
               (_E8737587387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8737387383_)))
               (_E8737487409_
                (lambda ()
                  (if (gx#stx-pair? _e8737387383_)
                      (let ((_e8737687391_ (gx#syntax-e _e8737387383_)))
                        (let ((_hd8737787394_ (##car _e8737687391_))
                              (_tl8737887396_ (##cdr _e8737687391_)))
                          (if (gx#stx-pair? _tl8737887396_)
                              (let ((_e8737987399_
                                     (gx#syntax-e _tl8737887396_)))
                                (let ((_hd8738087402_ (##car _e8737987399_))
                                      (_tl8738187404_ (##cdr _e8737987399_)))
                                  (let ((_expr87407_ _hd8738087402_))
                                    (if (gx#stx-null? _tl8738187404_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87407_)
                                            (_E8737587387_))
                                        (_E8737587387_)))))
                              (_E8737587387_))))
                      (_E8737587387_)))))
          (_E8737487409_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87331_)
        (let* ((_e8733287342_ _bind87331_)
               (_E8733487346_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8733287342_)))
               (_E8733387368_
                (lambda ()
                  (if (gx#stx-pair? _e8733287342_)
                      (let ((_e8733587350_ (gx#syntax-e _e8733287342_)))
                        (let ((_hd8733687353_ (##car _e8733587350_))
                              (_tl8733787355_ (##cdr _e8733587350_)))
                          (let ((_hd87358_ _hd8733687353_))
                            (if (gx#stx-pair? _tl8733787355_)
                                (let ((_e8733887360_
                                       (gx#syntax-e _tl8733787355_)))
                                  (let ((_hd8733987363_ (##car _e8733887360_))
                                        (_tl8734087365_ (##cdr _e8733887360_)))
                                    (if (gx#stx-null? _tl8734087365_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87358_)
                                            (_E8733487346_))
                                        (_E8733487346_))))
                                (_E8733487346_)))))
                      (_E8733487346_)))))
          (_E8733387368_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87289_ _expr87290_)
        (let* ((_e8729187301_ _bind87289_)
               (_E8729387305_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8729187301_)))
               (_E8729287327_
                (lambda ()
                  (if (gx#stx-pair? _e8729187301_)
                      (let ((_e8729487309_ (gx#syntax-e _e8729187301_)))
                        (let ((_hd8729587312_ (##car _e8729487309_))
                              (_tl8729687314_ (##cdr _e8729487309_)))
                          (let ((_hd87317_ _hd8729587312_))
                            (if (gx#stx-pair? _tl8729687314_)
                                (let ((_e8729787319_
                                       (gx#syntax-e _tl8729687314_)))
                                  (let ((_hd8729887322_ (##car _e8729787319_))
                                        (_tl8729987324_ (##cdr _e8729787319_)))
                                    (if (gx#stx-null? _tl8729987324_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87317_)
                                                  (cons _expr87290_ '()))
                                            (_E8729387305_))
                                        (_E8729387305_))))
                                (_E8729387305_)))))
                      (_E8729387305_)))))
          (_E8729287327_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87243_)
        (let* ((_e8724487254_ _stx87243_)
               (_E8724687258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8724487254_)))
               (_E8724587285_
                (lambda ()
                  (if (gx#stx-pair? _e8724487254_)
                      (let ((_e8724787262_ (gx#syntax-e _e8724487254_)))
                        (let ((_hd8724887265_ (##car _e8724787262_))
                              (_tl8724987267_ (##cdr _e8724787262_)))
                          (if (gx#stx-pair? _tl8724987267_)
                              (let ((_e8725087270_
                                     (gx#syntax-e _tl8724987267_)))
                                (let ((_hd8725187273_ (##car _e8725087270_))
                                      (_tl8725287275_ (##cdr _e8725087270_)))
                                  (let* ((_hd87278_ _hd8725187273_)
                                         (_body87280_ _tl8725287275_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87278_)
                                        (let ((_expanders87282_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87278_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87278_
                                              _expanders87282_)
                                             (gx#core-expand-local-block
                                              _stx87243_
                                              _body87280_))
                                           gx#current-expander-context
                                           (let ((__obj88664
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88664)
                                             __obj88664)))
                                        (_E8724687258_)))))
                              (_E8724687258_))))
                      (_E8724687258_)))))
          (_E8724587285_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87192_)
        (let* ((_e8719387203_ _stx87192_)
               (_E8719587207_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8719387203_)))
               (_E8719487239_
                (lambda ()
                  (if (gx#stx-pair? _e8719387203_)
                      (let ((_e8719687211_ (gx#syntax-e _e8719387203_)))
                        (let ((_hd8719787214_ (##car _e8719687211_))
                              (_tl8719887216_ (##cdr _e8719687211_)))
                          (if (gx#stx-pair? _tl8719887216_)
                              (let ((_e8719987219_
                                     (gx#syntax-e _tl8719887216_)))
                                (let ((_hd8720087222_ (##car _e8719987219_))
                                      (_tl8720187224_ (##cdr _e8719987219_)))
                                  (let* ((_hd87227_ _hd8720087222_)
                                         (_body87229_ _tl8720187224_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87227_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87227_
                                            (make-list__%
                                             (gx#stx-length _hd87227_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8723187234_
                                                     _g8723287236_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8723187234_
                                               _g8723287236_
                                               '#t))
                                            _hd87227_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87227_))
                                           (gx#core-expand-local-block
                                            _stx87192_
                                            _body87229_))
                                         gx#current-expander-context
                                         (let ((__obj88665
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88665)
                                           __obj88665))
                                        (_E8719587207_)))))
                              (_E8719587207_))))
                      (_E8719587207_)))))
          (_E8719487239_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87149_)
        (if (gx#stx-list? _stx87149_)
            (gx#stx-andmap
             (lambda (_bind87151_)
               (let* ((_e8715287162_ _bind87151_)
                      (_E8715487166_ (lambda () '#f))
                      (_E8715387188_
                       (lambda ()
                         (if (gx#stx-pair? _e8715287162_)
                             (let ((_e8715587170_ (gx#syntax-e _e8715287162_)))
                               (let ((_hd8715687173_ (##car _e8715587170_))
                                     (_tl8715787175_ (##cdr _e8715587170_)))
                                 (let ((_hd87178_ _hd8715687173_))
                                   (if (gx#stx-pair? _tl8715787175_)
                                       (let ((_e8715887180_
                                              (gx#syntax-e _tl8715787175_)))
                                         (let ((_hd8715987183_
                                                (##car _e8715887180_))
                                               (_tl8716087185_
                                                (##cdr _e8715887180_)))
                                           (if (gx#stx-null? _tl8716087185_)
                                               (if '#t
                                                   (gx#identifier? _hd87178_)
                                                   (_E8715487166_))
                                               (_E8715487166_))))
                                       (_E8715487166_)))))
                             (_E8715487166_)))))
                 (_E8715387188_)))
             _stx87149_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87106_)
        (let* ((_e8710787117_ _bind87106_)
               (_E8710987121_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8710787117_)))
               (_E8710887145_
                (lambda ()
                  (if (gx#stx-pair? _e8710787117_)
                      (let ((_e8711087125_ (gx#syntax-e _e8710787117_)))
                        (let ((_hd8711187128_ (##car _e8711087125_))
                              (_tl8711287130_ (##cdr _e8711087125_)))
                          (if (gx#stx-pair? _tl8711287130_)
                              (let ((_e8711387133_
                                     (gx#syntax-e _tl8711287130_)))
                                (let ((_hd8711487136_ (##car _e8711387133_))
                                      (_tl8711587138_ (##cdr _e8711387133_)))
                                  (let ((_expr87141_ _hd8711487136_))
                                    (if (gx#stx-null? _tl8711587138_)
                                        (if '#t
                                            (let ((_g88674_
                                                   (gx#core-expand-expression+1
                                                    _expr87141_)))
                                              (begin
                                                (let ((_g88675_
                                                       (if (##values? _g88674_)
                                                           (##vector-length
                                                            _g88674_)
                                                           1)))
                                                  (if (not (##fx= _g88675_ 2))
                                                      (error "Context expects 2 values"
                                                             _g88675_)))
                                                (let ((_e87143_
                                                       (##vector-ref
                                                        _g88674_
                                                        1)))
                                                  _e87143_)))
                                            (_E8710987121_))
                                        (_E8710987121_)))))
                              (_E8710987121_))))
                      (_E8710987121_)))))
          (_E8710887145_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87051_ _e87052_ _rebind?87053_)
        (let* ((_e8705487064_ _bind87051_)
               (_E8705687068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8705487064_)))
               (_E8705587090_
                (lambda ()
                  (if (gx#stx-pair? _e8705487064_)
                      (let ((_e8705787072_ (gx#syntax-e _e8705487064_)))
                        (let ((_hd8705887075_ (##car _e8705787072_))
                              (_tl8705987077_ (##cdr _e8705787072_)))
                          (let ((_id87080_ _hd8705887075_))
                            (if (gx#stx-pair? _tl8705987077_)
                                (let ((_e8706087082_
                                       (gx#syntax-e _tl8705987077_)))
                                  (let ((_hd8706187085_ (##car _e8706087082_))
                                        (_tl8706287087_ (##cdr _e8706087082_)))
                                    (if (gx#stx-null? _tl8706287087_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87080_
                                             _e87052_
                                             _rebind?87053_)
                                            (_E8705687068_))
                                        (_E8705687068_))))
                                (_E8705687068_)))))
                      (_E8705687068_)))))
          (_E8705587090_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87097_ _e87098_)
        (let ((_rebind?87100_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87097_
           _e87098_
           _rebind?87100_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g88677_
        (let ((_g88676_ (##length _g88677_)))
          (cond ((##fx= _g88676_ 2)
                 (apply (lambda (_bind87097_ _e87098_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87097_
                           _e87098_))
                        _g88677_))
                ((##fx= _g88676_ 3)
                 (apply (lambda (_bind87102_ _e87103_ _rebind?87104_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87102_
                           _e87103_
                           _rebind?87104_))
                        _g88677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g88677_))))))
    (define gx#core-expand-expression%
      (lambda (_stx87009_)
        (let* ((_e8701087020_ _stx87009_)
               (_E8701287024_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8701087020_)))
               (_E8701187046_
                (lambda ()
                  (if (gx#stx-pair? _e8701087020_)
                      (let ((_e8701387028_ (gx#syntax-e _e8701087020_)))
                        (let ((_hd8701487031_ (##car _e8701387028_))
                              (_tl8701587033_ (##cdr _e8701387028_)))
                          (if (gx#stx-pair? _tl8701587033_)
                              (let ((_e8701687036_
                                     (gx#syntax-e _tl8701587033_)))
                                (let ((_hd8701787039_ (##car _e8701687036_))
                                      (_tl8701887041_ (##cdr _e8701687036_)))
                                  (let ((_expr87044_ _hd8701787039_))
                                    (if (gx#stx-null? _tl8701887041_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87044_)
                                            (_E8701287024_))
                                        (_E8701287024_)))))
                              (_E8701287024_))))
                      (_E8701287024_)))))
          (_E8701187046_))))
    (define gx#core-expand-quote%
      (lambda (_stx86968_)
        (let* ((_e8696986979_ _stx86968_)
               (_E8697186983_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8696986979_)))
               (_E8697087005_
                (lambda ()
                  (if (gx#stx-pair? _e8696986979_)
                      (let ((_e8697286987_ (gx#syntax-e _e8696986979_)))
                        (let ((_hd8697386990_ (##car _e8697286987_))
                              (_tl8697486992_ (##cdr _e8697286987_)))
                          (if (gx#stx-pair? _tl8697486992_)
                              (let ((_e8697586995_
                                     (gx#syntax-e _tl8697486992_)))
                                (let ((_hd8697686998_ (##car _e8697586995_))
                                      (_tl8697787000_ (##cdr _e8697586995_)))
                                  (let ((_e87003_ _hd8697686998_))
                                    (if (gx#stx-null? _tl8697787000_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e87003_)
                                                         '()))
                                             (gx#stx-source _stx86968_))
                                            (_E8697186983_))
                                        (_E8697186983_)))))
                              (_E8697186983_))))
                      (_E8697186983_)))))
          (_E8697087005_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86927_)
        (let* ((_e8692886938_ _stx86927_)
               (_E8693086942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8692886938_)))
               (_E8692986964_
                (lambda ()
                  (if (gx#stx-pair? _e8692886938_)
                      (let ((_e8693186946_ (gx#syntax-e _e8692886938_)))
                        (let ((_hd8693286949_ (##car _e8693186946_))
                              (_tl8693386951_ (##cdr _e8693186946_)))
                          (if (gx#stx-pair? _tl8693386951_)
                              (let ((_e8693486954_
                                     (gx#syntax-e _tl8693386951_)))
                                (let ((_hd8693586957_ (##car _e8693486954_))
                                      (_tl8693686959_ (##cdr _e8693486954_)))
                                  (let ((_e86962_ _hd8693586957_))
                                    (if (gx#stx-null? _tl8693686959_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e86962_)
                                                         '()))
                                             (gx#stx-source _stx86927_))
                                            (_E8693086942_))
                                        (_E8693086942_)))))
                              (_E8693086942_))))
                      (_E8693086942_)))))
          (_E8692986964_))))
    (define gx#core-expand-call%
      (lambda (_stx86884_)
        (let* ((_e8688586895_ _stx86884_)
               (_E8688786899_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8688586895_)))
               (_E8688686923_
                (lambda ()
                  (if (gx#stx-pair? _e8688586895_)
                      (let ((_e8688886903_ (gx#syntax-e _e8688586895_)))
                        (let ((_hd8688986906_ (##car _e8688886903_))
                              (_tl8689086908_ (##cdr _e8688886903_)))
                          (if (gx#stx-pair? _tl8689086908_)
                              (let ((_e8689186911_
                                     (gx#syntax-e _tl8689086908_)))
                                (let ((_hd8689286914_ (##car _e8689186911_))
                                      (_tl8689386916_ (##cdr _e8689186911_)))
                                  (let* ((_rator86919_ _hd8689286914_)
                                         (_args86921_ _tl8689386916_))
                                    (if (gx#stx-list? _args86921_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86919_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86921_))
                                         (gx#stx-source _stx86884_))
                                        (_E8688786899_)))))
                              (_E8688786899_))))
                      (_E8688786899_)))))
          (_E8688686923_))))
    (define gx#core-expand-if%
      (lambda (_stx86817_)
        (let* ((_e8681886834_ _stx86817_)
               (_E8682086838_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8681886834_)))
               (_E8681986880_
                (lambda ()
                  (if (gx#stx-pair? _e8681886834_)
                      (let ((_e8682186842_ (gx#syntax-e _e8681886834_)))
                        (let ((_hd8682286845_ (##car _e8682186842_))
                              (_tl8682386847_ (##cdr _e8682186842_)))
                          (if (gx#stx-pair? _tl8682386847_)
                              (let ((_e8682486850_
                                     (gx#syntax-e _tl8682386847_)))
                                (let ((_hd8682586853_ (##car _e8682486850_))
                                      (_tl8682686855_ (##cdr _e8682486850_)))
                                  (let ((_test86858_ _hd8682586853_))
                                    (if (gx#stx-pair? _tl8682686855_)
                                        (let ((_e8682786860_
                                               (gx#syntax-e _tl8682686855_)))
                                          (let ((_hd8682886863_
                                                 (##car _e8682786860_))
                                                (_tl8682986865_
                                                 (##cdr _e8682786860_)))
                                            (let ((_K86868_ _hd8682886863_))
                                              (if (gx#stx-pair? _tl8682986865_)
                                                  (let ((_e8683086870_
                                                         (gx#syntax-e
                                                          _tl8682986865_)))
                                                    (let ((_hd8683186873_
                                                           (##car _e8683086870_))
                                                          (_tl8683286875_
                                                           (##cdr _e8683086870_)))
                                                      (let ((_E86878_
                                                             _hd8683186873_))
                                                        (if (gx#stx-null?
                                                             _tl8683286875_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86858_)
                                     (cons (gx#core-expand-expression _K86868_)
                                           (cons (gx#core-expand-expression
                                                  _E86878_)
                                                 '()))))
                         (gx#stx-source _stx86817_))
                        (_E8682086838_))
                    (_E8682086838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8682086838_)))))
                                        (_E8682086838_)))))
                              (_E8682086838_))))
                      (_E8682086838_)))))
          (_E8681986880_))))
    (define gx#core-expand-ref%
      (lambda (_stx86776_)
        (let* ((_e8677786787_ _stx86776_)
               (_E8677986791_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8677786787_)))
               (_E8677886813_
                (lambda ()
                  (if (gx#stx-pair? _e8677786787_)
                      (let ((_e8678086795_ (gx#syntax-e _e8677786787_)))
                        (let ((_hd8678186798_ (##car _e8678086795_))
                              (_tl8678286800_ (##cdr _e8678086795_)))
                          (if (gx#stx-pair? _tl8678286800_)
                              (let ((_e8678386803_
                                     (gx#syntax-e _tl8678286800_)))
                                (let ((_hd8678486806_ (##car _e8678386803_))
                                      (_tl8678586808_ (##cdr _e8678386803_)))
                                  (let ((_id86811_ _hd8678486806_))
                                    (if (gx#stx-null? _tl8678586808_)
                                        (if (gx#identifier? _id86811_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id86811_
                                                          _stx86776_)
                                                         '()))
                                             (gx#stx-source _stx86776_))
                                            (_E8677986791_))
                                        (_E8677986791_)))))
                              (_E8677986791_))))
                      (_E8677986791_)))))
          (_E8677886813_))))
    (define gx#core-expand-setq%
      (lambda (_stx86722_)
        (let* ((_e8672386736_ _stx86722_)
               (_E8672586740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8672386736_)))
               (_E8672486772_
                (lambda ()
                  (if (gx#stx-pair? _e8672386736_)
                      (let ((_e8672686744_ (gx#syntax-e _e8672386736_)))
                        (let ((_hd8672786747_ (##car _e8672686744_))
                              (_tl8672886749_ (##cdr _e8672686744_)))
                          (if (gx#stx-pair? _tl8672886749_)
                              (let ((_e8672986752_
                                     (gx#syntax-e _tl8672886749_)))
                                (let ((_hd8673086755_ (##car _e8672986752_))
                                      (_tl8673186757_ (##cdr _e8672986752_)))
                                  (let ((_id86760_ _hd8673086755_))
                                    (if (gx#stx-pair? _tl8673186757_)
                                        (let ((_e8673286762_
                                               (gx#syntax-e _tl8673186757_)))
                                          (let ((_hd8673386765_
                                                 (##car _e8673286762_))
                                                (_tl8673486767_
                                                 (##cdr _e8673286762_)))
                                            (let ((_expr86770_ _hd8673386765_))
                                              (if (gx#stx-null? _tl8673486767_)
                                                  (if (gx#identifier?
                                                       _id86760_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id86760_
                            _stx86722_)
                           (cons (gx#core-expand-expression _expr86770_) '())))
               (gx#stx-source _stx86722_))
              (_E8672586740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8672586740_)))))
                                        (_E8672586740_)))))
                              (_E8672586740_))))
                      (_E8672586740_)))))
          (_E8672486772_))))
    (define gx#macro-expand-extern
      (lambda (_stx86570_)
        (letrec ((_generate86572_
                  (lambda (_body86602_)
                    (let _lp86604_ ((_rest86606_ _body86602_)
                                    (_ns86607_ (gx#core-context-namespace__0))
                                    (_r86608_ '()))
                      (let* ((_e8660986624_ _rest86606_)
                             (_E8662286628_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8660986624_)))
                             (_E8661886632_
                              (lambda ()
                                (if (gx#stx-null? _e8660986624_)
                                    (if '#t (reverse _r86608_) (_E8662286628_))
                                    (_E8662286628_))))
                             (_E8661186689_
                              (lambda ()
                                (if (gx#stx-pair? _e8660986624_)
                                    (let ((_e8661986636_
                                           (gx#syntax-e _e8660986624_)))
                                      (let ((_hd8662086639_
                                             (##car _e8661986636_))
                                            (_tl8662186641_
                                             (##cdr _e8661986636_)))
                                        (let* ((_hd86644_ _hd8662086639_)
                                               (_rest86646_ _tl8662186641_))
                                          (if '#t
                                              (if (gx#identifier? _hd86644_)
                                                  (_lp86604_
                                                   _rest86646_
                                                   _ns86607_
                                                   (cons (cons _hd86644_
                                                               (cons (if _ns86607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd86644_
                                  _ns86607_
                                  '"#"
                                  _hd86644_)
                                 _hd86644_)
                             '()))
                 _r86608_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8664786657_
                                                          _hd86644_)
                                                         (_E8664986661_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8664786657_)))
                                                         (_E8664886685_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8664786657_)
                        (let ((_e8665086665_ (gx#syntax-e _e8664786657_)))
                          (let ((_hd8665186668_ (##car _e8665086665_))
                                (_tl8665286670_ (##cdr _e8665086665_)))
                            (let ((_id86673_ _hd8665186668_))
                              (if (gx#stx-pair? _tl8665286670_)
                                  (let ((_e8665386675_
                                         (gx#syntax-e _tl8665286670_)))
                                    (let ((_hd8665486678_
                                           (##car _e8665386675_))
                                          (_tl8665586680_
                                           (##cdr _e8665386675_)))
                                      (let ((_eid86683_ _hd8665486678_))
                                        (if (gx#stx-null? _tl8665586680_)
                                            (if (and (gx#identifier? _id86673_)
                                                     (gx#identifier?
                                                      _eid86683_))
                                                (_lp86604_
                                                 _rest86646_
                                                 _ns86607_
                                                 (cons (cons _id86673_
                                                             (cons _eid86683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r86608_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8664986661_))
                                            (_E8664986661_)))))
                                  (_E8664986661_)))))
                        (_E8664986661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8664886685_)))
                                              (_E8661886632_)))))
                                    (_E8661886632_))))
                             (_E8661086718_
                              (lambda ()
                                (if (gx#stx-pair? _e8660986624_)
                                    (let ((_e8661286693_
                                           (gx#syntax-e _e8660986624_)))
                                      (let ((_hd8661386696_
                                             (##car _e8661286693_))
                                            (_tl8661486698_
                                             (##cdr _e8661286693_)))
                                        (if (eq? (gx#stx-e _hd8661386696_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8661486698_)
                                                (let ((_e8661586701_
                                                       (gx#syntax-e
                                                        _tl8661486698_)))
                                                  (let ((_hd8661686704_
                                                         (##car _e8661586701_))
                                                        (_tl8661786706_
                                                         (##cdr _e8661586701_)))
                                                    (let* ((_ns86709_
                                                            _hd8661686704_)
                                                           (_rest86711_
                                                            _tl8661786706_))
                                                      (if '#t
                                                          (let ((_ns86716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns86709_)
                             (symbol->string (gx#stx-e _ns86709_))
                             (if (or (gx#stx-string? _ns86709_)
                                     (gx#stx-false? _ns86709_))
                                 (gx#stx-e _ns86709_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx86570_
                                  _ns86709_)))))
                    (_lp86604_ _rest86711_ _ns86716_ _r86608_))
                  (_E8661186689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8661186689_))
                                            (_E8661186689_))))
                                    (_E8661186689_)))))
                        (_E8661086718_))))))
          (let* ((_e8657386580_ _stx86570_)
                 (_E8657586584_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8657386580_)))
                 (_E8657486598_
                  (lambda ()
                    (if (gx#stx-pair? _e8657386580_)
                        (let ((_e8657686588_ (gx#syntax-e _e8657386580_)))
                          (let ((_hd8657786591_ (##car _e8657686588_))
                                (_tl8657886593_ (##cdr _e8657686588_)))
                            (let ((_body86596_ _tl8657886593_))
                              (if (gx#stx-list? _body86596_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate86572_ _body86596_))
                                  (_E8657586584_)))))
                        (_E8657586584_)))))
            (_E8657486598_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx86516_)
        (let* ((_e8651786530_ _stx86516_)
               (_E8651986534_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8651786530_)))
               (_E8651886566_
                (lambda ()
                  (if (gx#stx-pair? _e8651786530_)
                      (let ((_e8652086538_ (gx#syntax-e _e8651786530_)))
                        (let ((_hd8652186541_ (##car _e8652086538_))
                              (_tl8652286543_ (##cdr _e8652086538_)))
                          (if (gx#stx-pair? _tl8652286543_)
                              (let ((_e8652386546_
                                     (gx#syntax-e _tl8652286543_)))
                                (let ((_hd8652486549_ (##car _e8652386546_))
                                      (_tl8652586551_ (##cdr _e8652386546_)))
                                  (let ((_hd86554_ _hd8652486549_))
                                    (if (gx#stx-pair? _tl8652586551_)
                                        (let ((_e8652686556_
                                               (gx#syntax-e _tl8652586551_)))
                                          (let ((_hd8652786559_
                                                 (##car _e8652686556_))
                                                (_tl8652886561_
                                                 (##cdr _e8652686556_)))
                                            (let ((_expr86564_ _hd8652786559_))
                                              (if (gx#stx-null? _tl8652886561_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd86554_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd86554_)
                          (cons _expr86564_ '())))
              (_E8651986534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8651986534_)))))
                                        (_E8651986534_)))))
                              (_E8651986534_))))
                      (_E8651986534_)))))
          (_E8651886566_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx86462_)
        (let* ((_e8646386476_ _stx86462_)
               (_E8646586480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8646386476_)))
               (_E8646486512_
                (lambda ()
                  (if (gx#stx-pair? _e8646386476_)
                      (let ((_e8646686484_ (gx#syntax-e _e8646386476_)))
                        (let ((_hd8646786487_ (##car _e8646686484_))
                              (_tl8646886489_ (##cdr _e8646686484_)))
                          (if (gx#stx-pair? _tl8646886489_)
                              (let ((_e8646986492_
                                     (gx#syntax-e _tl8646886489_)))
                                (let ((_hd8647086495_ (##car _e8646986492_))
                                      (_tl8647186497_ (##cdr _e8646986492_)))
                                  (let ((_hd86500_ _hd8647086495_))
                                    (if (gx#stx-pair? _tl8647186497_)
                                        (let ((_e8647286502_
                                               (gx#syntax-e _tl8647186497_)))
                                          (let ((_hd8647386505_
                                                 (##car _e8647286502_))
                                                (_tl8647486507_
                                                 (##cdr _e8647286502_)))
                                            (let ((_expr86510_ _hd8647386505_))
                                              (if (gx#stx-null? _tl8647486507_)
                                                  (if (gx#identifier?
                                                       _hd86500_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd86500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr86510_ '())))
              (_E8646586480_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8646586480_)))))
                                        (_E8646586480_)))))
                              (_E8646586480_))))
                      (_E8646586480_)))))
          (_E8646486512_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx86408_)
        (let* ((_e8640986422_ _stx86408_)
               (_E8641186426_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8640986422_)))
               (_E8641086458_
                (lambda ()
                  (if (gx#stx-pair? _e8640986422_)
                      (let ((_e8641286430_ (gx#syntax-e _e8640986422_)))
                        (let ((_hd8641386433_ (##car _e8641286430_))
                              (_tl8641486435_ (##cdr _e8641286430_)))
                          (if (gx#stx-pair? _tl8641486435_)
                              (let ((_e8641586438_
                                     (gx#syntax-e _tl8641486435_)))
                                (let ((_hd8641686441_ (##car _e8641586438_))
                                      (_tl8641786443_ (##cdr _e8641586438_)))
                                  (let ((_id86446_ _hd8641686441_))
                                    (if (gx#stx-pair? _tl8641786443_)
                                        (let ((_e8641886448_
                                               (gx#syntax-e _tl8641786443_)))
                                          (let ((_hd8641986451_
                                                 (##car _e8641886448_))
                                                (_tl8642086453_
                                                 (##cdr _e8641886448_)))
                                            (let ((_alias-id86456_
                                                   _hd8641986451_))
                                              (if (gx#stx-null? _tl8642086453_)
                                                  (if (and (gx#identifier?
                                                            _id86446_)
                                                           (gx#identifier?
                                                            _alias-id86456_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id86446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id86456_ '())))
              (_E8641186426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8641186426_)))))
                                        (_E8641186426_)))))
                              (_E8641186426_))))
                      (_E8641186426_)))))
          (_E8641086458_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86365_)
        (let* ((_e8636686376_ _stx86365_)
               (_E8636886380_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8636686376_)))
               (_E8636786404_
                (lambda ()
                  (if (gx#stx-pair? _e8636686376_)
                      (let ((_e8636986384_ (gx#syntax-e _e8636686376_)))
                        (let ((_hd8637086387_ (##car _e8636986384_))
                              (_tl8637186389_ (##cdr _e8636986384_)))
                          (if (gx#stx-pair? _tl8637186389_)
                              (let ((_e8637286392_
                                     (gx#syntax-e _tl8637186389_)))
                                (let ((_hd8637386395_ (##car _e8637286392_))
                                      (_tl8637486397_ (##cdr _e8637286392_)))
                                  (let* ((_hd86400_ _hd8637386395_)
                                         (_body86402_ _tl8637486397_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86400_)
                                             (gx#stx-list? _body86402_)
                                             (not (gx#stx-null? _body86402_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86400_)
                                         _body86402_)
                                        (_E8636886380_)))))
                              (_E8636886380_))))
                      (_E8636886380_)))))
          (_E8636786404_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86301_)
        (letrec ((_generate86303_
                  (lambda (_clause86333_)
                    (let* ((_e8633486341_ _clause86333_)
                           (_E8633686345_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86301_
                               _clause86333_)))
                           (_E8633586361_
                            (lambda ()
                              (if (gx#stx-pair? _e8633486341_)
                                  (let ((_e8633786349_
                                         (gx#syntax-e _e8633486341_)))
                                    (let ((_hd8633886352_
                                           (##car _e8633786349_))
                                          (_tl8633986354_
                                           (##cdr _e8633786349_)))
                                      (let* ((_hd86357_ _hd8633886352_)
                                             (_body86359_ _tl8633986354_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86357_)
                                                 (gx#stx-list? _body86359_)
                                                 (not (gx#stx-null?
                                                       _body86359_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86357_)
                                                   _body86359_)
                                             (gx#stx-source _clause86333_))
                                            (_E8633686345_)))))
                                  (_E8633686345_)))))
                      (_E8633586361_)))))
          (let* ((_e8630486311_ _stx86301_)
                 (_E8630686315_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8630486311_)))
                 (_E8630586329_
                  (lambda ()
                    (if (gx#stx-pair? _e8630486311_)
                        (let ((_e8630786319_ (gx#syntax-e _e8630486311_)))
                          (let ((_hd8630886322_ (##car _e8630786319_))
                                (_tl8630986324_ (##cdr _e8630786319_)))
                            (let ((_clauses86327_ _tl8630986324_))
                              (if (gx#stx-list? _clauses86327_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86303_
                                    _clauses86327_))
                                  (_E8630686315_)))))
                        (_E8630686315_)))))
            (_E8630586329_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86202_ _form86203_)
        (letrec ((_generate86205_
                  (lambda (_bind86248_)
                    (let* ((_e8624986259_ _bind86248_)
                           (_E8625186263_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86202_
                               _bind86248_)))
                           (_E8625086287_
                            (lambda ()
                              (if (gx#stx-pair? _e8624986259_)
                                  (let ((_e8625286267_
                                         (gx#syntax-e _e8624986259_)))
                                    (let ((_hd8625386270_
                                           (##car _e8625286267_))
                                          (_tl8625486272_
                                           (##cdr _e8625286267_)))
                                      (let ((_ids86275_ _hd8625386270_))
                                        (if (gx#stx-pair? _tl8625486272_)
                                            (let ((_e8625586277_
                                                   (gx#syntax-e
                                                    _tl8625486272_)))
                                              (let ((_hd8625686280_
                                                     (##car _e8625586277_))
                                                    (_tl8625786282_
                                                     (##cdr _e8625586277_)))
                                                (let ((_expr86285_
                                                       _hd8625686280_))
                                                  (if (gx#stx-null?
                                                       _tl8625786282_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86275_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86275_)
                        (cons _expr86285_ '()))
                  (_E8625186263_))
              (_E8625186263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8625186263_)))))
                                  (_E8625186263_)))))
                      (_E8625086287_)))))
          (let* ((_e8620686216_ _stx86202_)
                 (_E8620886220_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8620686216_)))
                 (_E8620786244_
                  (lambda ()
                    (if (gx#stx-pair? _e8620686216_)
                        (let ((_e8620986224_ (gx#syntax-e _e8620686216_)))
                          (let ((_hd8621086227_ (##car _e8620986224_))
                                (_tl8621186229_ (##cdr _e8620986224_)))
                            (if (gx#stx-pair? _tl8621186229_)
                                (let ((_e8621286232_
                                       (gx#syntax-e _tl8621186229_)))
                                  (let ((_hd8621386235_ (##car _e8621286232_))
                                        (_tl8621486237_ (##cdr _e8621286232_)))
                                    (let* ((_hd86240_ _hd8621386235_)
                                           (_body86242_ _tl8621486237_))
                                      (if (and (gx#stx-list? _hd86240_)
                                               (gx#stx-list? _body86242_)
                                               (not (gx#stx-null?
                                                     _body86242_)))
                                          (gx#core-cons*
                                           _form86203_
                                           (gx#stx-map1
                                            _generate86205_
                                            _hd86240_)
                                           _body86242_)
                                          (_E8620886220_)))))
                                (_E8620886220_))))
                        (_E8620886220_)))))
            (_E8620786244_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86294_)
        (let ((_form86296_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86294_ _form86296_))))
    (define gx#macro-expand-let-values
      (lambda _g88679_
        (let ((_g88678_ (##length _g88679_)))
          (cond ((##fx= _g88678_ 1)
                 (apply (lambda (_stx86294_)
                          (gx#macro-expand-let-values__0 _stx86294_))
                        _g88679_))
                ((##fx= _g88678_ 2)
                 (apply (lambda (_stx86298_ _form86299_)
                          (gx#macro-expand-let-values__%
                           _stx86298_
                           _form86299_))
                        _g88679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g88679_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86199_)
        (gx#macro-expand-let-values__% _stx86199_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86197_)
        (gx#macro-expand-let-values__% _stx86197_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86088_)
        (let* ((_e8608986115_ _stx86088_)
               (_E8610186119_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8608986115_)))
               (_E8609186161_
                (lambda ()
                  (if (gx#stx-pair? _e8608986115_)
                      (let ((_e8610286123_ (gx#syntax-e _e8608986115_)))
                        (let ((_hd8610386126_ (##car _e8610286123_))
                              (_tl8610486128_ (##cdr _e8610286123_)))
                          (if (gx#stx-pair? _tl8610486128_)
                              (let ((_e8610586131_
                                     (gx#syntax-e _tl8610486128_)))
                                (let ((_hd8610686134_ (##car _e8610586131_))
                                      (_tl8610786136_ (##cdr _e8610586131_)))
                                  (let ((_test86139_ _hd8610686134_))
                                    (if (gx#stx-pair? _tl8610786136_)
                                        (let ((_e8610886141_
                                               (gx#syntax-e _tl8610786136_)))
                                          (let ((_hd8610986144_
                                                 (##car _e8610886141_))
                                                (_tl8611086146_
                                                 (##cdr _e8610886141_)))
                                            (let ((_K86149_ _hd8610986144_))
                                              (if (gx#stx-pair? _tl8611086146_)
                                                  (let ((_e8611186151_
                                                         (gx#syntax-e
                                                          _tl8611086146_)))
                                                    (let ((_hd8611286154_
                                                           (##car _e8611186151_))
                                                          (_tl8611386156_
                                                           (##cdr _e8611186151_)))
                                                      (let ((_E86159_
                                                             _hd8611286154_))
                                                        (if (gx#stx-null?
                                                             _tl8611386156_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86139_
                         _K86149_
                         _E86159_)
                        (_E8610186119_))
                    (_E8610186119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8610186119_)))))
                                        (_E8610186119_)))))
                              (_E8610186119_))))
                      (_E8610186119_))))
               (_E8609086193_
                (lambda ()
                  (if (gx#stx-pair? _e8608986115_)
                      (let ((_e8609286165_ (gx#syntax-e _e8608986115_)))
                        (let ((_hd8609386168_ (##car _e8609286165_))
                              (_tl8609486170_ (##cdr _e8609286165_)))
                          (if (gx#stx-pair? _tl8609486170_)
                              (let ((_e8609586173_
                                     (gx#syntax-e _tl8609486170_)))
                                (let ((_hd8609686176_ (##car _e8609586173_))
                                      (_tl8609786178_ (##cdr _e8609586173_)))
                                  (let ((_test86181_ _hd8609686176_))
                                    (if (gx#stx-pair? _tl8609786178_)
                                        (let ((_e8609886183_
                                               (gx#syntax-e _tl8609786178_)))
                                          (let ((_hd8609986186_
                                                 (##car _e8609886183_))
                                                (_tl8610086188_
                                                 (##cdr _e8609886183_)))
                                            (let ((_K86191_ _hd8609986186_))
                                              (if (gx#stx-null? _tl8610086188_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86181_
                                                       _K86191_
                                                       '#!void)
                                                      (_E8609186161_))
                                                  (_E8609186161_)))))
                                        (_E8609186161_)))))
                              (_E8609186161_))))
                      (_E8609186161_)))))
          (_E8609086193_))))
    (define gx#free-identifier=?
      (lambda (_xid86076_ _yid86077_)
        (let ((_xe86079_ (gx#resolve-identifier__0 _xid86076_))
              (_ye86080_ (gx#resolve-identifier__0 _yid86077_)))
          (if (and _xe86079_ _ye86080_)
              (let ((_$e86082_ (eq? _xe86079_ _ye86080_)))
                (if _$e86082_
                    _$e86082_
                    (if (##structure-instance-of? _xe86079_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86080_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86079_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86080_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86079_ _ye86080_)
                  '#f
                  (gx#stx-eq? _xid86076_ _yid86077_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86060_ _yid86061_)
        (letrec ((_context86063_
                  (lambda (_e86074_)
                    (if (##structure-direct-instance-of?
                         _e86074_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86074_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86064_
                  (lambda (_e86072_)
                    (if (symbol? _e86072_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86072_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86072_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86072_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86065_
                  (lambda (_e86070_)
                    (if (symbol? _e86070_)
                        _e86070_
                        (gx#syntax-local-unwrap _e86070_)))))
          (let ((_x86067_ (_unwrap86065_ _xid86060_))
                (_y86068_ (_unwrap86065_ _yid86061_)))
            (if (gx#stx-eq? _x86067_ _y86068_)
                (if (eq? (_context86063_ _x86067_) (_context86063_ _y86068_))
                    (equal? (_marks86064_ _x86067_) (_marks86064_ _y86068_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86058_)
        (if (gx#identifier? _stx86058_)
            (gx#core-identifier=? _stx86058_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86056_)
        (if (gx#identifier? _stx86056_)
            (gx#core-identifier=? _stx86056_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86054_)
        (if (gx#identifier? _x86054_)
            (if (not (gx#underscore? _x86054_)) _x86054_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx86000_ _where86001_)
        (let _lp86003_ ((_rest86005_ (gx#syntax->list _stx86000_)))
          (let* ((_rest8600686014_ _rest86005_)
                 (_else8600886022_ (lambda () '#t))
                 (_K8601086032_
                  (lambda (_rest86025_ _hd86026_)
                    (if (not (gx#identifier? _hd86026_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where86001_
                         _hd86026_)
                        (if (find (lambda (_g8602786029_)
                                    (gx#bound-identifier=?
                                     _g8602786029_
                                     _hd86026_))
                                  _rest86025_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where86001_
                             _hd86026_)
                            (_lp86003_ _rest86025_))))))
            (if (##pair? _rest8600686014_)
                (let ((_hd8601186035_ (##car _rest8600686014_))
                      (_tl8601286037_ (##cdr _rest8600686014_)))
                  (let* ((_hd86040_ _hd8601186035_)
                         (_rest86042_ _tl8601286037_))
                    (_K8601086032_ _rest86042_ _hd86040_)))
                (_else8600886022_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86047_)
        (let ((_where86049_ _stx86047_))
          (gx#check-duplicate-identifiers__% _stx86047_ _where86049_))))
    (define gx#check-duplicate-identifiers
      (lambda _g88681_
        (let ((_g88680_ (##length _g88681_)))
          (cond ((##fx= _g88680_ 1)
                 (apply (lambda (_stx86047_)
                          (gx#check-duplicate-identifiers__0 _stx86047_))
                        _g88681_))
                ((##fx= _g88680_ 2)
                 (apply (lambda (_stx86051_ _where86052_)
                          (gx#check-duplicate-identifiers__%
                           _stx86051_
                           _where86052_))
                        _g88681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g88681_))))))
    (define gx#core-bind-values?
      (lambda (_stx85992_)
        (gx#stx-andmap
         (lambda (_x85994_)
           (let ((_$e85996_ (gx#identifier? _x85994_)))
             (if _$e85996_ _$e85996_ (gx#stx-false? _x85994_))))
         _stx85992_)))
    (define gx#core-bind-values!__%
      (lambda (_stx85956_ _rebind?85957_ _phi85958_ _ctx85959_)
        (gx#stx-for-each1
         (lambda (_id85961_)
           (if (gx#identifier? _id85961_)
               (gx#core-bind-runtime!__%
                _id85961_
                _rebind?85957_
                _phi85958_
                _ctx85959_)
               '#!void))
         _stx85956_)))
    (define gx#core-bind-values!__0
      (lambda (_stx85966_)
        (let* ((_rebind?85968_ '#f)
               (_phi85970_ (gx#current-expander-phi))
               (_ctx85972_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85966_
           _rebind?85968_
           _phi85970_
           _ctx85972_))))
    (define gx#core-bind-values!__1
      (lambda (_stx85974_ _rebind?85975_)
        (let* ((_phi85977_ (gx#current-expander-phi))
               (_ctx85979_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85974_
           _rebind?85975_
           _phi85977_
           _ctx85979_))))
    (define gx#core-bind-values!__2
      (lambda (_stx85981_ _rebind?85982_ _phi85983_)
        (let ((_ctx85985_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85981_
           _rebind?85982_
           _phi85983_
           _ctx85985_))))
    (define gx#core-bind-values!
      (lambda _g88683_
        (let ((_g88682_ (##length _g88683_)))
          (cond ((##fx= _g88682_ 1)
                 (apply (lambda (_stx85966_)
                          (gx#core-bind-values!__0 _stx85966_))
                        _g88683_))
                ((##fx= _g88682_ 2)
                 (apply (lambda (_stx85974_ _rebind?85975_)
                          (gx#core-bind-values!__1 _stx85974_ _rebind?85975_))
                        _g88683_))
                ((##fx= _g88682_ 3)
                 (apply (lambda (_stx85981_ _rebind?85982_ _phi85983_)
                          (gx#core-bind-values!__2
                           _stx85981_
                           _rebind?85982_
                           _phi85983_))
                        _g88683_))
                ((##fx= _g88682_ 4)
                 (apply (lambda (_stx85987_
                                 _rebind?85988_
                                 _phi85989_
                                 _ctx85990_)
                          (gx#core-bind-values!__%
                           _stx85987_
                           _rebind?85988_
                           _phi85989_
                           _ctx85990_))
                        _g88683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g88683_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx85951_)
        (gx#stx-map1
         (lambda (_x85953_)
           (if (gx#identifier? _x85953_)
               (gx#core-quote-syntax__0 _x85953_)
               '#f))
         _stx85951_)))
    (define gx#core-runtime-ref?
      (lambda (_stx85944_)
        (if (gx#identifier? _stx85944_)
            (let* ((_bind85946_ (gx#resolve-identifier__0 _stx85944_))
                   (_$e85948_ (not _bind85946_)))
              (if _$e85948_
                  _$e85948_
                  (##structure-instance-of?
                   _bind85946_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id85936_ _form85937_)
        (let ((_bind85939_ (gx#resolve-identifier__0 _id85936_)))
          (if (##structure-instance-of? _bind85939_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id85936_)
              (if (not _bind85939_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id85936_)))
                      (gx#core-quote-syntax__0 _id85936_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form85937_
                       _id85936_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form85937_
                   _id85936_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85895_ _rebind?85896_ _phi85897_ _ctx85898_)
        (let* ((_key85900_ (gx#core-identifier-key _id85895_))
               (_eid85902_
                (gx#make-binding-id__% _key85900_ '#f _phi85897_ _ctx85898_))
               (_bind85904_
                (if (##structure-instance-of? _ctx85898_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85902_
                     _key85900_
                     _phi85897_
                     _ctx85898_)
                    (if (##structure-instance-of?
                         _ctx85898_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85902_
                         _key85900_
                         _phi85897_)
                        (if (##structure-instance-of?
                             _ctx85898_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85902_
                             _key85900_
                             _phi85897_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85902_
                             _key85900_
                             _phi85897_))))))
          (gx#bind-identifier!__%
           _id85895_
           _bind85904_
           _rebind?85896_
           _phi85897_
           _ctx85898_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85910_)
        (let* ((_rebind?85912_ '#f)
               (_phi85914_ (gx#current-expander-phi))
               (_ctx85916_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85910_
           _rebind?85912_
           _phi85914_
           _ctx85916_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85918_ _rebind?85919_)
        (let* ((_phi85921_ (gx#current-expander-phi))
               (_ctx85923_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85918_
           _rebind?85919_
           _phi85921_
           _ctx85923_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85925_ _rebind?85926_ _phi85927_)
        (let ((_ctx85929_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85925_
           _rebind?85926_
           _phi85927_
           _ctx85929_))))
    (define gx#core-bind-runtime!
      (lambda _g88685_
        (let ((_g88684_ (##length _g88685_)))
          (cond ((##fx= _g88684_ 1)
                 (apply (lambda (_id85910_)
                          (gx#core-bind-runtime!__0 _id85910_))
                        _g88685_))
                ((##fx= _g88684_ 2)
                 (apply (lambda (_id85918_ _rebind?85919_)
                          (gx#core-bind-runtime!__1 _id85918_ _rebind?85919_))
                        _g88685_))
                ((##fx= _g88684_ 3)
                 (apply (lambda (_id85925_ _rebind?85926_ _phi85927_)
                          (gx#core-bind-runtime!__2
                           _id85925_
                           _rebind?85926_
                           _phi85927_))
                        _g88685_))
                ((##fx= _g88684_ 4)
                 (apply (lambda (_id85931_
                                 _rebind?85932_
                                 _phi85933_
                                 _ctx85934_)
                          (gx#core-bind-runtime!__%
                           _id85931_
                           _rebind?85932_
                           _phi85933_
                           _ctx85934_))
                        _g88685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g88685_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85850_ _eid85851_ _rebind?85852_ _phi85853_ _ctx85854_)
        (let* ((_key85856_ (gx#core-identifier-key _id85850_))
               (_bind85858_
                (if (##structure-instance-of? _ctx85854_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85851_
                     _key85856_
                     _phi85853_
                     _ctx85854_)
                    (if (##structure-instance-of?
                         _ctx85854_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85851_
                         _key85856_
                         _phi85853_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85851_
                         _key85856_
                         _phi85853_)))))
          (gx#bind-identifier!__%
           _id85850_
           _bind85858_
           _rebind?85852_
           _phi85853_
           _ctx85854_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85864_ _eid85865_)
        (let* ((_rebind?85867_ '#f)
               (_phi85869_ (gx#current-expander-phi))
               (_ctx85871_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85864_
           _eid85865_
           _rebind?85867_
           _phi85869_
           _ctx85871_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85873_ _eid85874_ _rebind?85875_)
        (let* ((_phi85877_ (gx#current-expander-phi))
               (_ctx85879_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85873_
           _eid85874_
           _rebind?85875_
           _phi85877_
           _ctx85879_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85881_ _eid85882_ _rebind?85883_ _phi85884_)
        (let ((_ctx85886_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85881_
           _eid85882_
           _rebind?85883_
           _phi85884_
           _ctx85886_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g88687_
        (let ((_g88686_ (##length _g88687_)))
          (cond ((##fx= _g88686_ 2)
                 (apply (lambda (_id85864_ _eid85865_)
                          (gx#core-bind-runtime-reference!__0
                           _id85864_
                           _eid85865_))
                        _g88687_))
                ((##fx= _g88686_ 3)
                 (apply (lambda (_id85873_ _eid85874_ _rebind?85875_)
                          (gx#core-bind-runtime-reference!__1
                           _id85873_
                           _eid85874_
                           _rebind?85875_))
                        _g88687_))
                ((##fx= _g88686_ 4)
                 (apply (lambda (_id85881_
                                 _eid85882_
                                 _rebind?85883_
                                 _phi85884_)
                          (gx#core-bind-runtime-reference!__2
                           _id85881_
                           _eid85882_
                           _rebind?85883_
                           _phi85884_))
                        _g88687_))
                ((##fx= _g88686_ 5)
                 (apply (lambda (_id85888_
                                 _eid85889_
                                 _rebind?85890_
                                 _phi85891_
                                 _ctx85892_)
                          (gx#core-bind-runtime-reference!__%
                           _id85888_
                           _eid85889_
                           _rebind?85890_
                           _phi85891_
                           _ctx85892_))
                        _g88687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g88687_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id85810_ _eid85811_ _rebind?85812_ _phi85813_ _ctx85814_)
        (gx#bind-identifier!__%
         _id85810_
         (##structure
          gx#extern-binding::t
          _eid85811_
          (gx#core-identifier-key _id85810_)
          _phi85813_)
         _rebind?85812_
         _phi85813_
         _ctx85814_)))
    (define gx#core-bind-extern!__0
      (lambda (_id85819_ _eid85820_)
        (let* ((_rebind?85822_ '#f)
               (_phi85824_ (gx#current-expander-phi))
               (_ctx85826_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85819_
           _eid85820_
           _rebind?85822_
           _phi85824_
           _ctx85826_))))
    (define gx#core-bind-extern!__1
      (lambda (_id85828_ _eid85829_ _rebind?85830_)
        (let* ((_phi85832_ (gx#current-expander-phi))
               (_ctx85834_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85828_
           _eid85829_
           _rebind?85830_
           _phi85832_
           _ctx85834_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85836_ _eid85837_ _rebind?85838_ _phi85839_)
        (let ((_ctx85841_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85836_
           _eid85837_
           _rebind?85838_
           _phi85839_
           _ctx85841_))))
    (define gx#core-bind-extern!
      (lambda _g88689_
        (let ((_g88688_ (##length _g88689_)))
          (cond ((##fx= _g88688_ 2)
                 (apply (lambda (_id85819_ _eid85820_)
                          (gx#core-bind-extern!__0 _id85819_ _eid85820_))
                        _g88689_))
                ((##fx= _g88688_ 3)
                 (apply (lambda (_id85828_ _eid85829_ _rebind?85830_)
                          (gx#core-bind-extern!__1
                           _id85828_
                           _eid85829_
                           _rebind?85830_))
                        _g88689_))
                ((##fx= _g88688_ 4)
                 (apply (lambda (_id85836_
                                 _eid85837_
                                 _rebind?85838_
                                 _phi85839_)
                          (gx#core-bind-extern!__2
                           _id85836_
                           _eid85837_
                           _rebind?85838_
                           _phi85839_))
                        _g88689_))
                ((##fx= _g88688_ 5)
                 (apply (lambda (_id85843_
                                 _eid85844_
                                 _rebind?85845_
                                 _phi85846_
                                 _ctx85847_)
                          (gx#core-bind-extern!__%
                           _id85843_
                           _eid85844_
                           _rebind?85845_
                           _phi85846_
                           _ctx85847_))
                        _g88689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g88689_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id85764_ _e85765_ _rebind?85766_ _phi85767_ _ctx85768_)
        (gx#bind-identifier!__%
         _id85764_
         (let ((_key85773_ (gx#core-identifier-key _id85764_))
               (_e85774_
                (if (or (##structure-instance-of? _e85765_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e85765_
                         'gx#expander-context::t))
                    _e85765_
                    (##structure
                     gx#user-expander::t
                     _e85765_
                     _ctx85768_
                     _phi85767_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key85773_ '#t _phi85767_ _ctx85768_)
            _key85773_
            _phi85767_
            _e85774_))
         _rebind?85766_
         _phi85767_
         _ctx85768_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id85779_ _e85780_)
        (let* ((_rebind?85782_ '#f)
               (_phi85784_ (gx#current-expander-phi))
               (_ctx85786_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85779_
           _e85780_
           _rebind?85782_
           _phi85784_
           _ctx85786_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id85788_ _e85789_ _rebind?85790_)
        (let* ((_phi85792_ (gx#current-expander-phi))
               (_ctx85794_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85788_
           _e85789_
           _rebind?85790_
           _phi85792_
           _ctx85794_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id85796_ _e85797_ _rebind?85798_ _phi85799_)
        (let ((_ctx85801_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85796_
           _e85797_
           _rebind?85798_
           _phi85799_
           _ctx85801_))))
    (define gx#core-bind-syntax!
      (lambda _g88691_
        (let ((_g88690_ (##length _g88691_)))
          (cond ((##fx= _g88690_ 2)
                 (apply (lambda (_id85779_ _e85780_)
                          (gx#core-bind-syntax!__0 _id85779_ _e85780_))
                        _g88691_))
                ((##fx= _g88690_ 3)
                 (apply (lambda (_id85788_ _e85789_ _rebind?85790_)
                          (gx#core-bind-syntax!__1
                           _id85788_
                           _e85789_
                           _rebind?85790_))
                        _g88691_))
                ((##fx= _g88690_ 4)
                 (apply (lambda (_id85796_ _e85797_ _rebind?85798_ _phi85799_)
                          (gx#core-bind-syntax!__2
                           _id85796_
                           _e85797_
                           _rebind?85798_
                           _phi85799_))
                        _g88691_))
                ((##fx= _g88690_ 5)
                 (apply (lambda (_id85803_
                                 _e85804_
                                 _rebind?85805_
                                 _phi85806_
                                 _ctx85807_)
                          (gx#core-bind-syntax!__%
                           _id85803_
                           _e85804_
                           _rebind?85805_
                           _phi85806_
                           _ctx85807_))
                        _g88691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g88691_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id85747_ _e85748_ _rebind?85749_)
        (gx#core-bind-syntax!__%
         _id85747_
         _e85748_
         _rebind?85749_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id85754_ _e85755_)
        (let ((_rebind?85757_ '#f))
          (gx#core-bind-root-syntax!__% _id85754_ _e85755_ _rebind?85757_))))
    (define gx#core-bind-root-syntax!
      (lambda _g88693_
        (let ((_g88692_ (##length _g88693_)))
          (cond ((##fx= _g88692_ 2)
                 (apply (lambda (_id85754_ _e85755_)
                          (gx#core-bind-root-syntax!__0 _id85754_ _e85755_))
                        _g88693_))
                ((##fx= _g88692_ 3)
                 (apply (lambda (_id85759_ _e85760_ _rebind?85761_)
                          (gx#core-bind-root-syntax!__%
                           _id85759_
                           _e85760_
                           _rebind?85761_))
                        _g88693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g88693_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id85705_ _alias-id85706_ _rebind?85707_ _phi85708_ _ctx85709_)
        (gx#bind-identifier!__%
         _id85705_
         (let ((_key85711_ (gx#core-identifier-key _id85705_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key85711_ '#t _phi85708_ _ctx85709_)
            _key85711_
            _phi85708_
            _alias-id85706_))
         _rebind?85707_
         _phi85708_
         _ctx85709_)))
    (define gx#core-bind-alias!__0
      (lambda (_id85716_ _alias-id85717_)
        (let* ((_rebind?85719_ '#f)
               (_phi85721_ (gx#current-expander-phi))
               (_ctx85723_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85716_
           _alias-id85717_
           _rebind?85719_
           _phi85721_
           _ctx85723_))))
    (define gx#core-bind-alias!__1
      (lambda (_id85725_ _alias-id85726_ _rebind?85727_)
        (let* ((_phi85729_ (gx#current-expander-phi))
               (_ctx85731_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85725_
           _alias-id85726_
           _rebind?85727_
           _phi85729_
           _ctx85731_))))
    (define gx#core-bind-alias!__2
      (lambda (_id85733_ _alias-id85734_ _rebind?85735_ _phi85736_)
        (let ((_ctx85738_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85733_
           _alias-id85734_
           _rebind?85735_
           _phi85736_
           _ctx85738_))))
    (define gx#core-bind-alias!
      (lambda _g88695_
        (let ((_g88694_ (##length _g88695_)))
          (cond ((##fx= _g88694_ 2)
                 (apply (lambda (_id85716_ _alias-id85717_)
                          (gx#core-bind-alias!__0 _id85716_ _alias-id85717_))
                        _g88695_))
                ((##fx= _g88694_ 3)
                 (apply (lambda (_id85725_ _alias-id85726_ _rebind?85727_)
                          (gx#core-bind-alias!__1
                           _id85725_
                           _alias-id85726_
                           _rebind?85727_))
                        _g88695_))
                ((##fx= _g88694_ 4)
                 (apply (lambda (_id85733_
                                 _alias-id85734_
                                 _rebind?85735_
                                 _phi85736_)
                          (gx#core-bind-alias!__2
                           _id85733_
                           _alias-id85734_
                           _rebind?85735_
                           _phi85736_))
                        _g88695_))
                ((##fx= _g88694_ 5)
                 (apply (lambda (_id85740_
                                 _alias-id85741_
                                 _rebind?85742_
                                 _phi85743_
                                 _ctx85744_)
                          (gx#core-bind-alias!__%
                           _id85740_
                           _alias-id85741_
                           _rebind?85742_
                           _phi85743_
                           _ctx85744_))
                        _g88695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g88695_))))))
    (define gx#make-binding-id__%
      (lambda (_key85662_ _syntax?85663_ _phi85664_ _ctx85665_)
        (if (uninterned-symbol? _key85662_)
            (gensym 'L)
            (if (pair? _key85662_)
                (gensym (car _key85662_))
                (if (##structure-instance-of? _ctx85665_ 'gx#top-context::t)
                    (let ((_ns85667_
                           (gx#core-context-namespace__% _ctx85665_)))
                      (if (and (fxzero? _phi85664_) (not _syntax?85663_))
                          (if _ns85667_
                              (make-symbol__1 _ns85667_ '"#" _key85662_)
                              _key85662_)
                          (if _syntax?85663_
                              (make-symbol__1
                               (let ((_$e85669_ _ns85667_))
                                 (if _$e85669_ _$e85669_ '""))
                               '"[:"
                               (number->string _phi85664_)
                               '":]#"
                               _key85662_)
                              (make-symbol__1
                               (let ((_$e85672_ _ns85667_))
                                 (if _$e85672_ _$e85672_ '""))
                               '"["
                               (number->string _phi85664_)
                               '"]#"
                               _key85662_))))
                    (gensym _key85662_))))))
    (define gx#make-binding-id__0
      (lambda (_key85678_)
        (let* ((_syntax?85680_ '#f)
               (_phi85682_ (gx#current-expander-phi))
               (_ctx85684_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85678_
           _syntax?85680_
           _phi85682_
           _ctx85684_))))
    (define gx#make-binding-id__1
      (lambda (_key85686_ _syntax?85687_)
        (let* ((_phi85689_ (gx#current-expander-phi))
               (_ctx85691_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85686_
           _syntax?85687_
           _phi85689_
           _ctx85691_))))
    (define gx#make-binding-id__2
      (lambda (_key85693_ _syntax?85694_ _phi85695_)
        (let ((_ctx85697_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85693_
           _syntax?85694_
           _phi85695_
           _ctx85697_))))
    (define gx#make-binding-id
      (lambda _g88697_
        (let ((_g88696_ (##length _g88697_)))
          (cond ((##fx= _g88696_ 1)
                 (apply (lambda (_key85678_)
                          (gx#make-binding-id__0 _key85678_))
                        _g88697_))
                ((##fx= _g88696_ 2)
                 (apply (lambda (_key85686_ _syntax?85687_)
                          (gx#make-binding-id__1 _key85686_ _syntax?85687_))
                        _g88697_))
                ((##fx= _g88696_ 3)
                 (apply (lambda (_key85693_ _syntax?85694_ _phi85695_)
                          (gx#make-binding-id__2
                           _key85693_
                           _syntax?85694_
                           _phi85695_))
                        _g88697_))
                ((##fx= _g88696_ 4)
                 (apply (lambda (_key85699_
                                 _syntax?85700_
                                 _phi85701_
                                 _ctx85702_)
                          (gx#make-binding-id__%
                           _key85699_
                           _syntax?85700_
                           _phi85701_
                           _ctx85702_))
                        _g88697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g88697_))))))))
