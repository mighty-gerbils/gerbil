(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710954836)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx90989_)
        (letrec ((_expand-special90991_
                  (lambda (_hd90993_ _K90994_ _rest90995_ _r90996_)
                    (_K90994_
                     _rest90995_
                     (cons (gx#core-expand-top _hd90993_) _r90996_)))))
          (gx#core-expand-block__0 _stx90989_ _expand-special90991_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90742_)
        (letrec ((_expand-special90744_
                  (lambda (_hd90864_ _K90865_ _rest90866_ _r90867_)
                    (let* ((_K90871_
                            (lambda (_e90869_)
                              (_K90865_ _rest90866_ (cons _e90869_ _r90867_))))
                           (_e9087290901_ _hd90864_)
                           (_E9089690905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9087290901_)))
                           (_E9089290917_
                            (lambda ()
                              (if (gx#stx-pair? _e9087290901_)
                                  (let ((_e9089790909_
                                         (gx#syntax-e _e9087290901_)))
                                    (let ((_hd9089890912_
                                           (##car _e9089790909_))
                                          (_tl9089990914_
                                           (##cdr _e9089790909_)))
                                      (if (and (gx#identifier? _hd9089890912_)
                                               (gx#core-identifier=?
                                                _hd9089890912_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90871_
                                               (gx#core-expand-define-runtime%
                                                _hd90864_))
                                              (_E9089690905_))
                                          (_E9089690905_))))
                                  (_E9089690905_))))
                           (_E9088890929_
                            (lambda ()
                              (if (gx#stx-pair? _e9087290901_)
                                  (let ((_e9089390921_
                                         (gx#syntax-e _e9087290901_)))
                                    (let ((_hd9089490924_
                                           (##car _e9089390921_))
                                          (_tl9089590926_
                                           (##cdr _e9089390921_)))
                                      (if (and (gx#identifier? _hd9089490924_)
                                               (gx#core-identifier=?
                                                _hd9089490924_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90871_
                                               (gx#core-expand-define-alias%
                                                _hd90864_))
                                              (_E9089290917_))
                                          (_E9089290917_))))
                                  (_E9089290917_))))
                           (_E9087890941_
                            (lambda ()
                              (if (gx#stx-pair? _e9087290901_)
                                  (let ((_e9088990933_
                                         (gx#syntax-e _e9087290901_)))
                                    (let ((_hd9089090936_
                                           (##car _e9088990933_))
                                          (_tl9089190938_
                                           (##cdr _e9088990933_)))
                                      (if (and (gx#identifier? _hd9089090936_)
                                               (gx#core-identifier=?
                                                _hd9089090936_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90871_
                                               (gx#core-expand-define-syntax%
                                                _hd90864_))
                                              (_E9088890929_))
                                          (_E9088890929_))))
                                  (_E9088890929_))))
                           (_E9087490973_
                            (lambda ()
                              (if (gx#stx-pair? _e9087290901_)
                                  (let ((_e9087990945_
                                         (gx#syntax-e _e9087290901_)))
                                    (let ((_hd9088090948_
                                           (##car _e9087990945_))
                                          (_tl9088190950_
                                           (##cdr _e9087990945_)))
                                      (if (and (gx#identifier? _hd9088090948_)
                                               (gx#core-identifier=?
                                                _hd9088090948_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9088190950_)
                                              (let ((_e9088290953_
                                                     (gx#syntax-e
                                                      _tl9088190950_)))
                                                (let ((_hd9088390956_
                                                       (##car _e9088290953_))
                                                      (_tl9088490958_
                                                       (##cdr _e9088290953_)))
                                                  (let ((_hd-bind90961_
                                                         _hd9088390956_))
                                                    (if (gx#stx-pair?
                                                         _tl9088490958_)
                                                        (let ((_e9088590963_
                                                               (gx#syntax-e
                                                                _tl9088490958_)))
                                                          (let ((_hd9088690966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9088590963_))
                        (_tl9088790968_ (##cdr _e9088590963_)))
                    (let ((_expr90971_ _hd9088690966_))
                      (if (gx#stx-null? _tl9088790968_)
                          (if (gx#core-bind-values? _hd-bind90961_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90961_)
                                (_K90871_ _hd90864_))
                              (_E9087890941_))
                          (_E9087890941_)))))
                (_E9087890941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9087890941_))
                                          (_E9087890941_))))
                                  (_E9087890941_))))
                           (_E9087390985_
                            (lambda ()
                              (if (gx#stx-pair? _e9087290901_)
                                  (let ((_e9087590977_
                                         (gx#syntax-e _e9087290901_)))
                                    (let ((_hd9087690980_
                                           (##car _e9087590977_))
                                          (_tl9087790982_
                                           (##cdr _e9087590977_)))
                                      (if (and (gx#identifier? _hd9087690980_)
                                               (gx#core-identifier=?
                                                _hd9087690980_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90871_
                                               (gx#core-expand-begin-syntax%
                                                _hd90864_))
                                              (_E9087490973_))
                                          (_E9087490973_))))
                                  (_E9087490973_)))))
                      (_E9087390985_))))
                 (_eval-body90745_
                  (lambda (_rbody90753_)
                    (let _lp90755_ ((_rest90757_ _rbody90753_)
                                    (_body90758_ '())
                                    (_ebody90759_ '()))
                      (let* ((_rest9076090768_ _rest90757_)
                             (_else9076290776_
                              (lambda ()
                                (values _body90758_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90759_)
                                          (gx#stx-source _stx90742_))))))
                             (_K9076490852_
                              (lambda (_rest90779_ _hd90780_)
                                (let* ((_e9078190798_ _hd90780_)
                                       (_E9079390802_
                                        (lambda ()
                                          (_lp90755_
                                           _rest90779_
                                           (cons _hd90780_ _body90758_)
                                           (cons _hd90780_ _ebody90759_))))
                                       (_E9078390814_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9078190798_)
                                              (let ((_e9079490806_
                                                     (gx#syntax-e
                                                      _e9078190798_)))
                                                (let ((_hd9079590809_
                                                       (##car _e9079490806_))
                                                      (_tl9079690811_
                                                       (##cdr _e9079490806_)))
                                                  (if (and (gx#identifier?
                                                            _hd9079590809_)
                                                           (gx#core-identifier=?
                                                            _hd9079590809_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90755_
                                                           _rest90779_
                                                           (cons _hd90780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90758_)
                   _ebody90759_)
                  (_E9079390802_))
              (_E9079390802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9079390802_))))
                                       (_E9078290848_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9078190798_)
                                              (let ((_e9078490818_
                                                     (gx#syntax-e
                                                      _e9078190798_)))
                                                (let ((_hd9078590821_
                                                       (##car _e9078490818_))
                                                      (_tl9078690823_
                                                       (##cdr _e9078490818_)))
                                                  (if (and (gx#identifier?
                                                            _hd9078590821_)
                                                           (gx#core-identifier=?
                                                            _hd9078590821_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9078690823_)
                                                          (let ((_e9078790826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9078690823_)))
                    (let ((_hd9078890829_ (##car _e9078790826_))
                          (_tl9078990831_ (##cdr _e9078790826_)))
                      (let ((_hd-bind90834_ _hd9078890829_))
                        (if (gx#stx-pair? _tl9078990831_)
                            (let ((_e9079090836_ (gx#syntax-e _tl9078990831_)))
                              (let ((_hd9079190839_ (##car _e9079090836_))
                                    (_tl9079290841_ (##cdr _e9079090836_)))
                                (let ((_expr90844_ _hd9079190839_))
                                  (if (gx#stx-null? _tl9079290841_)
                                      (if '#t
                                          (let ((_ehd90846_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90834_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90844_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90780_))))
                                            (_lp90755_
                                             _rest90779_
                                             (cons _ehd90846_ _body90758_)
                                             (cons _ehd90846_ _ebody90759_)))
                                          (_E9078390814_))
                                      (_E9078390814_)))))
                            (_E9078390814_)))))
                  (_E9078390814_))
              (_E9078390814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9078390814_)))))
                                  (_E9078290848_)))))
                        (if (##pair? _rest9076090768_)
                            (let ((_hd9076590855_ (##car _rest9076090768_))
                                  (_tl9076690857_ (##cdr _rest9076090768_)))
                              (let* ((_hd90860_ _hd9076590855_)
                                     (_rest90862_ _tl9076690857_))
                                (_K9076490852_ _rest90862_ _hd90860_)))
                            (_else9076290776_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90748_
                     (gx#core-expand-block__1
                      _stx90742_
                      _expand-special90744_
                      '#f))
                    (_g91012_ (_eval-body90745_ _rbody90748_)))
               (begin
                 (let ((_g91013_
                        (if (##values? _g91012_)
                            (##vector-length _g91012_)
                            1)))
                   (if (not (##fx= _g91013_ 2))
                       (error "Context expects 2 values" _g91013_)))
                 (let ((_expanded-body90750_ (##vector-ref _g91012_ 0))
                       (_value90751_ (##vector-ref _g91012_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90750_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90751_ '())))
                    (gx#stx-source _stx90742_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90712_)
        (let* ((_e9071390720_ _stx90712_)
               (_E9071590724_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9071390720_)))
               (_E9071490738_
                (lambda ()
                  (if (gx#stx-pair? _e9071390720_)
                      (let ((_e9071690728_ (gx#syntax-e _e9071390720_)))
                        (let ((_hd9071790731_ (##car _e9071690728_))
                              (_tl9071890733_ (##cdr _e9071690728_)))
                          (let ((_body90736_ _tl9071890733_))
                            (if (gx#stx-list? _body90736_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90736_)
                                 (gx#stx-source _stx90712_))
                                (_E9071590724_)))))
                      (_E9071590724_)))))
          (_E9071490738_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90710_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90710_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90656_)
        (let* ((_e9065790670_ _stx90656_)
               (_E9065990674_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9065790670_)))
               (_E9065890706_
                (lambda ()
                  (if (gx#stx-pair? _e9065790670_)
                      (let ((_e9066090678_ (gx#syntax-e _e9065790670_)))
                        (let ((_hd9066190681_ (##car _e9066090678_))
                              (_tl9066290683_ (##cdr _e9066090678_)))
                          (if (gx#stx-pair? _tl9066290683_)
                              (let ((_e9066390686_
                                     (gx#syntax-e _tl9066290683_)))
                                (let ((_hd9066490689_ (##car _e9066390686_))
                                      (_tl9066590691_ (##cdr _e9066390686_)))
                                  (let ((_ann90694_ _hd9066490689_))
                                    (if (gx#stx-pair? _tl9066590691_)
                                        (let ((_e9066690696_
                                               (gx#syntax-e _tl9066590691_)))
                                          (let ((_hd9066790699_
                                                 (##car _e9066690696_))
                                                (_tl9066890701_
                                                 (##cdr _e9066690696_)))
                                            (let ((_expr90704_ _hd9066790699_))
                                              (if (gx#stx-null? _tl9066890701_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90704_) '())))
               (gx#stx-source _stx90656_))
              (_E9065990674_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9065990674_)))))
                                        (_E9065990674_)))))
                              (_E9065990674_))))
                      (_E9065990674_)))))
          (_E9065890706_))))
    (define gx#core-expand-local-block
      (lambda (_stx90380_ _body90381_)
        (letrec ((_expand-special90383_
                  (lambda (_hd90651_ _K90652_ _rest90653_ _r90654_)
                    (_K90652_
                     '()
                     (cons (_expand-internal90384_ _hd90651_ _rest90653_)
                           _r90654_))))
                 (_expand-internal90384_
                  (lambda (_hd90647_ _rest90648_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90386_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90647_ _rest90648_))
                          (gx#stx-source _stx90380_))
                         _expand-internal-special90385_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj91006
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj91006)
                       __obj91006))))
                 (_expand-internal-special90385_
                  (lambda (_hd90542_ _K90543_ _rest90544_ _r90545_)
                    (let* ((_e9054690571_ _hd90542_)
                           (_E9056690575_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9054690571_)))
                           (_E9056290587_
                            (lambda ()
                              (if (gx#stx-pair? _e9054690571_)
                                  (let ((_e9056790579_
                                         (gx#syntax-e _e9054690571_)))
                                    (let ((_hd9056890582_
                                           (##car _e9056790579_))
                                          (_tl9056990584_
                                           (##cdr _e9056790579_)))
                                      (if (and (gx#identifier? _hd9056890582_)
                                               (gx#core-identifier=?
                                                _hd9056890582_
                                                '%#declare))
                                          (if '#t
                                              (_K90543_
                                               _rest90544_
                                               (cons (gx#core-expand-declare%
                                                      _hd90542_)
                                                     _r90545_))
                                              (_E9056690575_))
                                          (_E9056690575_))))
                                  (_E9056690575_))))
                           (_E9055890599_
                            (lambda ()
                              (if (gx#stx-pair? _e9054690571_)
                                  (let ((_e9056390591_
                                         (gx#syntax-e _e9054690571_)))
                                    (let ((_hd9056490594_
                                           (##car _e9056390591_))
                                          (_tl9056590596_
                                           (##cdr _e9056390591_)))
                                      (if (and (gx#identifier? _hd9056490594_)
                                               (gx#core-identifier=?
                                                _hd9056490594_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90542_)
                                                (_K90543_
                                                 _rest90544_
                                                 _r90545_))
                                              (_E9056290587_))
                                          (_E9056290587_))))
                                  (_E9056290587_))))
                           (_E9054890611_
                            (lambda ()
                              (if (gx#stx-pair? _e9054690571_)
                                  (let ((_e9055990603_
                                         (gx#syntax-e _e9054690571_)))
                                    (let ((_hd9056090606_
                                           (##car _e9055990603_))
                                          (_tl9056190608_
                                           (##cdr _e9055990603_)))
                                      (if (and (gx#identifier? _hd9056090606_)
                                               (gx#core-identifier=?
                                                _hd9056090606_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90542_)
                                                (_K90543_
                                                 _rest90544_
                                                 _r90545_))
                                              (_E9055890599_))
                                          (_E9055890599_))))
                                  (_E9055890599_))))
                           (_E9054790643_
                            (lambda ()
                              (if (gx#stx-pair? _e9054690571_)
                                  (let ((_e9054990615_
                                         (gx#syntax-e _e9054690571_)))
                                    (let ((_hd9055090618_
                                           (##car _e9054990615_))
                                          (_tl9055190620_
                                           (##cdr _e9054990615_)))
                                      (if (and (gx#identifier? _hd9055090618_)
                                               (gx#core-identifier=?
                                                _hd9055090618_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9055190620_)
                                              (let ((_e9055290623_
                                                     (gx#syntax-e
                                                      _tl9055190620_)))
                                                (let ((_hd9055390626_
                                                       (##car _e9055290623_))
                                                      (_tl9055490628_
                                                       (##cdr _e9055290623_)))
                                                  (let ((_hd-bind90631_
                                                         _hd9055390626_))
                                                    (if (gx#stx-pair?
                                                         _tl9055490628_)
                                                        (let ((_e9055590633_
                                                               (gx#syntax-e
                                                                _tl9055490628_)))
                                                          (let ((_hd9055690636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9055590633_))
                        (_tl9055790638_ (##cdr _e9055590633_)))
                    (let ((_expr90641_ _hd9055690636_))
                      (if (gx#stx-null? _tl9055790638_)
                          (if (gx#core-bind-values? _hd-bind90631_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90631_)
                                (_K90543_
                                 _rest90544_
                                 (cons _hd90542_ _r90545_)))
                              (_E9054890611_))
                          (_E9054890611_)))))
                (_E9054890611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9054890611_))
                                          (_E9054890611_))))
                                  (_E9054890611_)))))
                      (_E9054790643_))))
                 (_wrap-internal90386_
                  (lambda (_rbody90388_)
                    (let _lp90390_ ((_rest90392_ _rbody90388_)
                                    (_decls90393_ '())
                                    (_bind90394_ '())
                                    (_body90395_ '()))
                      (let* ((_e9039690403_ _rest90392_)
                             (_E9039890452_
                              (lambda ()
                                (let* ((_body90447_
                                        (let* ((_body9040690416_ _body90395_)
                                               (_else9040990424_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90395_)
                                                   (gx#stx-source
                                                    _stx90380_)))))
                                          (let ((_K9041490444_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90380_)))
                                                (_K9041190430_
                                                 (lambda (_expr90428_)
                                                   _expr90428_)))
                                            (let ((_try-match9040890440_
                                                   (lambda ()
                                                     (if (##pair? _body9040690416_)
                                                         (let ((_tl9041390435_
                                                                (##cdr _body9040690416_))
                                                               (_hd9041290433_
                                                                (##car _body9040690416_)))
                                                           (if (##null? _tl9041390435_)
                                                               (let ((_expr90438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9041290433_))
                         (_K9041190430_ _expr90438_))
                       (_else9040990424_)))
                 (_else9040990424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9040690416_)
                                                  (_K9041490444_)
                                                  (_try-match9040890440_))))))
                                       (_body90449_
                                        (if (null? _bind90394_)
                                            _body90447_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90394_
                                                         (cons _body90447_
                                                               '())))
                                             (gx#stx-source _stx90380_)))))
                                  (if (null? _decls90393_)
                                      _body90449_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90393_
                                                   (cons _body90449_ '())))
                                       (gx#stx-source _stx90380_))))))
                             (_E9039790538_
                              (lambda ()
                                (if (gx#stx-pair? _e9039690403_)
                                    (let ((_e9039990456_
                                           (gx#syntax-e _e9039690403_)))
                                      (let ((_hd9040090459_
                                             (##car _e9039990456_))
                                            (_tl9040190461_
                                             (##cdr _e9039990456_)))
                                        (let* ((_hd90464_ _hd9040090459_)
                                               (_rest90466_ _tl9040190461_))
                                          (if '#t
                                              (let* ((_e9046790484_ _hd90464_)
                                                     (_E9047990488_
                                                      (lambda ()
                                                        (if (null? _bind90394_)
                                                            (_lp90390_
                                                             _rest90466_
                                                             _decls90393_
                                                             _bind90394_
                                                             (cons _hd90464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90395_))
                    (_lp90390_
                     _rest90466_
                     _decls90393_
                     (cons (cons '#f (cons _hd90464_ '())) _bind90394_)
                     _body90395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9046990502_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9046790484_)
                                                            (let ((_e9048090492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9046790484_)))
                      (let ((_hd9048190495_ (##car _e9048090492_))
                            (_tl9048290497_ (##cdr _e9048090492_)))
                        (if (and (gx#identifier? _hd9048190495_)
                                 (gx#core-identifier=?
                                  _hd9048190495_
                                  '%#declare))
                            (let ((_xdecls90500_ _tl9048290497_))
                              (if '#t
                                  (_lp90390_
                                   _rest90466_
                                   (gx#stx-foldr
                                    cons
                                    _decls90393_
                                    _xdecls90500_)
                                   _bind90394_
                                   _body90395_)
                                  (_E9047990488_)))
                            (_E9047990488_))))
                    (_E9047990488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9046890534_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9046790484_)
                                                            (let ((_e9047090506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9046790484_)))
                      (let ((_hd9047190509_ (##car _e9047090506_))
                            (_tl9047290511_ (##cdr _e9047090506_)))
                        (if (and (gx#identifier? _hd9047190509_)
                                 (gx#core-identifier=?
                                  _hd9047190509_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9047290511_)
                                (let ((_e9047390514_
                                       (gx#syntax-e _tl9047290511_)))
                                  (let ((_hd9047490517_ (##car _e9047390514_))
                                        (_tl9047590519_ (##cdr _e9047390514_)))
                                    (let ((_hd-bind90522_ _hd9047490517_))
                                      (if (gx#stx-pair? _tl9047590519_)
                                          (let ((_e9047690524_
                                                 (gx#syntax-e _tl9047590519_)))
                                            (let ((_hd9047790527_
                                                   (##car _e9047690524_))
                                                  (_tl9047890529_
                                                   (##cdr _e9047690524_)))
                                              (let ((_expr90532_
                                                     _hd9047790527_))
                                                (if (gx#stx-null?
                                                     _tl9047890529_)
                                                    (if '#t
                                                        (_lp90390_
                                                         _rest90466_
                                                         _decls90393_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90522_)
                             (cons (gx#core-expand-expression _expr90532_)
                                   '()))
                       _bind90394_)
                 _body90395_)
                (_E9046990502_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9046990502_)))))
                                          (_E9046990502_)))))
                                (_E9046990502_))
                            (_E9046990502_))))
                    (_E9046990502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9046890534_))
                                              (_E9039890452_)))))
                                    (_E9039890452_)))))
                        (_E9039790538_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90381_)
            (gx#stx-source _stx90380_))
           _expand-special90383_))))
    (define gx#core-expand-declare%
      (lambda (_stx90318_)
        (let* ((_e9031990326_ _stx90318_)
               (_E9032190330_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9031990326_)))
               (_E9032090376_
                (lambda ()
                  (if (gx#stx-pair? _e9031990326_)
                      (let ((_e9032290334_ (gx#syntax-e _e9031990326_)))
                        (let ((_hd9032390337_ (##car _e9032290334_))
                              (_tl9032490339_ (##cdr _e9032290334_)))
                          (let ((_body90342_ _tl9032490339_))
                            (if (gx#stx-list? _body90342_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90344_)
                                     (let* ((_e9034590352_ _decl90344_)
                                            (_E9034790356_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9034590352_)))
                                            (_E9034690372_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9034590352_)
                                                   (let ((_e9034890360_
                                                          (gx#syntax-e
                                                           _e9034590352_)))
                                                     (let ((_hd9034990363_
                                                            (##car _e9034890360_))
                                                           (_tl9035090365_
                                                            (##cdr _e9034890360_)))
                                                       (let* ((_head90368_
                                                               _hd9034990363_)
                                                              (_args90370_
                                                               _tl9035090365_))
                                                         (if (gx#stx-list?
                                                              _args90370_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90344_)
                                                             (_E9034790356_)))))
                                                   (_E9034790356_)))))
                                       (_E9034690372_)))
                                   _body90342_))
                                 (gx#stx-source _stx90318_))
                                (_E9032190330_)))))
                      (_E9032190330_)))))
          (_E9032090376_))))
    (define gx#core-expand-extern%
      (lambda (_stx90222_)
        (let* ((_e9022390230_ _stx90222_)
               (_E9022590234_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9022390230_)))
               (_E9022490314_
                (lambda ()
                  (if (gx#stx-pair? _e9022390230_)
                      (let ((_e9022690238_ (gx#syntax-e _e9022390230_)))
                        (let ((_hd9022790241_ (##car _e9022690238_))
                              (_tl9022890243_ (##cdr _e9022690238_)))
                          (let ((_body90246_ _tl9022890243_))
                            (if '#t
                                (let _lp90248_ ((_rest90250_ _body90246_)
                                                (_r90251_ '()))
                                  (let* ((_e9025290266_ _rest90250_)
                                         (_E9026490270_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx90222_)))
                                         (_E9025490274_
                                          (lambda ()
                                            (if (gx#stx-null? _e9025290266_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r90251_))
                                                     (gx#stx-source
                                                      _stx90222_))
                                                    (_E9026490270_))
                                                (_E9026490270_))))
                                         (_E9025390310_
                                          (lambda ()
                                            (if (gx#stx-pair? _e9025290266_)
                                                (let ((_e9025590278_
                                                       (gx#syntax-e
                                                        _e9025290266_)))
                                                  (let ((_hd9025690281_
                                                         (##car _e9025590278_))
                                                        (_tl9025790283_
                                                         (##cdr _e9025590278_)))
                                                    (if (gx#stx-pair?
                                                         _hd9025690281_)
                                                        (let ((_e9025890286_
                                                               (gx#syntax-e
                                                                _hd9025690281_)))
                                                          (let ((_hd9025990289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9025890286_))
                        (_tl9026090291_ (##cdr _e9025890286_)))
                    (let ((_id90294_ _hd9025990289_))
                      (if (gx#stx-pair? _tl9026090291_)
                          (let ((_e9026190296_ (gx#syntax-e _tl9026090291_)))
                            (let ((_hd9026290299_ (##car _e9026190296_))
                                  (_tl9026390301_ (##cdr _e9026190296_)))
                              (let ((_eid90304_ _hd9026290299_))
                                (if (gx#stx-null? _tl9026390301_)
                                    (let ((_rest90306_ _tl9025790283_))
                                      (if (and (gx#identifier? _id90294_)
                                               (gx#identifier? _eid90304_))
                                          (let ((_eid90308_
                                                 (gx#stx-e _eid90304_)))
                                            (gx#core-bind-extern!__0
                                             _id90294_
                                             _eid90308_)
                                            (_lp90248_
                                             _rest90306_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90294_)
                                                         (cons _eid90308_ '()))
                                                   _r90251_)))
                                          (_E9025490274_)))
                                    (_E9025490274_)))))
                          (_E9025490274_)))))
                (_E9025490274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9025490274_)))))
                                    (_E9025390310_)))
                                (_E9022590234_)))))
                      (_E9022590234_)))))
          (_E9022490314_))))
    (define gx#core-expand-define-values%
      (lambda (_stx90168_)
        (let* ((_e9016990182_ _stx90168_)
               (_E9017190186_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9016990182_)))
               (_E9017090218_
                (lambda ()
                  (if (gx#stx-pair? _e9016990182_)
                      (let ((_e9017290190_ (gx#syntax-e _e9016990182_)))
                        (let ((_hd9017390193_ (##car _e9017290190_))
                              (_tl9017490195_ (##cdr _e9017290190_)))
                          (if (gx#stx-pair? _tl9017490195_)
                              (let ((_e9017590198_
                                     (gx#syntax-e _tl9017490195_)))
                                (let ((_hd9017690201_ (##car _e9017590198_))
                                      (_tl9017790203_ (##cdr _e9017590198_)))
                                  (let ((_hd90206_ _hd9017690201_))
                                    (if (gx#stx-pair? _tl9017790203_)
                                        (let ((_e9017890208_
                                               (gx#syntax-e _tl9017790203_)))
                                          (let ((_hd9017990211_
                                                 (##car _e9017890208_))
                                                (_tl9018090213_
                                                 (##cdr _e9017890208_)))
                                            (let ((_expr90216_ _hd9017990211_))
                                              (if (gx#stx-null? _tl9018090213_)
                                                  (if (gx#core-bind-values?
                                                       _hd90206_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd90206_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd90206_)
                             (cons (gx#core-expand-expression _expr90216_)
                                   '())))
                 (gx#stx-source _stx90168_)))
              (_E9017190186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9017190186_)))))
                                        (_E9017190186_)))))
                              (_E9017190186_))))
                      (_E9017190186_)))))
          (_E9017090218_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx90112_)
        (let* ((_e9011390126_ _stx90112_)
               (_E9011590130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9011390126_)))
               (_E9011490164_
                (lambda ()
                  (if (gx#stx-pair? _e9011390126_)
                      (let ((_e9011690134_ (gx#syntax-e _e9011390126_)))
                        (let ((_hd9011790137_ (##car _e9011690134_))
                              (_tl9011890139_ (##cdr _e9011690134_)))
                          (if (gx#stx-pair? _tl9011890139_)
                              (let ((_e9011990142_
                                     (gx#syntax-e _tl9011890139_)))
                                (let ((_hd9012090145_ (##car _e9011990142_))
                                      (_tl9012190147_ (##cdr _e9011990142_)))
                                  (let ((_id90150_ _hd9012090145_))
                                    (if (gx#stx-pair? _tl9012190147_)
                                        (let ((_e9012290152_
                                               (gx#syntax-e _tl9012190147_)))
                                          (let ((_hd9012390155_
                                                 (##car _e9012290152_))
                                                (_tl9012490157_
                                                 (##cdr _e9012290152_)))
                                            (let ((_binding-id90160_
                                                   _hd9012390155_))
                                              (if (gx#stx-null? _tl9012490157_)
                                                  (if (and (gx#identifier?
                                                            _id90150_)
                                                           (gx#identifier?
                                                            _binding-id90160_))
                                                      (let ((_eid90162_
                                                             (gx#stx-e
                                                              _binding-id90160_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id90150_
                                                         _eid90162_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90150_)
                             (cons _eid90162_ '())))))
              (_E9011590130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9011590130_)))))
                                        (_E9011590130_)))))
                              (_E9011590130_))))
                      (_E9011590130_)))))
          (_E9011490164_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx90055_)
        (let* ((_e9005690069_ _stx90055_)
               (_E9005890073_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9005690069_)))
               (_E9005790108_
                (lambda ()
                  (if (gx#stx-pair? _e9005690069_)
                      (let ((_e9005990077_ (gx#syntax-e _e9005690069_)))
                        (let ((_hd9006090080_ (##car _e9005990077_))
                              (_tl9006190082_ (##cdr _e9005990077_)))
                          (if (gx#stx-pair? _tl9006190082_)
                              (let ((_e9006290085_
                                     (gx#syntax-e _tl9006190082_)))
                                (let ((_hd9006390088_ (##car _e9006290085_))
                                      (_tl9006490090_ (##cdr _e9006290085_)))
                                  (let ((_id90093_ _hd9006390088_))
                                    (if (gx#stx-pair? _tl9006490090_)
                                        (let ((_e9006590095_
                                               (gx#syntax-e _tl9006490090_)))
                                          (let ((_hd9006690098_
                                                 (##car _e9006590095_))
                                                (_tl9006790100_
                                                 (##cdr _e9006590095_)))
                                            (let ((_expr90103_ _hd9006690098_))
                                              (if (gx#stx-null? _tl9006790100_)
                                                  (if (gx#identifier?
                                                       _id90093_)
                                                      (let ((_g91014_
                                                             (gx#core-expand-expression+1
                                                              _expr90103_)))
                                                        (begin
                                                          (let ((_g91015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g91014_)
                             (##vector-length _g91014_)
                             1)))
                    (if (not (##fx= _g91015_ 2))
                        (error "Context expects 2 values" _g91015_)))
                  (let ((_e-stx90105_ (##vector-ref _g91014_ 0))
                        (_e90106_ (##vector-ref _g91014_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id90093_ _e90106_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id90093_)
                                   (cons _e-stx90105_ '())))
                       (gx#stx-source _stx90055_))))))
              (_E9005890073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9005890073_)))))
                                        (_E9005890073_)))))
                              (_E9005890073_))))
                      (_E9005890073_)))))
          (_E9005790108_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx89999_)
        (let* ((_e9000090013_ _stx89999_)
               (_E9000290017_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9000090013_)))
               (_E9000190051_
                (lambda ()
                  (if (gx#stx-pair? _e9000090013_)
                      (let ((_e9000390021_ (gx#syntax-e _e9000090013_)))
                        (let ((_hd9000490024_ (##car _e9000390021_))
                              (_tl9000590026_ (##cdr _e9000390021_)))
                          (if (gx#stx-pair? _tl9000590026_)
                              (let ((_e9000690029_
                                     (gx#syntax-e _tl9000590026_)))
                                (let ((_hd9000790032_ (##car _e9000690029_))
                                      (_tl9000890034_ (##cdr _e9000690029_)))
                                  (let ((_id90037_ _hd9000790032_))
                                    (if (gx#stx-pair? _tl9000890034_)
                                        (let ((_e9000990039_
                                               (gx#syntax-e _tl9000890034_)))
                                          (let ((_hd9001090042_
                                                 (##car _e9000990039_))
                                                (_tl9001190044_
                                                 (##cdr _e9000990039_)))
                                            (let ((_alias-id90047_
                                                   _hd9001090042_))
                                              (if (gx#stx-null? _tl9001190044_)
                                                  (if (and (gx#identifier?
                                                            _id90037_)
                                                           (gx#identifier?
                                                            _alias-id90047_))
                                                      (let ((_alias-id90049_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id90047_)))
                                                        (gx#core-bind-alias!__0
                                                         _id90037_
                                                         _alias-id90049_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90037_)
                             (cons _alias-id90049_ '())))))
              (_E9000290017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9000290017_)))))
                                        (_E9000290017_)))))
                              (_E9000290017_))))
                      (_E9000290017_)))))
          (_E9000190051_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89942_ _wrap?89943_)
        (let* ((_e8994489954_ _stx89942_)
               (_E8994689958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8994489954_)))
               (_E8994589985_
                (lambda ()
                  (if (gx#stx-pair? _e8994489954_)
                      (let ((_e8994789962_ (gx#syntax-e _e8994489954_)))
                        (let ((_hd8994889965_ (##car _e8994789962_))
                              (_tl8994989967_ (##cdr _e8994789962_)))
                          (if (gx#stx-pair? _tl8994989967_)
                              (let ((_e8995089970_
                                     (gx#syntax-e _tl8994989967_)))
                                (let ((_hd8995189973_ (##car _e8995089970_))
                                      (_tl8995289975_ (##cdr _e8995089970_)))
                                  (let* ((_hd89978_ _hd8995189973_)
                                         (_body89980_ _tl8995289975_))
                                    (if (gx#core-bind-values? _hd89978_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89978_)
                                           (let ((_body89983_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89978_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89942_
                                                               _body89980_)
                                                              '()))))
                                             (if _wrap?89943_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89983_)
                                                  (gx#stx-source _stx89942_))
                                                 _body89983_)))
                                         gx#current-expander-context
                                         (let ((__obj91007
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91007)
                                           __obj91007))
                                        (_E8994689958_)))))
                              (_E8994689958_))))
                      (_E8994689958_)))))
          (_E8994589985_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx89992_)
        (let ((_wrap?89994_ '#t))
          (gx#core-expand-lambda%__% _stx89992_ _wrap?89994_))))
    (define gx#core-expand-lambda%
      (lambda _g91017_
        (let ((_g91016_ (##length _g91017_)))
          (cond ((##fx= _g91016_ 1)
                 (apply (lambda (_stx89992_)
                          (gx#core-expand-lambda%__0 _stx89992_))
                        _g91017_))
                ((##fx= _g91016_ 2)
                 (apply (lambda (_stx89996_ _wrap?89997_)
                          (gx#core-expand-lambda%__% _stx89996_ _wrap?89997_))
                        _g91017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g91017_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89906_)
        (let* ((_e8990789914_ _stx89906_)
               (_E8990989918_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8990789914_)))
               (_E8990889937_
                (lambda ()
                  (if (gx#stx-pair? _e8990789914_)
                      (let ((_e8991089922_ (gx#syntax-e _e8990789914_)))
                        (let ((_hd8991189925_ (##car _e8991089922_))
                              (_tl8991289927_ (##cdr _e8991089922_)))
                          (let ((_clauses89930_ _tl8991289927_))
                            (if (gx#stx-list? _clauses89930_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89932_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89932_)
                                       (let ((_$e89934_
                                              (gx#stx-source _clause89932_)))
                                         (if _$e89934_
                                             _$e89934_
                                             (gx#stx-source _stx89906_))))
                                      '#f))
                                   _clauses89930_))
                                 (gx#stx-source _stx89906_))
                                (_E8990989918_)))))
                      (_E8990989918_)))))
          (_E8990889937_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89860_)
        (let* ((_e8986189871_ _stx89860_)
               (_E8986389875_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8986189871_)))
               (_E8986289902_
                (lambda ()
                  (if (gx#stx-pair? _e8986189871_)
                      (let ((_e8986489879_ (gx#syntax-e _e8986189871_)))
                        (let ((_hd8986589882_ (##car _e8986489879_))
                              (_tl8986689884_ (##cdr _e8986489879_)))
                          (if (gx#stx-pair? _tl8986689884_)
                              (let ((_e8986789887_
                                     (gx#syntax-e _tl8986689884_)))
                                (let ((_hd8986889890_ (##car _e8986789887_))
                                      (_tl8986989892_ (##cdr _e8986789887_)))
                                  (let* ((_hd89895_ _hd8986889890_)
                                         (_body89897_ _tl8986989892_))
                                    (if (gx#core-expand-let-bind? _hd89895_)
                                        (let ((_expressions89899_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89895_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89895_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89895_
                                                           _expressions89899_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89860_
                         _body89897_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89860_)))
                                           gx#current-expander-context
                                           (let ((__obj91008
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91008)
                                             __obj91008)))
                                        (_E8986389875_)))))
                              (_E8986389875_))))
                      (_E8986389875_)))))
          (_E8986289902_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89805_ _form89806_)
        (let* ((_e8980789817_ _stx89805_)
               (_E8980989821_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8980789817_)))
               (_E8980889846_
                (lambda ()
                  (if (gx#stx-pair? _e8980789817_)
                      (let ((_e8981089825_ (gx#syntax-e _e8980789817_)))
                        (let ((_hd8981189828_ (##car _e8981089825_))
                              (_tl8981289830_ (##cdr _e8981089825_)))
                          (if (gx#stx-pair? _tl8981289830_)
                              (let ((_e8981389833_
                                     (gx#syntax-e _tl8981289830_)))
                                (let ((_hd8981489836_ (##car _e8981389833_))
                                      (_tl8981589838_ (##cdr _e8981389833_)))
                                  (let* ((_hd89841_ _hd8981489836_)
                                         (_body89843_ _tl8981589838_))
                                    (if (gx#core-expand-let-bind? _hd89841_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89841_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89806_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89841_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89841_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89805_
                                                               _body89843_)
                                                              '())))
                                            (gx#stx-source _stx89805_)))
                                         gx#current-expander-context
                                         (let ((__obj91009
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91009)
                                           __obj91009))
                                        (_E8980989821_)))))
                              (_E8980989821_))))
                      (_E8980989821_)))))
          (_E8980889846_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89853_)
        (let ((_form89855_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89853_ _form89855_))))
    (define gx#core-expand-letrec-values%
      (lambda _g91019_
        (let ((_g91018_ (##length _g91019_)))
          (cond ((##fx= _g91018_ 1)
                 (apply (lambda (_stx89853_)
                          (gx#core-expand-letrec-values%__0 _stx89853_))
                        _g91019_))
                ((##fx= _g91018_ 2)
                 (apply (lambda (_stx89857_ _form89858_)
                          (gx#core-expand-letrec-values%__%
                           _stx89857_
                           _form89858_))
                        _g91019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g91019_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89802_)
        (gx#core-expand-letrec-values%__% _stx89802_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89759_)
        (if (gx#stx-list? _stx89759_)
            (gx#stx-andmap
             (lambda (_bind89761_)
               (let* ((_e8976289772_ _bind89761_)
                      (_E8976489776_ (lambda () '#f))
                      (_E8976389798_
                       (lambda ()
                         (if (gx#stx-pair? _e8976289772_)
                             (let ((_e8976589780_ (gx#syntax-e _e8976289772_)))
                               (let ((_hd8976689783_ (##car _e8976589780_))
                                     (_tl8976789785_ (##cdr _e8976589780_)))
                                 (let ((_hd89788_ _hd8976689783_))
                                   (if (gx#stx-pair? _tl8976789785_)
                                       (let ((_e8976889790_
                                              (gx#syntax-e _tl8976789785_)))
                                         (let ((_hd8976989793_
                                                (##car _e8976889790_))
                                               (_tl8977089795_
                                                (##cdr _e8976889790_)))
                                           (if (gx#stx-null? _tl8977089795_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89788_)
                                                   (_E8976489776_))
                                               (_E8976489776_))))
                                       (_E8976489776_)))))
                             (_E8976489776_)))))
                 (_E8976389798_)))
             _stx89759_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89718_)
        (let* ((_e8971989729_ _bind89718_)
               (_E8972189733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8971989729_)))
               (_E8972089755_
                (lambda ()
                  (if (gx#stx-pair? _e8971989729_)
                      (let ((_e8972289737_ (gx#syntax-e _e8971989729_)))
                        (let ((_hd8972389740_ (##car _e8972289737_))
                              (_tl8972489742_ (##cdr _e8972289737_)))
                          (if (gx#stx-pair? _tl8972489742_)
                              (let ((_e8972589745_
                                     (gx#syntax-e _tl8972489742_)))
                                (let ((_hd8972689748_ (##car _e8972589745_))
                                      (_tl8972789750_ (##cdr _e8972589745_)))
                                  (let ((_expr89753_ _hd8972689748_))
                                    (if (gx#stx-null? _tl8972789750_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89753_)
                                            (_E8972189733_))
                                        (_E8972189733_)))))
                              (_E8972189733_))))
                      (_E8972189733_)))))
          (_E8972089755_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89677_)
        (let* ((_e8967889688_ _bind89677_)
               (_E8968089692_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8967889688_)))
               (_E8967989714_
                (lambda ()
                  (if (gx#stx-pair? _e8967889688_)
                      (let ((_e8968189696_ (gx#syntax-e _e8967889688_)))
                        (let ((_hd8968289699_ (##car _e8968189696_))
                              (_tl8968389701_ (##cdr _e8968189696_)))
                          (let ((_hd89704_ _hd8968289699_))
                            (if (gx#stx-pair? _tl8968389701_)
                                (let ((_e8968489706_
                                       (gx#syntax-e _tl8968389701_)))
                                  (let ((_hd8968589709_ (##car _e8968489706_))
                                        (_tl8968689711_ (##cdr _e8968489706_)))
                                    (if (gx#stx-null? _tl8968689711_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89704_)
                                            (_E8968089692_))
                                        (_E8968089692_))))
                                (_E8968089692_)))))
                      (_E8968089692_)))))
          (_E8967989714_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89635_ _expr89636_)
        (let* ((_e8963789647_ _bind89635_)
               (_E8963989651_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8963789647_)))
               (_E8963889673_
                (lambda ()
                  (if (gx#stx-pair? _e8963789647_)
                      (let ((_e8964089655_ (gx#syntax-e _e8963789647_)))
                        (let ((_hd8964189658_ (##car _e8964089655_))
                              (_tl8964289660_ (##cdr _e8964089655_)))
                          (let ((_hd89663_ _hd8964189658_))
                            (if (gx#stx-pair? _tl8964289660_)
                                (let ((_e8964389665_
                                       (gx#syntax-e _tl8964289660_)))
                                  (let ((_hd8964489668_ (##car _e8964389665_))
                                        (_tl8964589670_ (##cdr _e8964389665_)))
                                    (if (gx#stx-null? _tl8964589670_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89663_)
                                                  (cons _expr89636_ '()))
                                            (_E8963989651_))
                                        (_E8963989651_))))
                                (_E8963989651_)))))
                      (_E8963989651_)))))
          (_E8963889673_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89589_)
        (let* ((_e8959089600_ _stx89589_)
               (_E8959289604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8959089600_)))
               (_E8959189631_
                (lambda ()
                  (if (gx#stx-pair? _e8959089600_)
                      (let ((_e8959389608_ (gx#syntax-e _e8959089600_)))
                        (let ((_hd8959489611_ (##car _e8959389608_))
                              (_tl8959589613_ (##cdr _e8959389608_)))
                          (if (gx#stx-pair? _tl8959589613_)
                              (let ((_e8959689616_
                                     (gx#syntax-e _tl8959589613_)))
                                (let ((_hd8959789619_ (##car _e8959689616_))
                                      (_tl8959889621_ (##cdr _e8959689616_)))
                                  (let* ((_hd89624_ _hd8959789619_)
                                         (_body89626_ _tl8959889621_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89624_)
                                        (let ((_expanders89628_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89624_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89624_
                                              _expanders89628_)
                                             (gx#core-expand-local-block
                                              _stx89589_
                                              _body89626_))
                                           gx#current-expander-context
                                           (let ((__obj91010
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91010)
                                             __obj91010)))
                                        (_E8959289604_)))))
                              (_E8959289604_))))
                      (_E8959289604_)))))
          (_E8959189631_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89538_)
        (let* ((_e8953989549_ _stx89538_)
               (_E8954189553_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8953989549_)))
               (_E8954089585_
                (lambda ()
                  (if (gx#stx-pair? _e8953989549_)
                      (let ((_e8954289557_ (gx#syntax-e _e8953989549_)))
                        (let ((_hd8954389560_ (##car _e8954289557_))
                              (_tl8954489562_ (##cdr _e8954289557_)))
                          (if (gx#stx-pair? _tl8954489562_)
                              (let ((_e8954589565_
                                     (gx#syntax-e _tl8954489562_)))
                                (let ((_hd8954689568_ (##car _e8954589565_))
                                      (_tl8954789570_ (##cdr _e8954589565_)))
                                  (let* ((_hd89573_ _hd8954689568_)
                                         (_body89575_ _tl8954789570_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89573_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89573_
                                            (make-list
                                             (gx#stx-length _hd89573_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8957789580_
                                                     _g8957889582_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8957789580_
                                               _g8957889582_
                                               '#t))
                                            _hd89573_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89573_))
                                           (gx#core-expand-local-block
                                            _stx89538_
                                            _body89575_))
                                         gx#current-expander-context
                                         (let ((__obj91011
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91011)
                                           __obj91011))
                                        (_E8954189553_)))))
                              (_E8954189553_))))
                      (_E8954189553_)))))
          (_E8954089585_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89495_)
        (if (gx#stx-list? _stx89495_)
            (gx#stx-andmap
             (lambda (_bind89497_)
               (let* ((_e8949889508_ _bind89497_)
                      (_E8950089512_ (lambda () '#f))
                      (_E8949989534_
                       (lambda ()
                         (if (gx#stx-pair? _e8949889508_)
                             (let ((_e8950189516_ (gx#syntax-e _e8949889508_)))
                               (let ((_hd8950289519_ (##car _e8950189516_))
                                     (_tl8950389521_ (##cdr _e8950189516_)))
                                 (let ((_hd89524_ _hd8950289519_))
                                   (if (gx#stx-pair? _tl8950389521_)
                                       (let ((_e8950489526_
                                              (gx#syntax-e _tl8950389521_)))
                                         (let ((_hd8950589529_
                                                (##car _e8950489526_))
                                               (_tl8950689531_
                                                (##cdr _e8950489526_)))
                                           (if (gx#stx-null? _tl8950689531_)
                                               (if '#t
                                                   (gx#identifier? _hd89524_)
                                                   (_E8950089512_))
                                               (_E8950089512_))))
                                       (_E8950089512_)))))
                             (_E8950089512_)))))
                 (_E8949989534_)))
             _stx89495_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89452_)
        (let* ((_e8945389463_ _bind89452_)
               (_E8945589467_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8945389463_)))
               (_E8945489491_
                (lambda ()
                  (if (gx#stx-pair? _e8945389463_)
                      (let ((_e8945689471_ (gx#syntax-e _e8945389463_)))
                        (let ((_hd8945789474_ (##car _e8945689471_))
                              (_tl8945889476_ (##cdr _e8945689471_)))
                          (if (gx#stx-pair? _tl8945889476_)
                              (let ((_e8945989479_
                                     (gx#syntax-e _tl8945889476_)))
                                (let ((_hd8946089482_ (##car _e8945989479_))
                                      (_tl8946189484_ (##cdr _e8945989479_)))
                                  (let ((_expr89487_ _hd8946089482_))
                                    (if (gx#stx-null? _tl8946189484_)
                                        (if '#t
                                            (let ((_g91020_
                                                   (gx#core-expand-expression+1
                                                    _expr89487_)))
                                              (begin
                                                (let ((_g91021_
                                                       (if (##values? _g91020_)
                                                           (##vector-length
                                                            _g91020_)
                                                           1)))
                                                  (if (not (##fx= _g91021_ 2))
                                                      (error "Context expects 2 values"
                                                             _g91021_)))
                                                (let ((_e89489_
                                                       (##vector-ref
                                                        _g91020_
                                                        1)))
                                                  _e89489_)))
                                            (_E8945589467_))
                                        (_E8945589467_)))))
                              (_E8945589467_))))
                      (_E8945589467_)))))
          (_E8945489491_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89397_ _e89398_ _rebind?89399_)
        (let* ((_e8940089410_ _bind89397_)
               (_E8940289414_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8940089410_)))
               (_E8940189436_
                (lambda ()
                  (if (gx#stx-pair? _e8940089410_)
                      (let ((_e8940389418_ (gx#syntax-e _e8940089410_)))
                        (let ((_hd8940489421_ (##car _e8940389418_))
                              (_tl8940589423_ (##cdr _e8940389418_)))
                          (let ((_id89426_ _hd8940489421_))
                            (if (gx#stx-pair? _tl8940589423_)
                                (let ((_e8940689428_
                                       (gx#syntax-e _tl8940589423_)))
                                  (let ((_hd8940789431_ (##car _e8940689428_))
                                        (_tl8940889433_ (##cdr _e8940689428_)))
                                    (if (gx#stx-null? _tl8940889433_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89426_
                                             _e89398_
                                             _rebind?89399_)
                                            (_E8940289414_))
                                        (_E8940289414_))))
                                (_E8940289414_)))))
                      (_E8940289414_)))))
          (_E8940189436_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89443_ _e89444_)
        (let ((_rebind?89446_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89443_
           _e89444_
           _rebind?89446_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g91023_
        (let ((_g91022_ (##length _g91023_)))
          (cond ((##fx= _g91022_ 2)
                 (apply (lambda (_bind89443_ _e89444_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89443_
                           _e89444_))
                        _g91023_))
                ((##fx= _g91022_ 3)
                 (apply (lambda (_bind89448_ _e89449_ _rebind?89450_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89448_
                           _e89449_
                           _rebind?89450_))
                        _g91023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g91023_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89355_)
        (let* ((_e8935689366_ _stx89355_)
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
    (define gx#core-expand-quote%
      (lambda (_stx89314_)
        (let* ((_e8931589325_ _stx89314_)
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
                          (if (gx#stx-pair? _tl8932089338_)
                              (let ((_e8932189341_
                                     (gx#syntax-e _tl8932089338_)))
                                (let ((_hd8932289344_ (##car _e8932189341_))
                                      (_tl8932389346_ (##cdr _e8932189341_)))
                                  (let ((_e89349_ _hd8932289344_))
                                    (if (gx#stx-null? _tl8932389346_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89349_)
                                                         '()))
                                             (gx#stx-source _stx89314_))
                                            (_E8931789329_))
                                        (_E8931789329_)))))
                              (_E8931789329_))))
                      (_E8931789329_)))))
          (_E8931689351_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89273_)
        (let* ((_e8927489284_ _stx89273_)
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
                          (if (gx#stx-pair? _tl8927989297_)
                              (let ((_e8928089300_
                                     (gx#syntax-e _tl8927989297_)))
                                (let ((_hd8928189303_ (##car _e8928089300_))
                                      (_tl8928289305_ (##cdr _e8928089300_)))
                                  (let ((_e89308_ _hd8928189303_))
                                    (if (gx#stx-null? _tl8928289305_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89308_)
                                                         '()))
                                             (gx#stx-source _stx89273_))
                                            (_E8927689288_))
                                        (_E8927689288_)))))
                              (_E8927689288_))))
                      (_E8927689288_)))))
          (_E8927589310_))))
    (define gx#core-expand-call%
      (lambda (_stx89230_)
        (let* ((_e8923189241_ _stx89230_)
               (_E8923389245_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8923189241_)))
               (_E8923289269_
                (lambda ()
                  (if (gx#stx-pair? _e8923189241_)
                      (let ((_e8923489249_ (gx#syntax-e _e8923189241_)))
                        (let ((_hd8923589252_ (##car _e8923489249_))
                              (_tl8923689254_ (##cdr _e8923489249_)))
                          (if (gx#stx-pair? _tl8923689254_)
                              (let ((_e8923789257_
                                     (gx#syntax-e _tl8923689254_)))
                                (let ((_hd8923889260_ (##car _e8923789257_))
                                      (_tl8923989262_ (##cdr _e8923789257_)))
                                  (let* ((_rator89265_ _hd8923889260_)
                                         (_args89267_ _tl8923989262_))
                                    (if (gx#stx-list? _args89267_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89265_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89267_))
                                         (gx#stx-source _stx89230_))
                                        (_E8923389245_)))))
                              (_E8923389245_))))
                      (_E8923389245_)))))
          (_E8923289269_))))
    (define gx#core-expand-if%
      (lambda (_stx89163_)
        (let* ((_e8916489180_ _stx89163_)
               (_E8916689184_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8916489180_)))
               (_E8916589226_
                (lambda ()
                  (if (gx#stx-pair? _e8916489180_)
                      (let ((_e8916789188_ (gx#syntax-e _e8916489180_)))
                        (let ((_hd8916889191_ (##car _e8916789188_))
                              (_tl8916989193_ (##cdr _e8916789188_)))
                          (if (gx#stx-pair? _tl8916989193_)
                              (let ((_e8917089196_
                                     (gx#syntax-e _tl8916989193_)))
                                (let ((_hd8917189199_ (##car _e8917089196_))
                                      (_tl8917289201_ (##cdr _e8917089196_)))
                                  (let ((_test89204_ _hd8917189199_))
                                    (if (gx#stx-pair? _tl8917289201_)
                                        (let ((_e8917389206_
                                               (gx#syntax-e _tl8917289201_)))
                                          (let ((_hd8917489209_
                                                 (##car _e8917389206_))
                                                (_tl8917589211_
                                                 (##cdr _e8917389206_)))
                                            (let ((_K89214_ _hd8917489209_))
                                              (if (gx#stx-pair? _tl8917589211_)
                                                  (let ((_e8917689216_
                                                         (gx#syntax-e
                                                          _tl8917589211_)))
                                                    (let ((_hd8917789219_
                                                           (##car _e8917689216_))
                                                          (_tl8917889221_
                                                           (##cdr _e8917689216_)))
                                                      (let ((_E89224_
                                                             _hd8917789219_))
                                                        (if (gx#stx-null?
                                                             _tl8917889221_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test89204_)
                                     (cons (gx#core-expand-expression _K89214_)
                                           (cons (gx#core-expand-expression
                                                  _E89224_)
                                                 '()))))
                         (gx#stx-source _stx89163_))
                        (_E8916689184_))
                    (_E8916689184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8916689184_)))))
                                        (_E8916689184_)))))
                              (_E8916689184_))))
                      (_E8916689184_)))))
          (_E8916589226_))))
    (define gx#core-expand-ref%
      (lambda (_stx89122_)
        (let* ((_e8912389133_ _stx89122_)
               (_E8912589137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8912389133_)))
               (_E8912489159_
                (lambda ()
                  (if (gx#stx-pair? _e8912389133_)
                      (let ((_e8912689141_ (gx#syntax-e _e8912389133_)))
                        (let ((_hd8912789144_ (##car _e8912689141_))
                              (_tl8912889146_ (##cdr _e8912689141_)))
                          (if (gx#stx-pair? _tl8912889146_)
                              (let ((_e8912989149_
                                     (gx#syntax-e _tl8912889146_)))
                                (let ((_hd8913089152_ (##car _e8912989149_))
                                      (_tl8913189154_ (##cdr _e8912989149_)))
                                  (let ((_id89157_ _hd8913089152_))
                                    (if (gx#stx-null? _tl8913189154_)
                                        (if (gx#identifier? _id89157_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id89157_
                                                          _stx89122_)
                                                         '()))
                                             (gx#stx-source _stx89122_))
                                            (_E8912589137_))
                                        (_E8912589137_)))))
                              (_E8912589137_))))
                      (_E8912589137_)))))
          (_E8912489159_))))
    (define gx#core-expand-setq%
      (lambda (_stx89068_)
        (let* ((_e8906989082_ _stx89068_)
               (_E8907189086_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8906989082_)))
               (_E8907089118_
                (lambda ()
                  (if (gx#stx-pair? _e8906989082_)
                      (let ((_e8907289090_ (gx#syntax-e _e8906989082_)))
                        (let ((_hd8907389093_ (##car _e8907289090_))
                              (_tl8907489095_ (##cdr _e8907289090_)))
                          (if (gx#stx-pair? _tl8907489095_)
                              (let ((_e8907589098_
                                     (gx#syntax-e _tl8907489095_)))
                                (let ((_hd8907689101_ (##car _e8907589098_))
                                      (_tl8907789103_ (##cdr _e8907589098_)))
                                  (let ((_id89106_ _hd8907689101_))
                                    (if (gx#stx-pair? _tl8907789103_)
                                        (let ((_e8907889108_
                                               (gx#syntax-e _tl8907789103_)))
                                          (let ((_hd8907989111_
                                                 (##car _e8907889108_))
                                                (_tl8908089113_
                                                 (##cdr _e8907889108_)))
                                            (let ((_expr89116_ _hd8907989111_))
                                              (if (gx#stx-null? _tl8908089113_)
                                                  (if (gx#identifier?
                                                       _id89106_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id89106_
                            _stx89068_)
                           (cons (gx#core-expand-expression _expr89116_) '())))
               (gx#stx-source _stx89068_))
              (_E8907189086_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8907189086_)))))
                                        (_E8907189086_)))))
                              (_E8907189086_))))
                      (_E8907189086_)))))
          (_E8907089118_))))
    (define gx#macro-expand-extern
      (lambda (_stx88916_)
        (letrec ((_generate88918_
                  (lambda (_body88948_)
                    (let _lp88950_ ((_rest88952_ _body88948_)
                                    (_ns88953_ (gx#core-context-namespace__0))
                                    (_r88954_ '()))
                      (let* ((_e8895588970_ _rest88952_)
                             (_E8896888974_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8895588970_)))
                             (_E8896488978_
                              (lambda ()
                                (if (gx#stx-null? _e8895588970_)
                                    (if '#t (reverse _r88954_) (_E8896888974_))
                                    (_E8896888974_))))
                             (_E8895789035_
                              (lambda ()
                                (if (gx#stx-pair? _e8895588970_)
                                    (let ((_e8896588982_
                                           (gx#syntax-e _e8895588970_)))
                                      (let ((_hd8896688985_
                                             (##car _e8896588982_))
                                            (_tl8896788987_
                                             (##cdr _e8896588982_)))
                                        (let* ((_hd88990_ _hd8896688985_)
                                               (_rest88992_ _tl8896788987_))
                                          (if '#t
                                              (if (gx#identifier? _hd88990_)
                                                  (_lp88950_
                                                   _rest88992_
                                                   _ns88953_
                                                   (cons (cons _hd88990_
                                                               (cons (if _ns88953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd88990_
                                  _ns88953_
                                  '"#"
                                  _hd88990_)
                                 _hd88990_)
                             '()))
                 _r88954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8899389003_
                                                          _hd88990_)
                                                         (_E8899589007_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8899389003_)))
                                                         (_E8899489031_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8899389003_)
                        (let ((_e8899689011_ (gx#syntax-e _e8899389003_)))
                          (let ((_hd8899789014_ (##car _e8899689011_))
                                (_tl8899889016_ (##cdr _e8899689011_)))
                            (let ((_id89019_ _hd8899789014_))
                              (if (gx#stx-pair? _tl8899889016_)
                                  (let ((_e8899989021_
                                         (gx#syntax-e _tl8899889016_)))
                                    (let ((_hd8900089024_
                                           (##car _e8899989021_))
                                          (_tl8900189026_
                                           (##cdr _e8899989021_)))
                                      (let ((_eid89029_ _hd8900089024_))
                                        (if (gx#stx-null? _tl8900189026_)
                                            (if (and (gx#identifier? _id89019_)
                                                     (gx#identifier?
                                                      _eid89029_))
                                                (_lp88950_
                                                 _rest88992_
                                                 _ns88953_
                                                 (cons (cons _id89019_
                                                             (cons _eid89029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8899589007_))
                                            (_E8899589007_)))))
                                  (_E8899589007_)))))
                        (_E8899589007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8899489031_)))
                                              (_E8896488978_)))))
                                    (_E8896488978_))))
                             (_E8895689064_
                              (lambda ()
                                (if (gx#stx-pair? _e8895588970_)
                                    (let ((_e8895889039_
                                           (gx#syntax-e _e8895588970_)))
                                      (let ((_hd8895989042_
                                             (##car _e8895889039_))
                                            (_tl8896089044_
                                             (##cdr _e8895889039_)))
                                        (if (eq? (gx#stx-e _hd8895989042_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8896089044_)
                                                (let ((_e8896189047_
                                                       (gx#syntax-e
                                                        _tl8896089044_)))
                                                  (let ((_hd8896289050_
                                                         (##car _e8896189047_))
                                                        (_tl8896389052_
                                                         (##cdr _e8896189047_)))
                                                    (let* ((_ns89055_
                                                            _hd8896289050_)
                                                           (_rest89057_
                                                            _tl8896389052_))
                                                      (if '#t
                                                          (let ((_ns89062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns89055_)
                             (symbol->string (gx#stx-e _ns89055_))
                             (if (or (gx#stx-string? _ns89055_)
                                     (gx#stx-false? _ns89055_))
                                 (gx#stx-e _ns89055_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88916_
                                  _ns89055_)))))
                    (_lp88950_ _rest89057_ _ns89062_ _r88954_))
                  (_E8895789035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8895789035_))
                                            (_E8895789035_))))
                                    (_E8895789035_)))))
                        (_E8895689064_))))))
          (let* ((_e8891988926_ _stx88916_)
                 (_E8892188930_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8891988926_)))
                 (_E8892088944_
                  (lambda ()
                    (if (gx#stx-pair? _e8891988926_)
                        (let ((_e8892288934_ (gx#syntax-e _e8891988926_)))
                          (let ((_hd8892388937_ (##car _e8892288934_))
                                (_tl8892488939_ (##cdr _e8892288934_)))
                            (let ((_body88942_ _tl8892488939_))
                              (if (gx#stx-list? _body88942_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88918_ _body88942_))
                                  (_E8892188930_)))))
                        (_E8892188930_)))))
            (_E8892088944_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88862_)
        (let* ((_e8886388876_ _stx88862_)
               (_E8886588880_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8886388876_)))
               (_E8886488912_
                (lambda ()
                  (if (gx#stx-pair? _e8886388876_)
                      (let ((_e8886688884_ (gx#syntax-e _e8886388876_)))
                        (let ((_hd8886788887_ (##car _e8886688884_))
                              (_tl8886888889_ (##cdr _e8886688884_)))
                          (if (gx#stx-pair? _tl8886888889_)
                              (let ((_e8886988892_
                                     (gx#syntax-e _tl8886888889_)))
                                (let ((_hd8887088895_ (##car _e8886988892_))
                                      (_tl8887188897_ (##cdr _e8886988892_)))
                                  (let ((_hd88900_ _hd8887088895_))
                                    (if (gx#stx-pair? _tl8887188897_)
                                        (let ((_e8887288902_
                                               (gx#syntax-e _tl8887188897_)))
                                          (let ((_hd8887388905_
                                                 (##car _e8887288902_))
                                                (_tl8887488907_
                                                 (##cdr _e8887288902_)))
                                            (let ((_expr88910_ _hd8887388905_))
                                              (if (gx#stx-null? _tl8887488907_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88900_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88900_)
                          (cons _expr88910_ '())))
              (_E8886588880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8886588880_)))))
                                        (_E8886588880_)))))
                              (_E8886588880_))))
                      (_E8886588880_)))))
          (_E8886488912_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88808_)
        (let* ((_e8880988822_ _stx88808_)
               (_E8881188826_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8880988822_)))
               (_E8881088858_
                (lambda ()
                  (if (gx#stx-pair? _e8880988822_)
                      (let ((_e8881288830_ (gx#syntax-e _e8880988822_)))
                        (let ((_hd8881388833_ (##car _e8881288830_))
                              (_tl8881488835_ (##cdr _e8881288830_)))
                          (if (gx#stx-pair? _tl8881488835_)
                              (let ((_e8881588838_
                                     (gx#syntax-e _tl8881488835_)))
                                (let ((_hd8881688841_ (##car _e8881588838_))
                                      (_tl8881788843_ (##cdr _e8881588838_)))
                                  (let ((_hd88846_ _hd8881688841_))
                                    (if (gx#stx-pair? _tl8881788843_)
                                        (let ((_e8881888848_
                                               (gx#syntax-e _tl8881788843_)))
                                          (let ((_hd8881988851_
                                                 (##car _e8881888848_))
                                                (_tl8882088853_
                                                 (##cdr _e8881888848_)))
                                            (let ((_expr88856_ _hd8881988851_))
                                              (if (gx#stx-null? _tl8882088853_)
                                                  (if (gx#identifier?
                                                       _hd88846_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88856_ '())))
              (_E8881188826_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8881188826_)))))
                                        (_E8881188826_)))))
                              (_E8881188826_))))
                      (_E8881188826_)))))
          (_E8881088858_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88754_)
        (let* ((_e8875588768_ _stx88754_)
               (_E8875788772_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8875588768_)))
               (_E8875688804_
                (lambda ()
                  (if (gx#stx-pair? _e8875588768_)
                      (let ((_e8875888776_ (gx#syntax-e _e8875588768_)))
                        (let ((_hd8875988779_ (##car _e8875888776_))
                              (_tl8876088781_ (##cdr _e8875888776_)))
                          (if (gx#stx-pair? _tl8876088781_)
                              (let ((_e8876188784_
                                     (gx#syntax-e _tl8876088781_)))
                                (let ((_hd8876288787_ (##car _e8876188784_))
                                      (_tl8876388789_ (##cdr _e8876188784_)))
                                  (let ((_id88792_ _hd8876288787_))
                                    (if (gx#stx-pair? _tl8876388789_)
                                        (let ((_e8876488794_
                                               (gx#syntax-e _tl8876388789_)))
                                          (let ((_hd8876588797_
                                                 (##car _e8876488794_))
                                                (_tl8876688799_
                                                 (##cdr _e8876488794_)))
                                            (let ((_alias-id88802_
                                                   _hd8876588797_))
                                              (if (gx#stx-null? _tl8876688799_)
                                                  (if (and (gx#identifier?
                                                            _id88792_)
                                                           (gx#identifier?
                                                            _alias-id88802_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88802_ '())))
              (_E8875788772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8875788772_)))))
                                        (_E8875788772_)))))
                              (_E8875788772_))))
                      (_E8875788772_)))))
          (_E8875688804_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88711_)
        (let* ((_e8871288722_ _stx88711_)
               (_E8871488726_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8871288722_)))
               (_E8871388750_
                (lambda ()
                  (if (gx#stx-pair? _e8871288722_)
                      (let ((_e8871588730_ (gx#syntax-e _e8871288722_)))
                        (let ((_hd8871688733_ (##car _e8871588730_))
                              (_tl8871788735_ (##cdr _e8871588730_)))
                          (if (gx#stx-pair? _tl8871788735_)
                              (let ((_e8871888738_
                                     (gx#syntax-e _tl8871788735_)))
                                (let ((_hd8871988741_ (##car _e8871888738_))
                                      (_tl8872088743_ (##cdr _e8871888738_)))
                                  (let* ((_hd88746_ _hd8871988741_)
                                         (_body88748_ _tl8872088743_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88746_)
                                             (gx#stx-list? _body88748_)
                                             (not (gx#stx-null? _body88748_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88746_)
                                         _body88748_)
                                        (_E8871488726_)))))
                              (_E8871488726_))))
                      (_E8871488726_)))))
          (_E8871388750_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88647_)
        (letrec ((_generate88649_
                  (lambda (_clause88679_)
                    (let* ((_e8868088687_ _clause88679_)
                           (_E8868288691_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88647_
                               _clause88679_)))
                           (_E8868188707_
                            (lambda ()
                              (if (gx#stx-pair? _e8868088687_)
                                  (let ((_e8868388695_
                                         (gx#syntax-e _e8868088687_)))
                                    (let ((_hd8868488698_
                                           (##car _e8868388695_))
                                          (_tl8868588700_
                                           (##cdr _e8868388695_)))
                                      (let* ((_hd88703_ _hd8868488698_)
                                             (_body88705_ _tl8868588700_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88703_)
                                                 (gx#stx-list? _body88705_)
                                                 (not (gx#stx-null?
                                                       _body88705_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88703_)
                                                   _body88705_)
                                             (gx#stx-source _clause88679_))
                                            (_E8868288691_)))))
                                  (_E8868288691_)))))
                      (_E8868188707_)))))
          (let* ((_e8865088657_ _stx88647_)
                 (_E8865288661_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8865088657_)))
                 (_E8865188675_
                  (lambda ()
                    (if (gx#stx-pair? _e8865088657_)
                        (let ((_e8865388665_ (gx#syntax-e _e8865088657_)))
                          (let ((_hd8865488668_ (##car _e8865388665_))
                                (_tl8865588670_ (##cdr _e8865388665_)))
                            (let ((_clauses88673_ _tl8865588670_))
                              (if (gx#stx-list? _clauses88673_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88649_
                                    _clauses88673_))
                                  (_E8865288661_)))))
                        (_E8865288661_)))))
            (_E8865188675_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88548_ _form88549_)
        (letrec ((_generate88551_
                  (lambda (_bind88594_)
                    (let* ((_e8859588605_ _bind88594_)
                           (_E8859788609_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88548_
                               _bind88594_)))
                           (_E8859688633_
                            (lambda ()
                              (if (gx#stx-pair? _e8859588605_)
                                  (let ((_e8859888613_
                                         (gx#syntax-e _e8859588605_)))
                                    (let ((_hd8859988616_
                                           (##car _e8859888613_))
                                          (_tl8860088618_
                                           (##cdr _e8859888613_)))
                                      (let ((_ids88621_ _hd8859988616_))
                                        (if (gx#stx-pair? _tl8860088618_)
                                            (let ((_e8860188623_
                                                   (gx#syntax-e
                                                    _tl8860088618_)))
                                              (let ((_hd8860288626_
                                                     (##car _e8860188623_))
                                                    (_tl8860388628_
                                                     (##cdr _e8860188623_)))
                                                (let ((_expr88631_
                                                       _hd8860288626_))
                                                  (if (gx#stx-null?
                                                       _tl8860388628_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88621_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88621_)
                        (cons _expr88631_ '()))
                  (_E8859788609_))
              (_E8859788609_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8859788609_)))))
                                  (_E8859788609_)))))
                      (_E8859688633_)))))
          (let* ((_e8855288562_ _stx88548_)
                 (_E8855488566_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8855288562_)))
                 (_E8855388590_
                  (lambda ()
                    (if (gx#stx-pair? _e8855288562_)
                        (let ((_e8855588570_ (gx#syntax-e _e8855288562_)))
                          (let ((_hd8855688573_ (##car _e8855588570_))
                                (_tl8855788575_ (##cdr _e8855588570_)))
                            (if (gx#stx-pair? _tl8855788575_)
                                (let ((_e8855888578_
                                       (gx#syntax-e _tl8855788575_)))
                                  (let ((_hd8855988581_ (##car _e8855888578_))
                                        (_tl8856088583_ (##cdr _e8855888578_)))
                                    (let* ((_hd88586_ _hd8855988581_)
                                           (_body88588_ _tl8856088583_))
                                      (if (and (gx#stx-list? _hd88586_)
                                               (gx#stx-list? _body88588_)
                                               (not (gx#stx-null?
                                                     _body88588_)))
                                          (gx#core-cons*
                                           _form88549_
                                           (gx#stx-map1
                                            _generate88551_
                                            _hd88586_)
                                           _body88588_)
                                          (_E8855488566_)))))
                                (_E8855488566_))))
                        (_E8855488566_)))))
            (_E8855388590_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88640_)
        (let ((_form88642_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88640_ _form88642_))))
    (define gx#macro-expand-let-values
      (lambda _g91025_
        (let ((_g91024_ (##length _g91025_)))
          (cond ((##fx= _g91024_ 1)
                 (apply (lambda (_stx88640_)
                          (gx#macro-expand-let-values__0 _stx88640_))
                        _g91025_))
                ((##fx= _g91024_ 2)
                 (apply (lambda (_stx88644_ _form88645_)
                          (gx#macro-expand-let-values__%
                           _stx88644_
                           _form88645_))
                        _g91025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g91025_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88545_)
        (gx#macro-expand-let-values__% _stx88545_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88543_)
        (gx#macro-expand-let-values__% _stx88543_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88434_)
        (let* ((_e8843588461_ _stx88434_)
               (_E8844788465_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8843588461_)))
               (_E8843788507_
                (lambda ()
                  (if (gx#stx-pair? _e8843588461_)
                      (let ((_e8844888469_ (gx#syntax-e _e8843588461_)))
                        (let ((_hd8844988472_ (##car _e8844888469_))
                              (_tl8845088474_ (##cdr _e8844888469_)))
                          (if (gx#stx-pair? _tl8845088474_)
                              (let ((_e8845188477_
                                     (gx#syntax-e _tl8845088474_)))
                                (let ((_hd8845288480_ (##car _e8845188477_))
                                      (_tl8845388482_ (##cdr _e8845188477_)))
                                  (let ((_test88485_ _hd8845288480_))
                                    (if (gx#stx-pair? _tl8845388482_)
                                        (let ((_e8845488487_
                                               (gx#syntax-e _tl8845388482_)))
                                          (let ((_hd8845588490_
                                                 (##car _e8845488487_))
                                                (_tl8845688492_
                                                 (##cdr _e8845488487_)))
                                            (let ((_K88495_ _hd8845588490_))
                                              (if (gx#stx-pair? _tl8845688492_)
                                                  (let ((_e8845788497_
                                                         (gx#syntax-e
                                                          _tl8845688492_)))
                                                    (let ((_hd8845888500_
                                                           (##car _e8845788497_))
                                                          (_tl8845988502_
                                                           (##cdr _e8845788497_)))
                                                      (let ((_E88505_
                                                             _hd8845888500_))
                                                        (if (gx#stx-null?
                                                             _tl8845988502_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88485_
                         _K88495_
                         _E88505_)
                        (_E8844788465_))
                    (_E8844788465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8844788465_)))))
                                        (_E8844788465_)))))
                              (_E8844788465_))))
                      (_E8844788465_))))
               (_E8843688539_
                (lambda ()
                  (if (gx#stx-pair? _e8843588461_)
                      (let ((_e8843888511_ (gx#syntax-e _e8843588461_)))
                        (let ((_hd8843988514_ (##car _e8843888511_))
                              (_tl8844088516_ (##cdr _e8843888511_)))
                          (if (gx#stx-pair? _tl8844088516_)
                              (let ((_e8844188519_
                                     (gx#syntax-e _tl8844088516_)))
                                (let ((_hd8844288522_ (##car _e8844188519_))
                                      (_tl8844388524_ (##cdr _e8844188519_)))
                                  (let ((_test88527_ _hd8844288522_))
                                    (if (gx#stx-pair? _tl8844388524_)
                                        (let ((_e8844488529_
                                               (gx#syntax-e _tl8844388524_)))
                                          (let ((_hd8844588532_
                                                 (##car _e8844488529_))
                                                (_tl8844688534_
                                                 (##cdr _e8844488529_)))
                                            (let ((_K88537_ _hd8844588532_))
                                              (if (gx#stx-null? _tl8844688534_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88527_
                                                       _K88537_
                                                       '#!void)
                                                      (_E8843788507_))
                                                  (_E8843788507_)))))
                                        (_E8843788507_)))))
                              (_E8843788507_))))
                      (_E8843788507_)))))
          (_E8843688539_))))
    (define gx#free-identifier=?
      (lambda (_xid88422_ _yid88423_)
        (let ((_xe88425_ (gx#resolve-identifier__0 _xid88422_))
              (_ye88426_ (gx#resolve-identifier__0 _yid88423_)))
          (if (and _xe88425_ _ye88426_)
              (let ((_$e88428_ (eq? _xe88425_ _ye88426_)))
                (if _$e88428_
                    _$e88428_
                    (if (##structure-instance-of? _xe88425_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88426_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88425_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88426_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88425_ _ye88426_)
                  '#f
                  (gx#stx-eq? _xid88422_ _yid88423_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88406_ _yid88407_)
        (letrec ((_context88409_
                  (lambda (_e88420_)
                    (if (##structure-direct-instance-of?
                         _e88420_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88420_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88410_
                  (lambda (_e88418_)
                    (if (symbol? _e88418_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88418_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88418_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88418_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88411_
                  (lambda (_e88416_)
                    (if (symbol? _e88416_)
                        _e88416_
                        (gx#syntax-local-unwrap _e88416_)))))
          (let ((_x88413_ (_unwrap88411_ _xid88406_))
                (_y88414_ (_unwrap88411_ _yid88407_)))
            (if (gx#stx-eq? _x88413_ _y88414_)
                (if (eq? (_context88409_ _x88413_) (_context88409_ _y88414_))
                    (equal? (_marks88410_ _x88413_) (_marks88410_ _y88414_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88404_)
        (if (gx#identifier? _stx88404_)
            (gx#core-identifier=? _stx88404_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88402_)
        (if (gx#identifier? _stx88402_)
            (gx#core-identifier=? _stx88402_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88400_)
        (if (gx#identifier? _x88400_)
            (if (not (gx#underscore? _x88400_)) _x88400_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88346_ _where88347_)
        (let _lp88349_ ((_rest88351_ (gx#syntax->list _stx88346_)))
          (let* ((_rest8835288360_ _rest88351_)
                 (_else8835488368_ (lambda () '#t))
                 (_K8835688378_
                  (lambda (_rest88371_ _hd88372_)
                    (if (not (gx#identifier? _hd88372_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88347_
                         _hd88372_)
                        (if (find (lambda (_g8837388375_)
                                    (gx#bound-identifier=?
                                     _g8837388375_
                                     _hd88372_))
                                  _rest88371_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88347_
                             _hd88372_)
                            (_lp88349_ _rest88371_))))))
            (if (##pair? _rest8835288360_)
                (let ((_hd8835788381_ (##car _rest8835288360_))
                      (_tl8835888383_ (##cdr _rest8835288360_)))
                  (let* ((_hd88386_ _hd8835788381_)
                         (_rest88388_ _tl8835888383_))
                    (_K8835688378_ _rest88388_ _hd88386_)))
                (_else8835488368_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88393_)
        (let ((_where88395_ _stx88393_))
          (gx#check-duplicate-identifiers__% _stx88393_ _where88395_))))
    (define gx#check-duplicate-identifiers
      (lambda _g91027_
        (let ((_g91026_ (##length _g91027_)))
          (cond ((##fx= _g91026_ 1)
                 (apply (lambda (_stx88393_)
                          (gx#check-duplicate-identifiers__0 _stx88393_))
                        _g91027_))
                ((##fx= _g91026_ 2)
                 (apply (lambda (_stx88397_ _where88398_)
                          (gx#check-duplicate-identifiers__%
                           _stx88397_
                           _where88398_))
                        _g91027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g91027_))))))
    (define gx#core-bind-values?
      (lambda (_stx88338_)
        (gx#stx-andmap
         (lambda (_x88340_)
           (let ((_$e88342_ (gx#identifier? _x88340_)))
             (if _$e88342_ _$e88342_ (gx#stx-false? _x88340_))))
         _stx88338_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88302_ _rebind?88303_ _phi88304_ _ctx88305_)
        (gx#stx-for-each1
         (lambda (_id88307_)
           (if (gx#identifier? _id88307_)
               (gx#core-bind-runtime!__%
                _id88307_
                _rebind?88303_
                _phi88304_
                _ctx88305_)
               '#!void))
         _stx88302_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88312_)
        (let* ((_rebind?88314_ '#f)
               (_phi88316_ (gx#current-expander-phi))
               (_ctx88318_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88312_
           _rebind?88314_
           _phi88316_
           _ctx88318_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88320_ _rebind?88321_)
        (let* ((_phi88323_ (gx#current-expander-phi))
               (_ctx88325_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88320_
           _rebind?88321_
           _phi88323_
           _ctx88325_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88327_ _rebind?88328_ _phi88329_)
        (let ((_ctx88331_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88327_
           _rebind?88328_
           _phi88329_
           _ctx88331_))))
    (define gx#core-bind-values!
      (lambda _g91029_
        (let ((_g91028_ (##length _g91029_)))
          (cond ((##fx= _g91028_ 1)
                 (apply (lambda (_stx88312_)
                          (gx#core-bind-values!__0 _stx88312_))
                        _g91029_))
                ((##fx= _g91028_ 2)
                 (apply (lambda (_stx88320_ _rebind?88321_)
                          (gx#core-bind-values!__1 _stx88320_ _rebind?88321_))
                        _g91029_))
                ((##fx= _g91028_ 3)
                 (apply (lambda (_stx88327_ _rebind?88328_ _phi88329_)
                          (gx#core-bind-values!__2
                           _stx88327_
                           _rebind?88328_
                           _phi88329_))
                        _g91029_))
                ((##fx= _g91028_ 4)
                 (apply (lambda (_stx88333_
                                 _rebind?88334_
                                 _phi88335_
                                 _ctx88336_)
                          (gx#core-bind-values!__%
                           _stx88333_
                           _rebind?88334_
                           _phi88335_
                           _ctx88336_))
                        _g91029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g91029_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88297_)
        (gx#stx-map1
         (lambda (_x88299_)
           (if (gx#identifier? _x88299_)
               (gx#core-quote-syntax__0 _x88299_)
               '#f))
         _stx88297_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88290_)
        (if (gx#identifier? _stx88290_)
            (let* ((_bind88292_ (gx#resolve-identifier__0 _stx88290_))
                   (_$e88294_ (not _bind88292_)))
              (if _$e88294_
                  _$e88294_
                  (##structure-instance-of?
                   _bind88292_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88282_ _form88283_)
        (let ((_bind88285_ (gx#resolve-identifier__0 _id88282_)))
          (if (##structure-instance-of? _bind88285_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88282_)
              (if (not _bind88285_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88282_)))
                      (gx#core-quote-syntax__0 _id88282_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88283_
                       _id88282_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88283_
                   _id88282_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id88241_ _rebind?88242_ _phi88243_ _ctx88244_)
        (let* ((_key88246_ (gx#core-identifier-key _id88241_))
               (_eid88248_
                (gx#make-binding-id__% _key88246_ '#f _phi88243_ _ctx88244_))
               (_bind88250_
                (if (##structure-instance-of? _ctx88244_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88248_
                     _key88246_
                     _phi88243_
                     _ctx88244_)
                    (if (##structure-instance-of?
                         _ctx88244_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88248_
                         _key88246_
                         _phi88243_)
                        (if (##structure-instance-of?
                             _ctx88244_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid88248_
                             _key88246_
                             _phi88243_)
                            (##structure
                             gx#runtime-binding::t
                             _eid88248_
                             _key88246_
                             _phi88243_))))))
          (gx#bind-identifier!__%
           _id88241_
           _bind88250_
           _rebind?88242_
           _phi88243_
           _ctx88244_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id88256_)
        (let* ((_rebind?88258_ '#f)
               (_phi88260_ (gx#current-expander-phi))
               (_ctx88262_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88256_
           _rebind?88258_
           _phi88260_
           _ctx88262_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id88264_ _rebind?88265_)
        (let* ((_phi88267_ (gx#current-expander-phi))
               (_ctx88269_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88264_
           _rebind?88265_
           _phi88267_
           _ctx88269_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88271_ _rebind?88272_ _phi88273_)
        (let ((_ctx88275_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88271_
           _rebind?88272_
           _phi88273_
           _ctx88275_))))
    (define gx#core-bind-runtime!
      (lambda _g91031_
        (let ((_g91030_ (##length _g91031_)))
          (cond ((##fx= _g91030_ 1)
                 (apply (lambda (_id88256_)
                          (gx#core-bind-runtime!__0 _id88256_))
                        _g91031_))
                ((##fx= _g91030_ 2)
                 (apply (lambda (_id88264_ _rebind?88265_)
                          (gx#core-bind-runtime!__1 _id88264_ _rebind?88265_))
                        _g91031_))
                ((##fx= _g91030_ 3)
                 (apply (lambda (_id88271_ _rebind?88272_ _phi88273_)
                          (gx#core-bind-runtime!__2
                           _id88271_
                           _rebind?88272_
                           _phi88273_))
                        _g91031_))
                ((##fx= _g91030_ 4)
                 (apply (lambda (_id88277_
                                 _rebind?88278_
                                 _phi88279_
                                 _ctx88280_)
                          (gx#core-bind-runtime!__%
                           _id88277_
                           _rebind?88278_
                           _phi88279_
                           _ctx88280_))
                        _g91031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g91031_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id88196_ _eid88197_ _rebind?88198_ _phi88199_ _ctx88200_)
        (let* ((_key88202_ (gx#core-identifier-key _id88196_))
               (_bind88204_
                (if (##structure-instance-of? _ctx88200_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88197_
                     _key88202_
                     _phi88199_
                     _ctx88200_)
                    (if (##structure-instance-of?
                         _ctx88200_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88197_
                         _key88202_
                         _phi88199_)
                        (##structure
                         gx#runtime-binding::t
                         _eid88197_
                         _key88202_
                         _phi88199_)))))
          (gx#bind-identifier!__%
           _id88196_
           _bind88204_
           _rebind?88198_
           _phi88199_
           _ctx88200_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id88210_ _eid88211_)
        (let* ((_rebind?88213_ '#f)
               (_phi88215_ (gx#current-expander-phi))
               (_ctx88217_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88210_
           _eid88211_
           _rebind?88213_
           _phi88215_
           _ctx88217_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id88219_ _eid88220_ _rebind?88221_)
        (let* ((_phi88223_ (gx#current-expander-phi))
               (_ctx88225_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88219_
           _eid88220_
           _rebind?88221_
           _phi88223_
           _ctx88225_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id88227_ _eid88228_ _rebind?88229_ _phi88230_)
        (let ((_ctx88232_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88227_
           _eid88228_
           _rebind?88229_
           _phi88230_
           _ctx88232_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g91033_
        (let ((_g91032_ (##length _g91033_)))
          (cond ((##fx= _g91032_ 2)
                 (apply (lambda (_id88210_ _eid88211_)
                          (gx#core-bind-runtime-reference!__0
                           _id88210_
                           _eid88211_))
                        _g91033_))
                ((##fx= _g91032_ 3)
                 (apply (lambda (_id88219_ _eid88220_ _rebind?88221_)
                          (gx#core-bind-runtime-reference!__1
                           _id88219_
                           _eid88220_
                           _rebind?88221_))
                        _g91033_))
                ((##fx= _g91032_ 4)
                 (apply (lambda (_id88227_
                                 _eid88228_
                                 _rebind?88229_
                                 _phi88230_)
                          (gx#core-bind-runtime-reference!__2
                           _id88227_
                           _eid88228_
                           _rebind?88229_
                           _phi88230_))
                        _g91033_))
                ((##fx= _g91032_ 5)
                 (apply (lambda (_id88234_
                                 _eid88235_
                                 _rebind?88236_
                                 _phi88237_
                                 _ctx88238_)
                          (gx#core-bind-runtime-reference!__%
                           _id88234_
                           _eid88235_
                           _rebind?88236_
                           _phi88237_
                           _ctx88238_))
                        _g91033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g91033_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id88156_ _eid88157_ _rebind?88158_ _phi88159_ _ctx88160_)
        (gx#bind-identifier!__%
         _id88156_
         (##structure
          gx#extern-binding::t
          _eid88157_
          (gx#core-identifier-key _id88156_)
          _phi88159_)
         _rebind?88158_
         _phi88159_
         _ctx88160_)))
    (define gx#core-bind-extern!__0
      (lambda (_id88165_ _eid88166_)
        (let* ((_rebind?88168_ '#f)
               (_phi88170_ (gx#current-expander-phi))
               (_ctx88172_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88165_
           _eid88166_
           _rebind?88168_
           _phi88170_
           _ctx88172_))))
    (define gx#core-bind-extern!__1
      (lambda (_id88174_ _eid88175_ _rebind?88176_)
        (let* ((_phi88178_ (gx#current-expander-phi))
               (_ctx88180_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88174_
           _eid88175_
           _rebind?88176_
           _phi88178_
           _ctx88180_))))
    (define gx#core-bind-extern!__2
      (lambda (_id88182_ _eid88183_ _rebind?88184_ _phi88185_)
        (let ((_ctx88187_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88182_
           _eid88183_
           _rebind?88184_
           _phi88185_
           _ctx88187_))))
    (define gx#core-bind-extern!
      (lambda _g91035_
        (let ((_g91034_ (##length _g91035_)))
          (cond ((##fx= _g91034_ 2)
                 (apply (lambda (_id88165_ _eid88166_)
                          (gx#core-bind-extern!__0 _id88165_ _eid88166_))
                        _g91035_))
                ((##fx= _g91034_ 3)
                 (apply (lambda (_id88174_ _eid88175_ _rebind?88176_)
                          (gx#core-bind-extern!__1
                           _id88174_
                           _eid88175_
                           _rebind?88176_))
                        _g91035_))
                ((##fx= _g91034_ 4)
                 (apply (lambda (_id88182_
                                 _eid88183_
                                 _rebind?88184_
                                 _phi88185_)
                          (gx#core-bind-extern!__2
                           _id88182_
                           _eid88183_
                           _rebind?88184_
                           _phi88185_))
                        _g91035_))
                ((##fx= _g91034_ 5)
                 (apply (lambda (_id88189_
                                 _eid88190_
                                 _rebind?88191_
                                 _phi88192_
                                 _ctx88193_)
                          (gx#core-bind-extern!__%
                           _id88189_
                           _eid88190_
                           _rebind?88191_
                           _phi88192_
                           _ctx88193_))
                        _g91035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g91035_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id88110_ _e88111_ _rebind?88112_ _phi88113_ _ctx88114_)
        (gx#bind-identifier!__%
         _id88110_
         (let ((_key88119_ (gx#core-identifier-key _id88110_))
               (_e88120_
                (if (or (##structure-instance-of? _e88111_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e88111_
                         'gx#expander-context::t))
                    _e88111_
                    (##structure
                     gx#user-expander::t
                     _e88111_
                     _ctx88114_
                     _phi88113_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key88119_ '#t _phi88113_ _ctx88114_)
            _key88119_
            _phi88113_
            _e88120_))
         _rebind?88112_
         _phi88113_
         _ctx88114_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id88125_ _e88126_)
        (let* ((_rebind?88128_ '#f)
               (_phi88130_ (gx#current-expander-phi))
               (_ctx88132_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88125_
           _e88126_
           _rebind?88128_
           _phi88130_
           _ctx88132_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id88134_ _e88135_ _rebind?88136_)
        (let* ((_phi88138_ (gx#current-expander-phi))
               (_ctx88140_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88134_
           _e88135_
           _rebind?88136_
           _phi88138_
           _ctx88140_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id88142_ _e88143_ _rebind?88144_ _phi88145_)
        (let ((_ctx88147_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88142_
           _e88143_
           _rebind?88144_
           _phi88145_
           _ctx88147_))))
    (define gx#core-bind-syntax!
      (lambda _g91037_
        (let ((_g91036_ (##length _g91037_)))
          (cond ((##fx= _g91036_ 2)
                 (apply (lambda (_id88125_ _e88126_)
                          (gx#core-bind-syntax!__0 _id88125_ _e88126_))
                        _g91037_))
                ((##fx= _g91036_ 3)
                 (apply (lambda (_id88134_ _e88135_ _rebind?88136_)
                          (gx#core-bind-syntax!__1
                           _id88134_
                           _e88135_
                           _rebind?88136_))
                        _g91037_))
                ((##fx= _g91036_ 4)
                 (apply (lambda (_id88142_ _e88143_ _rebind?88144_ _phi88145_)
                          (gx#core-bind-syntax!__2
                           _id88142_
                           _e88143_
                           _rebind?88144_
                           _phi88145_))
                        _g91037_))
                ((##fx= _g91036_ 5)
                 (apply (lambda (_id88149_
                                 _e88150_
                                 _rebind?88151_
                                 _phi88152_
                                 _ctx88153_)
                          (gx#core-bind-syntax!__%
                           _id88149_
                           _e88150_
                           _rebind?88151_
                           _phi88152_
                           _ctx88153_))
                        _g91037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g91037_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id88093_ _e88094_ _rebind?88095_)
        (gx#core-bind-syntax!__%
         _id88093_
         _e88094_
         _rebind?88095_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id88100_ _e88101_)
        (let ((_rebind?88103_ '#f))
          (gx#core-bind-root-syntax!__% _id88100_ _e88101_ _rebind?88103_))))
    (define gx#core-bind-root-syntax!
      (lambda _g91039_
        (let ((_g91038_ (##length _g91039_)))
          (cond ((##fx= _g91038_ 2)
                 (apply (lambda (_id88100_ _e88101_)
                          (gx#core-bind-root-syntax!__0 _id88100_ _e88101_))
                        _g91039_))
                ((##fx= _g91038_ 3)
                 (apply (lambda (_id88105_ _e88106_ _rebind?88107_)
                          (gx#core-bind-root-syntax!__%
                           _id88105_
                           _e88106_
                           _rebind?88107_))
                        _g91039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g91039_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id88051_ _alias-id88052_ _rebind?88053_ _phi88054_ _ctx88055_)
        (gx#bind-identifier!__%
         _id88051_
         (let ((_key88057_ (gx#core-identifier-key _id88051_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key88057_ '#t _phi88054_ _ctx88055_)
            _key88057_
            _phi88054_
            _alias-id88052_))
         _rebind?88053_
         _phi88054_
         _ctx88055_)))
    (define gx#core-bind-alias!__0
      (lambda (_id88062_ _alias-id88063_)
        (let* ((_rebind?88065_ '#f)
               (_phi88067_ (gx#current-expander-phi))
               (_ctx88069_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88062_
           _alias-id88063_
           _rebind?88065_
           _phi88067_
           _ctx88069_))))
    (define gx#core-bind-alias!__1
      (lambda (_id88071_ _alias-id88072_ _rebind?88073_)
        (let* ((_phi88075_ (gx#current-expander-phi))
               (_ctx88077_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88071_
           _alias-id88072_
           _rebind?88073_
           _phi88075_
           _ctx88077_))))
    (define gx#core-bind-alias!__2
      (lambda (_id88079_ _alias-id88080_ _rebind?88081_ _phi88082_)
        (let ((_ctx88084_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88079_
           _alias-id88080_
           _rebind?88081_
           _phi88082_
           _ctx88084_))))
    (define gx#core-bind-alias!
      (lambda _g91041_
        (let ((_g91040_ (##length _g91041_)))
          (cond ((##fx= _g91040_ 2)
                 (apply (lambda (_id88062_ _alias-id88063_)
                          (gx#core-bind-alias!__0 _id88062_ _alias-id88063_))
                        _g91041_))
                ((##fx= _g91040_ 3)
                 (apply (lambda (_id88071_ _alias-id88072_ _rebind?88073_)
                          (gx#core-bind-alias!__1
                           _id88071_
                           _alias-id88072_
                           _rebind?88073_))
                        _g91041_))
                ((##fx= _g91040_ 4)
                 (apply (lambda (_id88079_
                                 _alias-id88080_
                                 _rebind?88081_
                                 _phi88082_)
                          (gx#core-bind-alias!__2
                           _id88079_
                           _alias-id88080_
                           _rebind?88081_
                           _phi88082_))
                        _g91041_))
                ((##fx= _g91040_ 5)
                 (apply (lambda (_id88086_
                                 _alias-id88087_
                                 _rebind?88088_
                                 _phi88089_
                                 _ctx88090_)
                          (gx#core-bind-alias!__%
                           _id88086_
                           _alias-id88087_
                           _rebind?88088_
                           _phi88089_
                           _ctx88090_))
                        _g91041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g91041_))))))
    (define gx#make-binding-id__%
      (lambda (_key88008_ _syntax?88009_ _phi88010_ _ctx88011_)
        (if (uninterned-symbol? _key88008_)
            (gensym 'L)
            (if (pair? _key88008_)
                (gensym (car _key88008_))
                (if (##structure-instance-of? _ctx88011_ 'gx#top-context::t)
                    (let ((_ns88013_
                           (gx#core-context-namespace__% _ctx88011_)))
                      (if (and (fxzero? _phi88010_) (not _syntax?88009_))
                          (if _ns88013_
                              (make-symbol__1 _ns88013_ '"#" _key88008_)
                              _key88008_)
                          (if _syntax?88009_
                              (make-symbol__1
                               (let ((_$e88015_ _ns88013_))
                                 (if _$e88015_ _$e88015_ '""))
                               '"[:"
                               (number->string _phi88010_)
                               '":]#"
                               _key88008_)
                              (make-symbol__1
                               (let ((_$e88018_ _ns88013_))
                                 (if _$e88018_ _$e88018_ '""))
                               '"["
                               (number->string _phi88010_)
                               '"]#"
                               _key88008_))))
                    (gensym _key88008_))))))
    (define gx#make-binding-id__0
      (lambda (_key88024_)
        (let* ((_syntax?88026_ '#f)
               (_phi88028_ (gx#current-expander-phi))
               (_ctx88030_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88024_
           _syntax?88026_
           _phi88028_
           _ctx88030_))))
    (define gx#make-binding-id__1
      (lambda (_key88032_ _syntax?88033_)
        (let* ((_phi88035_ (gx#current-expander-phi))
               (_ctx88037_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88032_
           _syntax?88033_
           _phi88035_
           _ctx88037_))))
    (define gx#make-binding-id__2
      (lambda (_key88039_ _syntax?88040_ _phi88041_)
        (let ((_ctx88043_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88039_
           _syntax?88040_
           _phi88041_
           _ctx88043_))))
    (define gx#make-binding-id
      (lambda _g91043_
        (let ((_g91042_ (##length _g91043_)))
          (cond ((##fx= _g91042_ 1)
                 (apply (lambda (_key88024_)
                          (gx#make-binding-id__0 _key88024_))
                        _g91043_))
                ((##fx= _g91042_ 2)
                 (apply (lambda (_key88032_ _syntax?88033_)
                          (gx#make-binding-id__1 _key88032_ _syntax?88033_))
                        _g91043_))
                ((##fx= _g91042_ 3)
                 (apply (lambda (_key88039_ _syntax?88040_ _phi88041_)
                          (gx#make-binding-id__2
                           _key88039_
                           _syntax?88040_
                           _phi88041_))
                        _g91043_))
                ((##fx= _g91042_ 4)
                 (apply (lambda (_key88045_
                                 _syntax?88046_
                                 _phi88047_
                                 _ctx88048_)
                          (gx#make-binding-id__%
                           _key88045_
                           _syntax?88046_
                           _phi88047_
                           _ctx88048_))
                        _g91043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g91043_))))))))
