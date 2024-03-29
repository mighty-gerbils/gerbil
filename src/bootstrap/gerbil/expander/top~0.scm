(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1711709197)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx87810_)
        (letrec ((_expand-special87812_
                  (lambda (_hd87814_ _K87815_ _rest87816_ _r87817_)
                    (_K87815_
                     _rest87816_
                     (cons (gx#core-expand-top _hd87814_) _r87817_)))))
          (gx#core-expand-block__0 _stx87810_ _expand-special87812_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx87563_)
        (letrec ((_expand-special87565_
                  (lambda (_hd87685_ _K87686_ _rest87687_ _r87688_)
                    (let* ((_K87692_
                            (lambda (_e87690_)
                              (_K87686_ _rest87687_ (cons _e87690_ _r87688_))))
                           (_e8769387722_ _hd87685_)
                           (_E8771787726_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8769387722_)))
                           (_E8771387738_
                            (lambda ()
                              (if (gx#stx-pair? _e8769387722_)
                                  (let ((_e8771887730_
                                         (gx#syntax-e _e8769387722_)))
                                    (let ((_hd8771987733_
                                           (##car _e8771887730_))
                                          (_tl8772087735_
                                           (##cdr _e8771887730_)))
                                      (if (and (gx#identifier? _hd8771987733_)
                                               (gx#core-identifier=?
                                                _hd8771987733_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K87692_
                                               (gx#core-expand-define-runtime%
                                                _hd87685_))
                                              (_E8771787726_))
                                          (_E8771787726_))))
                                  (_E8771787726_))))
                           (_E8770987750_
                            (lambda ()
                              (if (gx#stx-pair? _e8769387722_)
                                  (let ((_e8771487742_
                                         (gx#syntax-e _e8769387722_)))
                                    (let ((_hd8771587745_
                                           (##car _e8771487742_))
                                          (_tl8771687747_
                                           (##cdr _e8771487742_)))
                                      (if (and (gx#identifier? _hd8771587745_)
                                               (gx#core-identifier=?
                                                _hd8771587745_
                                                '%#define-alias))
                                          (if '#t
                                              (_K87692_
                                               (gx#core-expand-define-alias%
                                                _hd87685_))
                                              (_E8771387738_))
                                          (_E8771387738_))))
                                  (_E8771387738_))))
                           (_E8769987762_
                            (lambda ()
                              (if (gx#stx-pair? _e8769387722_)
                                  (let ((_e8771087754_
                                         (gx#syntax-e _e8769387722_)))
                                    (let ((_hd8771187757_
                                           (##car _e8771087754_))
                                          (_tl8771287759_
                                           (##cdr _e8771087754_)))
                                      (if (and (gx#identifier? _hd8771187757_)
                                               (gx#core-identifier=?
                                                _hd8771187757_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K87692_
                                               (gx#core-expand-define-syntax%
                                                _hd87685_))
                                              (_E8770987750_))
                                          (_E8770987750_))))
                                  (_E8770987750_))))
                           (_E8769587794_
                            (lambda ()
                              (if (gx#stx-pair? _e8769387722_)
                                  (let ((_e8770087766_
                                         (gx#syntax-e _e8769387722_)))
                                    (let ((_hd8770187769_
                                           (##car _e8770087766_))
                                          (_tl8770287771_
                                           (##cdr _e8770087766_)))
                                      (if (and (gx#identifier? _hd8770187769_)
                                               (gx#core-identifier=?
                                                _hd8770187769_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8770287771_)
                                              (let ((_e8770387774_
                                                     (gx#syntax-e
                                                      _tl8770287771_)))
                                                (let ((_hd8770487777_
                                                       (##car _e8770387774_))
                                                      (_tl8770587779_
                                                       (##cdr _e8770387774_)))
                                                  (let ((_hd-bind87782_
                                                         _hd8770487777_))
                                                    (if (gx#stx-pair?
                                                         _tl8770587779_)
                                                        (let ((_e8770687784_
                                                               (gx#syntax-e
                                                                _tl8770587779_)))
                                                          (let ((_hd8770787787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8770687784_))
                        (_tl8770887789_ (##cdr _e8770687784_)))
                    (let ((_expr87792_ _hd8770787787_))
                      (if (gx#stx-null? _tl8770887789_)
                          (if (gx#core-bind-values? _hd-bind87782_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87782_)
                                (_K87692_ _hd87685_))
                              (_E8769987762_))
                          (_E8769987762_)))))
                (_E8769987762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8769987762_))
                                          (_E8769987762_))))
                                  (_E8769987762_))))
                           (_E8769487806_
                            (lambda ()
                              (if (gx#stx-pair? _e8769387722_)
                                  (let ((_e8769687798_
                                         (gx#syntax-e _e8769387722_)))
                                    (let ((_hd8769787801_
                                           (##car _e8769687798_))
                                          (_tl8769887803_
                                           (##cdr _e8769687798_)))
                                      (if (and (gx#identifier? _hd8769787801_)
                                               (gx#core-identifier=?
                                                _hd8769787801_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K87692_
                                               (gx#core-expand-begin-syntax%
                                                _hd87685_))
                                              (_E8769587794_))
                                          (_E8769587794_))))
                                  (_E8769587794_)))))
                      (_E8769487806_))))
                 (_eval-body87566_
                  (lambda (_rbody87574_)
                    (let _lp87576_ ((_rest87578_ _rbody87574_)
                                    (_body87579_ '())
                                    (_ebody87580_ '()))
                      (let* ((_rest8758187589_ _rest87578_)
                             (_else8758387597_
                              (lambda ()
                                (values _body87579_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody87580_)
                                          (gx#stx-source _stx87563_))))))
                             (_K8758587673_
                              (lambda (_rest87600_ _hd87601_)
                                (let* ((_e8760287619_ _hd87601_)
                                       (_E8761487623_
                                        (lambda ()
                                          (_lp87576_
                                           _rest87600_
                                           (cons _hd87601_ _body87579_)
                                           (cons _hd87601_ _ebody87580_))))
                                       (_E8760487635_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8760287619_)
                                              (let ((_e8761587627_
                                                     (gx#syntax-e
                                                      _e8760287619_)))
                                                (let ((_hd8761687630_
                                                       (##car _e8761587627_))
                                                      (_tl8761787632_
                                                       (##cdr _e8761587627_)))
                                                  (if (and (gx#identifier?
                                                            _hd8761687630_)
                                                           (gx#core-identifier=?
                                                            _hd8761687630_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp87576_
                                                           _rest87600_
                                                           (cons _hd87601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body87579_)
                   _ebody87580_)
                  (_E8761487623_))
              (_E8761487623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8761487623_))))
                                       (_E8760387669_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8760287619_)
                                              (let ((_e8760587639_
                                                     (gx#syntax-e
                                                      _e8760287619_)))
                                                (let ((_hd8760687642_
                                                       (##car _e8760587639_))
                                                      (_tl8760787644_
                                                       (##cdr _e8760587639_)))
                                                  (if (and (gx#identifier?
                                                            _hd8760687642_)
                                                           (gx#core-identifier=?
                                                            _hd8760687642_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8760787644_)
                                                          (let ((_e8760887647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8760787644_)))
                    (let ((_hd8760987650_ (##car _e8760887647_))
                          (_tl8761087652_ (##cdr _e8760887647_)))
                      (let ((_hd-bind87655_ _hd8760987650_))
                        (if (gx#stx-pair? _tl8761087652_)
                            (let ((_e8761187657_ (gx#syntax-e _tl8761087652_)))
                              (let ((_hd8761287660_ (##car _e8761187657_))
                                    (_tl8761387662_ (##cdr _e8761187657_)))
                                (let ((_expr87665_ _hd8761287660_))
                                  (if (gx#stx-null? _tl8761387662_)
                                      (if '#t
                                          (let ((_ehd87667_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind87655_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr87665_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd87601_))))
                                            (_lp87576_
                                             _rest87600_
                                             (cons _ehd87667_ _body87579_)
                                             (cons _ehd87667_ _ebody87580_)))
                                          (_E8760487635_))
                                      (_E8760487635_)))))
                            (_E8760487635_)))))
                  (_E8760487635_))
              (_E8760487635_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8760487635_)))))
                                  (_E8760387669_)))))
                        (if (##pair? _rest8758187589_)
                            (let ((_hd8758687676_ (##car _rest8758187589_))
                                  (_tl8758787678_ (##cdr _rest8758187589_)))
                              (let* ((_hd87681_ _hd8758687676_)
                                     (_rest87683_ _tl8758787678_))
                                (_K8758587673_ _rest87683_ _hd87681_)))
                            (_else8758387597_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_rbody87569_
                     (gx#core-expand-block__1
                      _stx87563_
                      _expand-special87565_
                      '#f))
                    (_g87833_ (_eval-body87566_ _rbody87569_)))
               (begin
                 (let ((_g87834_
                        (if (##values? _g87833_)
                            (##vector-length _g87833_)
                            1)))
                   (if (not (##fx= _g87834_ 2))
                       (error "Context expects 2 values" _g87834_)))
                 (let ((_expanded-body87571_ (##vector-ref _g87833_ 0))
                       (_value87572_ (##vector-ref _g87833_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body87571_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value87572_ '())))
                    (gx#stx-source _stx87563_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx87533_)
        (let* ((_e8753487541_ _stx87533_)
               (_E8753687545_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8753487541_)))
               (_E8753587559_
                (lambda ()
                  (if (gx#stx-pair? _e8753487541_)
                      (let ((_e8753787549_ (gx#syntax-e _e8753487541_)))
                        (let ((_hd8753887552_ (##car _e8753787549_))
                              (_tl8753987554_ (##cdr _e8753787549_)))
                          (let ((_body87557_ _tl8753987554_))
                            (if (gx#stx-list? _body87557_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body87557_)
                                 (gx#stx-source _stx87533_))
                                (_E8753687545_)))))
                      (_E8753687545_)))))
          (_E8753587559_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx87531_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx87531_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx87477_)
        (let* ((_e8747887491_ _stx87477_)
               (_E8748087495_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8747887491_)))
               (_E8747987527_
                (lambda ()
                  (if (gx#stx-pair? _e8747887491_)
                      (let ((_e8748187499_ (gx#syntax-e _e8747887491_)))
                        (let ((_hd8748287502_ (##car _e8748187499_))
                              (_tl8748387504_ (##cdr _e8748187499_)))
                          (if (gx#stx-pair? _tl8748387504_)
                              (let ((_e8748487507_
                                     (gx#syntax-e _tl8748387504_)))
                                (let ((_hd8748587510_ (##car _e8748487507_))
                                      (_tl8748687512_ (##cdr _e8748487507_)))
                                  (let ((_ann87515_ _hd8748587510_))
                                    (if (gx#stx-pair? _tl8748687512_)
                                        (let ((_e8748787517_
                                               (gx#syntax-e _tl8748687512_)))
                                          (let ((_hd8748887520_
                                                 (##car _e8748787517_))
                                                (_tl8748987522_
                                                 (##cdr _e8748787517_)))
                                            (let ((_expr87525_ _hd8748887520_))
                                              (if (gx#stx-null? _tl8748987522_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann87515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr87525_) '())))
               (gx#stx-source _stx87477_))
              (_E8748087495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8748087495_)))))
                                        (_E8748087495_)))))
                              (_E8748087495_))))
                      (_E8748087495_)))))
          (_E8747987527_))))
    (define gx#core-expand-local-block
      (lambda (_stx87201_ _body87202_)
        (letrec ((_expand-special87204_
                  (lambda (_hd87472_ _K87473_ _rest87474_ _r87475_)
                    (_K87473_
                     '()
                     (cons (_expand-internal87205_ _hd87472_ _rest87474_)
                           _r87475_))))
                 (_expand-internal87205_
                  (lambda (_hd87468_ _rest87469_)
                    (__call-with-parameters
                     (lambda ()
                       (_wrap-internal87207_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd87468_ _rest87469_))
                          (gx#stx-source _stx87201_))
                         _expand-internal-special87206_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj87827
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj87827)
                       __obj87827))))
                 (_expand-internal-special87206_
                  (lambda (_hd87363_ _K87364_ _rest87365_ _r87366_)
                    (let* ((_e8736787392_ _hd87363_)
                           (_E8738787396_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8736787392_)))
                           (_E8738387408_
                            (lambda ()
                              (if (gx#stx-pair? _e8736787392_)
                                  (let ((_e8738887400_
                                         (gx#syntax-e _e8736787392_)))
                                    (let ((_hd8738987403_
                                           (##car _e8738887400_))
                                          (_tl8739087405_
                                           (##cdr _e8738887400_)))
                                      (if (and (gx#identifier? _hd8738987403_)
                                               (gx#core-identifier=?
                                                _hd8738987403_
                                                '%#declare))
                                          (if '#t
                                              (_K87364_
                                               _rest87365_
                                               (cons (gx#core-expand-declare%
                                                      _hd87363_)
                                                     _r87366_))
                                              (_E8738787396_))
                                          (_E8738787396_))))
                                  (_E8738787396_))))
                           (_E8737987420_
                            (lambda ()
                              (if (gx#stx-pair? _e8736787392_)
                                  (let ((_e8738487412_
                                         (gx#syntax-e _e8736787392_)))
                                    (let ((_hd8738587415_
                                           (##car _e8738487412_))
                                          (_tl8738687417_
                                           (##cdr _e8738487412_)))
                                      (if (and (gx#identifier? _hd8738587415_)
                                               (gx#core-identifier=?
                                                _hd8738587415_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd87363_)
                                                (_K87364_
                                                 _rest87365_
                                                 _r87366_))
                                              (_E8738387408_))
                                          (_E8738387408_))))
                                  (_E8738387408_))))
                           (_E8736987432_
                            (lambda ()
                              (if (gx#stx-pair? _e8736787392_)
                                  (let ((_e8738087424_
                                         (gx#syntax-e _e8736787392_)))
                                    (let ((_hd8738187427_
                                           (##car _e8738087424_))
                                          (_tl8738287429_
                                           (##cdr _e8738087424_)))
                                      (if (and (gx#identifier? _hd8738187427_)
                                               (gx#core-identifier=?
                                                _hd8738187427_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd87363_)
                                                (_K87364_
                                                 _rest87365_
                                                 _r87366_))
                                              (_E8737987420_))
                                          (_E8737987420_))))
                                  (_E8737987420_))))
                           (_E8736887464_
                            (lambda ()
                              (if (gx#stx-pair? _e8736787392_)
                                  (let ((_e8737087436_
                                         (gx#syntax-e _e8736787392_)))
                                    (let ((_hd8737187439_
                                           (##car _e8737087436_))
                                          (_tl8737287441_
                                           (##cdr _e8737087436_)))
                                      (if (and (gx#identifier? _hd8737187439_)
                                               (gx#core-identifier=?
                                                _hd8737187439_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8737287441_)
                                              (let ((_e8737387444_
                                                     (gx#syntax-e
                                                      _tl8737287441_)))
                                                (let ((_hd8737487447_
                                                       (##car _e8737387444_))
                                                      (_tl8737587449_
                                                       (##cdr _e8737387444_)))
                                                  (let ((_hd-bind87452_
                                                         _hd8737487447_))
                                                    (if (gx#stx-pair?
                                                         _tl8737587449_)
                                                        (let ((_e8737687454_
                                                               (gx#syntax-e
                                                                _tl8737587449_)))
                                                          (let ((_hd8737787457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8737687454_))
                        (_tl8737887459_ (##cdr _e8737687454_)))
                    (let ((_expr87462_ _hd8737787457_))
                      (if (gx#stx-null? _tl8737887459_)
                          (if (gx#core-bind-values? _hd-bind87452_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind87452_)
                                (_K87364_
                                 _rest87365_
                                 (cons _hd87363_ _r87366_)))
                              (_E8736987432_))
                          (_E8736987432_)))))
                (_E8736987432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8736987432_))
                                          (_E8736987432_))))
                                  (_E8736987432_)))))
                      (_E8736887464_))))
                 (_wrap-internal87207_
                  (lambda (_rbody87209_)
                    (let _lp87211_ ((_rest87213_ _rbody87209_)
                                    (_decls87214_ '())
                                    (_bind87215_ '())
                                    (_body87216_ '()))
                      (let* ((_e8721787224_ _rest87213_)
                             (_E8721987273_
                              (lambda ()
                                (let* ((_body87268_
                                        (let* ((_body8722787237_ _body87216_)
                                               (_else8723087245_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body87216_)
                                                   (gx#stx-source
                                                    _stx87201_)))))
                                          (let ((_K8723587265_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx87201_)))
                                                (_K8723287251_
                                                 (lambda (_expr87249_)
                                                   _expr87249_)))
                                            (let ((_try-match8722987261_
                                                   (lambda ()
                                                     (if (##pair? _body8722787237_)
                                                         (let ((_tl8723487256_
                                                                (##cdr _body8722787237_))
                                                               (_hd8723387254_
                                                                (##car _body8722787237_)))
                                                           (if (##null? _tl8723487256_)
                                                               (let ((_expr87259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8723387254_))
                         (_K8723287251_ _expr87259_))
                       (_else8723087245_)))
                 (_else8723087245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8722787237_)
                                                  (_K8723587265_)
                                                  (_try-match8722987261_))))))
                                       (_body87270_
                                        (if (null? _bind87215_)
                                            _body87268_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind87215_
                                                         (cons _body87268_
                                                               '())))
                                             (gx#stx-source _stx87201_)))))
                                  (if (null? _decls87214_)
                                      _body87270_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls87214_
                                                   (cons _body87270_ '())))
                                       (gx#stx-source _stx87201_))))))
                             (_E8721887359_
                              (lambda ()
                                (if (gx#stx-pair? _e8721787224_)
                                    (let ((_e8722087277_
                                           (gx#syntax-e _e8721787224_)))
                                      (let ((_hd8722187280_
                                             (##car _e8722087277_))
                                            (_tl8722287282_
                                             (##cdr _e8722087277_)))
                                        (let* ((_hd87285_ _hd8722187280_)
                                               (_rest87287_ _tl8722287282_))
                                          (if '#t
                                              (let* ((_e8728887305_ _hd87285_)
                                                     (_E8730087309_
                                                      (lambda ()
                                                        (if (null? _bind87215_)
                                                            (_lp87211_
                                                             _rest87287_
                                                             _decls87214_
                                                             _bind87215_
                                                             (cons _hd87285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body87216_))
                    (_lp87211_
                     _rest87287_
                     _decls87214_
                     (cons (cons '#f (cons _hd87285_ '())) _bind87215_)
                     _body87216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8729087323_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8728887305_)
                                                            (let ((_e8730187313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8728887305_)))
                      (let ((_hd8730287316_ (##car _e8730187313_))
                            (_tl8730387318_ (##cdr _e8730187313_)))
                        (if (and (gx#identifier? _hd8730287316_)
                                 (gx#core-identifier=?
                                  _hd8730287316_
                                  '%#declare))
                            (let ((_xdecls87321_ _tl8730387318_))
                              (if '#t
                                  (_lp87211_
                                   _rest87287_
                                   (gx#stx-foldr
                                    cons
                                    _decls87214_
                                    _xdecls87321_)
                                   _bind87215_
                                   _body87216_)
                                  (_E8730087309_)))
                            (_E8730087309_))))
                    (_E8730087309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8728987355_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8728887305_)
                                                            (let ((_e8729187327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8728887305_)))
                      (let ((_hd8729287330_ (##car _e8729187327_))
                            (_tl8729387332_ (##cdr _e8729187327_)))
                        (if (and (gx#identifier? _hd8729287330_)
                                 (gx#core-identifier=?
                                  _hd8729287330_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8729387332_)
                                (let ((_e8729487335_
                                       (gx#syntax-e _tl8729387332_)))
                                  (let ((_hd8729587338_ (##car _e8729487335_))
                                        (_tl8729687340_ (##cdr _e8729487335_)))
                                    (let ((_hd-bind87343_ _hd8729587338_))
                                      (if (gx#stx-pair? _tl8729687340_)
                                          (let ((_e8729787345_
                                                 (gx#syntax-e _tl8729687340_)))
                                            (let ((_hd8729887348_
                                                   (##car _e8729787345_))
                                                  (_tl8729987350_
                                                   (##cdr _e8729787345_)))
                                              (let ((_expr87353_
                                                     _hd8729887348_))
                                                (if (gx#stx-null?
                                                     _tl8729987350_)
                                                    (if '#t
                                                        (_lp87211_
                                                         _rest87287_
                                                         _decls87214_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind87343_)
                             (cons (gx#core-expand-expression _expr87353_)
                                   '()))
                       _bind87215_)
                 _body87216_)
                (_E8729087323_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8729087323_)))))
                                          (_E8729087323_)))))
                                (_E8729087323_))
                            (_E8729087323_))))
                    (_E8729087323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8728987355_))
                                              (_E8721987273_)))))
                                    (_E8721987273_)))))
                        (_E8721887359_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body87202_)
            (gx#stx-source _stx87201_))
           _expand-special87204_))))
    (define gx#core-expand-declare%
      (lambda (_stx87139_)
        (let* ((_e8714087147_ _stx87139_)
               (_E8714287151_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8714087147_)))
               (_E8714187197_
                (lambda ()
                  (if (gx#stx-pair? _e8714087147_)
                      (let ((_e8714387155_ (gx#syntax-e _e8714087147_)))
                        (let ((_hd8714487158_ (##car _e8714387155_))
                              (_tl8714587160_ (##cdr _e8714387155_)))
                          (let ((_body87163_ _tl8714587160_))
                            (if (gx#stx-list? _body87163_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl87165_)
                                     (let* ((_e8716687173_ _decl87165_)
                                            (_E8716887177_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8716687173_)))
                                            (_E8716787193_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8716687173_)
                                                   (let ((_e8716987181_
                                                          (gx#syntax-e
                                                           _e8716687173_)))
                                                     (let ((_hd8717087184_
                                                            (##car _e8716987181_))
                                                           (_tl8717187186_
                                                            (##cdr _e8716987181_)))
                                                       (let* ((_head87189_
                                                               _hd8717087184_)
                                                              (_args87191_
                                                               _tl8717187186_))
                                                         (if (gx#stx-list?
                                                              _args87191_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl87165_)
                                                             (_E8716887177_)))))
                                                   (_E8716887177_)))))
                                       (_E8716787193_)))
                                   _body87163_))
                                 (gx#stx-source _stx87139_))
                                (_E8714287151_)))))
                      (_E8714287151_)))))
          (_E8714187197_))))
    (define gx#core-expand-extern%
      (lambda (_stx87043_)
        (let* ((_e8704487051_ _stx87043_)
               (_E8704687055_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8704487051_)))
               (_E8704587135_
                (lambda ()
                  (if (gx#stx-pair? _e8704487051_)
                      (let ((_e8704787059_ (gx#syntax-e _e8704487051_)))
                        (let ((_hd8704887062_ (##car _e8704787059_))
                              (_tl8704987064_ (##cdr _e8704787059_)))
                          (let ((_body87067_ _tl8704987064_))
                            (if '#t
                                (let _lp87069_ ((_rest87071_ _body87067_)
                                                (_r87072_ '()))
                                  (let* ((_e8707387087_ _rest87071_)
                                         (_E8708587091_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87043_)))
                                         (_E8707587095_
                                          (lambda ()
                                            (if (gx#stx-null? _e8707387087_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87072_))
                                                     (gx#stx-source
                                                      _stx87043_))
                                                    (_E8708587091_))
                                                (_E8708587091_))))
                                         (_E8707487131_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8707387087_)
                                                (let ((_e8707687099_
                                                       (gx#syntax-e
                                                        _e8707387087_)))
                                                  (let ((_hd8707787102_
                                                         (##car _e8707687099_))
                                                        (_tl8707887104_
                                                         (##cdr _e8707687099_)))
                                                    (if (gx#stx-pair?
                                                         _hd8707787102_)
                                                        (let ((_e8707987107_
                                                               (gx#syntax-e
                                                                _hd8707787102_)))
                                                          (let ((_hd8708087110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8707987107_))
                        (_tl8708187112_ (##cdr _e8707987107_)))
                    (let ((_id87115_ _hd8708087110_))
                      (if (gx#stx-pair? _tl8708187112_)
                          (let ((_e8708287117_ (gx#syntax-e _tl8708187112_)))
                            (let ((_hd8708387120_ (##car _e8708287117_))
                                  (_tl8708487122_ (##cdr _e8708287117_)))
                              (let ((_eid87125_ _hd8708387120_))
                                (if (gx#stx-null? _tl8708487122_)
                                    (let ((_rest87127_ _tl8707887104_))
                                      (if (and (gx#identifier? _id87115_)
                                               (gx#identifier? _eid87125_))
                                          (let ((_eid87129_
                                                 (gx#stx-e _eid87125_)))
                                            (gx#core-bind-extern!__0
                                             _id87115_
                                             _eid87129_)
                                            (_lp87069_
                                             _rest87127_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id87115_)
                                                         (cons _eid87129_ '()))
                                                   _r87072_)))
                                          (_E8707587095_)))
                                    (_E8707587095_)))))
                          (_E8707587095_)))))
                (_E8707587095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8707587095_)))))
                                    (_E8707487131_)))
                                (_E8704687055_)))))
                      (_E8704687055_)))))
          (_E8704587135_))))
    (define gx#core-expand-define-values%
      (lambda (_stx86989_)
        (let* ((_e8699087003_ _stx86989_)
               (_E8699287007_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8699087003_)))
               (_E8699187039_
                (lambda ()
                  (if (gx#stx-pair? _e8699087003_)
                      (let ((_e8699387011_ (gx#syntax-e _e8699087003_)))
                        (let ((_hd8699487014_ (##car _e8699387011_))
                              (_tl8699587016_ (##cdr _e8699387011_)))
                          (if (gx#stx-pair? _tl8699587016_)
                              (let ((_e8699687019_
                                     (gx#syntax-e _tl8699587016_)))
                                (let ((_hd8699787022_ (##car _e8699687019_))
                                      (_tl8699887024_ (##cdr _e8699687019_)))
                                  (let ((_hd87027_ _hd8699787022_))
                                    (if (gx#stx-pair? _tl8699887024_)
                                        (let ((_e8699987029_
                                               (gx#syntax-e _tl8699887024_)))
                                          (let ((_hd8700087032_
                                                 (##car _e8699987029_))
                                                (_tl8700187034_
                                                 (##cdr _e8699987029_)))
                                            (let ((_expr87037_ _hd8700087032_))
                                              (if (gx#stx-null? _tl8700187034_)
                                                  (if (gx#core-bind-values?
                                                       _hd87027_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87027_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87027_)
                             (cons (gx#core-expand-expression _expr87037_)
                                   '())))
                 (gx#stx-source _stx86989_)))
              (_E8699287007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8699287007_)))))
                                        (_E8699287007_)))))
                              (_E8699287007_))))
                      (_E8699287007_)))))
          (_E8699187039_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx86933_)
        (let* ((_e8693486947_ _stx86933_)
               (_E8693686951_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8693486947_)))
               (_E8693586985_
                (lambda ()
                  (if (gx#stx-pair? _e8693486947_)
                      (let ((_e8693786955_ (gx#syntax-e _e8693486947_)))
                        (let ((_hd8693886958_ (##car _e8693786955_))
                              (_tl8693986960_ (##cdr _e8693786955_)))
                          (if (gx#stx-pair? _tl8693986960_)
                              (let ((_e8694086963_
                                     (gx#syntax-e _tl8693986960_)))
                                (let ((_hd8694186966_ (##car _e8694086963_))
                                      (_tl8694286968_ (##cdr _e8694086963_)))
                                  (let ((_id86971_ _hd8694186966_))
                                    (if (gx#stx-pair? _tl8694286968_)
                                        (let ((_e8694386973_
                                               (gx#syntax-e _tl8694286968_)))
                                          (let ((_hd8694486976_
                                                 (##car _e8694386973_))
                                                (_tl8694586978_
                                                 (##cdr _e8694386973_)))
                                            (let ((_binding-id86981_
                                                   _hd8694486976_))
                                              (if (gx#stx-null? _tl8694586978_)
                                                  (if (and (gx#identifier?
                                                            _id86971_)
                                                           (gx#identifier?
                                                            _binding-id86981_))
                                                      (let ((_eid86983_
                                                             (gx#stx-e
                                                              _binding-id86981_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id86971_
                                                         _eid86983_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id86971_)
                             (cons _eid86983_ '())))))
              (_E8693686951_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8693686951_)))))
                                        (_E8693686951_)))))
                              (_E8693686951_))))
                      (_E8693686951_)))))
          (_E8693586985_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx86876_)
        (let* ((_e8687786890_ _stx86876_)
               (_E8687986894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8687786890_)))
               (_E8687886929_
                (lambda ()
                  (if (gx#stx-pair? _e8687786890_)
                      (let ((_e8688086898_ (gx#syntax-e _e8687786890_)))
                        (let ((_hd8688186901_ (##car _e8688086898_))
                              (_tl8688286903_ (##cdr _e8688086898_)))
                          (if (gx#stx-pair? _tl8688286903_)
                              (let ((_e8688386906_
                                     (gx#syntax-e _tl8688286903_)))
                                (let ((_hd8688486909_ (##car _e8688386906_))
                                      (_tl8688586911_ (##cdr _e8688386906_)))
                                  (let ((_id86914_ _hd8688486909_))
                                    (if (gx#stx-pair? _tl8688586911_)
                                        (let ((_e8688686916_
                                               (gx#syntax-e _tl8688586911_)))
                                          (let ((_hd8688786919_
                                                 (##car _e8688686916_))
                                                (_tl8688886921_
                                                 (##cdr _e8688686916_)))
                                            (let ((_expr86924_ _hd8688786919_))
                                              (if (gx#stx-null? _tl8688886921_)
                                                  (if (gx#identifier?
                                                       _id86914_)
                                                      (let ((_g87835_
                                                             (gx#core-expand-expression+1
                                                              _expr86924_)))
                                                        (begin
                                                          (let ((_g87836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g87835_)
                             (##vector-length _g87835_)
                             1)))
                    (if (not (##fx= _g87836_ 2))
                        (error "Context expects 2 values" _g87836_)))
                  (let ((_e-stx86926_ (##vector-ref _g87835_ 0))
                        (_e86927_ (##vector-ref _g87835_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id86914_ _e86927_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id86914_)
                                   (cons _e-stx86926_ '())))
                       (gx#stx-source _stx86876_))))))
              (_E8687986894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8687986894_)))))
                                        (_E8687986894_)))))
                              (_E8687986894_))))
                      (_E8687986894_)))))
          (_E8687886929_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx86820_)
        (let* ((_e8682186834_ _stx86820_)
               (_E8682386838_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8682186834_)))
               (_E8682286872_
                (lambda ()
                  (if (gx#stx-pair? _e8682186834_)
                      (let ((_e8682486842_ (gx#syntax-e _e8682186834_)))
                        (let ((_hd8682586845_ (##car _e8682486842_))
                              (_tl8682686847_ (##cdr _e8682486842_)))
                          (if (gx#stx-pair? _tl8682686847_)
                              (let ((_e8682786850_
                                     (gx#syntax-e _tl8682686847_)))
                                (let ((_hd8682886853_ (##car _e8682786850_))
                                      (_tl8682986855_ (##cdr _e8682786850_)))
                                  (let ((_id86858_ _hd8682886853_))
                                    (if (gx#stx-pair? _tl8682986855_)
                                        (let ((_e8683086860_
                                               (gx#syntax-e _tl8682986855_)))
                                          (let ((_hd8683186863_
                                                 (##car _e8683086860_))
                                                (_tl8683286865_
                                                 (##cdr _e8683086860_)))
                                            (let ((_alias-id86868_
                                                   _hd8683186863_))
                                              (if (gx#stx-null? _tl8683286865_)
                                                  (if (and (gx#identifier?
                                                            _id86858_)
                                                           (gx#identifier?
                                                            _alias-id86868_))
                                                      (let ((_alias-id86870_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id86868_)))
                                                        (gx#core-bind-alias!__0
                                                         _id86858_
                                                         _alias-id86870_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id86858_)
                             (cons _alias-id86870_ '())))))
              (_E8682386838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8682386838_)))))
                                        (_E8682386838_)))))
                              (_E8682386838_))))
                      (_E8682386838_)))))
          (_E8682286872_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx86763_ _wrap?86764_)
        (let* ((_e8676586775_ _stx86763_)
               (_E8676786779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8676586775_)))
               (_E8676686806_
                (lambda ()
                  (if (gx#stx-pair? _e8676586775_)
                      (let ((_e8676886783_ (gx#syntax-e _e8676586775_)))
                        (let ((_hd8676986786_ (##car _e8676886783_))
                              (_tl8677086788_ (##cdr _e8676886783_)))
                          (if (gx#stx-pair? _tl8677086788_)
                              (let ((_e8677186791_
                                     (gx#syntax-e _tl8677086788_)))
                                (let ((_hd8677286794_ (##car _e8677186791_))
                                      (_tl8677386796_ (##cdr _e8677186791_)))
                                  (let* ((_hd86799_ _hd8677286794_)
                                         (_body86801_ _tl8677386796_))
                                    (if (gx#core-bind-values? _hd86799_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd86799_)
                                           (let ((_body86804_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd86799_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx86763_
                                                               _body86801_)
                                                              '()))))
                                             (if _wrap?86764_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body86804_)
                                                  (gx#stx-source _stx86763_))
                                                 _body86804_)))
                                         gx#current-expander-context
                                         (let ((__obj87828
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj87828)
                                           __obj87828))
                                        (_E8676786779_)))))
                              (_E8676786779_))))
                      (_E8676786779_)))))
          (_E8676686806_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx86813_)
        (let ((_wrap?86815_ '#t))
          (gx#core-expand-lambda%__% _stx86813_ _wrap?86815_))))
    (define gx#core-expand-lambda%
      (lambda _g87838_
        (let ((_g87837_ (##length _g87838_)))
          (cond ((##fx= _g87837_ 1)
                 (apply (lambda (_stx86813_)
                          (gx#core-expand-lambda%__0 _stx86813_))
                        _g87838_))
                ((##fx= _g87837_ 2)
                 (apply (lambda (_stx86817_ _wrap?86818_)
                          (gx#core-expand-lambda%__% _stx86817_ _wrap?86818_))
                        _g87838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g87838_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx86727_)
        (let* ((_e8672886735_ _stx86727_)
               (_E8673086739_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8672886735_)))
               (_E8672986758_
                (lambda ()
                  (if (gx#stx-pair? _e8672886735_)
                      (let ((_e8673186743_ (gx#syntax-e _e8672886735_)))
                        (let ((_hd8673286746_ (##car _e8673186743_))
                              (_tl8673386748_ (##cdr _e8673186743_)))
                          (let ((_clauses86751_ _tl8673386748_))
                            (if (gx#stx-list? _clauses86751_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause86753_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause86753_)
                                       (let ((_$e86755_
                                              (gx#stx-source _clause86753_)))
                                         (if _$e86755_
                                             _$e86755_
                                             (gx#stx-source _stx86727_))))
                                      '#f))
                                   _clauses86751_))
                                 (gx#stx-source _stx86727_))
                                (_E8673086739_)))))
                      (_E8673086739_)))))
          (_E8672986758_))))
    (define gx#core-expand-let-values%
      (lambda (_stx86681_)
        (let* ((_e8668286692_ _stx86681_)
               (_E8668486696_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8668286692_)))
               (_E8668386723_
                (lambda ()
                  (if (gx#stx-pair? _e8668286692_)
                      (let ((_e8668586700_ (gx#syntax-e _e8668286692_)))
                        (let ((_hd8668686703_ (##car _e8668586700_))
                              (_tl8668786705_ (##cdr _e8668586700_)))
                          (if (gx#stx-pair? _tl8668786705_)
                              (let ((_e8668886708_
                                     (gx#syntax-e _tl8668786705_)))
                                (let ((_hd8668986711_ (##car _e8668886708_))
                                      (_tl8669086713_ (##cdr _e8668886708_)))
                                  (let* ((_hd86716_ _hd8668986711_)
                                         (_body86718_ _tl8669086713_))
                                    (if (gx#core-expand-let-bind? _hd86716_)
                                        (let ((_expressions86720_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd86716_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd86716_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd86716_
                                                           _expressions86720_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx86681_
                         _body86718_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx86681_)))
                                           gx#current-expander-context
                                           (let ((__obj87829
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj87829)
                                             __obj87829)))
                                        (_E8668486696_)))))
                              (_E8668486696_))))
                      (_E8668486696_)))))
          (_E8668386723_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx86626_ _form86627_)
        (let* ((_e8662886638_ _stx86626_)
               (_E8663086642_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8662886638_)))
               (_E8662986667_
                (lambda ()
                  (if (gx#stx-pair? _e8662886638_)
                      (let ((_e8663186646_ (gx#syntax-e _e8662886638_)))
                        (let ((_hd8663286649_ (##car _e8663186646_))
                              (_tl8663386651_ (##cdr _e8663186646_)))
                          (if (gx#stx-pair? _tl8663386651_)
                              (let ((_e8663486654_
                                     (gx#syntax-e _tl8663386651_)))
                                (let ((_hd8663586657_ (##car _e8663486654_))
                                      (_tl8663686659_ (##cdr _e8663486654_)))
                                  (let* ((_hd86662_ _hd8663586657_)
                                         (_body86664_ _tl8663686659_))
                                    (if (gx#core-expand-let-bind? _hd86662_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd86662_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form86627_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd86662_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd86662_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx86626_
                                                               _body86664_)
                                                              '())))
                                            (gx#stx-source _stx86626_)))
                                         gx#current-expander-context
                                         (let ((__obj87830
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj87830)
                                           __obj87830))
                                        (_E8663086642_)))))
                              (_E8663086642_))))
                      (_E8663086642_)))))
          (_E8662986667_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx86674_)
        (let ((_form86676_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx86674_ _form86676_))))
    (define gx#core-expand-letrec-values%
      (lambda _g87840_
        (let ((_g87839_ (##length _g87840_)))
          (cond ((##fx= _g87839_ 1)
                 (apply (lambda (_stx86674_)
                          (gx#core-expand-letrec-values%__0 _stx86674_))
                        _g87840_))
                ((##fx= _g87839_ 2)
                 (apply (lambda (_stx86678_ _form86679_)
                          (gx#core-expand-letrec-values%__%
                           _stx86678_
                           _form86679_))
                        _g87840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g87840_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx86623_)
        (gx#core-expand-letrec-values%__% _stx86623_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx86580_)
        (if (gx#stx-list? _stx86580_)
            (gx#stx-andmap
             (lambda (_bind86582_)
               (let* ((_e8658386593_ _bind86582_)
                      (_E8658586597_ (lambda () '#f))
                      (_E8658486619_
                       (lambda ()
                         (if (gx#stx-pair? _e8658386593_)
                             (let ((_e8658686601_ (gx#syntax-e _e8658386593_)))
                               (let ((_hd8658786604_ (##car _e8658686601_))
                                     (_tl8658886606_ (##cdr _e8658686601_)))
                                 (let ((_hd86609_ _hd8658786604_))
                                   (if (gx#stx-pair? _tl8658886606_)
                                       (let ((_e8658986611_
                                              (gx#syntax-e _tl8658886606_)))
                                         (let ((_hd8659086614_
                                                (##car _e8658986611_))
                                               (_tl8659186616_
                                                (##cdr _e8658986611_)))
                                           (if (gx#stx-null? _tl8659186616_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd86609_)
                                                   (_E8658586597_))
                                               (_E8658586597_))))
                                       (_E8658586597_)))))
                             (_E8658586597_)))))
                 (_E8658486619_)))
             _stx86580_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind86539_)
        (let* ((_e8654086550_ _bind86539_)
               (_E8654286554_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8654086550_)))
               (_E8654186576_
                (lambda ()
                  (if (gx#stx-pair? _e8654086550_)
                      (let ((_e8654386558_ (gx#syntax-e _e8654086550_)))
                        (let ((_hd8654486561_ (##car _e8654386558_))
                              (_tl8654586563_ (##cdr _e8654386558_)))
                          (if (gx#stx-pair? _tl8654586563_)
                              (let ((_e8654686566_
                                     (gx#syntax-e _tl8654586563_)))
                                (let ((_hd8654786569_ (##car _e8654686566_))
                                      (_tl8654886571_ (##cdr _e8654686566_)))
                                  (let ((_expr86574_ _hd8654786569_))
                                    (if (gx#stx-null? _tl8654886571_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr86574_)
                                            (_E8654286554_))
                                        (_E8654286554_)))))
                              (_E8654286554_))))
                      (_E8654286554_)))))
          (_E8654186576_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind86498_)
        (let* ((_e8649986509_ _bind86498_)
               (_E8650186513_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8649986509_)))
               (_E8650086535_
                (lambda ()
                  (if (gx#stx-pair? _e8649986509_)
                      (let ((_e8650286517_ (gx#syntax-e _e8649986509_)))
                        (let ((_hd8650386520_ (##car _e8650286517_))
                              (_tl8650486522_ (##cdr _e8650286517_)))
                          (let ((_hd86525_ _hd8650386520_))
                            (if (gx#stx-pair? _tl8650486522_)
                                (let ((_e8650586527_
                                       (gx#syntax-e _tl8650486522_)))
                                  (let ((_hd8650686530_ (##car _e8650586527_))
                                        (_tl8650786532_ (##cdr _e8650586527_)))
                                    (if (gx#stx-null? _tl8650786532_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd86525_)
                                            (_E8650186513_))
                                        (_E8650186513_))))
                                (_E8650186513_)))))
                      (_E8650186513_)))))
          (_E8650086535_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind86456_ _expr86457_)
        (let* ((_e8645886468_ _bind86456_)
               (_E8646086472_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8645886468_)))
               (_E8645986494_
                (lambda ()
                  (if (gx#stx-pair? _e8645886468_)
                      (let ((_e8646186476_ (gx#syntax-e _e8645886468_)))
                        (let ((_hd8646286479_ (##car _e8646186476_))
                              (_tl8646386481_ (##cdr _e8646186476_)))
                          (let ((_hd86484_ _hd8646286479_))
                            (if (gx#stx-pair? _tl8646386481_)
                                (let ((_e8646486486_
                                       (gx#syntax-e _tl8646386481_)))
                                  (let ((_hd8646586489_ (##car _e8646486486_))
                                        (_tl8646686491_ (##cdr _e8646486486_)))
                                    (if (gx#stx-null? _tl8646686491_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd86484_)
                                                  (cons _expr86457_ '()))
                                            (_E8646086472_))
                                        (_E8646086472_))))
                                (_E8646086472_)))))
                      (_E8646086472_)))))
          (_E8645986494_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx86410_)
        (let* ((_e8641186421_ _stx86410_)
               (_E8641386425_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8641186421_)))
               (_E8641286452_
                (lambda ()
                  (if (gx#stx-pair? _e8641186421_)
                      (let ((_e8641486429_ (gx#syntax-e _e8641186421_)))
                        (let ((_hd8641586432_ (##car _e8641486429_))
                              (_tl8641686434_ (##cdr _e8641486429_)))
                          (if (gx#stx-pair? _tl8641686434_)
                              (let ((_e8641786437_
                                     (gx#syntax-e _tl8641686434_)))
                                (let ((_hd8641886440_ (##car _e8641786437_))
                                      (_tl8641986442_ (##cdr _e8641786437_)))
                                  (let* ((_hd86445_ _hd8641886440_)
                                         (_body86447_ _tl8641986442_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd86445_)
                                        (let ((_expanders86449_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd86445_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd86445_
                                              _expanders86449_)
                                             (gx#core-expand-local-block
                                              _stx86410_
                                              _body86447_))
                                           gx#current-expander-context
                                           (let ((__obj87831
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj87831)
                                             __obj87831)))
                                        (_E8641386425_)))))
                              (_E8641386425_))))
                      (_E8641386425_)))))
          (_E8641286452_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx86359_)
        (let* ((_e8636086370_ _stx86359_)
               (_E8636286374_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8636086370_)))
               (_E8636186406_
                (lambda ()
                  (if (gx#stx-pair? _e8636086370_)
                      (let ((_e8636386378_ (gx#syntax-e _e8636086370_)))
                        (let ((_hd8636486381_ (##car _e8636386378_))
                              (_tl8636586383_ (##cdr _e8636386378_)))
                          (if (gx#stx-pair? _tl8636586383_)
                              (let ((_e8636686386_
                                     (gx#syntax-e _tl8636586383_)))
                                (let ((_hd8636786389_ (##car _e8636686386_))
                                      (_tl8636886391_ (##cdr _e8636686386_)))
                                  (let* ((_hd86394_ _hd8636786389_)
                                         (_body86396_ _tl8636886391_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd86394_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd86394_
                                            (make-list
                                             (gx#stx-length _hd86394_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8639886401_
                                                     _g8639986403_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8639886401_
                                               _g8639986403_
                                               '#t))
                                            _hd86394_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd86394_))
                                           (gx#core-expand-local-block
                                            _stx86359_
                                            _body86396_))
                                         gx#current-expander-context
                                         (let ((__obj87832
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj87832)
                                           __obj87832))
                                        (_E8636286374_)))))
                              (_E8636286374_))))
                      (_E8636286374_)))))
          (_E8636186406_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx86316_)
        (if (gx#stx-list? _stx86316_)
            (gx#stx-andmap
             (lambda (_bind86318_)
               (let* ((_e8631986329_ _bind86318_)
                      (_E8632186333_ (lambda () '#f))
                      (_E8632086355_
                       (lambda ()
                         (if (gx#stx-pair? _e8631986329_)
                             (let ((_e8632286337_ (gx#syntax-e _e8631986329_)))
                               (let ((_hd8632386340_ (##car _e8632286337_))
                                     (_tl8632486342_ (##cdr _e8632286337_)))
                                 (let ((_hd86345_ _hd8632386340_))
                                   (if (gx#stx-pair? _tl8632486342_)
                                       (let ((_e8632586347_
                                              (gx#syntax-e _tl8632486342_)))
                                         (let ((_hd8632686350_
                                                (##car _e8632586347_))
                                               (_tl8632786352_
                                                (##cdr _e8632586347_)))
                                           (if (gx#stx-null? _tl8632786352_)
                                               (if '#t
                                                   (gx#identifier? _hd86345_)
                                                   (_E8632186333_))
                                               (_E8632186333_))))
                                       (_E8632186333_)))))
                             (_E8632186333_)))))
                 (_E8632086355_)))
             _stx86316_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind86272_)
        (let* ((_e8627386283_ _bind86272_)
               (_E8627586287_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8627386283_)))
               (_E8627486312_
                (lambda ()
                  (if (gx#stx-pair? _e8627386283_)
                      (let ((_e8627686291_ (gx#syntax-e _e8627386283_)))
                        (let ((_hd8627786294_ (##car _e8627686291_))
                              (_tl8627886296_ (##cdr _e8627686291_)))
                          (if (gx#stx-pair? _tl8627886296_)
                              (let ((_e8627986299_
                                     (gx#syntax-e _tl8627886296_)))
                                (let ((_hd8628086302_ (##car _e8627986299_))
                                      (_tl8628186304_ (##cdr _e8627986299_)))
                                  (let ((_expr86307_ _hd8628086302_))
                                    (if (gx#stx-null? _tl8628186304_)
                                        (if '#t
                                            (let ((_g87841_
                                                   (gx#core-expand-expression+1
                                                    _expr86307_)))
                                              (begin
                                                (let ((_g87842_
                                                       (if (##values? _g87841_)
                                                           (##vector-length
                                                            _g87841_)
                                                           1)))
                                                  (if (not (##fx= _g87842_ 2))
                                                      (error "Context expects 2 values"
                                                             _g87842_)))
                                                (let ((__86309_
                                                       (##vector-ref
                                                        _g87841_
                                                        0))
                                                      (_e86310_
                                                       (##vector-ref
                                                        _g87841_
                                                        1)))
                                                  _e86310_)))
                                            (_E8627586287_))
                                        (_E8627586287_)))))
                              (_E8627586287_))))
                      (_E8627586287_)))))
          (_E8627486312_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind86217_ _e86218_ _rebind?86219_)
        (let* ((_e8622086230_ _bind86217_)
               (_E8622286234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8622086230_)))
               (_E8622186256_
                (lambda ()
                  (if (gx#stx-pair? _e8622086230_)
                      (let ((_e8622386238_ (gx#syntax-e _e8622086230_)))
                        (let ((_hd8622486241_ (##car _e8622386238_))
                              (_tl8622586243_ (##cdr _e8622386238_)))
                          (let ((_id86246_ _hd8622486241_))
                            (if (gx#stx-pair? _tl8622586243_)
                                (let ((_e8622686248_
                                       (gx#syntax-e _tl8622586243_)))
                                  (let ((_hd8622786251_ (##car _e8622686248_))
                                        (_tl8622886253_ (##cdr _e8622686248_)))
                                    (if (gx#stx-null? _tl8622886253_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id86246_
                                             _e86218_
                                             _rebind?86219_)
                                            (_E8622286234_))
                                        (_E8622286234_))))
                                (_E8622286234_)))))
                      (_E8622286234_)))))
          (_E8622186256_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind86263_ _e86264_)
        (let ((_rebind?86266_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind86263_
           _e86264_
           _rebind?86266_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g87844_
        (let ((_g87843_ (##length _g87844_)))
          (cond ((##fx= _g87843_ 2)
                 (apply (lambda (_bind86263_ _e86264_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind86263_
                           _e86264_))
                        _g87844_))
                ((##fx= _g87843_ 3)
                 (apply (lambda (_bind86268_ _e86269_ _rebind?86270_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind86268_
                           _e86269_
                           _rebind?86270_))
                        _g87844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g87844_))))))
    (define gx#core-expand-expression%
      (lambda (_stx86175_)
        (let* ((_e8617686186_ _stx86175_)
               (_E8617886190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8617686186_)))
               (_E8617786212_
                (lambda ()
                  (if (gx#stx-pair? _e8617686186_)
                      (let ((_e8617986194_ (gx#syntax-e _e8617686186_)))
                        (let ((_hd8618086197_ (##car _e8617986194_))
                              (_tl8618186199_ (##cdr _e8617986194_)))
                          (if (gx#stx-pair? _tl8618186199_)
                              (let ((_e8618286202_
                                     (gx#syntax-e _tl8618186199_)))
                                (let ((_hd8618386205_ (##car _e8618286202_))
                                      (_tl8618486207_ (##cdr _e8618286202_)))
                                  (let ((_expr86210_ _hd8618386205_))
                                    (if (gx#stx-null? _tl8618486207_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr86210_)
                                            (_E8617886190_))
                                        (_E8617886190_)))))
                              (_E8617886190_))))
                      (_E8617886190_)))))
          (_E8617786212_))))
    (define gx#core-expand-quote%
      (lambda (_stx86134_)
        (let* ((_e8613586145_ _stx86134_)
               (_E8613786149_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8613586145_)))
               (_E8613686171_
                (lambda ()
                  (if (gx#stx-pair? _e8613586145_)
                      (let ((_e8613886153_ (gx#syntax-e _e8613586145_)))
                        (let ((_hd8613986156_ (##car _e8613886153_))
                              (_tl8614086158_ (##cdr _e8613886153_)))
                          (if (gx#stx-pair? _tl8614086158_)
                              (let ((_e8614186161_
                                     (gx#syntax-e _tl8614086158_)))
                                (let ((_hd8614286164_ (##car _e8614186161_))
                                      (_tl8614386166_ (##cdr _e8614186161_)))
                                  (let ((_e86169_ _hd8614286164_))
                                    (if (gx#stx-null? _tl8614386166_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e86169_)
                                                         '()))
                                             (gx#stx-source _stx86134_))
                                            (_E8613786149_))
                                        (_E8613786149_)))))
                              (_E8613786149_))))
                      (_E8613786149_)))))
          (_E8613686171_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86093_)
        (let* ((_e8609486104_ _stx86093_)
               (_E8609686108_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8609486104_)))
               (_E8609586130_
                (lambda ()
                  (if (gx#stx-pair? _e8609486104_)
                      (let ((_e8609786112_ (gx#syntax-e _e8609486104_)))
                        (let ((_hd8609886115_ (##car _e8609786112_))
                              (_tl8609986117_ (##cdr _e8609786112_)))
                          (if (gx#stx-pair? _tl8609986117_)
                              (let ((_e8610086120_
                                     (gx#syntax-e _tl8609986117_)))
                                (let ((_hd8610186123_ (##car _e8610086120_))
                                      (_tl8610286125_ (##cdr _e8610086120_)))
                                  (let ((_e86128_ _hd8610186123_))
                                    (if (gx#stx-null? _tl8610286125_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e86128_)
                                                         '()))
                                             (gx#stx-source _stx86093_))
                                            (_E8609686108_))
                                        (_E8609686108_)))))
                              (_E8609686108_))))
                      (_E8609686108_)))))
          (_E8609586130_))))
    (define gx#core-expand-call%
      (lambda (_stx86050_)
        (let* ((_e8605186061_ _stx86050_)
               (_E8605386065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8605186061_)))
               (_E8605286089_
                (lambda ()
                  (if (gx#stx-pair? _e8605186061_)
                      (let ((_e8605486069_ (gx#syntax-e _e8605186061_)))
                        (let ((_hd8605586072_ (##car _e8605486069_))
                              (_tl8605686074_ (##cdr _e8605486069_)))
                          (if (gx#stx-pair? _tl8605686074_)
                              (let ((_e8605786077_
                                     (gx#syntax-e _tl8605686074_)))
                                (let ((_hd8605886080_ (##car _e8605786077_))
                                      (_tl8605986082_ (##cdr _e8605786077_)))
                                  (let* ((_rator86085_ _hd8605886080_)
                                         (_args86087_ _tl8605986082_))
                                    (if (gx#stx-list? _args86087_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86085_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86087_))
                                         (gx#stx-source _stx86050_))
                                        (_E8605386065_)))))
                              (_E8605386065_))))
                      (_E8605386065_)))))
          (_E8605286089_))))
    (define gx#core-expand-if%
      (lambda (_stx85983_)
        (let* ((_e8598486000_ _stx85983_)
               (_E8598686004_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8598486000_)))
               (_E8598586046_
                (lambda ()
                  (if (gx#stx-pair? _e8598486000_)
                      (let ((_e8598786008_ (gx#syntax-e _e8598486000_)))
                        (let ((_hd8598886011_ (##car _e8598786008_))
                              (_tl8598986013_ (##cdr _e8598786008_)))
                          (if (gx#stx-pair? _tl8598986013_)
                              (let ((_e8599086016_
                                     (gx#syntax-e _tl8598986013_)))
                                (let ((_hd8599186019_ (##car _e8599086016_))
                                      (_tl8599286021_ (##cdr _e8599086016_)))
                                  (let ((_test86024_ _hd8599186019_))
                                    (if (gx#stx-pair? _tl8599286021_)
                                        (let ((_e8599386026_
                                               (gx#syntax-e _tl8599286021_)))
                                          (let ((_hd8599486029_
                                                 (##car _e8599386026_))
                                                (_tl8599586031_
                                                 (##cdr _e8599386026_)))
                                            (let ((_K86034_ _hd8599486029_))
                                              (if (gx#stx-pair? _tl8599586031_)
                                                  (let ((_e8599686036_
                                                         (gx#syntax-e
                                                          _tl8599586031_)))
                                                    (let ((_hd8599786039_
                                                           (##car _e8599686036_))
                                                          (_tl8599886041_
                                                           (##cdr _e8599686036_)))
                                                      (let ((_E86044_
                                                             _hd8599786039_))
                                                        (if (gx#stx-null?
                                                             _tl8599886041_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86024_)
                                     (cons (gx#core-expand-expression _K86034_)
                                           (cons (gx#core-expand-expression
                                                  _E86044_)
                                                 '()))))
                         (gx#stx-source _stx85983_))
                        (_E8598686004_))
                    (_E8598686004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8598686004_)))))
                                        (_E8598686004_)))))
                              (_E8598686004_))))
                      (_E8598686004_)))))
          (_E8598586046_))))
    (define gx#core-expand-ref%
      (lambda (_stx85942_)
        (let* ((_e8594385953_ _stx85942_)
               (_E8594585957_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8594385953_)))
               (_E8594485979_
                (lambda ()
                  (if (gx#stx-pair? _e8594385953_)
                      (let ((_e8594685961_ (gx#syntax-e _e8594385953_)))
                        (let ((_hd8594785964_ (##car _e8594685961_))
                              (_tl8594885966_ (##cdr _e8594685961_)))
                          (if (gx#stx-pair? _tl8594885966_)
                              (let ((_e8594985969_
                                     (gx#syntax-e _tl8594885966_)))
                                (let ((_hd8595085972_ (##car _e8594985969_))
                                      (_tl8595185974_ (##cdr _e8594985969_)))
                                  (let ((_id85977_ _hd8595085972_))
                                    (if (gx#stx-null? _tl8595185974_)
                                        (if (gx#identifier? _id85977_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id85977_
                                                          _stx85942_)
                                                         '()))
                                             (gx#stx-source _stx85942_))
                                            (_E8594585957_))
                                        (_E8594585957_)))))
                              (_E8594585957_))))
                      (_E8594585957_)))))
          (_E8594485979_))))
    (define gx#core-expand-setq%
      (lambda (_stx85888_)
        (let* ((_e8588985902_ _stx85888_)
               (_E8589185906_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8588985902_)))
               (_E8589085938_
                (lambda ()
                  (if (gx#stx-pair? _e8588985902_)
                      (let ((_e8589285910_ (gx#syntax-e _e8588985902_)))
                        (let ((_hd8589385913_ (##car _e8589285910_))
                              (_tl8589485915_ (##cdr _e8589285910_)))
                          (if (gx#stx-pair? _tl8589485915_)
                              (let ((_e8589585918_
                                     (gx#syntax-e _tl8589485915_)))
                                (let ((_hd8589685921_ (##car _e8589585918_))
                                      (_tl8589785923_ (##cdr _e8589585918_)))
                                  (let ((_id85926_ _hd8589685921_))
                                    (if (gx#stx-pair? _tl8589785923_)
                                        (let ((_e8589885928_
                                               (gx#syntax-e _tl8589785923_)))
                                          (let ((_hd8589985931_
                                                 (##car _e8589885928_))
                                                (_tl8590085933_
                                                 (##cdr _e8589885928_)))
                                            (let ((_expr85936_ _hd8589985931_))
                                              (if (gx#stx-null? _tl8590085933_)
                                                  (if (gx#identifier?
                                                       _id85926_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id85926_
                            _stx85888_)
                           (cons (gx#core-expand-expression _expr85936_) '())))
               (gx#stx-source _stx85888_))
              (_E8589185906_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8589185906_)))))
                                        (_E8589185906_)))))
                              (_E8589185906_))))
                      (_E8589185906_)))))
          (_E8589085938_))))
    (define gx#macro-expand-extern
      (lambda (_stx85736_)
        (letrec ((_generate85738_
                  (lambda (_body85768_)
                    (let _lp85770_ ((_rest85772_ _body85768_)
                                    (_ns85773_ (gx#core-context-namespace__0))
                                    (_r85774_ '()))
                      (let* ((_e8577585790_ _rest85772_)
                             (_E8578885794_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8577585790_)))
                             (_E8578485798_
                              (lambda ()
                                (if (gx#stx-null? _e8577585790_)
                                    (if '#t (reverse _r85774_) (_E8578885794_))
                                    (_E8578885794_))))
                             (_E8577785855_
                              (lambda ()
                                (if (gx#stx-pair? _e8577585790_)
                                    (let ((_e8578585802_
                                           (gx#syntax-e _e8577585790_)))
                                      (let ((_hd8578685805_
                                             (##car _e8578585802_))
                                            (_tl8578785807_
                                             (##cdr _e8578585802_)))
                                        (let* ((_hd85810_ _hd8578685805_)
                                               (_rest85812_ _tl8578785807_))
                                          (if '#t
                                              (if (gx#identifier? _hd85810_)
                                                  (_lp85770_
                                                   _rest85812_
                                                   _ns85773_
                                                   (cons (cons _hd85810_
                                                               (cons (if _ns85773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd85810_
                                  _ns85773_
                                  '"#"
                                  _hd85810_)
                                 _hd85810_)
                             '()))
                 _r85774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8581385823_
                                                          _hd85810_)
                                                         (_E8581585827_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8581385823_)))
                                                         (_E8581485851_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8581385823_)
                        (let ((_e8581685831_ (gx#syntax-e _e8581385823_)))
                          (let ((_hd8581785834_ (##car _e8581685831_))
                                (_tl8581885836_ (##cdr _e8581685831_)))
                            (let ((_id85839_ _hd8581785834_))
                              (if (gx#stx-pair? _tl8581885836_)
                                  (let ((_e8581985841_
                                         (gx#syntax-e _tl8581885836_)))
                                    (let ((_hd8582085844_
                                           (##car _e8581985841_))
                                          (_tl8582185846_
                                           (##cdr _e8581985841_)))
                                      (let ((_eid85849_ _hd8582085844_))
                                        (if (gx#stx-null? _tl8582185846_)
                                            (if (and (gx#identifier? _id85839_)
                                                     (gx#identifier?
                                                      _eid85849_))
                                                (_lp85770_
                                                 _rest85812_
                                                 _ns85773_
                                                 (cons (cons _id85839_
                                                             (cons _eid85849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r85774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8581585827_))
                                            (_E8581585827_)))))
                                  (_E8581585827_)))))
                        (_E8581585827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8581485851_)))
                                              (_E8578485798_)))))
                                    (_E8578485798_))))
                             (_E8577685884_
                              (lambda ()
                                (if (gx#stx-pair? _e8577585790_)
                                    (let ((_e8577885859_
                                           (gx#syntax-e _e8577585790_)))
                                      (let ((_hd8577985862_
                                             (##car _e8577885859_))
                                            (_tl8578085864_
                                             (##cdr _e8577885859_)))
                                        (if (eq? (gx#stx-e _hd8577985862_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8578085864_)
                                                (let ((_e8578185867_
                                                       (gx#syntax-e
                                                        _tl8578085864_)))
                                                  (let ((_hd8578285870_
                                                         (##car _e8578185867_))
                                                        (_tl8578385872_
                                                         (##cdr _e8578185867_)))
                                                    (let* ((_ns85875_
                                                            _hd8578285870_)
                                                           (_rest85877_
                                                            _tl8578385872_))
                                                      (if '#t
                                                          (let ((_ns85882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns85875_)
                             (symbol->string (gx#stx-e _ns85875_))
                             (if (or (gx#stx-string? _ns85875_)
                                     (gx#stx-false? _ns85875_))
                                 (gx#stx-e _ns85875_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx85736_
                                  _ns85875_)))))
                    (_lp85770_ _rest85877_ _ns85882_ _r85774_))
                  (_E8577785855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8577785855_))
                                            (_E8577785855_))))
                                    (_E8577785855_)))))
                        (_E8577685884_))))))
          (let* ((_e8573985746_ _stx85736_)
                 (_E8574185750_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8573985746_)))
                 (_E8574085764_
                  (lambda ()
                    (if (gx#stx-pair? _e8573985746_)
                        (let ((_e8574285754_ (gx#syntax-e _e8573985746_)))
                          (let ((_hd8574385757_ (##car _e8574285754_))
                                (_tl8574485759_ (##cdr _e8574285754_)))
                            (let ((_body85762_ _tl8574485759_))
                              (if (gx#stx-list? _body85762_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate85738_ _body85762_))
                                  (_E8574185750_)))))
                        (_E8574185750_)))))
            (_E8574085764_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx85682_)
        (let* ((_e8568385696_ _stx85682_)
               (_E8568585700_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8568385696_)))
               (_E8568485732_
                (lambda ()
                  (if (gx#stx-pair? _e8568385696_)
                      (let ((_e8568685704_ (gx#syntax-e _e8568385696_)))
                        (let ((_hd8568785707_ (##car _e8568685704_))
                              (_tl8568885709_ (##cdr _e8568685704_)))
                          (if (gx#stx-pair? _tl8568885709_)
                              (let ((_e8568985712_
                                     (gx#syntax-e _tl8568885709_)))
                                (let ((_hd8569085715_ (##car _e8568985712_))
                                      (_tl8569185717_ (##cdr _e8568985712_)))
                                  (let ((_hd85720_ _hd8569085715_))
                                    (if (gx#stx-pair? _tl8569185717_)
                                        (let ((_e8569285722_
                                               (gx#syntax-e _tl8569185717_)))
                                          (let ((_hd8569385725_
                                                 (##car _e8569285722_))
                                                (_tl8569485727_
                                                 (##cdr _e8569285722_)))
                                            (let ((_expr85730_ _hd8569385725_))
                                              (if (gx#stx-null? _tl8569485727_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd85720_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _hd85720_)
                          (cons _expr85730_ '())))
              (_E8568585700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8568585700_)))))
                                        (_E8568585700_)))))
                              (_E8568585700_))))
                      (_E8568585700_)))))
          (_E8568485732_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx85628_)
        (let* ((_e8562985642_ _stx85628_)
               (_E8563185646_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8562985642_)))
               (_E8563085678_
                (lambda ()
                  (if (gx#stx-pair? _e8562985642_)
                      (let ((_e8563285650_ (gx#syntax-e _e8562985642_)))
                        (let ((_hd8563385653_ (##car _e8563285650_))
                              (_tl8563485655_ (##cdr _e8563285650_)))
                          (if (gx#stx-pair? _tl8563485655_)
                              (let ((_e8563585658_
                                     (gx#syntax-e _tl8563485655_)))
                                (let ((_hd8563685661_ (##car _e8563585658_))
                                      (_tl8563785663_ (##cdr _e8563585658_)))
                                  (let ((_hd85666_ _hd8563685661_))
                                    (if (gx#stx-pair? _tl8563785663_)
                                        (let ((_e8563885668_
                                               (gx#syntax-e _tl8563785663_)))
                                          (let ((_hd8563985671_
                                                 (##car _e8563885668_))
                                                (_tl8564085673_
                                                 (##cdr _e8563885668_)))
                                            (let ((_expr85676_ _hd8563985671_))
                                              (if (gx#stx-null? _tl8564085673_)
                                                  (if (gx#identifier?
                                                       _hd85666_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd85666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr85676_ '())))
              (_E8563185646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8563185646_)))))
                                        (_E8563185646_)))))
                              (_E8563185646_))))
                      (_E8563185646_)))))
          (_E8563085678_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx85574_)
        (let* ((_e8557585588_ _stx85574_)
               (_E8557785592_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8557585588_)))
               (_E8557685624_
                (lambda ()
                  (if (gx#stx-pair? _e8557585588_)
                      (let ((_e8557885596_ (gx#syntax-e _e8557585588_)))
                        (let ((_hd8557985599_ (##car _e8557885596_))
                              (_tl8558085601_ (##cdr _e8557885596_)))
                          (if (gx#stx-pair? _tl8558085601_)
                              (let ((_e8558185604_
                                     (gx#syntax-e _tl8558085601_)))
                                (let ((_hd8558285607_ (##car _e8558185604_))
                                      (_tl8558385609_ (##cdr _e8558185604_)))
                                  (let ((_id85612_ _hd8558285607_))
                                    (if (gx#stx-pair? _tl8558385609_)
                                        (let ((_e8558485614_
                                               (gx#syntax-e _tl8558385609_)))
                                          (let ((_hd8558585617_
                                                 (##car _e8558485614_))
                                                (_tl8558685619_
                                                 (##cdr _e8558485614_)))
                                            (let ((_alias-id85622_
                                                   _hd8558585617_))
                                              (if (gx#stx-null? _tl8558685619_)
                                                  (if (and (gx#identifier?
                                                            _id85612_)
                                                           (gx#identifier?
                                                            _alias-id85622_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id85612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id85622_ '())))
              (_E8557785592_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8557785592_)))))
                                        (_E8557785592_)))))
                              (_E8557785592_))))
                      (_E8557785592_)))))
          (_E8557685624_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx85531_)
        (let* ((_e8553285542_ _stx85531_)
               (_E8553485546_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8553285542_)))
               (_E8553385570_
                (lambda ()
                  (if (gx#stx-pair? _e8553285542_)
                      (let ((_e8553585550_ (gx#syntax-e _e8553285542_)))
                        (let ((_hd8553685553_ (##car _e8553585550_))
                              (_tl8553785555_ (##cdr _e8553585550_)))
                          (if (gx#stx-pair? _tl8553785555_)
                              (let ((_e8553885558_
                                     (gx#syntax-e _tl8553785555_)))
                                (let ((_hd8553985561_ (##car _e8553885558_))
                                      (_tl8554085563_ (##cdr _e8553885558_)))
                                  (let* ((_hd85566_ _hd8553985561_)
                                         (_body85568_ _tl8554085563_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd85566_)
                                             (gx#stx-list? _body85568_)
                                             (not (gx#stx-null? _body85568_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _hd85566_)
                                         _body85568_)
                                        (_E8553485546_)))))
                              (_E8553485546_))))
                      (_E8553485546_)))))
          (_E8553385570_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx85467_)
        (letrec ((_generate85469_
                  (lambda (_clause85499_)
                    (let* ((_e8550085507_ _clause85499_)
                           (_E8550285511_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx85467_
                               _clause85499_)))
                           (_E8550185527_
                            (lambda ()
                              (if (gx#stx-pair? _e8550085507_)
                                  (let ((_e8550385515_
                                         (gx#syntax-e _e8550085507_)))
                                    (let ((_hd8550485518_
                                           (##car _e8550385515_))
                                          (_tl8550585520_
                                           (##cdr _e8550385515_)))
                                      (let* ((_hd85523_ _hd8550485518_)
                                             (_body85525_ _tl8550585520_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd85523_)
                                                 (gx#stx-list? _body85525_)
                                                 (not (gx#stx-null?
                                                       _body85525_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _hd85523_)
                                                   _body85525_)
                                             (gx#stx-source _clause85499_))
                                            (_E8550285511_)))))
                                  (_E8550285511_)))))
                      (_E8550185527_)))))
          (let* ((_e8547085477_ _stx85467_)
                 (_E8547285481_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8547085477_)))
                 (_E8547185495_
                  (lambda ()
                    (if (gx#stx-pair? _e8547085477_)
                        (let ((_e8547385485_ (gx#syntax-e _e8547085477_)))
                          (let ((_hd8547485488_ (##car _e8547385485_))
                                (_tl8547585490_ (##cdr _e8547385485_)))
                            (let ((_clauses85493_ _tl8547585490_))
                              (if (gx#stx-list? _clauses85493_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate85469_
                                    _clauses85493_))
                                  (_E8547285481_)))))
                        (_E8547285481_)))))
            (_E8547185495_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx85368_ _form85369_)
        (letrec ((_generate85371_
                  (lambda (_bind85414_)
                    (let* ((_e8541585425_ _bind85414_)
                           (_E8541785429_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx85368_
                               _bind85414_)))
                           (_E8541685453_
                            (lambda ()
                              (if (gx#stx-pair? _e8541585425_)
                                  (let ((_e8541885433_
                                         (gx#syntax-e _e8541585425_)))
                                    (let ((_hd8541985436_
                                           (##car _e8541885433_))
                                          (_tl8542085438_
                                           (##cdr _e8541885433_)))
                                      (let ((_ids85441_ _hd8541985436_))
                                        (if (gx#stx-pair? _tl8542085438_)
                                            (let ((_e8542185443_
                                                   (gx#syntax-e
                                                    _tl8542085438_)))
                                              (let ((_hd8542285446_
                                                     (##car _e8542185443_))
                                                    (_tl8542385448_
                                                     (##cdr _e8542185443_)))
                                                (let ((_expr85451_
                                                       _hd8542285446_))
                                                  (if (gx#stx-null?
                                                       _tl8542385448_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids85441_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _ids85441_)
                        (cons _expr85451_ '()))
                  (_E8541785429_))
              (_E8541785429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8541785429_)))))
                                  (_E8541785429_)))))
                      (_E8541685453_)))))
          (let* ((_e8537285382_ _stx85368_)
                 (_E8537485386_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8537285382_)))
                 (_E8537385410_
                  (lambda ()
                    (if (gx#stx-pair? _e8537285382_)
                        (let ((_e8537585390_ (gx#syntax-e _e8537285382_)))
                          (let ((_hd8537685393_ (##car _e8537585390_))
                                (_tl8537785395_ (##cdr _e8537585390_)))
                            (if (gx#stx-pair? _tl8537785395_)
                                (let ((_e8537885398_
                                       (gx#syntax-e _tl8537785395_)))
                                  (let ((_hd8537985401_ (##car _e8537885398_))
                                        (_tl8538085403_ (##cdr _e8537885398_)))
                                    (let* ((_hd85406_ _hd8537985401_)
                                           (_body85408_ _tl8538085403_))
                                      (if (and (gx#stx-list? _hd85406_)
                                               (gx#stx-list? _body85408_)
                                               (not (gx#stx-null?
                                                     _body85408_)))
                                          (gx#core-cons*
                                           _form85369_
                                           (gx#stx-map1
                                            _generate85371_
                                            _hd85406_)
                                           _body85408_)
                                          (_E8537485386_)))))
                                (_E8537485386_))))
                        (_E8537485386_)))))
            (_E8537385410_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx85460_)
        (let ((_form85462_ '%#let-values))
          (gx#macro-expand-let-values__% _stx85460_ _form85462_))))
    (define gx#macro-expand-let-values
      (lambda _g87846_
        (let ((_g87845_ (##length _g87846_)))
          (cond ((##fx= _g87845_ 1)
                 (apply (lambda (_stx85460_)
                          (gx#macro-expand-let-values__0 _stx85460_))
                        _g87846_))
                ((##fx= _g87845_ 2)
                 (apply (lambda (_stx85464_ _form85465_)
                          (gx#macro-expand-let-values__%
                           _stx85464_
                           _form85465_))
                        _g87846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g87846_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx85365_)
        (gx#macro-expand-let-values__% _stx85365_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx85363_)
        (gx#macro-expand-let-values__% _stx85363_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx85254_)
        (let* ((_e8525585281_ _stx85254_)
               (_E8526785285_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8525585281_)))
               (_E8525785327_
                (lambda ()
                  (if (gx#stx-pair? _e8525585281_)
                      (let ((_e8526885289_ (gx#syntax-e _e8525585281_)))
                        (let ((_hd8526985292_ (##car _e8526885289_))
                              (_tl8527085294_ (##cdr _e8526885289_)))
                          (if (gx#stx-pair? _tl8527085294_)
                              (let ((_e8527185297_
                                     (gx#syntax-e _tl8527085294_)))
                                (let ((_hd8527285300_ (##car _e8527185297_))
                                      (_tl8527385302_ (##cdr _e8527185297_)))
                                  (let ((_test85305_ _hd8527285300_))
                                    (if (gx#stx-pair? _tl8527385302_)
                                        (let ((_e8527485307_
                                               (gx#syntax-e _tl8527385302_)))
                                          (let ((_hd8527585310_
                                                 (##car _e8527485307_))
                                                (_tl8527685312_
                                                 (##cdr _e8527485307_)))
                                            (let ((_K85315_ _hd8527585310_))
                                              (if (gx#stx-pair? _tl8527685312_)
                                                  (let ((_e8527785317_
                                                         (gx#syntax-e
                                                          _tl8527685312_)))
                                                    (let ((_hd8527885320_
                                                           (##car _e8527785317_))
                                                          (_tl8527985322_
                                                           (##cdr _e8527785317_)))
                                                      (let ((_E85325_
                                                             _hd8527885320_))
                                                        (if (gx#stx-null?
                                                             _tl8527985322_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test85305_
                         _K85315_
                         _E85325_)
                        (_E8526785285_))
                    (_E8526785285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8526785285_)))))
                                        (_E8526785285_)))))
                              (_E8526785285_))))
                      (_E8526785285_))))
               (_E8525685359_
                (lambda ()
                  (if (gx#stx-pair? _e8525585281_)
                      (let ((_e8525885331_ (gx#syntax-e _e8525585281_)))
                        (let ((_hd8525985334_ (##car _e8525885331_))
                              (_tl8526085336_ (##cdr _e8525885331_)))
                          (if (gx#stx-pair? _tl8526085336_)
                              (let ((_e8526185339_
                                     (gx#syntax-e _tl8526085336_)))
                                (let ((_hd8526285342_ (##car _e8526185339_))
                                      (_tl8526385344_ (##cdr _e8526185339_)))
                                  (let ((_test85347_ _hd8526285342_))
                                    (if (gx#stx-pair? _tl8526385344_)
                                        (let ((_e8526485349_
                                               (gx#syntax-e _tl8526385344_)))
                                          (let ((_hd8526585352_
                                                 (##car _e8526485349_))
                                                (_tl8526685354_
                                                 (##cdr _e8526485349_)))
                                            (let ((_K85357_ _hd8526585352_))
                                              (if (gx#stx-null? _tl8526685354_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test85347_
                                                       _K85357_
                                                       '#!void)
                                                      (_E8525785327_))
                                                  (_E8525785327_)))))
                                        (_E8525785327_)))))
                              (_E8525785327_))))
                      (_E8525785327_)))))
          (_E8525685359_))))
    (define gx#free-identifier=?
      (lambda (_xid85242_ _yid85243_)
        (let ((_xe85245_ (gx#resolve-identifier__0 _xid85242_))
              (_ye85246_ (gx#resolve-identifier__0 _yid85243_)))
          (if (and _xe85245_ _ye85246_)
              (let ((_$e85248_ (eq? _xe85245_ _ye85246_)))
                (if _$e85248_
                    _$e85248_
                    (if (##structure-instance-of? _xe85245_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye85246_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe85245_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye85246_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe85245_ _ye85246_)
                  '#f
                  (gx#stx-eq? _xid85242_ _yid85243_))))))
    (define gx#bound-identifier=?
      (lambda (_xid85226_ _yid85227_)
        (letrec ((_context85229_
                  (lambda (_e85240_)
                    (if (##structure-direct-instance-of?
                         _e85240_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _e85240_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_marks85230_
                  (lambda (_e85238_)
                    (if (symbol? _e85238_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e85238_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _e85238_ '3 '#f '#f)
                            (##unchecked-structure-ref _e85238_ '4 '#f '#f)))))
                 (_unwrap85231_
                  (lambda (_e85236_)
                    (if (symbol? _e85236_)
                        _e85236_
                        (gx#syntax-local-unwrap _e85236_)))))
          (let ((_x85233_ (_unwrap85231_ _xid85226_))
                (_y85234_ (_unwrap85231_ _yid85227_)))
            (if (gx#stx-eq? _x85233_ _y85234_)
                (if (eq? (_context85229_ _x85233_) (_context85229_ _y85234_))
                    (equal? (_marks85230_ _x85233_) (_marks85230_ _y85234_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx85224_)
        (if (gx#identifier? _stx85224_)
            (gx#core-identifier=? _stx85224_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx85222_)
        (if (gx#identifier? _stx85222_)
            (gx#core-identifier=? _stx85222_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx85168_ _where85169_)
        (let _lp85171_ ((_rest85173_ (gx#syntax->list _stx85168_)))
          (let* ((_rest8517485182_ _rest85173_)
                 (_else8517685190_ (lambda () '#t))
                 (_K8517885200_
                  (lambda (_rest85193_ _hd85194_)
                    (if (not (gx#identifier? _hd85194_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where85169_
                         _hd85194_)
                        (if (__find (lambda (_g8519585197_)
                                      (gx#bound-identifier=?
                                       _g8519585197_
                                       _hd85194_))
                                    _rest85193_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where85169_
                             _hd85194_)
                            (_lp85171_ _rest85193_))))))
            (if (##pair? _rest8517485182_)
                (let ((_hd8517985203_ (##car _rest8517485182_))
                      (_tl8518085205_ (##cdr _rest8517485182_)))
                  (let* ((_hd85208_ _hd8517985203_)
                         (_rest85210_ _tl8518085205_))
                    (_K8517885200_ _rest85210_ _hd85208_)))
                (_else8517685190_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx85215_)
        (let ((_where85217_ _stx85215_))
          (gx#check-duplicate-identifiers__% _stx85215_ _where85217_))))
    (define gx#check-duplicate-identifiers
      (lambda _g87848_
        (let ((_g87847_ (##length _g87848_)))
          (cond ((##fx= _g87847_ 1)
                 (apply (lambda (_stx85215_)
                          (gx#check-duplicate-identifiers__0 _stx85215_))
                        _g87848_))
                ((##fx= _g87847_ 2)
                 (apply (lambda (_stx85219_ _where85220_)
                          (gx#check-duplicate-identifiers__%
                           _stx85219_
                           _where85220_))
                        _g87848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g87848_))))))
    (define gx#core-bind-values?
      (lambda (_stx85160_)
        (gx#stx-andmap
         (lambda (_x85162_)
           (let ((_$e85164_ (gx#identifier? _x85162_)))
             (if _$e85164_ _$e85164_ (gx#stx-false? _x85162_))))
         _stx85160_)))
    (define gx#core-bind-values!__%
      (lambda (_stx85124_ _rebind?85125_ _phi85126_ _ctx85127_)
        (gx#stx-for-each1
         (lambda (_id85129_)
           (if (gx#identifier? _id85129_)
               (gx#core-bind-runtime!__%
                _id85129_
                _rebind?85125_
                _phi85126_
                _ctx85127_)
               '#!void))
         _stx85124_)))
    (define gx#core-bind-values!__0
      (lambda (_stx85134_)
        (let* ((_rebind?85136_ '#f)
               (_phi85138_ (gx#current-expander-phi))
               (_ctx85140_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85134_
           _rebind?85136_
           _phi85138_
           _ctx85140_))))
    (define gx#core-bind-values!__1
      (lambda (_stx85142_ _rebind?85143_)
        (let* ((_phi85145_ (gx#current-expander-phi))
               (_ctx85147_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85142_
           _rebind?85143_
           _phi85145_
           _ctx85147_))))
    (define gx#core-bind-values!__2
      (lambda (_stx85149_ _rebind?85150_ _phi85151_)
        (let ((_ctx85153_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx85149_
           _rebind?85150_
           _phi85151_
           _ctx85153_))))
    (define gx#core-bind-values!
      (lambda _g87850_
        (let ((_g87849_ (##length _g87850_)))
          (cond ((##fx= _g87849_ 1)
                 (apply (lambda (_stx85134_)
                          (gx#core-bind-values!__0 _stx85134_))
                        _g87850_))
                ((##fx= _g87849_ 2)
                 (apply (lambda (_stx85142_ _rebind?85143_)
                          (gx#core-bind-values!__1 _stx85142_ _rebind?85143_))
                        _g87850_))
                ((##fx= _g87849_ 3)
                 (apply (lambda (_stx85149_ _rebind?85150_ _phi85151_)
                          (gx#core-bind-values!__2
                           _stx85149_
                           _rebind?85150_
                           _phi85151_))
                        _g87850_))
                ((##fx= _g87849_ 4)
                 (apply (lambda (_stx85155_
                                 _rebind?85156_
                                 _phi85157_
                                 _ctx85158_)
                          (gx#core-bind-values!__%
                           _stx85155_
                           _rebind?85156_
                           _phi85157_
                           _ctx85158_))
                        _g87850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g87850_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx85119_)
        (gx#stx-map1
         (lambda (_x85121_)
           (if (gx#identifier? _x85121_)
               (gx#core-quote-syntax__0 _x85121_)
               '#f))
         _stx85119_)))
    (define gx#core-runtime-ref?
      (lambda (_stx85112_)
        (if (gx#identifier? _stx85112_)
            (let* ((_bind85114_ (gx#resolve-identifier__0 _stx85112_))
                   (_$e85116_ (not _bind85114_)))
              (if _$e85116_
                  _$e85116_
                  (##structure-instance-of?
                   _bind85114_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id85104_ _form85105_)
        (let ((_bind85107_ (gx#resolve-identifier__0 _id85104_)))
          (if (##structure-instance-of? _bind85107_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id85104_)
              (if (not _bind85107_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id85104_)))
                      (gx#core-quote-syntax__0 _id85104_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form85105_
                       _id85104_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form85105_
                   _id85104_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85063_ _rebind?85064_ _phi85065_ _ctx85066_)
        (let* ((_key85068_ (gx#core-identifier-key _id85063_))
               (_eid85070_
                (gx#make-binding-id__% _key85068_ '#f _phi85065_ _ctx85066_))
               (_bind85072_
                (if (##structure-instance-of? _ctx85066_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85070_
                     _key85068_
                     _phi85065_
                     _ctx85066_)
                    (if (##structure-instance-of?
                         _ctx85066_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85070_
                         _key85068_
                         _phi85065_)
                        (if (##structure-instance-of?
                             _ctx85066_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85070_
                             _key85068_
                             _phi85065_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85070_
                             _key85068_
                             _phi85065_))))))
          (gx#bind-identifier!__%
           _id85063_
           _bind85072_
           _rebind?85064_
           _phi85065_
           _ctx85066_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85078_)
        (let* ((_rebind?85080_ '#f)
               (_phi85082_ (gx#current-expander-phi))
               (_ctx85084_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85078_
           _rebind?85080_
           _phi85082_
           _ctx85084_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85086_ _rebind?85087_)
        (let* ((_phi85089_ (gx#current-expander-phi))
               (_ctx85091_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85086_
           _rebind?85087_
           _phi85089_
           _ctx85091_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85093_ _rebind?85094_ _phi85095_)
        (let ((_ctx85097_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85093_
           _rebind?85094_
           _phi85095_
           _ctx85097_))))
    (define gx#core-bind-runtime!
      (lambda _g87852_
        (let ((_g87851_ (##length _g87852_)))
          (cond ((##fx= _g87851_ 1)
                 (apply (lambda (_id85078_)
                          (gx#core-bind-runtime!__0 _id85078_))
                        _g87852_))
                ((##fx= _g87851_ 2)
                 (apply (lambda (_id85086_ _rebind?85087_)
                          (gx#core-bind-runtime!__1 _id85086_ _rebind?85087_))
                        _g87852_))
                ((##fx= _g87851_ 3)
                 (apply (lambda (_id85093_ _rebind?85094_ _phi85095_)
                          (gx#core-bind-runtime!__2
                           _id85093_
                           _rebind?85094_
                           _phi85095_))
                        _g87852_))
                ((##fx= _g87851_ 4)
                 (apply (lambda (_id85099_
                                 _rebind?85100_
                                 _phi85101_
                                 _ctx85102_)
                          (gx#core-bind-runtime!__%
                           _id85099_
                           _rebind?85100_
                           _phi85101_
                           _ctx85102_))
                        _g87852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g87852_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85018_ _eid85019_ _rebind?85020_ _phi85021_ _ctx85022_)
        (let* ((_key85024_ (gx#core-identifier-key _id85018_))
               (_bind85026_
                (if (##structure-instance-of? _ctx85022_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85019_
                     _key85024_
                     _phi85021_
                     _ctx85022_)
                    (if (##structure-instance-of?
                         _ctx85022_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85019_
                         _key85024_
                         _phi85021_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85019_
                         _key85024_
                         _phi85021_)))))
          (gx#bind-identifier!__%
           _id85018_
           _bind85026_
           _rebind?85020_
           _phi85021_
           _ctx85022_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85032_ _eid85033_)
        (let* ((_rebind?85035_ '#f)
               (_phi85037_ (gx#current-expander-phi))
               (_ctx85039_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85032_
           _eid85033_
           _rebind?85035_
           _phi85037_
           _ctx85039_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85041_ _eid85042_ _rebind?85043_)
        (let* ((_phi85045_ (gx#current-expander-phi))
               (_ctx85047_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85041_
           _eid85042_
           _rebind?85043_
           _phi85045_
           _ctx85047_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85049_ _eid85050_ _rebind?85051_ _phi85052_)
        (let ((_ctx85054_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85049_
           _eid85050_
           _rebind?85051_
           _phi85052_
           _ctx85054_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g87854_
        (let ((_g87853_ (##length _g87854_)))
          (cond ((##fx= _g87853_ 2)
                 (apply (lambda (_id85032_ _eid85033_)
                          (gx#core-bind-runtime-reference!__0
                           _id85032_
                           _eid85033_))
                        _g87854_))
                ((##fx= _g87853_ 3)
                 (apply (lambda (_id85041_ _eid85042_ _rebind?85043_)
                          (gx#core-bind-runtime-reference!__1
                           _id85041_
                           _eid85042_
                           _rebind?85043_))
                        _g87854_))
                ((##fx= _g87853_ 4)
                 (apply (lambda (_id85049_
                                 _eid85050_
                                 _rebind?85051_
                                 _phi85052_)
                          (gx#core-bind-runtime-reference!__2
                           _id85049_
                           _eid85050_
                           _rebind?85051_
                           _phi85052_))
                        _g87854_))
                ((##fx= _g87853_ 5)
                 (apply (lambda (_id85056_
                                 _eid85057_
                                 _rebind?85058_
                                 _phi85059_
                                 _ctx85060_)
                          (gx#core-bind-runtime-reference!__%
                           _id85056_
                           _eid85057_
                           _rebind?85058_
                           _phi85059_
                           _ctx85060_))
                        _g87854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g87854_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id84978_ _eid84979_ _rebind?84980_ _phi84981_ _ctx84982_)
        (gx#bind-identifier!__%
         _id84978_
         (##structure
          gx#extern-binding::t
          _eid84979_
          (gx#core-identifier-key _id84978_)
          _phi84981_)
         _rebind?84980_
         _phi84981_
         _ctx84982_)))
    (define gx#core-bind-extern!__0
      (lambda (_id84987_ _eid84988_)
        (let* ((_rebind?84990_ '#f)
               (_phi84992_ (gx#current-expander-phi))
               (_ctx84994_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id84987_
           _eid84988_
           _rebind?84990_
           _phi84992_
           _ctx84994_))))
    (define gx#core-bind-extern!__1
      (lambda (_id84996_ _eid84997_ _rebind?84998_)
        (let* ((_phi85000_ (gx#current-expander-phi))
               (_ctx85002_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id84996_
           _eid84997_
           _rebind?84998_
           _phi85000_
           _ctx85002_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85004_ _eid85005_ _rebind?85006_ _phi85007_)
        (let ((_ctx85009_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85004_
           _eid85005_
           _rebind?85006_
           _phi85007_
           _ctx85009_))))
    (define gx#core-bind-extern!
      (lambda _g87856_
        (let ((_g87855_ (##length _g87856_)))
          (cond ((##fx= _g87855_ 2)
                 (apply (lambda (_id84987_ _eid84988_)
                          (gx#core-bind-extern!__0 _id84987_ _eid84988_))
                        _g87856_))
                ((##fx= _g87855_ 3)
                 (apply (lambda (_id84996_ _eid84997_ _rebind?84998_)
                          (gx#core-bind-extern!__1
                           _id84996_
                           _eid84997_
                           _rebind?84998_))
                        _g87856_))
                ((##fx= _g87855_ 4)
                 (apply (lambda (_id85004_
                                 _eid85005_
                                 _rebind?85006_
                                 _phi85007_)
                          (gx#core-bind-extern!__2
                           _id85004_
                           _eid85005_
                           _rebind?85006_
                           _phi85007_))
                        _g87856_))
                ((##fx= _g87855_ 5)
                 (apply (lambda (_id85011_
                                 _eid85012_
                                 _rebind?85013_
                                 _phi85014_
                                 _ctx85015_)
                          (gx#core-bind-extern!__%
                           _id85011_
                           _eid85012_
                           _rebind?85013_
                           _phi85014_
                           _ctx85015_))
                        _g87856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g87856_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id84932_ _e84933_ _rebind?84934_ _phi84935_ _ctx84936_)
        (gx#bind-identifier!__%
         _id84932_
         (let ((_key84941_ (gx#core-identifier-key _id84932_))
               (_e84942_
                (if (or (##structure-instance-of? _e84933_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e84933_
                         'gx#expander-context::t))
                    _e84933_
                    (##structure
                     gx#user-expander::t
                     _e84933_
                     _ctx84936_
                     _phi84935_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key84941_ '#t _phi84935_ _ctx84936_)
            _key84941_
            _phi84935_
            _e84942_))
         _rebind?84934_
         _phi84935_
         _ctx84936_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id84947_ _e84948_)
        (let* ((_rebind?84950_ '#f)
               (_phi84952_ (gx#current-expander-phi))
               (_ctx84954_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id84947_
           _e84948_
           _rebind?84950_
           _phi84952_
           _ctx84954_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id84956_ _e84957_ _rebind?84958_)
        (let* ((_phi84960_ (gx#current-expander-phi))
               (_ctx84962_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id84956_
           _e84957_
           _rebind?84958_
           _phi84960_
           _ctx84962_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id84964_ _e84965_ _rebind?84966_ _phi84967_)
        (let ((_ctx84969_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id84964_
           _e84965_
           _rebind?84966_
           _phi84967_
           _ctx84969_))))
    (define gx#core-bind-syntax!
      (lambda _g87858_
        (let ((_g87857_ (##length _g87858_)))
          (cond ((##fx= _g87857_ 2)
                 (apply (lambda (_id84947_ _e84948_)
                          (gx#core-bind-syntax!__0 _id84947_ _e84948_))
                        _g87858_))
                ((##fx= _g87857_ 3)
                 (apply (lambda (_id84956_ _e84957_ _rebind?84958_)
                          (gx#core-bind-syntax!__1
                           _id84956_
                           _e84957_
                           _rebind?84958_))
                        _g87858_))
                ((##fx= _g87857_ 4)
                 (apply (lambda (_id84964_ _e84965_ _rebind?84966_ _phi84967_)
                          (gx#core-bind-syntax!__2
                           _id84964_
                           _e84965_
                           _rebind?84966_
                           _phi84967_))
                        _g87858_))
                ((##fx= _g87857_ 5)
                 (apply (lambda (_id84971_
                                 _e84972_
                                 _rebind?84973_
                                 _phi84974_
                                 _ctx84975_)
                          (gx#core-bind-syntax!__%
                           _id84971_
                           _e84972_
                           _rebind?84973_
                           _phi84974_
                           _ctx84975_))
                        _g87858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g87858_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id84915_ _e84916_ _rebind?84917_)
        (gx#core-bind-syntax!__%
         _id84915_
         _e84916_
         _rebind?84917_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id84922_ _e84923_)
        (let ((_rebind?84925_ '#f))
          (gx#core-bind-root-syntax!__% _id84922_ _e84923_ _rebind?84925_))))
    (define gx#core-bind-root-syntax!
      (lambda _g87860_
        (let ((_g87859_ (##length _g87860_)))
          (cond ((##fx= _g87859_ 2)
                 (apply (lambda (_id84922_ _e84923_)
                          (gx#core-bind-root-syntax!__0 _id84922_ _e84923_))
                        _g87860_))
                ((##fx= _g87859_ 3)
                 (apply (lambda (_id84927_ _e84928_ _rebind?84929_)
                          (gx#core-bind-root-syntax!__%
                           _id84927_
                           _e84928_
                           _rebind?84929_))
                        _g87860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g87860_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id84873_ _alias-id84874_ _rebind?84875_ _phi84876_ _ctx84877_)
        (gx#bind-identifier!__%
         _id84873_
         (let ((_key84879_ (gx#core-identifier-key _id84873_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key84879_ '#t _phi84876_ _ctx84877_)
            _key84879_
            _phi84876_
            _alias-id84874_))
         _rebind?84875_
         _phi84876_
         _ctx84877_)))
    (define gx#core-bind-alias!__0
      (lambda (_id84884_ _alias-id84885_)
        (let* ((_rebind?84887_ '#f)
               (_phi84889_ (gx#current-expander-phi))
               (_ctx84891_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id84884_
           _alias-id84885_
           _rebind?84887_
           _phi84889_
           _ctx84891_))))
    (define gx#core-bind-alias!__1
      (lambda (_id84893_ _alias-id84894_ _rebind?84895_)
        (let* ((_phi84897_ (gx#current-expander-phi))
               (_ctx84899_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id84893_
           _alias-id84894_
           _rebind?84895_
           _phi84897_
           _ctx84899_))))
    (define gx#core-bind-alias!__2
      (lambda (_id84901_ _alias-id84902_ _rebind?84903_ _phi84904_)
        (let ((_ctx84906_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id84901_
           _alias-id84902_
           _rebind?84903_
           _phi84904_
           _ctx84906_))))
    (define gx#core-bind-alias!
      (lambda _g87862_
        (let ((_g87861_ (##length _g87862_)))
          (cond ((##fx= _g87861_ 2)
                 (apply (lambda (_id84884_ _alias-id84885_)
                          (gx#core-bind-alias!__0 _id84884_ _alias-id84885_))
                        _g87862_))
                ((##fx= _g87861_ 3)
                 (apply (lambda (_id84893_ _alias-id84894_ _rebind?84895_)
                          (gx#core-bind-alias!__1
                           _id84893_
                           _alias-id84894_
                           _rebind?84895_))
                        _g87862_))
                ((##fx= _g87861_ 4)
                 (apply (lambda (_id84901_
                                 _alias-id84902_
                                 _rebind?84903_
                                 _phi84904_)
                          (gx#core-bind-alias!__2
                           _id84901_
                           _alias-id84902_
                           _rebind?84903_
                           _phi84904_))
                        _g87862_))
                ((##fx= _g87861_ 5)
                 (apply (lambda (_id84908_
                                 _alias-id84909_
                                 _rebind?84910_
                                 _phi84911_
                                 _ctx84912_)
                          (gx#core-bind-alias!__%
                           _id84908_
                           _alias-id84909_
                           _rebind?84910_
                           _phi84911_
                           _ctx84912_))
                        _g87862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g87862_))))))
    (define gx#make-binding-id__%
      (lambda (_key84830_ _syntax?84831_ _phi84832_ _ctx84833_)
        (if (uninterned-symbol? _key84830_)
            (##gensym 'L)
            (if (pair? _key84830_)
                (gensym (car _key84830_))
                (if (##structure-instance-of? _ctx84833_ 'gx#top-context::t)
                    (let ((_ns84835_
                           (gx#core-context-namespace__% _ctx84833_)))
                      (if (and (fxzero? _phi84832_) (not _syntax?84831_))
                          (if _ns84835_
                              (make-symbol__1 _ns84835_ '"#" _key84830_)
                              _key84830_)
                          (if _syntax?84831_
                              (make-symbol__1
                               (let ((_$e84837_ _ns84835_))
                                 (if _$e84837_ _$e84837_ '""))
                               '"[:"
                               (number->string _phi84832_)
                               '":]#"
                               _key84830_)
                              (make-symbol__1
                               (let ((_$e84840_ _ns84835_))
                                 (if _$e84840_ _$e84840_ '""))
                               '"["
                               (number->string _phi84832_)
                               '"]#"
                               _key84830_))))
                    (gensym _key84830_))))))
    (define gx#make-binding-id__0
      (lambda (_key84846_)
        (let* ((_syntax?84848_ '#f)
               (_phi84850_ (gx#current-expander-phi))
               (_ctx84852_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key84846_
           _syntax?84848_
           _phi84850_
           _ctx84852_))))
    (define gx#make-binding-id__1
      (lambda (_key84854_ _syntax?84855_)
        (let* ((_phi84857_ (gx#current-expander-phi))
               (_ctx84859_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key84854_
           _syntax?84855_
           _phi84857_
           _ctx84859_))))
    (define gx#make-binding-id__2
      (lambda (_key84861_ _syntax?84862_ _phi84863_)
        (let ((_ctx84865_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key84861_
           _syntax?84862_
           _phi84863_
           _ctx84865_))))
    (define gx#make-binding-id
      (lambda _g87864_
        (let ((_g87863_ (##length _g87864_)))
          (cond ((##fx= _g87863_ 1)
                 (apply (lambda (_key84846_)
                          (gx#make-binding-id__0 _key84846_))
                        _g87864_))
                ((##fx= _g87863_ 2)
                 (apply (lambda (_key84854_ _syntax?84855_)
                          (gx#make-binding-id__1 _key84854_ _syntax?84855_))
                        _g87864_))
                ((##fx= _g87863_ 3)
                 (apply (lambda (_key84861_ _syntax?84862_ _phi84863_)
                          (gx#make-binding-id__2
                           _key84861_
                           _syntax?84862_
                           _phi84863_))
                        _g87864_))
                ((##fx= _g87863_ 4)
                 (apply (lambda (_key84867_
                                 _syntax?84868_
                                 _phi84869_
                                 _ctx84870_)
                          (gx#make-binding-id__%
                           _key84867_
                           _syntax?84868_
                           _phi84869_
                           _ctx84870_))
                        _g87864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g87864_))))))))
