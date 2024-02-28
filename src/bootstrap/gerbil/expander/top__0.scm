(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709127356)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89700_)
        (letrec ((_expand-special89702_
                  (lambda (_hd89704_ _K89705_ _rest89706_ _r89707_)
                    (_K89705_
                     _rest89706_
                     (cons (gx#core-expand-top _hd89704_) _r89707_)))))
          (gx#core-expand-block__0 _stx89700_ _expand-special89702_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89453_)
        (letrec ((_expand-special89455_
                  (lambda (_hd89575_ _K89576_ _rest89577_ _r89578_)
                    (let* ((_K89582_
                            (lambda (_e89580_)
                              (_K89576_ _rest89577_ (cons _e89580_ _r89578_))))
                           (_e8958389612_ _hd89575_)
                           (_E8960789616_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8958389612_)))
                           (_E8960389628_
                            (lambda ()
                              (if (gx#stx-pair? _e8958389612_)
                                  (let ((_e8960889620_
                                         (gx#syntax-e _e8958389612_)))
                                    (let ((_hd8960989623_
                                           (##car _e8960889620_))
                                          (_tl8961089625_
                                           (##cdr _e8960889620_)))
                                      (if (and (gx#identifier? _hd8960989623_)
                                               (gx#core-identifier=?
                                                _hd8960989623_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89582_
                                               (gx#core-expand-define-runtime%
                                                _hd89575_))
                                              (_E8960789616_))
                                          (_E8960789616_))))
                                  (_E8960789616_))))
                           (_E8959989640_
                            (lambda ()
                              (if (gx#stx-pair? _e8958389612_)
                                  (let ((_e8960489632_
                                         (gx#syntax-e _e8958389612_)))
                                    (let ((_hd8960589635_
                                           (##car _e8960489632_))
                                          (_tl8960689637_
                                           (##cdr _e8960489632_)))
                                      (if (and (gx#identifier? _hd8960589635_)
                                               (gx#core-identifier=?
                                                _hd8960589635_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89582_
                                               (gx#core-expand-define-alias%
                                                _hd89575_))
                                              (_E8960389628_))
                                          (_E8960389628_))))
                                  (_E8960389628_))))
                           (_E8958989652_
                            (lambda ()
                              (if (gx#stx-pair? _e8958389612_)
                                  (let ((_e8960089644_
                                         (gx#syntax-e _e8958389612_)))
                                    (let ((_hd8960189647_
                                           (##car _e8960089644_))
                                          (_tl8960289649_
                                           (##cdr _e8960089644_)))
                                      (if (and (gx#identifier? _hd8960189647_)
                                               (gx#core-identifier=?
                                                _hd8960189647_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89582_
                                               (gx#core-expand-define-syntax%
                                                _hd89575_))
                                              (_E8959989640_))
                                          (_E8959989640_))))
                                  (_E8959989640_))))
                           (_E8958589684_
                            (lambda ()
                              (if (gx#stx-pair? _e8958389612_)
                                  (let ((_e8959089656_
                                         (gx#syntax-e _e8958389612_)))
                                    (let ((_hd8959189659_
                                           (##car _e8959089656_))
                                          (_tl8959289661_
                                           (##cdr _e8959089656_)))
                                      (if (and (gx#identifier? _hd8959189659_)
                                               (gx#core-identifier=?
                                                _hd8959189659_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8959289661_)
                                              (let ((_e8959389664_
                                                     (gx#syntax-e
                                                      _tl8959289661_)))
                                                (let ((_hd8959489667_
                                                       (##car _e8959389664_))
                                                      (_tl8959589669_
                                                       (##cdr _e8959389664_)))
                                                  (let ((_hd-bind89672_
                                                         _hd8959489667_))
                                                    (if (gx#stx-pair?
                                                         _tl8959589669_)
                                                        (let ((_e8959689674_
                                                               (gx#syntax-e
                                                                _tl8959589669_)))
                                                          (let ((_hd8959789677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8959689674_))
                        (_tl8959889679_ (##cdr _e8959689674_)))
                    (let ((_expr89682_ _hd8959789677_))
                      (if (gx#stx-null? _tl8959889679_)
                          (if (gx#core-bind-values? _hd-bind89672_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89672_)
                                (_K89582_ _hd89575_))
                              (_E8958989652_))
                          (_E8958989652_)))))
                (_E8958989652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8958989652_))
                                          (_E8958989652_))))
                                  (_E8958989652_))))
                           (_E8958489696_
                            (lambda ()
                              (if (gx#stx-pair? _e8958389612_)
                                  (let ((_e8958689688_
                                         (gx#syntax-e _e8958389612_)))
                                    (let ((_hd8958789691_
                                           (##car _e8958689688_))
                                          (_tl8958889693_
                                           (##cdr _e8958689688_)))
                                      (if (and (gx#identifier? _hd8958789691_)
                                               (gx#core-identifier=?
                                                _hd8958789691_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89582_
                                               (gx#core-expand-begin-syntax%
                                                _hd89575_))
                                              (_E8958589684_))
                                          (_E8958589684_))))
                                  (_E8958589684_)))))
                      (_E8958489696_))))
                 (_eval-body89456_
                  (lambda (_rbody89464_)
                    (let _lp89466_ ((_rest89468_ _rbody89464_)
                                    (_body89469_ '())
                                    (_ebody89470_ '()))
                      (let* ((_rest8947189479_ _rest89468_)
                             (_else8947389487_
                              (lambda ()
                                (values _body89469_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89470_)
                                          (gx#stx-source _stx89453_))))))
                             (_K8947589563_
                              (lambda (_rest89490_ _hd89491_)
                                (let* ((_e8949289509_ _hd89491_)
                                       (_E8950489513_
                                        (lambda ()
                                          (_lp89466_
                                           _rest89490_
                                           (cons _hd89491_ _body89469_)
                                           (cons _hd89491_ _ebody89470_))))
                                       (_E8949489525_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8949289509_)
                                              (let ((_e8950589517_
                                                     (gx#syntax-e
                                                      _e8949289509_)))
                                                (let ((_hd8950689520_
                                                       (##car _e8950589517_))
                                                      (_tl8950789522_
                                                       (##cdr _e8950589517_)))
                                                  (if (and (gx#identifier?
                                                            _hd8950689520_)
                                                           (gx#core-identifier=?
                                                            _hd8950689520_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89466_
                                                           _rest89490_
                                                           (cons _hd89491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89469_)
                   _ebody89470_)
                  (_E8950489513_))
              (_E8950489513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8950489513_))))
                                       (_E8949389559_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8949289509_)
                                              (let ((_e8949589529_
                                                     (gx#syntax-e
                                                      _e8949289509_)))
                                                (let ((_hd8949689532_
                                                       (##car _e8949589529_))
                                                      (_tl8949789534_
                                                       (##cdr _e8949589529_)))
                                                  (if (and (gx#identifier?
                                                            _hd8949689532_)
                                                           (gx#core-identifier=?
                                                            _hd8949689532_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8949789534_)
                                                          (let ((_e8949889537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8949789534_)))
                    (let ((_hd8949989540_ (##car _e8949889537_))
                          (_tl8950089542_ (##cdr _e8949889537_)))
                      (let ((_hd-bind89545_ _hd8949989540_))
                        (if (gx#stx-pair? _tl8950089542_)
                            (let ((_e8950189547_ (gx#syntax-e _tl8950089542_)))
                              (let ((_hd8950289550_ (##car _e8950189547_))
                                    (_tl8950389552_ (##cdr _e8950189547_)))
                                (let ((_expr89555_ _hd8950289550_))
                                  (if (gx#stx-null? _tl8950389552_)
                                      (if '#t
                                          (let ((_ehd89557_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89545_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89555_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89491_))))
                                            (_lp89466_
                                             _rest89490_
                                             (cons _ehd89557_ _body89469_)
                                             (cons _ehd89557_ _ebody89470_)))
                                          (_E8949489525_))
                                      (_E8949489525_)))))
                            (_E8949489525_)))))
                  (_E8949489525_))
              (_E8949489525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8949489525_)))))
                                  (_E8949389559_)))))
                        (if (##pair? _rest8947189479_)
                            (let ((_hd8947689566_ (##car _rest8947189479_))
                                  (_tl8947789568_ (##cdr _rest8947189479_)))
                              (let* ((_hd89571_ _hd8947689566_)
                                     (_rest89573_ _tl8947789568_))
                                (_K8947589563_ _rest89573_ _hd89571_)))
                            (_else8947389487_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89459_
                     (gx#core-expand-block__1
                      _stx89453_
                      _expand-special89455_
                      '#f))
                    (_g89723_ (_eval-body89456_ _rbody89459_)))
               (begin
                 (let ((_g89724_
                        (if (##values? _g89723_)
                            (##vector-length _g89723_)
                            1)))
                   (if (not (##fx= _g89724_ 2))
                       (error "Context expects 2 values" _g89724_)))
                 (let ((_expanded-body89461_ (##vector-ref _g89723_ 0))
                       (_value89462_ (##vector-ref _g89723_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89461_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89462_ '())))
                    (gx#stx-source _stx89453_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89423_)
        (let* ((_e8942489431_ _stx89423_)
               (_E8942689435_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8942489431_)))
               (_E8942589449_
                (lambda ()
                  (if (gx#stx-pair? _e8942489431_)
                      (let ((_e8942789439_ (gx#syntax-e _e8942489431_)))
                        (let ((_hd8942889442_ (##car _e8942789439_))
                              (_tl8942989444_ (##cdr _e8942789439_)))
                          (let ((_body89447_ _tl8942989444_))
                            (if (gx#stx-list? _body89447_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89447_)
                                 (gx#stx-source _stx89423_))
                                (_E8942689435_)))))
                      (_E8942689435_)))))
          (_E8942589449_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89421_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89421_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx89367_)
        (let* ((_e8936889381_ _stx89367_)
               (_E8937089385_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8936889381_)))
               (_E8936989417_
                (lambda ()
                  (if (gx#stx-pair? _e8936889381_)
                      (let ((_e8937189389_ (gx#syntax-e _e8936889381_)))
                        (let ((_hd8937289392_ (##car _e8937189389_))
                              (_tl8937389394_ (##cdr _e8937189389_)))
                          (if (gx#stx-pair? _tl8937389394_)
                              (let ((_e8937489397_
                                     (gx#syntax-e _tl8937389394_)))
                                (let ((_hd8937589400_ (##car _e8937489397_))
                                      (_tl8937689402_ (##cdr _e8937489397_)))
                                  (let ((_ann89405_ _hd8937589400_))
                                    (if (gx#stx-pair? _tl8937689402_)
                                        (let ((_e8937789407_
                                               (gx#syntax-e _tl8937689402_)))
                                          (let ((_hd8937889410_
                                                 (##car _e8937789407_))
                                                (_tl8937989412_
                                                 (##cdr _e8937789407_)))
                                            (let ((_expr89415_ _hd8937889410_))
                                              (if (gx#stx-null? _tl8937989412_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann89405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr89415_) '())))
               (gx#stx-source _stx89367_))
              (_E8937089385_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8937089385_)))))
                                        (_E8937089385_)))))
                              (_E8937089385_))))
                      (_E8937089385_)))))
          (_E8936989417_))))
    (define gx#core-expand-local-block
      (lambda (_stx89091_ _body89092_)
        (letrec ((_expand-special89094_
                  (lambda (_hd89362_ _K89363_ _rest89364_ _r89365_)
                    (_K89363_
                     '()
                     (cons (_expand-internal89095_ _hd89362_ _rest89364_)
                           _r89365_))))
                 (_expand-internal89095_
                  (lambda (_hd89358_ _rest89359_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal89097_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd89358_ _rest89359_))
                          (gx#stx-source _stx89091_))
                         _expand-internal-special89096_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89717
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89717)
                       __obj89717))))
                 (_expand-internal-special89096_
                  (lambda (_hd89253_ _K89254_ _rest89255_ _r89256_)
                    (let* ((_e8925789282_ _hd89253_)
                           (_E8927789286_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8925789282_)))
                           (_E8927389298_
                            (lambda ()
                              (if (gx#stx-pair? _e8925789282_)
                                  (let ((_e8927889290_
                                         (gx#syntax-e _e8925789282_)))
                                    (let ((_hd8927989293_
                                           (##car _e8927889290_))
                                          (_tl8928089295_
                                           (##cdr _e8927889290_)))
                                      (if (and (gx#identifier? _hd8927989293_)
                                               (gx#core-identifier=?
                                                _hd8927989293_
                                                '%#declare))
                                          (if '#t
                                              (_K89254_
                                               _rest89255_
                                               (cons (gx#core-expand-declare%
                                                      _hd89253_)
                                                     _r89256_))
                                              (_E8927789286_))
                                          (_E8927789286_))))
                                  (_E8927789286_))))
                           (_E8926989310_
                            (lambda ()
                              (if (gx#stx-pair? _e8925789282_)
                                  (let ((_e8927489302_
                                         (gx#syntax-e _e8925789282_)))
                                    (let ((_hd8927589305_
                                           (##car _e8927489302_))
                                          (_tl8927689307_
                                           (##cdr _e8927489302_)))
                                      (if (and (gx#identifier? _hd8927589305_)
                                               (gx#core-identifier=?
                                                _hd8927589305_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd89253_)
                                                (_K89254_
                                                 _rest89255_
                                                 _r89256_))
                                              (_E8927389298_))
                                          (_E8927389298_))))
                                  (_E8927389298_))))
                           (_E8925989322_
                            (lambda ()
                              (if (gx#stx-pair? _e8925789282_)
                                  (let ((_e8927089314_
                                         (gx#syntax-e _e8925789282_)))
                                    (let ((_hd8927189317_
                                           (##car _e8927089314_))
                                          (_tl8927289319_
                                           (##cdr _e8927089314_)))
                                      (if (and (gx#identifier? _hd8927189317_)
                                               (gx#core-identifier=?
                                                _hd8927189317_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd89253_)
                                                (_K89254_
                                                 _rest89255_
                                                 _r89256_))
                                              (_E8926989310_))
                                          (_E8926989310_))))
                                  (_E8926989310_))))
                           (_E8925889354_
                            (lambda ()
                              (if (gx#stx-pair? _e8925789282_)
                                  (let ((_e8926089326_
                                         (gx#syntax-e _e8925789282_)))
                                    (let ((_hd8926189329_
                                           (##car _e8926089326_))
                                          (_tl8926289331_
                                           (##cdr _e8926089326_)))
                                      (if (and (gx#identifier? _hd8926189329_)
                                               (gx#core-identifier=?
                                                _hd8926189329_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8926289331_)
                                              (let ((_e8926389334_
                                                     (gx#syntax-e
                                                      _tl8926289331_)))
                                                (let ((_hd8926489337_
                                                       (##car _e8926389334_))
                                                      (_tl8926589339_
                                                       (##cdr _e8926389334_)))
                                                  (let ((_hd-bind89342_
                                                         _hd8926489337_))
                                                    (if (gx#stx-pair?
                                                         _tl8926589339_)
                                                        (let ((_e8926689344_
                                                               (gx#syntax-e
                                                                _tl8926589339_)))
                                                          (let ((_hd8926789347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8926689344_))
                        (_tl8926889349_ (##cdr _e8926689344_)))
                    (let ((_expr89352_ _hd8926789347_))
                      (if (gx#stx-null? _tl8926889349_)
                          (if (gx#core-bind-values? _hd-bind89342_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89342_)
                                (_K89254_
                                 _rest89255_
                                 (cons _hd89253_ _r89256_)))
                              (_E8925989322_))
                          (_E8925989322_)))))
                (_E8925989322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8925989322_))
                                          (_E8925989322_))))
                                  (_E8925989322_)))))
                      (_E8925889354_))))
                 (_wrap-internal89097_
                  (lambda (_rbody89099_)
                    (let _lp89101_ ((_rest89103_ _rbody89099_)
                                    (_decls89104_ '())
                                    (_bind89105_ '())
                                    (_body89106_ '()))
                      (let* ((_e8910789114_ _rest89103_)
                             (_E8910989163_
                              (lambda ()
                                (let* ((_body89158_
                                        (let* ((_body8911789127_ _body89106_)
                                               (_else8912089135_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89106_)
                                                   (gx#stx-source
                                                    _stx89091_)))))
                                          (let ((_K8912589155_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx89091_)))
                                                (_K8912289141_
                                                 (lambda (_expr89139_)
                                                   _expr89139_)))
                                            (let ((_try-match8911989151_
                                                   (lambda ()
                                                     (if (##pair? _body8911789127_)
                                                         (let ((_tl8912489146_
                                                                (##cdr _body8911789127_))
                                                               (_hd8912389144_
                                                                (##car _body8911789127_)))
                                                           (if (##null? _tl8912489146_)
                                                               (let ((_expr89149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8912389144_))
                         (_K8912289141_ _expr89149_))
                       (_else8912089135_)))
                 (_else8912089135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8911789127_)
                                                  (_K8912589155_)
                                                  (_try-match8911989151_))))))
                                       (_body89160_
                                        (if (null? _bind89105_)
                                            _body89158_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind89105_
                                                         (cons _body89158_
                                                               '())))
                                             (gx#stx-source _stx89091_)))))
                                  (if (null? _decls89104_)
                                      _body89160_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls89104_
                                                   (cons _body89160_ '())))
                                       (gx#stx-source _stx89091_))))))
                             (_E8910889249_
                              (lambda ()
                                (if (gx#stx-pair? _e8910789114_)
                                    (let ((_e8911089167_
                                           (gx#syntax-e _e8910789114_)))
                                      (let ((_hd8911189170_
                                             (##car _e8911089167_))
                                            (_tl8911289172_
                                             (##cdr _e8911089167_)))
                                        (let* ((_hd89175_ _hd8911189170_)
                                               (_rest89177_ _tl8911289172_))
                                          (if '#t
                                              (let* ((_e8917889195_ _hd89175_)
                                                     (_E8919089199_
                                                      (lambda ()
                                                        (if (null? _bind89105_)
                                                            (_lp89101_
                                                             _rest89177_
                                                             _decls89104_
                                                             _bind89105_
                                                             (cons _hd89175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body89106_))
                    (_lp89101_
                     _rest89177_
                     _decls89104_
                     (cons (cons '#f (cons _hd89175_ '())) _bind89105_)
                     _body89106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8918089213_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8917889195_)
                                                            (let ((_e8919189203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8917889195_)))
                      (let ((_hd8919289206_ (##car _e8919189203_))
                            (_tl8919389208_ (##cdr _e8919189203_)))
                        (if (and (gx#identifier? _hd8919289206_)
                                 (gx#core-identifier=?
                                  _hd8919289206_
                                  '%#declare))
                            (let ((_xdecls89211_ _tl8919389208_))
                              (if '#t
                                  (_lp89101_
                                   _rest89177_
                                   (gx#stx-foldr
                                    cons
                                    _decls89104_
                                    _xdecls89211_)
                                   _bind89105_
                                   _body89106_)
                                  (_E8919089199_)))
                            (_E8919089199_))))
                    (_E8919089199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8917989245_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8917889195_)
                                                            (let ((_e8918189217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8917889195_)))
                      (let ((_hd8918289220_ (##car _e8918189217_))
                            (_tl8918389222_ (##cdr _e8918189217_)))
                        (if (and (gx#identifier? _hd8918289220_)
                                 (gx#core-identifier=?
                                  _hd8918289220_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8918389222_)
                                (let ((_e8918489225_
                                       (gx#syntax-e _tl8918389222_)))
                                  (let ((_hd8918589228_ (##car _e8918489225_))
                                        (_tl8918689230_ (##cdr _e8918489225_)))
                                    (let ((_hd-bind89233_ _hd8918589228_))
                                      (if (gx#stx-pair? _tl8918689230_)
                                          (let ((_e8918789235_
                                                 (gx#syntax-e _tl8918689230_)))
                                            (let ((_hd8918889238_
                                                   (##car _e8918789235_))
                                                  (_tl8918989240_
                                                   (##cdr _e8918789235_)))
                                              (let ((_expr89243_
                                                     _hd8918889238_))
                                                (if (gx#stx-null?
                                                     _tl8918989240_)
                                                    (if '#t
                                                        (_lp89101_
                                                         _rest89177_
                                                         _decls89104_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind89233_)
                             (cons (gx#core-expand-expression _expr89243_)
                                   '()))
                       _bind89105_)
                 _body89106_)
                (_E8918089213_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8918089213_)))))
                                          (_E8918089213_)))))
                                (_E8918089213_))
                            (_E8918089213_))))
                    (_E8918089213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8917989245_))
                                              (_E8910989163_)))))
                                    (_E8910989163_)))))
                        (_E8910889249_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body89092_)
            (gx#stx-source _stx89091_))
           _expand-special89094_))))
    (define gx#core-expand-declare%
      (lambda (_stx89029_)
        (let* ((_e8903089037_ _stx89029_)
               (_E8903289041_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8903089037_)))
               (_E8903189087_
                (lambda ()
                  (if (gx#stx-pair? _e8903089037_)
                      (let ((_e8903389045_ (gx#syntax-e _e8903089037_)))
                        (let ((_hd8903489048_ (##car _e8903389045_))
                              (_tl8903589050_ (##cdr _e8903389045_)))
                          (let ((_body89053_ _tl8903589050_))
                            (if (gx#stx-list? _body89053_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89055_)
                                     (let* ((_e8905689063_ _decl89055_)
                                            (_E8905889067_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8905689063_)))
                                            (_E8905789083_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8905689063_)
                                                   (let ((_e8905989071_
                                                          (gx#syntax-e
                                                           _e8905689063_)))
                                                     (let ((_hd8906089074_
                                                            (##car _e8905989071_))
                                                           (_tl8906189076_
                                                            (##cdr _e8905989071_)))
                                                       (let* ((_head89079_
                                                               _hd8906089074_)
                                                              (_args89081_
                                                               _tl8906189076_))
                                                         (if (gx#stx-list?
                                                              _args89081_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89055_)
                                                             (_E8905889067_)))))
                                                   (_E8905889067_)))))
                                       (_E8905789083_)))
                                   _body89053_))
                                 (gx#stx-source _stx89029_))
                                (_E8903289041_)))))
                      (_E8903289041_)))))
          (_E8903189087_))))
    (define gx#core-expand-extern%
      (lambda (_stx88933_)
        (let* ((_e8893488941_ _stx88933_)
               (_E8893688945_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8893488941_)))
               (_E8893589025_
                (lambda ()
                  (if (gx#stx-pair? _e8893488941_)
                      (let ((_e8893788949_ (gx#syntax-e _e8893488941_)))
                        (let ((_hd8893888952_ (##car _e8893788949_))
                              (_tl8893988954_ (##cdr _e8893788949_)))
                          (let ((_body88957_ _tl8893988954_))
                            (if '#t
                                (let _lp88959_ ((_rest88961_ _body88957_)
                                                (_r88962_ '()))
                                  (let* ((_e8896388977_ _rest88961_)
                                         (_E8897588981_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88933_)))
                                         (_E8896588985_
                                          (lambda ()
                                            (if (gx#stx-null? _e8896388977_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88962_))
                                                     (gx#stx-source
                                                      _stx88933_))
                                                    (_E8897588981_))
                                                (_E8897588981_))))
                                         (_E8896489021_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8896388977_)
                                                (let ((_e8896688989_
                                                       (gx#syntax-e
                                                        _e8896388977_)))
                                                  (let ((_hd8896788992_
                                                         (##car _e8896688989_))
                                                        (_tl8896888994_
                                                         (##cdr _e8896688989_)))
                                                    (if (gx#stx-pair?
                                                         _hd8896788992_)
                                                        (let ((_e8896988997_
                                                               (gx#syntax-e
                                                                _hd8896788992_)))
                                                          (let ((_hd8897089000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8896988997_))
                        (_tl8897189002_ (##cdr _e8896988997_)))
                    (let ((_id89005_ _hd8897089000_))
                      (if (gx#stx-pair? _tl8897189002_)
                          (let ((_e8897289007_ (gx#syntax-e _tl8897189002_)))
                            (let ((_hd8897389010_ (##car _e8897289007_))
                                  (_tl8897489012_ (##cdr _e8897289007_)))
                              (let ((_eid89015_ _hd8897389010_))
                                (if (gx#stx-null? _tl8897489012_)
                                    (let ((_rest89017_ _tl8896888994_))
                                      (if (and (gx#identifier? _id89005_)
                                               (gx#identifier? _eid89015_))
                                          (let ((_eid89019_
                                                 (gx#stx-e _eid89015_)))
                                            (gx#core-bind-extern!__0
                                             _id89005_
                                             _eid89019_)
                                            (_lp88959_
                                             _rest89017_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89005_)
                                                         (cons _eid89019_ '()))
                                                   _r88962_)))
                                          (_E8896588985_)))
                                    (_E8896588985_)))))
                          (_E8896588985_)))))
                (_E8896588985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8896588985_)))))
                                    (_E8896489021_)))
                                (_E8893688945_)))))
                      (_E8893688945_)))))
          (_E8893589025_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88879_)
        (let* ((_e8888088893_ _stx88879_)
               (_E8888288897_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8888088893_)))
               (_E8888188929_
                (lambda ()
                  (if (gx#stx-pair? _e8888088893_)
                      (let ((_e8888388901_ (gx#syntax-e _e8888088893_)))
                        (let ((_hd8888488904_ (##car _e8888388901_))
                              (_tl8888588906_ (##cdr _e8888388901_)))
                          (if (gx#stx-pair? _tl8888588906_)
                              (let ((_e8888688909_
                                     (gx#syntax-e _tl8888588906_)))
                                (let ((_hd8888788912_ (##car _e8888688909_))
                                      (_tl8888888914_ (##cdr _e8888688909_)))
                                  (let ((_hd88917_ _hd8888788912_))
                                    (if (gx#stx-pair? _tl8888888914_)
                                        (let ((_e8888988919_
                                               (gx#syntax-e _tl8888888914_)))
                                          (let ((_hd8889088922_
                                                 (##car _e8888988919_))
                                                (_tl8889188924_
                                                 (##cdr _e8888988919_)))
                                            (let ((_expr88927_ _hd8889088922_))
                                              (if (gx#stx-null? _tl8889188924_)
                                                  (if (gx#core-bind-values?
                                                       _hd88917_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88917_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88917_)
                             (cons (gx#core-expand-expression _expr88927_)
                                   '())))
                 (gx#stx-source _stx88879_)))
              (_E8888288897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8888288897_)))))
                                        (_E8888288897_)))))
                              (_E8888288897_))))
                      (_E8888288897_)))))
          (_E8888188929_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88823_)
        (let* ((_e8882488837_ _stx88823_)
               (_E8882688841_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8882488837_)))
               (_E8882588875_
                (lambda ()
                  (if (gx#stx-pair? _e8882488837_)
                      (let ((_e8882788845_ (gx#syntax-e _e8882488837_)))
                        (let ((_hd8882888848_ (##car _e8882788845_))
                              (_tl8882988850_ (##cdr _e8882788845_)))
                          (if (gx#stx-pair? _tl8882988850_)
                              (let ((_e8883088853_
                                     (gx#syntax-e _tl8882988850_)))
                                (let ((_hd8883188856_ (##car _e8883088853_))
                                      (_tl8883288858_ (##cdr _e8883088853_)))
                                  (let ((_id88861_ _hd8883188856_))
                                    (if (gx#stx-pair? _tl8883288858_)
                                        (let ((_e8883388863_
                                               (gx#syntax-e _tl8883288858_)))
                                          (let ((_hd8883488866_
                                                 (##car _e8883388863_))
                                                (_tl8883588868_
                                                 (##cdr _e8883388863_)))
                                            (let ((_binding-id88871_
                                                   _hd8883488866_))
                                              (if (gx#stx-null? _tl8883588868_)
                                                  (if (and (gx#identifier?
                                                            _id88861_)
                                                           (gx#identifier?
                                                            _binding-id88871_))
                                                      (let ((_eid88873_
                                                             (gx#stx-e
                                                              _binding-id88871_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88861_
                                                         _eid88873_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88861_)
                             (cons _eid88873_ '())))))
              (_E8882688841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8882688841_)))))
                                        (_E8882688841_)))))
                              (_E8882688841_))))
                      (_E8882688841_)))))
          (_E8882588875_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88766_)
        (let* ((_e8876788780_ _stx88766_)
               (_E8876988784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876788780_)))
               (_E8876888819_
                (lambda ()
                  (if (gx#stx-pair? _e8876788780_)
                      (let ((_e8877088788_ (gx#syntax-e _e8876788780_)))
                        (let ((_hd8877188791_ (##car _e8877088788_))
                              (_tl8877288793_ (##cdr _e8877088788_)))
                          (if (gx#stx-pair? _tl8877288793_)
                              (let ((_e8877388796_
                                     (gx#syntax-e _tl8877288793_)))
                                (let ((_hd8877488799_ (##car _e8877388796_))
                                      (_tl8877588801_ (##cdr _e8877388796_)))
                                  (let ((_id88804_ _hd8877488799_))
                                    (if (gx#stx-pair? _tl8877588801_)
                                        (let ((_e8877688806_
                                               (gx#syntax-e _tl8877588801_)))
                                          (let ((_hd8877788809_
                                                 (##car _e8877688806_))
                                                (_tl8877888811_
                                                 (##cdr _e8877688806_)))
                                            (let ((_expr88814_ _hd8877788809_))
                                              (if (gx#stx-null? _tl8877888811_)
                                                  (if (gx#identifier?
                                                       _id88804_)
                                                      (let ((_g89725_
                                                             (gx#core-expand-expression+1
                                                              _expr88814_)))
                                                        (begin
                                                          (let ((_g89726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89725_)
                             (##vector-length _g89725_)
                             1)))
                    (if (not (##fx= _g89726_ 2))
                        (error "Context expects 2 values" _g89726_)))
                  (let ((_e-stx88816_ (##vector-ref _g89725_ 0))
                        (_e88817_ (##vector-ref _g89725_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88804_ _e88817_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88804_)
                                   (cons _e-stx88816_ '())))
                       (gx#stx-source _stx88766_))))))
              (_E8876988784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8876988784_)))))
                                        (_E8876988784_)))))
                              (_E8876988784_))))
                      (_E8876988784_)))))
          (_E8876888819_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88710_)
        (let* ((_e8871188724_ _stx88710_)
               (_E8871388728_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8871188724_)))
               (_E8871288762_
                (lambda ()
                  (if (gx#stx-pair? _e8871188724_)
                      (let ((_e8871488732_ (gx#syntax-e _e8871188724_)))
                        (let ((_hd8871588735_ (##car _e8871488732_))
                              (_tl8871688737_ (##cdr _e8871488732_)))
                          (if (gx#stx-pair? _tl8871688737_)
                              (let ((_e8871788740_
                                     (gx#syntax-e _tl8871688737_)))
                                (let ((_hd8871888743_ (##car _e8871788740_))
                                      (_tl8871988745_ (##cdr _e8871788740_)))
                                  (let ((_id88748_ _hd8871888743_))
                                    (if (gx#stx-pair? _tl8871988745_)
                                        (let ((_e8872088750_
                                               (gx#syntax-e _tl8871988745_)))
                                          (let ((_hd8872188753_
                                                 (##car _e8872088750_))
                                                (_tl8872288755_
                                                 (##cdr _e8872088750_)))
                                            (let ((_alias-id88758_
                                                   _hd8872188753_))
                                              (if (gx#stx-null? _tl8872288755_)
                                                  (if (and (gx#identifier?
                                                            _id88748_)
                                                           (gx#identifier?
                                                            _alias-id88758_))
                                                      (let ((_alias-id88760_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88758_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88748_
                                                         _alias-id88760_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88748_)
                             (cons _alias-id88760_ '())))))
              (_E8871388728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8871388728_)))))
                                        (_E8871388728_)))))
                              (_E8871388728_))))
                      (_E8871388728_)))))
          (_E8871288762_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88653_ _wrap?88654_)
        (let* ((_e8865588665_ _stx88653_)
               (_E8865788669_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8865588665_)))
               (_E8865688696_
                (lambda ()
                  (if (gx#stx-pair? _e8865588665_)
                      (let ((_e8865888673_ (gx#syntax-e _e8865588665_)))
                        (let ((_hd8865988676_ (##car _e8865888673_))
                              (_tl8866088678_ (##cdr _e8865888673_)))
                          (if (gx#stx-pair? _tl8866088678_)
                              (let ((_e8866188681_
                                     (gx#syntax-e _tl8866088678_)))
                                (let ((_hd8866288684_ (##car _e8866188681_))
                                      (_tl8866388686_ (##cdr _e8866188681_)))
                                  (let* ((_hd88689_ _hd8866288684_)
                                         (_body88691_ _tl8866388686_))
                                    (if (gx#core-bind-values? _hd88689_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88689_)
                                           (let ((_body88694_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88689_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88653_
                                                               _body88691_)
                                                              '()))))
                                             (if _wrap?88654_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88694_)
                                                  (gx#stx-source _stx88653_))
                                                 _body88694_)))
                                         gx#current-expander-context
                                         (let ((__obj89718
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89718)
                                           __obj89718))
                                        (_E8865788669_)))))
                              (_E8865788669_))))
                      (_E8865788669_)))))
          (_E8865688696_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88703_)
        (let ((_wrap?88705_ '#t))
          (gx#core-expand-lambda%__% _stx88703_ _wrap?88705_))))
    (define gx#core-expand-lambda%
      (lambda _g89728_
        (let ((_g89727_ (##length _g89728_)))
          (cond ((##fx= _g89727_ 1)
                 (apply (lambda (_stx88703_)
                          (gx#core-expand-lambda%__0 _stx88703_))
                        _g89728_))
                ((##fx= _g89727_ 2)
                 (apply (lambda (_stx88707_ _wrap?88708_)
                          (gx#core-expand-lambda%__% _stx88707_ _wrap?88708_))
                        _g89728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89728_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88617_)
        (let* ((_e8861888625_ _stx88617_)
               (_E8862088629_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8861888625_)))
               (_E8861988648_
                (lambda ()
                  (if (gx#stx-pair? _e8861888625_)
                      (let ((_e8862188633_ (gx#syntax-e _e8861888625_)))
                        (let ((_hd8862288636_ (##car _e8862188633_))
                              (_tl8862388638_ (##cdr _e8862188633_)))
                          (let ((_clauses88641_ _tl8862388638_))
                            (if (gx#stx-list? _clauses88641_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88643_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88643_)
                                       (let ((_$e88645_
                                              (gx#stx-source _clause88643_)))
                                         (if _$e88645_
                                             _$e88645_
                                             (gx#stx-source _stx88617_))))
                                      '#f))
                                   _clauses88641_))
                                 (gx#stx-source _stx88617_))
                                (_E8862088629_)))))
                      (_E8862088629_)))))
          (_E8861988648_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88571_)
        (let* ((_e8857288582_ _stx88571_)
               (_E8857488586_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8857288582_)))
               (_E8857388613_
                (lambda ()
                  (if (gx#stx-pair? _e8857288582_)
                      (let ((_e8857588590_ (gx#syntax-e _e8857288582_)))
                        (let ((_hd8857688593_ (##car _e8857588590_))
                              (_tl8857788595_ (##cdr _e8857588590_)))
                          (if (gx#stx-pair? _tl8857788595_)
                              (let ((_e8857888598_
                                     (gx#syntax-e _tl8857788595_)))
                                (let ((_hd8857988601_ (##car _e8857888598_))
                                      (_tl8858088603_ (##cdr _e8857888598_)))
                                  (let* ((_hd88606_ _hd8857988601_)
                                         (_body88608_ _tl8858088603_))
                                    (if (gx#core-expand-let-bind? _hd88606_)
                                        (let ((_expressions88610_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88606_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88606_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88606_
                                                           _expressions88610_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88571_
                         _body88608_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88571_)))
                                           gx#current-expander-context
                                           (let ((__obj89719
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89719)
                                             __obj89719)))
                                        (_E8857488586_)))))
                              (_E8857488586_))))
                      (_E8857488586_)))))
          (_E8857388613_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88516_ _form88517_)
        (let* ((_e8851888528_ _stx88516_)
               (_E8852088532_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8851888528_)))
               (_E8851988557_
                (lambda ()
                  (if (gx#stx-pair? _e8851888528_)
                      (let ((_e8852188536_ (gx#syntax-e _e8851888528_)))
                        (let ((_hd8852288539_ (##car _e8852188536_))
                              (_tl8852388541_ (##cdr _e8852188536_)))
                          (if (gx#stx-pair? _tl8852388541_)
                              (let ((_e8852488544_
                                     (gx#syntax-e _tl8852388541_)))
                                (let ((_hd8852588547_ (##car _e8852488544_))
                                      (_tl8852688549_ (##cdr _e8852488544_)))
                                  (let* ((_hd88552_ _hd8852588547_)
                                         (_body88554_ _tl8852688549_))
                                    (if (gx#core-expand-let-bind? _hd88552_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88552_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88517_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88552_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88552_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88516_
                                                               _body88554_)
                                                              '())))
                                            (gx#stx-source _stx88516_)))
                                         gx#current-expander-context
                                         (let ((__obj89720
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89720)
                                           __obj89720))
                                        (_E8852088532_)))))
                              (_E8852088532_))))
                      (_E8852088532_)))))
          (_E8851988557_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88564_)
        (let ((_form88566_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88564_ _form88566_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89730_
        (let ((_g89729_ (##length _g89730_)))
          (cond ((##fx= _g89729_ 1)
                 (apply (lambda (_stx88564_)
                          (gx#core-expand-letrec-values%__0 _stx88564_))
                        _g89730_))
                ((##fx= _g89729_ 2)
                 (apply (lambda (_stx88568_ _form88569_)
                          (gx#core-expand-letrec-values%__%
                           _stx88568_
                           _form88569_))
                        _g89730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89730_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88513_)
        (gx#core-expand-letrec-values%__% _stx88513_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88470_)
        (if (gx#stx-list? _stx88470_)
            (gx#stx-andmap
             (lambda (_bind88472_)
               (let* ((_e8847388483_ _bind88472_)
                      (_E8847588487_ (lambda () '#f))
                      (_E8847488509_
                       (lambda ()
                         (if (gx#stx-pair? _e8847388483_)
                             (let ((_e8847688491_ (gx#syntax-e _e8847388483_)))
                               (let ((_hd8847788494_ (##car _e8847688491_))
                                     (_tl8847888496_ (##cdr _e8847688491_)))
                                 (let ((_hd88499_ _hd8847788494_))
                                   (if (gx#stx-pair? _tl8847888496_)
                                       (let ((_e8847988501_
                                              (gx#syntax-e _tl8847888496_)))
                                         (let ((_hd8848088504_
                                                (##car _e8847988501_))
                                               (_tl8848188506_
                                                (##cdr _e8847988501_)))
                                           (if (gx#stx-null? _tl8848188506_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88499_)
                                                   (_E8847588487_))
                                               (_E8847588487_))))
                                       (_E8847588487_)))))
                             (_E8847588487_)))))
                 (_E8847488509_)))
             _stx88470_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88429_)
        (let* ((_e8843088440_ _bind88429_)
               (_E8843288444_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8843088440_)))
               (_E8843188466_
                (lambda ()
                  (if (gx#stx-pair? _e8843088440_)
                      (let ((_e8843388448_ (gx#syntax-e _e8843088440_)))
                        (let ((_hd8843488451_ (##car _e8843388448_))
                              (_tl8843588453_ (##cdr _e8843388448_)))
                          (if (gx#stx-pair? _tl8843588453_)
                              (let ((_e8843688456_
                                     (gx#syntax-e _tl8843588453_)))
                                (let ((_hd8843788459_ (##car _e8843688456_))
                                      (_tl8843888461_ (##cdr _e8843688456_)))
                                  (let ((_expr88464_ _hd8843788459_))
                                    (if (gx#stx-null? _tl8843888461_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88464_)
                                            (_E8843288444_))
                                        (_E8843288444_)))))
                              (_E8843288444_))))
                      (_E8843288444_)))))
          (_E8843188466_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind88388_)
        (let* ((_e8838988399_ _bind88388_)
               (_E8839188403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8838988399_)))
               (_E8839088425_
                (lambda ()
                  (if (gx#stx-pair? _e8838988399_)
                      (let ((_e8839288407_ (gx#syntax-e _e8838988399_)))
                        (let ((_hd8839388410_ (##car _e8839288407_))
                              (_tl8839488412_ (##cdr _e8839288407_)))
                          (let ((_hd88415_ _hd8839388410_))
                            (if (gx#stx-pair? _tl8839488412_)
                                (let ((_e8839588417_
                                       (gx#syntax-e _tl8839488412_)))
                                  (let ((_hd8839688420_ (##car _e8839588417_))
                                        (_tl8839788422_ (##cdr _e8839588417_)))
                                    (if (gx#stx-null? _tl8839788422_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd88415_)
                                            (_E8839188403_))
                                        (_E8839188403_))))
                                (_E8839188403_)))))
                      (_E8839188403_)))))
          (_E8839088425_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind88346_ _expr88347_)
        (let* ((_e8834888358_ _bind88346_)
               (_E8835088362_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8834888358_)))
               (_E8834988384_
                (lambda ()
                  (if (gx#stx-pair? _e8834888358_)
                      (let ((_e8835188366_ (gx#syntax-e _e8834888358_)))
                        (let ((_hd8835288369_ (##car _e8835188366_))
                              (_tl8835388371_ (##cdr _e8835188366_)))
                          (let ((_hd88374_ _hd8835288369_))
                            (if (gx#stx-pair? _tl8835388371_)
                                (let ((_e8835488376_
                                       (gx#syntax-e _tl8835388371_)))
                                  (let ((_hd8835588379_ (##car _e8835488376_))
                                        (_tl8835688381_ (##cdr _e8835488376_)))
                                    (if (gx#stx-null? _tl8835688381_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd88374_)
                                                  (cons _expr88347_ '()))
                                            (_E8835088362_))
                                        (_E8835088362_))))
                                (_E8835088362_)))))
                      (_E8835088362_)))))
          (_E8834988384_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx88300_)
        (let* ((_e8830188311_ _stx88300_)
               (_E8830388315_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8830188311_)))
               (_E8830288342_
                (lambda ()
                  (if (gx#stx-pair? _e8830188311_)
                      (let ((_e8830488319_ (gx#syntax-e _e8830188311_)))
                        (let ((_hd8830588322_ (##car _e8830488319_))
                              (_tl8830688324_ (##cdr _e8830488319_)))
                          (if (gx#stx-pair? _tl8830688324_)
                              (let ((_e8830788327_
                                     (gx#syntax-e _tl8830688324_)))
                                (let ((_hd8830888330_ (##car _e8830788327_))
                                      (_tl8830988332_ (##cdr _e8830788327_)))
                                  (let* ((_hd88335_ _hd8830888330_)
                                         (_body88337_ _tl8830988332_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88335_)
                                        (let ((_expanders88339_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd88335_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd88335_
                                              _expanders88339_)
                                             (gx#core-expand-local-block
                                              _stx88300_
                                              _body88337_))
                                           gx#current-expander-context
                                           (let ((__obj89721
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89721)
                                             __obj89721)))
                                        (_E8830388315_)))))
                              (_E8830388315_))))
                      (_E8830388315_)))))
          (_E8830288342_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx88249_)
        (let* ((_e8825088260_ _stx88249_)
               (_E8825288264_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8825088260_)))
               (_E8825188296_
                (lambda ()
                  (if (gx#stx-pair? _e8825088260_)
                      (let ((_e8825388268_ (gx#syntax-e _e8825088260_)))
                        (let ((_hd8825488271_ (##car _e8825388268_))
                              (_tl8825588273_ (##cdr _e8825388268_)))
                          (if (gx#stx-pair? _tl8825588273_)
                              (let ((_e8825688276_
                                     (gx#syntax-e _tl8825588273_)))
                                (let ((_hd8825788279_ (##car _e8825688276_))
                                      (_tl8825888281_ (##cdr _e8825688276_)))
                                  (let* ((_hd88284_ _hd8825788279_)
                                         (_body88286_ _tl8825888281_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88284_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd88284_
                                            (make-list__%
                                             (gx#stx-length _hd88284_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8828888291_
                                                     _g8828988293_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8828888291_
                                               _g8828988293_
                                               '#t))
                                            _hd88284_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd88284_))
                                           (gx#core-expand-local-block
                                            _stx88249_
                                            _body88286_))
                                         gx#current-expander-context
                                         (let ((__obj89722
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89722)
                                           __obj89722))
                                        (_E8825288264_)))))
                              (_E8825288264_))))
                      (_E8825288264_)))))
          (_E8825188296_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx88206_)
        (if (gx#stx-list? _stx88206_)
            (gx#stx-andmap
             (lambda (_bind88208_)
               (let* ((_e8820988219_ _bind88208_)
                      (_E8821188223_ (lambda () '#f))
                      (_E8821088245_
                       (lambda ()
                         (if (gx#stx-pair? _e8820988219_)
                             (let ((_e8821288227_ (gx#syntax-e _e8820988219_)))
                               (let ((_hd8821388230_ (##car _e8821288227_))
                                     (_tl8821488232_ (##cdr _e8821288227_)))
                                 (let ((_hd88235_ _hd8821388230_))
                                   (if (gx#stx-pair? _tl8821488232_)
                                       (let ((_e8821588237_
                                              (gx#syntax-e _tl8821488232_)))
                                         (let ((_hd8821688240_
                                                (##car _e8821588237_))
                                               (_tl8821788242_
                                                (##cdr _e8821588237_)))
                                           (if (gx#stx-null? _tl8821788242_)
                                               (if '#t
                                                   (gx#identifier? _hd88235_)
                                                   (_E8821188223_))
                                               (_E8821188223_))))
                                       (_E8821188223_)))))
                             (_E8821188223_)))))
                 (_E8821088245_)))
             _stx88206_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind88163_)
        (let* ((_e8816488174_ _bind88163_)
               (_E8816688178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8816488174_)))
               (_E8816588202_
                (lambda ()
                  (if (gx#stx-pair? _e8816488174_)
                      (let ((_e8816788182_ (gx#syntax-e _e8816488174_)))
                        (let ((_hd8816888185_ (##car _e8816788182_))
                              (_tl8816988187_ (##cdr _e8816788182_)))
                          (if (gx#stx-pair? _tl8816988187_)
                              (let ((_e8817088190_
                                     (gx#syntax-e _tl8816988187_)))
                                (let ((_hd8817188193_ (##car _e8817088190_))
                                      (_tl8817288195_ (##cdr _e8817088190_)))
                                  (let ((_expr88198_ _hd8817188193_))
                                    (if (gx#stx-null? _tl8817288195_)
                                        (if '#t
                                            (let ((_g89731_
                                                   (gx#core-expand-expression+1
                                                    _expr88198_)))
                                              (begin
                                                (let ((_g89732_
                                                       (if (##values? _g89731_)
                                                           (##vector-length
                                                            _g89731_)
                                                           1)))
                                                  (if (not (##fx= _g89732_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89732_)))
                                                (let ((_e88200_
                                                       (##vector-ref
                                                        _g89731_
                                                        1)))
                                                  _e88200_)))
                                            (_E8816688178_))
                                        (_E8816688178_)))))
                              (_E8816688178_))))
                      (_E8816688178_)))))
          (_E8816588202_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind88108_ _e88109_ _rebind?88110_)
        (let* ((_e8811188121_ _bind88108_)
               (_E8811388125_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8811188121_)))
               (_E8811288147_
                (lambda ()
                  (if (gx#stx-pair? _e8811188121_)
                      (let ((_e8811488129_ (gx#syntax-e _e8811188121_)))
                        (let ((_hd8811588132_ (##car _e8811488129_))
                              (_tl8811688134_ (##cdr _e8811488129_)))
                          (let ((_id88137_ _hd8811588132_))
                            (if (gx#stx-pair? _tl8811688134_)
                                (let ((_e8811788139_
                                       (gx#syntax-e _tl8811688134_)))
                                  (let ((_hd8811888142_ (##car _e8811788139_))
                                        (_tl8811988144_ (##cdr _e8811788139_)))
                                    (if (gx#stx-null? _tl8811988144_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id88137_
                                             _e88109_
                                             _rebind?88110_)
                                            (_E8811388125_))
                                        (_E8811388125_))))
                                (_E8811388125_)))))
                      (_E8811388125_)))))
          (_E8811288147_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind88154_ _e88155_)
        (let ((_rebind?88157_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind88154_
           _e88155_
           _rebind?88157_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89734_
        (let ((_g89733_ (##length _g89734_)))
          (cond ((##fx= _g89733_ 2)
                 (apply (lambda (_bind88154_ _e88155_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind88154_
                           _e88155_))
                        _g89734_))
                ((##fx= _g89733_ 3)
                 (apply (lambda (_bind88159_ _e88160_ _rebind?88161_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind88159_
                           _e88160_
                           _rebind?88161_))
                        _g89734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89734_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88066_)
        (let* ((_e8806788077_ _stx88066_)
               (_E8806988081_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8806788077_)))
               (_E8806888103_
                (lambda ()
                  (if (gx#stx-pair? _e8806788077_)
                      (let ((_e8807088085_ (gx#syntax-e _e8806788077_)))
                        (let ((_hd8807188088_ (##car _e8807088085_))
                              (_tl8807288090_ (##cdr _e8807088085_)))
                          (if (gx#stx-pair? _tl8807288090_)
                              (let ((_e8807388093_
                                     (gx#syntax-e _tl8807288090_)))
                                (let ((_hd8807488096_ (##car _e8807388093_))
                                      (_tl8807588098_ (##cdr _e8807388093_)))
                                  (let ((_expr88101_ _hd8807488096_))
                                    (if (gx#stx-null? _tl8807588098_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88101_)
                                            (_E8806988081_))
                                        (_E8806988081_)))))
                              (_E8806988081_))))
                      (_E8806988081_)))))
          (_E8806888103_))))
    (define gx#core-expand-quote%
      (lambda (_stx88025_)
        (let* ((_e8802688036_ _stx88025_)
               (_E8802888040_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8802688036_)))
               (_E8802788062_
                (lambda ()
                  (if (gx#stx-pair? _e8802688036_)
                      (let ((_e8802988044_ (gx#syntax-e _e8802688036_)))
                        (let ((_hd8803088047_ (##car _e8802988044_))
                              (_tl8803188049_ (##cdr _e8802988044_)))
                          (if (gx#stx-pair? _tl8803188049_)
                              (let ((_e8803288052_
                                     (gx#syntax-e _tl8803188049_)))
                                (let ((_hd8803388055_ (##car _e8803288052_))
                                      (_tl8803488057_ (##cdr _e8803288052_)))
                                  (let ((_e88060_ _hd8803388055_))
                                    (if (gx#stx-null? _tl8803488057_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88060_)
                                                         '()))
                                             (gx#stx-source _stx88025_))
                                            (_E8802888040_))
                                        (_E8802888040_)))))
                              (_E8802888040_))))
                      (_E8802888040_)))))
          (_E8802788062_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87984_)
        (let* ((_e8798587995_ _stx87984_)
               (_E8798787999_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8798587995_)))
               (_E8798688021_
                (lambda ()
                  (if (gx#stx-pair? _e8798587995_)
                      (let ((_e8798888003_ (gx#syntax-e _e8798587995_)))
                        (let ((_hd8798988006_ (##car _e8798888003_))
                              (_tl8799088008_ (##cdr _e8798888003_)))
                          (if (gx#stx-pair? _tl8799088008_)
                              (let ((_e8799188011_
                                     (gx#syntax-e _tl8799088008_)))
                                (let ((_hd8799288014_ (##car _e8799188011_))
                                      (_tl8799388016_ (##cdr _e8799188011_)))
                                  (let ((_e88019_ _hd8799288014_))
                                    (if (gx#stx-null? _tl8799388016_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88019_)
                                                         '()))
                                             (gx#stx-source _stx87984_))
                                            (_E8798787999_))
                                        (_E8798787999_)))))
                              (_E8798787999_))))
                      (_E8798787999_)))))
          (_E8798688021_))))
    (define gx#core-expand-call%
      (lambda (_stx87941_)
        (let* ((_e8794287952_ _stx87941_)
               (_E8794487956_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8794287952_)))
               (_E8794387980_
                (lambda ()
                  (if (gx#stx-pair? _e8794287952_)
                      (let ((_e8794587960_ (gx#syntax-e _e8794287952_)))
                        (let ((_hd8794687963_ (##car _e8794587960_))
                              (_tl8794787965_ (##cdr _e8794587960_)))
                          (if (gx#stx-pair? _tl8794787965_)
                              (let ((_e8794887968_
                                     (gx#syntax-e _tl8794787965_)))
                                (let ((_hd8794987971_ (##car _e8794887968_))
                                      (_tl8795087973_ (##cdr _e8794887968_)))
                                  (let* ((_rator87976_ _hd8794987971_)
                                         (_args87978_ _tl8795087973_))
                                    (if (gx#stx-list? _args87978_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87976_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87978_))
                                         (gx#stx-source _stx87941_))
                                        (_E8794487956_)))))
                              (_E8794487956_))))
                      (_E8794487956_)))))
          (_E8794387980_))))
    (define gx#core-expand-if%
      (lambda (_stx87874_)
        (let* ((_e8787587891_ _stx87874_)
               (_E8787787895_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8787587891_)))
               (_E8787687937_
                (lambda ()
                  (if (gx#stx-pair? _e8787587891_)
                      (let ((_e8787887899_ (gx#syntax-e _e8787587891_)))
                        (let ((_hd8787987902_ (##car _e8787887899_))
                              (_tl8788087904_ (##cdr _e8787887899_)))
                          (if (gx#stx-pair? _tl8788087904_)
                              (let ((_e8788187907_
                                     (gx#syntax-e _tl8788087904_)))
                                (let ((_hd8788287910_ (##car _e8788187907_))
                                      (_tl8788387912_ (##cdr _e8788187907_)))
                                  (let ((_test87915_ _hd8788287910_))
                                    (if (gx#stx-pair? _tl8788387912_)
                                        (let ((_e8788487917_
                                               (gx#syntax-e _tl8788387912_)))
                                          (let ((_hd8788587920_
                                                 (##car _e8788487917_))
                                                (_tl8788687922_
                                                 (##cdr _e8788487917_)))
                                            (let ((_K87925_ _hd8788587920_))
                                              (if (gx#stx-pair? _tl8788687922_)
                                                  (let ((_e8788787927_
                                                         (gx#syntax-e
                                                          _tl8788687922_)))
                                                    (let ((_hd8788887930_
                                                           (##car _e8788787927_))
                                                          (_tl8788987932_
                                                           (##cdr _e8788787927_)))
                                                      (let ((_E87935_
                                                             _hd8788887930_))
                                                        (if (gx#stx-null?
                                                             _tl8788987932_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87915_)
                                     (cons (gx#core-expand-expression _K87925_)
                                           (cons (gx#core-expand-expression
                                                  _E87935_)
                                                 '()))))
                         (gx#stx-source _stx87874_))
                        (_E8787787895_))
                    (_E8787787895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8787787895_)))))
                                        (_E8787787895_)))))
                              (_E8787787895_))))
                      (_E8787787895_)))))
          (_E8787687937_))))
    (define gx#core-expand-ref%
      (lambda (_stx87833_)
        (let* ((_e8783487844_ _stx87833_)
               (_E8783687848_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8783487844_)))
               (_E8783587870_
                (lambda ()
                  (if (gx#stx-pair? _e8783487844_)
                      (let ((_e8783787852_ (gx#syntax-e _e8783487844_)))
                        (let ((_hd8783887855_ (##car _e8783787852_))
                              (_tl8783987857_ (##cdr _e8783787852_)))
                          (if (gx#stx-pair? _tl8783987857_)
                              (let ((_e8784087860_
                                     (gx#syntax-e _tl8783987857_)))
                                (let ((_hd8784187863_ (##car _e8784087860_))
                                      (_tl8784287865_ (##cdr _e8784087860_)))
                                  (let ((_id87868_ _hd8784187863_))
                                    (if (gx#stx-null? _tl8784287865_)
                                        (if (gx#identifier? _id87868_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87868_
                                                          _stx87833_)
                                                         '()))
                                             (gx#stx-source _stx87833_))
                                            (_E8783687848_))
                                        (_E8783687848_)))))
                              (_E8783687848_))))
                      (_E8783687848_)))))
          (_E8783587870_))))
    (define gx#core-expand-setq%
      (lambda (_stx87779_)
        (let* ((_e8778087793_ _stx87779_)
               (_E8778287797_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8778087793_)))
               (_E8778187829_
                (lambda ()
                  (if (gx#stx-pair? _e8778087793_)
                      (let ((_e8778387801_ (gx#syntax-e _e8778087793_)))
                        (let ((_hd8778487804_ (##car _e8778387801_))
                              (_tl8778587806_ (##cdr _e8778387801_)))
                          (if (gx#stx-pair? _tl8778587806_)
                              (let ((_e8778687809_
                                     (gx#syntax-e _tl8778587806_)))
                                (let ((_hd8778787812_ (##car _e8778687809_))
                                      (_tl8778887814_ (##cdr _e8778687809_)))
                                  (let ((_id87817_ _hd8778787812_))
                                    (if (gx#stx-pair? _tl8778887814_)
                                        (let ((_e8778987819_
                                               (gx#syntax-e _tl8778887814_)))
                                          (let ((_hd8779087822_
                                                 (##car _e8778987819_))
                                                (_tl8779187824_
                                                 (##cdr _e8778987819_)))
                                            (let ((_expr87827_ _hd8779087822_))
                                              (if (gx#stx-null? _tl8779187824_)
                                                  (if (gx#identifier?
                                                       _id87817_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87817_
                            _stx87779_)
                           (cons (gx#core-expand-expression _expr87827_) '())))
               (gx#stx-source _stx87779_))
              (_E8778287797_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8778287797_)))))
                                        (_E8778287797_)))))
                              (_E8778287797_))))
                      (_E8778287797_)))))
          (_E8778187829_))))
    (define gx#macro-expand-extern
      (lambda (_stx87627_)
        (letrec ((_generate87629_
                  (lambda (_body87659_)
                    (let _lp87661_ ((_rest87663_ _body87659_)
                                    (_ns87664_ (gx#core-context-namespace__0))
                                    (_r87665_ '()))
                      (let* ((_e8766687681_ _rest87663_)
                             (_E8767987685_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8766687681_)))
                             (_E8767587689_
                              (lambda ()
                                (if (gx#stx-null? _e8766687681_)
                                    (if '#t (reverse _r87665_) (_E8767987685_))
                                    (_E8767987685_))))
                             (_E8766887746_
                              (lambda ()
                                (if (gx#stx-pair? _e8766687681_)
                                    (let ((_e8767687693_
                                           (gx#syntax-e _e8766687681_)))
                                      (let ((_hd8767787696_
                                             (##car _e8767687693_))
                                            (_tl8767887698_
                                             (##cdr _e8767687693_)))
                                        (let* ((_hd87701_ _hd8767787696_)
                                               (_rest87703_ _tl8767887698_))
                                          (if '#t
                                              (if (gx#identifier? _hd87701_)
                                                  (_lp87661_
                                                   _rest87703_
                                                   _ns87664_
                                                   (cons (cons _hd87701_
                                                               (cons (if _ns87664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87701_
                                  _ns87664_
                                  '"#"
                                  _hd87701_)
                                 _hd87701_)
                             '()))
                 _r87665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8770487714_
                                                          _hd87701_)
                                                         (_E8770687718_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8770487714_)))
                                                         (_E8770587742_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8770487714_)
                        (let ((_e8770787722_ (gx#syntax-e _e8770487714_)))
                          (let ((_hd8770887725_ (##car _e8770787722_))
                                (_tl8770987727_ (##cdr _e8770787722_)))
                            (let ((_id87730_ _hd8770887725_))
                              (if (gx#stx-pair? _tl8770987727_)
                                  (let ((_e8771087732_
                                         (gx#syntax-e _tl8770987727_)))
                                    (let ((_hd8771187735_
                                           (##car _e8771087732_))
                                          (_tl8771287737_
                                           (##cdr _e8771087732_)))
                                      (let ((_eid87740_ _hd8771187735_))
                                        (if (gx#stx-null? _tl8771287737_)
                                            (if (and (gx#identifier? _id87730_)
                                                     (gx#identifier?
                                                      _eid87740_))
                                                (_lp87661_
                                                 _rest87703_
                                                 _ns87664_
                                                 (cons (cons _id87730_
                                                             (cons _eid87740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8770687718_))
                                            (_E8770687718_)))))
                                  (_E8770687718_)))))
                        (_E8770687718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8770587742_)))
                                              (_E8767587689_)))))
                                    (_E8767587689_))))
                             (_E8766787775_
                              (lambda ()
                                (if (gx#stx-pair? _e8766687681_)
                                    (let ((_e8766987750_
                                           (gx#syntax-e _e8766687681_)))
                                      (let ((_hd8767087753_
                                             (##car _e8766987750_))
                                            (_tl8767187755_
                                             (##cdr _e8766987750_)))
                                        (if (eq? (gx#stx-e _hd8767087753_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8767187755_)
                                                (let ((_e8767287758_
                                                       (gx#syntax-e
                                                        _tl8767187755_)))
                                                  (let ((_hd8767387761_
                                                         (##car _e8767287758_))
                                                        (_tl8767487763_
                                                         (##cdr _e8767287758_)))
                                                    (let* ((_ns87766_
                                                            _hd8767387761_)
                                                           (_rest87768_
                                                            _tl8767487763_))
                                                      (if '#t
                                                          (let ((_ns87773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87766_)
                             (symbol->string (gx#stx-e _ns87766_))
                             (if (or (gx#stx-string? _ns87766_)
                                     (gx#stx-false? _ns87766_))
                                 (gx#stx-e _ns87766_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87627_
                                  _ns87766_)))))
                    (_lp87661_ _rest87768_ _ns87773_ _r87665_))
                  (_E8766887746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8766887746_))
                                            (_E8766887746_))))
                                    (_E8766887746_)))))
                        (_E8766787775_))))))
          (let* ((_e8763087637_ _stx87627_)
                 (_E8763287641_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8763087637_)))
                 (_E8763187655_
                  (lambda ()
                    (if (gx#stx-pair? _e8763087637_)
                        (let ((_e8763387645_ (gx#syntax-e _e8763087637_)))
                          (let ((_hd8763487648_ (##car _e8763387645_))
                                (_tl8763587650_ (##cdr _e8763387645_)))
                            (let ((_body87653_ _tl8763587650_))
                              (if (gx#stx-list? _body87653_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87629_ _body87653_))
                                  (_E8763287641_)))))
                        (_E8763287641_)))))
            (_E8763187655_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87573_)
        (let* ((_e8757487587_ _stx87573_)
               (_E8757687591_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8757487587_)))
               (_E8757587623_
                (lambda ()
                  (if (gx#stx-pair? _e8757487587_)
                      (let ((_e8757787595_ (gx#syntax-e _e8757487587_)))
                        (let ((_hd8757887598_ (##car _e8757787595_))
                              (_tl8757987600_ (##cdr _e8757787595_)))
                          (if (gx#stx-pair? _tl8757987600_)
                              (let ((_e8758087603_
                                     (gx#syntax-e _tl8757987600_)))
                                (let ((_hd8758187606_ (##car _e8758087603_))
                                      (_tl8758287608_ (##cdr _e8758087603_)))
                                  (let ((_hd87611_ _hd8758187606_))
                                    (if (gx#stx-pair? _tl8758287608_)
                                        (let ((_e8758387613_
                                               (gx#syntax-e _tl8758287608_)))
                                          (let ((_hd8758487616_
                                                 (##car _e8758387613_))
                                                (_tl8758587618_
                                                 (##cdr _e8758387613_)))
                                            (let ((_expr87621_ _hd8758487616_))
                                              (if (gx#stx-null? _tl8758587618_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87611_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87611_)
                          (cons _expr87621_ '())))
              (_E8757687591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8757687591_)))))
                                        (_E8757687591_)))))
                              (_E8757687591_))))
                      (_E8757687591_)))))
          (_E8757587623_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87519_)
        (let* ((_e8752087533_ _stx87519_)
               (_E8752287537_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8752087533_)))
               (_E8752187569_
                (lambda ()
                  (if (gx#stx-pair? _e8752087533_)
                      (let ((_e8752387541_ (gx#syntax-e _e8752087533_)))
                        (let ((_hd8752487544_ (##car _e8752387541_))
                              (_tl8752587546_ (##cdr _e8752387541_)))
                          (if (gx#stx-pair? _tl8752587546_)
                              (let ((_e8752687549_
                                     (gx#syntax-e _tl8752587546_)))
                                (let ((_hd8752787552_ (##car _e8752687549_))
                                      (_tl8752887554_ (##cdr _e8752687549_)))
                                  (let ((_hd87557_ _hd8752787552_))
                                    (if (gx#stx-pair? _tl8752887554_)
                                        (let ((_e8752987559_
                                               (gx#syntax-e _tl8752887554_)))
                                          (let ((_hd8753087562_
                                                 (##car _e8752987559_))
                                                (_tl8753187564_
                                                 (##cdr _e8752987559_)))
                                            (let ((_expr87567_ _hd8753087562_))
                                              (if (gx#stx-null? _tl8753187564_)
                                                  (if (gx#identifier?
                                                       _hd87557_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87567_ '())))
              (_E8752287537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8752287537_)))))
                                        (_E8752287537_)))))
                              (_E8752287537_))))
                      (_E8752287537_)))))
          (_E8752187569_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87465_)
        (let* ((_e8746687479_ _stx87465_)
               (_E8746887483_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8746687479_)))
               (_E8746787515_
                (lambda ()
                  (if (gx#stx-pair? _e8746687479_)
                      (let ((_e8746987487_ (gx#syntax-e _e8746687479_)))
                        (let ((_hd8747087490_ (##car _e8746987487_))
                              (_tl8747187492_ (##cdr _e8746987487_)))
                          (if (gx#stx-pair? _tl8747187492_)
                              (let ((_e8747287495_
                                     (gx#syntax-e _tl8747187492_)))
                                (let ((_hd8747387498_ (##car _e8747287495_))
                                      (_tl8747487500_ (##cdr _e8747287495_)))
                                  (let ((_id87503_ _hd8747387498_))
                                    (if (gx#stx-pair? _tl8747487500_)
                                        (let ((_e8747587505_
                                               (gx#syntax-e _tl8747487500_)))
                                          (let ((_hd8747687508_
                                                 (##car _e8747587505_))
                                                (_tl8747787510_
                                                 (##cdr _e8747587505_)))
                                            (let ((_alias-id87513_
                                                   _hd8747687508_))
                                              (if (gx#stx-null? _tl8747787510_)
                                                  (if (and (gx#identifier?
                                                            _id87503_)
                                                           (gx#identifier?
                                                            _alias-id87513_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87513_ '())))
              (_E8746887483_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8746887483_)))))
                                        (_E8746887483_)))))
                              (_E8746887483_))))
                      (_E8746887483_)))))
          (_E8746787515_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87422_)
        (let* ((_e8742387433_ _stx87422_)
               (_E8742587437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8742387433_)))
               (_E8742487461_
                (lambda ()
                  (if (gx#stx-pair? _e8742387433_)
                      (let ((_e8742687441_ (gx#syntax-e _e8742387433_)))
                        (let ((_hd8742787444_ (##car _e8742687441_))
                              (_tl8742887446_ (##cdr _e8742687441_)))
                          (if (gx#stx-pair? _tl8742887446_)
                              (let ((_e8742987449_
                                     (gx#syntax-e _tl8742887446_)))
                                (let ((_hd8743087452_ (##car _e8742987449_))
                                      (_tl8743187454_ (##cdr _e8742987449_)))
                                  (let* ((_hd87457_ _hd8743087452_)
                                         (_body87459_ _tl8743187454_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87457_)
                                             (gx#stx-list? _body87459_)
                                             (not (gx#stx-null? _body87459_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87457_)
                                         _body87459_)
                                        (_E8742587437_)))))
                              (_E8742587437_))))
                      (_E8742587437_)))))
          (_E8742487461_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx87358_)
        (letrec ((_generate87360_
                  (lambda (_clause87390_)
                    (let* ((_e8739187398_ _clause87390_)
                           (_E8739387402_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx87358_
                               _clause87390_)))
                           (_E8739287418_
                            (lambda ()
                              (if (gx#stx-pair? _e8739187398_)
                                  (let ((_e8739487406_
                                         (gx#syntax-e _e8739187398_)))
                                    (let ((_hd8739587409_
                                           (##car _e8739487406_))
                                          (_tl8739687411_
                                           (##cdr _e8739487406_)))
                                      (let* ((_hd87414_ _hd8739587409_)
                                             (_body87416_ _tl8739687411_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd87414_)
                                                 (gx#stx-list? _body87416_)
                                                 (not (gx#stx-null?
                                                       _body87416_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd87414_)
                                                   _body87416_)
                                             (gx#stx-source _clause87390_))
                                            (_E8739387402_)))))
                                  (_E8739387402_)))))
                      (_E8739287418_)))))
          (let* ((_e8736187368_ _stx87358_)
                 (_E8736387372_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8736187368_)))
                 (_E8736287386_
                  (lambda ()
                    (if (gx#stx-pair? _e8736187368_)
                        (let ((_e8736487376_ (gx#syntax-e _e8736187368_)))
                          (let ((_hd8736587379_ (##car _e8736487376_))
                                (_tl8736687381_ (##cdr _e8736487376_)))
                            (let ((_clauses87384_ _tl8736687381_))
                              (if (gx#stx-list? _clauses87384_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate87360_
                                    _clauses87384_))
                                  (_E8736387372_)))))
                        (_E8736387372_)))))
            (_E8736287386_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx87259_ _form87260_)
        (letrec ((_generate87262_
                  (lambda (_bind87305_)
                    (let* ((_e8730687316_ _bind87305_)
                           (_E8730887320_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx87259_
                               _bind87305_)))
                           (_E8730787344_
                            (lambda ()
                              (if (gx#stx-pair? _e8730687316_)
                                  (let ((_e8730987324_
                                         (gx#syntax-e _e8730687316_)))
                                    (let ((_hd8731087327_
                                           (##car _e8730987324_))
                                          (_tl8731187329_
                                           (##cdr _e8730987324_)))
                                      (let ((_ids87332_ _hd8731087327_))
                                        (if (gx#stx-pair? _tl8731187329_)
                                            (let ((_e8731287334_
                                                   (gx#syntax-e
                                                    _tl8731187329_)))
                                              (let ((_hd8731387337_
                                                     (##car _e8731287334_))
                                                    (_tl8731487339_
                                                     (##cdr _e8731287334_)))
                                                (let ((_expr87342_
                                                       _hd8731387337_))
                                                  (if (gx#stx-null?
                                                       _tl8731487339_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids87332_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids87332_)
                        (cons _expr87342_ '()))
                  (_E8730887320_))
              (_E8730887320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8730887320_)))))
                                  (_E8730887320_)))))
                      (_E8730787344_)))))
          (let* ((_e8726387273_ _stx87259_)
                 (_E8726587277_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8726387273_)))
                 (_E8726487301_
                  (lambda ()
                    (if (gx#stx-pair? _e8726387273_)
                        (let ((_e8726687281_ (gx#syntax-e _e8726387273_)))
                          (let ((_hd8726787284_ (##car _e8726687281_))
                                (_tl8726887286_ (##cdr _e8726687281_)))
                            (if (gx#stx-pair? _tl8726887286_)
                                (let ((_e8726987289_
                                       (gx#syntax-e _tl8726887286_)))
                                  (let ((_hd8727087292_ (##car _e8726987289_))
                                        (_tl8727187294_ (##cdr _e8726987289_)))
                                    (let* ((_hd87297_ _hd8727087292_)
                                           (_body87299_ _tl8727187294_))
                                      (if (and (gx#stx-list? _hd87297_)
                                               (gx#stx-list? _body87299_)
                                               (not (gx#stx-null?
                                                     _body87299_)))
                                          (gx#core-cons*
                                           _form87260_
                                           (gx#stx-map1
                                            _generate87262_
                                            _hd87297_)
                                           _body87299_)
                                          (_E8726587277_)))))
                                (_E8726587277_))))
                        (_E8726587277_)))))
            (_E8726487301_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx87351_)
        (let ((_form87353_ '%#let-values))
          (gx#macro-expand-let-values__% _stx87351_ _form87353_))))
    (define gx#macro-expand-let-values
      (lambda _g89736_
        (let ((_g89735_ (##length _g89736_)))
          (cond ((##fx= _g89735_ 1)
                 (apply (lambda (_stx87351_)
                          (gx#macro-expand-let-values__0 _stx87351_))
                        _g89736_))
                ((##fx= _g89735_ 2)
                 (apply (lambda (_stx87355_ _form87356_)
                          (gx#macro-expand-let-values__%
                           _stx87355_
                           _form87356_))
                        _g89736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89736_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx87256_)
        (gx#macro-expand-let-values__% _stx87256_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx87254_)
        (gx#macro-expand-let-values__% _stx87254_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx87145_)
        (let* ((_e8714687172_ _stx87145_)
               (_E8715887176_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8714687172_)))
               (_E8714887218_
                (lambda ()
                  (if (gx#stx-pair? _e8714687172_)
                      (let ((_e8715987180_ (gx#syntax-e _e8714687172_)))
                        (let ((_hd8716087183_ (##car _e8715987180_))
                              (_tl8716187185_ (##cdr _e8715987180_)))
                          (if (gx#stx-pair? _tl8716187185_)
                              (let ((_e8716287188_
                                     (gx#syntax-e _tl8716187185_)))
                                (let ((_hd8716387191_ (##car _e8716287188_))
                                      (_tl8716487193_ (##cdr _e8716287188_)))
                                  (let ((_test87196_ _hd8716387191_))
                                    (if (gx#stx-pair? _tl8716487193_)
                                        (let ((_e8716587198_
                                               (gx#syntax-e _tl8716487193_)))
                                          (let ((_hd8716687201_
                                                 (##car _e8716587198_))
                                                (_tl8716787203_
                                                 (##cdr _e8716587198_)))
                                            (let ((_K87206_ _hd8716687201_))
                                              (if (gx#stx-pair? _tl8716787203_)
                                                  (let ((_e8716887208_
                                                         (gx#syntax-e
                                                          _tl8716787203_)))
                                                    (let ((_hd8716987211_
                                                           (##car _e8716887208_))
                                                          (_tl8717087213_
                                                           (##cdr _e8716887208_)))
                                                      (let ((_E87216_
                                                             _hd8716987211_))
                                                        (if (gx#stx-null?
                                                             _tl8717087213_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test87196_
                         _K87206_
                         _E87216_)
                        (_E8715887176_))
                    (_E8715887176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8715887176_)))))
                                        (_E8715887176_)))))
                              (_E8715887176_))))
                      (_E8715887176_))))
               (_E8714787250_
                (lambda ()
                  (if (gx#stx-pair? _e8714687172_)
                      (let ((_e8714987222_ (gx#syntax-e _e8714687172_)))
                        (let ((_hd8715087225_ (##car _e8714987222_))
                              (_tl8715187227_ (##cdr _e8714987222_)))
                          (if (gx#stx-pair? _tl8715187227_)
                              (let ((_e8715287230_
                                     (gx#syntax-e _tl8715187227_)))
                                (let ((_hd8715387233_ (##car _e8715287230_))
                                      (_tl8715487235_ (##cdr _e8715287230_)))
                                  (let ((_test87238_ _hd8715387233_))
                                    (if (gx#stx-pair? _tl8715487235_)
                                        (let ((_e8715587240_
                                               (gx#syntax-e _tl8715487235_)))
                                          (let ((_hd8715687243_
                                                 (##car _e8715587240_))
                                                (_tl8715787245_
                                                 (##cdr _e8715587240_)))
                                            (let ((_K87248_ _hd8715687243_))
                                              (if (gx#stx-null? _tl8715787245_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test87238_
                                                       _K87248_
                                                       '#!void)
                                                      (_E8714887218_))
                                                  (_E8714887218_)))))
                                        (_E8714887218_)))))
                              (_E8714887218_))))
                      (_E8714887218_)))))
          (_E8714787250_))))
    (define gx#free-identifier=?
      (lambda (_xid87133_ _yid87134_)
        (let ((_xe87136_ (gx#resolve-identifier__0 _xid87133_))
              (_ye87137_ (gx#resolve-identifier__0 _yid87134_)))
          (if (and _xe87136_ _ye87137_)
              (let ((_$e87139_ (eq? _xe87136_ _ye87137_)))
                (if _$e87139_
                    _$e87139_
                    (if (##structure-instance-of? _xe87136_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye87137_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe87136_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye87137_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe87136_ _ye87137_)
                  '#f
                  (gx#stx-eq? _xid87133_ _yid87134_))))))
    (define gx#bound-identifier=?
      (lambda (_xid87117_ _yid87118_)
        (letrec ((_context87120_
                  (lambda (_e87131_)
                    (if (##structure-direct-instance-of?
                         _e87131_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e87131_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks87121_
                  (lambda (_e87129_)
                    (if (symbol? _e87129_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e87129_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e87129_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e87129_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap87122_
                  (lambda (_e87127_)
                    (if (symbol? _e87127_)
                        _e87127_
                        (gx#syntax-local-unwrap _e87127_)))))
          (let ((_x87124_ (_unwrap87122_ _xid87117_))
                (_y87125_ (_unwrap87122_ _yid87118_)))
            (if (gx#stx-eq? _x87124_ _y87125_)
                (if (eq? (_context87120_ _x87124_) (_context87120_ _y87125_))
                    (equal? (_marks87121_ _x87124_) (_marks87121_ _y87125_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx87115_)
        (if (gx#identifier? _stx87115_)
            (gx#core-identifier=? _stx87115_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx87113_)
        (if (gx#identifier? _stx87113_)
            (gx#core-identifier=? _stx87113_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x87111_)
        (if (gx#identifier? _x87111_)
            (if (not (gx#underscore? _x87111_)) _x87111_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87057_ _where87058_)
        (let _lp87060_ ((_rest87062_ (gx#syntax->list _stx87057_)))
          (let* ((_rest8706387071_ _rest87062_)
                 (_else8706587079_ (lambda () '#t))
                 (_K8706787089_
                  (lambda (_rest87082_ _hd87083_)
                    (if (not (gx#identifier? _hd87083_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87058_
                         _hd87083_)
                        (if (find (lambda (_g8708487086_)
                                    (gx#bound-identifier=?
                                     _g8708487086_
                                     _hd87083_))
                                  _rest87082_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87058_
                             _hd87083_)
                            (_lp87060_ _rest87082_))))))
            (if (##pair? _rest8706387071_)
                (let ((_hd8706887092_ (##car _rest8706387071_))
                      (_tl8706987094_ (##cdr _rest8706387071_)))
                  (let* ((_hd87097_ _hd8706887092_)
                         (_rest87099_ _tl8706987094_))
                    (_K8706787089_ _rest87099_ _hd87097_)))
                (_else8706587079_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx87104_)
        (let ((_where87106_ _stx87104_))
          (gx#check-duplicate-identifiers__% _stx87104_ _where87106_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89738_
        (let ((_g89737_ (##length _g89738_)))
          (cond ((##fx= _g89737_ 1)
                 (apply (lambda (_stx87104_)
                          (gx#check-duplicate-identifiers__0 _stx87104_))
                        _g89738_))
                ((##fx= _g89737_ 2)
                 (apply (lambda (_stx87108_ _where87109_)
                          (gx#check-duplicate-identifiers__%
                           _stx87108_
                           _where87109_))
                        _g89738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89738_))))))
    (define gx#core-bind-values?
      (lambda (_stx87049_)
        (gx#stx-andmap
         (lambda (_x87051_)
           (let ((_$e87053_ (gx#identifier? _x87051_)))
             (if _$e87053_ _$e87053_ (gx#stx-false? _x87051_))))
         _stx87049_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87013_ _rebind?87014_ _phi87015_ _ctx87016_)
        (gx#stx-for-each1
         (lambda (_id87018_)
           (if (gx#identifier? _id87018_)
               (gx#core-bind-runtime!__%
                _id87018_
                _rebind?87014_
                _phi87015_
                _ctx87016_)
               '#!void))
         _stx87013_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87023_)
        (let* ((_rebind?87025_ '#f)
               (_phi87027_ (gx#current-expander-phi))
               (_ctx87029_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87023_
           _rebind?87025_
           _phi87027_
           _ctx87029_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87031_ _rebind?87032_)
        (let* ((_phi87034_ (gx#current-expander-phi))
               (_ctx87036_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87031_
           _rebind?87032_
           _phi87034_
           _ctx87036_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87038_ _rebind?87039_ _phi87040_)
        (let ((_ctx87042_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87038_
           _rebind?87039_
           _phi87040_
           _ctx87042_))))
    (define gx#core-bind-values!
      (lambda _g89740_
        (let ((_g89739_ (##length _g89740_)))
          (cond ((##fx= _g89739_ 1)
                 (apply (lambda (_stx87023_)
                          (gx#core-bind-values!__0 _stx87023_))
                        _g89740_))
                ((##fx= _g89739_ 2)
                 (apply (lambda (_stx87031_ _rebind?87032_)
                          (gx#core-bind-values!__1 _stx87031_ _rebind?87032_))
                        _g89740_))
                ((##fx= _g89739_ 3)
                 (apply (lambda (_stx87038_ _rebind?87039_ _phi87040_)
                          (gx#core-bind-values!__2
                           _stx87038_
                           _rebind?87039_
                           _phi87040_))
                        _g89740_))
                ((##fx= _g89739_ 4)
                 (apply (lambda (_stx87044_
                                 _rebind?87045_
                                 _phi87046_
                                 _ctx87047_)
                          (gx#core-bind-values!__%
                           _stx87044_
                           _rebind?87045_
                           _phi87046_
                           _ctx87047_))
                        _g89740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89740_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87008_)
        (gx#stx-map1
         (lambda (_x87010_)
           (if (gx#identifier? _x87010_)
               (gx#core-quote-syntax__0 _x87010_)
               '#f))
         _stx87008_)))
    (define gx#core-runtime-ref?
      (lambda (_stx87001_)
        (if (gx#identifier? _stx87001_)
            (let* ((_bind87003_ (gx#resolve-identifier__0 _stx87001_))
                   (_$e87005_ (not _bind87003_)))
              (if _$e87005_
                  _$e87005_
                  (##structure-instance-of?
                   _bind87003_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86993_ _form86994_)
        (let ((_bind86996_ (gx#resolve-identifier__0 _id86993_)))
          (if (##structure-instance-of? _bind86996_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86993_)
              (if (not _bind86996_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86993_)))
                      (gx#core-quote-syntax__0 _id86993_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86994_
                       _id86993_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86994_
                   _id86993_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86952_ _rebind?86953_ _phi86954_ _ctx86955_)
        (let* ((_key86957_ (gx#core-identifier-key _id86952_))
               (_eid86959_
                (gx#make-binding-id__% _key86957_ '#f _phi86954_ _ctx86955_))
               (_bind86961_
                (if (##structure-instance-of? _ctx86955_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86959_
                     _key86957_
                     _phi86954_
                     _ctx86955_)
                    (if (##structure-instance-of?
                         _ctx86955_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86959_
                         _key86957_
                         _phi86954_)
                        (if (##structure-instance-of?
                             _ctx86955_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86959_
                             _key86957_
                             _phi86954_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86959_
                             _key86957_
                             _phi86954_))))))
          (gx#bind-identifier!__%
           _id86952_
           _bind86961_
           _rebind?86953_
           _phi86954_
           _ctx86955_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86967_)
        (let* ((_rebind?86969_ '#f)
               (_phi86971_ (gx#current-expander-phi))
               (_ctx86973_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86967_
           _rebind?86969_
           _phi86971_
           _ctx86973_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86975_ _rebind?86976_)
        (let* ((_phi86978_ (gx#current-expander-phi))
               (_ctx86980_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86975_
           _rebind?86976_
           _phi86978_
           _ctx86980_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86982_ _rebind?86983_ _phi86984_)
        (let ((_ctx86986_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86982_
           _rebind?86983_
           _phi86984_
           _ctx86986_))))
    (define gx#core-bind-runtime!
      (lambda _g89742_
        (let ((_g89741_ (##length _g89742_)))
          (cond ((##fx= _g89741_ 1)
                 (apply (lambda (_id86967_)
                          (gx#core-bind-runtime!__0 _id86967_))
                        _g89742_))
                ((##fx= _g89741_ 2)
                 (apply (lambda (_id86975_ _rebind?86976_)
                          (gx#core-bind-runtime!__1 _id86975_ _rebind?86976_))
                        _g89742_))
                ((##fx= _g89741_ 3)
                 (apply (lambda (_id86982_ _rebind?86983_ _phi86984_)
                          (gx#core-bind-runtime!__2
                           _id86982_
                           _rebind?86983_
                           _phi86984_))
                        _g89742_))
                ((##fx= _g89741_ 4)
                 (apply (lambda (_id86988_
                                 _rebind?86989_
                                 _phi86990_
                                 _ctx86991_)
                          (gx#core-bind-runtime!__%
                           _id86988_
                           _rebind?86989_
                           _phi86990_
                           _ctx86991_))
                        _g89742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89742_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86907_ _eid86908_ _rebind?86909_ _phi86910_ _ctx86911_)
        (let* ((_key86913_ (gx#core-identifier-key _id86907_))
               (_bind86915_
                (if (##structure-instance-of? _ctx86911_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86908_
                     _key86913_
                     _phi86910_
                     _ctx86911_)
                    (if (##structure-instance-of?
                         _ctx86911_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86908_
                         _key86913_
                         _phi86910_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86908_
                         _key86913_
                         _phi86910_)))))
          (gx#bind-identifier!__%
           _id86907_
           _bind86915_
           _rebind?86909_
           _phi86910_
           _ctx86911_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86921_ _eid86922_)
        (let* ((_rebind?86924_ '#f)
               (_phi86926_ (gx#current-expander-phi))
               (_ctx86928_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86921_
           _eid86922_
           _rebind?86924_
           _phi86926_
           _ctx86928_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86930_ _eid86931_ _rebind?86932_)
        (let* ((_phi86934_ (gx#current-expander-phi))
               (_ctx86936_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86930_
           _eid86931_
           _rebind?86932_
           _phi86934_
           _ctx86936_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86938_ _eid86939_ _rebind?86940_ _phi86941_)
        (let ((_ctx86943_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86938_
           _eid86939_
           _rebind?86940_
           _phi86941_
           _ctx86943_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89744_
        (let ((_g89743_ (##length _g89744_)))
          (cond ((##fx= _g89743_ 2)
                 (apply (lambda (_id86921_ _eid86922_)
                          (gx#core-bind-runtime-reference!__0
                           _id86921_
                           _eid86922_))
                        _g89744_))
                ((##fx= _g89743_ 3)
                 (apply (lambda (_id86930_ _eid86931_ _rebind?86932_)
                          (gx#core-bind-runtime-reference!__1
                           _id86930_
                           _eid86931_
                           _rebind?86932_))
                        _g89744_))
                ((##fx= _g89743_ 4)
                 (apply (lambda (_id86938_
                                 _eid86939_
                                 _rebind?86940_
                                 _phi86941_)
                          (gx#core-bind-runtime-reference!__2
                           _id86938_
                           _eid86939_
                           _rebind?86940_
                           _phi86941_))
                        _g89744_))
                ((##fx= _g89743_ 5)
                 (apply (lambda (_id86945_
                                 _eid86946_
                                 _rebind?86947_
                                 _phi86948_
                                 _ctx86949_)
                          (gx#core-bind-runtime-reference!__%
                           _id86945_
                           _eid86946_
                           _rebind?86947_
                           _phi86948_
                           _ctx86949_))
                        _g89744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89744_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86867_ _eid86868_ _rebind?86869_ _phi86870_ _ctx86871_)
        (gx#bind-identifier!__%
         _id86867_
         (##structure
          gx#extern-binding::t
          _eid86868_
          (gx#core-identifier-key _id86867_)
          _phi86870_)
         _rebind?86869_
         _phi86870_
         _ctx86871_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86876_ _eid86877_)
        (let* ((_rebind?86879_ '#f)
               (_phi86881_ (gx#current-expander-phi))
               (_ctx86883_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86876_
           _eid86877_
           _rebind?86879_
           _phi86881_
           _ctx86883_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86885_ _eid86886_ _rebind?86887_)
        (let* ((_phi86889_ (gx#current-expander-phi))
               (_ctx86891_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86885_
           _eid86886_
           _rebind?86887_
           _phi86889_
           _ctx86891_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86893_ _eid86894_ _rebind?86895_ _phi86896_)
        (let ((_ctx86898_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86893_
           _eid86894_
           _rebind?86895_
           _phi86896_
           _ctx86898_))))
    (define gx#core-bind-extern!
      (lambda _g89746_
        (let ((_g89745_ (##length _g89746_)))
          (cond ((##fx= _g89745_ 2)
                 (apply (lambda (_id86876_ _eid86877_)
                          (gx#core-bind-extern!__0 _id86876_ _eid86877_))
                        _g89746_))
                ((##fx= _g89745_ 3)
                 (apply (lambda (_id86885_ _eid86886_ _rebind?86887_)
                          (gx#core-bind-extern!__1
                           _id86885_
                           _eid86886_
                           _rebind?86887_))
                        _g89746_))
                ((##fx= _g89745_ 4)
                 (apply (lambda (_id86893_
                                 _eid86894_
                                 _rebind?86895_
                                 _phi86896_)
                          (gx#core-bind-extern!__2
                           _id86893_
                           _eid86894_
                           _rebind?86895_
                           _phi86896_))
                        _g89746_))
                ((##fx= _g89745_ 5)
                 (apply (lambda (_id86900_
                                 _eid86901_
                                 _rebind?86902_
                                 _phi86903_
                                 _ctx86904_)
                          (gx#core-bind-extern!__%
                           _id86900_
                           _eid86901_
                           _rebind?86902_
                           _phi86903_
                           _ctx86904_))
                        _g89746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89746_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86821_ _e86822_ _rebind?86823_ _phi86824_ _ctx86825_)
        (gx#bind-identifier!__%
         _id86821_
         (let ((_key86830_ (gx#core-identifier-key _id86821_))
               (_e86831_
                (if (or (##structure-instance-of? _e86822_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86822_
                         'gx#expander-context::t))
                    _e86822_
                    (##structure
                     gx#user-expander::t
                     _e86822_
                     _ctx86825_
                     _phi86824_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86830_ '#t _phi86824_ _ctx86825_)
            _key86830_
            _phi86824_
            _e86831_))
         _rebind?86823_
         _phi86824_
         _ctx86825_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86836_ _e86837_)
        (let* ((_rebind?86839_ '#f)
               (_phi86841_ (gx#current-expander-phi))
               (_ctx86843_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86836_
           _e86837_
           _rebind?86839_
           _phi86841_
           _ctx86843_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86845_ _e86846_ _rebind?86847_)
        (let* ((_phi86849_ (gx#current-expander-phi))
               (_ctx86851_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86845_
           _e86846_
           _rebind?86847_
           _phi86849_
           _ctx86851_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86853_ _e86854_ _rebind?86855_ _phi86856_)
        (let ((_ctx86858_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86853_
           _e86854_
           _rebind?86855_
           _phi86856_
           _ctx86858_))))
    (define gx#core-bind-syntax!
      (lambda _g89748_
        (let ((_g89747_ (##length _g89748_)))
          (cond ((##fx= _g89747_ 2)
                 (apply (lambda (_id86836_ _e86837_)
                          (gx#core-bind-syntax!__0 _id86836_ _e86837_))
                        _g89748_))
                ((##fx= _g89747_ 3)
                 (apply (lambda (_id86845_ _e86846_ _rebind?86847_)
                          (gx#core-bind-syntax!__1
                           _id86845_
                           _e86846_
                           _rebind?86847_))
                        _g89748_))
                ((##fx= _g89747_ 4)
                 (apply (lambda (_id86853_ _e86854_ _rebind?86855_ _phi86856_)
                          (gx#core-bind-syntax!__2
                           _id86853_
                           _e86854_
                           _rebind?86855_
                           _phi86856_))
                        _g89748_))
                ((##fx= _g89747_ 5)
                 (apply (lambda (_id86860_
                                 _e86861_
                                 _rebind?86862_
                                 _phi86863_
                                 _ctx86864_)
                          (gx#core-bind-syntax!__%
                           _id86860_
                           _e86861_
                           _rebind?86862_
                           _phi86863_
                           _ctx86864_))
                        _g89748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89748_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86804_ _e86805_ _rebind?86806_)
        (gx#core-bind-syntax!__%
         _id86804_
         _e86805_
         _rebind?86806_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86811_ _e86812_)
        (let ((_rebind?86814_ '#f))
          (gx#core-bind-root-syntax!__% _id86811_ _e86812_ _rebind?86814_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89750_
        (let ((_g89749_ (##length _g89750_)))
          (cond ((##fx= _g89749_ 2)
                 (apply (lambda (_id86811_ _e86812_)
                          (gx#core-bind-root-syntax!__0 _id86811_ _e86812_))
                        _g89750_))
                ((##fx= _g89749_ 3)
                 (apply (lambda (_id86816_ _e86817_ _rebind?86818_)
                          (gx#core-bind-root-syntax!__%
                           _id86816_
                           _e86817_
                           _rebind?86818_))
                        _g89750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89750_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86762_ _alias-id86763_ _rebind?86764_ _phi86765_ _ctx86766_)
        (gx#bind-identifier!__%
         _id86762_
         (let ((_key86768_ (gx#core-identifier-key _id86762_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86768_ '#t _phi86765_ _ctx86766_)
            _key86768_
            _phi86765_
            _alias-id86763_))
         _rebind?86764_
         _phi86765_
         _ctx86766_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86773_ _alias-id86774_)
        (let* ((_rebind?86776_ '#f)
               (_phi86778_ (gx#current-expander-phi))
               (_ctx86780_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86773_
           _alias-id86774_
           _rebind?86776_
           _phi86778_
           _ctx86780_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86782_ _alias-id86783_ _rebind?86784_)
        (let* ((_phi86786_ (gx#current-expander-phi))
               (_ctx86788_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86782_
           _alias-id86783_
           _rebind?86784_
           _phi86786_
           _ctx86788_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86790_ _alias-id86791_ _rebind?86792_ _phi86793_)
        (let ((_ctx86795_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86790_
           _alias-id86791_
           _rebind?86792_
           _phi86793_
           _ctx86795_))))
    (define gx#core-bind-alias!
      (lambda _g89752_
        (let ((_g89751_ (##length _g89752_)))
          (cond ((##fx= _g89751_ 2)
                 (apply (lambda (_id86773_ _alias-id86774_)
                          (gx#core-bind-alias!__0 _id86773_ _alias-id86774_))
                        _g89752_))
                ((##fx= _g89751_ 3)
                 (apply (lambda (_id86782_ _alias-id86783_ _rebind?86784_)
                          (gx#core-bind-alias!__1
                           _id86782_
                           _alias-id86783_
                           _rebind?86784_))
                        _g89752_))
                ((##fx= _g89751_ 4)
                 (apply (lambda (_id86790_
                                 _alias-id86791_
                                 _rebind?86792_
                                 _phi86793_)
                          (gx#core-bind-alias!__2
                           _id86790_
                           _alias-id86791_
                           _rebind?86792_
                           _phi86793_))
                        _g89752_))
                ((##fx= _g89751_ 5)
                 (apply (lambda (_id86797_
                                 _alias-id86798_
                                 _rebind?86799_
                                 _phi86800_
                                 _ctx86801_)
                          (gx#core-bind-alias!__%
                           _id86797_
                           _alias-id86798_
                           _rebind?86799_
                           _phi86800_
                           _ctx86801_))
                        _g89752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89752_))))))
    (define gx#make-binding-id__%
      (lambda (_key86719_ _syntax?86720_ _phi86721_ _ctx86722_)
        (if (uninterned-symbol? _key86719_)
            (gensym 'L)
            (if (pair? _key86719_)
                (gensym (car _key86719_))
                (if (##structure-instance-of? _ctx86722_ 'gx#top-context::t)
                    (let ((_ns86724_
                           (gx#core-context-namespace__% _ctx86722_)))
                      (if (and (fxzero? _phi86721_) (not _syntax?86720_))
                          (if _ns86724_
                              (make-symbol__1 _ns86724_ '"#" _key86719_)
                              _key86719_)
                          (if _syntax?86720_
                              (make-symbol__1
                               (let ((_$e86726_ _ns86724_))
                                 (if _$e86726_ _$e86726_ '""))
                               '"[:"
                               (number->string _phi86721_)
                               '":]#"
                               _key86719_)
                              (make-symbol__1
                               (let ((_$e86729_ _ns86724_))
                                 (if _$e86729_ _$e86729_ '""))
                               '"["
                               (number->string _phi86721_)
                               '"]#"
                               _key86719_))))
                    (gensym _key86719_))))))
    (define gx#make-binding-id__0
      (lambda (_key86735_)
        (let* ((_syntax?86737_ '#f)
               (_phi86739_ (gx#current-expander-phi))
               (_ctx86741_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86735_
           _syntax?86737_
           _phi86739_
           _ctx86741_))))
    (define gx#make-binding-id__1
      (lambda (_key86743_ _syntax?86744_)
        (let* ((_phi86746_ (gx#current-expander-phi))
               (_ctx86748_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86743_
           _syntax?86744_
           _phi86746_
           _ctx86748_))))
    (define gx#make-binding-id__2
      (lambda (_key86750_ _syntax?86751_ _phi86752_)
        (let ((_ctx86754_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86750_
           _syntax?86751_
           _phi86752_
           _ctx86754_))))
    (define gx#make-binding-id
      (lambda _g89754_
        (let ((_g89753_ (##length _g89754_)))
          (cond ((##fx= _g89753_ 1)
                 (apply (lambda (_key86735_)
                          (gx#make-binding-id__0 _key86735_))
                        _g89754_))
                ((##fx= _g89753_ 2)
                 (apply (lambda (_key86743_ _syntax?86744_)
                          (gx#make-binding-id__1 _key86743_ _syntax?86744_))
                        _g89754_))
                ((##fx= _g89753_ 3)
                 (apply (lambda (_key86750_ _syntax?86751_ _phi86752_)
                          (gx#make-binding-id__2
                           _key86750_
                           _syntax?86751_
                           _phi86752_))
                        _g89754_))
                ((##fx= _g89753_ 4)
                 (apply (lambda (_key86756_
                                 _syntax?86757_
                                 _phi86758_
                                 _ctx86759_)
                          (gx#make-binding-id__%
                           _key86756_
                           _syntax?86757_
                           _phi86758_
                           _ctx86759_))
                        _g89754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89754_))))))))
