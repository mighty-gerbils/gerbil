(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710699091)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx90636_)
        (letrec ((_expand-special90638_
                  (lambda (_hd90640_ _K90641_ _rest90642_ _r90643_)
                    (_K90641_
                     _rest90642_
                     (cons (gx#core-expand-top _hd90640_) _r90643_)))))
          (gx#core-expand-block__0 _stx90636_ _expand-special90638_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90389_)
        (letrec ((_expand-special90391_
                  (lambda (_hd90511_ _K90512_ _rest90513_ _r90514_)
                    (let* ((_K90518_
                            (lambda (_e90516_)
                              (_K90512_ _rest90513_ (cons _e90516_ _r90514_))))
                           (_e9051990548_ _hd90511_)
                           (_E9054390552_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9051990548_)))
                           (_E9053990564_
                            (lambda ()
                              (if (gx#stx-pair? _e9051990548_)
                                  (let ((_e9054490556_
                                         (gx#syntax-e _e9051990548_)))
                                    (let ((_hd9054590559_
                                           (##car _e9054490556_))
                                          (_tl9054690561_
                                           (##cdr _e9054490556_)))
                                      (if (and (gx#identifier? _hd9054590559_)
                                               (gx#core-identifier=?
                                                _hd9054590559_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90518_
                                               (gx#core-expand-define-runtime%
                                                _hd90511_))
                                              (_E9054390552_))
                                          (_E9054390552_))))
                                  (_E9054390552_))))
                           (_E9053590576_
                            (lambda ()
                              (if (gx#stx-pair? _e9051990548_)
                                  (let ((_e9054090568_
                                         (gx#syntax-e _e9051990548_)))
                                    (let ((_hd9054190571_
                                           (##car _e9054090568_))
                                          (_tl9054290573_
                                           (##cdr _e9054090568_)))
                                      (if (and (gx#identifier? _hd9054190571_)
                                               (gx#core-identifier=?
                                                _hd9054190571_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90518_
                                               (gx#core-expand-define-alias%
                                                _hd90511_))
                                              (_E9053990564_))
                                          (_E9053990564_))))
                                  (_E9053990564_))))
                           (_E9052590588_
                            (lambda ()
                              (if (gx#stx-pair? _e9051990548_)
                                  (let ((_e9053690580_
                                         (gx#syntax-e _e9051990548_)))
                                    (let ((_hd9053790583_
                                           (##car _e9053690580_))
                                          (_tl9053890585_
                                           (##cdr _e9053690580_)))
                                      (if (and (gx#identifier? _hd9053790583_)
                                               (gx#core-identifier=?
                                                _hd9053790583_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90518_
                                               (gx#core-expand-define-syntax%
                                                _hd90511_))
                                              (_E9053590576_))
                                          (_E9053590576_))))
                                  (_E9053590576_))))
                           (_E9052190620_
                            (lambda ()
                              (if (gx#stx-pair? _e9051990548_)
                                  (let ((_e9052690592_
                                         (gx#syntax-e _e9051990548_)))
                                    (let ((_hd9052790595_
                                           (##car _e9052690592_))
                                          (_tl9052890597_
                                           (##cdr _e9052690592_)))
                                      (if (and (gx#identifier? _hd9052790595_)
                                               (gx#core-identifier=?
                                                _hd9052790595_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9052890597_)
                                              (let ((_e9052990600_
                                                     (gx#syntax-e
                                                      _tl9052890597_)))
                                                (let ((_hd9053090603_
                                                       (##car _e9052990600_))
                                                      (_tl9053190605_
                                                       (##cdr _e9052990600_)))
                                                  (let ((_hd-bind90608_
                                                         _hd9053090603_))
                                                    (if (gx#stx-pair?
                                                         _tl9053190605_)
                                                        (let ((_e9053290610_
                                                               (gx#syntax-e
                                                                _tl9053190605_)))
                                                          (let ((_hd9053390613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9053290610_))
                        (_tl9053490615_ (##cdr _e9053290610_)))
                    (let ((_expr90618_ _hd9053390613_))
                      (if (gx#stx-null? _tl9053490615_)
                          (if (gx#core-bind-values? _hd-bind90608_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90608_)
                                (_K90518_ _hd90511_))
                              (_E9052590588_))
                          (_E9052590588_)))))
                (_E9052590588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9052590588_))
                                          (_E9052590588_))))
                                  (_E9052590588_))))
                           (_E9052090632_
                            (lambda ()
                              (if (gx#stx-pair? _e9051990548_)
                                  (let ((_e9052290624_
                                         (gx#syntax-e _e9051990548_)))
                                    (let ((_hd9052390627_
                                           (##car _e9052290624_))
                                          (_tl9052490629_
                                           (##cdr _e9052290624_)))
                                      (if (and (gx#identifier? _hd9052390627_)
                                               (gx#core-identifier=?
                                                _hd9052390627_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90518_
                                               (gx#core-expand-begin-syntax%
                                                _hd90511_))
                                              (_E9052190620_))
                                          (_E9052190620_))))
                                  (_E9052190620_)))))
                      (_E9052090632_))))
                 (_eval-body90392_
                  (lambda (_rbody90400_)
                    (let _lp90402_ ((_rest90404_ _rbody90400_)
                                    (_body90405_ '())
                                    (_ebody90406_ '()))
                      (let* ((_rest9040790415_ _rest90404_)
                             (_else9040990423_
                              (lambda ()
                                (values _body90405_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90406_)
                                          (gx#stx-source _stx90389_))))))
                             (_K9041190499_
                              (lambda (_rest90426_ _hd90427_)
                                (let* ((_e9042890445_ _hd90427_)
                                       (_E9044090449_
                                        (lambda ()
                                          (_lp90402_
                                           _rest90426_
                                           (cons _hd90427_ _body90405_)
                                           (cons _hd90427_ _ebody90406_))))
                                       (_E9043090461_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9042890445_)
                                              (let ((_e9044190453_
                                                     (gx#syntax-e
                                                      _e9042890445_)))
                                                (let ((_hd9044290456_
                                                       (##car _e9044190453_))
                                                      (_tl9044390458_
                                                       (##cdr _e9044190453_)))
                                                  (if (and (gx#identifier?
                                                            _hd9044290456_)
                                                           (gx#core-identifier=?
                                                            _hd9044290456_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90402_
                                                           _rest90426_
                                                           (cons _hd90427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90405_)
                   _ebody90406_)
                  (_E9044090449_))
              (_E9044090449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9044090449_))))
                                       (_E9042990495_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9042890445_)
                                              (let ((_e9043190465_
                                                     (gx#syntax-e
                                                      _e9042890445_)))
                                                (let ((_hd9043290468_
                                                       (##car _e9043190465_))
                                                      (_tl9043390470_
                                                       (##cdr _e9043190465_)))
                                                  (if (and (gx#identifier?
                                                            _hd9043290468_)
                                                           (gx#core-identifier=?
                                                            _hd9043290468_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9043390470_)
                                                          (let ((_e9043490473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9043390470_)))
                    (let ((_hd9043590476_ (##car _e9043490473_))
                          (_tl9043690478_ (##cdr _e9043490473_)))
                      (let ((_hd-bind90481_ _hd9043590476_))
                        (if (gx#stx-pair? _tl9043690478_)
                            (let ((_e9043790483_ (gx#syntax-e _tl9043690478_)))
                              (let ((_hd9043890486_ (##car _e9043790483_))
                                    (_tl9043990488_ (##cdr _e9043790483_)))
                                (let ((_expr90491_ _hd9043890486_))
                                  (if (gx#stx-null? _tl9043990488_)
                                      (if '#t
                                          (let ((_ehd90493_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90481_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90491_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90427_))))
                                            (_lp90402_
                                             _rest90426_
                                             (cons _ehd90493_ _body90405_)
                                             (cons _ehd90493_ _ebody90406_)))
                                          (_E9043090461_))
                                      (_E9043090461_)))))
                            (_E9043090461_)))))
                  (_E9043090461_))
              (_E9043090461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9043090461_)))))
                                  (_E9042990495_)))))
                        (if (##pair? _rest9040790415_)
                            (let ((_hd9041290502_ (##car _rest9040790415_))
                                  (_tl9041390504_ (##cdr _rest9040790415_)))
                              (let* ((_hd90507_ _hd9041290502_)
                                     (_rest90509_ _tl9041390504_))
                                (_K9041190499_ _rest90509_ _hd90507_)))
                            (_else9040990423_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90395_
                     (gx#core-expand-block__1
                      _stx90389_
                      _expand-special90391_
                      '#f))
                    (_g90659_ (_eval-body90392_ _rbody90395_)))
               (begin
                 (let ((_g90660_
                        (if (##values? _g90659_)
                            (##vector-length _g90659_)
                            1)))
                   (if (not (##fx= _g90660_ 2))
                       (error "Context expects 2 values" _g90660_)))
                 (let ((_expanded-body90397_ (##vector-ref _g90659_ 0))
                       (_value90398_ (##vector-ref _g90659_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90397_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90398_ '())))
                    (gx#stx-source _stx90389_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90359_)
        (let* ((_e9036090367_ _stx90359_)
               (_E9036290371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9036090367_)))
               (_E9036190385_
                (lambda ()
                  (if (gx#stx-pair? _e9036090367_)
                      (let ((_e9036390375_ (gx#syntax-e _e9036090367_)))
                        (let ((_hd9036490378_ (##car _e9036390375_))
                              (_tl9036590380_ (##cdr _e9036390375_)))
                          (let ((_body90383_ _tl9036590380_))
                            (if (gx#stx-list? _body90383_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90383_)
                                 (gx#stx-source _stx90359_))
                                (_E9036290371_)))))
                      (_E9036290371_)))))
          (_E9036190385_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90357_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90357_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90303_)
        (let* ((_e9030490317_ _stx90303_)
               (_E9030690321_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9030490317_)))
               (_E9030590353_
                (lambda ()
                  (if (gx#stx-pair? _e9030490317_)
                      (let ((_e9030790325_ (gx#syntax-e _e9030490317_)))
                        (let ((_hd9030890328_ (##car _e9030790325_))
                              (_tl9030990330_ (##cdr _e9030790325_)))
                          (if (gx#stx-pair? _tl9030990330_)
                              (let ((_e9031090333_
                                     (gx#syntax-e _tl9030990330_)))
                                (let ((_hd9031190336_ (##car _e9031090333_))
                                      (_tl9031290338_ (##cdr _e9031090333_)))
                                  (let ((_ann90341_ _hd9031190336_))
                                    (if (gx#stx-pair? _tl9031290338_)
                                        (let ((_e9031390343_
                                               (gx#syntax-e _tl9031290338_)))
                                          (let ((_hd9031490346_
                                                 (##car _e9031390343_))
                                                (_tl9031590348_
                                                 (##cdr _e9031390343_)))
                                            (let ((_expr90351_ _hd9031490346_))
                                              (if (gx#stx-null? _tl9031590348_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90351_) '())))
               (gx#stx-source _stx90303_))
              (_E9030690321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9030690321_)))))
                                        (_E9030690321_)))))
                              (_E9030690321_))))
                      (_E9030690321_)))))
          (_E9030590353_))))
    (define gx#core-expand-local-block
      (lambda (_stx90027_ _body90028_)
        (letrec ((_expand-special90030_
                  (lambda (_hd90298_ _K90299_ _rest90300_ _r90301_)
                    (_K90299_
                     '()
                     (cons (_expand-internal90031_ _hd90298_ _rest90300_)
                           _r90301_))))
                 (_expand-internal90031_
                  (lambda (_hd90294_ _rest90295_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90033_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90294_ _rest90295_))
                          (gx#stx-source _stx90027_))
                         _expand-internal-special90032_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj90653
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj90653)
                       __obj90653))))
                 (_expand-internal-special90032_
                  (lambda (_hd90189_ _K90190_ _rest90191_ _r90192_)
                    (let* ((_e9019390218_ _hd90189_)
                           (_E9021390222_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9019390218_)))
                           (_E9020990234_
                            (lambda ()
                              (if (gx#stx-pair? _e9019390218_)
                                  (let ((_e9021490226_
                                         (gx#syntax-e _e9019390218_)))
                                    (let ((_hd9021590229_
                                           (##car _e9021490226_))
                                          (_tl9021690231_
                                           (##cdr _e9021490226_)))
                                      (if (and (gx#identifier? _hd9021590229_)
                                               (gx#core-identifier=?
                                                _hd9021590229_
                                                '%#declare))
                                          (if '#t
                                              (_K90190_
                                               _rest90191_
                                               (cons (gx#core-expand-declare%
                                                      _hd90189_)
                                                     _r90192_))
                                              (_E9021390222_))
                                          (_E9021390222_))))
                                  (_E9021390222_))))
                           (_E9020590246_
                            (lambda ()
                              (if (gx#stx-pair? _e9019390218_)
                                  (let ((_e9021090238_
                                         (gx#syntax-e _e9019390218_)))
                                    (let ((_hd9021190241_
                                           (##car _e9021090238_))
                                          (_tl9021290243_
                                           (##cdr _e9021090238_)))
                                      (if (and (gx#identifier? _hd9021190241_)
                                               (gx#core-identifier=?
                                                _hd9021190241_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90189_)
                                                (_K90190_
                                                 _rest90191_
                                                 _r90192_))
                                              (_E9020990234_))
                                          (_E9020990234_))))
                                  (_E9020990234_))))
                           (_E9019590258_
                            (lambda ()
                              (if (gx#stx-pair? _e9019390218_)
                                  (let ((_e9020690250_
                                         (gx#syntax-e _e9019390218_)))
                                    (let ((_hd9020790253_
                                           (##car _e9020690250_))
                                          (_tl9020890255_
                                           (##cdr _e9020690250_)))
                                      (if (and (gx#identifier? _hd9020790253_)
                                               (gx#core-identifier=?
                                                _hd9020790253_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90189_)
                                                (_K90190_
                                                 _rest90191_
                                                 _r90192_))
                                              (_E9020590246_))
                                          (_E9020590246_))))
                                  (_E9020590246_))))
                           (_E9019490290_
                            (lambda ()
                              (if (gx#stx-pair? _e9019390218_)
                                  (let ((_e9019690262_
                                         (gx#syntax-e _e9019390218_)))
                                    (let ((_hd9019790265_
                                           (##car _e9019690262_))
                                          (_tl9019890267_
                                           (##cdr _e9019690262_)))
                                      (if (and (gx#identifier? _hd9019790265_)
                                               (gx#core-identifier=?
                                                _hd9019790265_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9019890267_)
                                              (let ((_e9019990270_
                                                     (gx#syntax-e
                                                      _tl9019890267_)))
                                                (let ((_hd9020090273_
                                                       (##car _e9019990270_))
                                                      (_tl9020190275_
                                                       (##cdr _e9019990270_)))
                                                  (let ((_hd-bind90278_
                                                         _hd9020090273_))
                                                    (if (gx#stx-pair?
                                                         _tl9020190275_)
                                                        (let ((_e9020290280_
                                                               (gx#syntax-e
                                                                _tl9020190275_)))
                                                          (let ((_hd9020390283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9020290280_))
                        (_tl9020490285_ (##cdr _e9020290280_)))
                    (let ((_expr90288_ _hd9020390283_))
                      (if (gx#stx-null? _tl9020490285_)
                          (if (gx#core-bind-values? _hd-bind90278_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90278_)
                                (_K90190_
                                 _rest90191_
                                 (cons _hd90189_ _r90192_)))
                              (_E9019590258_))
                          (_E9019590258_)))))
                (_E9019590258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9019590258_))
                                          (_E9019590258_))))
                                  (_E9019590258_)))))
                      (_E9019490290_))))
                 (_wrap-internal90033_
                  (lambda (_rbody90035_)
                    (let _lp90037_ ((_rest90039_ _rbody90035_)
                                    (_decls90040_ '())
                                    (_bind90041_ '())
                                    (_body90042_ '()))
                      (let* ((_e9004390050_ _rest90039_)
                             (_E9004590099_
                              (lambda ()
                                (let* ((_body90094_
                                        (let* ((_body9005390063_ _body90042_)
                                               (_else9005690071_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90042_)
                                                   (gx#stx-source
                                                    _stx90027_)))))
                                          (let ((_K9006190091_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90027_)))
                                                (_K9005890077_
                                                 (lambda (_expr90075_)
                                                   _expr90075_)))
                                            (let ((_try-match9005590087_
                                                   (lambda ()
                                                     (if (##pair? _body9005390063_)
                                                         (let ((_tl9006090082_
                                                                (##cdr _body9005390063_))
                                                               (_hd9005990080_
                                                                (##car _body9005390063_)))
                                                           (if (##null? _tl9006090082_)
                                                               (let ((_expr90085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9005990080_))
                         (_K9005890077_ _expr90085_))
                       (_else9005690071_)))
                 (_else9005690071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9005390063_)
                                                  (_K9006190091_)
                                                  (_try-match9005590087_))))))
                                       (_body90096_
                                        (if (null? _bind90041_)
                                            _body90094_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90041_
                                                         (cons _body90094_
                                                               '())))
                                             (gx#stx-source _stx90027_)))))
                                  (if (null? _decls90040_)
                                      _body90096_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90040_
                                                   (cons _body90096_ '())))
                                       (gx#stx-source _stx90027_))))))
                             (_E9004490185_
                              (lambda ()
                                (if (gx#stx-pair? _e9004390050_)
                                    (let ((_e9004690103_
                                           (gx#syntax-e _e9004390050_)))
                                      (let ((_hd9004790106_
                                             (##car _e9004690103_))
                                            (_tl9004890108_
                                             (##cdr _e9004690103_)))
                                        (let* ((_hd90111_ _hd9004790106_)
                                               (_rest90113_ _tl9004890108_))
                                          (if '#t
                                              (let* ((_e9011490131_ _hd90111_)
                                                     (_E9012690135_
                                                      (lambda ()
                                                        (if (null? _bind90041_)
                                                            (_lp90037_
                                                             _rest90113_
                                                             _decls90040_
                                                             _bind90041_
                                                             (cons _hd90111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90042_))
                    (_lp90037_
                     _rest90113_
                     _decls90040_
                     (cons (cons '#f (cons _hd90111_ '())) _bind90041_)
                     _body90042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9011690149_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9011490131_)
                                                            (let ((_e9012790139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9011490131_)))
                      (let ((_hd9012890142_ (##car _e9012790139_))
                            (_tl9012990144_ (##cdr _e9012790139_)))
                        (if (and (gx#identifier? _hd9012890142_)
                                 (gx#core-identifier=?
                                  _hd9012890142_
                                  '%#declare))
                            (let ((_xdecls90147_ _tl9012990144_))
                              (if '#t
                                  (_lp90037_
                                   _rest90113_
                                   (gx#stx-foldr
                                    cons
                                    _decls90040_
                                    _xdecls90147_)
                                   _bind90041_
                                   _body90042_)
                                  (_E9012690135_)))
                            (_E9012690135_))))
                    (_E9012690135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9011590181_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9011490131_)
                                                            (let ((_e9011790153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9011490131_)))
                      (let ((_hd9011890156_ (##car _e9011790153_))
                            (_tl9011990158_ (##cdr _e9011790153_)))
                        (if (and (gx#identifier? _hd9011890156_)
                                 (gx#core-identifier=?
                                  _hd9011890156_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9011990158_)
                                (let ((_e9012090161_
                                       (gx#syntax-e _tl9011990158_)))
                                  (let ((_hd9012190164_ (##car _e9012090161_))
                                        (_tl9012290166_ (##cdr _e9012090161_)))
                                    (let ((_hd-bind90169_ _hd9012190164_))
                                      (if (gx#stx-pair? _tl9012290166_)
                                          (let ((_e9012390171_
                                                 (gx#syntax-e _tl9012290166_)))
                                            (let ((_hd9012490174_
                                                   (##car _e9012390171_))
                                                  (_tl9012590176_
                                                   (##cdr _e9012390171_)))
                                              (let ((_expr90179_
                                                     _hd9012490174_))
                                                (if (gx#stx-null?
                                                     _tl9012590176_)
                                                    (if '#t
                                                        (_lp90037_
                                                         _rest90113_
                                                         _decls90040_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90169_)
                             (cons (gx#core-expand-expression _expr90179_)
                                   '()))
                       _bind90041_)
                 _body90042_)
                (_E9011690149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9011690149_)))))
                                          (_E9011690149_)))))
                                (_E9011690149_))
                            (_E9011690149_))))
                    (_E9011690149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9011590181_))
                                              (_E9004590099_)))))
                                    (_E9004590099_)))))
                        (_E9004490185_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90028_)
            (gx#stx-source _stx90027_))
           _expand-special90030_))))
    (define gx#core-expand-declare%
      (lambda (_stx89965_)
        (let* ((_e8996689973_ _stx89965_)
               (_E8996889977_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8996689973_)))
               (_E8996790023_
                (lambda ()
                  (if (gx#stx-pair? _e8996689973_)
                      (let ((_e8996989981_ (gx#syntax-e _e8996689973_)))
                        (let ((_hd8997089984_ (##car _e8996989981_))
                              (_tl8997189986_ (##cdr _e8996989981_)))
                          (let ((_body89989_ _tl8997189986_))
                            (if (gx#stx-list? _body89989_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89991_)
                                     (let* ((_e8999289999_ _decl89991_)
                                            (_E8999490003_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8999289999_)))
                                            (_E8999390019_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8999289999_)
                                                   (let ((_e8999590007_
                                                          (gx#syntax-e
                                                           _e8999289999_)))
                                                     (let ((_hd8999690010_
                                                            (##car _e8999590007_))
                                                           (_tl8999790012_
                                                            (##cdr _e8999590007_)))
                                                       (let* ((_head90015_
                                                               _hd8999690010_)
                                                              (_args90017_
                                                               _tl8999790012_))
                                                         (if (gx#stx-list?
                                                              _args90017_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89991_)
                                                             (_E8999490003_)))))
                                                   (_E8999490003_)))))
                                       (_E8999390019_)))
                                   _body89989_))
                                 (gx#stx-source _stx89965_))
                                (_E8996889977_)))))
                      (_E8996889977_)))))
          (_E8996790023_))))
    (define gx#core-expand-extern%
      (lambda (_stx89869_)
        (let* ((_e8987089877_ _stx89869_)
               (_E8987289881_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8987089877_)))
               (_E8987189961_
                (lambda ()
                  (if (gx#stx-pair? _e8987089877_)
                      (let ((_e8987389885_ (gx#syntax-e _e8987089877_)))
                        (let ((_hd8987489888_ (##car _e8987389885_))
                              (_tl8987589890_ (##cdr _e8987389885_)))
                          (let ((_body89893_ _tl8987589890_))
                            (if '#t
                                (let _lp89895_ ((_rest89897_ _body89893_)
                                                (_r89898_ '()))
                                  (let* ((_e8989989913_ _rest89897_)
                                         (_E8991189917_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx89869_)))
                                         (_E8990189921_
                                          (lambda ()
                                            (if (gx#stx-null? _e8989989913_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r89898_))
                                                     (gx#stx-source
                                                      _stx89869_))
                                                    (_E8991189917_))
                                                (_E8991189917_))))
                                         (_E8990089957_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8989989913_)
                                                (let ((_e8990289925_
                                                       (gx#syntax-e
                                                        _e8989989913_)))
                                                  (let ((_hd8990389928_
                                                         (##car _e8990289925_))
                                                        (_tl8990489930_
                                                         (##cdr _e8990289925_)))
                                                    (if (gx#stx-pair?
                                                         _hd8990389928_)
                                                        (let ((_e8990589933_
                                                               (gx#syntax-e
                                                                _hd8990389928_)))
                                                          (let ((_hd8990689936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8990589933_))
                        (_tl8990789938_ (##cdr _e8990589933_)))
                    (let ((_id89941_ _hd8990689936_))
                      (if (gx#stx-pair? _tl8990789938_)
                          (let ((_e8990889943_ (gx#syntax-e _tl8990789938_)))
                            (let ((_hd8990989946_ (##car _e8990889943_))
                                  (_tl8991089948_ (##cdr _e8990889943_)))
                              (let ((_eid89951_ _hd8990989946_))
                                (if (gx#stx-null? _tl8991089948_)
                                    (let ((_rest89953_ _tl8990489930_))
                                      (if (and (gx#identifier? _id89941_)
                                               (gx#identifier? _eid89951_))
                                          (let ((_eid89955_
                                                 (gx#stx-e _eid89951_)))
                                            (gx#core-bind-extern!__0
                                             _id89941_
                                             _eid89955_)
                                            (_lp89895_
                                             _rest89953_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89941_)
                                                         (cons _eid89955_ '()))
                                                   _r89898_)))
                                          (_E8990189921_)))
                                    (_E8990189921_)))))
                          (_E8990189921_)))))
                (_E8990189921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8990189921_)))))
                                    (_E8990089957_)))
                                (_E8987289881_)))))
                      (_E8987289881_)))))
          (_E8987189961_))))
    (define gx#core-expand-define-values%
      (lambda (_stx89815_)
        (let* ((_e8981689829_ _stx89815_)
               (_E8981889833_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8981689829_)))
               (_E8981789865_
                (lambda ()
                  (if (gx#stx-pair? _e8981689829_)
                      (let ((_e8981989837_ (gx#syntax-e _e8981689829_)))
                        (let ((_hd8982089840_ (##car _e8981989837_))
                              (_tl8982189842_ (##cdr _e8981989837_)))
                          (if (gx#stx-pair? _tl8982189842_)
                              (let ((_e8982289845_
                                     (gx#syntax-e _tl8982189842_)))
                                (let ((_hd8982389848_ (##car _e8982289845_))
                                      (_tl8982489850_ (##cdr _e8982289845_)))
                                  (let ((_hd89853_ _hd8982389848_))
                                    (if (gx#stx-pair? _tl8982489850_)
                                        (let ((_e8982589855_
                                               (gx#syntax-e _tl8982489850_)))
                                          (let ((_hd8982689858_
                                                 (##car _e8982589855_))
                                                (_tl8982789860_
                                                 (##cdr _e8982589855_)))
                                            (let ((_expr89863_ _hd8982689858_))
                                              (if (gx#stx-null? _tl8982789860_)
                                                  (if (gx#core-bind-values?
                                                       _hd89853_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd89853_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd89853_)
                             (cons (gx#core-expand-expression _expr89863_)
                                   '())))
                 (gx#stx-source _stx89815_)))
              (_E8981889833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8981889833_)))))
                                        (_E8981889833_)))))
                              (_E8981889833_))))
                      (_E8981889833_)))))
          (_E8981789865_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx89759_)
        (let* ((_e8976089773_ _stx89759_)
               (_E8976289777_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8976089773_)))
               (_E8976189811_
                (lambda ()
                  (if (gx#stx-pair? _e8976089773_)
                      (let ((_e8976389781_ (gx#syntax-e _e8976089773_)))
                        (let ((_hd8976489784_ (##car _e8976389781_))
                              (_tl8976589786_ (##cdr _e8976389781_)))
                          (if (gx#stx-pair? _tl8976589786_)
                              (let ((_e8976689789_
                                     (gx#syntax-e _tl8976589786_)))
                                (let ((_hd8976789792_ (##car _e8976689789_))
                                      (_tl8976889794_ (##cdr _e8976689789_)))
                                  (let ((_id89797_ _hd8976789792_))
                                    (if (gx#stx-pair? _tl8976889794_)
                                        (let ((_e8976989799_
                                               (gx#syntax-e _tl8976889794_)))
                                          (let ((_hd8977089802_
                                                 (##car _e8976989799_))
                                                (_tl8977189804_
                                                 (##cdr _e8976989799_)))
                                            (let ((_binding-id89807_
                                                   _hd8977089802_))
                                              (if (gx#stx-null? _tl8977189804_)
                                                  (if (and (gx#identifier?
                                                            _id89797_)
                                                           (gx#identifier?
                                                            _binding-id89807_))
                                                      (let ((_eid89809_
                                                             (gx#stx-e
                                                              _binding-id89807_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id89797_
                                                         _eid89809_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89797_)
                             (cons _eid89809_ '())))))
              (_E8976289777_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8976289777_)))))
                                        (_E8976289777_)))))
                              (_E8976289777_))))
                      (_E8976289777_)))))
          (_E8976189811_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx89702_)
        (let* ((_e8970389716_ _stx89702_)
               (_E8970589720_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8970389716_)))
               (_E8970489755_
                (lambda ()
                  (if (gx#stx-pair? _e8970389716_)
                      (let ((_e8970689724_ (gx#syntax-e _e8970389716_)))
                        (let ((_hd8970789727_ (##car _e8970689724_))
                              (_tl8970889729_ (##cdr _e8970689724_)))
                          (if (gx#stx-pair? _tl8970889729_)
                              (let ((_e8970989732_
                                     (gx#syntax-e _tl8970889729_)))
                                (let ((_hd8971089735_ (##car _e8970989732_))
                                      (_tl8971189737_ (##cdr _e8970989732_)))
                                  (let ((_id89740_ _hd8971089735_))
                                    (if (gx#stx-pair? _tl8971189737_)
                                        (let ((_e8971289742_
                                               (gx#syntax-e _tl8971189737_)))
                                          (let ((_hd8971389745_
                                                 (##car _e8971289742_))
                                                (_tl8971489747_
                                                 (##cdr _e8971289742_)))
                                            (let ((_expr89750_ _hd8971389745_))
                                              (if (gx#stx-null? _tl8971489747_)
                                                  (if (gx#identifier?
                                                       _id89740_)
                                                      (let ((_g90661_
                                                             (gx#core-expand-expression+1
                                                              _expr89750_)))
                                                        (begin
                                                          (let ((_g90662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g90661_)
                             (##vector-length _g90661_)
                             1)))
                    (if (not (##fx= _g90662_ 2))
                        (error "Context expects 2 values" _g90662_)))
                  (let ((_e-stx89752_ (##vector-ref _g90661_ 0))
                        (_e89753_ (##vector-ref _g90661_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id89740_ _e89753_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id89740_)
                                   (cons _e-stx89752_ '())))
                       (gx#stx-source _stx89702_))))))
              (_E8970589720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8970589720_)))))
                                        (_E8970589720_)))))
                              (_E8970589720_))))
                      (_E8970589720_)))))
          (_E8970489755_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx89646_)
        (let* ((_e8964789660_ _stx89646_)
               (_E8964989664_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8964789660_)))
               (_E8964889698_
                (lambda ()
                  (if (gx#stx-pair? _e8964789660_)
                      (let ((_e8965089668_ (gx#syntax-e _e8964789660_)))
                        (let ((_hd8965189671_ (##car _e8965089668_))
                              (_tl8965289673_ (##cdr _e8965089668_)))
                          (if (gx#stx-pair? _tl8965289673_)
                              (let ((_e8965389676_
                                     (gx#syntax-e _tl8965289673_)))
                                (let ((_hd8965489679_ (##car _e8965389676_))
                                      (_tl8965589681_ (##cdr _e8965389676_)))
                                  (let ((_id89684_ _hd8965489679_))
                                    (if (gx#stx-pair? _tl8965589681_)
                                        (let ((_e8965689686_
                                               (gx#syntax-e _tl8965589681_)))
                                          (let ((_hd8965789689_
                                                 (##car _e8965689686_))
                                                (_tl8965889691_
                                                 (##cdr _e8965689686_)))
                                            (let ((_alias-id89694_
                                                   _hd8965789689_))
                                              (if (gx#stx-null? _tl8965889691_)
                                                  (if (and (gx#identifier?
                                                            _id89684_)
                                                           (gx#identifier?
                                                            _alias-id89694_))
                                                      (let ((_alias-id89696_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id89694_)))
                                                        (gx#core-bind-alias!__0
                                                         _id89684_
                                                         _alias-id89696_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89684_)
                             (cons _alias-id89696_ '())))))
              (_E8964989664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8964989664_)))))
                                        (_E8964989664_)))))
                              (_E8964989664_))))
                      (_E8964989664_)))))
          (_E8964889698_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89589_ _wrap?89590_)
        (let* ((_e8959189601_ _stx89589_)
               (_E8959389605_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8959189601_)))
               (_E8959289632_
                (lambda ()
                  (if (gx#stx-pair? _e8959189601_)
                      (let ((_e8959489609_ (gx#syntax-e _e8959189601_)))
                        (let ((_hd8959589612_ (##car _e8959489609_))
                              (_tl8959689614_ (##cdr _e8959489609_)))
                          (if (gx#stx-pair? _tl8959689614_)
                              (let ((_e8959789617_
                                     (gx#syntax-e _tl8959689614_)))
                                (let ((_hd8959889620_ (##car _e8959789617_))
                                      (_tl8959989622_ (##cdr _e8959789617_)))
                                  (let* ((_hd89625_ _hd8959889620_)
                                         (_body89627_ _tl8959989622_))
                                    (if (gx#core-bind-values? _hd89625_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89625_)
                                           (let ((_body89630_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89625_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89589_
                                                               _body89627_)
                                                              '()))))
                                             (if _wrap?89590_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89630_)
                                                  (gx#stx-source _stx89589_))
                                                 _body89630_)))
                                         gx#current-expander-context
                                         (let ((__obj90654
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90654)
                                           __obj90654))
                                        (_E8959389605_)))))
                              (_E8959389605_))))
                      (_E8959389605_)))))
          (_E8959289632_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx89639_)
        (let ((_wrap?89641_ '#t))
          (gx#core-expand-lambda%__% _stx89639_ _wrap?89641_))))
    (define gx#core-expand-lambda%
      (lambda _g90664_
        (let ((_g90663_ (##length _g90664_)))
          (cond ((##fx= _g90663_ 1)
                 (apply (lambda (_stx89639_)
                          (gx#core-expand-lambda%__0 _stx89639_))
                        _g90664_))
                ((##fx= _g90663_ 2)
                 (apply (lambda (_stx89643_ _wrap?89644_)
                          (gx#core-expand-lambda%__% _stx89643_ _wrap?89644_))
                        _g90664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g90664_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89553_)
        (let* ((_e8955489561_ _stx89553_)
               (_E8955689565_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8955489561_)))
               (_E8955589584_
                (lambda ()
                  (if (gx#stx-pair? _e8955489561_)
                      (let ((_e8955789569_ (gx#syntax-e _e8955489561_)))
                        (let ((_hd8955889572_ (##car _e8955789569_))
                              (_tl8955989574_ (##cdr _e8955789569_)))
                          (let ((_clauses89577_ _tl8955989574_))
                            (if (gx#stx-list? _clauses89577_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89579_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89579_)
                                       (let ((_$e89581_
                                              (gx#stx-source _clause89579_)))
                                         (if _$e89581_
                                             _$e89581_
                                             (gx#stx-source _stx89553_))))
                                      '#f))
                                   _clauses89577_))
                                 (gx#stx-source _stx89553_))
                                (_E8955689565_)))))
                      (_E8955689565_)))))
          (_E8955589584_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89507_)
        (let* ((_e8950889518_ _stx89507_)
               (_E8951089522_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8950889518_)))
               (_E8950989549_
                (lambda ()
                  (if (gx#stx-pair? _e8950889518_)
                      (let ((_e8951189526_ (gx#syntax-e _e8950889518_)))
                        (let ((_hd8951289529_ (##car _e8951189526_))
                              (_tl8951389531_ (##cdr _e8951189526_)))
                          (if (gx#stx-pair? _tl8951389531_)
                              (let ((_e8951489534_
                                     (gx#syntax-e _tl8951389531_)))
                                (let ((_hd8951589537_ (##car _e8951489534_))
                                      (_tl8951689539_ (##cdr _e8951489534_)))
                                  (let* ((_hd89542_ _hd8951589537_)
                                         (_body89544_ _tl8951689539_))
                                    (if (gx#core-expand-let-bind? _hd89542_)
                                        (let ((_expressions89546_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89542_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89542_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89542_
                                                           _expressions89546_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89507_
                         _body89544_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89507_)))
                                           gx#current-expander-context
                                           (let ((__obj90655
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90655)
                                             __obj90655)))
                                        (_E8951089522_)))))
                              (_E8951089522_))))
                      (_E8951089522_)))))
          (_E8950989549_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89452_ _form89453_)
        (let* ((_e8945489464_ _stx89452_)
               (_E8945689468_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8945489464_)))
               (_E8945589493_
                (lambda ()
                  (if (gx#stx-pair? _e8945489464_)
                      (let ((_e8945789472_ (gx#syntax-e _e8945489464_)))
                        (let ((_hd8945889475_ (##car _e8945789472_))
                              (_tl8945989477_ (##cdr _e8945789472_)))
                          (if (gx#stx-pair? _tl8945989477_)
                              (let ((_e8946089480_
                                     (gx#syntax-e _tl8945989477_)))
                                (let ((_hd8946189483_ (##car _e8946089480_))
                                      (_tl8946289485_ (##cdr _e8946089480_)))
                                  (let* ((_hd89488_ _hd8946189483_)
                                         (_body89490_ _tl8946289485_))
                                    (if (gx#core-expand-let-bind? _hd89488_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89488_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89453_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89488_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89488_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89452_
                                                               _body89490_)
                                                              '())))
                                            (gx#stx-source _stx89452_)))
                                         gx#current-expander-context
                                         (let ((__obj90656
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90656)
                                           __obj90656))
                                        (_E8945689468_)))))
                              (_E8945689468_))))
                      (_E8945689468_)))))
          (_E8945589493_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89500_)
        (let ((_form89502_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89500_ _form89502_))))
    (define gx#core-expand-letrec-values%
      (lambda _g90666_
        (let ((_g90665_ (##length _g90666_)))
          (cond ((##fx= _g90665_ 1)
                 (apply (lambda (_stx89500_)
                          (gx#core-expand-letrec-values%__0 _stx89500_))
                        _g90666_))
                ((##fx= _g90665_ 2)
                 (apply (lambda (_stx89504_ _form89505_)
                          (gx#core-expand-letrec-values%__%
                           _stx89504_
                           _form89505_))
                        _g90666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g90666_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89449_)
        (gx#core-expand-letrec-values%__% _stx89449_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89406_)
        (if (gx#stx-list? _stx89406_)
            (gx#stx-andmap
             (lambda (_bind89408_)
               (let* ((_e8940989419_ _bind89408_)
                      (_E8941189423_ (lambda () '#f))
                      (_E8941089445_
                       (lambda ()
                         (if (gx#stx-pair? _e8940989419_)
                             (let ((_e8941289427_ (gx#syntax-e _e8940989419_)))
                               (let ((_hd8941389430_ (##car _e8941289427_))
                                     (_tl8941489432_ (##cdr _e8941289427_)))
                                 (let ((_hd89435_ _hd8941389430_))
                                   (if (gx#stx-pair? _tl8941489432_)
                                       (let ((_e8941589437_
                                              (gx#syntax-e _tl8941489432_)))
                                         (let ((_hd8941689440_
                                                (##car _e8941589437_))
                                               (_tl8941789442_
                                                (##cdr _e8941589437_)))
                                           (if (gx#stx-null? _tl8941789442_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89435_)
                                                   (_E8941189423_))
                                               (_E8941189423_))))
                                       (_E8941189423_)))))
                             (_E8941189423_)))))
                 (_E8941089445_)))
             _stx89406_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89365_)
        (let* ((_e8936689376_ _bind89365_)
               (_E8936889380_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8936689376_)))
               (_E8936789402_
                (lambda ()
                  (if (gx#stx-pair? _e8936689376_)
                      (let ((_e8936989384_ (gx#syntax-e _e8936689376_)))
                        (let ((_hd8937089387_ (##car _e8936989384_))
                              (_tl8937189389_ (##cdr _e8936989384_)))
                          (if (gx#stx-pair? _tl8937189389_)
                              (let ((_e8937289392_
                                     (gx#syntax-e _tl8937189389_)))
                                (let ((_hd8937389395_ (##car _e8937289392_))
                                      (_tl8937489397_ (##cdr _e8937289392_)))
                                  (let ((_expr89400_ _hd8937389395_))
                                    (if (gx#stx-null? _tl8937489397_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89400_)
                                            (_E8936889380_))
                                        (_E8936889380_)))))
                              (_E8936889380_))))
                      (_E8936889380_)))))
          (_E8936789402_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89324_)
        (let* ((_e8932589335_ _bind89324_)
               (_E8932789339_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8932589335_)))
               (_E8932689361_
                (lambda ()
                  (if (gx#stx-pair? _e8932589335_)
                      (let ((_e8932889343_ (gx#syntax-e _e8932589335_)))
                        (let ((_hd8932989346_ (##car _e8932889343_))
                              (_tl8933089348_ (##cdr _e8932889343_)))
                          (let ((_hd89351_ _hd8932989346_))
                            (if (gx#stx-pair? _tl8933089348_)
                                (let ((_e8933189353_
                                       (gx#syntax-e _tl8933089348_)))
                                  (let ((_hd8933289356_ (##car _e8933189353_))
                                        (_tl8933389358_ (##cdr _e8933189353_)))
                                    (if (gx#stx-null? _tl8933389358_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89351_)
                                            (_E8932789339_))
                                        (_E8932789339_))))
                                (_E8932789339_)))))
                      (_E8932789339_)))))
          (_E8932689361_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89282_ _expr89283_)
        (let* ((_e8928489294_ _bind89282_)
               (_E8928689298_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8928489294_)))
               (_E8928589320_
                (lambda ()
                  (if (gx#stx-pair? _e8928489294_)
                      (let ((_e8928789302_ (gx#syntax-e _e8928489294_)))
                        (let ((_hd8928889305_ (##car _e8928789302_))
                              (_tl8928989307_ (##cdr _e8928789302_)))
                          (let ((_hd89310_ _hd8928889305_))
                            (if (gx#stx-pair? _tl8928989307_)
                                (let ((_e8929089312_
                                       (gx#syntax-e _tl8928989307_)))
                                  (let ((_hd8929189315_ (##car _e8929089312_))
                                        (_tl8929289317_ (##cdr _e8929089312_)))
                                    (if (gx#stx-null? _tl8929289317_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89310_)
                                                  (cons _expr89283_ '()))
                                            (_E8928689298_))
                                        (_E8928689298_))))
                                (_E8928689298_)))))
                      (_E8928689298_)))))
          (_E8928589320_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89236_)
        (let* ((_e8923789247_ _stx89236_)
               (_E8923989251_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8923789247_)))
               (_E8923889278_
                (lambda ()
                  (if (gx#stx-pair? _e8923789247_)
                      (let ((_e8924089255_ (gx#syntax-e _e8923789247_)))
                        (let ((_hd8924189258_ (##car _e8924089255_))
                              (_tl8924289260_ (##cdr _e8924089255_)))
                          (if (gx#stx-pair? _tl8924289260_)
                              (let ((_e8924389263_
                                     (gx#syntax-e _tl8924289260_)))
                                (let ((_hd8924489266_ (##car _e8924389263_))
                                      (_tl8924589268_ (##cdr _e8924389263_)))
                                  (let* ((_hd89271_ _hd8924489266_)
                                         (_body89273_ _tl8924589268_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89271_)
                                        (let ((_expanders89275_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89271_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89271_
                                              _expanders89275_)
                                             (gx#core-expand-local-block
                                              _stx89236_
                                              _body89273_))
                                           gx#current-expander-context
                                           (let ((__obj90657
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90657)
                                             __obj90657)))
                                        (_E8923989251_)))))
                              (_E8923989251_))))
                      (_E8923989251_)))))
          (_E8923889278_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89185_)
        (let* ((_e8918689196_ _stx89185_)
               (_E8918889200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8918689196_)))
               (_E8918789232_
                (lambda ()
                  (if (gx#stx-pair? _e8918689196_)
                      (let ((_e8918989204_ (gx#syntax-e _e8918689196_)))
                        (let ((_hd8919089207_ (##car _e8918989204_))
                              (_tl8919189209_ (##cdr _e8918989204_)))
                          (if (gx#stx-pair? _tl8919189209_)
                              (let ((_e8919289212_
                                     (gx#syntax-e _tl8919189209_)))
                                (let ((_hd8919389215_ (##car _e8919289212_))
                                      (_tl8919489217_ (##cdr _e8919289212_)))
                                  (let* ((_hd89220_ _hd8919389215_)
                                         (_body89222_ _tl8919489217_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89220_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89220_
                                            (make-list
                                             (gx#stx-length _hd89220_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8922489227_
                                                     _g8922589229_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8922489227_
                                               _g8922589229_
                                               '#t))
                                            _hd89220_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89220_))
                                           (gx#core-expand-local-block
                                            _stx89185_
                                            _body89222_))
                                         gx#current-expander-context
                                         (let ((__obj90658
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90658)
                                           __obj90658))
                                        (_E8918889200_)))))
                              (_E8918889200_))))
                      (_E8918889200_)))))
          (_E8918789232_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89142_)
        (if (gx#stx-list? _stx89142_)
            (gx#stx-andmap
             (lambda (_bind89144_)
               (let* ((_e8914589155_ _bind89144_)
                      (_E8914789159_ (lambda () '#f))
                      (_E8914689181_
                       (lambda ()
                         (if (gx#stx-pair? _e8914589155_)
                             (let ((_e8914889163_ (gx#syntax-e _e8914589155_)))
                               (let ((_hd8914989166_ (##car _e8914889163_))
                                     (_tl8915089168_ (##cdr _e8914889163_)))
                                 (let ((_hd89171_ _hd8914989166_))
                                   (if (gx#stx-pair? _tl8915089168_)
                                       (let ((_e8915189173_
                                              (gx#syntax-e _tl8915089168_)))
                                         (let ((_hd8915289176_
                                                (##car _e8915189173_))
                                               (_tl8915389178_
                                                (##cdr _e8915189173_)))
                                           (if (gx#stx-null? _tl8915389178_)
                                               (if '#t
                                                   (gx#identifier? _hd89171_)
                                                   (_E8914789159_))
                                               (_E8914789159_))))
                                       (_E8914789159_)))))
                             (_E8914789159_)))))
                 (_E8914689181_)))
             _stx89142_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89099_)
        (let* ((_e8910089110_ _bind89099_)
               (_E8910289114_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8910089110_)))
               (_E8910189138_
                (lambda ()
                  (if (gx#stx-pair? _e8910089110_)
                      (let ((_e8910389118_ (gx#syntax-e _e8910089110_)))
                        (let ((_hd8910489121_ (##car _e8910389118_))
                              (_tl8910589123_ (##cdr _e8910389118_)))
                          (if (gx#stx-pair? _tl8910589123_)
                              (let ((_e8910689126_
                                     (gx#syntax-e _tl8910589123_)))
                                (let ((_hd8910789129_ (##car _e8910689126_))
                                      (_tl8910889131_ (##cdr _e8910689126_)))
                                  (let ((_expr89134_ _hd8910789129_))
                                    (if (gx#stx-null? _tl8910889131_)
                                        (if '#t
                                            (let ((_g90667_
                                                   (gx#core-expand-expression+1
                                                    _expr89134_)))
                                              (begin
                                                (let ((_g90668_
                                                       (if (##values? _g90667_)
                                                           (##vector-length
                                                            _g90667_)
                                                           1)))
                                                  (if (not (##fx= _g90668_ 2))
                                                      (error "Context expects 2 values"
                                                             _g90668_)))
                                                (let ((_e89136_
                                                       (##vector-ref
                                                        _g90667_
                                                        1)))
                                                  _e89136_)))
                                            (_E8910289114_))
                                        (_E8910289114_)))))
                              (_E8910289114_))))
                      (_E8910289114_)))))
          (_E8910189138_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89044_ _e89045_ _rebind?89046_)
        (let* ((_e8904789057_ _bind89044_)
               (_E8904989061_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8904789057_)))
               (_E8904889083_
                (lambda ()
                  (if (gx#stx-pair? _e8904789057_)
                      (let ((_e8905089065_ (gx#syntax-e _e8904789057_)))
                        (let ((_hd8905189068_ (##car _e8905089065_))
                              (_tl8905289070_ (##cdr _e8905089065_)))
                          (let ((_id89073_ _hd8905189068_))
                            (if (gx#stx-pair? _tl8905289070_)
                                (let ((_e8905389075_
                                       (gx#syntax-e _tl8905289070_)))
                                  (let ((_hd8905489078_ (##car _e8905389075_))
                                        (_tl8905589080_ (##cdr _e8905389075_)))
                                    (if (gx#stx-null? _tl8905589080_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89073_
                                             _e89045_
                                             _rebind?89046_)
                                            (_E8904989061_))
                                        (_E8904989061_))))
                                (_E8904989061_)))))
                      (_E8904989061_)))))
          (_E8904889083_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89090_ _e89091_)
        (let ((_rebind?89093_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89090_
           _e89091_
           _rebind?89093_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g90670_
        (let ((_g90669_ (##length _g90670_)))
          (cond ((##fx= _g90669_ 2)
                 (apply (lambda (_bind89090_ _e89091_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89090_
                           _e89091_))
                        _g90670_))
                ((##fx= _g90669_ 3)
                 (apply (lambda (_bind89095_ _e89096_ _rebind?89097_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89095_
                           _e89096_
                           _rebind?89097_))
                        _g90670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g90670_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89002_)
        (let* ((_e8900389013_ _stx89002_)
               (_E8900589017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8900389013_)))
               (_E8900489039_
                (lambda ()
                  (if (gx#stx-pair? _e8900389013_)
                      (let ((_e8900689021_ (gx#syntax-e _e8900389013_)))
                        (let ((_hd8900789024_ (##car _e8900689021_))
                              (_tl8900889026_ (##cdr _e8900689021_)))
                          (if (gx#stx-pair? _tl8900889026_)
                              (let ((_e8900989029_
                                     (gx#syntax-e _tl8900889026_)))
                                (let ((_hd8901089032_ (##car _e8900989029_))
                                      (_tl8901189034_ (##cdr _e8900989029_)))
                                  (let ((_expr89037_ _hd8901089032_))
                                    (if (gx#stx-null? _tl8901189034_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89037_)
                                            (_E8900589017_))
                                        (_E8900589017_)))))
                              (_E8900589017_))))
                      (_E8900589017_)))))
          (_E8900489039_))))
    (define gx#core-expand-quote%
      (lambda (_stx88961_)
        (let* ((_e8896288972_ _stx88961_)
               (_E8896488976_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8896288972_)))
               (_E8896388998_
                (lambda ()
                  (if (gx#stx-pair? _e8896288972_)
                      (let ((_e8896588980_ (gx#syntax-e _e8896288972_)))
                        (let ((_hd8896688983_ (##car _e8896588980_))
                              (_tl8896788985_ (##cdr _e8896588980_)))
                          (if (gx#stx-pair? _tl8896788985_)
                              (let ((_e8896888988_
                                     (gx#syntax-e _tl8896788985_)))
                                (let ((_hd8896988991_ (##car _e8896888988_))
                                      (_tl8897088993_ (##cdr _e8896888988_)))
                                  (let ((_e88996_ _hd8896988991_))
                                    (if (gx#stx-null? _tl8897088993_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88996_)
                                                         '()))
                                             (gx#stx-source _stx88961_))
                                            (_E8896488976_))
                                        (_E8896488976_)))))
                              (_E8896488976_))))
                      (_E8896488976_)))))
          (_E8896388998_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx88920_)
        (let* ((_e8892188931_ _stx88920_)
               (_E8892388935_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8892188931_)))
               (_E8892288957_
                (lambda ()
                  (if (gx#stx-pair? _e8892188931_)
                      (let ((_e8892488939_ (gx#syntax-e _e8892188931_)))
                        (let ((_hd8892588942_ (##car _e8892488939_))
                              (_tl8892688944_ (##cdr _e8892488939_)))
                          (if (gx#stx-pair? _tl8892688944_)
                              (let ((_e8892788947_
                                     (gx#syntax-e _tl8892688944_)))
                                (let ((_hd8892888950_ (##car _e8892788947_))
                                      (_tl8892988952_ (##cdr _e8892788947_)))
                                  (let ((_e88955_ _hd8892888950_))
                                    (if (gx#stx-null? _tl8892988952_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88955_)
                                                         '()))
                                             (gx#stx-source _stx88920_))
                                            (_E8892388935_))
                                        (_E8892388935_)))))
                              (_E8892388935_))))
                      (_E8892388935_)))))
          (_E8892288957_))))
    (define gx#core-expand-call%
      (lambda (_stx88877_)
        (let* ((_e8887888888_ _stx88877_)
               (_E8888088892_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8887888888_)))
               (_E8887988916_
                (lambda ()
                  (if (gx#stx-pair? _e8887888888_)
                      (let ((_e8888188896_ (gx#syntax-e _e8887888888_)))
                        (let ((_hd8888288899_ (##car _e8888188896_))
                              (_tl8888388901_ (##cdr _e8888188896_)))
                          (if (gx#stx-pair? _tl8888388901_)
                              (let ((_e8888488904_
                                     (gx#syntax-e _tl8888388901_)))
                                (let ((_hd8888588907_ (##car _e8888488904_))
                                      (_tl8888688909_ (##cdr _e8888488904_)))
                                  (let* ((_rator88912_ _hd8888588907_)
                                         (_args88914_ _tl8888688909_))
                                    (if (gx#stx-list? _args88914_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator88912_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args88914_))
                                         (gx#stx-source _stx88877_))
                                        (_E8888088892_)))))
                              (_E8888088892_))))
                      (_E8888088892_)))))
          (_E8887988916_))))
    (define gx#core-expand-if%
      (lambda (_stx88810_)
        (let* ((_e8881188827_ _stx88810_)
               (_E8881388831_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8881188827_)))
               (_E8881288873_
                (lambda ()
                  (if (gx#stx-pair? _e8881188827_)
                      (let ((_e8881488835_ (gx#syntax-e _e8881188827_)))
                        (let ((_hd8881588838_ (##car _e8881488835_))
                              (_tl8881688840_ (##cdr _e8881488835_)))
                          (if (gx#stx-pair? _tl8881688840_)
                              (let ((_e8881788843_
                                     (gx#syntax-e _tl8881688840_)))
                                (let ((_hd8881888846_ (##car _e8881788843_))
                                      (_tl8881988848_ (##cdr _e8881788843_)))
                                  (let ((_test88851_ _hd8881888846_))
                                    (if (gx#stx-pair? _tl8881988848_)
                                        (let ((_e8882088853_
                                               (gx#syntax-e _tl8881988848_)))
                                          (let ((_hd8882188856_
                                                 (##car _e8882088853_))
                                                (_tl8882288858_
                                                 (##cdr _e8882088853_)))
                                            (let ((_K88861_ _hd8882188856_))
                                              (if (gx#stx-pair? _tl8882288858_)
                                                  (let ((_e8882388863_
                                                         (gx#syntax-e
                                                          _tl8882288858_)))
                                                    (let ((_hd8882488866_
                                                           (##car _e8882388863_))
                                                          (_tl8882588868_
                                                           (##cdr _e8882388863_)))
                                                      (let ((_E88871_
                                                             _hd8882488866_))
                                                        (if (gx#stx-null?
                                                             _tl8882588868_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test88851_)
                                     (cons (gx#core-expand-expression _K88861_)
                                           (cons (gx#core-expand-expression
                                                  _E88871_)
                                                 '()))))
                         (gx#stx-source _stx88810_))
                        (_E8881388831_))
                    (_E8881388831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8881388831_)))))
                                        (_E8881388831_)))))
                              (_E8881388831_))))
                      (_E8881388831_)))))
          (_E8881288873_))))
    (define gx#core-expand-ref%
      (lambda (_stx88769_)
        (let* ((_e8877088780_ _stx88769_)
               (_E8877288784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8877088780_)))
               (_E8877188806_
                (lambda ()
                  (if (gx#stx-pair? _e8877088780_)
                      (let ((_e8877388788_ (gx#syntax-e _e8877088780_)))
                        (let ((_hd8877488791_ (##car _e8877388788_))
                              (_tl8877588793_ (##cdr _e8877388788_)))
                          (if (gx#stx-pair? _tl8877588793_)
                              (let ((_e8877688796_
                                     (gx#syntax-e _tl8877588793_)))
                                (let ((_hd8877788799_ (##car _e8877688796_))
                                      (_tl8877888801_ (##cdr _e8877688796_)))
                                  (let ((_id88804_ _hd8877788799_))
                                    (if (gx#stx-null? _tl8877888801_)
                                        (if (gx#identifier? _id88804_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id88804_
                                                          _stx88769_)
                                                         '()))
                                             (gx#stx-source _stx88769_))
                                            (_E8877288784_))
                                        (_E8877288784_)))))
                              (_E8877288784_))))
                      (_E8877288784_)))))
          (_E8877188806_))))
    (define gx#core-expand-setq%
      (lambda (_stx88715_)
        (let* ((_e8871688729_ _stx88715_)
               (_E8871888733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8871688729_)))
               (_E8871788765_
                (lambda ()
                  (if (gx#stx-pair? _e8871688729_)
                      (let ((_e8871988737_ (gx#syntax-e _e8871688729_)))
                        (let ((_hd8872088740_ (##car _e8871988737_))
                              (_tl8872188742_ (##cdr _e8871988737_)))
                          (if (gx#stx-pair? _tl8872188742_)
                              (let ((_e8872288745_
                                     (gx#syntax-e _tl8872188742_)))
                                (let ((_hd8872388748_ (##car _e8872288745_))
                                      (_tl8872488750_ (##cdr _e8872288745_)))
                                  (let ((_id88753_ _hd8872388748_))
                                    (if (gx#stx-pair? _tl8872488750_)
                                        (let ((_e8872588755_
                                               (gx#syntax-e _tl8872488750_)))
                                          (let ((_hd8872688758_
                                                 (##car _e8872588755_))
                                                (_tl8872788760_
                                                 (##cdr _e8872588755_)))
                                            (let ((_expr88763_ _hd8872688758_))
                                              (if (gx#stx-null? _tl8872788760_)
                                                  (if (gx#identifier?
                                                       _id88753_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id88753_
                            _stx88715_)
                           (cons (gx#core-expand-expression _expr88763_) '())))
               (gx#stx-source _stx88715_))
              (_E8871888733_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8871888733_)))))
                                        (_E8871888733_)))))
                              (_E8871888733_))))
                      (_E8871888733_)))))
          (_E8871788765_))))
    (define gx#macro-expand-extern
      (lambda (_stx88563_)
        (letrec ((_generate88565_
                  (lambda (_body88595_)
                    (let _lp88597_ ((_rest88599_ _body88595_)
                                    (_ns88600_ (gx#core-context-namespace__0))
                                    (_r88601_ '()))
                      (let* ((_e8860288617_ _rest88599_)
                             (_E8861588621_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8860288617_)))
                             (_E8861188625_
                              (lambda ()
                                (if (gx#stx-null? _e8860288617_)
                                    (if '#t (reverse _r88601_) (_E8861588621_))
                                    (_E8861588621_))))
                             (_E8860488682_
                              (lambda ()
                                (if (gx#stx-pair? _e8860288617_)
                                    (let ((_e8861288629_
                                           (gx#syntax-e _e8860288617_)))
                                      (let ((_hd8861388632_
                                             (##car _e8861288629_))
                                            (_tl8861488634_
                                             (##cdr _e8861288629_)))
                                        (let* ((_hd88637_ _hd8861388632_)
                                               (_rest88639_ _tl8861488634_))
                                          (if '#t
                                              (if (gx#identifier? _hd88637_)
                                                  (_lp88597_
                                                   _rest88639_
                                                   _ns88600_
                                                   (cons (cons _hd88637_
                                                               (cons (if _ns88600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd88637_
                                  _ns88600_
                                  '"#"
                                  _hd88637_)
                                 _hd88637_)
                             '()))
                 _r88601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8864088650_
                                                          _hd88637_)
                                                         (_E8864288654_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8864088650_)))
                                                         (_E8864188678_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8864088650_)
                        (let ((_e8864388658_ (gx#syntax-e _e8864088650_)))
                          (let ((_hd8864488661_ (##car _e8864388658_))
                                (_tl8864588663_ (##cdr _e8864388658_)))
                            (let ((_id88666_ _hd8864488661_))
                              (if (gx#stx-pair? _tl8864588663_)
                                  (let ((_e8864688668_
                                         (gx#syntax-e _tl8864588663_)))
                                    (let ((_hd8864788671_
                                           (##car _e8864688668_))
                                          (_tl8864888673_
                                           (##cdr _e8864688668_)))
                                      (let ((_eid88676_ _hd8864788671_))
                                        (if (gx#stx-null? _tl8864888673_)
                                            (if (and (gx#identifier? _id88666_)
                                                     (gx#identifier?
                                                      _eid88676_))
                                                (_lp88597_
                                                 _rest88639_
                                                 _ns88600_
                                                 (cons (cons _id88666_
                                                             (cons _eid88676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88601_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8864288654_))
                                            (_E8864288654_)))))
                                  (_E8864288654_)))))
                        (_E8864288654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8864188678_)))
                                              (_E8861188625_)))))
                                    (_E8861188625_))))
                             (_E8860388711_
                              (lambda ()
                                (if (gx#stx-pair? _e8860288617_)
                                    (let ((_e8860588686_
                                           (gx#syntax-e _e8860288617_)))
                                      (let ((_hd8860688689_
                                             (##car _e8860588686_))
                                            (_tl8860788691_
                                             (##cdr _e8860588686_)))
                                        (if (eq? (gx#stx-e _hd8860688689_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8860788691_)
                                                (let ((_e8860888694_
                                                       (gx#syntax-e
                                                        _tl8860788691_)))
                                                  (let ((_hd8860988697_
                                                         (##car _e8860888694_))
                                                        (_tl8861088699_
                                                         (##cdr _e8860888694_)))
                                                    (let* ((_ns88702_
                                                            _hd8860988697_)
                                                           (_rest88704_
                                                            _tl8861088699_))
                                                      (if '#t
                                                          (let ((_ns88709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns88702_)
                             (symbol->string (gx#stx-e _ns88702_))
                             (if (or (gx#stx-string? _ns88702_)
                                     (gx#stx-false? _ns88702_))
                                 (gx#stx-e _ns88702_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88563_
                                  _ns88702_)))))
                    (_lp88597_ _rest88704_ _ns88709_ _r88601_))
                  (_E8860488682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8860488682_))
                                            (_E8860488682_))))
                                    (_E8860488682_)))))
                        (_E8860388711_))))))
          (let* ((_e8856688573_ _stx88563_)
                 (_E8856888577_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8856688573_)))
                 (_E8856788591_
                  (lambda ()
                    (if (gx#stx-pair? _e8856688573_)
                        (let ((_e8856988581_ (gx#syntax-e _e8856688573_)))
                          (let ((_hd8857088584_ (##car _e8856988581_))
                                (_tl8857188586_ (##cdr _e8856988581_)))
                            (let ((_body88589_ _tl8857188586_))
                              (if (gx#stx-list? _body88589_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88565_ _body88589_))
                                  (_E8856888577_)))))
                        (_E8856888577_)))))
            (_E8856788591_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88509_)
        (let* ((_e8851088523_ _stx88509_)
               (_E8851288527_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8851088523_)))
               (_E8851188559_
                (lambda ()
                  (if (gx#stx-pair? _e8851088523_)
                      (let ((_e8851388531_ (gx#syntax-e _e8851088523_)))
                        (let ((_hd8851488534_ (##car _e8851388531_))
                              (_tl8851588536_ (##cdr _e8851388531_)))
                          (if (gx#stx-pair? _tl8851588536_)
                              (let ((_e8851688539_
                                     (gx#syntax-e _tl8851588536_)))
                                (let ((_hd8851788542_ (##car _e8851688539_))
                                      (_tl8851888544_ (##cdr _e8851688539_)))
                                  (let ((_hd88547_ _hd8851788542_))
                                    (if (gx#stx-pair? _tl8851888544_)
                                        (let ((_e8851988549_
                                               (gx#syntax-e _tl8851888544_)))
                                          (let ((_hd8852088552_
                                                 (##car _e8851988549_))
                                                (_tl8852188554_
                                                 (##cdr _e8851988549_)))
                                            (let ((_expr88557_ _hd8852088552_))
                                              (if (gx#stx-null? _tl8852188554_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88547_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88547_)
                          (cons _expr88557_ '())))
              (_E8851288527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8851288527_)))))
                                        (_E8851288527_)))))
                              (_E8851288527_))))
                      (_E8851288527_)))))
          (_E8851188559_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88455_)
        (let* ((_e8845688469_ _stx88455_)
               (_E8845888473_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8845688469_)))
               (_E8845788505_
                (lambda ()
                  (if (gx#stx-pair? _e8845688469_)
                      (let ((_e8845988477_ (gx#syntax-e _e8845688469_)))
                        (let ((_hd8846088480_ (##car _e8845988477_))
                              (_tl8846188482_ (##cdr _e8845988477_)))
                          (if (gx#stx-pair? _tl8846188482_)
                              (let ((_e8846288485_
                                     (gx#syntax-e _tl8846188482_)))
                                (let ((_hd8846388488_ (##car _e8846288485_))
                                      (_tl8846488490_ (##cdr _e8846288485_)))
                                  (let ((_hd88493_ _hd8846388488_))
                                    (if (gx#stx-pair? _tl8846488490_)
                                        (let ((_e8846588495_
                                               (gx#syntax-e _tl8846488490_)))
                                          (let ((_hd8846688498_
                                                 (##car _e8846588495_))
                                                (_tl8846788500_
                                                 (##cdr _e8846588495_)))
                                            (let ((_expr88503_ _hd8846688498_))
                                              (if (gx#stx-null? _tl8846788500_)
                                                  (if (gx#identifier?
                                                       _hd88493_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88503_ '())))
              (_E8845888473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8845888473_)))))
                                        (_E8845888473_)))))
                              (_E8845888473_))))
                      (_E8845888473_)))))
          (_E8845788505_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88401_)
        (let* ((_e8840288415_ _stx88401_)
               (_E8840488419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8840288415_)))
               (_E8840388451_
                (lambda ()
                  (if (gx#stx-pair? _e8840288415_)
                      (let ((_e8840588423_ (gx#syntax-e _e8840288415_)))
                        (let ((_hd8840688426_ (##car _e8840588423_))
                              (_tl8840788428_ (##cdr _e8840588423_)))
                          (if (gx#stx-pair? _tl8840788428_)
                              (let ((_e8840888431_
                                     (gx#syntax-e _tl8840788428_)))
                                (let ((_hd8840988434_ (##car _e8840888431_))
                                      (_tl8841088436_ (##cdr _e8840888431_)))
                                  (let ((_id88439_ _hd8840988434_))
                                    (if (gx#stx-pair? _tl8841088436_)
                                        (let ((_e8841188441_
                                               (gx#syntax-e _tl8841088436_)))
                                          (let ((_hd8841288444_
                                                 (##car _e8841188441_))
                                                (_tl8841388446_
                                                 (##cdr _e8841188441_)))
                                            (let ((_alias-id88449_
                                                   _hd8841288444_))
                                              (if (gx#stx-null? _tl8841388446_)
                                                  (if (and (gx#identifier?
                                                            _id88439_)
                                                           (gx#identifier?
                                                            _alias-id88449_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88449_ '())))
              (_E8840488419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8840488419_)))))
                                        (_E8840488419_)))))
                              (_E8840488419_))))
                      (_E8840488419_)))))
          (_E8840388451_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88358_)
        (let* ((_e8835988369_ _stx88358_)
               (_E8836188373_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835988369_)))
               (_E8836088397_
                (lambda ()
                  (if (gx#stx-pair? _e8835988369_)
                      (let ((_e8836288377_ (gx#syntax-e _e8835988369_)))
                        (let ((_hd8836388380_ (##car _e8836288377_))
                              (_tl8836488382_ (##cdr _e8836288377_)))
                          (if (gx#stx-pair? _tl8836488382_)
                              (let ((_e8836588385_
                                     (gx#syntax-e _tl8836488382_)))
                                (let ((_hd8836688388_ (##car _e8836588385_))
                                      (_tl8836788390_ (##cdr _e8836588385_)))
                                  (let* ((_hd88393_ _hd8836688388_)
                                         (_body88395_ _tl8836788390_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88393_)
                                             (gx#stx-list? _body88395_)
                                             (not (gx#stx-null? _body88395_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88393_)
                                         _body88395_)
                                        (_E8836188373_)))))
                              (_E8836188373_))))
                      (_E8836188373_)))))
          (_E8836088397_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88294_)
        (letrec ((_generate88296_
                  (lambda (_clause88326_)
                    (let* ((_e8832788334_ _clause88326_)
                           (_E8832988338_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88294_
                               _clause88326_)))
                           (_E8832888354_
                            (lambda ()
                              (if (gx#stx-pair? _e8832788334_)
                                  (let ((_e8833088342_
                                         (gx#syntax-e _e8832788334_)))
                                    (let ((_hd8833188345_
                                           (##car _e8833088342_))
                                          (_tl8833288347_
                                           (##cdr _e8833088342_)))
                                      (let* ((_hd88350_ _hd8833188345_)
                                             (_body88352_ _tl8833288347_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88350_)
                                                 (gx#stx-list? _body88352_)
                                                 (not (gx#stx-null?
                                                       _body88352_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88350_)
                                                   _body88352_)
                                             (gx#stx-source _clause88326_))
                                            (_E8832988338_)))))
                                  (_E8832988338_)))))
                      (_E8832888354_)))))
          (let* ((_e8829788304_ _stx88294_)
                 (_E8829988308_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8829788304_)))
                 (_E8829888322_
                  (lambda ()
                    (if (gx#stx-pair? _e8829788304_)
                        (let ((_e8830088312_ (gx#syntax-e _e8829788304_)))
                          (let ((_hd8830188315_ (##car _e8830088312_))
                                (_tl8830288317_ (##cdr _e8830088312_)))
                            (let ((_clauses88320_ _tl8830288317_))
                              (if (gx#stx-list? _clauses88320_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88296_
                                    _clauses88320_))
                                  (_E8829988308_)))))
                        (_E8829988308_)))))
            (_E8829888322_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88195_ _form88196_)
        (letrec ((_generate88198_
                  (lambda (_bind88241_)
                    (let* ((_e8824288252_ _bind88241_)
                           (_E8824488256_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88195_
                               _bind88241_)))
                           (_E8824388280_
                            (lambda ()
                              (if (gx#stx-pair? _e8824288252_)
                                  (let ((_e8824588260_
                                         (gx#syntax-e _e8824288252_)))
                                    (let ((_hd8824688263_
                                           (##car _e8824588260_))
                                          (_tl8824788265_
                                           (##cdr _e8824588260_)))
                                      (let ((_ids88268_ _hd8824688263_))
                                        (if (gx#stx-pair? _tl8824788265_)
                                            (let ((_e8824888270_
                                                   (gx#syntax-e
                                                    _tl8824788265_)))
                                              (let ((_hd8824988273_
                                                     (##car _e8824888270_))
                                                    (_tl8825088275_
                                                     (##cdr _e8824888270_)))
                                                (let ((_expr88278_
                                                       _hd8824988273_))
                                                  (if (gx#stx-null?
                                                       _tl8825088275_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88268_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88268_)
                        (cons _expr88278_ '()))
                  (_E8824488256_))
              (_E8824488256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8824488256_)))))
                                  (_E8824488256_)))))
                      (_E8824388280_)))))
          (let* ((_e8819988209_ _stx88195_)
                 (_E8820188213_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8819988209_)))
                 (_E8820088237_
                  (lambda ()
                    (if (gx#stx-pair? _e8819988209_)
                        (let ((_e8820288217_ (gx#syntax-e _e8819988209_)))
                          (let ((_hd8820388220_ (##car _e8820288217_))
                                (_tl8820488222_ (##cdr _e8820288217_)))
                            (if (gx#stx-pair? _tl8820488222_)
                                (let ((_e8820588225_
                                       (gx#syntax-e _tl8820488222_)))
                                  (let ((_hd8820688228_ (##car _e8820588225_))
                                        (_tl8820788230_ (##cdr _e8820588225_)))
                                    (let* ((_hd88233_ _hd8820688228_)
                                           (_body88235_ _tl8820788230_))
                                      (if (and (gx#stx-list? _hd88233_)
                                               (gx#stx-list? _body88235_)
                                               (not (gx#stx-null?
                                                     _body88235_)))
                                          (gx#core-cons*
                                           _form88196_
                                           (gx#stx-map1
                                            _generate88198_
                                            _hd88233_)
                                           _body88235_)
                                          (_E8820188213_)))))
                                (_E8820188213_))))
                        (_E8820188213_)))))
            (_E8820088237_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88287_)
        (let ((_form88289_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88287_ _form88289_))))
    (define gx#macro-expand-let-values
      (lambda _g90672_
        (let ((_g90671_ (##length _g90672_)))
          (cond ((##fx= _g90671_ 1)
                 (apply (lambda (_stx88287_)
                          (gx#macro-expand-let-values__0 _stx88287_))
                        _g90672_))
                ((##fx= _g90671_ 2)
                 (apply (lambda (_stx88291_ _form88292_)
                          (gx#macro-expand-let-values__%
                           _stx88291_
                           _form88292_))
                        _g90672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g90672_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88192_)
        (gx#macro-expand-let-values__% _stx88192_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88190_)
        (gx#macro-expand-let-values__% _stx88190_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88081_)
        (let* ((_e8808288108_ _stx88081_)
               (_E8809488112_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8808288108_)))
               (_E8808488154_
                (lambda ()
                  (if (gx#stx-pair? _e8808288108_)
                      (let ((_e8809588116_ (gx#syntax-e _e8808288108_)))
                        (let ((_hd8809688119_ (##car _e8809588116_))
                              (_tl8809788121_ (##cdr _e8809588116_)))
                          (if (gx#stx-pair? _tl8809788121_)
                              (let ((_e8809888124_
                                     (gx#syntax-e _tl8809788121_)))
                                (let ((_hd8809988127_ (##car _e8809888124_))
                                      (_tl8810088129_ (##cdr _e8809888124_)))
                                  (let ((_test88132_ _hd8809988127_))
                                    (if (gx#stx-pair? _tl8810088129_)
                                        (let ((_e8810188134_
                                               (gx#syntax-e _tl8810088129_)))
                                          (let ((_hd8810288137_
                                                 (##car _e8810188134_))
                                                (_tl8810388139_
                                                 (##cdr _e8810188134_)))
                                            (let ((_K88142_ _hd8810288137_))
                                              (if (gx#stx-pair? _tl8810388139_)
                                                  (let ((_e8810488144_
                                                         (gx#syntax-e
                                                          _tl8810388139_)))
                                                    (let ((_hd8810588147_
                                                           (##car _e8810488144_))
                                                          (_tl8810688149_
                                                           (##cdr _e8810488144_)))
                                                      (let ((_E88152_
                                                             _hd8810588147_))
                                                        (if (gx#stx-null?
                                                             _tl8810688149_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88132_
                         _K88142_
                         _E88152_)
                        (_E8809488112_))
                    (_E8809488112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8809488112_)))))
                                        (_E8809488112_)))))
                              (_E8809488112_))))
                      (_E8809488112_))))
               (_E8808388186_
                (lambda ()
                  (if (gx#stx-pair? _e8808288108_)
                      (let ((_e8808588158_ (gx#syntax-e _e8808288108_)))
                        (let ((_hd8808688161_ (##car _e8808588158_))
                              (_tl8808788163_ (##cdr _e8808588158_)))
                          (if (gx#stx-pair? _tl8808788163_)
                              (let ((_e8808888166_
                                     (gx#syntax-e _tl8808788163_)))
                                (let ((_hd8808988169_ (##car _e8808888166_))
                                      (_tl8809088171_ (##cdr _e8808888166_)))
                                  (let ((_test88174_ _hd8808988169_))
                                    (if (gx#stx-pair? _tl8809088171_)
                                        (let ((_e8809188176_
                                               (gx#syntax-e _tl8809088171_)))
                                          (let ((_hd8809288179_
                                                 (##car _e8809188176_))
                                                (_tl8809388181_
                                                 (##cdr _e8809188176_)))
                                            (let ((_K88184_ _hd8809288179_))
                                              (if (gx#stx-null? _tl8809388181_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88174_
                                                       _K88184_
                                                       '#!void)
                                                      (_E8808488154_))
                                                  (_E8808488154_)))))
                                        (_E8808488154_)))))
                              (_E8808488154_))))
                      (_E8808488154_)))))
          (_E8808388186_))))
    (define gx#free-identifier=?
      (lambda (_xid88069_ _yid88070_)
        (let ((_xe88072_ (gx#resolve-identifier__0 _xid88069_))
              (_ye88073_ (gx#resolve-identifier__0 _yid88070_)))
          (if (and _xe88072_ _ye88073_)
              (let ((_$e88075_ (eq? _xe88072_ _ye88073_)))
                (if _$e88075_
                    _$e88075_
                    (if (##structure-instance-of? _xe88072_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88073_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88072_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88073_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88072_ _ye88073_)
                  '#f
                  (gx#stx-eq? _xid88069_ _yid88070_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88053_ _yid88054_)
        (letrec ((_context88056_
                  (lambda (_e88067_)
                    (if (##structure-direct-instance-of?
                         _e88067_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88067_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88057_
                  (lambda (_e88065_)
                    (if (symbol? _e88065_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88065_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88065_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88065_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88058_
                  (lambda (_e88063_)
                    (if (symbol? _e88063_)
                        _e88063_
                        (gx#syntax-local-unwrap _e88063_)))))
          (let ((_x88060_ (_unwrap88058_ _xid88053_))
                (_y88061_ (_unwrap88058_ _yid88054_)))
            (if (gx#stx-eq? _x88060_ _y88061_)
                (if (eq? (_context88056_ _x88060_) (_context88056_ _y88061_))
                    (equal? (_marks88057_ _x88060_) (_marks88057_ _y88061_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88051_)
        (if (gx#identifier? _stx88051_)
            (gx#core-identifier=? _stx88051_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88049_)
        (if (gx#identifier? _stx88049_)
            (gx#core-identifier=? _stx88049_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88047_)
        (if (gx#identifier? _x88047_)
            (if (not (gx#underscore? _x88047_)) _x88047_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87993_ _where87994_)
        (let _lp87996_ ((_rest87998_ (gx#syntax->list _stx87993_)))
          (let* ((_rest8799988007_ _rest87998_)
                 (_else8800188015_ (lambda () '#t))
                 (_K8800388025_
                  (lambda (_rest88018_ _hd88019_)
                    (if (not (gx#identifier? _hd88019_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87994_
                         _hd88019_)
                        (if (find (lambda (_g8802088022_)
                                    (gx#bound-identifier=?
                                     _g8802088022_
                                     _hd88019_))
                                  _rest88018_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87994_
                             _hd88019_)
                            (_lp87996_ _rest88018_))))))
            (if (##pair? _rest8799988007_)
                (let ((_hd8800488028_ (##car _rest8799988007_))
                      (_tl8800588030_ (##cdr _rest8799988007_)))
                  (let* ((_hd88033_ _hd8800488028_)
                         (_rest88035_ _tl8800588030_))
                    (_K8800388025_ _rest88035_ _hd88033_)))
                (_else8800188015_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88040_)
        (let ((_where88042_ _stx88040_))
          (gx#check-duplicate-identifiers__% _stx88040_ _where88042_))))
    (define gx#check-duplicate-identifiers
      (lambda _g90674_
        (let ((_g90673_ (##length _g90674_)))
          (cond ((##fx= _g90673_ 1)
                 (apply (lambda (_stx88040_)
                          (gx#check-duplicate-identifiers__0 _stx88040_))
                        _g90674_))
                ((##fx= _g90673_ 2)
                 (apply (lambda (_stx88044_ _where88045_)
                          (gx#check-duplicate-identifiers__%
                           _stx88044_
                           _where88045_))
                        _g90674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g90674_))))))
    (define gx#core-bind-values?
      (lambda (_stx87985_)
        (gx#stx-andmap
         (lambda (_x87987_)
           (let ((_$e87989_ (gx#identifier? _x87987_)))
             (if _$e87989_ _$e87989_ (gx#stx-false? _x87987_))))
         _stx87985_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87949_ _rebind?87950_ _phi87951_ _ctx87952_)
        (gx#stx-for-each1
         (lambda (_id87954_)
           (if (gx#identifier? _id87954_)
               (gx#core-bind-runtime!__%
                _id87954_
                _rebind?87950_
                _phi87951_
                _ctx87952_)
               '#!void))
         _stx87949_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87959_)
        (let* ((_rebind?87961_ '#f)
               (_phi87963_ (gx#current-expander-phi))
               (_ctx87965_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87959_
           _rebind?87961_
           _phi87963_
           _ctx87965_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87967_ _rebind?87968_)
        (let* ((_phi87970_ (gx#current-expander-phi))
               (_ctx87972_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87967_
           _rebind?87968_
           _phi87970_
           _ctx87972_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87974_ _rebind?87975_ _phi87976_)
        (let ((_ctx87978_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87974_
           _rebind?87975_
           _phi87976_
           _ctx87978_))))
    (define gx#core-bind-values!
      (lambda _g90676_
        (let ((_g90675_ (##length _g90676_)))
          (cond ((##fx= _g90675_ 1)
                 (apply (lambda (_stx87959_)
                          (gx#core-bind-values!__0 _stx87959_))
                        _g90676_))
                ((##fx= _g90675_ 2)
                 (apply (lambda (_stx87967_ _rebind?87968_)
                          (gx#core-bind-values!__1 _stx87967_ _rebind?87968_))
                        _g90676_))
                ((##fx= _g90675_ 3)
                 (apply (lambda (_stx87974_ _rebind?87975_ _phi87976_)
                          (gx#core-bind-values!__2
                           _stx87974_
                           _rebind?87975_
                           _phi87976_))
                        _g90676_))
                ((##fx= _g90675_ 4)
                 (apply (lambda (_stx87980_
                                 _rebind?87981_
                                 _phi87982_
                                 _ctx87983_)
                          (gx#core-bind-values!__%
                           _stx87980_
                           _rebind?87981_
                           _phi87982_
                           _ctx87983_))
                        _g90676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g90676_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87944_)
        (gx#stx-map1
         (lambda (_x87946_)
           (if (gx#identifier? _x87946_)
               (gx#core-quote-syntax__0 _x87946_)
               '#f))
         _stx87944_)))
    (define gx#core-runtime-ref?
      (lambda (_stx87937_)
        (if (gx#identifier? _stx87937_)
            (let* ((_bind87939_ (gx#resolve-identifier__0 _stx87937_))
                   (_$e87941_ (not _bind87939_)))
              (if _$e87941_
                  _$e87941_
                  (##structure-instance-of?
                   _bind87939_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id87929_ _form87930_)
        (let ((_bind87932_ (gx#resolve-identifier__0 _id87929_)))
          (if (##structure-instance-of? _bind87932_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id87929_)
              (if (not _bind87932_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id87929_)))
                      (gx#core-quote-syntax__0 _id87929_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form87930_
                       _id87929_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form87930_
                   _id87929_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id87888_ _rebind?87889_ _phi87890_ _ctx87891_)
        (let* ((_key87893_ (gx#core-identifier-key _id87888_))
               (_eid87895_
                (gx#make-binding-id__% _key87893_ '#f _phi87890_ _ctx87891_))
               (_bind87897_
                (if (##structure-instance-of? _ctx87891_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87895_
                     _key87893_
                     _phi87890_
                     _ctx87891_)
                    (if (##structure-instance-of?
                         _ctx87891_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87895_
                         _key87893_
                         _phi87890_)
                        (if (##structure-instance-of?
                             _ctx87891_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid87895_
                             _key87893_
                             _phi87890_)
                            (##structure
                             gx#runtime-binding::t
                             _eid87895_
                             _key87893_
                             _phi87890_))))))
          (gx#bind-identifier!__%
           _id87888_
           _bind87897_
           _rebind?87889_
           _phi87890_
           _ctx87891_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id87903_)
        (let* ((_rebind?87905_ '#f)
               (_phi87907_ (gx#current-expander-phi))
               (_ctx87909_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87903_
           _rebind?87905_
           _phi87907_
           _ctx87909_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id87911_ _rebind?87912_)
        (let* ((_phi87914_ (gx#current-expander-phi))
               (_ctx87916_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87911_
           _rebind?87912_
           _phi87914_
           _ctx87916_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id87918_ _rebind?87919_ _phi87920_)
        (let ((_ctx87922_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87918_
           _rebind?87919_
           _phi87920_
           _ctx87922_))))
    (define gx#core-bind-runtime!
      (lambda _g90678_
        (let ((_g90677_ (##length _g90678_)))
          (cond ((##fx= _g90677_ 1)
                 (apply (lambda (_id87903_)
                          (gx#core-bind-runtime!__0 _id87903_))
                        _g90678_))
                ((##fx= _g90677_ 2)
                 (apply (lambda (_id87911_ _rebind?87912_)
                          (gx#core-bind-runtime!__1 _id87911_ _rebind?87912_))
                        _g90678_))
                ((##fx= _g90677_ 3)
                 (apply (lambda (_id87918_ _rebind?87919_ _phi87920_)
                          (gx#core-bind-runtime!__2
                           _id87918_
                           _rebind?87919_
                           _phi87920_))
                        _g90678_))
                ((##fx= _g90677_ 4)
                 (apply (lambda (_id87924_
                                 _rebind?87925_
                                 _phi87926_
                                 _ctx87927_)
                          (gx#core-bind-runtime!__%
                           _id87924_
                           _rebind?87925_
                           _phi87926_
                           _ctx87927_))
                        _g90678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g90678_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id87843_ _eid87844_ _rebind?87845_ _phi87846_ _ctx87847_)
        (let* ((_key87849_ (gx#core-identifier-key _id87843_))
               (_bind87851_
                (if (##structure-instance-of? _ctx87847_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87844_
                     _key87849_
                     _phi87846_
                     _ctx87847_)
                    (if (##structure-instance-of?
                         _ctx87847_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87844_
                         _key87849_
                         _phi87846_)
                        (##structure
                         gx#runtime-binding::t
                         _eid87844_
                         _key87849_
                         _phi87846_)))))
          (gx#bind-identifier!__%
           _id87843_
           _bind87851_
           _rebind?87845_
           _phi87846_
           _ctx87847_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id87857_ _eid87858_)
        (let* ((_rebind?87860_ '#f)
               (_phi87862_ (gx#current-expander-phi))
               (_ctx87864_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87857_
           _eid87858_
           _rebind?87860_
           _phi87862_
           _ctx87864_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id87866_ _eid87867_ _rebind?87868_)
        (let* ((_phi87870_ (gx#current-expander-phi))
               (_ctx87872_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87866_
           _eid87867_
           _rebind?87868_
           _phi87870_
           _ctx87872_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id87874_ _eid87875_ _rebind?87876_ _phi87877_)
        (let ((_ctx87879_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87874_
           _eid87875_
           _rebind?87876_
           _phi87877_
           _ctx87879_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g90680_
        (let ((_g90679_ (##length _g90680_)))
          (cond ((##fx= _g90679_ 2)
                 (apply (lambda (_id87857_ _eid87858_)
                          (gx#core-bind-runtime-reference!__0
                           _id87857_
                           _eid87858_))
                        _g90680_))
                ((##fx= _g90679_ 3)
                 (apply (lambda (_id87866_ _eid87867_ _rebind?87868_)
                          (gx#core-bind-runtime-reference!__1
                           _id87866_
                           _eid87867_
                           _rebind?87868_))
                        _g90680_))
                ((##fx= _g90679_ 4)
                 (apply (lambda (_id87874_
                                 _eid87875_
                                 _rebind?87876_
                                 _phi87877_)
                          (gx#core-bind-runtime-reference!__2
                           _id87874_
                           _eid87875_
                           _rebind?87876_
                           _phi87877_))
                        _g90680_))
                ((##fx= _g90679_ 5)
                 (apply (lambda (_id87881_
                                 _eid87882_
                                 _rebind?87883_
                                 _phi87884_
                                 _ctx87885_)
                          (gx#core-bind-runtime-reference!__%
                           _id87881_
                           _eid87882_
                           _rebind?87883_
                           _phi87884_
                           _ctx87885_))
                        _g90680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g90680_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id87803_ _eid87804_ _rebind?87805_ _phi87806_ _ctx87807_)
        (gx#bind-identifier!__%
         _id87803_
         (##structure
          gx#extern-binding::t
          _eid87804_
          (gx#core-identifier-key _id87803_)
          _phi87806_)
         _rebind?87805_
         _phi87806_
         _ctx87807_)))
    (define gx#core-bind-extern!__0
      (lambda (_id87812_ _eid87813_)
        (let* ((_rebind?87815_ '#f)
               (_phi87817_ (gx#current-expander-phi))
               (_ctx87819_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87812_
           _eid87813_
           _rebind?87815_
           _phi87817_
           _ctx87819_))))
    (define gx#core-bind-extern!__1
      (lambda (_id87821_ _eid87822_ _rebind?87823_)
        (let* ((_phi87825_ (gx#current-expander-phi))
               (_ctx87827_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87821_
           _eid87822_
           _rebind?87823_
           _phi87825_
           _ctx87827_))))
    (define gx#core-bind-extern!__2
      (lambda (_id87829_ _eid87830_ _rebind?87831_ _phi87832_)
        (let ((_ctx87834_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87829_
           _eid87830_
           _rebind?87831_
           _phi87832_
           _ctx87834_))))
    (define gx#core-bind-extern!
      (lambda _g90682_
        (let ((_g90681_ (##length _g90682_)))
          (cond ((##fx= _g90681_ 2)
                 (apply (lambda (_id87812_ _eid87813_)
                          (gx#core-bind-extern!__0 _id87812_ _eid87813_))
                        _g90682_))
                ((##fx= _g90681_ 3)
                 (apply (lambda (_id87821_ _eid87822_ _rebind?87823_)
                          (gx#core-bind-extern!__1
                           _id87821_
                           _eid87822_
                           _rebind?87823_))
                        _g90682_))
                ((##fx= _g90681_ 4)
                 (apply (lambda (_id87829_
                                 _eid87830_
                                 _rebind?87831_
                                 _phi87832_)
                          (gx#core-bind-extern!__2
                           _id87829_
                           _eid87830_
                           _rebind?87831_
                           _phi87832_))
                        _g90682_))
                ((##fx= _g90681_ 5)
                 (apply (lambda (_id87836_
                                 _eid87837_
                                 _rebind?87838_
                                 _phi87839_
                                 _ctx87840_)
                          (gx#core-bind-extern!__%
                           _id87836_
                           _eid87837_
                           _rebind?87838_
                           _phi87839_
                           _ctx87840_))
                        _g90682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g90682_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id87757_ _e87758_ _rebind?87759_ _phi87760_ _ctx87761_)
        (gx#bind-identifier!__%
         _id87757_
         (let ((_key87766_ (gx#core-identifier-key _id87757_))
               (_e87767_
                (if (or (##structure-instance-of? _e87758_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e87758_
                         'gx#expander-context::t))
                    _e87758_
                    (##structure
                     gx#user-expander::t
                     _e87758_
                     _ctx87761_
                     _phi87760_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key87766_ '#t _phi87760_ _ctx87761_)
            _key87766_
            _phi87760_
            _e87767_))
         _rebind?87759_
         _phi87760_
         _ctx87761_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id87772_ _e87773_)
        (let* ((_rebind?87775_ '#f)
               (_phi87777_ (gx#current-expander-phi))
               (_ctx87779_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87772_
           _e87773_
           _rebind?87775_
           _phi87777_
           _ctx87779_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id87781_ _e87782_ _rebind?87783_)
        (let* ((_phi87785_ (gx#current-expander-phi))
               (_ctx87787_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87781_
           _e87782_
           _rebind?87783_
           _phi87785_
           _ctx87787_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id87789_ _e87790_ _rebind?87791_ _phi87792_)
        (let ((_ctx87794_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87789_
           _e87790_
           _rebind?87791_
           _phi87792_
           _ctx87794_))))
    (define gx#core-bind-syntax!
      (lambda _g90684_
        (let ((_g90683_ (##length _g90684_)))
          (cond ((##fx= _g90683_ 2)
                 (apply (lambda (_id87772_ _e87773_)
                          (gx#core-bind-syntax!__0 _id87772_ _e87773_))
                        _g90684_))
                ((##fx= _g90683_ 3)
                 (apply (lambda (_id87781_ _e87782_ _rebind?87783_)
                          (gx#core-bind-syntax!__1
                           _id87781_
                           _e87782_
                           _rebind?87783_))
                        _g90684_))
                ((##fx= _g90683_ 4)
                 (apply (lambda (_id87789_ _e87790_ _rebind?87791_ _phi87792_)
                          (gx#core-bind-syntax!__2
                           _id87789_
                           _e87790_
                           _rebind?87791_
                           _phi87792_))
                        _g90684_))
                ((##fx= _g90683_ 5)
                 (apply (lambda (_id87796_
                                 _e87797_
                                 _rebind?87798_
                                 _phi87799_
                                 _ctx87800_)
                          (gx#core-bind-syntax!__%
                           _id87796_
                           _e87797_
                           _rebind?87798_
                           _phi87799_
                           _ctx87800_))
                        _g90684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g90684_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id87740_ _e87741_ _rebind?87742_)
        (gx#core-bind-syntax!__%
         _id87740_
         _e87741_
         _rebind?87742_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id87747_ _e87748_)
        (let ((_rebind?87750_ '#f))
          (gx#core-bind-root-syntax!__% _id87747_ _e87748_ _rebind?87750_))))
    (define gx#core-bind-root-syntax!
      (lambda _g90686_
        (let ((_g90685_ (##length _g90686_)))
          (cond ((##fx= _g90685_ 2)
                 (apply (lambda (_id87747_ _e87748_)
                          (gx#core-bind-root-syntax!__0 _id87747_ _e87748_))
                        _g90686_))
                ((##fx= _g90685_ 3)
                 (apply (lambda (_id87752_ _e87753_ _rebind?87754_)
                          (gx#core-bind-root-syntax!__%
                           _id87752_
                           _e87753_
                           _rebind?87754_))
                        _g90686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g90686_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id87698_ _alias-id87699_ _rebind?87700_ _phi87701_ _ctx87702_)
        (gx#bind-identifier!__%
         _id87698_
         (let ((_key87704_ (gx#core-identifier-key _id87698_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key87704_ '#t _phi87701_ _ctx87702_)
            _key87704_
            _phi87701_
            _alias-id87699_))
         _rebind?87700_
         _phi87701_
         _ctx87702_)))
    (define gx#core-bind-alias!__0
      (lambda (_id87709_ _alias-id87710_)
        (let* ((_rebind?87712_ '#f)
               (_phi87714_ (gx#current-expander-phi))
               (_ctx87716_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87709_
           _alias-id87710_
           _rebind?87712_
           _phi87714_
           _ctx87716_))))
    (define gx#core-bind-alias!__1
      (lambda (_id87718_ _alias-id87719_ _rebind?87720_)
        (let* ((_phi87722_ (gx#current-expander-phi))
               (_ctx87724_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87718_
           _alias-id87719_
           _rebind?87720_
           _phi87722_
           _ctx87724_))))
    (define gx#core-bind-alias!__2
      (lambda (_id87726_ _alias-id87727_ _rebind?87728_ _phi87729_)
        (let ((_ctx87731_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87726_
           _alias-id87727_
           _rebind?87728_
           _phi87729_
           _ctx87731_))))
    (define gx#core-bind-alias!
      (lambda _g90688_
        (let ((_g90687_ (##length _g90688_)))
          (cond ((##fx= _g90687_ 2)
                 (apply (lambda (_id87709_ _alias-id87710_)
                          (gx#core-bind-alias!__0 _id87709_ _alias-id87710_))
                        _g90688_))
                ((##fx= _g90687_ 3)
                 (apply (lambda (_id87718_ _alias-id87719_ _rebind?87720_)
                          (gx#core-bind-alias!__1
                           _id87718_
                           _alias-id87719_
                           _rebind?87720_))
                        _g90688_))
                ((##fx= _g90687_ 4)
                 (apply (lambda (_id87726_
                                 _alias-id87727_
                                 _rebind?87728_
                                 _phi87729_)
                          (gx#core-bind-alias!__2
                           _id87726_
                           _alias-id87727_
                           _rebind?87728_
                           _phi87729_))
                        _g90688_))
                ((##fx= _g90687_ 5)
                 (apply (lambda (_id87733_
                                 _alias-id87734_
                                 _rebind?87735_
                                 _phi87736_
                                 _ctx87737_)
                          (gx#core-bind-alias!__%
                           _id87733_
                           _alias-id87734_
                           _rebind?87735_
                           _phi87736_
                           _ctx87737_))
                        _g90688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g90688_))))))
    (define gx#make-binding-id__%
      (lambda (_key87655_ _syntax?87656_ _phi87657_ _ctx87658_)
        (if (uninterned-symbol? _key87655_)
            (gensym 'L)
            (if (pair? _key87655_)
                (gensym (car _key87655_))
                (if (##structure-instance-of? _ctx87658_ 'gx#top-context::t)
                    (let ((_ns87660_
                           (gx#core-context-namespace__% _ctx87658_)))
                      (if (and (fxzero? _phi87657_) (not _syntax?87656_))
                          (if _ns87660_
                              (make-symbol__1 _ns87660_ '"#" _key87655_)
                              _key87655_)
                          (if _syntax?87656_
                              (make-symbol__1
                               (let ((_$e87662_ _ns87660_))
                                 (if _$e87662_ _$e87662_ '""))
                               '"[:"
                               (number->string _phi87657_)
                               '":]#"
                               _key87655_)
                              (make-symbol__1
                               (let ((_$e87665_ _ns87660_))
                                 (if _$e87665_ _$e87665_ '""))
                               '"["
                               (number->string _phi87657_)
                               '"]#"
                               _key87655_))))
                    (gensym _key87655_))))))
    (define gx#make-binding-id__0
      (lambda (_key87671_)
        (let* ((_syntax?87673_ '#f)
               (_phi87675_ (gx#current-expander-phi))
               (_ctx87677_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87671_
           _syntax?87673_
           _phi87675_
           _ctx87677_))))
    (define gx#make-binding-id__1
      (lambda (_key87679_ _syntax?87680_)
        (let* ((_phi87682_ (gx#current-expander-phi))
               (_ctx87684_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87679_
           _syntax?87680_
           _phi87682_
           _ctx87684_))))
    (define gx#make-binding-id__2
      (lambda (_key87686_ _syntax?87687_ _phi87688_)
        (let ((_ctx87690_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87686_
           _syntax?87687_
           _phi87688_
           _ctx87690_))))
    (define gx#make-binding-id
      (lambda _g90690_
        (let ((_g90689_ (##length _g90690_)))
          (cond ((##fx= _g90689_ 1)
                 (apply (lambda (_key87671_)
                          (gx#make-binding-id__0 _key87671_))
                        _g90690_))
                ((##fx= _g90689_ 2)
                 (apply (lambda (_key87679_ _syntax?87680_)
                          (gx#make-binding-id__1 _key87679_ _syntax?87680_))
                        _g90690_))
                ((##fx= _g90689_ 3)
                 (apply (lambda (_key87686_ _syntax?87687_ _phi87688_)
                          (gx#make-binding-id__2
                           _key87686_
                           _syntax?87687_
                           _phi87688_))
                        _g90690_))
                ((##fx= _g90689_ 4)
                 (apply (lambda (_key87692_
                                 _syntax?87693_
                                 _phi87694_
                                 _ctx87695_)
                          (gx#make-binding-id__%
                           _key87692_
                           _syntax?87693_
                           _phi87694_
                           _ctx87695_))
                        _g90690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g90690_))))))))
