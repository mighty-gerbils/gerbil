(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708418154)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx88712_)
        (letrec ((_expand-special88714_
                  (lambda (_hd88716_ _K88717_ _rest88718_ _r88719_)
                    (_K88717_
                     _rest88718_
                     (cons (gx#core-expand-top _hd88716_) _r88719_)))))
          (gx#core-expand-block__0 _stx88712_ _expand-special88714_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88465_)
        (letrec ((_expand-special88467_
                  (lambda (_hd88587_ _K88588_ _rest88589_ _r88590_)
                    (let* ((_K88594_
                            (lambda (_e88592_)
                              (_K88588_ _rest88589_ (cons _e88592_ _r88590_))))
                           (_e8859588624_ _hd88587_)
                           (_E8861988628_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8859588624_)))
                           (_E8861588640_
                            (lambda ()
                              (if (gx#stx-pair? _e8859588624_)
                                  (let ((_e8862088632_
                                         (gx#syntax-e _e8859588624_)))
                                    (let ((_hd8862188635_
                                           (##car _e8862088632_))
                                          (_tl8862288637_
                                           (##cdr _e8862088632_)))
                                      (if (and (gx#identifier? _hd8862188635_)
                                               (gx#core-identifier=?
                                                _hd8862188635_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K88594_
                                               (gx#core-expand-define-runtime%
                                                _hd88587_))
                                              (_E8861988628_))
                                          (_E8861988628_))))
                                  (_E8861988628_))))
                           (_E8861188652_
                            (lambda ()
                              (if (gx#stx-pair? _e8859588624_)
                                  (let ((_e8861688644_
                                         (gx#syntax-e _e8859588624_)))
                                    (let ((_hd8861788647_
                                           (##car _e8861688644_))
                                          (_tl8861888649_
                                           (##cdr _e8861688644_)))
                                      (if (and (gx#identifier? _hd8861788647_)
                                               (gx#core-identifier=?
                                                _hd8861788647_
                                                '%#define-alias))
                                          (if '#t
                                              (_K88594_
                                               (gx#core-expand-define-alias%
                                                _hd88587_))
                                              (_E8861588640_))
                                          (_E8861588640_))))
                                  (_E8861588640_))))
                           (_E8860188664_
                            (lambda ()
                              (if (gx#stx-pair? _e8859588624_)
                                  (let ((_e8861288656_
                                         (gx#syntax-e _e8859588624_)))
                                    (let ((_hd8861388659_
                                           (##car _e8861288656_))
                                          (_tl8861488661_
                                           (##cdr _e8861288656_)))
                                      (if (and (gx#identifier? _hd8861388659_)
                                               (gx#core-identifier=?
                                                _hd8861388659_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K88594_
                                               (gx#core-expand-define-syntax%
                                                _hd88587_))
                                              (_E8861188652_))
                                          (_E8861188652_))))
                                  (_E8861188652_))))
                           (_E8859788696_
                            (lambda ()
                              (if (gx#stx-pair? _e8859588624_)
                                  (let ((_e8860288668_
                                         (gx#syntax-e _e8859588624_)))
                                    (let ((_hd8860388671_
                                           (##car _e8860288668_))
                                          (_tl8860488673_
                                           (##cdr _e8860288668_)))
                                      (if (and (gx#identifier? _hd8860388671_)
                                               (gx#core-identifier=?
                                                _hd8860388671_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8860488673_)
                                              (let ((_e8860588676_
                                                     (gx#syntax-e
                                                      _tl8860488673_)))
                                                (let ((_hd8860688679_
                                                       (##car _e8860588676_))
                                                      (_tl8860788681_
                                                       (##cdr _e8860588676_)))
                                                  (let ((_hd-bind88684_
                                                         _hd8860688679_))
                                                    (if (gx#stx-pair?
                                                         _tl8860788681_)
                                                        (let ((_e8860888686_
                                                               (gx#syntax-e
                                                                _tl8860788681_)))
                                                          (let ((_hd8860988689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8860888686_))
                        (_tl8861088691_ (##cdr _e8860888686_)))
                    (let ((_expr88694_ _hd8860988689_))
                      (if (gx#stx-null? _tl8861088691_)
                          (if (gx#core-bind-values? _hd-bind88684_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88684_)
                                (_K88594_ _hd88587_))
                              (_E8860188664_))
                          (_E8860188664_)))))
                (_E8860188664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8860188664_))
                                          (_E8860188664_))))
                                  (_E8860188664_))))
                           (_E8859688708_
                            (lambda ()
                              (if (gx#stx-pair? _e8859588624_)
                                  (let ((_e8859888700_
                                         (gx#syntax-e _e8859588624_)))
                                    (let ((_hd8859988703_
                                           (##car _e8859888700_))
                                          (_tl8860088705_
                                           (##cdr _e8859888700_)))
                                      (if (and (gx#identifier? _hd8859988703_)
                                               (gx#core-identifier=?
                                                _hd8859988703_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K88594_
                                               (gx#core-expand-begin-syntax%
                                                _hd88587_))
                                              (_E8859788696_))
                                          (_E8859788696_))))
                                  (_E8859788696_)))))
                      (_E8859688708_))))
                 (_eval-body88468_
                  (lambda (_rbody88476_)
                    (let _lp88478_ ((_rest88480_ _rbody88476_)
                                    (_body88481_ '())
                                    (_ebody88482_ '()))
                      (let* ((_rest8848388491_ _rest88480_)
                             (_else8848588499_
                              (lambda ()
                                (values _body88481_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody88482_)
                                          (gx#stx-source _stx88465_))))))
                             (_K8848788575_
                              (lambda (_rest88502_ _hd88503_)
                                (let* ((_e8850488521_ _hd88503_)
                                       (_E8851688525_
                                        (lambda ()
                                          (_lp88478_
                                           _rest88502_
                                           (cons _hd88503_ _body88481_)
                                           (cons _hd88503_ _ebody88482_))))
                                       (_E8850688537_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8850488521_)
                                              (let ((_e8851788529_
                                                     (gx#syntax-e
                                                      _e8850488521_)))
                                                (let ((_hd8851888532_
                                                       (##car _e8851788529_))
                                                      (_tl8851988534_
                                                       (##cdr _e8851788529_)))
                                                  (if (and (gx#identifier?
                                                            _hd8851888532_)
                                                           (gx#core-identifier=?
                                                            _hd8851888532_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp88478_
                                                           _rest88502_
                                                           (cons _hd88503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body88481_)
                   _ebody88482_)
                  (_E8851688525_))
              (_E8851688525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8851688525_))))
                                       (_E8850588571_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8850488521_)
                                              (let ((_e8850788541_
                                                     (gx#syntax-e
                                                      _e8850488521_)))
                                                (let ((_hd8850888544_
                                                       (##car _e8850788541_))
                                                      (_tl8850988546_
                                                       (##cdr _e8850788541_)))
                                                  (if (and (gx#identifier?
                                                            _hd8850888544_)
                                                           (gx#core-identifier=?
                                                            _hd8850888544_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8850988546_)
                                                          (let ((_e8851088549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8850988546_)))
                    (let ((_hd8851188552_ (##car _e8851088549_))
                          (_tl8851288554_ (##cdr _e8851088549_)))
                      (let ((_hd-bind88557_ _hd8851188552_))
                        (if (gx#stx-pair? _tl8851288554_)
                            (let ((_e8851388559_ (gx#syntax-e _tl8851288554_)))
                              (let ((_hd8851488562_ (##car _e8851388559_))
                                    (_tl8851588564_ (##cdr _e8851388559_)))
                                (let ((_expr88567_ _hd8851488562_))
                                  (if (gx#stx-null? _tl8851588564_)
                                      (if '#t
                                          (let ((_ehd88569_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind88557_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr88567_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd88503_))))
                                            (_lp88478_
                                             _rest88502_
                                             (cons _ehd88569_ _body88481_)
                                             (cons _ehd88569_ _ebody88482_)))
                                          (_E8850688537_))
                                      (_E8850688537_)))))
                            (_E8850688537_)))))
                  (_E8850688537_))
              (_E8850688537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8850688537_)))))
                                  (_E8850588571_)))))
                        (if (##pair? _rest8848388491_)
                            (let ((_hd8848888578_ (##car _rest8848388491_))
                                  (_tl8848988580_ (##cdr _rest8848388491_)))
                              (let* ((_hd88583_ _hd8848888578_)
                                     (_rest88585_ _tl8848988580_))
                                (_K8848788575_ _rest88585_ _hd88583_)))
                            (_else8848588499_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88471_
                     (gx#core-expand-block__1
                      _stx88465_
                      _expand-special88467_
                      '#f))
                    (_g88735_ (_eval-body88468_ _rbody88471_)))
               (begin
                 (let ((_g88736_
                        (if (##values? _g88735_)
                            (##vector-length _g88735_)
                            1)))
                   (if (not (##fx= _g88736_ 2))
                       (error "Context expects 2 values" _g88736_)))
                 (let ((_expanded-body88473_ (##vector-ref _g88735_ 0))
                       (_value88474_ (##vector-ref _g88735_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body88473_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value88474_ '())))
                    (gx#stx-source _stx88465_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88435_)
        (let* ((_e8843688443_ _stx88435_)
               (_E8843888447_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8843688443_)))
               (_E8843788461_
                (lambda ()
                  (if (gx#stx-pair? _e8843688443_)
                      (let ((_e8843988451_ (gx#syntax-e _e8843688443_)))
                        (let ((_hd8844088454_ (##car _e8843988451_))
                              (_tl8844188456_ (##cdr _e8843988451_)))
                          (let ((_body88459_ _tl8844188456_))
                            (if (gx#stx-list? _body88459_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88459_)
                                 (gx#stx-source _stx88435_))
                                (_E8843888447_)))))
                      (_E8843888447_)))))
          (_E8843788461_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88433_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88433_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88379_)
        (let* ((_e8838088393_ _stx88379_)
               (_E8838288397_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8838088393_)))
               (_E8838188429_
                (lambda ()
                  (if (gx#stx-pair? _e8838088393_)
                      (let ((_e8838388401_ (gx#syntax-e _e8838088393_)))
                        (let ((_hd8838488404_ (##car _e8838388401_))
                              (_tl8838588406_ (##cdr _e8838388401_)))
                          (if (gx#stx-pair? _tl8838588406_)
                              (let ((_e8838688409_
                                     (gx#syntax-e _tl8838588406_)))
                                (let ((_hd8838788412_ (##car _e8838688409_))
                                      (_tl8838888414_ (##cdr _e8838688409_)))
                                  (let ((_ann88417_ _hd8838788412_))
                                    (if (gx#stx-pair? _tl8838888414_)
                                        (let ((_e8838988419_
                                               (gx#syntax-e _tl8838888414_)))
                                          (let ((_hd8839088422_
                                                 (##car _e8838988419_))
                                                (_tl8839188424_
                                                 (##cdr _e8838988419_)))
                                            (let ((_expr88427_ _hd8839088422_))
                                              (if (gx#stx-null? _tl8839188424_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88427_) '())))
               (gx#stx-source _stx88379_))
              (_E8838288397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8838288397_)))))
                                        (_E8838288397_)))))
                              (_E8838288397_))))
                      (_E8838288397_)))))
          (_E8838188429_))))
    (define gx#core-expand-local-block
      (lambda (_stx88103_ _body88104_)
        (letrec ((_expand-special88106_
                  (lambda (_hd88374_ _K88375_ _rest88376_ _r88377_)
                    (_K88375_
                     '()
                     (cons (_expand-internal88107_ _hd88374_ _rest88376_)
                           _r88377_))))
                 (_expand-internal88107_
                  (lambda (_hd88370_ _rest88371_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88109_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88370_ _rest88371_))
                          (gx#stx-source _stx88103_))
                         _expand-internal-special88108_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj88729
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj88729)
                       __obj88729))))
                 (_expand-internal-special88108_
                  (lambda (_hd88265_ _K88266_ _rest88267_ _r88268_)
                    (let* ((_e8826988294_ _hd88265_)
                           (_E8828988298_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8826988294_)))
                           (_E8828588310_
                            (lambda ()
                              (if (gx#stx-pair? _e8826988294_)
                                  (let ((_e8829088302_
                                         (gx#syntax-e _e8826988294_)))
                                    (let ((_hd8829188305_
                                           (##car _e8829088302_))
                                          (_tl8829288307_
                                           (##cdr _e8829088302_)))
                                      (if (and (gx#identifier? _hd8829188305_)
                                               (gx#core-identifier=?
                                                _hd8829188305_
                                                '%#declare))
                                          (if '#t
                                              (_K88266_
                                               _rest88267_
                                               (cons (gx#core-expand-declare%
                                                      _hd88265_)
                                                     _r88268_))
                                              (_E8828988298_))
                                          (_E8828988298_))))
                                  (_E8828988298_))))
                           (_E8828188322_
                            (lambda ()
                              (if (gx#stx-pair? _e8826988294_)
                                  (let ((_e8828688314_
                                         (gx#syntax-e _e8826988294_)))
                                    (let ((_hd8828788317_
                                           (##car _e8828688314_))
                                          (_tl8828888319_
                                           (##cdr _e8828688314_)))
                                      (if (and (gx#identifier? _hd8828788317_)
                                               (gx#core-identifier=?
                                                _hd8828788317_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88265_)
                                                (_K88266_
                                                 _rest88267_
                                                 _r88268_))
                                              (_E8828588310_))
                                          (_E8828588310_))))
                                  (_E8828588310_))))
                           (_E8827188334_
                            (lambda ()
                              (if (gx#stx-pair? _e8826988294_)
                                  (let ((_e8828288326_
                                         (gx#syntax-e _e8826988294_)))
                                    (let ((_hd8828388329_
                                           (##car _e8828288326_))
                                          (_tl8828488331_
                                           (##cdr _e8828288326_)))
                                      (if (and (gx#identifier? _hd8828388329_)
                                               (gx#core-identifier=?
                                                _hd8828388329_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88265_)
                                                (_K88266_
                                                 _rest88267_
                                                 _r88268_))
                                              (_E8828188322_))
                                          (_E8828188322_))))
                                  (_E8828188322_))))
                           (_E8827088366_
                            (lambda ()
                              (if (gx#stx-pair? _e8826988294_)
                                  (let ((_e8827288338_
                                         (gx#syntax-e _e8826988294_)))
                                    (let ((_hd8827388341_
                                           (##car _e8827288338_))
                                          (_tl8827488343_
                                           (##cdr _e8827288338_)))
                                      (if (and (gx#identifier? _hd8827388341_)
                                               (gx#core-identifier=?
                                                _hd8827388341_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8827488343_)
                                              (let ((_e8827588346_
                                                     (gx#syntax-e
                                                      _tl8827488343_)))
                                                (let ((_hd8827688349_
                                                       (##car _e8827588346_))
                                                      (_tl8827788351_
                                                       (##cdr _e8827588346_)))
                                                  (let ((_hd-bind88354_
                                                         _hd8827688349_))
                                                    (if (gx#stx-pair?
                                                         _tl8827788351_)
                                                        (let ((_e8827888356_
                                                               (gx#syntax-e
                                                                _tl8827788351_)))
                                                          (let ((_hd8827988359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8827888356_))
                        (_tl8828088361_ (##cdr _e8827888356_)))
                    (let ((_expr88364_ _hd8827988359_))
                      (if (gx#stx-null? _tl8828088361_)
                          (if (gx#core-bind-values? _hd-bind88354_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88354_)
                                (_K88266_
                                 _rest88267_
                                 (cons _hd88265_ _r88268_)))
                              (_E8827188334_))
                          (_E8827188334_)))))
                (_E8827188334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8827188334_))
                                          (_E8827188334_))))
                                  (_E8827188334_)))))
                      (_E8827088366_))))
                 (_wrap-internal88109_
                  (lambda (_rbody88111_)
                    (let _lp88113_ ((_rest88115_ _rbody88111_)
                                    (_decls88116_ '())
                                    (_bind88117_ '())
                                    (_body88118_ '()))
                      (let* ((_e8811988126_ _rest88115_)
                             (_E8812188175_
                              (lambda ()
                                (let* ((_body88170_
                                        (let* ((_body8812988139_ _body88118_)
                                               (_else8813288147_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88118_)
                                                   (gx#stx-source
                                                    _stx88103_)))))
                                          (let ((_K8813788167_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88103_)))
                                                (_K8813488153_
                                                 (lambda (_expr88151_)
                                                   _expr88151_)))
                                            (let ((_try-match8813188163_
                                                   (lambda ()
                                                     (if (##pair? _body8812988139_)
                                                         (let ((_tl8813688158_
                                                                (##cdr _body8812988139_))
                                                               (_hd8813588156_
                                                                (##car _body8812988139_)))
                                                           (if (##null? _tl8813688158_)
                                                               (let ((_expr88161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8813588156_))
                         (_K8813488153_ _expr88161_))
                       (_else8813288147_)))
                 (_else8813288147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8812988139_)
                                                  (_K8813788167_)
                                                  (_try-match8813188163_))))))
                                       (_body88172_
                                        (if (null? _bind88117_)
                                            _body88170_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88117_
                                                         (cons _body88170_
                                                               '())))
                                             (gx#stx-source _stx88103_)))))
                                  (if (null? _decls88116_)
                                      _body88172_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88116_
                                                   (cons _body88172_ '())))
                                       (gx#stx-source _stx88103_))))))
                             (_E8812088261_
                              (lambda ()
                                (if (gx#stx-pair? _e8811988126_)
                                    (let ((_e8812288179_
                                           (gx#syntax-e _e8811988126_)))
                                      (let ((_hd8812388182_
                                             (##car _e8812288179_))
                                            (_tl8812488184_
                                             (##cdr _e8812288179_)))
                                        (let* ((_hd88187_ _hd8812388182_)
                                               (_rest88189_ _tl8812488184_))
                                          (if '#t
                                              (let* ((_e8819088207_ _hd88187_)
                                                     (_E8820288211_
                                                      (lambda ()
                                                        (if (null? _bind88117_)
                                                            (_lp88113_
                                                             _rest88189_
                                                             _decls88116_
                                                             _bind88117_
                                                             (cons _hd88187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88118_))
                    (_lp88113_
                     _rest88189_
                     _decls88116_
                     (cons (cons '#f (cons _hd88187_ '())) _bind88117_)
                     _body88118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8819288225_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8819088207_)
                                                            (let ((_e8820388215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8819088207_)))
                      (let ((_hd8820488218_ (##car _e8820388215_))
                            (_tl8820588220_ (##cdr _e8820388215_)))
                        (if (and (gx#identifier? _hd8820488218_)
                                 (gx#core-identifier=?
                                  _hd8820488218_
                                  '%#declare))
                            (let ((_xdecls88223_ _tl8820588220_))
                              (if '#t
                                  (_lp88113_
                                   _rest88189_
                                   (gx#stx-foldr
                                    cons
                                    _decls88116_
                                    _xdecls88223_)
                                   _bind88117_
                                   _body88118_)
                                  (_E8820288211_)))
                            (_E8820288211_))))
                    (_E8820288211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8819188257_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8819088207_)
                                                            (let ((_e8819388229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8819088207_)))
                      (let ((_hd8819488232_ (##car _e8819388229_))
                            (_tl8819588234_ (##cdr _e8819388229_)))
                        (if (and (gx#identifier? _hd8819488232_)
                                 (gx#core-identifier=?
                                  _hd8819488232_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8819588234_)
                                (let ((_e8819688237_
                                       (gx#syntax-e _tl8819588234_)))
                                  (let ((_hd8819788240_ (##car _e8819688237_))
                                        (_tl8819888242_ (##cdr _e8819688237_)))
                                    (let ((_hd-bind88245_ _hd8819788240_))
                                      (if (gx#stx-pair? _tl8819888242_)
                                          (let ((_e8819988247_
                                                 (gx#syntax-e _tl8819888242_)))
                                            (let ((_hd8820088250_
                                                   (##car _e8819988247_))
                                                  (_tl8820188252_
                                                   (##cdr _e8819988247_)))
                                              (let ((_expr88255_
                                                     _hd8820088250_))
                                                (if (gx#stx-null?
                                                     _tl8820188252_)
                                                    (if '#t
                                                        (_lp88113_
                                                         _rest88189_
                                                         _decls88116_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88245_)
                             (cons (gx#core-expand-expression _expr88255_)
                                   '()))
                       _bind88117_)
                 _body88118_)
                (_E8819288225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8819288225_)))))
                                          (_E8819288225_)))))
                                (_E8819288225_))
                            (_E8819288225_))))
                    (_E8819288225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8819188257_))
                                              (_E8812188175_)))))
                                    (_E8812188175_)))))
                        (_E8812088261_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88104_)
            (gx#stx-source _stx88103_))
           _expand-special88106_))))
    (define gx#core-expand-declare%
      (lambda (_stx88041_)
        (let* ((_e8804288049_ _stx88041_)
               (_E8804488053_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8804288049_)))
               (_E8804388099_
                (lambda ()
                  (if (gx#stx-pair? _e8804288049_)
                      (let ((_e8804588057_ (gx#syntax-e _e8804288049_)))
                        (let ((_hd8804688060_ (##car _e8804588057_))
                              (_tl8804788062_ (##cdr _e8804588057_)))
                          (let ((_body88065_ _tl8804788062_))
                            (if (gx#stx-list? _body88065_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl88067_)
                                     (let* ((_e8806888075_ _decl88067_)
                                            (_E8807088079_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8806888075_)))
                                            (_E8806988095_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8806888075_)
                                                   (let ((_e8807188083_
                                                          (gx#syntax-e
                                                           _e8806888075_)))
                                                     (let ((_hd8807288086_
                                                            (##car _e8807188083_))
                                                           (_tl8807388088_
                                                            (##cdr _e8807188083_)))
                                                       (let* ((_head88091_
                                                               _hd8807288086_)
                                                              (_args88093_
                                                               _tl8807388088_))
                                                         (if (gx#stx-list?
                                                              _args88093_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl88067_)
                                                             (_E8807088079_)))))
                                                   (_E8807088079_)))))
                                       (_E8806988095_)))
                                   _body88065_))
                                 (gx#stx-source _stx88041_))
                                (_E8804488053_)))))
                      (_E8804488053_)))))
          (_E8804388099_))))
    (define gx#core-expand-extern%
      (lambda (_stx87945_)
        (let* ((_e8794687953_ _stx87945_)
               (_E8794887957_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8794687953_)))
               (_E8794788037_
                (lambda ()
                  (if (gx#stx-pair? _e8794687953_)
                      (let ((_e8794987961_ (gx#syntax-e _e8794687953_)))
                        (let ((_hd8795087964_ (##car _e8794987961_))
                              (_tl8795187966_ (##cdr _e8794987961_)))
                          (let ((_body87969_ _tl8795187966_))
                            (if '#t
                                (let _lp87971_ ((_rest87973_ _body87969_)
                                                (_r87974_ '()))
                                  (let* ((_e8797587989_ _rest87973_)
                                         (_E8798787993_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx87945_)))
                                         (_E8797787997_
                                          (lambda ()
                                            (if (gx#stx-null? _e8797587989_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r87974_))
                                                     (gx#stx-source
                                                      _stx87945_))
                                                    (_E8798787993_))
                                                (_E8798787993_))))
                                         (_E8797688033_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8797587989_)
                                                (let ((_e8797888001_
                                                       (gx#syntax-e
                                                        _e8797587989_)))
                                                  (let ((_hd8797988004_
                                                         (##car _e8797888001_))
                                                        (_tl8798088006_
                                                         (##cdr _e8797888001_)))
                                                    (if (gx#stx-pair?
                                                         _hd8797988004_)
                                                        (let ((_e8798188009_
                                                               (gx#syntax-e
                                                                _hd8797988004_)))
                                                          (let ((_hd8798288012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8798188009_))
                        (_tl8798388014_ (##cdr _e8798188009_)))
                    (let ((_id88017_ _hd8798288012_))
                      (if (gx#stx-pair? _tl8798388014_)
                          (let ((_e8798488019_ (gx#syntax-e _tl8798388014_)))
                            (let ((_hd8798588022_ (##car _e8798488019_))
                                  (_tl8798688024_ (##cdr _e8798488019_)))
                              (let ((_eid88027_ _hd8798588022_))
                                (if (gx#stx-null? _tl8798688024_)
                                    (let ((_rest88029_ _tl8798088006_))
                                      (if (and (gx#identifier? _id88017_)
                                               (gx#identifier? _eid88027_))
                                          (let ((_eid88031_
                                                 (gx#stx-e _eid88027_)))
                                            (gx#core-bind-extern!__0
                                             _id88017_
                                             _eid88031_)
                                            (_lp87971_
                                             _rest88029_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id88017_)
                                                         (cons _eid88031_ '()))
                                                   _r87974_)))
                                          (_E8797787997_)))
                                    (_E8797787997_)))))
                          (_E8797787997_)))))
                (_E8797787997_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8797787997_)))))
                                    (_E8797688033_)))
                                (_E8794887957_)))))
                      (_E8794887957_)))))
          (_E8794788037_))))
    (define gx#core-expand-define-values%
      (lambda (_stx87891_)
        (let* ((_e8789287905_ _stx87891_)
               (_E8789487909_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8789287905_)))
               (_E8789387941_
                (lambda ()
                  (if (gx#stx-pair? _e8789287905_)
                      (let ((_e8789587913_ (gx#syntax-e _e8789287905_)))
                        (let ((_hd8789687916_ (##car _e8789587913_))
                              (_tl8789787918_ (##cdr _e8789587913_)))
                          (if (gx#stx-pair? _tl8789787918_)
                              (let ((_e8789887921_
                                     (gx#syntax-e _tl8789787918_)))
                                (let ((_hd8789987924_ (##car _e8789887921_))
                                      (_tl8790087926_ (##cdr _e8789887921_)))
                                  (let ((_hd87929_ _hd8789987924_))
                                    (if (gx#stx-pair? _tl8790087926_)
                                        (let ((_e8790187931_
                                               (gx#syntax-e _tl8790087926_)))
                                          (let ((_hd8790287934_
                                                 (##car _e8790187931_))
                                                (_tl8790387936_
                                                 (##cdr _e8790187931_)))
                                            (let ((_expr87939_ _hd8790287934_))
                                              (if (gx#stx-null? _tl8790387936_)
                                                  (if (gx#core-bind-values?
                                                       _hd87929_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd87929_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd87929_)
                             (cons (gx#core-expand-expression _expr87939_)
                                   '())))
                 (gx#stx-source _stx87891_)))
              (_E8789487909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8789487909_)))))
                                        (_E8789487909_)))))
                              (_E8789487909_))))
                      (_E8789487909_)))))
          (_E8789387941_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx87835_)
        (let* ((_e8783687849_ _stx87835_)
               (_E8783887853_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8783687849_)))
               (_E8783787887_
                (lambda ()
                  (if (gx#stx-pair? _e8783687849_)
                      (let ((_e8783987857_ (gx#syntax-e _e8783687849_)))
                        (let ((_hd8784087860_ (##car _e8783987857_))
                              (_tl8784187862_ (##cdr _e8783987857_)))
                          (if (gx#stx-pair? _tl8784187862_)
                              (let ((_e8784287865_
                                     (gx#syntax-e _tl8784187862_)))
                                (let ((_hd8784387868_ (##car _e8784287865_))
                                      (_tl8784487870_ (##cdr _e8784287865_)))
                                  (let ((_id87873_ _hd8784387868_))
                                    (if (gx#stx-pair? _tl8784487870_)
                                        (let ((_e8784587875_
                                               (gx#syntax-e _tl8784487870_)))
                                          (let ((_hd8784687878_
                                                 (##car _e8784587875_))
                                                (_tl8784787880_
                                                 (##cdr _e8784587875_)))
                                            (let ((_binding-id87883_
                                                   _hd8784687878_))
                                              (if (gx#stx-null? _tl8784787880_)
                                                  (if (and (gx#identifier?
                                                            _id87873_)
                                                           (gx#identifier?
                                                            _binding-id87883_))
                                                      (let ((_eid87885_
                                                             (gx#stx-e
                                                              _binding-id87883_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id87873_
                                                         _eid87885_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87873_)
                             (cons _eid87885_ '())))))
              (_E8783887853_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8783887853_)))))
                                        (_E8783887853_)))))
                              (_E8783887853_))))
                      (_E8783887853_)))))
          (_E8783787887_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx87778_)
        (let* ((_e8777987792_ _stx87778_)
               (_E8778187796_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8777987792_)))
               (_E8778087831_
                (lambda ()
                  (if (gx#stx-pair? _e8777987792_)
                      (let ((_e8778287800_ (gx#syntax-e _e8777987792_)))
                        (let ((_hd8778387803_ (##car _e8778287800_))
                              (_tl8778487805_ (##cdr _e8778287800_)))
                          (if (gx#stx-pair? _tl8778487805_)
                              (let ((_e8778587808_
                                     (gx#syntax-e _tl8778487805_)))
                                (let ((_hd8778687811_ (##car _e8778587808_))
                                      (_tl8778787813_ (##cdr _e8778587808_)))
                                  (let ((_id87816_ _hd8778687811_))
                                    (if (gx#stx-pair? _tl8778787813_)
                                        (let ((_e8778887818_
                                               (gx#syntax-e _tl8778787813_)))
                                          (let ((_hd8778987821_
                                                 (##car _e8778887818_))
                                                (_tl8779087823_
                                                 (##cdr _e8778887818_)))
                                            (let ((_expr87826_ _hd8778987821_))
                                              (if (gx#stx-null? _tl8779087823_)
                                                  (if (gx#identifier?
                                                       _id87816_)
                                                      (let ((_g88737_
                                                             (gx#core-expand-expression+1
                                                              _expr87826_)))
                                                        (begin
                                                          (let ((_g88738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g88737_)
                             (##vector-length _g88737_)
                             1)))
                    (if (not (##fx= _g88738_ 2))
                        (error "Context expects 2 values" _g88738_)))
                  (let ((_e-stx87828_ (##vector-ref _g88737_ 0))
                        (_e87829_ (##vector-ref _g88737_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id87816_ _e87829_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id87816_)
                                   (cons _e-stx87828_ '())))
                       (gx#stx-source _stx87778_))))))
              (_E8778187796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8778187796_)))))
                                        (_E8778187796_)))))
                              (_E8778187796_))))
                      (_E8778187796_)))))
          (_E8778087831_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx87722_)
        (let* ((_e8772387736_ _stx87722_)
               (_E8772587740_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8772387736_)))
               (_E8772487774_
                (lambda ()
                  (if (gx#stx-pair? _e8772387736_)
                      (let ((_e8772687744_ (gx#syntax-e _e8772387736_)))
                        (let ((_hd8772787747_ (##car _e8772687744_))
                              (_tl8772887749_ (##cdr _e8772687744_)))
                          (if (gx#stx-pair? _tl8772887749_)
                              (let ((_e8772987752_
                                     (gx#syntax-e _tl8772887749_)))
                                (let ((_hd8773087755_ (##car _e8772987752_))
                                      (_tl8773187757_ (##cdr _e8772987752_)))
                                  (let ((_id87760_ _hd8773087755_))
                                    (if (gx#stx-pair? _tl8773187757_)
                                        (let ((_e8773287762_
                                               (gx#syntax-e _tl8773187757_)))
                                          (let ((_hd8773387765_
                                                 (##car _e8773287762_))
                                                (_tl8773487767_
                                                 (##cdr _e8773287762_)))
                                            (let ((_alias-id87770_
                                                   _hd8773387765_))
                                              (if (gx#stx-null? _tl8773487767_)
                                                  (if (and (gx#identifier?
                                                            _id87760_)
                                                           (gx#identifier?
                                                            _alias-id87770_))
                                                      (let ((_alias-id87772_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id87770_)))
                                                        (gx#core-bind-alias!__0
                                                         _id87760_
                                                         _alias-id87772_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id87760_)
                             (cons _alias-id87772_ '())))))
              (_E8772587740_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8772587740_)))))
                                        (_E8772587740_)))))
                              (_E8772587740_))))
                      (_E8772587740_)))))
          (_E8772487774_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx87665_ _wrap?87666_)
        (let* ((_e8766787677_ _stx87665_)
               (_E8766987681_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8766787677_)))
               (_E8766887708_
                (lambda ()
                  (if (gx#stx-pair? _e8766787677_)
                      (let ((_e8767087685_ (gx#syntax-e _e8766787677_)))
                        (let ((_hd8767187688_ (##car _e8767087685_))
                              (_tl8767287690_ (##cdr _e8767087685_)))
                          (if (gx#stx-pair? _tl8767287690_)
                              (let ((_e8767387693_
                                     (gx#syntax-e _tl8767287690_)))
                                (let ((_hd8767487696_ (##car _e8767387693_))
                                      (_tl8767587698_ (##cdr _e8767387693_)))
                                  (let* ((_hd87701_ _hd8767487696_)
                                         (_body87703_ _tl8767587698_))
                                    (if (gx#core-bind-values? _hd87701_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd87701_)
                                           (let ((_body87706_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd87701_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx87665_
                                                               _body87703_)
                                                              '()))))
                                             (if _wrap?87666_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body87706_)
                                                  (gx#stx-source _stx87665_))
                                                 _body87706_)))
                                         gx#current-expander-context
                                         (let ((__obj88730
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88730)
                                           __obj88730))
                                        (_E8766987681_)))))
                              (_E8766987681_))))
                      (_E8766987681_)))))
          (_E8766887708_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx87715_)
        (let ((_wrap?87717_ '#t))
          (gx#core-expand-lambda%__% _stx87715_ _wrap?87717_))))
    (define gx#core-expand-lambda%
      (lambda _g88740_
        (let ((_g88739_ (##length _g88740_)))
          (cond ((##fx= _g88739_ 1)
                 (apply (lambda (_stx87715_)
                          (gx#core-expand-lambda%__0 _stx87715_))
                        _g88740_))
                ((##fx= _g88739_ 2)
                 (apply (lambda (_stx87719_ _wrap?87720_)
                          (gx#core-expand-lambda%__% _stx87719_ _wrap?87720_))
                        _g88740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g88740_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx87629_)
        (let* ((_e8763087637_ _stx87629_)
               (_E8763287641_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8763087637_)))
               (_E8763187660_
                (lambda ()
                  (if (gx#stx-pair? _e8763087637_)
                      (let ((_e8763387645_ (gx#syntax-e _e8763087637_)))
                        (let ((_hd8763487648_ (##car _e8763387645_))
                              (_tl8763587650_ (##cdr _e8763387645_)))
                          (let ((_clauses87653_ _tl8763587650_))
                            (if (gx#stx-list? _clauses87653_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause87655_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause87655_)
                                       (let ((_$e87657_
                                              (gx#stx-source _clause87655_)))
                                         (if _$e87657_
                                             _$e87657_
                                             (gx#stx-source _stx87629_))))
                                      '#f))
                                   _clauses87653_))
                                 (gx#stx-source _stx87629_))
                                (_E8763287641_)))))
                      (_E8763287641_)))))
          (_E8763187660_))))
    (define gx#core-expand-let-values%
      (lambda (_stx87583_)
        (let* ((_e8758487594_ _stx87583_)
               (_E8758687598_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8758487594_)))
               (_E8758587625_
                (lambda ()
                  (if (gx#stx-pair? _e8758487594_)
                      (let ((_e8758787602_ (gx#syntax-e _e8758487594_)))
                        (let ((_hd8758887605_ (##car _e8758787602_))
                              (_tl8758987607_ (##cdr _e8758787602_)))
                          (if (gx#stx-pair? _tl8758987607_)
                              (let ((_e8759087610_
                                     (gx#syntax-e _tl8758987607_)))
                                (let ((_hd8759187613_ (##car _e8759087610_))
                                      (_tl8759287615_ (##cdr _e8759087610_)))
                                  (let* ((_hd87618_ _hd8759187613_)
                                         (_body87620_ _tl8759287615_))
                                    (if (gx#core-expand-let-bind? _hd87618_)
                                        (let ((_expressions87622_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd87618_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd87618_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd87618_
                                                           _expressions87622_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx87583_
                         _body87620_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx87583_)))
                                           gx#current-expander-context
                                           (let ((__obj88731
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88731)
                                             __obj88731)))
                                        (_E8758687598_)))))
                              (_E8758687598_))))
                      (_E8758687598_)))))
          (_E8758587625_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx87528_ _form87529_)
        (let* ((_e8753087540_ _stx87528_)
               (_E8753287544_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8753087540_)))
               (_E8753187569_
                (lambda ()
                  (if (gx#stx-pair? _e8753087540_)
                      (let ((_e8753387548_ (gx#syntax-e _e8753087540_)))
                        (let ((_hd8753487551_ (##car _e8753387548_))
                              (_tl8753587553_ (##cdr _e8753387548_)))
                          (if (gx#stx-pair? _tl8753587553_)
                              (let ((_e8753687556_
                                     (gx#syntax-e _tl8753587553_)))
                                (let ((_hd8753787559_ (##car _e8753687556_))
                                      (_tl8753887561_ (##cdr _e8753687556_)))
                                  (let* ((_hd87564_ _hd8753787559_)
                                         (_body87566_ _tl8753887561_))
                                    (if (gx#core-expand-let-bind? _hd87564_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd87564_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form87529_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd87564_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd87564_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx87528_
                                                               _body87566_)
                                                              '())))
                                            (gx#stx-source _stx87528_)))
                                         gx#current-expander-context
                                         (let ((__obj88732
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88732)
                                           __obj88732))
                                        (_E8753287544_)))))
                              (_E8753287544_))))
                      (_E8753287544_)))))
          (_E8753187569_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx87576_)
        (let ((_form87578_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx87576_ _form87578_))))
    (define gx#core-expand-letrec-values%
      (lambda _g88742_
        (let ((_g88741_ (##length _g88742_)))
          (cond ((##fx= _g88741_ 1)
                 (apply (lambda (_stx87576_)
                          (gx#core-expand-letrec-values%__0 _stx87576_))
                        _g88742_))
                ((##fx= _g88741_ 2)
                 (apply (lambda (_stx87580_ _form87581_)
                          (gx#core-expand-letrec-values%__%
                           _stx87580_
                           _form87581_))
                        _g88742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g88742_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx87525_)
        (gx#core-expand-letrec-values%__% _stx87525_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx87482_)
        (if (gx#stx-list? _stx87482_)
            (gx#stx-andmap
             (lambda (_bind87484_)
               (let* ((_e8748587495_ _bind87484_)
                      (_E8748787499_ (lambda () '#f))
                      (_E8748687521_
                       (lambda ()
                         (if (gx#stx-pair? _e8748587495_)
                             (let ((_e8748887503_ (gx#syntax-e _e8748587495_)))
                               (let ((_hd8748987506_ (##car _e8748887503_))
                                     (_tl8749087508_ (##cdr _e8748887503_)))
                                 (let ((_hd87511_ _hd8748987506_))
                                   (if (gx#stx-pair? _tl8749087508_)
                                       (let ((_e8749187513_
                                              (gx#syntax-e _tl8749087508_)))
                                         (let ((_hd8749287516_
                                                (##car _e8749187513_))
                                               (_tl8749387518_
                                                (##cdr _e8749187513_)))
                                           (if (gx#stx-null? _tl8749387518_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd87511_)
                                                   (_E8748787499_))
                                               (_E8748787499_))))
                                       (_E8748787499_)))))
                             (_E8748787499_)))))
                 (_E8748687521_)))
             _stx87482_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87441_)
        (let* ((_e8744287452_ _bind87441_)
               (_E8744487456_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8744287452_)))
               (_E8744387478_
                (lambda ()
                  (if (gx#stx-pair? _e8744287452_)
                      (let ((_e8744587460_ (gx#syntax-e _e8744287452_)))
                        (let ((_hd8744687463_ (##car _e8744587460_))
                              (_tl8744787465_ (##cdr _e8744587460_)))
                          (if (gx#stx-pair? _tl8744787465_)
                              (let ((_e8744887468_
                                     (gx#syntax-e _tl8744787465_)))
                                (let ((_hd8744987471_ (##car _e8744887468_))
                                      (_tl8745087473_ (##cdr _e8744887468_)))
                                  (let ((_expr87476_ _hd8744987471_))
                                    (if (gx#stx-null? _tl8745087473_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87476_)
                                            (_E8744487456_))
                                        (_E8744487456_)))))
                              (_E8744487456_))))
                      (_E8744487456_)))))
          (_E8744387478_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87400_)
        (let* ((_e8740187411_ _bind87400_)
               (_E8740387415_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8740187411_)))
               (_E8740287437_
                (lambda ()
                  (if (gx#stx-pair? _e8740187411_)
                      (let ((_e8740487419_ (gx#syntax-e _e8740187411_)))
                        (let ((_hd8740587422_ (##car _e8740487419_))
                              (_tl8740687424_ (##cdr _e8740487419_)))
                          (let ((_hd87427_ _hd8740587422_))
                            (if (gx#stx-pair? _tl8740687424_)
                                (let ((_e8740787429_
                                       (gx#syntax-e _tl8740687424_)))
                                  (let ((_hd8740887432_ (##car _e8740787429_))
                                        (_tl8740987434_ (##cdr _e8740787429_)))
                                    (if (gx#stx-null? _tl8740987434_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87427_)
                                            (_E8740387415_))
                                        (_E8740387415_))))
                                (_E8740387415_)))))
                      (_E8740387415_)))))
          (_E8740287437_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87358_ _expr87359_)
        (let* ((_e8736087370_ _bind87358_)
               (_E8736287374_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736087370_)))
               (_E8736187396_
                (lambda ()
                  (if (gx#stx-pair? _e8736087370_)
                      (let ((_e8736387378_ (gx#syntax-e _e8736087370_)))
                        (let ((_hd8736487381_ (##car _e8736387378_))
                              (_tl8736587383_ (##cdr _e8736387378_)))
                          (let ((_hd87386_ _hd8736487381_))
                            (if (gx#stx-pair? _tl8736587383_)
                                (let ((_e8736687388_
                                       (gx#syntax-e _tl8736587383_)))
                                  (let ((_hd8736787391_ (##car _e8736687388_))
                                        (_tl8736887393_ (##cdr _e8736687388_)))
                                    (if (gx#stx-null? _tl8736887393_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87386_)
                                                  (cons _expr87359_ '()))
                                            (_E8736287374_))
                                        (_E8736287374_))))
                                (_E8736287374_)))))
                      (_E8736287374_)))))
          (_E8736187396_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87312_)
        (let* ((_e8731387323_ _stx87312_)
               (_E8731587327_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8731387323_)))
               (_E8731487354_
                (lambda ()
                  (if (gx#stx-pair? _e8731387323_)
                      (let ((_e8731687331_ (gx#syntax-e _e8731387323_)))
                        (let ((_hd8731787334_ (##car _e8731687331_))
                              (_tl8731887336_ (##cdr _e8731687331_)))
                          (if (gx#stx-pair? _tl8731887336_)
                              (let ((_e8731987339_
                                     (gx#syntax-e _tl8731887336_)))
                                (let ((_hd8732087342_ (##car _e8731987339_))
                                      (_tl8732187344_ (##cdr _e8731987339_)))
                                  (let* ((_hd87347_ _hd8732087342_)
                                         (_body87349_ _tl8732187344_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87347_)
                                        (let ((_expanders87351_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87347_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87347_
                                              _expanders87351_)
                                             (gx#core-expand-local-block
                                              _stx87312_
                                              _body87349_))
                                           gx#current-expander-context
                                           (let ((__obj88733
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj88733)
                                             __obj88733)))
                                        (_E8731587327_)))))
                              (_E8731587327_))))
                      (_E8731587327_)))))
          (_E8731487354_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87261_)
        (let* ((_e8726287272_ _stx87261_)
               (_E8726487276_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8726287272_)))
               (_E8726387308_
                (lambda ()
                  (if (gx#stx-pair? _e8726287272_)
                      (let ((_e8726587280_ (gx#syntax-e _e8726287272_)))
                        (let ((_hd8726687283_ (##car _e8726587280_))
                              (_tl8726787285_ (##cdr _e8726587280_)))
                          (if (gx#stx-pair? _tl8726787285_)
                              (let ((_e8726887288_
                                     (gx#syntax-e _tl8726787285_)))
                                (let ((_hd8726987291_ (##car _e8726887288_))
                                      (_tl8727087293_ (##cdr _e8726887288_)))
                                  (let* ((_hd87296_ _hd8726987291_)
                                         (_body87298_ _tl8727087293_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87296_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87296_
                                            (make-list__%
                                             (gx#stx-length _hd87296_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8730087303_
                                                     _g8730187305_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8730087303_
                                               _g8730187305_
                                               '#t))
                                            _hd87296_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87296_))
                                           (gx#core-expand-local-block
                                            _stx87261_
                                            _body87298_))
                                         gx#current-expander-context
                                         (let ((__obj88734
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj88734)
                                           __obj88734))
                                        (_E8726487276_)))))
                              (_E8726487276_))))
                      (_E8726487276_)))))
          (_E8726387308_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87218_)
        (if (gx#stx-list? _stx87218_)
            (gx#stx-andmap
             (lambda (_bind87220_)
               (let* ((_e8722187231_ _bind87220_)
                      (_E8722387235_ (lambda () '#f))
                      (_E8722287257_
                       (lambda ()
                         (if (gx#stx-pair? _e8722187231_)
                             (let ((_e8722487239_ (gx#syntax-e _e8722187231_)))
                               (let ((_hd8722587242_ (##car _e8722487239_))
                                     (_tl8722687244_ (##cdr _e8722487239_)))
                                 (let ((_hd87247_ _hd8722587242_))
                                   (if (gx#stx-pair? _tl8722687244_)
                                       (let ((_e8722787249_
                                              (gx#syntax-e _tl8722687244_)))
                                         (let ((_hd8722887252_
                                                (##car _e8722787249_))
                                               (_tl8722987254_
                                                (##cdr _e8722787249_)))
                                           (if (gx#stx-null? _tl8722987254_)
                                               (if '#t
                                                   (gx#identifier? _hd87247_)
                                                   (_E8722387235_))
                                               (_E8722387235_))))
                                       (_E8722387235_)))))
                             (_E8722387235_)))))
                 (_E8722287257_)))
             _stx87218_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87175_)
        (let* ((_e8717687186_ _bind87175_)
               (_E8717887190_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8717687186_)))
               (_E8717787214_
                (lambda ()
                  (if (gx#stx-pair? _e8717687186_)
                      (let ((_e8717987194_ (gx#syntax-e _e8717687186_)))
                        (let ((_hd8718087197_ (##car _e8717987194_))
                              (_tl8718187199_ (##cdr _e8717987194_)))
                          (if (gx#stx-pair? _tl8718187199_)
                              (let ((_e8718287202_
                                     (gx#syntax-e _tl8718187199_)))
                                (let ((_hd8718387205_ (##car _e8718287202_))
                                      (_tl8718487207_ (##cdr _e8718287202_)))
                                  (let ((_expr87210_ _hd8718387205_))
                                    (if (gx#stx-null? _tl8718487207_)
                                        (if '#t
                                            (let ((_g88743_
                                                   (gx#core-expand-expression+1
                                                    _expr87210_)))
                                              (begin
                                                (let ((_g88744_
                                                       (if (##values? _g88743_)
                                                           (##vector-length
                                                            _g88743_)
                                                           1)))
                                                  (if (not (##fx= _g88744_ 2))
                                                      (error "Context expects 2 values"
                                                             _g88744_)))
                                                (let ((_e87212_
                                                       (##vector-ref
                                                        _g88743_
                                                        1)))
                                                  _e87212_)))
                                            (_E8717887190_))
                                        (_E8717887190_)))))
                              (_E8717887190_))))
                      (_E8717887190_)))))
          (_E8717787214_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87120_ _e87121_ _rebind?87122_)
        (let* ((_e8712387133_ _bind87120_)
               (_E8712587137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8712387133_)))
               (_E8712487159_
                (lambda ()
                  (if (gx#stx-pair? _e8712387133_)
                      (let ((_e8712687141_ (gx#syntax-e _e8712387133_)))
                        (let ((_hd8712787144_ (##car _e8712687141_))
                              (_tl8712887146_ (##cdr _e8712687141_)))
                          (let ((_id87149_ _hd8712787144_))
                            (if (gx#stx-pair? _tl8712887146_)
                                (let ((_e8712987151_
                                       (gx#syntax-e _tl8712887146_)))
                                  (let ((_hd8713087154_ (##car _e8712987151_))
                                        (_tl8713187156_ (##cdr _e8712987151_)))
                                    (if (gx#stx-null? _tl8713187156_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87149_
                                             _e87121_
                                             _rebind?87122_)
                                            (_E8712587137_))
                                        (_E8712587137_))))
                                (_E8712587137_)))))
                      (_E8712587137_)))))
          (_E8712487159_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87166_ _e87167_)
        (let ((_rebind?87169_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87166_
           _e87167_
           _rebind?87169_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g88746_
        (let ((_g88745_ (##length _g88746_)))
          (cond ((##fx= _g88745_ 2)
                 (apply (lambda (_bind87166_ _e87167_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87166_
                           _e87167_))
                        _g88746_))
                ((##fx= _g88745_ 3)
                 (apply (lambda (_bind87171_ _e87172_ _rebind?87173_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87171_
                           _e87172_
                           _rebind?87173_))
                        _g88746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g88746_))))))
    (define gx#core-expand-expression%
      (lambda (_stx87078_)
        (let* ((_e8707987089_ _stx87078_)
               (_E8708187093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8707987089_)))
               (_E8708087115_
                (lambda ()
                  (if (gx#stx-pair? _e8707987089_)
                      (let ((_e8708287097_ (gx#syntax-e _e8707987089_)))
                        (let ((_hd8708387100_ (##car _e8708287097_))
                              (_tl8708487102_ (##cdr _e8708287097_)))
                          (if (gx#stx-pair? _tl8708487102_)
                              (let ((_e8708587105_
                                     (gx#syntax-e _tl8708487102_)))
                                (let ((_hd8708687108_ (##car _e8708587105_))
                                      (_tl8708787110_ (##cdr _e8708587105_)))
                                  (let ((_expr87113_ _hd8708687108_))
                                    (if (gx#stx-null? _tl8708787110_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87113_)
                                            (_E8708187093_))
                                        (_E8708187093_)))))
                              (_E8708187093_))))
                      (_E8708187093_)))))
          (_E8708087115_))))
    (define gx#core-expand-quote%
      (lambda (_stx87037_)
        (let* ((_e8703887048_ _stx87037_)
               (_E8704087052_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8703887048_)))
               (_E8703987074_
                (lambda ()
                  (if (gx#stx-pair? _e8703887048_)
                      (let ((_e8704187056_ (gx#syntax-e _e8703887048_)))
                        (let ((_hd8704287059_ (##car _e8704187056_))
                              (_tl8704387061_ (##cdr _e8704187056_)))
                          (if (gx#stx-pair? _tl8704387061_)
                              (let ((_e8704487064_
                                     (gx#syntax-e _tl8704387061_)))
                                (let ((_hd8704587067_ (##car _e8704487064_))
                                      (_tl8704687069_ (##cdr _e8704487064_)))
                                  (let ((_e87072_ _hd8704587067_))
                                    (if (gx#stx-null? _tl8704687069_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e87072_)
                                                         '()))
                                             (gx#stx-source _stx87037_))
                                            (_E8704087052_))
                                        (_E8704087052_)))))
                              (_E8704087052_))))
                      (_E8704087052_)))))
          (_E8703987074_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx86996_)
        (let* ((_e8699787007_ _stx86996_)
               (_E8699987011_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8699787007_)))
               (_E8699887033_
                (lambda ()
                  (if (gx#stx-pair? _e8699787007_)
                      (let ((_e8700087015_ (gx#syntax-e _e8699787007_)))
                        (let ((_hd8700187018_ (##car _e8700087015_))
                              (_tl8700287020_ (##cdr _e8700087015_)))
                          (if (gx#stx-pair? _tl8700287020_)
                              (let ((_e8700387023_
                                     (gx#syntax-e _tl8700287020_)))
                                (let ((_hd8700487026_ (##car _e8700387023_))
                                      (_tl8700587028_ (##cdr _e8700387023_)))
                                  (let ((_e87031_ _hd8700487026_))
                                    (if (gx#stx-null? _tl8700587028_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e87031_)
                                                         '()))
                                             (gx#stx-source _stx86996_))
                                            (_E8699987011_))
                                        (_E8699987011_)))))
                              (_E8699987011_))))
                      (_E8699987011_)))))
          (_E8699887033_))))
    (define gx#core-expand-call%
      (lambda (_stx86953_)
        (let* ((_e8695486964_ _stx86953_)
               (_E8695686968_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8695486964_)))
               (_E8695586992_
                (lambda ()
                  (if (gx#stx-pair? _e8695486964_)
                      (let ((_e8695786972_ (gx#syntax-e _e8695486964_)))
                        (let ((_hd8695886975_ (##car _e8695786972_))
                              (_tl8695986977_ (##cdr _e8695786972_)))
                          (if (gx#stx-pair? _tl8695986977_)
                              (let ((_e8696086980_
                                     (gx#syntax-e _tl8695986977_)))
                                (let ((_hd8696186983_ (##car _e8696086980_))
                                      (_tl8696286985_ (##cdr _e8696086980_)))
                                  (let* ((_rator86988_ _hd8696186983_)
                                         (_args86990_ _tl8696286985_))
                                    (if (gx#stx-list? _args86990_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator86988_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args86990_))
                                         (gx#stx-source _stx86953_))
                                        (_E8695686968_)))))
                              (_E8695686968_))))
                      (_E8695686968_)))))
          (_E8695586992_))))
    (define gx#core-expand-if%
      (lambda (_stx86886_)
        (let* ((_e8688786903_ _stx86886_)
               (_E8688986907_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8688786903_)))
               (_E8688886949_
                (lambda ()
                  (if (gx#stx-pair? _e8688786903_)
                      (let ((_e8689086911_ (gx#syntax-e _e8688786903_)))
                        (let ((_hd8689186914_ (##car _e8689086911_))
                              (_tl8689286916_ (##cdr _e8689086911_)))
                          (if (gx#stx-pair? _tl8689286916_)
                              (let ((_e8689386919_
                                     (gx#syntax-e _tl8689286916_)))
                                (let ((_hd8689486922_ (##car _e8689386919_))
                                      (_tl8689586924_ (##cdr _e8689386919_)))
                                  (let ((_test86927_ _hd8689486922_))
                                    (if (gx#stx-pair? _tl8689586924_)
                                        (let ((_e8689686929_
                                               (gx#syntax-e _tl8689586924_)))
                                          (let ((_hd8689786932_
                                                 (##car _e8689686929_))
                                                (_tl8689886934_
                                                 (##cdr _e8689686929_)))
                                            (let ((_K86937_ _hd8689786932_))
                                              (if (gx#stx-pair? _tl8689886934_)
                                                  (let ((_e8689986939_
                                                         (gx#syntax-e
                                                          _tl8689886934_)))
                                                    (let ((_hd8690086942_
                                                           (##car _e8689986939_))
                                                          (_tl8690186944_
                                                           (##cdr _e8689986939_)))
                                                      (let ((_E86947_
                                                             _hd8690086942_))
                                                        (if (gx#stx-null?
                                                             _tl8690186944_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test86927_)
                                     (cons (gx#core-expand-expression _K86937_)
                                           (cons (gx#core-expand-expression
                                                  _E86947_)
                                                 '()))))
                         (gx#stx-source _stx86886_))
                        (_E8688986907_))
                    (_E8688986907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8688986907_)))))
                                        (_E8688986907_)))))
                              (_E8688986907_))))
                      (_E8688986907_)))))
          (_E8688886949_))))
    (define gx#core-expand-ref%
      (lambda (_stx86845_)
        (let* ((_e8684686856_ _stx86845_)
               (_E8684886860_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8684686856_)))
               (_E8684786882_
                (lambda ()
                  (if (gx#stx-pair? _e8684686856_)
                      (let ((_e8684986864_ (gx#syntax-e _e8684686856_)))
                        (let ((_hd8685086867_ (##car _e8684986864_))
                              (_tl8685186869_ (##cdr _e8684986864_)))
                          (if (gx#stx-pair? _tl8685186869_)
                              (let ((_e8685286872_
                                     (gx#syntax-e _tl8685186869_)))
                                (let ((_hd8685386875_ (##car _e8685286872_))
                                      (_tl8685486877_ (##cdr _e8685286872_)))
                                  (let ((_id86880_ _hd8685386875_))
                                    (if (gx#stx-null? _tl8685486877_)
                                        (if (gx#identifier? _id86880_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id86880_
                                                          _stx86845_)
                                                         '()))
                                             (gx#stx-source _stx86845_))
                                            (_E8684886860_))
                                        (_E8684886860_)))))
                              (_E8684886860_))))
                      (_E8684886860_)))))
          (_E8684786882_))))
    (define gx#core-expand-setq%
      (lambda (_stx86791_)
        (let* ((_e8679286805_ _stx86791_)
               (_E8679486809_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8679286805_)))
               (_E8679386841_
                (lambda ()
                  (if (gx#stx-pair? _e8679286805_)
                      (let ((_e8679586813_ (gx#syntax-e _e8679286805_)))
                        (let ((_hd8679686816_ (##car _e8679586813_))
                              (_tl8679786818_ (##cdr _e8679586813_)))
                          (if (gx#stx-pair? _tl8679786818_)
                              (let ((_e8679886821_
                                     (gx#syntax-e _tl8679786818_)))
                                (let ((_hd8679986824_ (##car _e8679886821_))
                                      (_tl8680086826_ (##cdr _e8679886821_)))
                                  (let ((_id86829_ _hd8679986824_))
                                    (if (gx#stx-pair? _tl8680086826_)
                                        (let ((_e8680186831_
                                               (gx#syntax-e _tl8680086826_)))
                                          (let ((_hd8680286834_
                                                 (##car _e8680186831_))
                                                (_tl8680386836_
                                                 (##cdr _e8680186831_)))
                                            (let ((_expr86839_ _hd8680286834_))
                                              (if (gx#stx-null? _tl8680386836_)
                                                  (if (gx#identifier?
                                                       _id86829_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id86829_
                            _stx86791_)
                           (cons (gx#core-expand-expression _expr86839_) '())))
               (gx#stx-source _stx86791_))
              (_E8679486809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8679486809_)))))
                                        (_E8679486809_)))))
                              (_E8679486809_))))
                      (_E8679486809_)))))
          (_E8679386841_))))
    (define gx#macro-expand-extern
      (lambda (_stx86639_)
        (letrec ((_generate86641_
                  (lambda (_body86671_)
                    (let _lp86673_ ((_rest86675_ _body86671_)
                                    (_ns86676_ (gx#core-context-namespace__0))
                                    (_r86677_ '()))
                      (let* ((_e8667886693_ _rest86675_)
                             (_E8669186697_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8667886693_)))
                             (_E8668786701_
                              (lambda ()
                                (if (gx#stx-null? _e8667886693_)
                                    (if '#t (reverse _r86677_) (_E8669186697_))
                                    (_E8669186697_))))
                             (_E8668086758_
                              (lambda ()
                                (if (gx#stx-pair? _e8667886693_)
                                    (let ((_e8668886705_
                                           (gx#syntax-e _e8667886693_)))
                                      (let ((_hd8668986708_
                                             (##car _e8668886705_))
                                            (_tl8669086710_
                                             (##cdr _e8668886705_)))
                                        (let* ((_hd86713_ _hd8668986708_)
                                               (_rest86715_ _tl8669086710_))
                                          (if '#t
                                              (if (gx#identifier? _hd86713_)
                                                  (_lp86673_
                                                   _rest86715_
                                                   _ns86676_
                                                   (cons (cons _hd86713_
                                                               (cons (if _ns86676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd86713_
                                  _ns86676_
                                  '"#"
                                  _hd86713_)
                                 _hd86713_)
                             '()))
                 _r86677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8671686726_
                                                          _hd86713_)
                                                         (_E8671886730_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8671686726_)))
                                                         (_E8671786754_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8671686726_)
                        (let ((_e8671986734_ (gx#syntax-e _e8671686726_)))
                          (let ((_hd8672086737_ (##car _e8671986734_))
                                (_tl8672186739_ (##cdr _e8671986734_)))
                            (let ((_id86742_ _hd8672086737_))
                              (if (gx#stx-pair? _tl8672186739_)
                                  (let ((_e8672286744_
                                         (gx#syntax-e _tl8672186739_)))
                                    (let ((_hd8672386747_
                                           (##car _e8672286744_))
                                          (_tl8672486749_
                                           (##cdr _e8672286744_)))
                                      (let ((_eid86752_ _hd8672386747_))
                                        (if (gx#stx-null? _tl8672486749_)
                                            (if (and (gx#identifier? _id86742_)
                                                     (gx#identifier?
                                                      _eid86752_))
                                                (_lp86673_
                                                 _rest86715_
                                                 _ns86676_
                                                 (cons (cons _id86742_
                                                             (cons _eid86752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r86677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8671886730_))
                                            (_E8671886730_)))))
                                  (_E8671886730_)))))
                        (_E8671886730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8671786754_)))
                                              (_E8668786701_)))))
                                    (_E8668786701_))))
                             (_E8667986787_
                              (lambda ()
                                (if (gx#stx-pair? _e8667886693_)
                                    (let ((_e8668186762_
                                           (gx#syntax-e _e8667886693_)))
                                      (let ((_hd8668286765_
                                             (##car _e8668186762_))
                                            (_tl8668386767_
                                             (##cdr _e8668186762_)))
                                        (if (eq? (gx#stx-e _hd8668286765_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8668386767_)
                                                (let ((_e8668486770_
                                                       (gx#syntax-e
                                                        _tl8668386767_)))
                                                  (let ((_hd8668586773_
                                                         (##car _e8668486770_))
                                                        (_tl8668686775_
                                                         (##cdr _e8668486770_)))
                                                    (let* ((_ns86778_
                                                            _hd8668586773_)
                                                           (_rest86780_
                                                            _tl8668686775_))
                                                      (if '#t
                                                          (let ((_ns86785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns86778_)
                             (symbol->string (gx#stx-e _ns86778_))
                             (if (or (gx#stx-string? _ns86778_)
                                     (gx#stx-false? _ns86778_))
                                 (gx#stx-e _ns86778_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx86639_
                                  _ns86778_)))))
                    (_lp86673_ _rest86780_ _ns86785_ _r86677_))
                  (_E8668086758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8668086758_))
                                            (_E8668086758_))))
                                    (_E8668086758_)))))
                        (_E8667986787_))))))
          (let* ((_e8664286649_ _stx86639_)
                 (_E8664486653_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8664286649_)))
                 (_E8664386667_
                  (lambda ()
                    (if (gx#stx-pair? _e8664286649_)
                        (let ((_e8664586657_ (gx#syntax-e _e8664286649_)))
                          (let ((_hd8664686660_ (##car _e8664586657_))
                                (_tl8664786662_ (##cdr _e8664586657_)))
                            (let ((_body86665_ _tl8664786662_))
                              (if (gx#stx-list? _body86665_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate86641_ _body86665_))
                                  (_E8664486653_)))))
                        (_E8664486653_)))))
            (_E8664386667_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx86585_)
        (let* ((_e8658686599_ _stx86585_)
               (_E8658886603_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8658686599_)))
               (_E8658786635_
                (lambda ()
                  (if (gx#stx-pair? _e8658686599_)
                      (let ((_e8658986607_ (gx#syntax-e _e8658686599_)))
                        (let ((_hd8659086610_ (##car _e8658986607_))
                              (_tl8659186612_ (##cdr _e8658986607_)))
                          (if (gx#stx-pair? _tl8659186612_)
                              (let ((_e8659286615_
                                     (gx#syntax-e _tl8659186612_)))
                                (let ((_hd8659386618_ (##car _e8659286615_))
                                      (_tl8659486620_ (##cdr _e8659286615_)))
                                  (let ((_hd86623_ _hd8659386618_))
                                    (if (gx#stx-pair? _tl8659486620_)
                                        (let ((_e8659586625_
                                               (gx#syntax-e _tl8659486620_)))
                                          (let ((_hd8659686628_
                                                 (##car _e8659586625_))
                                                (_tl8659786630_
                                                 (##cdr _e8659586625_)))
                                            (let ((_expr86633_ _hd8659686628_))
                                              (if (gx#stx-null? _tl8659786630_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd86623_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd86623_)
                          (cons _expr86633_ '())))
              (_E8658886603_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8658886603_)))))
                                        (_E8658886603_)))))
                              (_E8658886603_))))
                      (_E8658886603_)))))
          (_E8658786635_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx86531_)
        (let* ((_e8653286545_ _stx86531_)
               (_E8653486549_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8653286545_)))
               (_E8653386581_
                (lambda ()
                  (if (gx#stx-pair? _e8653286545_)
                      (let ((_e8653586553_ (gx#syntax-e _e8653286545_)))
                        (let ((_hd8653686556_ (##car _e8653586553_))
                              (_tl8653786558_ (##cdr _e8653586553_)))
                          (if (gx#stx-pair? _tl8653786558_)
                              (let ((_e8653886561_
                                     (gx#syntax-e _tl8653786558_)))
                                (let ((_hd8653986564_ (##car _e8653886561_))
                                      (_tl8654086566_ (##cdr _e8653886561_)))
                                  (let ((_hd86569_ _hd8653986564_))
                                    (if (gx#stx-pair? _tl8654086566_)
                                        (let ((_e8654186571_
                                               (gx#syntax-e _tl8654086566_)))
                                          (let ((_hd8654286574_
                                                 (##car _e8654186571_))
                                                (_tl8654386576_
                                                 (##cdr _e8654186571_)))
                                            (let ((_expr86579_ _hd8654286574_))
                                              (if (gx#stx-null? _tl8654386576_)
                                                  (if (gx#identifier?
                                                       _hd86569_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd86569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr86579_ '())))
              (_E8653486549_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8653486549_)))))
                                        (_E8653486549_)))))
                              (_E8653486549_))))
                      (_E8653486549_)))))
          (_E8653386581_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx86477_)
        (let* ((_e8647886491_ _stx86477_)
               (_E8648086495_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8647886491_)))
               (_E8647986527_
                (lambda ()
                  (if (gx#stx-pair? _e8647886491_)
                      (let ((_e8648186499_ (gx#syntax-e _e8647886491_)))
                        (let ((_hd8648286502_ (##car _e8648186499_))
                              (_tl8648386504_ (##cdr _e8648186499_)))
                          (if (gx#stx-pair? _tl8648386504_)
                              (let ((_e8648486507_
                                     (gx#syntax-e _tl8648386504_)))
                                (let ((_hd8648586510_ (##car _e8648486507_))
                                      (_tl8648686512_ (##cdr _e8648486507_)))
                                  (let ((_id86515_ _hd8648586510_))
                                    (if (gx#stx-pair? _tl8648686512_)
                                        (let ((_e8648786517_
                                               (gx#syntax-e _tl8648686512_)))
                                          (let ((_hd8648886520_
                                                 (##car _e8648786517_))
                                                (_tl8648986522_
                                                 (##cdr _e8648786517_)))
                                            (let ((_alias-id86525_
                                                   _hd8648886520_))
                                              (if (gx#stx-null? _tl8648986522_)
                                                  (if (and (gx#identifier?
                                                            _id86515_)
                                                           (gx#identifier?
                                                            _alias-id86525_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id86515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id86525_ '())))
              (_E8648086495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8648086495_)))))
                                        (_E8648086495_)))))
                              (_E8648086495_))))
                      (_E8648086495_)))))
          (_E8647986527_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86434_)
        (let* ((_e8643586445_ _stx86434_)
               (_E8643786449_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8643586445_)))
               (_E8643686473_
                (lambda ()
                  (if (gx#stx-pair? _e8643586445_)
                      (let ((_e8643886453_ (gx#syntax-e _e8643586445_)))
                        (let ((_hd8643986456_ (##car _e8643886453_))
                              (_tl8644086458_ (##cdr _e8643886453_)))
                          (if (gx#stx-pair? _tl8644086458_)
                              (let ((_e8644186461_
                                     (gx#syntax-e _tl8644086458_)))
                                (let ((_hd8644286464_ (##car _e8644186461_))
                                      (_tl8644386466_ (##cdr _e8644186461_)))
                                  (let* ((_hd86469_ _hd8644286464_)
                                         (_body86471_ _tl8644386466_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86469_)
                                             (gx#stx-list? _body86471_)
                                             (not (gx#stx-null? _body86471_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86469_)
                                         _body86471_)
                                        (_E8643786449_)))))
                              (_E8643786449_))))
                      (_E8643786449_)))))
          (_E8643686473_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86370_)
        (letrec ((_generate86372_
                  (lambda (_clause86402_)
                    (let* ((_e8640386410_ _clause86402_)
                           (_E8640586414_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86370_
                               _clause86402_)))
                           (_E8640486430_
                            (lambda ()
                              (if (gx#stx-pair? _e8640386410_)
                                  (let ((_e8640686418_
                                         (gx#syntax-e _e8640386410_)))
                                    (let ((_hd8640786421_
                                           (##car _e8640686418_))
                                          (_tl8640886423_
                                           (##cdr _e8640686418_)))
                                      (let* ((_hd86426_ _hd8640786421_)
                                             (_body86428_ _tl8640886423_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86426_)
                                                 (gx#stx-list? _body86428_)
                                                 (not (gx#stx-null?
                                                       _body86428_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86426_)
                                                   _body86428_)
                                             (gx#stx-source _clause86402_))
                                            (_E8640586414_)))))
                                  (_E8640586414_)))))
                      (_E8640486430_)))))
          (let* ((_e8637386380_ _stx86370_)
                 (_E8637586384_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8637386380_)))
                 (_E8637486398_
                  (lambda ()
                    (if (gx#stx-pair? _e8637386380_)
                        (let ((_e8637686388_ (gx#syntax-e _e8637386380_)))
                          (let ((_hd8637786391_ (##car _e8637686388_))
                                (_tl8637886393_ (##cdr _e8637686388_)))
                            (let ((_clauses86396_ _tl8637886393_))
                              (if (gx#stx-list? _clauses86396_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86372_
                                    _clauses86396_))
                                  (_E8637586384_)))))
                        (_E8637586384_)))))
            (_E8637486398_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86271_ _form86272_)
        (letrec ((_generate86274_
                  (lambda (_bind86317_)
                    (let* ((_e8631886328_ _bind86317_)
                           (_E8632086332_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86271_
                               _bind86317_)))
                           (_E8631986356_
                            (lambda ()
                              (if (gx#stx-pair? _e8631886328_)
                                  (let ((_e8632186336_
                                         (gx#syntax-e _e8631886328_)))
                                    (let ((_hd8632286339_
                                           (##car _e8632186336_))
                                          (_tl8632386341_
                                           (##cdr _e8632186336_)))
                                      (let ((_ids86344_ _hd8632286339_))
                                        (if (gx#stx-pair? _tl8632386341_)
                                            (let ((_e8632486346_
                                                   (gx#syntax-e
                                                    _tl8632386341_)))
                                              (let ((_hd8632586349_
                                                     (##car _e8632486346_))
                                                    (_tl8632686351_
                                                     (##cdr _e8632486346_)))
                                                (let ((_expr86354_
                                                       _hd8632586349_))
                                                  (if (gx#stx-null?
                                                       _tl8632686351_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86344_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86344_)
                        (cons _expr86354_ '()))
                  (_E8632086332_))
              (_E8632086332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8632086332_)))))
                                  (_E8632086332_)))))
                      (_E8631986356_)))))
          (let* ((_e8627586285_ _stx86271_)
                 (_E8627786289_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8627586285_)))
                 (_E8627686313_
                  (lambda ()
                    (if (gx#stx-pair? _e8627586285_)
                        (let ((_e8627886293_ (gx#syntax-e _e8627586285_)))
                          (let ((_hd8627986296_ (##car _e8627886293_))
                                (_tl8628086298_ (##cdr _e8627886293_)))
                            (if (gx#stx-pair? _tl8628086298_)
                                (let ((_e8628186301_
                                       (gx#syntax-e _tl8628086298_)))
                                  (let ((_hd8628286304_ (##car _e8628186301_))
                                        (_tl8628386306_ (##cdr _e8628186301_)))
                                    (let* ((_hd86309_ _hd8628286304_)
                                           (_body86311_ _tl8628386306_))
                                      (if (and (gx#stx-list? _hd86309_)
                                               (gx#stx-list? _body86311_)
                                               (not (gx#stx-null?
                                                     _body86311_)))
                                          (gx#core-cons*
                                           _form86272_
                                           (gx#stx-map1
                                            _generate86274_
                                            _hd86309_)
                                           _body86311_)
                                          (_E8627786289_)))))
                                (_E8627786289_))))
                        (_E8627786289_)))))
            (_E8627686313_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86363_)
        (let ((_form86365_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86363_ _form86365_))))
    (define gx#macro-expand-let-values
      (lambda _g88748_
        (let ((_g88747_ (##length _g88748_)))
          (cond ((##fx= _g88747_ 1)
                 (apply (lambda (_stx86363_)
                          (gx#macro-expand-let-values__0 _stx86363_))
                        _g88748_))
                ((##fx= _g88747_ 2)
                 (apply (lambda (_stx86367_ _form86368_)
                          (gx#macro-expand-let-values__%
                           _stx86367_
                           _form86368_))
                        _g88748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g88748_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86268_)
        (gx#macro-expand-let-values__% _stx86268_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86266_)
        (gx#macro-expand-let-values__% _stx86266_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86157_)
        (let* ((_e8615886184_ _stx86157_)
               (_E8617086188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8615886184_)))
               (_E8616086230_
                (lambda ()
                  (if (gx#stx-pair? _e8615886184_)
                      (let ((_e8617186192_ (gx#syntax-e _e8615886184_)))
                        (let ((_hd8617286195_ (##car _e8617186192_))
                              (_tl8617386197_ (##cdr _e8617186192_)))
                          (if (gx#stx-pair? _tl8617386197_)
                              (let ((_e8617486200_
                                     (gx#syntax-e _tl8617386197_)))
                                (let ((_hd8617586203_ (##car _e8617486200_))
                                      (_tl8617686205_ (##cdr _e8617486200_)))
                                  (let ((_test86208_ _hd8617586203_))
                                    (if (gx#stx-pair? _tl8617686205_)
                                        (let ((_e8617786210_
                                               (gx#syntax-e _tl8617686205_)))
                                          (let ((_hd8617886213_
                                                 (##car _e8617786210_))
                                                (_tl8617986215_
                                                 (##cdr _e8617786210_)))
                                            (let ((_K86218_ _hd8617886213_))
                                              (if (gx#stx-pair? _tl8617986215_)
                                                  (let ((_e8618086220_
                                                         (gx#syntax-e
                                                          _tl8617986215_)))
                                                    (let ((_hd8618186223_
                                                           (##car _e8618086220_))
                                                          (_tl8618286225_
                                                           (##cdr _e8618086220_)))
                                                      (let ((_E86228_
                                                             _hd8618186223_))
                                                        (if (gx#stx-null?
                                                             _tl8618286225_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86208_
                         _K86218_
                         _E86228_)
                        (_E8617086188_))
                    (_E8617086188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8617086188_)))))
                                        (_E8617086188_)))))
                              (_E8617086188_))))
                      (_E8617086188_))))
               (_E8615986262_
                (lambda ()
                  (if (gx#stx-pair? _e8615886184_)
                      (let ((_e8616186234_ (gx#syntax-e _e8615886184_)))
                        (let ((_hd8616286237_ (##car _e8616186234_))
                              (_tl8616386239_ (##cdr _e8616186234_)))
                          (if (gx#stx-pair? _tl8616386239_)
                              (let ((_e8616486242_
                                     (gx#syntax-e _tl8616386239_)))
                                (let ((_hd8616586245_ (##car _e8616486242_))
                                      (_tl8616686247_ (##cdr _e8616486242_)))
                                  (let ((_test86250_ _hd8616586245_))
                                    (if (gx#stx-pair? _tl8616686247_)
                                        (let ((_e8616786252_
                                               (gx#syntax-e _tl8616686247_)))
                                          (let ((_hd8616886255_
                                                 (##car _e8616786252_))
                                                (_tl8616986257_
                                                 (##cdr _e8616786252_)))
                                            (let ((_K86260_ _hd8616886255_))
                                              (if (gx#stx-null? _tl8616986257_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86250_
                                                       _K86260_
                                                       '#!void)
                                                      (_E8616086230_))
                                                  (_E8616086230_)))))
                                        (_E8616086230_)))))
                              (_E8616086230_))))
                      (_E8616086230_)))))
          (_E8615986262_))))
    (define gx#free-identifier=?
      (lambda (_xid86145_ _yid86146_)
        (let ((_xe86148_ (gx#resolve-identifier__0 _xid86145_))
              (_ye86149_ (gx#resolve-identifier__0 _yid86146_)))
          (if (and _xe86148_ _ye86149_)
              (let ((_$e86151_ (eq? _xe86148_ _ye86149_)))
                (if _$e86151_
                    _$e86151_
                    (if (##structure-instance-of? _xe86148_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86149_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86148_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86149_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86148_ _ye86149_)
                  '#f
                  (gx#stx-eq? _xid86145_ _yid86146_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86129_ _yid86130_)
        (letrec ((_context86132_
                  (lambda (_e86143_)
                    (if (##structure-direct-instance-of?
                         _e86143_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86143_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86133_
                  (lambda (_e86141_)
                    (if (symbol? _e86141_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86141_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86141_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86141_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86134_
                  (lambda (_e86139_)
                    (if (symbol? _e86139_)
                        _e86139_
                        (gx#syntax-local-unwrap _e86139_)))))
          (let ((_x86136_ (_unwrap86134_ _xid86129_))
                (_y86137_ (_unwrap86134_ _yid86130_)))
            (if (gx#stx-eq? _x86136_ _y86137_)
                (if (eq? (_context86132_ _x86136_) (_context86132_ _y86137_))
                    (equal? (_marks86133_ _x86136_) (_marks86133_ _y86137_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86127_)
        (if (gx#identifier? _stx86127_)
            (gx#core-identifier=? _stx86127_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86125_)
        (if (gx#identifier? _stx86125_)
            (gx#core-identifier=? _stx86125_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86123_)
        (if (gx#identifier? _x86123_)
            (if (not (gx#underscore? _x86123_)) _x86123_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx86069_ _where86070_)
        (let _lp86072_ ((_rest86074_ (gx#syntax->list _stx86069_)))
          (let* ((_rest8607586083_ _rest86074_)
                 (_else8607786091_ (lambda () '#t))
                 (_K8607986101_
                  (lambda (_rest86094_ _hd86095_)
                    (if (not (gx#identifier? _hd86095_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where86070_
                         _hd86095_)
                        (if (find (lambda (_g8609686098_)
                                    (gx#bound-identifier=?
                                     _g8609686098_
                                     _hd86095_))
                                  _rest86094_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where86070_
                             _hd86095_)
                            (_lp86072_ _rest86094_))))))
            (if (##pair? _rest8607586083_)
                (let ((_hd8608086104_ (##car _rest8607586083_))
                      (_tl8608186106_ (##cdr _rest8607586083_)))
                  (let* ((_hd86109_ _hd8608086104_)
                         (_rest86111_ _tl8608186106_))
                    (_K8607986101_ _rest86111_ _hd86109_)))
                (_else8607786091_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86116_)
        (let ((_where86118_ _stx86116_))
          (gx#check-duplicate-identifiers__% _stx86116_ _where86118_))))
    (define gx#check-duplicate-identifiers
      (lambda _g88750_
        (let ((_g88749_ (##length _g88750_)))
          (cond ((##fx= _g88749_ 1)
                 (apply (lambda (_stx86116_)
                          (gx#check-duplicate-identifiers__0 _stx86116_))
                        _g88750_))
                ((##fx= _g88749_ 2)
                 (apply (lambda (_stx86120_ _where86121_)
                          (gx#check-duplicate-identifiers__%
                           _stx86120_
                           _where86121_))
                        _g88750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g88750_))))))
    (define gx#core-bind-values?
      (lambda (_stx86061_)
        (gx#stx-andmap
         (lambda (_x86063_)
           (let ((_$e86065_ (gx#identifier? _x86063_)))
             (if _$e86065_ _$e86065_ (gx#stx-false? _x86063_))))
         _stx86061_)))
    (define gx#core-bind-values!__%
      (lambda (_stx86025_ _rebind?86026_ _phi86027_ _ctx86028_)
        (gx#stx-for-each1
         (lambda (_id86030_)
           (if (gx#identifier? _id86030_)
               (gx#core-bind-runtime!__%
                _id86030_
                _rebind?86026_
                _phi86027_
                _ctx86028_)
               '#!void))
         _stx86025_)))
    (define gx#core-bind-values!__0
      (lambda (_stx86035_)
        (let* ((_rebind?86037_ '#f)
               (_phi86039_ (gx#current-expander-phi))
               (_ctx86041_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86035_
           _rebind?86037_
           _phi86039_
           _ctx86041_))))
    (define gx#core-bind-values!__1
      (lambda (_stx86043_ _rebind?86044_)
        (let* ((_phi86046_ (gx#current-expander-phi))
               (_ctx86048_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86043_
           _rebind?86044_
           _phi86046_
           _ctx86048_))))
    (define gx#core-bind-values!__2
      (lambda (_stx86050_ _rebind?86051_ _phi86052_)
        (let ((_ctx86054_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86050_
           _rebind?86051_
           _phi86052_
           _ctx86054_))))
    (define gx#core-bind-values!
      (lambda _g88752_
        (let ((_g88751_ (##length _g88752_)))
          (cond ((##fx= _g88751_ 1)
                 (apply (lambda (_stx86035_)
                          (gx#core-bind-values!__0 _stx86035_))
                        _g88752_))
                ((##fx= _g88751_ 2)
                 (apply (lambda (_stx86043_ _rebind?86044_)
                          (gx#core-bind-values!__1 _stx86043_ _rebind?86044_))
                        _g88752_))
                ((##fx= _g88751_ 3)
                 (apply (lambda (_stx86050_ _rebind?86051_ _phi86052_)
                          (gx#core-bind-values!__2
                           _stx86050_
                           _rebind?86051_
                           _phi86052_))
                        _g88752_))
                ((##fx= _g88751_ 4)
                 (apply (lambda (_stx86056_
                                 _rebind?86057_
                                 _phi86058_
                                 _ctx86059_)
                          (gx#core-bind-values!__%
                           _stx86056_
                           _rebind?86057_
                           _phi86058_
                           _ctx86059_))
                        _g88752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g88752_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx86020_)
        (gx#stx-map1
         (lambda (_x86022_)
           (if (gx#identifier? _x86022_)
               (gx#core-quote-syntax__0 _x86022_)
               '#f))
         _stx86020_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86013_)
        (if (gx#identifier? _stx86013_)
            (let* ((_bind86015_ (gx#resolve-identifier__0 _stx86013_))
                   (_$e86017_ (not _bind86015_)))
              (if _$e86017_
                  _$e86017_
                  (##structure-instance-of?
                   _bind86015_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86005_ _form86006_)
        (let ((_bind86008_ (gx#resolve-identifier__0 _id86005_)))
          (if (##structure-instance-of? _bind86008_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86005_)
              (if (not _bind86008_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86005_)))
                      (gx#core-quote-syntax__0 _id86005_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86006_
                       _id86005_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86006_
                   _id86005_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id85964_ _rebind?85965_ _phi85966_ _ctx85967_)
        (let* ((_key85969_ (gx#core-identifier-key _id85964_))
               (_eid85971_
                (gx#make-binding-id__% _key85969_ '#f _phi85966_ _ctx85967_))
               (_bind85973_
                (if (##structure-instance-of? _ctx85967_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85971_
                     _key85969_
                     _phi85966_
                     _ctx85967_)
                    (if (##structure-instance-of?
                         _ctx85967_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85971_
                         _key85969_
                         _phi85966_)
                        (if (##structure-instance-of?
                             _ctx85967_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid85971_
                             _key85969_
                             _phi85966_)
                            (##structure
                             gx#runtime-binding::t
                             _eid85971_
                             _key85969_
                             _phi85966_))))))
          (gx#bind-identifier!__%
           _id85964_
           _bind85973_
           _rebind?85965_
           _phi85966_
           _ctx85967_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id85979_)
        (let* ((_rebind?85981_ '#f)
               (_phi85983_ (gx#current-expander-phi))
               (_ctx85985_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85979_
           _rebind?85981_
           _phi85983_
           _ctx85985_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id85987_ _rebind?85988_)
        (let* ((_phi85990_ (gx#current-expander-phi))
               (_ctx85992_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85987_
           _rebind?85988_
           _phi85990_
           _ctx85992_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id85994_ _rebind?85995_ _phi85996_)
        (let ((_ctx85998_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id85994_
           _rebind?85995_
           _phi85996_
           _ctx85998_))))
    (define gx#core-bind-runtime!
      (lambda _g88754_
        (let ((_g88753_ (##length _g88754_)))
          (cond ((##fx= _g88753_ 1)
                 (apply (lambda (_id85979_)
                          (gx#core-bind-runtime!__0 _id85979_))
                        _g88754_))
                ((##fx= _g88753_ 2)
                 (apply (lambda (_id85987_ _rebind?85988_)
                          (gx#core-bind-runtime!__1 _id85987_ _rebind?85988_))
                        _g88754_))
                ((##fx= _g88753_ 3)
                 (apply (lambda (_id85994_ _rebind?85995_ _phi85996_)
                          (gx#core-bind-runtime!__2
                           _id85994_
                           _rebind?85995_
                           _phi85996_))
                        _g88754_))
                ((##fx= _g88753_ 4)
                 (apply (lambda (_id86000_
                                 _rebind?86001_
                                 _phi86002_
                                 _ctx86003_)
                          (gx#core-bind-runtime!__%
                           _id86000_
                           _rebind?86001_
                           _phi86002_
                           _ctx86003_))
                        _g88754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g88754_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id85919_ _eid85920_ _rebind?85921_ _phi85922_ _ctx85923_)
        (let* ((_key85925_ (gx#core-identifier-key _id85919_))
               (_bind85927_
                (if (##structure-instance-of? _ctx85923_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid85920_
                     _key85925_
                     _phi85922_
                     _ctx85923_)
                    (if (##structure-instance-of?
                         _ctx85923_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid85920_
                         _key85925_
                         _phi85922_)
                        (##structure
                         gx#runtime-binding::t
                         _eid85920_
                         _key85925_
                         _phi85922_)))))
          (gx#bind-identifier!__%
           _id85919_
           _bind85927_
           _rebind?85921_
           _phi85922_
           _ctx85923_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id85933_ _eid85934_)
        (let* ((_rebind?85936_ '#f)
               (_phi85938_ (gx#current-expander-phi))
               (_ctx85940_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85933_
           _eid85934_
           _rebind?85936_
           _phi85938_
           _ctx85940_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id85942_ _eid85943_ _rebind?85944_)
        (let* ((_phi85946_ (gx#current-expander-phi))
               (_ctx85948_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85942_
           _eid85943_
           _rebind?85944_
           _phi85946_
           _ctx85948_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id85950_ _eid85951_ _rebind?85952_ _phi85953_)
        (let ((_ctx85955_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id85950_
           _eid85951_
           _rebind?85952_
           _phi85953_
           _ctx85955_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g88756_
        (let ((_g88755_ (##length _g88756_)))
          (cond ((##fx= _g88755_ 2)
                 (apply (lambda (_id85933_ _eid85934_)
                          (gx#core-bind-runtime-reference!__0
                           _id85933_
                           _eid85934_))
                        _g88756_))
                ((##fx= _g88755_ 3)
                 (apply (lambda (_id85942_ _eid85943_ _rebind?85944_)
                          (gx#core-bind-runtime-reference!__1
                           _id85942_
                           _eid85943_
                           _rebind?85944_))
                        _g88756_))
                ((##fx= _g88755_ 4)
                 (apply (lambda (_id85950_
                                 _eid85951_
                                 _rebind?85952_
                                 _phi85953_)
                          (gx#core-bind-runtime-reference!__2
                           _id85950_
                           _eid85951_
                           _rebind?85952_
                           _phi85953_))
                        _g88756_))
                ((##fx= _g88755_ 5)
                 (apply (lambda (_id85957_
                                 _eid85958_
                                 _rebind?85959_
                                 _phi85960_
                                 _ctx85961_)
                          (gx#core-bind-runtime-reference!__%
                           _id85957_
                           _eid85958_
                           _rebind?85959_
                           _phi85960_
                           _ctx85961_))
                        _g88756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g88756_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id85879_ _eid85880_ _rebind?85881_ _phi85882_ _ctx85883_)
        (gx#bind-identifier!__%
         _id85879_
         (##structure
          gx#extern-binding::t
          _eid85880_
          (gx#core-identifier-key _id85879_)
          _phi85882_)
         _rebind?85881_
         _phi85882_
         _ctx85883_)))
    (define gx#core-bind-extern!__0
      (lambda (_id85888_ _eid85889_)
        (let* ((_rebind?85891_ '#f)
               (_phi85893_ (gx#current-expander-phi))
               (_ctx85895_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85888_
           _eid85889_
           _rebind?85891_
           _phi85893_
           _ctx85895_))))
    (define gx#core-bind-extern!__1
      (lambda (_id85897_ _eid85898_ _rebind?85899_)
        (let* ((_phi85901_ (gx#current-expander-phi))
               (_ctx85903_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85897_
           _eid85898_
           _rebind?85899_
           _phi85901_
           _ctx85903_))))
    (define gx#core-bind-extern!__2
      (lambda (_id85905_ _eid85906_ _rebind?85907_ _phi85908_)
        (let ((_ctx85910_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id85905_
           _eid85906_
           _rebind?85907_
           _phi85908_
           _ctx85910_))))
    (define gx#core-bind-extern!
      (lambda _g88758_
        (let ((_g88757_ (##length _g88758_)))
          (cond ((##fx= _g88757_ 2)
                 (apply (lambda (_id85888_ _eid85889_)
                          (gx#core-bind-extern!__0 _id85888_ _eid85889_))
                        _g88758_))
                ((##fx= _g88757_ 3)
                 (apply (lambda (_id85897_ _eid85898_ _rebind?85899_)
                          (gx#core-bind-extern!__1
                           _id85897_
                           _eid85898_
                           _rebind?85899_))
                        _g88758_))
                ((##fx= _g88757_ 4)
                 (apply (lambda (_id85905_
                                 _eid85906_
                                 _rebind?85907_
                                 _phi85908_)
                          (gx#core-bind-extern!__2
                           _id85905_
                           _eid85906_
                           _rebind?85907_
                           _phi85908_))
                        _g88758_))
                ((##fx= _g88757_ 5)
                 (apply (lambda (_id85912_
                                 _eid85913_
                                 _rebind?85914_
                                 _phi85915_
                                 _ctx85916_)
                          (gx#core-bind-extern!__%
                           _id85912_
                           _eid85913_
                           _rebind?85914_
                           _phi85915_
                           _ctx85916_))
                        _g88758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g88758_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id85833_ _e85834_ _rebind?85835_ _phi85836_ _ctx85837_)
        (gx#bind-identifier!__%
         _id85833_
         (let ((_key85842_ (gx#core-identifier-key _id85833_))
               (_e85843_
                (if (or (##structure-instance-of? _e85834_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e85834_
                         'gx#expander-context::t))
                    _e85834_
                    (##structure
                     gx#user-expander::t
                     _e85834_
                     _ctx85837_
                     _phi85836_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key85842_ '#t _phi85836_ _ctx85837_)
            _key85842_
            _phi85836_
            _e85843_))
         _rebind?85835_
         _phi85836_
         _ctx85837_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id85848_ _e85849_)
        (let* ((_rebind?85851_ '#f)
               (_phi85853_ (gx#current-expander-phi))
               (_ctx85855_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85848_
           _e85849_
           _rebind?85851_
           _phi85853_
           _ctx85855_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id85857_ _e85858_ _rebind?85859_)
        (let* ((_phi85861_ (gx#current-expander-phi))
               (_ctx85863_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85857_
           _e85858_
           _rebind?85859_
           _phi85861_
           _ctx85863_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id85865_ _e85866_ _rebind?85867_ _phi85868_)
        (let ((_ctx85870_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id85865_
           _e85866_
           _rebind?85867_
           _phi85868_
           _ctx85870_))))
    (define gx#core-bind-syntax!
      (lambda _g88760_
        (let ((_g88759_ (##length _g88760_)))
          (cond ((##fx= _g88759_ 2)
                 (apply (lambda (_id85848_ _e85849_)
                          (gx#core-bind-syntax!__0 _id85848_ _e85849_))
                        _g88760_))
                ((##fx= _g88759_ 3)
                 (apply (lambda (_id85857_ _e85858_ _rebind?85859_)
                          (gx#core-bind-syntax!__1
                           _id85857_
                           _e85858_
                           _rebind?85859_))
                        _g88760_))
                ((##fx= _g88759_ 4)
                 (apply (lambda (_id85865_ _e85866_ _rebind?85867_ _phi85868_)
                          (gx#core-bind-syntax!__2
                           _id85865_
                           _e85866_
                           _rebind?85867_
                           _phi85868_))
                        _g88760_))
                ((##fx= _g88759_ 5)
                 (apply (lambda (_id85872_
                                 _e85873_
                                 _rebind?85874_
                                 _phi85875_
                                 _ctx85876_)
                          (gx#core-bind-syntax!__%
                           _id85872_
                           _e85873_
                           _rebind?85874_
                           _phi85875_
                           _ctx85876_))
                        _g88760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g88760_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id85816_ _e85817_ _rebind?85818_)
        (gx#core-bind-syntax!__%
         _id85816_
         _e85817_
         _rebind?85818_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id85823_ _e85824_)
        (let ((_rebind?85826_ '#f))
          (gx#core-bind-root-syntax!__% _id85823_ _e85824_ _rebind?85826_))))
    (define gx#core-bind-root-syntax!
      (lambda _g88762_
        (let ((_g88761_ (##length _g88762_)))
          (cond ((##fx= _g88761_ 2)
                 (apply (lambda (_id85823_ _e85824_)
                          (gx#core-bind-root-syntax!__0 _id85823_ _e85824_))
                        _g88762_))
                ((##fx= _g88761_ 3)
                 (apply (lambda (_id85828_ _e85829_ _rebind?85830_)
                          (gx#core-bind-root-syntax!__%
                           _id85828_
                           _e85829_
                           _rebind?85830_))
                        _g88762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g88762_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id85774_ _alias-id85775_ _rebind?85776_ _phi85777_ _ctx85778_)
        (gx#bind-identifier!__%
         _id85774_
         (let ((_key85780_ (gx#core-identifier-key _id85774_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key85780_ '#t _phi85777_ _ctx85778_)
            _key85780_
            _phi85777_
            _alias-id85775_))
         _rebind?85776_
         _phi85777_
         _ctx85778_)))
    (define gx#core-bind-alias!__0
      (lambda (_id85785_ _alias-id85786_)
        (let* ((_rebind?85788_ '#f)
               (_phi85790_ (gx#current-expander-phi))
               (_ctx85792_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85785_
           _alias-id85786_
           _rebind?85788_
           _phi85790_
           _ctx85792_))))
    (define gx#core-bind-alias!__1
      (lambda (_id85794_ _alias-id85795_ _rebind?85796_)
        (let* ((_phi85798_ (gx#current-expander-phi))
               (_ctx85800_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85794_
           _alias-id85795_
           _rebind?85796_
           _phi85798_
           _ctx85800_))))
    (define gx#core-bind-alias!__2
      (lambda (_id85802_ _alias-id85803_ _rebind?85804_ _phi85805_)
        (let ((_ctx85807_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id85802_
           _alias-id85803_
           _rebind?85804_
           _phi85805_
           _ctx85807_))))
    (define gx#core-bind-alias!
      (lambda _g88764_
        (let ((_g88763_ (##length _g88764_)))
          (cond ((##fx= _g88763_ 2)
                 (apply (lambda (_id85785_ _alias-id85786_)
                          (gx#core-bind-alias!__0 _id85785_ _alias-id85786_))
                        _g88764_))
                ((##fx= _g88763_ 3)
                 (apply (lambda (_id85794_ _alias-id85795_ _rebind?85796_)
                          (gx#core-bind-alias!__1
                           _id85794_
                           _alias-id85795_
                           _rebind?85796_))
                        _g88764_))
                ((##fx= _g88763_ 4)
                 (apply (lambda (_id85802_
                                 _alias-id85803_
                                 _rebind?85804_
                                 _phi85805_)
                          (gx#core-bind-alias!__2
                           _id85802_
                           _alias-id85803_
                           _rebind?85804_
                           _phi85805_))
                        _g88764_))
                ((##fx= _g88763_ 5)
                 (apply (lambda (_id85809_
                                 _alias-id85810_
                                 _rebind?85811_
                                 _phi85812_
                                 _ctx85813_)
                          (gx#core-bind-alias!__%
                           _id85809_
                           _alias-id85810_
                           _rebind?85811_
                           _phi85812_
                           _ctx85813_))
                        _g88764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g88764_))))))
    (define gx#make-binding-id__%
      (lambda (_key85731_ _syntax?85732_ _phi85733_ _ctx85734_)
        (if (uninterned-symbol? _key85731_)
            (gensym 'L)
            (if (pair? _key85731_)
                (gensym (car _key85731_))
                (if (##structure-instance-of? _ctx85734_ 'gx#top-context::t)
                    (let ((_ns85736_
                           (gx#core-context-namespace__% _ctx85734_)))
                      (if (and (fxzero? _phi85733_) (not _syntax?85732_))
                          (if _ns85736_
                              (make-symbol__1 _ns85736_ '"#" _key85731_)
                              _key85731_)
                          (if _syntax?85732_
                              (make-symbol__1
                               (let ((_$e85738_ _ns85736_))
                                 (if _$e85738_ _$e85738_ '""))
                               '"[:"
                               (number->string _phi85733_)
                               '":]#"
                               _key85731_)
                              (make-symbol__1
                               (let ((_$e85741_ _ns85736_))
                                 (if _$e85741_ _$e85741_ '""))
                               '"["
                               (number->string _phi85733_)
                               '"]#"
                               _key85731_))))
                    (gensym _key85731_))))))
    (define gx#make-binding-id__0
      (lambda (_key85747_)
        (let* ((_syntax?85749_ '#f)
               (_phi85751_ (gx#current-expander-phi))
               (_ctx85753_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85747_
           _syntax?85749_
           _phi85751_
           _ctx85753_))))
    (define gx#make-binding-id__1
      (lambda (_key85755_ _syntax?85756_)
        (let* ((_phi85758_ (gx#current-expander-phi))
               (_ctx85760_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85755_
           _syntax?85756_
           _phi85758_
           _ctx85760_))))
    (define gx#make-binding-id__2
      (lambda (_key85762_ _syntax?85763_ _phi85764_)
        (let ((_ctx85766_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key85762_
           _syntax?85763_
           _phi85764_
           _ctx85766_))))
    (define gx#make-binding-id
      (lambda _g88766_
        (let ((_g88765_ (##length _g88766_)))
          (cond ((##fx= _g88765_ 1)
                 (apply (lambda (_key85747_)
                          (gx#make-binding-id__0 _key85747_))
                        _g88766_))
                ((##fx= _g88765_ 2)
                 (apply (lambda (_key85755_ _syntax?85756_)
                          (gx#make-binding-id__1 _key85755_ _syntax?85756_))
                        _g88766_))
                ((##fx= _g88765_ 3)
                 (apply (lambda (_key85762_ _syntax?85763_ _phi85764_)
                          (gx#make-binding-id__2
                           _key85762_
                           _syntax?85763_
                           _phi85764_))
                        _g88766_))
                ((##fx= _g88765_ 4)
                 (apply (lambda (_key85768_
                                 _syntax?85769_
                                 _phi85770_
                                 _ctx85771_)
                          (gx#make-binding-id__%
                           _key85768_
                           _syntax?85769_
                           _phi85770_
                           _ctx85771_))
                        _g88766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g88766_))))))))
