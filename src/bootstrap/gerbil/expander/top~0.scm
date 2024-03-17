(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710715075)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx90626_)
        (letrec ((_expand-special90628_
                  (lambda (_hd90630_ _K90631_ _rest90632_ _r90633_)
                    (_K90631_
                     _rest90632_
                     (cons (gx#core-expand-top _hd90630_) _r90633_)))))
          (gx#core-expand-block__0 _stx90626_ _expand-special90628_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90379_)
        (letrec ((_expand-special90381_
                  (lambda (_hd90501_ _K90502_ _rest90503_ _r90504_)
                    (let* ((_K90508_
                            (lambda (_e90506_)
                              (_K90502_ _rest90503_ (cons _e90506_ _r90504_))))
                           (_e9050990538_ _hd90501_)
                           (_E9053390542_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9050990538_)))
                           (_E9052990554_
                            (lambda ()
                              (if (gx#stx-pair? _e9050990538_)
                                  (let ((_e9053490546_
                                         (gx#syntax-e _e9050990538_)))
                                    (let ((_hd9053590549_
                                           (##car _e9053490546_))
                                          (_tl9053690551_
                                           (##cdr _e9053490546_)))
                                      (if (and (gx#identifier? _hd9053590549_)
                                               (gx#core-identifier=?
                                                _hd9053590549_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90508_
                                               (gx#core-expand-define-runtime%
                                                _hd90501_))
                                              (_E9053390542_))
                                          (_E9053390542_))))
                                  (_E9053390542_))))
                           (_E9052590566_
                            (lambda ()
                              (if (gx#stx-pair? _e9050990538_)
                                  (let ((_e9053090558_
                                         (gx#syntax-e _e9050990538_)))
                                    (let ((_hd9053190561_
                                           (##car _e9053090558_))
                                          (_tl9053290563_
                                           (##cdr _e9053090558_)))
                                      (if (and (gx#identifier? _hd9053190561_)
                                               (gx#core-identifier=?
                                                _hd9053190561_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90508_
                                               (gx#core-expand-define-alias%
                                                _hd90501_))
                                              (_E9052990554_))
                                          (_E9052990554_))))
                                  (_E9052990554_))))
                           (_E9051590578_
                            (lambda ()
                              (if (gx#stx-pair? _e9050990538_)
                                  (let ((_e9052690570_
                                         (gx#syntax-e _e9050990538_)))
                                    (let ((_hd9052790573_
                                           (##car _e9052690570_))
                                          (_tl9052890575_
                                           (##cdr _e9052690570_)))
                                      (if (and (gx#identifier? _hd9052790573_)
                                               (gx#core-identifier=?
                                                _hd9052790573_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90508_
                                               (gx#core-expand-define-syntax%
                                                _hd90501_))
                                              (_E9052590566_))
                                          (_E9052590566_))))
                                  (_E9052590566_))))
                           (_E9051190610_
                            (lambda ()
                              (if (gx#stx-pair? _e9050990538_)
                                  (let ((_e9051690582_
                                         (gx#syntax-e _e9050990538_)))
                                    (let ((_hd9051790585_
                                           (##car _e9051690582_))
                                          (_tl9051890587_
                                           (##cdr _e9051690582_)))
                                      (if (and (gx#identifier? _hd9051790585_)
                                               (gx#core-identifier=?
                                                _hd9051790585_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9051890587_)
                                              (let ((_e9051990590_
                                                     (gx#syntax-e
                                                      _tl9051890587_)))
                                                (let ((_hd9052090593_
                                                       (##car _e9051990590_))
                                                      (_tl9052190595_
                                                       (##cdr _e9051990590_)))
                                                  (let ((_hd-bind90598_
                                                         _hd9052090593_))
                                                    (if (gx#stx-pair?
                                                         _tl9052190595_)
                                                        (let ((_e9052290600_
                                                               (gx#syntax-e
                                                                _tl9052190595_)))
                                                          (let ((_hd9052390603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9052290600_))
                        (_tl9052490605_ (##cdr _e9052290600_)))
                    (let ((_expr90608_ _hd9052390603_))
                      (if (gx#stx-null? _tl9052490605_)
                          (if (gx#core-bind-values? _hd-bind90598_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90598_)
                                (_K90508_ _hd90501_))
                              (_E9051590578_))
                          (_E9051590578_)))))
                (_E9051590578_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9051590578_))
                                          (_E9051590578_))))
                                  (_E9051590578_))))
                           (_E9051090622_
                            (lambda ()
                              (if (gx#stx-pair? _e9050990538_)
                                  (let ((_e9051290614_
                                         (gx#syntax-e _e9050990538_)))
                                    (let ((_hd9051390617_
                                           (##car _e9051290614_))
                                          (_tl9051490619_
                                           (##cdr _e9051290614_)))
                                      (if (and (gx#identifier? _hd9051390617_)
                                               (gx#core-identifier=?
                                                _hd9051390617_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90508_
                                               (gx#core-expand-begin-syntax%
                                                _hd90501_))
                                              (_E9051190610_))
                                          (_E9051190610_))))
                                  (_E9051190610_)))))
                      (_E9051090622_))))
                 (_eval-body90382_
                  (lambda (_rbody90390_)
                    (let _lp90392_ ((_rest90394_ _rbody90390_)
                                    (_body90395_ '())
                                    (_ebody90396_ '()))
                      (let* ((_rest9039790405_ _rest90394_)
                             (_else9039990413_
                              (lambda ()
                                (values _body90395_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90396_)
                                          (gx#stx-source _stx90379_))))))
                             (_K9040190489_
                              (lambda (_rest90416_ _hd90417_)
                                (let* ((_e9041890435_ _hd90417_)
                                       (_E9043090439_
                                        (lambda ()
                                          (_lp90392_
                                           _rest90416_
                                           (cons _hd90417_ _body90395_)
                                           (cons _hd90417_ _ebody90396_))))
                                       (_E9042090451_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9041890435_)
                                              (let ((_e9043190443_
                                                     (gx#syntax-e
                                                      _e9041890435_)))
                                                (let ((_hd9043290446_
                                                       (##car _e9043190443_))
                                                      (_tl9043390448_
                                                       (##cdr _e9043190443_)))
                                                  (if (and (gx#identifier?
                                                            _hd9043290446_)
                                                           (gx#core-identifier=?
                                                            _hd9043290446_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90392_
                                                           _rest90416_
                                                           (cons _hd90417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90395_)
                   _ebody90396_)
                  (_E9043090439_))
              (_E9043090439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9043090439_))))
                                       (_E9041990485_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9041890435_)
                                              (let ((_e9042190455_
                                                     (gx#syntax-e
                                                      _e9041890435_)))
                                                (let ((_hd9042290458_
                                                       (##car _e9042190455_))
                                                      (_tl9042390460_
                                                       (##cdr _e9042190455_)))
                                                  (if (and (gx#identifier?
                                                            _hd9042290458_)
                                                           (gx#core-identifier=?
                                                            _hd9042290458_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9042390460_)
                                                          (let ((_e9042490463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9042390460_)))
                    (let ((_hd9042590466_ (##car _e9042490463_))
                          (_tl9042690468_ (##cdr _e9042490463_)))
                      (let ((_hd-bind90471_ _hd9042590466_))
                        (if (gx#stx-pair? _tl9042690468_)
                            (let ((_e9042790473_ (gx#syntax-e _tl9042690468_)))
                              (let ((_hd9042890476_ (##car _e9042790473_))
                                    (_tl9042990478_ (##cdr _e9042790473_)))
                                (let ((_expr90481_ _hd9042890476_))
                                  (if (gx#stx-null? _tl9042990478_)
                                      (if '#t
                                          (let ((_ehd90483_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90471_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90481_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90417_))))
                                            (_lp90392_
                                             _rest90416_
                                             (cons _ehd90483_ _body90395_)
                                             (cons _ehd90483_ _ebody90396_)))
                                          (_E9042090451_))
                                      (_E9042090451_)))))
                            (_E9042090451_)))))
                  (_E9042090451_))
              (_E9042090451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9042090451_)))))
                                  (_E9041990485_)))))
                        (if (##pair? _rest9039790405_)
                            (let ((_hd9040290492_ (##car _rest9039790405_))
                                  (_tl9040390494_ (##cdr _rest9039790405_)))
                              (let* ((_hd90497_ _hd9040290492_)
                                     (_rest90499_ _tl9040390494_))
                                (_K9040190489_ _rest90499_ _hd90497_)))
                            (_else9039990413_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90385_
                     (gx#core-expand-block__1
                      _stx90379_
                      _expand-special90381_
                      '#f))
                    (_g90649_ (_eval-body90382_ _rbody90385_)))
               (begin
                 (let ((_g90650_
                        (if (##values? _g90649_)
                            (##vector-length _g90649_)
                            1)))
                   (if (not (##fx= _g90650_ 2))
                       (error "Context expects 2 values" _g90650_)))
                 (let ((_expanded-body90387_ (##vector-ref _g90649_ 0))
                       (_value90388_ (##vector-ref _g90649_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90387_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90388_ '())))
                    (gx#stx-source _stx90379_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90349_)
        (let* ((_e9035090357_ _stx90349_)
               (_E9035290361_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9035090357_)))
               (_E9035190375_
                (lambda ()
                  (if (gx#stx-pair? _e9035090357_)
                      (let ((_e9035390365_ (gx#syntax-e _e9035090357_)))
                        (let ((_hd9035490368_ (##car _e9035390365_))
                              (_tl9035590370_ (##cdr _e9035390365_)))
                          (let ((_body90373_ _tl9035590370_))
                            (if (gx#stx-list? _body90373_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90373_)
                                 (gx#stx-source _stx90349_))
                                (_E9035290361_)))))
                      (_E9035290361_)))))
          (_E9035190375_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90347_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90347_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90293_)
        (let* ((_e9029490307_ _stx90293_)
               (_E9029690311_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9029490307_)))
               (_E9029590343_
                (lambda ()
                  (if (gx#stx-pair? _e9029490307_)
                      (let ((_e9029790315_ (gx#syntax-e _e9029490307_)))
                        (let ((_hd9029890318_ (##car _e9029790315_))
                              (_tl9029990320_ (##cdr _e9029790315_)))
                          (if (gx#stx-pair? _tl9029990320_)
                              (let ((_e9030090323_
                                     (gx#syntax-e _tl9029990320_)))
                                (let ((_hd9030190326_ (##car _e9030090323_))
                                      (_tl9030290328_ (##cdr _e9030090323_)))
                                  (let ((_ann90331_ _hd9030190326_))
                                    (if (gx#stx-pair? _tl9030290328_)
                                        (let ((_e9030390333_
                                               (gx#syntax-e _tl9030290328_)))
                                          (let ((_hd9030490336_
                                                 (##car _e9030390333_))
                                                (_tl9030590338_
                                                 (##cdr _e9030390333_)))
                                            (let ((_expr90341_ _hd9030490336_))
                                              (if (gx#stx-null? _tl9030590338_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90341_) '())))
               (gx#stx-source _stx90293_))
              (_E9029690311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9029690311_)))))
                                        (_E9029690311_)))))
                              (_E9029690311_))))
                      (_E9029690311_)))))
          (_E9029590343_))))
    (define gx#core-expand-local-block
      (lambda (_stx90017_ _body90018_)
        (letrec ((_expand-special90020_
                  (lambda (_hd90288_ _K90289_ _rest90290_ _r90291_)
                    (_K90289_
                     '()
                     (cons (_expand-internal90021_ _hd90288_ _rest90290_)
                           _r90291_))))
                 (_expand-internal90021_
                  (lambda (_hd90284_ _rest90285_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90023_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90284_ _rest90285_))
                          (gx#stx-source _stx90017_))
                         _expand-internal-special90022_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj90643
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj90643)
                       __obj90643))))
                 (_expand-internal-special90022_
                  (lambda (_hd90179_ _K90180_ _rest90181_ _r90182_)
                    (let* ((_e9018390208_ _hd90179_)
                           (_E9020390212_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9018390208_)))
                           (_E9019990224_
                            (lambda ()
                              (if (gx#stx-pair? _e9018390208_)
                                  (let ((_e9020490216_
                                         (gx#syntax-e _e9018390208_)))
                                    (let ((_hd9020590219_
                                           (##car _e9020490216_))
                                          (_tl9020690221_
                                           (##cdr _e9020490216_)))
                                      (if (and (gx#identifier? _hd9020590219_)
                                               (gx#core-identifier=?
                                                _hd9020590219_
                                                '%#declare))
                                          (if '#t
                                              (_K90180_
                                               _rest90181_
                                               (cons (gx#core-expand-declare%
                                                      _hd90179_)
                                                     _r90182_))
                                              (_E9020390212_))
                                          (_E9020390212_))))
                                  (_E9020390212_))))
                           (_E9019590236_
                            (lambda ()
                              (if (gx#stx-pair? _e9018390208_)
                                  (let ((_e9020090228_
                                         (gx#syntax-e _e9018390208_)))
                                    (let ((_hd9020190231_
                                           (##car _e9020090228_))
                                          (_tl9020290233_
                                           (##cdr _e9020090228_)))
                                      (if (and (gx#identifier? _hd9020190231_)
                                               (gx#core-identifier=?
                                                _hd9020190231_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90179_)
                                                (_K90180_
                                                 _rest90181_
                                                 _r90182_))
                                              (_E9019990224_))
                                          (_E9019990224_))))
                                  (_E9019990224_))))
                           (_E9018590248_
                            (lambda ()
                              (if (gx#stx-pair? _e9018390208_)
                                  (let ((_e9019690240_
                                         (gx#syntax-e _e9018390208_)))
                                    (let ((_hd9019790243_
                                           (##car _e9019690240_))
                                          (_tl9019890245_
                                           (##cdr _e9019690240_)))
                                      (if (and (gx#identifier? _hd9019790243_)
                                               (gx#core-identifier=?
                                                _hd9019790243_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90179_)
                                                (_K90180_
                                                 _rest90181_
                                                 _r90182_))
                                              (_E9019590236_))
                                          (_E9019590236_))))
                                  (_E9019590236_))))
                           (_E9018490280_
                            (lambda ()
                              (if (gx#stx-pair? _e9018390208_)
                                  (let ((_e9018690252_
                                         (gx#syntax-e _e9018390208_)))
                                    (let ((_hd9018790255_
                                           (##car _e9018690252_))
                                          (_tl9018890257_
                                           (##cdr _e9018690252_)))
                                      (if (and (gx#identifier? _hd9018790255_)
                                               (gx#core-identifier=?
                                                _hd9018790255_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9018890257_)
                                              (let ((_e9018990260_
                                                     (gx#syntax-e
                                                      _tl9018890257_)))
                                                (let ((_hd9019090263_
                                                       (##car _e9018990260_))
                                                      (_tl9019190265_
                                                       (##cdr _e9018990260_)))
                                                  (let ((_hd-bind90268_
                                                         _hd9019090263_))
                                                    (if (gx#stx-pair?
                                                         _tl9019190265_)
                                                        (let ((_e9019290270_
                                                               (gx#syntax-e
                                                                _tl9019190265_)))
                                                          (let ((_hd9019390273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9019290270_))
                        (_tl9019490275_ (##cdr _e9019290270_)))
                    (let ((_expr90278_ _hd9019390273_))
                      (if (gx#stx-null? _tl9019490275_)
                          (if (gx#core-bind-values? _hd-bind90268_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90268_)
                                (_K90180_
                                 _rest90181_
                                 (cons _hd90179_ _r90182_)))
                              (_E9018590248_))
                          (_E9018590248_)))))
                (_E9018590248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9018590248_))
                                          (_E9018590248_))))
                                  (_E9018590248_)))))
                      (_E9018490280_))))
                 (_wrap-internal90023_
                  (lambda (_rbody90025_)
                    (let _lp90027_ ((_rest90029_ _rbody90025_)
                                    (_decls90030_ '())
                                    (_bind90031_ '())
                                    (_body90032_ '()))
                      (let* ((_e9003390040_ _rest90029_)
                             (_E9003590089_
                              (lambda ()
                                (let* ((_body90084_
                                        (let* ((_body9004390053_ _body90032_)
                                               (_else9004690061_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90032_)
                                                   (gx#stx-source
                                                    _stx90017_)))))
                                          (let ((_K9005190081_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90017_)))
                                                (_K9004890067_
                                                 (lambda (_expr90065_)
                                                   _expr90065_)))
                                            (let ((_try-match9004590077_
                                                   (lambda ()
                                                     (if (##pair? _body9004390053_)
                                                         (let ((_tl9005090072_
                                                                (##cdr _body9004390053_))
                                                               (_hd9004990070_
                                                                (##car _body9004390053_)))
                                                           (if (##null? _tl9005090072_)
                                                               (let ((_expr90075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9004990070_))
                         (_K9004890067_ _expr90075_))
                       (_else9004690061_)))
                 (_else9004690061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9004390053_)
                                                  (_K9005190081_)
                                                  (_try-match9004590077_))))))
                                       (_body90086_
                                        (if (null? _bind90031_)
                                            _body90084_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90031_
                                                         (cons _body90084_
                                                               '())))
                                             (gx#stx-source _stx90017_)))))
                                  (if (null? _decls90030_)
                                      _body90086_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90030_
                                                   (cons _body90086_ '())))
                                       (gx#stx-source _stx90017_))))))
                             (_E9003490175_
                              (lambda ()
                                (if (gx#stx-pair? _e9003390040_)
                                    (let ((_e9003690093_
                                           (gx#syntax-e _e9003390040_)))
                                      (let ((_hd9003790096_
                                             (##car _e9003690093_))
                                            (_tl9003890098_
                                             (##cdr _e9003690093_)))
                                        (let* ((_hd90101_ _hd9003790096_)
                                               (_rest90103_ _tl9003890098_))
                                          (if '#t
                                              (let* ((_e9010490121_ _hd90101_)
                                                     (_E9011690125_
                                                      (lambda ()
                                                        (if (null? _bind90031_)
                                                            (_lp90027_
                                                             _rest90103_
                                                             _decls90030_
                                                             _bind90031_
                                                             (cons _hd90101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90032_))
                    (_lp90027_
                     _rest90103_
                     _decls90030_
                     (cons (cons '#f (cons _hd90101_ '())) _bind90031_)
                     _body90032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9010690139_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9010490121_)
                                                            (let ((_e9011790129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9010490121_)))
                      (let ((_hd9011890132_ (##car _e9011790129_))
                            (_tl9011990134_ (##cdr _e9011790129_)))
                        (if (and (gx#identifier? _hd9011890132_)
                                 (gx#core-identifier=?
                                  _hd9011890132_
                                  '%#declare))
                            (let ((_xdecls90137_ _tl9011990134_))
                              (if '#t
                                  (_lp90027_
                                   _rest90103_
                                   (gx#stx-foldr
                                    cons
                                    _decls90030_
                                    _xdecls90137_)
                                   _bind90031_
                                   _body90032_)
                                  (_E9011690125_)))
                            (_E9011690125_))))
                    (_E9011690125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9010590171_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9010490121_)
                                                            (let ((_e9010790143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9010490121_)))
                      (let ((_hd9010890146_ (##car _e9010790143_))
                            (_tl9010990148_ (##cdr _e9010790143_)))
                        (if (and (gx#identifier? _hd9010890146_)
                                 (gx#core-identifier=?
                                  _hd9010890146_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9010990148_)
                                (let ((_e9011090151_
                                       (gx#syntax-e _tl9010990148_)))
                                  (let ((_hd9011190154_ (##car _e9011090151_))
                                        (_tl9011290156_ (##cdr _e9011090151_)))
                                    (let ((_hd-bind90159_ _hd9011190154_))
                                      (if (gx#stx-pair? _tl9011290156_)
                                          (let ((_e9011390161_
                                                 (gx#syntax-e _tl9011290156_)))
                                            (let ((_hd9011490164_
                                                   (##car _e9011390161_))
                                                  (_tl9011590166_
                                                   (##cdr _e9011390161_)))
                                              (let ((_expr90169_
                                                     _hd9011490164_))
                                                (if (gx#stx-null?
                                                     _tl9011590166_)
                                                    (if '#t
                                                        (_lp90027_
                                                         _rest90103_
                                                         _decls90030_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90159_)
                             (cons (gx#core-expand-expression _expr90169_)
                                   '()))
                       _bind90031_)
                 _body90032_)
                (_E9010690139_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9010690139_)))))
                                          (_E9010690139_)))))
                                (_E9010690139_))
                            (_E9010690139_))))
                    (_E9010690139_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9010590171_))
                                              (_E9003590089_)))))
                                    (_E9003590089_)))))
                        (_E9003490175_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90018_)
            (gx#stx-source _stx90017_))
           _expand-special90020_))))
    (define gx#core-expand-declare%
      (lambda (_stx89955_)
        (let* ((_e8995689963_ _stx89955_)
               (_E8995889967_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8995689963_)))
               (_E8995790013_
                (lambda ()
                  (if (gx#stx-pair? _e8995689963_)
                      (let ((_e8995989971_ (gx#syntax-e _e8995689963_)))
                        (let ((_hd8996089974_ (##car _e8995989971_))
                              (_tl8996189976_ (##cdr _e8995989971_)))
                          (let ((_body89979_ _tl8996189976_))
                            (if (gx#stx-list? _body89979_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89981_)
                                     (let* ((_e8998289989_ _decl89981_)
                                            (_E8998489993_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8998289989_)))
                                            (_E8998390009_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8998289989_)
                                                   (let ((_e8998589997_
                                                          (gx#syntax-e
                                                           _e8998289989_)))
                                                     (let ((_hd8998690000_
                                                            (##car _e8998589997_))
                                                           (_tl8998790002_
                                                            (##cdr _e8998589997_)))
                                                       (let* ((_head90005_
                                                               _hd8998690000_)
                                                              (_args90007_
                                                               _tl8998790002_))
                                                         (if (gx#stx-list?
                                                              _args90007_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89981_)
                                                             (_E8998489993_)))))
                                                   (_E8998489993_)))))
                                       (_E8998390009_)))
                                   _body89979_))
                                 (gx#stx-source _stx89955_))
                                (_E8995889967_)))))
                      (_E8995889967_)))))
          (_E8995790013_))))
    (define gx#core-expand-extern%
      (lambda (_stx89859_)
        (let* ((_e8986089867_ _stx89859_)
               (_E8986289871_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8986089867_)))
               (_E8986189951_
                (lambda ()
                  (if (gx#stx-pair? _e8986089867_)
                      (let ((_e8986389875_ (gx#syntax-e _e8986089867_)))
                        (let ((_hd8986489878_ (##car _e8986389875_))
                              (_tl8986589880_ (##cdr _e8986389875_)))
                          (let ((_body89883_ _tl8986589880_))
                            (if '#t
                                (let _lp89885_ ((_rest89887_ _body89883_)
                                                (_r89888_ '()))
                                  (let* ((_e8988989903_ _rest89887_)
                                         (_E8990189907_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx89859_)))
                                         (_E8989189911_
                                          (lambda ()
                                            (if (gx#stx-null? _e8988989903_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r89888_))
                                                     (gx#stx-source
                                                      _stx89859_))
                                                    (_E8990189907_))
                                                (_E8990189907_))))
                                         (_E8989089947_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8988989903_)
                                                (let ((_e8989289915_
                                                       (gx#syntax-e
                                                        _e8988989903_)))
                                                  (let ((_hd8989389918_
                                                         (##car _e8989289915_))
                                                        (_tl8989489920_
                                                         (##cdr _e8989289915_)))
                                                    (if (gx#stx-pair?
                                                         _hd8989389918_)
                                                        (let ((_e8989589923_
                                                               (gx#syntax-e
                                                                _hd8989389918_)))
                                                          (let ((_hd8989689926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8989589923_))
                        (_tl8989789928_ (##cdr _e8989589923_)))
                    (let ((_id89931_ _hd8989689926_))
                      (if (gx#stx-pair? _tl8989789928_)
                          (let ((_e8989889933_ (gx#syntax-e _tl8989789928_)))
                            (let ((_hd8989989936_ (##car _e8989889933_))
                                  (_tl8990089938_ (##cdr _e8989889933_)))
                              (let ((_eid89941_ _hd8989989936_))
                                (if (gx#stx-null? _tl8990089938_)
                                    (let ((_rest89943_ _tl8989489920_))
                                      (if (and (gx#identifier? _id89931_)
                                               (gx#identifier? _eid89941_))
                                          (let ((_eid89945_
                                                 (gx#stx-e _eid89941_)))
                                            (gx#core-bind-extern!__0
                                             _id89931_
                                             _eid89945_)
                                            (_lp89885_
                                             _rest89943_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89931_)
                                                         (cons _eid89945_ '()))
                                                   _r89888_)))
                                          (_E8989189911_)))
                                    (_E8989189911_)))))
                          (_E8989189911_)))))
                (_E8989189911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8989189911_)))))
                                    (_E8989089947_)))
                                (_E8986289871_)))))
                      (_E8986289871_)))))
          (_E8986189951_))))
    (define gx#core-expand-define-values%
      (lambda (_stx89805_)
        (let* ((_e8980689819_ _stx89805_)
               (_E8980889823_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8980689819_)))
               (_E8980789855_
                (lambda ()
                  (if (gx#stx-pair? _e8980689819_)
                      (let ((_e8980989827_ (gx#syntax-e _e8980689819_)))
                        (let ((_hd8981089830_ (##car _e8980989827_))
                              (_tl8981189832_ (##cdr _e8980989827_)))
                          (if (gx#stx-pair? _tl8981189832_)
                              (let ((_e8981289835_
                                     (gx#syntax-e _tl8981189832_)))
                                (let ((_hd8981389838_ (##car _e8981289835_))
                                      (_tl8981489840_ (##cdr _e8981289835_)))
                                  (let ((_hd89843_ _hd8981389838_))
                                    (if (gx#stx-pair? _tl8981489840_)
                                        (let ((_e8981589845_
                                               (gx#syntax-e _tl8981489840_)))
                                          (let ((_hd8981689848_
                                                 (##car _e8981589845_))
                                                (_tl8981789850_
                                                 (##cdr _e8981589845_)))
                                            (let ((_expr89853_ _hd8981689848_))
                                              (if (gx#stx-null? _tl8981789850_)
                                                  (if (gx#core-bind-values?
                                                       _hd89843_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd89843_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd89843_)
                             (cons (gx#core-expand-expression _expr89853_)
                                   '())))
                 (gx#stx-source _stx89805_)))
              (_E8980889823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8980889823_)))))
                                        (_E8980889823_)))))
                              (_E8980889823_))))
                      (_E8980889823_)))))
          (_E8980789855_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx89749_)
        (let* ((_e8975089763_ _stx89749_)
               (_E8975289767_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8975089763_)))
               (_E8975189801_
                (lambda ()
                  (if (gx#stx-pair? _e8975089763_)
                      (let ((_e8975389771_ (gx#syntax-e _e8975089763_)))
                        (let ((_hd8975489774_ (##car _e8975389771_))
                              (_tl8975589776_ (##cdr _e8975389771_)))
                          (if (gx#stx-pair? _tl8975589776_)
                              (let ((_e8975689779_
                                     (gx#syntax-e _tl8975589776_)))
                                (let ((_hd8975789782_ (##car _e8975689779_))
                                      (_tl8975889784_ (##cdr _e8975689779_)))
                                  (let ((_id89787_ _hd8975789782_))
                                    (if (gx#stx-pair? _tl8975889784_)
                                        (let ((_e8975989789_
                                               (gx#syntax-e _tl8975889784_)))
                                          (let ((_hd8976089792_
                                                 (##car _e8975989789_))
                                                (_tl8976189794_
                                                 (##cdr _e8975989789_)))
                                            (let ((_binding-id89797_
                                                   _hd8976089792_))
                                              (if (gx#stx-null? _tl8976189794_)
                                                  (if (and (gx#identifier?
                                                            _id89787_)
                                                           (gx#identifier?
                                                            _binding-id89797_))
                                                      (let ((_eid89799_
                                                             (gx#stx-e
                                                              _binding-id89797_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id89787_
                                                         _eid89799_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89787_)
                             (cons _eid89799_ '())))))
              (_E8975289767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8975289767_)))))
                                        (_E8975289767_)))))
                              (_E8975289767_))))
                      (_E8975289767_)))))
          (_E8975189801_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx89692_)
        (let* ((_e8969389706_ _stx89692_)
               (_E8969589710_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8969389706_)))
               (_E8969489745_
                (lambda ()
                  (if (gx#stx-pair? _e8969389706_)
                      (let ((_e8969689714_ (gx#syntax-e _e8969389706_)))
                        (let ((_hd8969789717_ (##car _e8969689714_))
                              (_tl8969889719_ (##cdr _e8969689714_)))
                          (if (gx#stx-pair? _tl8969889719_)
                              (let ((_e8969989722_
                                     (gx#syntax-e _tl8969889719_)))
                                (let ((_hd8970089725_ (##car _e8969989722_))
                                      (_tl8970189727_ (##cdr _e8969989722_)))
                                  (let ((_id89730_ _hd8970089725_))
                                    (if (gx#stx-pair? _tl8970189727_)
                                        (let ((_e8970289732_
                                               (gx#syntax-e _tl8970189727_)))
                                          (let ((_hd8970389735_
                                                 (##car _e8970289732_))
                                                (_tl8970489737_
                                                 (##cdr _e8970289732_)))
                                            (let ((_expr89740_ _hd8970389735_))
                                              (if (gx#stx-null? _tl8970489737_)
                                                  (if (gx#identifier?
                                                       _id89730_)
                                                      (let ((_g90651_
                                                             (gx#core-expand-expression+1
                                                              _expr89740_)))
                                                        (begin
                                                          (let ((_g90652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g90651_)
                             (##vector-length _g90651_)
                             1)))
                    (if (not (##fx= _g90652_ 2))
                        (error "Context expects 2 values" _g90652_)))
                  (let ((_e-stx89742_ (##vector-ref _g90651_ 0))
                        (_e89743_ (##vector-ref _g90651_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id89730_ _e89743_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id89730_)
                                   (cons _e-stx89742_ '())))
                       (gx#stx-source _stx89692_))))))
              (_E8969589710_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8969589710_)))))
                                        (_E8969589710_)))))
                              (_E8969589710_))))
                      (_E8969589710_)))))
          (_E8969489745_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx89636_)
        (let* ((_e8963789650_ _stx89636_)
               (_E8963989654_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8963789650_)))
               (_E8963889688_
                (lambda ()
                  (if (gx#stx-pair? _e8963789650_)
                      (let ((_e8964089658_ (gx#syntax-e _e8963789650_)))
                        (let ((_hd8964189661_ (##car _e8964089658_))
                              (_tl8964289663_ (##cdr _e8964089658_)))
                          (if (gx#stx-pair? _tl8964289663_)
                              (let ((_e8964389666_
                                     (gx#syntax-e _tl8964289663_)))
                                (let ((_hd8964489669_ (##car _e8964389666_))
                                      (_tl8964589671_ (##cdr _e8964389666_)))
                                  (let ((_id89674_ _hd8964489669_))
                                    (if (gx#stx-pair? _tl8964589671_)
                                        (let ((_e8964689676_
                                               (gx#syntax-e _tl8964589671_)))
                                          (let ((_hd8964789679_
                                                 (##car _e8964689676_))
                                                (_tl8964889681_
                                                 (##cdr _e8964689676_)))
                                            (let ((_alias-id89684_
                                                   _hd8964789679_))
                                              (if (gx#stx-null? _tl8964889681_)
                                                  (if (and (gx#identifier?
                                                            _id89674_)
                                                           (gx#identifier?
                                                            _alias-id89684_))
                                                      (let ((_alias-id89686_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id89684_)))
                                                        (gx#core-bind-alias!__0
                                                         _id89674_
                                                         _alias-id89686_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89674_)
                             (cons _alias-id89686_ '())))))
              (_E8963989654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8963989654_)))))
                                        (_E8963989654_)))))
                              (_E8963989654_))))
                      (_E8963989654_)))))
          (_E8963889688_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89579_ _wrap?89580_)
        (let* ((_e8958189591_ _stx89579_)
               (_E8958389595_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8958189591_)))
               (_E8958289622_
                (lambda ()
                  (if (gx#stx-pair? _e8958189591_)
                      (let ((_e8958489599_ (gx#syntax-e _e8958189591_)))
                        (let ((_hd8958589602_ (##car _e8958489599_))
                              (_tl8958689604_ (##cdr _e8958489599_)))
                          (if (gx#stx-pair? _tl8958689604_)
                              (let ((_e8958789607_
                                     (gx#syntax-e _tl8958689604_)))
                                (let ((_hd8958889610_ (##car _e8958789607_))
                                      (_tl8958989612_ (##cdr _e8958789607_)))
                                  (let* ((_hd89615_ _hd8958889610_)
                                         (_body89617_ _tl8958989612_))
                                    (if (gx#core-bind-values? _hd89615_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89615_)
                                           (let ((_body89620_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89615_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89579_
                                                               _body89617_)
                                                              '()))))
                                             (if _wrap?89580_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89620_)
                                                  (gx#stx-source _stx89579_))
                                                 _body89620_)))
                                         gx#current-expander-context
                                         (let ((__obj90644
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90644)
                                           __obj90644))
                                        (_E8958389595_)))))
                              (_E8958389595_))))
                      (_E8958389595_)))))
          (_E8958289622_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx89629_)
        (let ((_wrap?89631_ '#t))
          (gx#core-expand-lambda%__% _stx89629_ _wrap?89631_))))
    (define gx#core-expand-lambda%
      (lambda _g90654_
        (let ((_g90653_ (##length _g90654_)))
          (cond ((##fx= _g90653_ 1)
                 (apply (lambda (_stx89629_)
                          (gx#core-expand-lambda%__0 _stx89629_))
                        _g90654_))
                ((##fx= _g90653_ 2)
                 (apply (lambda (_stx89633_ _wrap?89634_)
                          (gx#core-expand-lambda%__% _stx89633_ _wrap?89634_))
                        _g90654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g90654_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89543_)
        (let* ((_e8954489551_ _stx89543_)
               (_E8954689555_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8954489551_)))
               (_E8954589574_
                (lambda ()
                  (if (gx#stx-pair? _e8954489551_)
                      (let ((_e8954789559_ (gx#syntax-e _e8954489551_)))
                        (let ((_hd8954889562_ (##car _e8954789559_))
                              (_tl8954989564_ (##cdr _e8954789559_)))
                          (let ((_clauses89567_ _tl8954989564_))
                            (if (gx#stx-list? _clauses89567_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89569_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89569_)
                                       (let ((_$e89571_
                                              (gx#stx-source _clause89569_)))
                                         (if _$e89571_
                                             _$e89571_
                                             (gx#stx-source _stx89543_))))
                                      '#f))
                                   _clauses89567_))
                                 (gx#stx-source _stx89543_))
                                (_E8954689555_)))))
                      (_E8954689555_)))))
          (_E8954589574_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89497_)
        (let* ((_e8949889508_ _stx89497_)
               (_E8950089512_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8949889508_)))
               (_E8949989539_
                (lambda ()
                  (if (gx#stx-pair? _e8949889508_)
                      (let ((_e8950189516_ (gx#syntax-e _e8949889508_)))
                        (let ((_hd8950289519_ (##car _e8950189516_))
                              (_tl8950389521_ (##cdr _e8950189516_)))
                          (if (gx#stx-pair? _tl8950389521_)
                              (let ((_e8950489524_
                                     (gx#syntax-e _tl8950389521_)))
                                (let ((_hd8950589527_ (##car _e8950489524_))
                                      (_tl8950689529_ (##cdr _e8950489524_)))
                                  (let* ((_hd89532_ _hd8950589527_)
                                         (_body89534_ _tl8950689529_))
                                    (if (gx#core-expand-let-bind? _hd89532_)
                                        (let ((_expressions89536_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89532_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89532_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89532_
                                                           _expressions89536_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89497_
                         _body89534_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89497_)))
                                           gx#current-expander-context
                                           (let ((__obj90645
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90645)
                                             __obj90645)))
                                        (_E8950089512_)))))
                              (_E8950089512_))))
                      (_E8950089512_)))))
          (_E8949989539_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89442_ _form89443_)
        (let* ((_e8944489454_ _stx89442_)
               (_E8944689458_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8944489454_)))
               (_E8944589483_
                (lambda ()
                  (if (gx#stx-pair? _e8944489454_)
                      (let ((_e8944789462_ (gx#syntax-e _e8944489454_)))
                        (let ((_hd8944889465_ (##car _e8944789462_))
                              (_tl8944989467_ (##cdr _e8944789462_)))
                          (if (gx#stx-pair? _tl8944989467_)
                              (let ((_e8945089470_
                                     (gx#syntax-e _tl8944989467_)))
                                (let ((_hd8945189473_ (##car _e8945089470_))
                                      (_tl8945289475_ (##cdr _e8945089470_)))
                                  (let* ((_hd89478_ _hd8945189473_)
                                         (_body89480_ _tl8945289475_))
                                    (if (gx#core-expand-let-bind? _hd89478_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89478_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89443_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89478_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89478_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89442_
                                                               _body89480_)
                                                              '())))
                                            (gx#stx-source _stx89442_)))
                                         gx#current-expander-context
                                         (let ((__obj90646
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90646)
                                           __obj90646))
                                        (_E8944689458_)))))
                              (_E8944689458_))))
                      (_E8944689458_)))))
          (_E8944589483_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89490_)
        (let ((_form89492_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89490_ _form89492_))))
    (define gx#core-expand-letrec-values%
      (lambda _g90656_
        (let ((_g90655_ (##length _g90656_)))
          (cond ((##fx= _g90655_ 1)
                 (apply (lambda (_stx89490_)
                          (gx#core-expand-letrec-values%__0 _stx89490_))
                        _g90656_))
                ((##fx= _g90655_ 2)
                 (apply (lambda (_stx89494_ _form89495_)
                          (gx#core-expand-letrec-values%__%
                           _stx89494_
                           _form89495_))
                        _g90656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g90656_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89439_)
        (gx#core-expand-letrec-values%__% _stx89439_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89396_)
        (if (gx#stx-list? _stx89396_)
            (gx#stx-andmap
             (lambda (_bind89398_)
               (let* ((_e8939989409_ _bind89398_)
                      (_E8940189413_ (lambda () '#f))
                      (_E8940089435_
                       (lambda ()
                         (if (gx#stx-pair? _e8939989409_)
                             (let ((_e8940289417_ (gx#syntax-e _e8939989409_)))
                               (let ((_hd8940389420_ (##car _e8940289417_))
                                     (_tl8940489422_ (##cdr _e8940289417_)))
                                 (let ((_hd89425_ _hd8940389420_))
                                   (if (gx#stx-pair? _tl8940489422_)
                                       (let ((_e8940589427_
                                              (gx#syntax-e _tl8940489422_)))
                                         (let ((_hd8940689430_
                                                (##car _e8940589427_))
                                               (_tl8940789432_
                                                (##cdr _e8940589427_)))
                                           (if (gx#stx-null? _tl8940789432_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89425_)
                                                   (_E8940189413_))
                                               (_E8940189413_))))
                                       (_E8940189413_)))))
                             (_E8940189413_)))))
                 (_E8940089435_)))
             _stx89396_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89355_)
        (let* ((_e8935689366_ _bind89355_)
               (_E8935889370_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8935689366_)))
               (_E8935789392_
                (lambda ()
                  (if (gx#stx-pair? _e8935689366_)
                      (let ((_e8935989374_ (gx#syntax-e _e8935689366_)))
                        (let ((_hd8936089377_ (##car _e8935989374_))
                              (_tl8936189379_ (##cdr _e8935989374_)))
                          (if (gx#stx-pair? _tl8936189379_)
                              (let ((_e8936289382_
                                     (gx#syntax-e _tl8936189379_)))
                                (let ((_hd8936389385_ (##car _e8936289382_))
                                      (_tl8936489387_ (##cdr _e8936289382_)))
                                  (let ((_expr89390_ _hd8936389385_))
                                    (if (gx#stx-null? _tl8936489387_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89390_)
                                            (_E8935889370_))
                                        (_E8935889370_)))))
                              (_E8935889370_))))
                      (_E8935889370_)))))
          (_E8935789392_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89314_)
        (let* ((_e8931589325_ _bind89314_)
               (_E8931789329_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8931589325_)))
               (_E8931689351_
                (lambda ()
                  (if (gx#stx-pair? _e8931589325_)
                      (let ((_e8931889333_ (gx#syntax-e _e8931589325_)))
                        (let ((_hd8931989336_ (##car _e8931889333_))
                              (_tl8932089338_ (##cdr _e8931889333_)))
                          (let ((_hd89341_ _hd8931989336_))
                            (if (gx#stx-pair? _tl8932089338_)
                                (let ((_e8932189343_
                                       (gx#syntax-e _tl8932089338_)))
                                  (let ((_hd8932289346_ (##car _e8932189343_))
                                        (_tl8932389348_ (##cdr _e8932189343_)))
                                    (if (gx#stx-null? _tl8932389348_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89341_)
                                            (_E8931789329_))
                                        (_E8931789329_))))
                                (_E8931789329_)))))
                      (_E8931789329_)))))
          (_E8931689351_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89272_ _expr89273_)
        (let* ((_e8927489284_ _bind89272_)
               (_E8927689288_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8927489284_)))
               (_E8927589310_
                (lambda ()
                  (if (gx#stx-pair? _e8927489284_)
                      (let ((_e8927789292_ (gx#syntax-e _e8927489284_)))
                        (let ((_hd8927889295_ (##car _e8927789292_))
                              (_tl8927989297_ (##cdr _e8927789292_)))
                          (let ((_hd89300_ _hd8927889295_))
                            (if (gx#stx-pair? _tl8927989297_)
                                (let ((_e8928089302_
                                       (gx#syntax-e _tl8927989297_)))
                                  (let ((_hd8928189305_ (##car _e8928089302_))
                                        (_tl8928289307_ (##cdr _e8928089302_)))
                                    (if (gx#stx-null? _tl8928289307_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89300_)
                                                  (cons _expr89273_ '()))
                                            (_E8927689288_))
                                        (_E8927689288_))))
                                (_E8927689288_)))))
                      (_E8927689288_)))))
          (_E8927589310_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89226_)
        (let* ((_e8922789237_ _stx89226_)
               (_E8922989241_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8922789237_)))
               (_E8922889268_
                (lambda ()
                  (if (gx#stx-pair? _e8922789237_)
                      (let ((_e8923089245_ (gx#syntax-e _e8922789237_)))
                        (let ((_hd8923189248_ (##car _e8923089245_))
                              (_tl8923289250_ (##cdr _e8923089245_)))
                          (if (gx#stx-pair? _tl8923289250_)
                              (let ((_e8923389253_
                                     (gx#syntax-e _tl8923289250_)))
                                (let ((_hd8923489256_ (##car _e8923389253_))
                                      (_tl8923589258_ (##cdr _e8923389253_)))
                                  (let* ((_hd89261_ _hd8923489256_)
                                         (_body89263_ _tl8923589258_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89261_)
                                        (let ((_expanders89265_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89261_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89261_
                                              _expanders89265_)
                                             (gx#core-expand-local-block
                                              _stx89226_
                                              _body89263_))
                                           gx#current-expander-context
                                           (let ((__obj90647
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90647)
                                             __obj90647)))
                                        (_E8922989241_)))))
                              (_E8922989241_))))
                      (_E8922989241_)))))
          (_E8922889268_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89175_)
        (let* ((_e8917689186_ _stx89175_)
               (_E8917889190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8917689186_)))
               (_E8917789222_
                (lambda ()
                  (if (gx#stx-pair? _e8917689186_)
                      (let ((_e8917989194_ (gx#syntax-e _e8917689186_)))
                        (let ((_hd8918089197_ (##car _e8917989194_))
                              (_tl8918189199_ (##cdr _e8917989194_)))
                          (if (gx#stx-pair? _tl8918189199_)
                              (let ((_e8918289202_
                                     (gx#syntax-e _tl8918189199_)))
                                (let ((_hd8918389205_ (##car _e8918289202_))
                                      (_tl8918489207_ (##cdr _e8918289202_)))
                                  (let* ((_hd89210_ _hd8918389205_)
                                         (_body89212_ _tl8918489207_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89210_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89210_
                                            (make-list
                                             (gx#stx-length _hd89210_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8921489217_
                                                     _g8921589219_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8921489217_
                                               _g8921589219_
                                               '#t))
                                            _hd89210_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89210_))
                                           (gx#core-expand-local-block
                                            _stx89175_
                                            _body89212_))
                                         gx#current-expander-context
                                         (let ((__obj90648
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90648)
                                           __obj90648))
                                        (_E8917889190_)))))
                              (_E8917889190_))))
                      (_E8917889190_)))))
          (_E8917789222_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89132_)
        (if (gx#stx-list? _stx89132_)
            (gx#stx-andmap
             (lambda (_bind89134_)
               (let* ((_e8913589145_ _bind89134_)
                      (_E8913789149_ (lambda () '#f))
                      (_E8913689171_
                       (lambda ()
                         (if (gx#stx-pair? _e8913589145_)
                             (let ((_e8913889153_ (gx#syntax-e _e8913589145_)))
                               (let ((_hd8913989156_ (##car _e8913889153_))
                                     (_tl8914089158_ (##cdr _e8913889153_)))
                                 (let ((_hd89161_ _hd8913989156_))
                                   (if (gx#stx-pair? _tl8914089158_)
                                       (let ((_e8914189163_
                                              (gx#syntax-e _tl8914089158_)))
                                         (let ((_hd8914289166_
                                                (##car _e8914189163_))
                                               (_tl8914389168_
                                                (##cdr _e8914189163_)))
                                           (if (gx#stx-null? _tl8914389168_)
                                               (if '#t
                                                   (gx#identifier? _hd89161_)
                                                   (_E8913789149_))
                                               (_E8913789149_))))
                                       (_E8913789149_)))))
                             (_E8913789149_)))))
                 (_E8913689171_)))
             _stx89132_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89089_)
        (let* ((_e8909089100_ _bind89089_)
               (_E8909289104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8909089100_)))
               (_E8909189128_
                (lambda ()
                  (if (gx#stx-pair? _e8909089100_)
                      (let ((_e8909389108_ (gx#syntax-e _e8909089100_)))
                        (let ((_hd8909489111_ (##car _e8909389108_))
                              (_tl8909589113_ (##cdr _e8909389108_)))
                          (if (gx#stx-pair? _tl8909589113_)
                              (let ((_e8909689116_
                                     (gx#syntax-e _tl8909589113_)))
                                (let ((_hd8909789119_ (##car _e8909689116_))
                                      (_tl8909889121_ (##cdr _e8909689116_)))
                                  (let ((_expr89124_ _hd8909789119_))
                                    (if (gx#stx-null? _tl8909889121_)
                                        (if '#t
                                            (let ((_g90657_
                                                   (gx#core-expand-expression+1
                                                    _expr89124_)))
                                              (begin
                                                (let ((_g90658_
                                                       (if (##values? _g90657_)
                                                           (##vector-length
                                                            _g90657_)
                                                           1)))
                                                  (if (not (##fx= _g90658_ 2))
                                                      (error "Context expects 2 values"
                                                             _g90658_)))
                                                (let ((_e89126_
                                                       (##vector-ref
                                                        _g90657_
                                                        1)))
                                                  _e89126_)))
                                            (_E8909289104_))
                                        (_E8909289104_)))))
                              (_E8909289104_))))
                      (_E8909289104_)))))
          (_E8909189128_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89034_ _e89035_ _rebind?89036_)
        (let* ((_e8903789047_ _bind89034_)
               (_E8903989051_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8903789047_)))
               (_E8903889073_
                (lambda ()
                  (if (gx#stx-pair? _e8903789047_)
                      (let ((_e8904089055_ (gx#syntax-e _e8903789047_)))
                        (let ((_hd8904189058_ (##car _e8904089055_))
                              (_tl8904289060_ (##cdr _e8904089055_)))
                          (let ((_id89063_ _hd8904189058_))
                            (if (gx#stx-pair? _tl8904289060_)
                                (let ((_e8904389065_
                                       (gx#syntax-e _tl8904289060_)))
                                  (let ((_hd8904489068_ (##car _e8904389065_))
                                        (_tl8904589070_ (##cdr _e8904389065_)))
                                    (if (gx#stx-null? _tl8904589070_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89063_
                                             _e89035_
                                             _rebind?89036_)
                                            (_E8903989051_))
                                        (_E8903989051_))))
                                (_E8903989051_)))))
                      (_E8903989051_)))))
          (_E8903889073_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89080_ _e89081_)
        (let ((_rebind?89083_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89080_
           _e89081_
           _rebind?89083_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g90660_
        (let ((_g90659_ (##length _g90660_)))
          (cond ((##fx= _g90659_ 2)
                 (apply (lambda (_bind89080_ _e89081_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89080_
                           _e89081_))
                        _g90660_))
                ((##fx= _g90659_ 3)
                 (apply (lambda (_bind89085_ _e89086_ _rebind?89087_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89085_
                           _e89086_
                           _rebind?89087_))
                        _g90660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g90660_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88992_)
        (let* ((_e8899389003_ _stx88992_)
               (_E8899589007_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8899389003_)))
               (_E8899489029_
                (lambda ()
                  (if (gx#stx-pair? _e8899389003_)
                      (let ((_e8899689011_ (gx#syntax-e _e8899389003_)))
                        (let ((_hd8899789014_ (##car _e8899689011_))
                              (_tl8899889016_ (##cdr _e8899689011_)))
                          (if (gx#stx-pair? _tl8899889016_)
                              (let ((_e8899989019_
                                     (gx#syntax-e _tl8899889016_)))
                                (let ((_hd8900089022_ (##car _e8899989019_))
                                      (_tl8900189024_ (##cdr _e8899989019_)))
                                  (let ((_expr89027_ _hd8900089022_))
                                    (if (gx#stx-null? _tl8900189024_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89027_)
                                            (_E8899589007_))
                                        (_E8899589007_)))))
                              (_E8899589007_))))
                      (_E8899589007_)))))
          (_E8899489029_))))
    (define gx#core-expand-quote%
      (lambda (_stx88951_)
        (let* ((_e8895288962_ _stx88951_)
               (_E8895488966_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8895288962_)))
               (_E8895388988_
                (lambda ()
                  (if (gx#stx-pair? _e8895288962_)
                      (let ((_e8895588970_ (gx#syntax-e _e8895288962_)))
                        (let ((_hd8895688973_ (##car _e8895588970_))
                              (_tl8895788975_ (##cdr _e8895588970_)))
                          (if (gx#stx-pair? _tl8895788975_)
                              (let ((_e8895888978_
                                     (gx#syntax-e _tl8895788975_)))
                                (let ((_hd8895988981_ (##car _e8895888978_))
                                      (_tl8896088983_ (##cdr _e8895888978_)))
                                  (let ((_e88986_ _hd8895988981_))
                                    (if (gx#stx-null? _tl8896088983_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88986_)
                                                         '()))
                                             (gx#stx-source _stx88951_))
                                            (_E8895488966_))
                                        (_E8895488966_)))))
                              (_E8895488966_))))
                      (_E8895488966_)))))
          (_E8895388988_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx88910_)
        (let* ((_e8891188921_ _stx88910_)
               (_E8891388925_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8891188921_)))
               (_E8891288947_
                (lambda ()
                  (if (gx#stx-pair? _e8891188921_)
                      (let ((_e8891488929_ (gx#syntax-e _e8891188921_)))
                        (let ((_hd8891588932_ (##car _e8891488929_))
                              (_tl8891688934_ (##cdr _e8891488929_)))
                          (if (gx#stx-pair? _tl8891688934_)
                              (let ((_e8891788937_
                                     (gx#syntax-e _tl8891688934_)))
                                (let ((_hd8891888940_ (##car _e8891788937_))
                                      (_tl8891988942_ (##cdr _e8891788937_)))
                                  (let ((_e88945_ _hd8891888940_))
                                    (if (gx#stx-null? _tl8891988942_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88945_)
                                                         '()))
                                             (gx#stx-source _stx88910_))
                                            (_E8891388925_))
                                        (_E8891388925_)))))
                              (_E8891388925_))))
                      (_E8891388925_)))))
          (_E8891288947_))))
    (define gx#core-expand-call%
      (lambda (_stx88867_)
        (let* ((_e8886888878_ _stx88867_)
               (_E8887088882_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8886888878_)))
               (_E8886988906_
                (lambda ()
                  (if (gx#stx-pair? _e8886888878_)
                      (let ((_e8887188886_ (gx#syntax-e _e8886888878_)))
                        (let ((_hd8887288889_ (##car _e8887188886_))
                              (_tl8887388891_ (##cdr _e8887188886_)))
                          (if (gx#stx-pair? _tl8887388891_)
                              (let ((_e8887488894_
                                     (gx#syntax-e _tl8887388891_)))
                                (let ((_hd8887588897_ (##car _e8887488894_))
                                      (_tl8887688899_ (##cdr _e8887488894_)))
                                  (let* ((_rator88902_ _hd8887588897_)
                                         (_args88904_ _tl8887688899_))
                                    (if (gx#stx-list? _args88904_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator88902_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args88904_))
                                         (gx#stx-source _stx88867_))
                                        (_E8887088882_)))))
                              (_E8887088882_))))
                      (_E8887088882_)))))
          (_E8886988906_))))
    (define gx#core-expand-if%
      (lambda (_stx88800_)
        (let* ((_e8880188817_ _stx88800_)
               (_E8880388821_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8880188817_)))
               (_E8880288863_
                (lambda ()
                  (if (gx#stx-pair? _e8880188817_)
                      (let ((_e8880488825_ (gx#syntax-e _e8880188817_)))
                        (let ((_hd8880588828_ (##car _e8880488825_))
                              (_tl8880688830_ (##cdr _e8880488825_)))
                          (if (gx#stx-pair? _tl8880688830_)
                              (let ((_e8880788833_
                                     (gx#syntax-e _tl8880688830_)))
                                (let ((_hd8880888836_ (##car _e8880788833_))
                                      (_tl8880988838_ (##cdr _e8880788833_)))
                                  (let ((_test88841_ _hd8880888836_))
                                    (if (gx#stx-pair? _tl8880988838_)
                                        (let ((_e8881088843_
                                               (gx#syntax-e _tl8880988838_)))
                                          (let ((_hd8881188846_
                                                 (##car _e8881088843_))
                                                (_tl8881288848_
                                                 (##cdr _e8881088843_)))
                                            (let ((_K88851_ _hd8881188846_))
                                              (if (gx#stx-pair? _tl8881288848_)
                                                  (let ((_e8881388853_
                                                         (gx#syntax-e
                                                          _tl8881288848_)))
                                                    (let ((_hd8881488856_
                                                           (##car _e8881388853_))
                                                          (_tl8881588858_
                                                           (##cdr _e8881388853_)))
                                                      (let ((_E88861_
                                                             _hd8881488856_))
                                                        (if (gx#stx-null?
                                                             _tl8881588858_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test88841_)
                                     (cons (gx#core-expand-expression _K88851_)
                                           (cons (gx#core-expand-expression
                                                  _E88861_)
                                                 '()))))
                         (gx#stx-source _stx88800_))
                        (_E8880388821_))
                    (_E8880388821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8880388821_)))))
                                        (_E8880388821_)))))
                              (_E8880388821_))))
                      (_E8880388821_)))))
          (_E8880288863_))))
    (define gx#core-expand-ref%
      (lambda (_stx88759_)
        (let* ((_e8876088770_ _stx88759_)
               (_E8876288774_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876088770_)))
               (_E8876188796_
                (lambda ()
                  (if (gx#stx-pair? _e8876088770_)
                      (let ((_e8876388778_ (gx#syntax-e _e8876088770_)))
                        (let ((_hd8876488781_ (##car _e8876388778_))
                              (_tl8876588783_ (##cdr _e8876388778_)))
                          (if (gx#stx-pair? _tl8876588783_)
                              (let ((_e8876688786_
                                     (gx#syntax-e _tl8876588783_)))
                                (let ((_hd8876788789_ (##car _e8876688786_))
                                      (_tl8876888791_ (##cdr _e8876688786_)))
                                  (let ((_id88794_ _hd8876788789_))
                                    (if (gx#stx-null? _tl8876888791_)
                                        (if (gx#identifier? _id88794_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id88794_
                                                          _stx88759_)
                                                         '()))
                                             (gx#stx-source _stx88759_))
                                            (_E8876288774_))
                                        (_E8876288774_)))))
                              (_E8876288774_))))
                      (_E8876288774_)))))
          (_E8876188796_))))
    (define gx#core-expand-setq%
      (lambda (_stx88705_)
        (let* ((_e8870688719_ _stx88705_)
               (_E8870888723_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8870688719_)))
               (_E8870788755_
                (lambda ()
                  (if (gx#stx-pair? _e8870688719_)
                      (let ((_e8870988727_ (gx#syntax-e _e8870688719_)))
                        (let ((_hd8871088730_ (##car _e8870988727_))
                              (_tl8871188732_ (##cdr _e8870988727_)))
                          (if (gx#stx-pair? _tl8871188732_)
                              (let ((_e8871288735_
                                     (gx#syntax-e _tl8871188732_)))
                                (let ((_hd8871388738_ (##car _e8871288735_))
                                      (_tl8871488740_ (##cdr _e8871288735_)))
                                  (let ((_id88743_ _hd8871388738_))
                                    (if (gx#stx-pair? _tl8871488740_)
                                        (let ((_e8871588745_
                                               (gx#syntax-e _tl8871488740_)))
                                          (let ((_hd8871688748_
                                                 (##car _e8871588745_))
                                                (_tl8871788750_
                                                 (##cdr _e8871588745_)))
                                            (let ((_expr88753_ _hd8871688748_))
                                              (if (gx#stx-null? _tl8871788750_)
                                                  (if (gx#identifier?
                                                       _id88743_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id88743_
                            _stx88705_)
                           (cons (gx#core-expand-expression _expr88753_) '())))
               (gx#stx-source _stx88705_))
              (_E8870888723_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8870888723_)))))
                                        (_E8870888723_)))))
                              (_E8870888723_))))
                      (_E8870888723_)))))
          (_E8870788755_))))
    (define gx#macro-expand-extern
      (lambda (_stx88553_)
        (letrec ((_generate88555_
                  (lambda (_body88585_)
                    (let _lp88587_ ((_rest88589_ _body88585_)
                                    (_ns88590_ (gx#core-context-namespace__0))
                                    (_r88591_ '()))
                      (let* ((_e8859288607_ _rest88589_)
                             (_E8860588611_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8859288607_)))
                             (_E8860188615_
                              (lambda ()
                                (if (gx#stx-null? _e8859288607_)
                                    (if '#t (reverse _r88591_) (_E8860588611_))
                                    (_E8860588611_))))
                             (_E8859488672_
                              (lambda ()
                                (if (gx#stx-pair? _e8859288607_)
                                    (let ((_e8860288619_
                                           (gx#syntax-e _e8859288607_)))
                                      (let ((_hd8860388622_
                                             (##car _e8860288619_))
                                            (_tl8860488624_
                                             (##cdr _e8860288619_)))
                                        (let* ((_hd88627_ _hd8860388622_)
                                               (_rest88629_ _tl8860488624_))
                                          (if '#t
                                              (if (gx#identifier? _hd88627_)
                                                  (_lp88587_
                                                   _rest88629_
                                                   _ns88590_
                                                   (cons (cons _hd88627_
                                                               (cons (if _ns88590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd88627_
                                  _ns88590_
                                  '"#"
                                  _hd88627_)
                                 _hd88627_)
                             '()))
                 _r88591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8863088640_
                                                          _hd88627_)
                                                         (_E8863288644_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8863088640_)))
                                                         (_E8863188668_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8863088640_)
                        (let ((_e8863388648_ (gx#syntax-e _e8863088640_)))
                          (let ((_hd8863488651_ (##car _e8863388648_))
                                (_tl8863588653_ (##cdr _e8863388648_)))
                            (let ((_id88656_ _hd8863488651_))
                              (if (gx#stx-pair? _tl8863588653_)
                                  (let ((_e8863688658_
                                         (gx#syntax-e _tl8863588653_)))
                                    (let ((_hd8863788661_
                                           (##car _e8863688658_))
                                          (_tl8863888663_
                                           (##cdr _e8863688658_)))
                                      (let ((_eid88666_ _hd8863788661_))
                                        (if (gx#stx-null? _tl8863888663_)
                                            (if (and (gx#identifier? _id88656_)
                                                     (gx#identifier?
                                                      _eid88666_))
                                                (_lp88587_
                                                 _rest88629_
                                                 _ns88590_
                                                 (cons (cons _id88656_
                                                             (cons _eid88666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8863288644_))
                                            (_E8863288644_)))))
                                  (_E8863288644_)))))
                        (_E8863288644_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8863188668_)))
                                              (_E8860188615_)))))
                                    (_E8860188615_))))
                             (_E8859388701_
                              (lambda ()
                                (if (gx#stx-pair? _e8859288607_)
                                    (let ((_e8859588676_
                                           (gx#syntax-e _e8859288607_)))
                                      (let ((_hd8859688679_
                                             (##car _e8859588676_))
                                            (_tl8859788681_
                                             (##cdr _e8859588676_)))
                                        (if (eq? (gx#stx-e _hd8859688679_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8859788681_)
                                                (let ((_e8859888684_
                                                       (gx#syntax-e
                                                        _tl8859788681_)))
                                                  (let ((_hd8859988687_
                                                         (##car _e8859888684_))
                                                        (_tl8860088689_
                                                         (##cdr _e8859888684_)))
                                                    (let* ((_ns88692_
                                                            _hd8859988687_)
                                                           (_rest88694_
                                                            _tl8860088689_))
                                                      (if '#t
                                                          (let ((_ns88699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns88692_)
                             (symbol->string (gx#stx-e _ns88692_))
                             (if (or (gx#stx-string? _ns88692_)
                                     (gx#stx-false? _ns88692_))
                                 (gx#stx-e _ns88692_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88553_
                                  _ns88692_)))))
                    (_lp88587_ _rest88694_ _ns88699_ _r88591_))
                  (_E8859488672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8859488672_))
                                            (_E8859488672_))))
                                    (_E8859488672_)))))
                        (_E8859388701_))))))
          (let* ((_e8855688563_ _stx88553_)
                 (_E8855888567_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8855688563_)))
                 (_E8855788581_
                  (lambda ()
                    (if (gx#stx-pair? _e8855688563_)
                        (let ((_e8855988571_ (gx#syntax-e _e8855688563_)))
                          (let ((_hd8856088574_ (##car _e8855988571_))
                                (_tl8856188576_ (##cdr _e8855988571_)))
                            (let ((_body88579_ _tl8856188576_))
                              (if (gx#stx-list? _body88579_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88555_ _body88579_))
                                  (_E8855888567_)))))
                        (_E8855888567_)))))
            (_E8855788581_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88499_)
        (let* ((_e8850088513_ _stx88499_)
               (_E8850288517_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8850088513_)))
               (_E8850188549_
                (lambda ()
                  (if (gx#stx-pair? _e8850088513_)
                      (let ((_e8850388521_ (gx#syntax-e _e8850088513_)))
                        (let ((_hd8850488524_ (##car _e8850388521_))
                              (_tl8850588526_ (##cdr _e8850388521_)))
                          (if (gx#stx-pair? _tl8850588526_)
                              (let ((_e8850688529_
                                     (gx#syntax-e _tl8850588526_)))
                                (let ((_hd8850788532_ (##car _e8850688529_))
                                      (_tl8850888534_ (##cdr _e8850688529_)))
                                  (let ((_hd88537_ _hd8850788532_))
                                    (if (gx#stx-pair? _tl8850888534_)
                                        (let ((_e8850988539_
                                               (gx#syntax-e _tl8850888534_)))
                                          (let ((_hd8851088542_
                                                 (##car _e8850988539_))
                                                (_tl8851188544_
                                                 (##cdr _e8850988539_)))
                                            (let ((_expr88547_ _hd8851088542_))
                                              (if (gx#stx-null? _tl8851188544_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88537_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88537_)
                          (cons _expr88547_ '())))
              (_E8850288517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8850288517_)))))
                                        (_E8850288517_)))))
                              (_E8850288517_))))
                      (_E8850288517_)))))
          (_E8850188549_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88445_)
        (let* ((_e8844688459_ _stx88445_)
               (_E8844888463_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8844688459_)))
               (_E8844788495_
                (lambda ()
                  (if (gx#stx-pair? _e8844688459_)
                      (let ((_e8844988467_ (gx#syntax-e _e8844688459_)))
                        (let ((_hd8845088470_ (##car _e8844988467_))
                              (_tl8845188472_ (##cdr _e8844988467_)))
                          (if (gx#stx-pair? _tl8845188472_)
                              (let ((_e8845288475_
                                     (gx#syntax-e _tl8845188472_)))
                                (let ((_hd8845388478_ (##car _e8845288475_))
                                      (_tl8845488480_ (##cdr _e8845288475_)))
                                  (let ((_hd88483_ _hd8845388478_))
                                    (if (gx#stx-pair? _tl8845488480_)
                                        (let ((_e8845588485_
                                               (gx#syntax-e _tl8845488480_)))
                                          (let ((_hd8845688488_
                                                 (##car _e8845588485_))
                                                (_tl8845788490_
                                                 (##cdr _e8845588485_)))
                                            (let ((_expr88493_ _hd8845688488_))
                                              (if (gx#stx-null? _tl8845788490_)
                                                  (if (gx#identifier?
                                                       _hd88483_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88493_ '())))
              (_E8844888463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8844888463_)))))
                                        (_E8844888463_)))))
                              (_E8844888463_))))
                      (_E8844888463_)))))
          (_E8844788495_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88391_)
        (let* ((_e8839288405_ _stx88391_)
               (_E8839488409_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8839288405_)))
               (_E8839388441_
                (lambda ()
                  (if (gx#stx-pair? _e8839288405_)
                      (let ((_e8839588413_ (gx#syntax-e _e8839288405_)))
                        (let ((_hd8839688416_ (##car _e8839588413_))
                              (_tl8839788418_ (##cdr _e8839588413_)))
                          (if (gx#stx-pair? _tl8839788418_)
                              (let ((_e8839888421_
                                     (gx#syntax-e _tl8839788418_)))
                                (let ((_hd8839988424_ (##car _e8839888421_))
                                      (_tl8840088426_ (##cdr _e8839888421_)))
                                  (let ((_id88429_ _hd8839988424_))
                                    (if (gx#stx-pair? _tl8840088426_)
                                        (let ((_e8840188431_
                                               (gx#syntax-e _tl8840088426_)))
                                          (let ((_hd8840288434_
                                                 (##car _e8840188431_))
                                                (_tl8840388436_
                                                 (##cdr _e8840188431_)))
                                            (let ((_alias-id88439_
                                                   _hd8840288434_))
                                              (if (gx#stx-null? _tl8840388436_)
                                                  (if (and (gx#identifier?
                                                            _id88429_)
                                                           (gx#identifier?
                                                            _alias-id88439_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88439_ '())))
              (_E8839488409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8839488409_)))))
                                        (_E8839488409_)))))
                              (_E8839488409_))))
                      (_E8839488409_)))))
          (_E8839388441_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88348_)
        (let* ((_e8834988359_ _stx88348_)
               (_E8835188363_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8834988359_)))
               (_E8835088387_
                (lambda ()
                  (if (gx#stx-pair? _e8834988359_)
                      (let ((_e8835288367_ (gx#syntax-e _e8834988359_)))
                        (let ((_hd8835388370_ (##car _e8835288367_))
                              (_tl8835488372_ (##cdr _e8835288367_)))
                          (if (gx#stx-pair? _tl8835488372_)
                              (let ((_e8835588375_
                                     (gx#syntax-e _tl8835488372_)))
                                (let ((_hd8835688378_ (##car _e8835588375_))
                                      (_tl8835788380_ (##cdr _e8835588375_)))
                                  (let* ((_hd88383_ _hd8835688378_)
                                         (_body88385_ _tl8835788380_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88383_)
                                             (gx#stx-list? _body88385_)
                                             (not (gx#stx-null? _body88385_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88383_)
                                         _body88385_)
                                        (_E8835188363_)))))
                              (_E8835188363_))))
                      (_E8835188363_)))))
          (_E8835088387_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88284_)
        (letrec ((_generate88286_
                  (lambda (_clause88316_)
                    (let* ((_e8831788324_ _clause88316_)
                           (_E8831988328_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88284_
                               _clause88316_)))
                           (_E8831888344_
                            (lambda ()
                              (if (gx#stx-pair? _e8831788324_)
                                  (let ((_e8832088332_
                                         (gx#syntax-e _e8831788324_)))
                                    (let ((_hd8832188335_
                                           (##car _e8832088332_))
                                          (_tl8832288337_
                                           (##cdr _e8832088332_)))
                                      (let* ((_hd88340_ _hd8832188335_)
                                             (_body88342_ _tl8832288337_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88340_)
                                                 (gx#stx-list? _body88342_)
                                                 (not (gx#stx-null?
                                                       _body88342_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88340_)
                                                   _body88342_)
                                             (gx#stx-source _clause88316_))
                                            (_E8831988328_)))))
                                  (_E8831988328_)))))
                      (_E8831888344_)))))
          (let* ((_e8828788294_ _stx88284_)
                 (_E8828988298_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8828788294_)))
                 (_E8828888312_
                  (lambda ()
                    (if (gx#stx-pair? _e8828788294_)
                        (let ((_e8829088302_ (gx#syntax-e _e8828788294_)))
                          (let ((_hd8829188305_ (##car _e8829088302_))
                                (_tl8829288307_ (##cdr _e8829088302_)))
                            (let ((_clauses88310_ _tl8829288307_))
                              (if (gx#stx-list? _clauses88310_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88286_
                                    _clauses88310_))
                                  (_E8828988298_)))))
                        (_E8828988298_)))))
            (_E8828888312_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88185_ _form88186_)
        (letrec ((_generate88188_
                  (lambda (_bind88231_)
                    (let* ((_e8823288242_ _bind88231_)
                           (_E8823488246_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88185_
                               _bind88231_)))
                           (_E8823388270_
                            (lambda ()
                              (if (gx#stx-pair? _e8823288242_)
                                  (let ((_e8823588250_
                                         (gx#syntax-e _e8823288242_)))
                                    (let ((_hd8823688253_
                                           (##car _e8823588250_))
                                          (_tl8823788255_
                                           (##cdr _e8823588250_)))
                                      (let ((_ids88258_ _hd8823688253_))
                                        (if (gx#stx-pair? _tl8823788255_)
                                            (let ((_e8823888260_
                                                   (gx#syntax-e
                                                    _tl8823788255_)))
                                              (let ((_hd8823988263_
                                                     (##car _e8823888260_))
                                                    (_tl8824088265_
                                                     (##cdr _e8823888260_)))
                                                (let ((_expr88268_
                                                       _hd8823988263_))
                                                  (if (gx#stx-null?
                                                       _tl8824088265_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88258_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88258_)
                        (cons _expr88268_ '()))
                  (_E8823488246_))
              (_E8823488246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8823488246_)))))
                                  (_E8823488246_)))))
                      (_E8823388270_)))))
          (let* ((_e8818988199_ _stx88185_)
                 (_E8819188203_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8818988199_)))
                 (_E8819088227_
                  (lambda ()
                    (if (gx#stx-pair? _e8818988199_)
                        (let ((_e8819288207_ (gx#syntax-e _e8818988199_)))
                          (let ((_hd8819388210_ (##car _e8819288207_))
                                (_tl8819488212_ (##cdr _e8819288207_)))
                            (if (gx#stx-pair? _tl8819488212_)
                                (let ((_e8819588215_
                                       (gx#syntax-e _tl8819488212_)))
                                  (let ((_hd8819688218_ (##car _e8819588215_))
                                        (_tl8819788220_ (##cdr _e8819588215_)))
                                    (let* ((_hd88223_ _hd8819688218_)
                                           (_body88225_ _tl8819788220_))
                                      (if (and (gx#stx-list? _hd88223_)
                                               (gx#stx-list? _body88225_)
                                               (not (gx#stx-null?
                                                     _body88225_)))
                                          (gx#core-cons*
                                           _form88186_
                                           (gx#stx-map1
                                            _generate88188_
                                            _hd88223_)
                                           _body88225_)
                                          (_E8819188203_)))))
                                (_E8819188203_))))
                        (_E8819188203_)))))
            (_E8819088227_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88277_)
        (let ((_form88279_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88277_ _form88279_))))
    (define gx#macro-expand-let-values
      (lambda _g90662_
        (let ((_g90661_ (##length _g90662_)))
          (cond ((##fx= _g90661_ 1)
                 (apply (lambda (_stx88277_)
                          (gx#macro-expand-let-values__0 _stx88277_))
                        _g90662_))
                ((##fx= _g90661_ 2)
                 (apply (lambda (_stx88281_ _form88282_)
                          (gx#macro-expand-let-values__%
                           _stx88281_
                           _form88282_))
                        _g90662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g90662_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88182_)
        (gx#macro-expand-let-values__% _stx88182_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88180_)
        (gx#macro-expand-let-values__% _stx88180_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88071_)
        (let* ((_e8807288098_ _stx88071_)
               (_E8808488102_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8807288098_)))
               (_E8807488144_
                (lambda ()
                  (if (gx#stx-pair? _e8807288098_)
                      (let ((_e8808588106_ (gx#syntax-e _e8807288098_)))
                        (let ((_hd8808688109_ (##car _e8808588106_))
                              (_tl8808788111_ (##cdr _e8808588106_)))
                          (if (gx#stx-pair? _tl8808788111_)
                              (let ((_e8808888114_
                                     (gx#syntax-e _tl8808788111_)))
                                (let ((_hd8808988117_ (##car _e8808888114_))
                                      (_tl8809088119_ (##cdr _e8808888114_)))
                                  (let ((_test88122_ _hd8808988117_))
                                    (if (gx#stx-pair? _tl8809088119_)
                                        (let ((_e8809188124_
                                               (gx#syntax-e _tl8809088119_)))
                                          (let ((_hd8809288127_
                                                 (##car _e8809188124_))
                                                (_tl8809388129_
                                                 (##cdr _e8809188124_)))
                                            (let ((_K88132_ _hd8809288127_))
                                              (if (gx#stx-pair? _tl8809388129_)
                                                  (let ((_e8809488134_
                                                         (gx#syntax-e
                                                          _tl8809388129_)))
                                                    (let ((_hd8809588137_
                                                           (##car _e8809488134_))
                                                          (_tl8809688139_
                                                           (##cdr _e8809488134_)))
                                                      (let ((_E88142_
                                                             _hd8809588137_))
                                                        (if (gx#stx-null?
                                                             _tl8809688139_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88122_
                         _K88132_
                         _E88142_)
                        (_E8808488102_))
                    (_E8808488102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8808488102_)))))
                                        (_E8808488102_)))))
                              (_E8808488102_))))
                      (_E8808488102_))))
               (_E8807388176_
                (lambda ()
                  (if (gx#stx-pair? _e8807288098_)
                      (let ((_e8807588148_ (gx#syntax-e _e8807288098_)))
                        (let ((_hd8807688151_ (##car _e8807588148_))
                              (_tl8807788153_ (##cdr _e8807588148_)))
                          (if (gx#stx-pair? _tl8807788153_)
                              (let ((_e8807888156_
                                     (gx#syntax-e _tl8807788153_)))
                                (let ((_hd8807988159_ (##car _e8807888156_))
                                      (_tl8808088161_ (##cdr _e8807888156_)))
                                  (let ((_test88164_ _hd8807988159_))
                                    (if (gx#stx-pair? _tl8808088161_)
                                        (let ((_e8808188166_
                                               (gx#syntax-e _tl8808088161_)))
                                          (let ((_hd8808288169_
                                                 (##car _e8808188166_))
                                                (_tl8808388171_
                                                 (##cdr _e8808188166_)))
                                            (let ((_K88174_ _hd8808288169_))
                                              (if (gx#stx-null? _tl8808388171_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88164_
                                                       _K88174_
                                                       '#!void)
                                                      (_E8807488144_))
                                                  (_E8807488144_)))))
                                        (_E8807488144_)))))
                              (_E8807488144_))))
                      (_E8807488144_)))))
          (_E8807388176_))))
    (define gx#free-identifier=?
      (lambda (_xid88059_ _yid88060_)
        (let ((_xe88062_ (gx#resolve-identifier__0 _xid88059_))
              (_ye88063_ (gx#resolve-identifier__0 _yid88060_)))
          (if (and _xe88062_ _ye88063_)
              (let ((_$e88065_ (eq? _xe88062_ _ye88063_)))
                (if _$e88065_
                    _$e88065_
                    (if (##structure-instance-of? _xe88062_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88063_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88062_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88063_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88062_ _ye88063_)
                  '#f
                  (gx#stx-eq? _xid88059_ _yid88060_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88043_ _yid88044_)
        (letrec ((_context88046_
                  (lambda (_e88057_)
                    (if (##structure-direct-instance-of?
                         _e88057_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88057_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88047_
                  (lambda (_e88055_)
                    (if (symbol? _e88055_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88055_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88055_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88055_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88048_
                  (lambda (_e88053_)
                    (if (symbol? _e88053_)
                        _e88053_
                        (gx#syntax-local-unwrap _e88053_)))))
          (let ((_x88050_ (_unwrap88048_ _xid88043_))
                (_y88051_ (_unwrap88048_ _yid88044_)))
            (if (gx#stx-eq? _x88050_ _y88051_)
                (if (eq? (_context88046_ _x88050_) (_context88046_ _y88051_))
                    (equal? (_marks88047_ _x88050_) (_marks88047_ _y88051_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88041_)
        (if (gx#identifier? _stx88041_)
            (gx#core-identifier=? _stx88041_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88039_)
        (if (gx#identifier? _stx88039_)
            (gx#core-identifier=? _stx88039_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88037_)
        (if (gx#identifier? _x88037_)
            (if (not (gx#underscore? _x88037_)) _x88037_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87983_ _where87984_)
        (let _lp87986_ ((_rest87988_ (gx#syntax->list _stx87983_)))
          (let* ((_rest8798987997_ _rest87988_)
                 (_else8799188005_ (lambda () '#t))
                 (_K8799388015_
                  (lambda (_rest88008_ _hd88009_)
                    (if (not (gx#identifier? _hd88009_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87984_
                         _hd88009_)
                        (if (find (lambda (_g8801088012_)
                                    (gx#bound-identifier=?
                                     _g8801088012_
                                     _hd88009_))
                                  _rest88008_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87984_
                             _hd88009_)
                            (_lp87986_ _rest88008_))))))
            (if (##pair? _rest8798987997_)
                (let ((_hd8799488018_ (##car _rest8798987997_))
                      (_tl8799588020_ (##cdr _rest8798987997_)))
                  (let* ((_hd88023_ _hd8799488018_)
                         (_rest88025_ _tl8799588020_))
                    (_K8799388015_ _rest88025_ _hd88023_)))
                (_else8799188005_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88030_)
        (let ((_where88032_ _stx88030_))
          (gx#check-duplicate-identifiers__% _stx88030_ _where88032_))))
    (define gx#check-duplicate-identifiers
      (lambda _g90664_
        (let ((_g90663_ (##length _g90664_)))
          (cond ((##fx= _g90663_ 1)
                 (apply (lambda (_stx88030_)
                          (gx#check-duplicate-identifiers__0 _stx88030_))
                        _g90664_))
                ((##fx= _g90663_ 2)
                 (apply (lambda (_stx88034_ _where88035_)
                          (gx#check-duplicate-identifiers__%
                           _stx88034_
                           _where88035_))
                        _g90664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g90664_))))))
    (define gx#core-bind-values?
      (lambda (_stx87975_)
        (gx#stx-andmap
         (lambda (_x87977_)
           (let ((_$e87979_ (gx#identifier? _x87977_)))
             (if _$e87979_ _$e87979_ (gx#stx-false? _x87977_))))
         _stx87975_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87939_ _rebind?87940_ _phi87941_ _ctx87942_)
        (gx#stx-for-each1
         (lambda (_id87944_)
           (if (gx#identifier? _id87944_)
               (gx#core-bind-runtime!__%
                _id87944_
                _rebind?87940_
                _phi87941_
                _ctx87942_)
               '#!void))
         _stx87939_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87949_)
        (let* ((_rebind?87951_ '#f)
               (_phi87953_ (gx#current-expander-phi))
               (_ctx87955_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87949_
           _rebind?87951_
           _phi87953_
           _ctx87955_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87957_ _rebind?87958_)
        (let* ((_phi87960_ (gx#current-expander-phi))
               (_ctx87962_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87957_
           _rebind?87958_
           _phi87960_
           _ctx87962_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87964_ _rebind?87965_ _phi87966_)
        (let ((_ctx87968_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87964_
           _rebind?87965_
           _phi87966_
           _ctx87968_))))
    (define gx#core-bind-values!
      (lambda _g90666_
        (let ((_g90665_ (##length _g90666_)))
          (cond ((##fx= _g90665_ 1)
                 (apply (lambda (_stx87949_)
                          (gx#core-bind-values!__0 _stx87949_))
                        _g90666_))
                ((##fx= _g90665_ 2)
                 (apply (lambda (_stx87957_ _rebind?87958_)
                          (gx#core-bind-values!__1 _stx87957_ _rebind?87958_))
                        _g90666_))
                ((##fx= _g90665_ 3)
                 (apply (lambda (_stx87964_ _rebind?87965_ _phi87966_)
                          (gx#core-bind-values!__2
                           _stx87964_
                           _rebind?87965_
                           _phi87966_))
                        _g90666_))
                ((##fx= _g90665_ 4)
                 (apply (lambda (_stx87970_
                                 _rebind?87971_
                                 _phi87972_
                                 _ctx87973_)
                          (gx#core-bind-values!__%
                           _stx87970_
                           _rebind?87971_
                           _phi87972_
                           _ctx87973_))
                        _g90666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g90666_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87934_)
        (gx#stx-map1
         (lambda (_x87936_)
           (if (gx#identifier? _x87936_)
               (gx#core-quote-syntax__0 _x87936_)
               '#f))
         _stx87934_)))
    (define gx#core-runtime-ref?
      (lambda (_stx87927_)
        (if (gx#identifier? _stx87927_)
            (let* ((_bind87929_ (gx#resolve-identifier__0 _stx87927_))
                   (_$e87931_ (not _bind87929_)))
              (if _$e87931_
                  _$e87931_
                  (##structure-instance-of?
                   _bind87929_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id87919_ _form87920_)
        (let ((_bind87922_ (gx#resolve-identifier__0 _id87919_)))
          (if (##structure-instance-of? _bind87922_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id87919_)
              (if (not _bind87922_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id87919_)))
                      (gx#core-quote-syntax__0 _id87919_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form87920_
                       _id87919_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form87920_
                   _id87919_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id87878_ _rebind?87879_ _phi87880_ _ctx87881_)
        (let* ((_key87883_ (gx#core-identifier-key _id87878_))
               (_eid87885_
                (gx#make-binding-id__% _key87883_ '#f _phi87880_ _ctx87881_))
               (_bind87887_
                (if (##structure-instance-of? _ctx87881_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87885_
                     _key87883_
                     _phi87880_
                     _ctx87881_)
                    (if (##structure-instance-of?
                         _ctx87881_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87885_
                         _key87883_
                         _phi87880_)
                        (if (##structure-instance-of?
                             _ctx87881_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid87885_
                             _key87883_
                             _phi87880_)
                            (##structure
                             gx#runtime-binding::t
                             _eid87885_
                             _key87883_
                             _phi87880_))))))
          (gx#bind-identifier!__%
           _id87878_
           _bind87887_
           _rebind?87879_
           _phi87880_
           _ctx87881_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id87893_)
        (let* ((_rebind?87895_ '#f)
               (_phi87897_ (gx#current-expander-phi))
               (_ctx87899_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87893_
           _rebind?87895_
           _phi87897_
           _ctx87899_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id87901_ _rebind?87902_)
        (let* ((_phi87904_ (gx#current-expander-phi))
               (_ctx87906_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87901_
           _rebind?87902_
           _phi87904_
           _ctx87906_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id87908_ _rebind?87909_ _phi87910_)
        (let ((_ctx87912_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87908_
           _rebind?87909_
           _phi87910_
           _ctx87912_))))
    (define gx#core-bind-runtime!
      (lambda _g90668_
        (let ((_g90667_ (##length _g90668_)))
          (cond ((##fx= _g90667_ 1)
                 (apply (lambda (_id87893_)
                          (gx#core-bind-runtime!__0 _id87893_))
                        _g90668_))
                ((##fx= _g90667_ 2)
                 (apply (lambda (_id87901_ _rebind?87902_)
                          (gx#core-bind-runtime!__1 _id87901_ _rebind?87902_))
                        _g90668_))
                ((##fx= _g90667_ 3)
                 (apply (lambda (_id87908_ _rebind?87909_ _phi87910_)
                          (gx#core-bind-runtime!__2
                           _id87908_
                           _rebind?87909_
                           _phi87910_))
                        _g90668_))
                ((##fx= _g90667_ 4)
                 (apply (lambda (_id87914_
                                 _rebind?87915_
                                 _phi87916_
                                 _ctx87917_)
                          (gx#core-bind-runtime!__%
                           _id87914_
                           _rebind?87915_
                           _phi87916_
                           _ctx87917_))
                        _g90668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g90668_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id87833_ _eid87834_ _rebind?87835_ _phi87836_ _ctx87837_)
        (let* ((_key87839_ (gx#core-identifier-key _id87833_))
               (_bind87841_
                (if (##structure-instance-of? _ctx87837_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87834_
                     _key87839_
                     _phi87836_
                     _ctx87837_)
                    (if (##structure-instance-of?
                         _ctx87837_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87834_
                         _key87839_
                         _phi87836_)
                        (##structure
                         gx#runtime-binding::t
                         _eid87834_
                         _key87839_
                         _phi87836_)))))
          (gx#bind-identifier!__%
           _id87833_
           _bind87841_
           _rebind?87835_
           _phi87836_
           _ctx87837_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id87847_ _eid87848_)
        (let* ((_rebind?87850_ '#f)
               (_phi87852_ (gx#current-expander-phi))
               (_ctx87854_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87847_
           _eid87848_
           _rebind?87850_
           _phi87852_
           _ctx87854_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id87856_ _eid87857_ _rebind?87858_)
        (let* ((_phi87860_ (gx#current-expander-phi))
               (_ctx87862_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87856_
           _eid87857_
           _rebind?87858_
           _phi87860_
           _ctx87862_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id87864_ _eid87865_ _rebind?87866_ _phi87867_)
        (let ((_ctx87869_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87864_
           _eid87865_
           _rebind?87866_
           _phi87867_
           _ctx87869_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g90670_
        (let ((_g90669_ (##length _g90670_)))
          (cond ((##fx= _g90669_ 2)
                 (apply (lambda (_id87847_ _eid87848_)
                          (gx#core-bind-runtime-reference!__0
                           _id87847_
                           _eid87848_))
                        _g90670_))
                ((##fx= _g90669_ 3)
                 (apply (lambda (_id87856_ _eid87857_ _rebind?87858_)
                          (gx#core-bind-runtime-reference!__1
                           _id87856_
                           _eid87857_
                           _rebind?87858_))
                        _g90670_))
                ((##fx= _g90669_ 4)
                 (apply (lambda (_id87864_
                                 _eid87865_
                                 _rebind?87866_
                                 _phi87867_)
                          (gx#core-bind-runtime-reference!__2
                           _id87864_
                           _eid87865_
                           _rebind?87866_
                           _phi87867_))
                        _g90670_))
                ((##fx= _g90669_ 5)
                 (apply (lambda (_id87871_
                                 _eid87872_
                                 _rebind?87873_
                                 _phi87874_
                                 _ctx87875_)
                          (gx#core-bind-runtime-reference!__%
                           _id87871_
                           _eid87872_
                           _rebind?87873_
                           _phi87874_
                           _ctx87875_))
                        _g90670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g90670_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id87793_ _eid87794_ _rebind?87795_ _phi87796_ _ctx87797_)
        (gx#bind-identifier!__%
         _id87793_
         (##structure
          gx#extern-binding::t
          _eid87794_
          (gx#core-identifier-key _id87793_)
          _phi87796_)
         _rebind?87795_
         _phi87796_
         _ctx87797_)))
    (define gx#core-bind-extern!__0
      (lambda (_id87802_ _eid87803_)
        (let* ((_rebind?87805_ '#f)
               (_phi87807_ (gx#current-expander-phi))
               (_ctx87809_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87802_
           _eid87803_
           _rebind?87805_
           _phi87807_
           _ctx87809_))))
    (define gx#core-bind-extern!__1
      (lambda (_id87811_ _eid87812_ _rebind?87813_)
        (let* ((_phi87815_ (gx#current-expander-phi))
               (_ctx87817_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87811_
           _eid87812_
           _rebind?87813_
           _phi87815_
           _ctx87817_))))
    (define gx#core-bind-extern!__2
      (lambda (_id87819_ _eid87820_ _rebind?87821_ _phi87822_)
        (let ((_ctx87824_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87819_
           _eid87820_
           _rebind?87821_
           _phi87822_
           _ctx87824_))))
    (define gx#core-bind-extern!
      (lambda _g90672_
        (let ((_g90671_ (##length _g90672_)))
          (cond ((##fx= _g90671_ 2)
                 (apply (lambda (_id87802_ _eid87803_)
                          (gx#core-bind-extern!__0 _id87802_ _eid87803_))
                        _g90672_))
                ((##fx= _g90671_ 3)
                 (apply (lambda (_id87811_ _eid87812_ _rebind?87813_)
                          (gx#core-bind-extern!__1
                           _id87811_
                           _eid87812_
                           _rebind?87813_))
                        _g90672_))
                ((##fx= _g90671_ 4)
                 (apply (lambda (_id87819_
                                 _eid87820_
                                 _rebind?87821_
                                 _phi87822_)
                          (gx#core-bind-extern!__2
                           _id87819_
                           _eid87820_
                           _rebind?87821_
                           _phi87822_))
                        _g90672_))
                ((##fx= _g90671_ 5)
                 (apply (lambda (_id87826_
                                 _eid87827_
                                 _rebind?87828_
                                 _phi87829_
                                 _ctx87830_)
                          (gx#core-bind-extern!__%
                           _id87826_
                           _eid87827_
                           _rebind?87828_
                           _phi87829_
                           _ctx87830_))
                        _g90672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g90672_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id87747_ _e87748_ _rebind?87749_ _phi87750_ _ctx87751_)
        (gx#bind-identifier!__%
         _id87747_
         (let ((_key87756_ (gx#core-identifier-key _id87747_))
               (_e87757_
                (if (or (##structure-instance-of? _e87748_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e87748_
                         'gx#expander-context::t))
                    _e87748_
                    (##structure
                     gx#user-expander::t
                     _e87748_
                     _ctx87751_
                     _phi87750_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key87756_ '#t _phi87750_ _ctx87751_)
            _key87756_
            _phi87750_
            _e87757_))
         _rebind?87749_
         _phi87750_
         _ctx87751_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id87762_ _e87763_)
        (let* ((_rebind?87765_ '#f)
               (_phi87767_ (gx#current-expander-phi))
               (_ctx87769_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87762_
           _e87763_
           _rebind?87765_
           _phi87767_
           _ctx87769_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id87771_ _e87772_ _rebind?87773_)
        (let* ((_phi87775_ (gx#current-expander-phi))
               (_ctx87777_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87771_
           _e87772_
           _rebind?87773_
           _phi87775_
           _ctx87777_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id87779_ _e87780_ _rebind?87781_ _phi87782_)
        (let ((_ctx87784_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87779_
           _e87780_
           _rebind?87781_
           _phi87782_
           _ctx87784_))))
    (define gx#core-bind-syntax!
      (lambda _g90674_
        (let ((_g90673_ (##length _g90674_)))
          (cond ((##fx= _g90673_ 2)
                 (apply (lambda (_id87762_ _e87763_)
                          (gx#core-bind-syntax!__0 _id87762_ _e87763_))
                        _g90674_))
                ((##fx= _g90673_ 3)
                 (apply (lambda (_id87771_ _e87772_ _rebind?87773_)
                          (gx#core-bind-syntax!__1
                           _id87771_
                           _e87772_
                           _rebind?87773_))
                        _g90674_))
                ((##fx= _g90673_ 4)
                 (apply (lambda (_id87779_ _e87780_ _rebind?87781_ _phi87782_)
                          (gx#core-bind-syntax!__2
                           _id87779_
                           _e87780_
                           _rebind?87781_
                           _phi87782_))
                        _g90674_))
                ((##fx= _g90673_ 5)
                 (apply (lambda (_id87786_
                                 _e87787_
                                 _rebind?87788_
                                 _phi87789_
                                 _ctx87790_)
                          (gx#core-bind-syntax!__%
                           _id87786_
                           _e87787_
                           _rebind?87788_
                           _phi87789_
                           _ctx87790_))
                        _g90674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g90674_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id87730_ _e87731_ _rebind?87732_)
        (gx#core-bind-syntax!__%
         _id87730_
         _e87731_
         _rebind?87732_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id87737_ _e87738_)
        (let ((_rebind?87740_ '#f))
          (gx#core-bind-root-syntax!__% _id87737_ _e87738_ _rebind?87740_))))
    (define gx#core-bind-root-syntax!
      (lambda _g90676_
        (let ((_g90675_ (##length _g90676_)))
          (cond ((##fx= _g90675_ 2)
                 (apply (lambda (_id87737_ _e87738_)
                          (gx#core-bind-root-syntax!__0 _id87737_ _e87738_))
                        _g90676_))
                ((##fx= _g90675_ 3)
                 (apply (lambda (_id87742_ _e87743_ _rebind?87744_)
                          (gx#core-bind-root-syntax!__%
                           _id87742_
                           _e87743_
                           _rebind?87744_))
                        _g90676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g90676_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id87688_ _alias-id87689_ _rebind?87690_ _phi87691_ _ctx87692_)
        (gx#bind-identifier!__%
         _id87688_
         (let ((_key87694_ (gx#core-identifier-key _id87688_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key87694_ '#t _phi87691_ _ctx87692_)
            _key87694_
            _phi87691_
            _alias-id87689_))
         _rebind?87690_
         _phi87691_
         _ctx87692_)))
    (define gx#core-bind-alias!__0
      (lambda (_id87699_ _alias-id87700_)
        (let* ((_rebind?87702_ '#f)
               (_phi87704_ (gx#current-expander-phi))
               (_ctx87706_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87699_
           _alias-id87700_
           _rebind?87702_
           _phi87704_
           _ctx87706_))))
    (define gx#core-bind-alias!__1
      (lambda (_id87708_ _alias-id87709_ _rebind?87710_)
        (let* ((_phi87712_ (gx#current-expander-phi))
               (_ctx87714_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87708_
           _alias-id87709_
           _rebind?87710_
           _phi87712_
           _ctx87714_))))
    (define gx#core-bind-alias!__2
      (lambda (_id87716_ _alias-id87717_ _rebind?87718_ _phi87719_)
        (let ((_ctx87721_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87716_
           _alias-id87717_
           _rebind?87718_
           _phi87719_
           _ctx87721_))))
    (define gx#core-bind-alias!
      (lambda _g90678_
        (let ((_g90677_ (##length _g90678_)))
          (cond ((##fx= _g90677_ 2)
                 (apply (lambda (_id87699_ _alias-id87700_)
                          (gx#core-bind-alias!__0 _id87699_ _alias-id87700_))
                        _g90678_))
                ((##fx= _g90677_ 3)
                 (apply (lambda (_id87708_ _alias-id87709_ _rebind?87710_)
                          (gx#core-bind-alias!__1
                           _id87708_
                           _alias-id87709_
                           _rebind?87710_))
                        _g90678_))
                ((##fx= _g90677_ 4)
                 (apply (lambda (_id87716_
                                 _alias-id87717_
                                 _rebind?87718_
                                 _phi87719_)
                          (gx#core-bind-alias!__2
                           _id87716_
                           _alias-id87717_
                           _rebind?87718_
                           _phi87719_))
                        _g90678_))
                ((##fx= _g90677_ 5)
                 (apply (lambda (_id87723_
                                 _alias-id87724_
                                 _rebind?87725_
                                 _phi87726_
                                 _ctx87727_)
                          (gx#core-bind-alias!__%
                           _id87723_
                           _alias-id87724_
                           _rebind?87725_
                           _phi87726_
                           _ctx87727_))
                        _g90678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g90678_))))))
    (define gx#make-binding-id__%
      (lambda (_key87645_ _syntax?87646_ _phi87647_ _ctx87648_)
        (if (uninterned-symbol? _key87645_)
            (gensym 'L)
            (if (pair? _key87645_)
                (gensym (car _key87645_))
                (if (##structure-instance-of? _ctx87648_ 'gx#top-context::t)
                    (let ((_ns87650_
                           (gx#core-context-namespace__% _ctx87648_)))
                      (if (and (fxzero? _phi87647_) (not _syntax?87646_))
                          (if _ns87650_
                              (make-symbol__1 _ns87650_ '"#" _key87645_)
                              _key87645_)
                          (if _syntax?87646_
                              (make-symbol__1
                               (let ((_$e87652_ _ns87650_))
                                 (if _$e87652_ _$e87652_ '""))
                               '"[:"
                               (number->string _phi87647_)
                               '":]#"
                               _key87645_)
                              (make-symbol__1
                               (let ((_$e87655_ _ns87650_))
                                 (if _$e87655_ _$e87655_ '""))
                               '"["
                               (number->string _phi87647_)
                               '"]#"
                               _key87645_))))
                    (gensym _key87645_))))))
    (define gx#make-binding-id__0
      (lambda (_key87661_)
        (let* ((_syntax?87663_ '#f)
               (_phi87665_ (gx#current-expander-phi))
               (_ctx87667_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87661_
           _syntax?87663_
           _phi87665_
           _ctx87667_))))
    (define gx#make-binding-id__1
      (lambda (_key87669_ _syntax?87670_)
        (let* ((_phi87672_ (gx#current-expander-phi))
               (_ctx87674_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87669_
           _syntax?87670_
           _phi87672_
           _ctx87674_))))
    (define gx#make-binding-id__2
      (lambda (_key87676_ _syntax?87677_ _phi87678_)
        (let ((_ctx87680_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87676_
           _syntax?87677_
           _phi87678_
           _ctx87680_))))
    (define gx#make-binding-id
      (lambda _g90680_
        (let ((_g90679_ (##length _g90680_)))
          (cond ((##fx= _g90679_ 1)
                 (apply (lambda (_key87661_)
                          (gx#make-binding-id__0 _key87661_))
                        _g90680_))
                ((##fx= _g90679_ 2)
                 (apply (lambda (_key87669_ _syntax?87670_)
                          (gx#make-binding-id__1 _key87669_ _syntax?87670_))
                        _g90680_))
                ((##fx= _g90679_ 3)
                 (apply (lambda (_key87676_ _syntax?87677_ _phi87678_)
                          (gx#make-binding-id__2
                           _key87676_
                           _syntax?87677_
                           _phi87678_))
                        _g90680_))
                ((##fx= _g90679_ 4)
                 (apply (lambda (_key87682_
                                 _syntax?87683_
                                 _phi87684_
                                 _ctx87685_)
                          (gx#make-binding-id__%
                           _key87682_
                           _syntax?87683_
                           _phi87684_
                           _ctx87685_))
                        _g90680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g90680_))))))))
