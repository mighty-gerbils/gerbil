(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710687284)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx90724_)
        (letrec ((_expand-special90726_
                  (lambda (_hd90728_ _K90729_ _rest90730_ _r90731_)
                    (_K90729_
                     _rest90730_
                     (cons (gx#core-expand-top _hd90728_) _r90731_)))))
          (gx#core-expand-block__0 _stx90724_ _expand-special90726_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90477_)
        (letrec ((_expand-special90479_
                  (lambda (_hd90599_ _K90600_ _rest90601_ _r90602_)
                    (let* ((_K90606_
                            (lambda (_e90604_)
                              (_K90600_ _rest90601_ (cons _e90604_ _r90602_))))
                           (_e9060790636_ _hd90599_)
                           (_E9063190640_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9060790636_)))
                           (_E9062790652_
                            (lambda ()
                              (if (gx#stx-pair? _e9060790636_)
                                  (let ((_e9063290644_
                                         (gx#syntax-e _e9060790636_)))
                                    (let ((_hd9063390647_
                                           (##car _e9063290644_))
                                          (_tl9063490649_
                                           (##cdr _e9063290644_)))
                                      (if (and (gx#identifier? _hd9063390647_)
                                               (gx#core-identifier=?
                                                _hd9063390647_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90606_
                                               (gx#core-expand-define-runtime%
                                                _hd90599_))
                                              (_E9063190640_))
                                          (_E9063190640_))))
                                  (_E9063190640_))))
                           (_E9062390664_
                            (lambda ()
                              (if (gx#stx-pair? _e9060790636_)
                                  (let ((_e9062890656_
                                         (gx#syntax-e _e9060790636_)))
                                    (let ((_hd9062990659_
                                           (##car _e9062890656_))
                                          (_tl9063090661_
                                           (##cdr _e9062890656_)))
                                      (if (and (gx#identifier? _hd9062990659_)
                                               (gx#core-identifier=?
                                                _hd9062990659_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90606_
                                               (gx#core-expand-define-alias%
                                                _hd90599_))
                                              (_E9062790652_))
                                          (_E9062790652_))))
                                  (_E9062790652_))))
                           (_E9061390676_
                            (lambda ()
                              (if (gx#stx-pair? _e9060790636_)
                                  (let ((_e9062490668_
                                         (gx#syntax-e _e9060790636_)))
                                    (let ((_hd9062590671_
                                           (##car _e9062490668_))
                                          (_tl9062690673_
                                           (##cdr _e9062490668_)))
                                      (if (and (gx#identifier? _hd9062590671_)
                                               (gx#core-identifier=?
                                                _hd9062590671_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90606_
                                               (gx#core-expand-define-syntax%
                                                _hd90599_))
                                              (_E9062390664_))
                                          (_E9062390664_))))
                                  (_E9062390664_))))
                           (_E9060990708_
                            (lambda ()
                              (if (gx#stx-pair? _e9060790636_)
                                  (let ((_e9061490680_
                                         (gx#syntax-e _e9060790636_)))
                                    (let ((_hd9061590683_
                                           (##car _e9061490680_))
                                          (_tl9061690685_
                                           (##cdr _e9061490680_)))
                                      (if (and (gx#identifier? _hd9061590683_)
                                               (gx#core-identifier=?
                                                _hd9061590683_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9061690685_)
                                              (let ((_e9061790688_
                                                     (gx#syntax-e
                                                      _tl9061690685_)))
                                                (let ((_hd9061890691_
                                                       (##car _e9061790688_))
                                                      (_tl9061990693_
                                                       (##cdr _e9061790688_)))
                                                  (let ((_hd-bind90696_
                                                         _hd9061890691_))
                                                    (if (gx#stx-pair?
                                                         _tl9061990693_)
                                                        (let ((_e9062090698_
                                                               (gx#syntax-e
                                                                _tl9061990693_)))
                                                          (let ((_hd9062190701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9062090698_))
                        (_tl9062290703_ (##cdr _e9062090698_)))
                    (let ((_expr90706_ _hd9062190701_))
                      (if (gx#stx-null? _tl9062290703_)
                          (if (gx#core-bind-values? _hd-bind90696_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90696_)
                                (_K90606_ _hd90599_))
                              (_E9061390676_))
                          (_E9061390676_)))))
                (_E9061390676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9061390676_))
                                          (_E9061390676_))))
                                  (_E9061390676_))))
                           (_E9060890720_
                            (lambda ()
                              (if (gx#stx-pair? _e9060790636_)
                                  (let ((_e9061090712_
                                         (gx#syntax-e _e9060790636_)))
                                    (let ((_hd9061190715_
                                           (##car _e9061090712_))
                                          (_tl9061290717_
                                           (##cdr _e9061090712_)))
                                      (if (and (gx#identifier? _hd9061190715_)
                                               (gx#core-identifier=?
                                                _hd9061190715_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90606_
                                               (gx#core-expand-begin-syntax%
                                                _hd90599_))
                                              (_E9060990708_))
                                          (_E9060990708_))))
                                  (_E9060990708_)))))
                      (_E9060890720_))))
                 (_eval-body90480_
                  (lambda (_rbody90488_)
                    (let _lp90490_ ((_rest90492_ _rbody90488_)
                                    (_body90493_ '())
                                    (_ebody90494_ '()))
                      (let* ((_rest9049590503_ _rest90492_)
                             (_else9049790511_
                              (lambda ()
                                (values _body90493_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90494_)
                                          (gx#stx-source _stx90477_))))))
                             (_K9049990587_
                              (lambda (_rest90514_ _hd90515_)
                                (let* ((_e9051690533_ _hd90515_)
                                       (_E9052890537_
                                        (lambda ()
                                          (_lp90490_
                                           _rest90514_
                                           (cons _hd90515_ _body90493_)
                                           (cons _hd90515_ _ebody90494_))))
                                       (_E9051890549_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9051690533_)
                                              (let ((_e9052990541_
                                                     (gx#syntax-e
                                                      _e9051690533_)))
                                                (let ((_hd9053090544_
                                                       (##car _e9052990541_))
                                                      (_tl9053190546_
                                                       (##cdr _e9052990541_)))
                                                  (if (and (gx#identifier?
                                                            _hd9053090544_)
                                                           (gx#core-identifier=?
                                                            _hd9053090544_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90490_
                                                           _rest90514_
                                                           (cons _hd90515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90493_)
                   _ebody90494_)
                  (_E9052890537_))
              (_E9052890537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9052890537_))))
                                       (_E9051790583_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9051690533_)
                                              (let ((_e9051990553_
                                                     (gx#syntax-e
                                                      _e9051690533_)))
                                                (let ((_hd9052090556_
                                                       (##car _e9051990553_))
                                                      (_tl9052190558_
                                                       (##cdr _e9051990553_)))
                                                  (if (and (gx#identifier?
                                                            _hd9052090556_)
                                                           (gx#core-identifier=?
                                                            _hd9052090556_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9052190558_)
                                                          (let ((_e9052290561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9052190558_)))
                    (let ((_hd9052390564_ (##car _e9052290561_))
                          (_tl9052490566_ (##cdr _e9052290561_)))
                      (let ((_hd-bind90569_ _hd9052390564_))
                        (if (gx#stx-pair? _tl9052490566_)
                            (let ((_e9052590571_ (gx#syntax-e _tl9052490566_)))
                              (let ((_hd9052690574_ (##car _e9052590571_))
                                    (_tl9052790576_ (##cdr _e9052590571_)))
                                (let ((_expr90579_ _hd9052690574_))
                                  (if (gx#stx-null? _tl9052790576_)
                                      (if '#t
                                          (let ((_ehd90581_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90569_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90579_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90515_))))
                                            (_lp90490_
                                             _rest90514_
                                             (cons _ehd90581_ _body90493_)
                                             (cons _ehd90581_ _ebody90494_)))
                                          (_E9051890549_))
                                      (_E9051890549_)))))
                            (_E9051890549_)))))
                  (_E9051890549_))
              (_E9051890549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9051890549_)))))
                                  (_E9051790583_)))))
                        (if (##pair? _rest9049590503_)
                            (let ((_hd9050090590_ (##car _rest9049590503_))
                                  (_tl9050190592_ (##cdr _rest9049590503_)))
                              (let* ((_hd90595_ _hd9050090590_)
                                     (_rest90597_ _tl9050190592_))
                                (_K9049990587_ _rest90597_ _hd90595_)))
                            (_else9049790511_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90483_
                     (gx#core-expand-block__1
                      _stx90477_
                      _expand-special90479_
                      '#f))
                    (_g90747_ (_eval-body90480_ _rbody90483_)))
               (begin
                 (let ((_g90748_
                        (if (##values? _g90747_)
                            (##vector-length _g90747_)
                            1)))
                   (if (not (##fx= _g90748_ 2))
                       (error "Context expects 2 values" _g90748_)))
                 (let ((_expanded-body90485_ (##vector-ref _g90747_ 0))
                       (_value90486_ (##vector-ref _g90747_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90485_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90486_ '())))
                    (gx#stx-source _stx90477_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90447_)
        (let* ((_e9044890455_ _stx90447_)
               (_E9045090459_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9044890455_)))
               (_E9044990473_
                (lambda ()
                  (if (gx#stx-pair? _e9044890455_)
                      (let ((_e9045190463_ (gx#syntax-e _e9044890455_)))
                        (let ((_hd9045290466_ (##car _e9045190463_))
                              (_tl9045390468_ (##cdr _e9045190463_)))
                          (let ((_body90471_ _tl9045390468_))
                            (if (gx#stx-list? _body90471_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90471_)
                                 (gx#stx-source _stx90447_))
                                (_E9045090459_)))))
                      (_E9045090459_)))))
          (_E9044990473_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90445_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90445_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90391_)
        (let* ((_e9039290405_ _stx90391_)
               (_E9039490409_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9039290405_)))
               (_E9039390441_
                (lambda ()
                  (if (gx#stx-pair? _e9039290405_)
                      (let ((_e9039590413_ (gx#syntax-e _e9039290405_)))
                        (let ((_hd9039690416_ (##car _e9039590413_))
                              (_tl9039790418_ (##cdr _e9039590413_)))
                          (if (gx#stx-pair? _tl9039790418_)
                              (let ((_e9039890421_
                                     (gx#syntax-e _tl9039790418_)))
                                (let ((_hd9039990424_ (##car _e9039890421_))
                                      (_tl9040090426_ (##cdr _e9039890421_)))
                                  (let ((_ann90429_ _hd9039990424_))
                                    (if (gx#stx-pair? _tl9040090426_)
                                        (let ((_e9040190431_
                                               (gx#syntax-e _tl9040090426_)))
                                          (let ((_hd9040290434_
                                                 (##car _e9040190431_))
                                                (_tl9040390436_
                                                 (##cdr _e9040190431_)))
                                            (let ((_expr90439_ _hd9040290434_))
                                              (if (gx#stx-null? _tl9040390436_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90439_) '())))
               (gx#stx-source _stx90391_))
              (_E9039490409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9039490409_)))))
                                        (_E9039490409_)))))
                              (_E9039490409_))))
                      (_E9039490409_)))))
          (_E9039390441_))))
    (define gx#core-expand-local-block
      (lambda (_stx90115_ _body90116_)
        (letrec ((_expand-special90118_
                  (lambda (_hd90386_ _K90387_ _rest90388_ _r90389_)
                    (_K90387_
                     '()
                     (cons (_expand-internal90119_ _hd90386_ _rest90388_)
                           _r90389_))))
                 (_expand-internal90119_
                  (lambda (_hd90382_ _rest90383_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90121_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90382_ _rest90383_))
                          (gx#stx-source _stx90115_))
                         _expand-internal-special90120_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj90741
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj90741)
                       __obj90741))))
                 (_expand-internal-special90120_
                  (lambda (_hd90277_ _K90278_ _rest90279_ _r90280_)
                    (let* ((_e9028190306_ _hd90277_)
                           (_E9030190310_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9028190306_)))
                           (_E9029790322_
                            (lambda ()
                              (if (gx#stx-pair? _e9028190306_)
                                  (let ((_e9030290314_
                                         (gx#syntax-e _e9028190306_)))
                                    (let ((_hd9030390317_
                                           (##car _e9030290314_))
                                          (_tl9030490319_
                                           (##cdr _e9030290314_)))
                                      (if (and (gx#identifier? _hd9030390317_)
                                               (gx#core-identifier=?
                                                _hd9030390317_
                                                '%#declare))
                                          (if '#t
                                              (_K90278_
                                               _rest90279_
                                               (cons (gx#core-expand-declare%
                                                      _hd90277_)
                                                     _r90280_))
                                              (_E9030190310_))
                                          (_E9030190310_))))
                                  (_E9030190310_))))
                           (_E9029390334_
                            (lambda ()
                              (if (gx#stx-pair? _e9028190306_)
                                  (let ((_e9029890326_
                                         (gx#syntax-e _e9028190306_)))
                                    (let ((_hd9029990329_
                                           (##car _e9029890326_))
                                          (_tl9030090331_
                                           (##cdr _e9029890326_)))
                                      (if (and (gx#identifier? _hd9029990329_)
                                               (gx#core-identifier=?
                                                _hd9029990329_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90277_)
                                                (_K90278_
                                                 _rest90279_
                                                 _r90280_))
                                              (_E9029790322_))
                                          (_E9029790322_))))
                                  (_E9029790322_))))
                           (_E9028390346_
                            (lambda ()
                              (if (gx#stx-pair? _e9028190306_)
                                  (let ((_e9029490338_
                                         (gx#syntax-e _e9028190306_)))
                                    (let ((_hd9029590341_
                                           (##car _e9029490338_))
                                          (_tl9029690343_
                                           (##cdr _e9029490338_)))
                                      (if (and (gx#identifier? _hd9029590341_)
                                               (gx#core-identifier=?
                                                _hd9029590341_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90277_)
                                                (_K90278_
                                                 _rest90279_
                                                 _r90280_))
                                              (_E9029390334_))
                                          (_E9029390334_))))
                                  (_E9029390334_))))
                           (_E9028290378_
                            (lambda ()
                              (if (gx#stx-pair? _e9028190306_)
                                  (let ((_e9028490350_
                                         (gx#syntax-e _e9028190306_)))
                                    (let ((_hd9028590353_
                                           (##car _e9028490350_))
                                          (_tl9028690355_
                                           (##cdr _e9028490350_)))
                                      (if (and (gx#identifier? _hd9028590353_)
                                               (gx#core-identifier=?
                                                _hd9028590353_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9028690355_)
                                              (let ((_e9028790358_
                                                     (gx#syntax-e
                                                      _tl9028690355_)))
                                                (let ((_hd9028890361_
                                                       (##car _e9028790358_))
                                                      (_tl9028990363_
                                                       (##cdr _e9028790358_)))
                                                  (let ((_hd-bind90366_
                                                         _hd9028890361_))
                                                    (if (gx#stx-pair?
                                                         _tl9028990363_)
                                                        (let ((_e9029090368_
                                                               (gx#syntax-e
                                                                _tl9028990363_)))
                                                          (let ((_hd9029190371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9029090368_))
                        (_tl9029290373_ (##cdr _e9029090368_)))
                    (let ((_expr90376_ _hd9029190371_))
                      (if (gx#stx-null? _tl9029290373_)
                          (if (gx#core-bind-values? _hd-bind90366_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90366_)
                                (_K90278_
                                 _rest90279_
                                 (cons _hd90277_ _r90280_)))
                              (_E9028390346_))
                          (_E9028390346_)))))
                (_E9028390346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9028390346_))
                                          (_E9028390346_))))
                                  (_E9028390346_)))))
                      (_E9028290378_))))
                 (_wrap-internal90121_
                  (lambda (_rbody90123_)
                    (let _lp90125_ ((_rest90127_ _rbody90123_)
                                    (_decls90128_ '())
                                    (_bind90129_ '())
                                    (_body90130_ '()))
                      (let* ((_e9013190138_ _rest90127_)
                             (_E9013390187_
                              (lambda ()
                                (let* ((_body90182_
                                        (let* ((_body9014190151_ _body90130_)
                                               (_else9014490159_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90130_)
                                                   (gx#stx-source
                                                    _stx90115_)))))
                                          (let ((_K9014990179_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90115_)))
                                                (_K9014690165_
                                                 (lambda (_expr90163_)
                                                   _expr90163_)))
                                            (let ((_try-match9014390175_
                                                   (lambda ()
                                                     (if (##pair? _body9014190151_)
                                                         (let ((_tl9014890170_
                                                                (##cdr _body9014190151_))
                                                               (_hd9014790168_
                                                                (##car _body9014190151_)))
                                                           (if (##null? _tl9014890170_)
                                                               (let ((_expr90173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9014790168_))
                         (_K9014690165_ _expr90173_))
                       (_else9014490159_)))
                 (_else9014490159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9014190151_)
                                                  (_K9014990179_)
                                                  (_try-match9014390175_))))))
                                       (_body90184_
                                        (if (null? _bind90129_)
                                            _body90182_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90129_
                                                         (cons _body90182_
                                                               '())))
                                             (gx#stx-source _stx90115_)))))
                                  (if (null? _decls90128_)
                                      _body90184_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90128_
                                                   (cons _body90184_ '())))
                                       (gx#stx-source _stx90115_))))))
                             (_E9013290273_
                              (lambda ()
                                (if (gx#stx-pair? _e9013190138_)
                                    (let ((_e9013490191_
                                           (gx#syntax-e _e9013190138_)))
                                      (let ((_hd9013590194_
                                             (##car _e9013490191_))
                                            (_tl9013690196_
                                             (##cdr _e9013490191_)))
                                        (let* ((_hd90199_ _hd9013590194_)
                                               (_rest90201_ _tl9013690196_))
                                          (if '#t
                                              (let* ((_e9020290219_ _hd90199_)
                                                     (_E9021490223_
                                                      (lambda ()
                                                        (if (null? _bind90129_)
                                                            (_lp90125_
                                                             _rest90201_
                                                             _decls90128_
                                                             _bind90129_
                                                             (cons _hd90199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90130_))
                    (_lp90125_
                     _rest90201_
                     _decls90128_
                     (cons (cons '#f (cons _hd90199_ '())) _bind90129_)
                     _body90130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9020490237_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9020290219_)
                                                            (let ((_e9021590227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9020290219_)))
                      (let ((_hd9021690230_ (##car _e9021590227_))
                            (_tl9021790232_ (##cdr _e9021590227_)))
                        (if (and (gx#identifier? _hd9021690230_)
                                 (gx#core-identifier=?
                                  _hd9021690230_
                                  '%#declare))
                            (let ((_xdecls90235_ _tl9021790232_))
                              (if '#t
                                  (_lp90125_
                                   _rest90201_
                                   (gx#stx-foldr
                                    cons
                                    _decls90128_
                                    _xdecls90235_)
                                   _bind90129_
                                   _body90130_)
                                  (_E9021490223_)))
                            (_E9021490223_))))
                    (_E9021490223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9020390269_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9020290219_)
                                                            (let ((_e9020590241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9020290219_)))
                      (let ((_hd9020690244_ (##car _e9020590241_))
                            (_tl9020790246_ (##cdr _e9020590241_)))
                        (if (and (gx#identifier? _hd9020690244_)
                                 (gx#core-identifier=?
                                  _hd9020690244_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9020790246_)
                                (let ((_e9020890249_
                                       (gx#syntax-e _tl9020790246_)))
                                  (let ((_hd9020990252_ (##car _e9020890249_))
                                        (_tl9021090254_ (##cdr _e9020890249_)))
                                    (let ((_hd-bind90257_ _hd9020990252_))
                                      (if (gx#stx-pair? _tl9021090254_)
                                          (let ((_e9021190259_
                                                 (gx#syntax-e _tl9021090254_)))
                                            (let ((_hd9021290262_
                                                   (##car _e9021190259_))
                                                  (_tl9021390264_
                                                   (##cdr _e9021190259_)))
                                              (let ((_expr90267_
                                                     _hd9021290262_))
                                                (if (gx#stx-null?
                                                     _tl9021390264_)
                                                    (if '#t
                                                        (_lp90125_
                                                         _rest90201_
                                                         _decls90128_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90257_)
                             (cons (gx#core-expand-expression _expr90267_)
                                   '()))
                       _bind90129_)
                 _body90130_)
                (_E9020490237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9020490237_)))))
                                          (_E9020490237_)))))
                                (_E9020490237_))
                            (_E9020490237_))))
                    (_E9020490237_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9020390269_))
                                              (_E9013390187_)))))
                                    (_E9013390187_)))))
                        (_E9013290273_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90116_)
            (gx#stx-source _stx90115_))
           _expand-special90118_))))
    (define gx#core-expand-declare%
      (lambda (_stx90053_)
        (let* ((_e9005490061_ _stx90053_)
               (_E9005690065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9005490061_)))
               (_E9005590111_
                (lambda ()
                  (if (gx#stx-pair? _e9005490061_)
                      (let ((_e9005790069_ (gx#syntax-e _e9005490061_)))
                        (let ((_hd9005890072_ (##car _e9005790069_))
                              (_tl9005990074_ (##cdr _e9005790069_)))
                          (let ((_body90077_ _tl9005990074_))
                            (if (gx#stx-list? _body90077_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90079_)
                                     (let* ((_e9008090087_ _decl90079_)
                                            (_E9008290091_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9008090087_)))
                                            (_E9008190107_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9008090087_)
                                                   (let ((_e9008390095_
                                                          (gx#syntax-e
                                                           _e9008090087_)))
                                                     (let ((_hd9008490098_
                                                            (##car _e9008390095_))
                                                           (_tl9008590100_
                                                            (##cdr _e9008390095_)))
                                                       (let* ((_head90103_
                                                               _hd9008490098_)
                                                              (_args90105_
                                                               _tl9008590100_))
                                                         (if (gx#stx-list?
                                                              _args90105_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90079_)
                                                             (_E9008290091_)))))
                                                   (_E9008290091_)))))
                                       (_E9008190107_)))
                                   _body90077_))
                                 (gx#stx-source _stx90053_))
                                (_E9005690065_)))))
                      (_E9005690065_)))))
          (_E9005590111_))))
    (define gx#core-expand-extern%
      (lambda (_stx89957_)
        (let* ((_e8995889965_ _stx89957_)
               (_E8996089969_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8995889965_)))
               (_E8995990049_
                (lambda ()
                  (if (gx#stx-pair? _e8995889965_)
                      (let ((_e8996189973_ (gx#syntax-e _e8995889965_)))
                        (let ((_hd8996289976_ (##car _e8996189973_))
                              (_tl8996389978_ (##cdr _e8996189973_)))
                          (let ((_body89981_ _tl8996389978_))
                            (if '#t
                                (let _lp89983_ ((_rest89985_ _body89981_)
                                                (_r89986_ '()))
                                  (let* ((_e8998790001_ _rest89985_)
                                         (_E8999990005_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx89957_)))
                                         (_E8998990009_
                                          (lambda ()
                                            (if (gx#stx-null? _e8998790001_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r89986_))
                                                     (gx#stx-source
                                                      _stx89957_))
                                                    (_E8999990005_))
                                                (_E8999990005_))))
                                         (_E8998890045_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8998790001_)
                                                (let ((_e8999090013_
                                                       (gx#syntax-e
                                                        _e8998790001_)))
                                                  (let ((_hd8999190016_
                                                         (##car _e8999090013_))
                                                        (_tl8999290018_
                                                         (##cdr _e8999090013_)))
                                                    (if (gx#stx-pair?
                                                         _hd8999190016_)
                                                        (let ((_e8999390021_
                                                               (gx#syntax-e
                                                                _hd8999190016_)))
                                                          (let ((_hd8999490024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8999390021_))
                        (_tl8999590026_ (##cdr _e8999390021_)))
                    (let ((_id90029_ _hd8999490024_))
                      (if (gx#stx-pair? _tl8999590026_)
                          (let ((_e8999690031_ (gx#syntax-e _tl8999590026_)))
                            (let ((_hd8999790034_ (##car _e8999690031_))
                                  (_tl8999890036_ (##cdr _e8999690031_)))
                              (let ((_eid90039_ _hd8999790034_))
                                (if (gx#stx-null? _tl8999890036_)
                                    (let ((_rest90041_ _tl8999290018_))
                                      (if (and (gx#identifier? _id90029_)
                                               (gx#identifier? _eid90039_))
                                          (let ((_eid90043_
                                                 (gx#stx-e _eid90039_)))
                                            (gx#core-bind-extern!__0
                                             _id90029_
                                             _eid90043_)
                                            (_lp89983_
                                             _rest90041_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90029_)
                                                         (cons _eid90043_ '()))
                                                   _r89986_)))
                                          (_E8998990009_)))
                                    (_E8998990009_)))))
                          (_E8998990009_)))))
                (_E8998990009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8998990009_)))))
                                    (_E8998890045_)))
                                (_E8996089969_)))))
                      (_E8996089969_)))))
          (_E8995990049_))))
    (define gx#core-expand-define-values%
      (lambda (_stx89903_)
        (let* ((_e8990489917_ _stx89903_)
               (_E8990689921_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8990489917_)))
               (_E8990589953_
                (lambda ()
                  (if (gx#stx-pair? _e8990489917_)
                      (let ((_e8990789925_ (gx#syntax-e _e8990489917_)))
                        (let ((_hd8990889928_ (##car _e8990789925_))
                              (_tl8990989930_ (##cdr _e8990789925_)))
                          (if (gx#stx-pair? _tl8990989930_)
                              (let ((_e8991089933_
                                     (gx#syntax-e _tl8990989930_)))
                                (let ((_hd8991189936_ (##car _e8991089933_))
                                      (_tl8991289938_ (##cdr _e8991089933_)))
                                  (let ((_hd89941_ _hd8991189936_))
                                    (if (gx#stx-pair? _tl8991289938_)
                                        (let ((_e8991389943_
                                               (gx#syntax-e _tl8991289938_)))
                                          (let ((_hd8991489946_
                                                 (##car _e8991389943_))
                                                (_tl8991589948_
                                                 (##cdr _e8991389943_)))
                                            (let ((_expr89951_ _hd8991489946_))
                                              (if (gx#stx-null? _tl8991589948_)
                                                  (if (gx#core-bind-values?
                                                       _hd89941_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd89941_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd89941_)
                             (cons (gx#core-expand-expression _expr89951_)
                                   '())))
                 (gx#stx-source _stx89903_)))
              (_E8990689921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8990689921_)))))
                                        (_E8990689921_)))))
                              (_E8990689921_))))
                      (_E8990689921_)))))
          (_E8990589953_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx89847_)
        (let* ((_e8984889861_ _stx89847_)
               (_E8985089865_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8984889861_)))
               (_E8984989899_
                (lambda ()
                  (if (gx#stx-pair? _e8984889861_)
                      (let ((_e8985189869_ (gx#syntax-e _e8984889861_)))
                        (let ((_hd8985289872_ (##car _e8985189869_))
                              (_tl8985389874_ (##cdr _e8985189869_)))
                          (if (gx#stx-pair? _tl8985389874_)
                              (let ((_e8985489877_
                                     (gx#syntax-e _tl8985389874_)))
                                (let ((_hd8985589880_ (##car _e8985489877_))
                                      (_tl8985689882_ (##cdr _e8985489877_)))
                                  (let ((_id89885_ _hd8985589880_))
                                    (if (gx#stx-pair? _tl8985689882_)
                                        (let ((_e8985789887_
                                               (gx#syntax-e _tl8985689882_)))
                                          (let ((_hd8985889890_
                                                 (##car _e8985789887_))
                                                (_tl8985989892_
                                                 (##cdr _e8985789887_)))
                                            (let ((_binding-id89895_
                                                   _hd8985889890_))
                                              (if (gx#stx-null? _tl8985989892_)
                                                  (if (and (gx#identifier?
                                                            _id89885_)
                                                           (gx#identifier?
                                                            _binding-id89895_))
                                                      (let ((_eid89897_
                                                             (gx#stx-e
                                                              _binding-id89895_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id89885_
                                                         _eid89897_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89885_)
                             (cons _eid89897_ '())))))
              (_E8985089865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8985089865_)))))
                                        (_E8985089865_)))))
                              (_E8985089865_))))
                      (_E8985089865_)))))
          (_E8984989899_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx89790_)
        (let* ((_e8979189804_ _stx89790_)
               (_E8979389808_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8979189804_)))
               (_E8979289843_
                (lambda ()
                  (if (gx#stx-pair? _e8979189804_)
                      (let ((_e8979489812_ (gx#syntax-e _e8979189804_)))
                        (let ((_hd8979589815_ (##car _e8979489812_))
                              (_tl8979689817_ (##cdr _e8979489812_)))
                          (if (gx#stx-pair? _tl8979689817_)
                              (let ((_e8979789820_
                                     (gx#syntax-e _tl8979689817_)))
                                (let ((_hd8979889823_ (##car _e8979789820_))
                                      (_tl8979989825_ (##cdr _e8979789820_)))
                                  (let ((_id89828_ _hd8979889823_))
                                    (if (gx#stx-pair? _tl8979989825_)
                                        (let ((_e8980089830_
                                               (gx#syntax-e _tl8979989825_)))
                                          (let ((_hd8980189833_
                                                 (##car _e8980089830_))
                                                (_tl8980289835_
                                                 (##cdr _e8980089830_)))
                                            (let ((_expr89838_ _hd8980189833_))
                                              (if (gx#stx-null? _tl8980289835_)
                                                  (if (gx#identifier?
                                                       _id89828_)
                                                      (let ((_g90749_
                                                             (gx#core-expand-expression+1
                                                              _expr89838_)))
                                                        (begin
                                                          (let ((_g90750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g90749_)
                             (##vector-length _g90749_)
                             1)))
                    (if (not (##fx= _g90750_ 2))
                        (error "Context expects 2 values" _g90750_)))
                  (let ((_e-stx89840_ (##vector-ref _g90749_ 0))
                        (_e89841_ (##vector-ref _g90749_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id89828_ _e89841_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id89828_)
                                   (cons _e-stx89840_ '())))
                       (gx#stx-source _stx89790_))))))
              (_E8979389808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8979389808_)))))
                                        (_E8979389808_)))))
                              (_E8979389808_))))
                      (_E8979389808_)))))
          (_E8979289843_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx89734_)
        (let* ((_e8973589748_ _stx89734_)
               (_E8973789752_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8973589748_)))
               (_E8973689786_
                (lambda ()
                  (if (gx#stx-pair? _e8973589748_)
                      (let ((_e8973889756_ (gx#syntax-e _e8973589748_)))
                        (let ((_hd8973989759_ (##car _e8973889756_))
                              (_tl8974089761_ (##cdr _e8973889756_)))
                          (if (gx#stx-pair? _tl8974089761_)
                              (let ((_e8974189764_
                                     (gx#syntax-e _tl8974089761_)))
                                (let ((_hd8974289767_ (##car _e8974189764_))
                                      (_tl8974389769_ (##cdr _e8974189764_)))
                                  (let ((_id89772_ _hd8974289767_))
                                    (if (gx#stx-pair? _tl8974389769_)
                                        (let ((_e8974489774_
                                               (gx#syntax-e _tl8974389769_)))
                                          (let ((_hd8974589777_
                                                 (##car _e8974489774_))
                                                (_tl8974689779_
                                                 (##cdr _e8974489774_)))
                                            (let ((_alias-id89782_
                                                   _hd8974589777_))
                                              (if (gx#stx-null? _tl8974689779_)
                                                  (if (and (gx#identifier?
                                                            _id89772_)
                                                           (gx#identifier?
                                                            _alias-id89782_))
                                                      (let ((_alias-id89784_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id89782_)))
                                                        (gx#core-bind-alias!__0
                                                         _id89772_
                                                         _alias-id89784_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89772_)
                             (cons _alias-id89784_ '())))))
              (_E8973789752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8973789752_)))))
                                        (_E8973789752_)))))
                              (_E8973789752_))))
                      (_E8973789752_)))))
          (_E8973689786_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89677_ _wrap?89678_)
        (let* ((_e8967989689_ _stx89677_)
               (_E8968189693_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8967989689_)))
               (_E8968089720_
                (lambda ()
                  (if (gx#stx-pair? _e8967989689_)
                      (let ((_e8968289697_ (gx#syntax-e _e8967989689_)))
                        (let ((_hd8968389700_ (##car _e8968289697_))
                              (_tl8968489702_ (##cdr _e8968289697_)))
                          (if (gx#stx-pair? _tl8968489702_)
                              (let ((_e8968589705_
                                     (gx#syntax-e _tl8968489702_)))
                                (let ((_hd8968689708_ (##car _e8968589705_))
                                      (_tl8968789710_ (##cdr _e8968589705_)))
                                  (let* ((_hd89713_ _hd8968689708_)
                                         (_body89715_ _tl8968789710_))
                                    (if (gx#core-bind-values? _hd89713_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89713_)
                                           (let ((_body89718_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89713_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89677_
                                                               _body89715_)
                                                              '()))))
                                             (if _wrap?89678_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89718_)
                                                  (gx#stx-source _stx89677_))
                                                 _body89718_)))
                                         gx#current-expander-context
                                         (let ((__obj90742
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90742)
                                           __obj90742))
                                        (_E8968189693_)))))
                              (_E8968189693_))))
                      (_E8968189693_)))))
          (_E8968089720_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx89727_)
        (let ((_wrap?89729_ '#t))
          (gx#core-expand-lambda%__% _stx89727_ _wrap?89729_))))
    (define gx#core-expand-lambda%
      (lambda _g90752_
        (let ((_g90751_ (##length _g90752_)))
          (cond ((##fx= _g90751_ 1)
                 (apply (lambda (_stx89727_)
                          (gx#core-expand-lambda%__0 _stx89727_))
                        _g90752_))
                ((##fx= _g90751_ 2)
                 (apply (lambda (_stx89731_ _wrap?89732_)
                          (gx#core-expand-lambda%__% _stx89731_ _wrap?89732_))
                        _g90752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g90752_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89641_)
        (let* ((_e8964289649_ _stx89641_)
               (_E8964489653_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8964289649_)))
               (_E8964389672_
                (lambda ()
                  (if (gx#stx-pair? _e8964289649_)
                      (let ((_e8964589657_ (gx#syntax-e _e8964289649_)))
                        (let ((_hd8964689660_ (##car _e8964589657_))
                              (_tl8964789662_ (##cdr _e8964589657_)))
                          (let ((_clauses89665_ _tl8964789662_))
                            (if (gx#stx-list? _clauses89665_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89667_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89667_)
                                       (let ((_$e89669_
                                              (gx#stx-source _clause89667_)))
                                         (if _$e89669_
                                             _$e89669_
                                             (gx#stx-source _stx89641_))))
                                      '#f))
                                   _clauses89665_))
                                 (gx#stx-source _stx89641_))
                                (_E8964489653_)))))
                      (_E8964489653_)))))
          (_E8964389672_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89595_)
        (let* ((_e8959689606_ _stx89595_)
               (_E8959889610_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8959689606_)))
               (_E8959789637_
                (lambda ()
                  (if (gx#stx-pair? _e8959689606_)
                      (let ((_e8959989614_ (gx#syntax-e _e8959689606_)))
                        (let ((_hd8960089617_ (##car _e8959989614_))
                              (_tl8960189619_ (##cdr _e8959989614_)))
                          (if (gx#stx-pair? _tl8960189619_)
                              (let ((_e8960289622_
                                     (gx#syntax-e _tl8960189619_)))
                                (let ((_hd8960389625_ (##car _e8960289622_))
                                      (_tl8960489627_ (##cdr _e8960289622_)))
                                  (let* ((_hd89630_ _hd8960389625_)
                                         (_body89632_ _tl8960489627_))
                                    (if (gx#core-expand-let-bind? _hd89630_)
                                        (let ((_expressions89634_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89630_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89630_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89630_
                                                           _expressions89634_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89595_
                         _body89632_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89595_)))
                                           gx#current-expander-context
                                           (let ((__obj90743
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90743)
                                             __obj90743)))
                                        (_E8959889610_)))))
                              (_E8959889610_))))
                      (_E8959889610_)))))
          (_E8959789637_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89540_ _form89541_)
        (let* ((_e8954289552_ _stx89540_)
               (_E8954489556_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8954289552_)))
               (_E8954389581_
                (lambda ()
                  (if (gx#stx-pair? _e8954289552_)
                      (let ((_e8954589560_ (gx#syntax-e _e8954289552_)))
                        (let ((_hd8954689563_ (##car _e8954589560_))
                              (_tl8954789565_ (##cdr _e8954589560_)))
                          (if (gx#stx-pair? _tl8954789565_)
                              (let ((_e8954889568_
                                     (gx#syntax-e _tl8954789565_)))
                                (let ((_hd8954989571_ (##car _e8954889568_))
                                      (_tl8955089573_ (##cdr _e8954889568_)))
                                  (let* ((_hd89576_ _hd8954989571_)
                                         (_body89578_ _tl8955089573_))
                                    (if (gx#core-expand-let-bind? _hd89576_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89576_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89541_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89576_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89576_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89540_
                                                               _body89578_)
                                                              '())))
                                            (gx#stx-source _stx89540_)))
                                         gx#current-expander-context
                                         (let ((__obj90744
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90744)
                                           __obj90744))
                                        (_E8954489556_)))))
                              (_E8954489556_))))
                      (_E8954489556_)))))
          (_E8954389581_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89588_)
        (let ((_form89590_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89588_ _form89590_))))
    (define gx#core-expand-letrec-values%
      (lambda _g90754_
        (let ((_g90753_ (##length _g90754_)))
          (cond ((##fx= _g90753_ 1)
                 (apply (lambda (_stx89588_)
                          (gx#core-expand-letrec-values%__0 _stx89588_))
                        _g90754_))
                ((##fx= _g90753_ 2)
                 (apply (lambda (_stx89592_ _form89593_)
                          (gx#core-expand-letrec-values%__%
                           _stx89592_
                           _form89593_))
                        _g90754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g90754_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89537_)
        (gx#core-expand-letrec-values%__% _stx89537_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89494_)
        (if (gx#stx-list? _stx89494_)
            (gx#stx-andmap
             (lambda (_bind89496_)
               (let* ((_e8949789507_ _bind89496_)
                      (_E8949989511_ (lambda () '#f))
                      (_E8949889533_
                       (lambda ()
                         (if (gx#stx-pair? _e8949789507_)
                             (let ((_e8950089515_ (gx#syntax-e _e8949789507_)))
                               (let ((_hd8950189518_ (##car _e8950089515_))
                                     (_tl8950289520_ (##cdr _e8950089515_)))
                                 (let ((_hd89523_ _hd8950189518_))
                                   (if (gx#stx-pair? _tl8950289520_)
                                       (let ((_e8950389525_
                                              (gx#syntax-e _tl8950289520_)))
                                         (let ((_hd8950489528_
                                                (##car _e8950389525_))
                                               (_tl8950589530_
                                                (##cdr _e8950389525_)))
                                           (if (gx#stx-null? _tl8950589530_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89523_)
                                                   (_E8949989511_))
                                               (_E8949989511_))))
                                       (_E8949989511_)))))
                             (_E8949989511_)))))
                 (_E8949889533_)))
             _stx89494_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89453_)
        (let* ((_e8945489464_ _bind89453_)
               (_E8945689468_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8945489464_)))
               (_E8945589490_
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
                                  (let ((_expr89488_ _hd8946189483_))
                                    (if (gx#stx-null? _tl8946289485_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89488_)
                                            (_E8945689468_))
                                        (_E8945689468_)))))
                              (_E8945689468_))))
                      (_E8945689468_)))))
          (_E8945589490_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89412_)
        (let* ((_e8941389423_ _bind89412_)
               (_E8941589427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8941389423_)))
               (_E8941489449_
                (lambda ()
                  (if (gx#stx-pair? _e8941389423_)
                      (let ((_e8941689431_ (gx#syntax-e _e8941389423_)))
                        (let ((_hd8941789434_ (##car _e8941689431_))
                              (_tl8941889436_ (##cdr _e8941689431_)))
                          (let ((_hd89439_ _hd8941789434_))
                            (if (gx#stx-pair? _tl8941889436_)
                                (let ((_e8941989441_
                                       (gx#syntax-e _tl8941889436_)))
                                  (let ((_hd8942089444_ (##car _e8941989441_))
                                        (_tl8942189446_ (##cdr _e8941989441_)))
                                    (if (gx#stx-null? _tl8942189446_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89439_)
                                            (_E8941589427_))
                                        (_E8941589427_))))
                                (_E8941589427_)))))
                      (_E8941589427_)))))
          (_E8941489449_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89370_ _expr89371_)
        (let* ((_e8937289382_ _bind89370_)
               (_E8937489386_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937289382_)))
               (_E8937389408_
                (lambda ()
                  (if (gx#stx-pair? _e8937289382_)
                      (let ((_e8937589390_ (gx#syntax-e _e8937289382_)))
                        (let ((_hd8937689393_ (##car _e8937589390_))
                              (_tl8937789395_ (##cdr _e8937589390_)))
                          (let ((_hd89398_ _hd8937689393_))
                            (if (gx#stx-pair? _tl8937789395_)
                                (let ((_e8937889400_
                                       (gx#syntax-e _tl8937789395_)))
                                  (let ((_hd8937989403_ (##car _e8937889400_))
                                        (_tl8938089405_ (##cdr _e8937889400_)))
                                    (if (gx#stx-null? _tl8938089405_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89398_)
                                                  (cons _expr89371_ '()))
                                            (_E8937489386_))
                                        (_E8937489386_))))
                                (_E8937489386_)))))
                      (_E8937489386_)))))
          (_E8937389408_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89324_)
        (let* ((_e8932589335_ _stx89324_)
               (_E8932789339_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8932589335_)))
               (_E8932689366_
                (lambda ()
                  (if (gx#stx-pair? _e8932589335_)
                      (let ((_e8932889343_ (gx#syntax-e _e8932589335_)))
                        (let ((_hd8932989346_ (##car _e8932889343_))
                              (_tl8933089348_ (##cdr _e8932889343_)))
                          (if (gx#stx-pair? _tl8933089348_)
                              (let ((_e8933189351_
                                     (gx#syntax-e _tl8933089348_)))
                                (let ((_hd8933289354_ (##car _e8933189351_))
                                      (_tl8933389356_ (##cdr _e8933189351_)))
                                  (let* ((_hd89359_ _hd8933289354_)
                                         (_body89361_ _tl8933389356_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89359_)
                                        (let ((_expanders89363_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89359_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89359_
                                              _expanders89363_)
                                             (gx#core-expand-local-block
                                              _stx89324_
                                              _body89361_))
                                           gx#current-expander-context
                                           (let ((__obj90745
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj90745)
                                             __obj90745)))
                                        (_E8932789339_)))))
                              (_E8932789339_))))
                      (_E8932789339_)))))
          (_E8932689366_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89273_)
        (let* ((_e8927489284_ _stx89273_)
               (_E8927689288_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8927489284_)))
               (_E8927589320_
                (lambda ()
                  (if (gx#stx-pair? _e8927489284_)
                      (let ((_e8927789292_ (gx#syntax-e _e8927489284_)))
                        (let ((_hd8927889295_ (##car _e8927789292_))
                              (_tl8927989297_ (##cdr _e8927789292_)))
                          (if (gx#stx-pair? _tl8927989297_)
                              (let ((_e8928089300_
                                     (gx#syntax-e _tl8927989297_)))
                                (let ((_hd8928189303_ (##car _e8928089300_))
                                      (_tl8928289305_ (##cdr _e8928089300_)))
                                  (let* ((_hd89308_ _hd8928189303_)
                                         (_body89310_ _tl8928289305_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89308_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89308_
                                            (make-list
                                             (gx#stx-length _hd89308_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8931289315_
                                                     _g8931389317_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8931289315_
                                               _g8931389317_
                                               '#t))
                                            _hd89308_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89308_))
                                           (gx#core-expand-local-block
                                            _stx89273_
                                            _body89310_))
                                         gx#current-expander-context
                                         (let ((__obj90746
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj90746)
                                           __obj90746))
                                        (_E8927689288_)))))
                              (_E8927689288_))))
                      (_E8927689288_)))))
          (_E8927589320_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89230_)
        (if (gx#stx-list? _stx89230_)
            (gx#stx-andmap
             (lambda (_bind89232_)
               (let* ((_e8923389243_ _bind89232_)
                      (_E8923589247_ (lambda () '#f))
                      (_E8923489269_
                       (lambda ()
                         (if (gx#stx-pair? _e8923389243_)
                             (let ((_e8923689251_ (gx#syntax-e _e8923389243_)))
                               (let ((_hd8923789254_ (##car _e8923689251_))
                                     (_tl8923889256_ (##cdr _e8923689251_)))
                                 (let ((_hd89259_ _hd8923789254_))
                                   (if (gx#stx-pair? _tl8923889256_)
                                       (let ((_e8923989261_
                                              (gx#syntax-e _tl8923889256_)))
                                         (let ((_hd8924089264_
                                                (##car _e8923989261_))
                                               (_tl8924189266_
                                                (##cdr _e8923989261_)))
                                           (if (gx#stx-null? _tl8924189266_)
                                               (if '#t
                                                   (gx#identifier? _hd89259_)
                                                   (_E8923589247_))
                                               (_E8923589247_))))
                                       (_E8923589247_)))))
                             (_E8923589247_)))))
                 (_E8923489269_)))
             _stx89230_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89187_)
        (let* ((_e8918889198_ _bind89187_)
               (_E8919089202_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8918889198_)))
               (_E8918989226_
                (lambda ()
                  (if (gx#stx-pair? _e8918889198_)
                      (let ((_e8919189206_ (gx#syntax-e _e8918889198_)))
                        (let ((_hd8919289209_ (##car _e8919189206_))
                              (_tl8919389211_ (##cdr _e8919189206_)))
                          (if (gx#stx-pair? _tl8919389211_)
                              (let ((_e8919489214_
                                     (gx#syntax-e _tl8919389211_)))
                                (let ((_hd8919589217_ (##car _e8919489214_))
                                      (_tl8919689219_ (##cdr _e8919489214_)))
                                  (let ((_expr89222_ _hd8919589217_))
                                    (if (gx#stx-null? _tl8919689219_)
                                        (if '#t
                                            (let ((_g90755_
                                                   (gx#core-expand-expression+1
                                                    _expr89222_)))
                                              (begin
                                                (let ((_g90756_
                                                       (if (##values? _g90755_)
                                                           (##vector-length
                                                            _g90755_)
                                                           1)))
                                                  (if (not (##fx= _g90756_ 2))
                                                      (error "Context expects 2 values"
                                                             _g90756_)))
                                                (let ((_e89224_
                                                       (##vector-ref
                                                        _g90755_
                                                        1)))
                                                  _e89224_)))
                                            (_E8919089202_))
                                        (_E8919089202_)))))
                              (_E8919089202_))))
                      (_E8919089202_)))))
          (_E8918989226_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89132_ _e89133_ _rebind?89134_)
        (let* ((_e8913589145_ _bind89132_)
               (_E8913789149_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8913589145_)))
               (_E8913689171_
                (lambda ()
                  (if (gx#stx-pair? _e8913589145_)
                      (let ((_e8913889153_ (gx#syntax-e _e8913589145_)))
                        (let ((_hd8913989156_ (##car _e8913889153_))
                              (_tl8914089158_ (##cdr _e8913889153_)))
                          (let ((_id89161_ _hd8913989156_))
                            (if (gx#stx-pair? _tl8914089158_)
                                (let ((_e8914189163_
                                       (gx#syntax-e _tl8914089158_)))
                                  (let ((_hd8914289166_ (##car _e8914189163_))
                                        (_tl8914389168_ (##cdr _e8914189163_)))
                                    (if (gx#stx-null? _tl8914389168_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89161_
                                             _e89133_
                                             _rebind?89134_)
                                            (_E8913789149_))
                                        (_E8913789149_))))
                                (_E8913789149_)))))
                      (_E8913789149_)))))
          (_E8913689171_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89178_ _e89179_)
        (let ((_rebind?89181_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89178_
           _e89179_
           _rebind?89181_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g90758_
        (let ((_g90757_ (##length _g90758_)))
          (cond ((##fx= _g90757_ 2)
                 (apply (lambda (_bind89178_ _e89179_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89178_
                           _e89179_))
                        _g90758_))
                ((##fx= _g90757_ 3)
                 (apply (lambda (_bind89183_ _e89184_ _rebind?89185_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89183_
                           _e89184_
                           _rebind?89185_))
                        _g90758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g90758_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89090_)
        (let* ((_e8909189101_ _stx89090_)
               (_E8909389105_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8909189101_)))
               (_E8909289127_
                (lambda ()
                  (if (gx#stx-pair? _e8909189101_)
                      (let ((_e8909489109_ (gx#syntax-e _e8909189101_)))
                        (let ((_hd8909589112_ (##car _e8909489109_))
                              (_tl8909689114_ (##cdr _e8909489109_)))
                          (if (gx#stx-pair? _tl8909689114_)
                              (let ((_e8909789117_
                                     (gx#syntax-e _tl8909689114_)))
                                (let ((_hd8909889120_ (##car _e8909789117_))
                                      (_tl8909989122_ (##cdr _e8909789117_)))
                                  (let ((_expr89125_ _hd8909889120_))
                                    (if (gx#stx-null? _tl8909989122_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89125_)
                                            (_E8909389105_))
                                        (_E8909389105_)))))
                              (_E8909389105_))))
                      (_E8909389105_)))))
          (_E8909289127_))))
    (define gx#core-expand-quote%
      (lambda (_stx89049_)
        (let* ((_e8905089060_ _stx89049_)
               (_E8905289064_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8905089060_)))
               (_E8905189086_
                (lambda ()
                  (if (gx#stx-pair? _e8905089060_)
                      (let ((_e8905389068_ (gx#syntax-e _e8905089060_)))
                        (let ((_hd8905489071_ (##car _e8905389068_))
                              (_tl8905589073_ (##cdr _e8905389068_)))
                          (if (gx#stx-pair? _tl8905589073_)
                              (let ((_e8905689076_
                                     (gx#syntax-e _tl8905589073_)))
                                (let ((_hd8905789079_ (##car _e8905689076_))
                                      (_tl8905889081_ (##cdr _e8905689076_)))
                                  (let ((_e89084_ _hd8905789079_))
                                    (if (gx#stx-null? _tl8905889081_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89084_)
                                                         '()))
                                             (gx#stx-source _stx89049_))
                                            (_E8905289064_))
                                        (_E8905289064_)))))
                              (_E8905289064_))))
                      (_E8905289064_)))))
          (_E8905189086_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89008_)
        (let* ((_e8900989019_ _stx89008_)
               (_E8901189023_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8900989019_)))
               (_E8901089045_
                (lambda ()
                  (if (gx#stx-pair? _e8900989019_)
                      (let ((_e8901289027_ (gx#syntax-e _e8900989019_)))
                        (let ((_hd8901389030_ (##car _e8901289027_))
                              (_tl8901489032_ (##cdr _e8901289027_)))
                          (if (gx#stx-pair? _tl8901489032_)
                              (let ((_e8901589035_
                                     (gx#syntax-e _tl8901489032_)))
                                (let ((_hd8901689038_ (##car _e8901589035_))
                                      (_tl8901789040_ (##cdr _e8901589035_)))
                                  (let ((_e89043_ _hd8901689038_))
                                    (if (gx#stx-null? _tl8901789040_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89043_)
                                                         '()))
                                             (gx#stx-source _stx89008_))
                                            (_E8901189023_))
                                        (_E8901189023_)))))
                              (_E8901189023_))))
                      (_E8901189023_)))))
          (_E8901089045_))))
    (define gx#core-expand-call%
      (lambda (_stx88965_)
        (let* ((_e8896688976_ _stx88965_)
               (_E8896888980_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8896688976_)))
               (_E8896789004_
                (lambda ()
                  (if (gx#stx-pair? _e8896688976_)
                      (let ((_e8896988984_ (gx#syntax-e _e8896688976_)))
                        (let ((_hd8897088987_ (##car _e8896988984_))
                              (_tl8897188989_ (##cdr _e8896988984_)))
                          (if (gx#stx-pair? _tl8897188989_)
                              (let ((_e8897288992_
                                     (gx#syntax-e _tl8897188989_)))
                                (let ((_hd8897388995_ (##car _e8897288992_))
                                      (_tl8897488997_ (##cdr _e8897288992_)))
                                  (let* ((_rator89000_ _hd8897388995_)
                                         (_args89002_ _tl8897488997_))
                                    (if (gx#stx-list? _args89002_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89000_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89002_))
                                         (gx#stx-source _stx88965_))
                                        (_E8896888980_)))))
                              (_E8896888980_))))
                      (_E8896888980_)))))
          (_E8896789004_))))
    (define gx#core-expand-if%
      (lambda (_stx88898_)
        (let* ((_e8889988915_ _stx88898_)
               (_E8890188919_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8889988915_)))
               (_E8890088961_
                (lambda ()
                  (if (gx#stx-pair? _e8889988915_)
                      (let ((_e8890288923_ (gx#syntax-e _e8889988915_)))
                        (let ((_hd8890388926_ (##car _e8890288923_))
                              (_tl8890488928_ (##cdr _e8890288923_)))
                          (if (gx#stx-pair? _tl8890488928_)
                              (let ((_e8890588931_
                                     (gx#syntax-e _tl8890488928_)))
                                (let ((_hd8890688934_ (##car _e8890588931_))
                                      (_tl8890788936_ (##cdr _e8890588931_)))
                                  (let ((_test88939_ _hd8890688934_))
                                    (if (gx#stx-pair? _tl8890788936_)
                                        (let ((_e8890888941_
                                               (gx#syntax-e _tl8890788936_)))
                                          (let ((_hd8890988944_
                                                 (##car _e8890888941_))
                                                (_tl8891088946_
                                                 (##cdr _e8890888941_)))
                                            (let ((_K88949_ _hd8890988944_))
                                              (if (gx#stx-pair? _tl8891088946_)
                                                  (let ((_e8891188951_
                                                         (gx#syntax-e
                                                          _tl8891088946_)))
                                                    (let ((_hd8891288954_
                                                           (##car _e8891188951_))
                                                          (_tl8891388956_
                                                           (##cdr _e8891188951_)))
                                                      (let ((_E88959_
                                                             _hd8891288954_))
                                                        (if (gx#stx-null?
                                                             _tl8891388956_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test88939_)
                                     (cons (gx#core-expand-expression _K88949_)
                                           (cons (gx#core-expand-expression
                                                  _E88959_)
                                                 '()))))
                         (gx#stx-source _stx88898_))
                        (_E8890188919_))
                    (_E8890188919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8890188919_)))))
                                        (_E8890188919_)))))
                              (_E8890188919_))))
                      (_E8890188919_)))))
          (_E8890088961_))))
    (define gx#core-expand-ref%
      (lambda (_stx88857_)
        (let* ((_e8885888868_ _stx88857_)
               (_E8886088872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8885888868_)))
               (_E8885988894_
                (lambda ()
                  (if (gx#stx-pair? _e8885888868_)
                      (let ((_e8886188876_ (gx#syntax-e _e8885888868_)))
                        (let ((_hd8886288879_ (##car _e8886188876_))
                              (_tl8886388881_ (##cdr _e8886188876_)))
                          (if (gx#stx-pair? _tl8886388881_)
                              (let ((_e8886488884_
                                     (gx#syntax-e _tl8886388881_)))
                                (let ((_hd8886588887_ (##car _e8886488884_))
                                      (_tl8886688889_ (##cdr _e8886488884_)))
                                  (let ((_id88892_ _hd8886588887_))
                                    (if (gx#stx-null? _tl8886688889_)
                                        (if (gx#identifier? _id88892_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id88892_
                                                          _stx88857_)
                                                         '()))
                                             (gx#stx-source _stx88857_))
                                            (_E8886088872_))
                                        (_E8886088872_)))))
                              (_E8886088872_))))
                      (_E8886088872_)))))
          (_E8885988894_))))
    (define gx#core-expand-setq%
      (lambda (_stx88803_)
        (let* ((_e8880488817_ _stx88803_)
               (_E8880688821_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8880488817_)))
               (_E8880588853_
                (lambda ()
                  (if (gx#stx-pair? _e8880488817_)
                      (let ((_e8880788825_ (gx#syntax-e _e8880488817_)))
                        (let ((_hd8880888828_ (##car _e8880788825_))
                              (_tl8880988830_ (##cdr _e8880788825_)))
                          (if (gx#stx-pair? _tl8880988830_)
                              (let ((_e8881088833_
                                     (gx#syntax-e _tl8880988830_)))
                                (let ((_hd8881188836_ (##car _e8881088833_))
                                      (_tl8881288838_ (##cdr _e8881088833_)))
                                  (let ((_id88841_ _hd8881188836_))
                                    (if (gx#stx-pair? _tl8881288838_)
                                        (let ((_e8881388843_
                                               (gx#syntax-e _tl8881288838_)))
                                          (let ((_hd8881488846_
                                                 (##car _e8881388843_))
                                                (_tl8881588848_
                                                 (##cdr _e8881388843_)))
                                            (let ((_expr88851_ _hd8881488846_))
                                              (if (gx#stx-null? _tl8881588848_)
                                                  (if (gx#identifier?
                                                       _id88841_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id88841_
                            _stx88803_)
                           (cons (gx#core-expand-expression _expr88851_) '())))
               (gx#stx-source _stx88803_))
              (_E8880688821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8880688821_)))))
                                        (_E8880688821_)))))
                              (_E8880688821_))))
                      (_E8880688821_)))))
          (_E8880588853_))))
    (define gx#macro-expand-extern
      (lambda (_stx88651_)
        (letrec ((_generate88653_
                  (lambda (_body88683_)
                    (let _lp88685_ ((_rest88687_ _body88683_)
                                    (_ns88688_ (gx#core-context-namespace__0))
                                    (_r88689_ '()))
                      (let* ((_e8869088705_ _rest88687_)
                             (_E8870388709_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8869088705_)))
                             (_E8869988713_
                              (lambda ()
                                (if (gx#stx-null? _e8869088705_)
                                    (if '#t (reverse _r88689_) (_E8870388709_))
                                    (_E8870388709_))))
                             (_E8869288770_
                              (lambda ()
                                (if (gx#stx-pair? _e8869088705_)
                                    (let ((_e8870088717_
                                           (gx#syntax-e _e8869088705_)))
                                      (let ((_hd8870188720_
                                             (##car _e8870088717_))
                                            (_tl8870288722_
                                             (##cdr _e8870088717_)))
                                        (let* ((_hd88725_ _hd8870188720_)
                                               (_rest88727_ _tl8870288722_))
                                          (if '#t
                                              (if (gx#identifier? _hd88725_)
                                                  (_lp88685_
                                                   _rest88727_
                                                   _ns88688_
                                                   (cons (cons _hd88725_
                                                               (cons (if _ns88688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd88725_
                                  _ns88688_
                                  '"#"
                                  _hd88725_)
                                 _hd88725_)
                             '()))
                 _r88689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8872888738_
                                                          _hd88725_)
                                                         (_E8873088742_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8872888738_)))
                                                         (_E8872988766_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8872888738_)
                        (let ((_e8873188746_ (gx#syntax-e _e8872888738_)))
                          (let ((_hd8873288749_ (##car _e8873188746_))
                                (_tl8873388751_ (##cdr _e8873188746_)))
                            (let ((_id88754_ _hd8873288749_))
                              (if (gx#stx-pair? _tl8873388751_)
                                  (let ((_e8873488756_
                                         (gx#syntax-e _tl8873388751_)))
                                    (let ((_hd8873588759_
                                           (##car _e8873488756_))
                                          (_tl8873688761_
                                           (##cdr _e8873488756_)))
                                      (let ((_eid88764_ _hd8873588759_))
                                        (if (gx#stx-null? _tl8873688761_)
                                            (if (and (gx#identifier? _id88754_)
                                                     (gx#identifier?
                                                      _eid88764_))
                                                (_lp88685_
                                                 _rest88727_
                                                 _ns88688_
                                                 (cons (cons _id88754_
                                                             (cons _eid88764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8873088742_))
                                            (_E8873088742_)))))
                                  (_E8873088742_)))))
                        (_E8873088742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8872988766_)))
                                              (_E8869988713_)))))
                                    (_E8869988713_))))
                             (_E8869188799_
                              (lambda ()
                                (if (gx#stx-pair? _e8869088705_)
                                    (let ((_e8869388774_
                                           (gx#syntax-e _e8869088705_)))
                                      (let ((_hd8869488777_
                                             (##car _e8869388774_))
                                            (_tl8869588779_
                                             (##cdr _e8869388774_)))
                                        (if (eq? (gx#stx-e _hd8869488777_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8869588779_)
                                                (let ((_e8869688782_
                                                       (gx#syntax-e
                                                        _tl8869588779_)))
                                                  (let ((_hd8869788785_
                                                         (##car _e8869688782_))
                                                        (_tl8869888787_
                                                         (##cdr _e8869688782_)))
                                                    (let* ((_ns88790_
                                                            _hd8869788785_)
                                                           (_rest88792_
                                                            _tl8869888787_))
                                                      (if '#t
                                                          (let ((_ns88797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns88790_)
                             (symbol->string (gx#stx-e _ns88790_))
                             (if (or (gx#stx-string? _ns88790_)
                                     (gx#stx-false? _ns88790_))
                                 (gx#stx-e _ns88790_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88651_
                                  _ns88790_)))))
                    (_lp88685_ _rest88792_ _ns88797_ _r88689_))
                  (_E8869288770_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8869288770_))
                                            (_E8869288770_))))
                                    (_E8869288770_)))))
                        (_E8869188799_))))))
          (let* ((_e8865488661_ _stx88651_)
                 (_E8865688665_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8865488661_)))
                 (_E8865588679_
                  (lambda ()
                    (if (gx#stx-pair? _e8865488661_)
                        (let ((_e8865788669_ (gx#syntax-e _e8865488661_)))
                          (let ((_hd8865888672_ (##car _e8865788669_))
                                (_tl8865988674_ (##cdr _e8865788669_)))
                            (let ((_body88677_ _tl8865988674_))
                              (if (gx#stx-list? _body88677_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88653_ _body88677_))
                                  (_E8865688665_)))))
                        (_E8865688665_)))))
            (_E8865588679_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88597_)
        (let* ((_e8859888611_ _stx88597_)
               (_E8860088615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8859888611_)))
               (_E8859988647_
                (lambda ()
                  (if (gx#stx-pair? _e8859888611_)
                      (let ((_e8860188619_ (gx#syntax-e _e8859888611_)))
                        (let ((_hd8860288622_ (##car _e8860188619_))
                              (_tl8860388624_ (##cdr _e8860188619_)))
                          (if (gx#stx-pair? _tl8860388624_)
                              (let ((_e8860488627_
                                     (gx#syntax-e _tl8860388624_)))
                                (let ((_hd8860588630_ (##car _e8860488627_))
                                      (_tl8860688632_ (##cdr _e8860488627_)))
                                  (let ((_hd88635_ _hd8860588630_))
                                    (if (gx#stx-pair? _tl8860688632_)
                                        (let ((_e8860788637_
                                               (gx#syntax-e _tl8860688632_)))
                                          (let ((_hd8860888640_
                                                 (##car _e8860788637_))
                                                (_tl8860988642_
                                                 (##cdr _e8860788637_)))
                                            (let ((_expr88645_ _hd8860888640_))
                                              (if (gx#stx-null? _tl8860988642_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88635_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88635_)
                          (cons _expr88645_ '())))
              (_E8860088615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8860088615_)))))
                                        (_E8860088615_)))))
                              (_E8860088615_))))
                      (_E8860088615_)))))
          (_E8859988647_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88543_)
        (let* ((_e8854488557_ _stx88543_)
               (_E8854688561_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8854488557_)))
               (_E8854588593_
                (lambda ()
                  (if (gx#stx-pair? _e8854488557_)
                      (let ((_e8854788565_ (gx#syntax-e _e8854488557_)))
                        (let ((_hd8854888568_ (##car _e8854788565_))
                              (_tl8854988570_ (##cdr _e8854788565_)))
                          (if (gx#stx-pair? _tl8854988570_)
                              (let ((_e8855088573_
                                     (gx#syntax-e _tl8854988570_)))
                                (let ((_hd8855188576_ (##car _e8855088573_))
                                      (_tl8855288578_ (##cdr _e8855088573_)))
                                  (let ((_hd88581_ _hd8855188576_))
                                    (if (gx#stx-pair? _tl8855288578_)
                                        (let ((_e8855388583_
                                               (gx#syntax-e _tl8855288578_)))
                                          (let ((_hd8855488586_
                                                 (##car _e8855388583_))
                                                (_tl8855588588_
                                                 (##cdr _e8855388583_)))
                                            (let ((_expr88591_ _hd8855488586_))
                                              (if (gx#stx-null? _tl8855588588_)
                                                  (if (gx#identifier?
                                                       _hd88581_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88591_ '())))
              (_E8854688561_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8854688561_)))))
                                        (_E8854688561_)))))
                              (_E8854688561_))))
                      (_E8854688561_)))))
          (_E8854588593_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88489_)
        (let* ((_e8849088503_ _stx88489_)
               (_E8849288507_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8849088503_)))
               (_E8849188539_
                (lambda ()
                  (if (gx#stx-pair? _e8849088503_)
                      (let ((_e8849388511_ (gx#syntax-e _e8849088503_)))
                        (let ((_hd8849488514_ (##car _e8849388511_))
                              (_tl8849588516_ (##cdr _e8849388511_)))
                          (if (gx#stx-pair? _tl8849588516_)
                              (let ((_e8849688519_
                                     (gx#syntax-e _tl8849588516_)))
                                (let ((_hd8849788522_ (##car _e8849688519_))
                                      (_tl8849888524_ (##cdr _e8849688519_)))
                                  (let ((_id88527_ _hd8849788522_))
                                    (if (gx#stx-pair? _tl8849888524_)
                                        (let ((_e8849988529_
                                               (gx#syntax-e _tl8849888524_)))
                                          (let ((_hd8850088532_
                                                 (##car _e8849988529_))
                                                (_tl8850188534_
                                                 (##cdr _e8849988529_)))
                                            (let ((_alias-id88537_
                                                   _hd8850088532_))
                                              (if (gx#stx-null? _tl8850188534_)
                                                  (if (and (gx#identifier?
                                                            _id88527_)
                                                           (gx#identifier?
                                                            _alias-id88537_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88537_ '())))
              (_E8849288507_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8849288507_)))))
                                        (_E8849288507_)))))
                              (_E8849288507_))))
                      (_E8849288507_)))))
          (_E8849188539_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88446_)
        (let* ((_e8844788457_ _stx88446_)
               (_E8844988461_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8844788457_)))
               (_E8844888485_
                (lambda ()
                  (if (gx#stx-pair? _e8844788457_)
                      (let ((_e8845088465_ (gx#syntax-e _e8844788457_)))
                        (let ((_hd8845188468_ (##car _e8845088465_))
                              (_tl8845288470_ (##cdr _e8845088465_)))
                          (if (gx#stx-pair? _tl8845288470_)
                              (let ((_e8845388473_
                                     (gx#syntax-e _tl8845288470_)))
                                (let ((_hd8845488476_ (##car _e8845388473_))
                                      (_tl8845588478_ (##cdr _e8845388473_)))
                                  (let* ((_hd88481_ _hd8845488476_)
                                         (_body88483_ _tl8845588478_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88481_)
                                             (gx#stx-list? _body88483_)
                                             (not (gx#stx-null? _body88483_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88481_)
                                         _body88483_)
                                        (_E8844988461_)))))
                              (_E8844988461_))))
                      (_E8844988461_)))))
          (_E8844888485_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88382_)
        (letrec ((_generate88384_
                  (lambda (_clause88414_)
                    (let* ((_e8841588422_ _clause88414_)
                           (_E8841788426_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88382_
                               _clause88414_)))
                           (_E8841688442_
                            (lambda ()
                              (if (gx#stx-pair? _e8841588422_)
                                  (let ((_e8841888430_
                                         (gx#syntax-e _e8841588422_)))
                                    (let ((_hd8841988433_
                                           (##car _e8841888430_))
                                          (_tl8842088435_
                                           (##cdr _e8841888430_)))
                                      (let* ((_hd88438_ _hd8841988433_)
                                             (_body88440_ _tl8842088435_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88438_)
                                                 (gx#stx-list? _body88440_)
                                                 (not (gx#stx-null?
                                                       _body88440_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88438_)
                                                   _body88440_)
                                             (gx#stx-source _clause88414_))
                                            (_E8841788426_)))))
                                  (_E8841788426_)))))
                      (_E8841688442_)))))
          (let* ((_e8838588392_ _stx88382_)
                 (_E8838788396_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8838588392_)))
                 (_E8838688410_
                  (lambda ()
                    (if (gx#stx-pair? _e8838588392_)
                        (let ((_e8838888400_ (gx#syntax-e _e8838588392_)))
                          (let ((_hd8838988403_ (##car _e8838888400_))
                                (_tl8839088405_ (##cdr _e8838888400_)))
                            (let ((_clauses88408_ _tl8839088405_))
                              (if (gx#stx-list? _clauses88408_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88384_
                                    _clauses88408_))
                                  (_E8838788396_)))))
                        (_E8838788396_)))))
            (_E8838688410_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88283_ _form88284_)
        (letrec ((_generate88286_
                  (lambda (_bind88329_)
                    (let* ((_e8833088340_ _bind88329_)
                           (_E8833288344_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88283_
                               _bind88329_)))
                           (_E8833188368_
                            (lambda ()
                              (if (gx#stx-pair? _e8833088340_)
                                  (let ((_e8833388348_
                                         (gx#syntax-e _e8833088340_)))
                                    (let ((_hd8833488351_
                                           (##car _e8833388348_))
                                          (_tl8833588353_
                                           (##cdr _e8833388348_)))
                                      (let ((_ids88356_ _hd8833488351_))
                                        (if (gx#stx-pair? _tl8833588353_)
                                            (let ((_e8833688358_
                                                   (gx#syntax-e
                                                    _tl8833588353_)))
                                              (let ((_hd8833788361_
                                                     (##car _e8833688358_))
                                                    (_tl8833888363_
                                                     (##cdr _e8833688358_)))
                                                (let ((_expr88366_
                                                       _hd8833788361_))
                                                  (if (gx#stx-null?
                                                       _tl8833888363_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88356_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88356_)
                        (cons _expr88366_ '()))
                  (_E8833288344_))
              (_E8833288344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8833288344_)))))
                                  (_E8833288344_)))))
                      (_E8833188368_)))))
          (let* ((_e8828788297_ _stx88283_)
                 (_E8828988301_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8828788297_)))
                 (_E8828888325_
                  (lambda ()
                    (if (gx#stx-pair? _e8828788297_)
                        (let ((_e8829088305_ (gx#syntax-e _e8828788297_)))
                          (let ((_hd8829188308_ (##car _e8829088305_))
                                (_tl8829288310_ (##cdr _e8829088305_)))
                            (if (gx#stx-pair? _tl8829288310_)
                                (let ((_e8829388313_
                                       (gx#syntax-e _tl8829288310_)))
                                  (let ((_hd8829488316_ (##car _e8829388313_))
                                        (_tl8829588318_ (##cdr _e8829388313_)))
                                    (let* ((_hd88321_ _hd8829488316_)
                                           (_body88323_ _tl8829588318_))
                                      (if (and (gx#stx-list? _hd88321_)
                                               (gx#stx-list? _body88323_)
                                               (not (gx#stx-null?
                                                     _body88323_)))
                                          (gx#core-cons*
                                           _form88284_
                                           (gx#stx-map1
                                            _generate88286_
                                            _hd88321_)
                                           _body88323_)
                                          (_E8828988301_)))))
                                (_E8828988301_))))
                        (_E8828988301_)))))
            (_E8828888325_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88375_)
        (let ((_form88377_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88375_ _form88377_))))
    (define gx#macro-expand-let-values
      (lambda _g90760_
        (let ((_g90759_ (##length _g90760_)))
          (cond ((##fx= _g90759_ 1)
                 (apply (lambda (_stx88375_)
                          (gx#macro-expand-let-values__0 _stx88375_))
                        _g90760_))
                ((##fx= _g90759_ 2)
                 (apply (lambda (_stx88379_ _form88380_)
                          (gx#macro-expand-let-values__%
                           _stx88379_
                           _form88380_))
                        _g90760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g90760_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88280_)
        (gx#macro-expand-let-values__% _stx88280_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88278_)
        (gx#macro-expand-let-values__% _stx88278_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88169_)
        (let* ((_e8817088196_ _stx88169_)
               (_E8818288200_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8817088196_)))
               (_E8817288242_
                (lambda ()
                  (if (gx#stx-pair? _e8817088196_)
                      (let ((_e8818388204_ (gx#syntax-e _e8817088196_)))
                        (let ((_hd8818488207_ (##car _e8818388204_))
                              (_tl8818588209_ (##cdr _e8818388204_)))
                          (if (gx#stx-pair? _tl8818588209_)
                              (let ((_e8818688212_
                                     (gx#syntax-e _tl8818588209_)))
                                (let ((_hd8818788215_ (##car _e8818688212_))
                                      (_tl8818888217_ (##cdr _e8818688212_)))
                                  (let ((_test88220_ _hd8818788215_))
                                    (if (gx#stx-pair? _tl8818888217_)
                                        (let ((_e8818988222_
                                               (gx#syntax-e _tl8818888217_)))
                                          (let ((_hd8819088225_
                                                 (##car _e8818988222_))
                                                (_tl8819188227_
                                                 (##cdr _e8818988222_)))
                                            (let ((_K88230_ _hd8819088225_))
                                              (if (gx#stx-pair? _tl8819188227_)
                                                  (let ((_e8819288232_
                                                         (gx#syntax-e
                                                          _tl8819188227_)))
                                                    (let ((_hd8819388235_
                                                           (##car _e8819288232_))
                                                          (_tl8819488237_
                                                           (##cdr _e8819288232_)))
                                                      (let ((_E88240_
                                                             _hd8819388235_))
                                                        (if (gx#stx-null?
                                                             _tl8819488237_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88220_
                         _K88230_
                         _E88240_)
                        (_E8818288200_))
                    (_E8818288200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8818288200_)))))
                                        (_E8818288200_)))))
                              (_E8818288200_))))
                      (_E8818288200_))))
               (_E8817188274_
                (lambda ()
                  (if (gx#stx-pair? _e8817088196_)
                      (let ((_e8817388246_ (gx#syntax-e _e8817088196_)))
                        (let ((_hd8817488249_ (##car _e8817388246_))
                              (_tl8817588251_ (##cdr _e8817388246_)))
                          (if (gx#stx-pair? _tl8817588251_)
                              (let ((_e8817688254_
                                     (gx#syntax-e _tl8817588251_)))
                                (let ((_hd8817788257_ (##car _e8817688254_))
                                      (_tl8817888259_ (##cdr _e8817688254_)))
                                  (let ((_test88262_ _hd8817788257_))
                                    (if (gx#stx-pair? _tl8817888259_)
                                        (let ((_e8817988264_
                                               (gx#syntax-e _tl8817888259_)))
                                          (let ((_hd8818088267_
                                                 (##car _e8817988264_))
                                                (_tl8818188269_
                                                 (##cdr _e8817988264_)))
                                            (let ((_K88272_ _hd8818088267_))
                                              (if (gx#stx-null? _tl8818188269_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88262_
                                                       _K88272_
                                                       '#!void)
                                                      (_E8817288242_))
                                                  (_E8817288242_)))))
                                        (_E8817288242_)))))
                              (_E8817288242_))))
                      (_E8817288242_)))))
          (_E8817188274_))))
    (define gx#free-identifier=?
      (lambda (_xid88157_ _yid88158_)
        (let ((_xe88160_ (gx#resolve-identifier__0 _xid88157_))
              (_ye88161_ (gx#resolve-identifier__0 _yid88158_)))
          (if (and _xe88160_ _ye88161_)
              (let ((_$e88163_ (eq? _xe88160_ _ye88161_)))
                (if _$e88163_
                    _$e88163_
                    (if (##structure-instance-of? _xe88160_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88161_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88160_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88161_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88160_ _ye88161_)
                  '#f
                  (gx#stx-eq? _xid88157_ _yid88158_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88141_ _yid88142_)
        (letrec ((_context88144_
                  (lambda (_e88155_)
                    (if (##structure-direct-instance-of?
                         _e88155_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88155_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88145_
                  (lambda (_e88153_)
                    (if (symbol? _e88153_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88153_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88153_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88153_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88146_
                  (lambda (_e88151_)
                    (if (symbol? _e88151_)
                        _e88151_
                        (gx#syntax-local-unwrap _e88151_)))))
          (let ((_x88148_ (_unwrap88146_ _xid88141_))
                (_y88149_ (_unwrap88146_ _yid88142_)))
            (if (gx#stx-eq? _x88148_ _y88149_)
                (if (eq? (_context88144_ _x88148_) (_context88144_ _y88149_))
                    (equal? (_marks88145_ _x88148_) (_marks88145_ _y88149_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88139_)
        (if (gx#identifier? _stx88139_)
            (gx#core-identifier=? _stx88139_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88137_)
        (if (gx#identifier? _stx88137_)
            (gx#core-identifier=? _stx88137_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88135_)
        (if (gx#identifier? _x88135_)
            (if (not (gx#underscore? _x88135_)) _x88135_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88081_ _where88082_)
        (let _lp88084_ ((_rest88086_ (gx#syntax->list _stx88081_)))
          (let* ((_rest8808788095_ _rest88086_)
                 (_else8808988103_ (lambda () '#t))
                 (_K8809188113_
                  (lambda (_rest88106_ _hd88107_)
                    (if (not (gx#identifier? _hd88107_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88082_
                         _hd88107_)
                        (if (find (lambda (_g8810888110_)
                                    (gx#bound-identifier=?
                                     _g8810888110_
                                     _hd88107_))
                                  _rest88106_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88082_
                             _hd88107_)
                            (_lp88084_ _rest88106_))))))
            (if (##pair? _rest8808788095_)
                (let ((_hd8809288116_ (##car _rest8808788095_))
                      (_tl8809388118_ (##cdr _rest8808788095_)))
                  (let* ((_hd88121_ _hd8809288116_)
                         (_rest88123_ _tl8809388118_))
                    (_K8809188113_ _rest88123_ _hd88121_)))
                (_else8808988103_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88128_)
        (let ((_where88130_ _stx88128_))
          (gx#check-duplicate-identifiers__% _stx88128_ _where88130_))))
    (define gx#check-duplicate-identifiers
      (lambda _g90762_
        (let ((_g90761_ (##length _g90762_)))
          (cond ((##fx= _g90761_ 1)
                 (apply (lambda (_stx88128_)
                          (gx#check-duplicate-identifiers__0 _stx88128_))
                        _g90762_))
                ((##fx= _g90761_ 2)
                 (apply (lambda (_stx88132_ _where88133_)
                          (gx#check-duplicate-identifiers__%
                           _stx88132_
                           _where88133_))
                        _g90762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g90762_))))))
    (define gx#core-bind-values?
      (lambda (_stx88073_)
        (gx#stx-andmap
         (lambda (_x88075_)
           (let ((_$e88077_ (gx#identifier? _x88075_)))
             (if _$e88077_ _$e88077_ (gx#stx-false? _x88075_))))
         _stx88073_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88037_ _rebind?88038_ _phi88039_ _ctx88040_)
        (gx#stx-for-each1
         (lambda (_id88042_)
           (if (gx#identifier? _id88042_)
               (gx#core-bind-runtime!__%
                _id88042_
                _rebind?88038_
                _phi88039_
                _ctx88040_)
               '#!void))
         _stx88037_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88047_)
        (let* ((_rebind?88049_ '#f)
               (_phi88051_ (gx#current-expander-phi))
               (_ctx88053_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88047_
           _rebind?88049_
           _phi88051_
           _ctx88053_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88055_ _rebind?88056_)
        (let* ((_phi88058_ (gx#current-expander-phi))
               (_ctx88060_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88055_
           _rebind?88056_
           _phi88058_
           _ctx88060_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88062_ _rebind?88063_ _phi88064_)
        (let ((_ctx88066_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88062_
           _rebind?88063_
           _phi88064_
           _ctx88066_))))
    (define gx#core-bind-values!
      (lambda _g90764_
        (let ((_g90763_ (##length _g90764_)))
          (cond ((##fx= _g90763_ 1)
                 (apply (lambda (_stx88047_)
                          (gx#core-bind-values!__0 _stx88047_))
                        _g90764_))
                ((##fx= _g90763_ 2)
                 (apply (lambda (_stx88055_ _rebind?88056_)
                          (gx#core-bind-values!__1 _stx88055_ _rebind?88056_))
                        _g90764_))
                ((##fx= _g90763_ 3)
                 (apply (lambda (_stx88062_ _rebind?88063_ _phi88064_)
                          (gx#core-bind-values!__2
                           _stx88062_
                           _rebind?88063_
                           _phi88064_))
                        _g90764_))
                ((##fx= _g90763_ 4)
                 (apply (lambda (_stx88068_
                                 _rebind?88069_
                                 _phi88070_
                                 _ctx88071_)
                          (gx#core-bind-values!__%
                           _stx88068_
                           _rebind?88069_
                           _phi88070_
                           _ctx88071_))
                        _g90764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g90764_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88032_)
        (gx#stx-map1
         (lambda (_x88034_)
           (if (gx#identifier? _x88034_)
               (gx#core-quote-syntax__0 _x88034_)
               '#f))
         _stx88032_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88025_)
        (if (gx#identifier? _stx88025_)
            (let* ((_bind88027_ (gx#resolve-identifier__0 _stx88025_))
                   (_$e88029_ (not _bind88027_)))
              (if _$e88029_
                  _$e88029_
                  (##structure-instance-of?
                   _bind88027_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88017_ _form88018_)
        (let ((_bind88020_ (gx#resolve-identifier__0 _id88017_)))
          (if (##structure-instance-of? _bind88020_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88017_)
              (if (not _bind88020_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88017_)))
                      (gx#core-quote-syntax__0 _id88017_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88018_
                       _id88017_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88018_
                   _id88017_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id87976_ _rebind?87977_ _phi87978_ _ctx87979_)
        (let* ((_key87981_ (gx#core-identifier-key _id87976_))
               (_eid87983_
                (gx#make-binding-id__% _key87981_ '#f _phi87978_ _ctx87979_))
               (_bind87985_
                (if (##structure-instance-of? _ctx87979_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87983_
                     _key87981_
                     _phi87978_
                     _ctx87979_)
                    (if (##structure-instance-of?
                         _ctx87979_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87983_
                         _key87981_
                         _phi87978_)
                        (if (##structure-instance-of?
                             _ctx87979_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid87983_
                             _key87981_
                             _phi87978_)
                            (##structure
                             gx#runtime-binding::t
                             _eid87983_
                             _key87981_
                             _phi87978_))))))
          (gx#bind-identifier!__%
           _id87976_
           _bind87985_
           _rebind?87977_
           _phi87978_
           _ctx87979_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id87991_)
        (let* ((_rebind?87993_ '#f)
               (_phi87995_ (gx#current-expander-phi))
               (_ctx87997_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87991_
           _rebind?87993_
           _phi87995_
           _ctx87997_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id87999_ _rebind?88000_)
        (let* ((_phi88002_ (gx#current-expander-phi))
               (_ctx88004_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87999_
           _rebind?88000_
           _phi88002_
           _ctx88004_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88006_ _rebind?88007_ _phi88008_)
        (let ((_ctx88010_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88006_
           _rebind?88007_
           _phi88008_
           _ctx88010_))))
    (define gx#core-bind-runtime!
      (lambda _g90766_
        (let ((_g90765_ (##length _g90766_)))
          (cond ((##fx= _g90765_ 1)
                 (apply (lambda (_id87991_)
                          (gx#core-bind-runtime!__0 _id87991_))
                        _g90766_))
                ((##fx= _g90765_ 2)
                 (apply (lambda (_id87999_ _rebind?88000_)
                          (gx#core-bind-runtime!__1 _id87999_ _rebind?88000_))
                        _g90766_))
                ((##fx= _g90765_ 3)
                 (apply (lambda (_id88006_ _rebind?88007_ _phi88008_)
                          (gx#core-bind-runtime!__2
                           _id88006_
                           _rebind?88007_
                           _phi88008_))
                        _g90766_))
                ((##fx= _g90765_ 4)
                 (apply (lambda (_id88012_
                                 _rebind?88013_
                                 _phi88014_
                                 _ctx88015_)
                          (gx#core-bind-runtime!__%
                           _id88012_
                           _rebind?88013_
                           _phi88014_
                           _ctx88015_))
                        _g90766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g90766_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id87931_ _eid87932_ _rebind?87933_ _phi87934_ _ctx87935_)
        (let* ((_key87937_ (gx#core-identifier-key _id87931_))
               (_bind87939_
                (if (##structure-instance-of? _ctx87935_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87932_
                     _key87937_
                     _phi87934_
                     _ctx87935_)
                    (if (##structure-instance-of?
                         _ctx87935_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87932_
                         _key87937_
                         _phi87934_)
                        (##structure
                         gx#runtime-binding::t
                         _eid87932_
                         _key87937_
                         _phi87934_)))))
          (gx#bind-identifier!__%
           _id87931_
           _bind87939_
           _rebind?87933_
           _phi87934_
           _ctx87935_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id87945_ _eid87946_)
        (let* ((_rebind?87948_ '#f)
               (_phi87950_ (gx#current-expander-phi))
               (_ctx87952_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87945_
           _eid87946_
           _rebind?87948_
           _phi87950_
           _ctx87952_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id87954_ _eid87955_ _rebind?87956_)
        (let* ((_phi87958_ (gx#current-expander-phi))
               (_ctx87960_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87954_
           _eid87955_
           _rebind?87956_
           _phi87958_
           _ctx87960_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id87962_ _eid87963_ _rebind?87964_ _phi87965_)
        (let ((_ctx87967_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87962_
           _eid87963_
           _rebind?87964_
           _phi87965_
           _ctx87967_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g90768_
        (let ((_g90767_ (##length _g90768_)))
          (cond ((##fx= _g90767_ 2)
                 (apply (lambda (_id87945_ _eid87946_)
                          (gx#core-bind-runtime-reference!__0
                           _id87945_
                           _eid87946_))
                        _g90768_))
                ((##fx= _g90767_ 3)
                 (apply (lambda (_id87954_ _eid87955_ _rebind?87956_)
                          (gx#core-bind-runtime-reference!__1
                           _id87954_
                           _eid87955_
                           _rebind?87956_))
                        _g90768_))
                ((##fx= _g90767_ 4)
                 (apply (lambda (_id87962_
                                 _eid87963_
                                 _rebind?87964_
                                 _phi87965_)
                          (gx#core-bind-runtime-reference!__2
                           _id87962_
                           _eid87963_
                           _rebind?87964_
                           _phi87965_))
                        _g90768_))
                ((##fx= _g90767_ 5)
                 (apply (lambda (_id87969_
                                 _eid87970_
                                 _rebind?87971_
                                 _phi87972_
                                 _ctx87973_)
                          (gx#core-bind-runtime-reference!__%
                           _id87969_
                           _eid87970_
                           _rebind?87971_
                           _phi87972_
                           _ctx87973_))
                        _g90768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g90768_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id87891_ _eid87892_ _rebind?87893_ _phi87894_ _ctx87895_)
        (gx#bind-identifier!__%
         _id87891_
         (##structure
          gx#extern-binding::t
          _eid87892_
          (gx#core-identifier-key _id87891_)
          _phi87894_)
         _rebind?87893_
         _phi87894_
         _ctx87895_)))
    (define gx#core-bind-extern!__0
      (lambda (_id87900_ _eid87901_)
        (let* ((_rebind?87903_ '#f)
               (_phi87905_ (gx#current-expander-phi))
               (_ctx87907_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87900_
           _eid87901_
           _rebind?87903_
           _phi87905_
           _ctx87907_))))
    (define gx#core-bind-extern!__1
      (lambda (_id87909_ _eid87910_ _rebind?87911_)
        (let* ((_phi87913_ (gx#current-expander-phi))
               (_ctx87915_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87909_
           _eid87910_
           _rebind?87911_
           _phi87913_
           _ctx87915_))))
    (define gx#core-bind-extern!__2
      (lambda (_id87917_ _eid87918_ _rebind?87919_ _phi87920_)
        (let ((_ctx87922_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87917_
           _eid87918_
           _rebind?87919_
           _phi87920_
           _ctx87922_))))
    (define gx#core-bind-extern!
      (lambda _g90770_
        (let ((_g90769_ (##length _g90770_)))
          (cond ((##fx= _g90769_ 2)
                 (apply (lambda (_id87900_ _eid87901_)
                          (gx#core-bind-extern!__0 _id87900_ _eid87901_))
                        _g90770_))
                ((##fx= _g90769_ 3)
                 (apply (lambda (_id87909_ _eid87910_ _rebind?87911_)
                          (gx#core-bind-extern!__1
                           _id87909_
                           _eid87910_
                           _rebind?87911_))
                        _g90770_))
                ((##fx= _g90769_ 4)
                 (apply (lambda (_id87917_
                                 _eid87918_
                                 _rebind?87919_
                                 _phi87920_)
                          (gx#core-bind-extern!__2
                           _id87917_
                           _eid87918_
                           _rebind?87919_
                           _phi87920_))
                        _g90770_))
                ((##fx= _g90769_ 5)
                 (apply (lambda (_id87924_
                                 _eid87925_
                                 _rebind?87926_
                                 _phi87927_
                                 _ctx87928_)
                          (gx#core-bind-extern!__%
                           _id87924_
                           _eid87925_
                           _rebind?87926_
                           _phi87927_
                           _ctx87928_))
                        _g90770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g90770_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id87845_ _e87846_ _rebind?87847_ _phi87848_ _ctx87849_)
        (gx#bind-identifier!__%
         _id87845_
         (let ((_key87854_ (gx#core-identifier-key _id87845_))
               (_e87855_
                (if (or (##structure-instance-of? _e87846_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e87846_
                         'gx#expander-context::t))
                    _e87846_
                    (##structure
                     gx#user-expander::t
                     _e87846_
                     _ctx87849_
                     _phi87848_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key87854_ '#t _phi87848_ _ctx87849_)
            _key87854_
            _phi87848_
            _e87855_))
         _rebind?87847_
         _phi87848_
         _ctx87849_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id87860_ _e87861_)
        (let* ((_rebind?87863_ '#f)
               (_phi87865_ (gx#current-expander-phi))
               (_ctx87867_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87860_
           _e87861_
           _rebind?87863_
           _phi87865_
           _ctx87867_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id87869_ _e87870_ _rebind?87871_)
        (let* ((_phi87873_ (gx#current-expander-phi))
               (_ctx87875_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87869_
           _e87870_
           _rebind?87871_
           _phi87873_
           _ctx87875_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id87877_ _e87878_ _rebind?87879_ _phi87880_)
        (let ((_ctx87882_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87877_
           _e87878_
           _rebind?87879_
           _phi87880_
           _ctx87882_))))
    (define gx#core-bind-syntax!
      (lambda _g90772_
        (let ((_g90771_ (##length _g90772_)))
          (cond ((##fx= _g90771_ 2)
                 (apply (lambda (_id87860_ _e87861_)
                          (gx#core-bind-syntax!__0 _id87860_ _e87861_))
                        _g90772_))
                ((##fx= _g90771_ 3)
                 (apply (lambda (_id87869_ _e87870_ _rebind?87871_)
                          (gx#core-bind-syntax!__1
                           _id87869_
                           _e87870_
                           _rebind?87871_))
                        _g90772_))
                ((##fx= _g90771_ 4)
                 (apply (lambda (_id87877_ _e87878_ _rebind?87879_ _phi87880_)
                          (gx#core-bind-syntax!__2
                           _id87877_
                           _e87878_
                           _rebind?87879_
                           _phi87880_))
                        _g90772_))
                ((##fx= _g90771_ 5)
                 (apply (lambda (_id87884_
                                 _e87885_
                                 _rebind?87886_
                                 _phi87887_
                                 _ctx87888_)
                          (gx#core-bind-syntax!__%
                           _id87884_
                           _e87885_
                           _rebind?87886_
                           _phi87887_
                           _ctx87888_))
                        _g90772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g90772_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id87828_ _e87829_ _rebind?87830_)
        (gx#core-bind-syntax!__%
         _id87828_
         _e87829_
         _rebind?87830_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id87835_ _e87836_)
        (let ((_rebind?87838_ '#f))
          (gx#core-bind-root-syntax!__% _id87835_ _e87836_ _rebind?87838_))))
    (define gx#core-bind-root-syntax!
      (lambda _g90774_
        (let ((_g90773_ (##length _g90774_)))
          (cond ((##fx= _g90773_ 2)
                 (apply (lambda (_id87835_ _e87836_)
                          (gx#core-bind-root-syntax!__0 _id87835_ _e87836_))
                        _g90774_))
                ((##fx= _g90773_ 3)
                 (apply (lambda (_id87840_ _e87841_ _rebind?87842_)
                          (gx#core-bind-root-syntax!__%
                           _id87840_
                           _e87841_
                           _rebind?87842_))
                        _g90774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g90774_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id87786_ _alias-id87787_ _rebind?87788_ _phi87789_ _ctx87790_)
        (gx#bind-identifier!__%
         _id87786_
         (let ((_key87792_ (gx#core-identifier-key _id87786_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key87792_ '#t _phi87789_ _ctx87790_)
            _key87792_
            _phi87789_
            _alias-id87787_))
         _rebind?87788_
         _phi87789_
         _ctx87790_)))
    (define gx#core-bind-alias!__0
      (lambda (_id87797_ _alias-id87798_)
        (let* ((_rebind?87800_ '#f)
               (_phi87802_ (gx#current-expander-phi))
               (_ctx87804_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87797_
           _alias-id87798_
           _rebind?87800_
           _phi87802_
           _ctx87804_))))
    (define gx#core-bind-alias!__1
      (lambda (_id87806_ _alias-id87807_ _rebind?87808_)
        (let* ((_phi87810_ (gx#current-expander-phi))
               (_ctx87812_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87806_
           _alias-id87807_
           _rebind?87808_
           _phi87810_
           _ctx87812_))))
    (define gx#core-bind-alias!__2
      (lambda (_id87814_ _alias-id87815_ _rebind?87816_ _phi87817_)
        (let ((_ctx87819_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87814_
           _alias-id87815_
           _rebind?87816_
           _phi87817_
           _ctx87819_))))
    (define gx#core-bind-alias!
      (lambda _g90776_
        (let ((_g90775_ (##length _g90776_)))
          (cond ((##fx= _g90775_ 2)
                 (apply (lambda (_id87797_ _alias-id87798_)
                          (gx#core-bind-alias!__0 _id87797_ _alias-id87798_))
                        _g90776_))
                ((##fx= _g90775_ 3)
                 (apply (lambda (_id87806_ _alias-id87807_ _rebind?87808_)
                          (gx#core-bind-alias!__1
                           _id87806_
                           _alias-id87807_
                           _rebind?87808_))
                        _g90776_))
                ((##fx= _g90775_ 4)
                 (apply (lambda (_id87814_
                                 _alias-id87815_
                                 _rebind?87816_
                                 _phi87817_)
                          (gx#core-bind-alias!__2
                           _id87814_
                           _alias-id87815_
                           _rebind?87816_
                           _phi87817_))
                        _g90776_))
                ((##fx= _g90775_ 5)
                 (apply (lambda (_id87821_
                                 _alias-id87822_
                                 _rebind?87823_
                                 _phi87824_
                                 _ctx87825_)
                          (gx#core-bind-alias!__%
                           _id87821_
                           _alias-id87822_
                           _rebind?87823_
                           _phi87824_
                           _ctx87825_))
                        _g90776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g90776_))))))
    (define gx#make-binding-id__%
      (lambda (_key87743_ _syntax?87744_ _phi87745_ _ctx87746_)
        (if (uninterned-symbol? _key87743_)
            (gensym 'L)
            (if (pair? _key87743_)
                (gensym (car _key87743_))
                (if (##structure-instance-of? _ctx87746_ 'gx#top-context::t)
                    (let ((_ns87748_
                           (gx#core-context-namespace__% _ctx87746_)))
                      (if (and (fxzero? _phi87745_) (not _syntax?87744_))
                          (if _ns87748_
                              (make-symbol__1 _ns87748_ '"#" _key87743_)
                              _key87743_)
                          (if _syntax?87744_
                              (make-symbol__1
                               (let ((_$e87750_ _ns87748_))
                                 (if _$e87750_ _$e87750_ '""))
                               '"[:"
                               (number->string _phi87745_)
                               '":]#"
                               _key87743_)
                              (make-symbol__1
                               (let ((_$e87753_ _ns87748_))
                                 (if _$e87753_ _$e87753_ '""))
                               '"["
                               (number->string _phi87745_)
                               '"]#"
                               _key87743_))))
                    (gensym _key87743_))))))
    (define gx#make-binding-id__0
      (lambda (_key87759_)
        (let* ((_syntax?87761_ '#f)
               (_phi87763_ (gx#current-expander-phi))
               (_ctx87765_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87759_
           _syntax?87761_
           _phi87763_
           _ctx87765_))))
    (define gx#make-binding-id__1
      (lambda (_key87767_ _syntax?87768_)
        (let* ((_phi87770_ (gx#current-expander-phi))
               (_ctx87772_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87767_
           _syntax?87768_
           _phi87770_
           _ctx87772_))))
    (define gx#make-binding-id__2
      (lambda (_key87774_ _syntax?87775_ _phi87776_)
        (let ((_ctx87778_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87774_
           _syntax?87775_
           _phi87776_
           _ctx87778_))))
    (define gx#make-binding-id
      (lambda _g90778_
        (let ((_g90777_ (##length _g90778_)))
          (cond ((##fx= _g90777_ 1)
                 (apply (lambda (_key87759_)
                          (gx#make-binding-id__0 _key87759_))
                        _g90778_))
                ((##fx= _g90777_ 2)
                 (apply (lambda (_key87767_ _syntax?87768_)
                          (gx#make-binding-id__1 _key87767_ _syntax?87768_))
                        _g90778_))
                ((##fx= _g90777_ 3)
                 (apply (lambda (_key87774_ _syntax?87775_ _phi87776_)
                          (gx#make-binding-id__2
                           _key87774_
                           _syntax?87775_
                           _phi87776_))
                        _g90778_))
                ((##fx= _g90777_ 4)
                 (apply (lambda (_key87780_
                                 _syntax?87781_
                                 _phi87782_
                                 _ctx87783_)
                          (gx#make-binding-id__%
                           _key87780_
                           _syntax?87781_
                           _phi87782_
                           _ctx87783_))
                        _g90778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g90778_))))))))
