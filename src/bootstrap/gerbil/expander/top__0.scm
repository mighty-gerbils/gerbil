(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709375798)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89697_)
        (letrec ((_expand-special89699_
                  (lambda (_hd89701_ _K89702_ _rest89703_ _r89704_)
                    (_K89702_
                     _rest89703_
                     (cons (gx#core-expand-top _hd89701_) _r89704_)))))
          (gx#core-expand-block__0 _stx89697_ _expand-special89699_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89450_)
        (letrec ((_expand-special89452_
                  (lambda (_hd89572_ _K89573_ _rest89574_ _r89575_)
                    (let* ((_K89579_
                            (lambda (_e89577_)
                              (_K89573_ _rest89574_ (cons _e89577_ _r89575_))))
                           (_e8958089609_ _hd89572_)
                           (_E8960489613_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8958089609_)))
                           (_E8960089625_
                            (lambda ()
                              (if (gx#stx-pair? _e8958089609_)
                                  (let ((_e8960589617_
                                         (gx#syntax-e _e8958089609_)))
                                    (let ((_hd8960689620_
                                           (##car _e8960589617_))
                                          (_tl8960789622_
                                           (##cdr _e8960589617_)))
                                      (if (and (gx#identifier? _hd8960689620_)
                                               (gx#core-identifier=?
                                                _hd8960689620_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89579_
                                               (gx#core-expand-define-runtime%
                                                _hd89572_))
                                              (_E8960489613_))
                                          (_E8960489613_))))
                                  (_E8960489613_))))
                           (_E8959689637_
                            (lambda ()
                              (if (gx#stx-pair? _e8958089609_)
                                  (let ((_e8960189629_
                                         (gx#syntax-e _e8958089609_)))
                                    (let ((_hd8960289632_
                                           (##car _e8960189629_))
                                          (_tl8960389634_
                                           (##cdr _e8960189629_)))
                                      (if (and (gx#identifier? _hd8960289632_)
                                               (gx#core-identifier=?
                                                _hd8960289632_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89579_
                                               (gx#core-expand-define-alias%
                                                _hd89572_))
                                              (_E8960089625_))
                                          (_E8960089625_))))
                                  (_E8960089625_))))
                           (_E8958689649_
                            (lambda ()
                              (if (gx#stx-pair? _e8958089609_)
                                  (let ((_e8959789641_
                                         (gx#syntax-e _e8958089609_)))
                                    (let ((_hd8959889644_
                                           (##car _e8959789641_))
                                          (_tl8959989646_
                                           (##cdr _e8959789641_)))
                                      (if (and (gx#identifier? _hd8959889644_)
                                               (gx#core-identifier=?
                                                _hd8959889644_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89579_
                                               (gx#core-expand-define-syntax%
                                                _hd89572_))
                                              (_E8959689637_))
                                          (_E8959689637_))))
                                  (_E8959689637_))))
                           (_E8958289681_
                            (lambda ()
                              (if (gx#stx-pair? _e8958089609_)
                                  (let ((_e8958789653_
                                         (gx#syntax-e _e8958089609_)))
                                    (let ((_hd8958889656_
                                           (##car _e8958789653_))
                                          (_tl8958989658_
                                           (##cdr _e8958789653_)))
                                      (if (and (gx#identifier? _hd8958889656_)
                                               (gx#core-identifier=?
                                                _hd8958889656_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8958989658_)
                                              (let ((_e8959089661_
                                                     (gx#syntax-e
                                                      _tl8958989658_)))
                                                (let ((_hd8959189664_
                                                       (##car _e8959089661_))
                                                      (_tl8959289666_
                                                       (##cdr _e8959089661_)))
                                                  (let ((_hd-bind89669_
                                                         _hd8959189664_))
                                                    (if (gx#stx-pair?
                                                         _tl8959289666_)
                                                        (let ((_e8959389671_
                                                               (gx#syntax-e
                                                                _tl8959289666_)))
                                                          (let ((_hd8959489674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8959389671_))
                        (_tl8959589676_ (##cdr _e8959389671_)))
                    (let ((_expr89679_ _hd8959489674_))
                      (if (gx#stx-null? _tl8959589676_)
                          (if (gx#core-bind-values? _hd-bind89669_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89669_)
                                (_K89579_ _hd89572_))
                              (_E8958689649_))
                          (_E8958689649_)))))
                (_E8958689649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8958689649_))
                                          (_E8958689649_))))
                                  (_E8958689649_))))
                           (_E8958189693_
                            (lambda ()
                              (if (gx#stx-pair? _e8958089609_)
                                  (let ((_e8958389685_
                                         (gx#syntax-e _e8958089609_)))
                                    (let ((_hd8958489688_
                                           (##car _e8958389685_))
                                          (_tl8958589690_
                                           (##cdr _e8958389685_)))
                                      (if (and (gx#identifier? _hd8958489688_)
                                               (gx#core-identifier=?
                                                _hd8958489688_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89579_
                                               (gx#core-expand-begin-syntax%
                                                _hd89572_))
                                              (_E8958289681_))
                                          (_E8958289681_))))
                                  (_E8958289681_)))))
                      (_E8958189693_))))
                 (_eval-body89453_
                  (lambda (_rbody89461_)
                    (let _lp89463_ ((_rest89465_ _rbody89461_)
                                    (_body89466_ '())
                                    (_ebody89467_ '()))
                      (let* ((_rest8946889476_ _rest89465_)
                             (_else8947089484_
                              (lambda ()
                                (values _body89466_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89467_)
                                          (gx#stx-source _stx89450_))))))
                             (_K8947289560_
                              (lambda (_rest89487_ _hd89488_)
                                (let* ((_e8948989506_ _hd89488_)
                                       (_E8950189510_
                                        (lambda ()
                                          (_lp89463_
                                           _rest89487_
                                           (cons _hd89488_ _body89466_)
                                           (cons _hd89488_ _ebody89467_))))
                                       (_E8949189522_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8948989506_)
                                              (let ((_e8950289514_
                                                     (gx#syntax-e
                                                      _e8948989506_)))
                                                (let ((_hd8950389517_
                                                       (##car _e8950289514_))
                                                      (_tl8950489519_
                                                       (##cdr _e8950289514_)))
                                                  (if (and (gx#identifier?
                                                            _hd8950389517_)
                                                           (gx#core-identifier=?
                                                            _hd8950389517_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89463_
                                                           _rest89487_
                                                           (cons _hd89488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89466_)
                   _ebody89467_)
                  (_E8950189510_))
              (_E8950189510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8950189510_))))
                                       (_E8949089556_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8948989506_)
                                              (let ((_e8949289526_
                                                     (gx#syntax-e
                                                      _e8948989506_)))
                                                (let ((_hd8949389529_
                                                       (##car _e8949289526_))
                                                      (_tl8949489531_
                                                       (##cdr _e8949289526_)))
                                                  (if (and (gx#identifier?
                                                            _hd8949389529_)
                                                           (gx#core-identifier=?
                                                            _hd8949389529_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8949489531_)
                                                          (let ((_e8949589534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8949489531_)))
                    (let ((_hd8949689537_ (##car _e8949589534_))
                          (_tl8949789539_ (##cdr _e8949589534_)))
                      (let ((_hd-bind89542_ _hd8949689537_))
                        (if (gx#stx-pair? _tl8949789539_)
                            (let ((_e8949889544_ (gx#syntax-e _tl8949789539_)))
                              (let ((_hd8949989547_ (##car _e8949889544_))
                                    (_tl8950089549_ (##cdr _e8949889544_)))
                                (let ((_expr89552_ _hd8949989547_))
                                  (if (gx#stx-null? _tl8950089549_)
                                      (if '#t
                                          (let ((_ehd89554_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89542_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89552_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89488_))))
                                            (_lp89463_
                                             _rest89487_
                                             (cons _ehd89554_ _body89466_)
                                             (cons _ehd89554_ _ebody89467_)))
                                          (_E8949189522_))
                                      (_E8949189522_)))))
                            (_E8949189522_)))))
                  (_E8949189522_))
              (_E8949189522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8949189522_)))))
                                  (_E8949089556_)))))
                        (if (##pair? _rest8946889476_)
                            (let ((_hd8947389563_ (##car _rest8946889476_))
                                  (_tl8947489565_ (##cdr _rest8946889476_)))
                              (let* ((_hd89568_ _hd8947389563_)
                                     (_rest89570_ _tl8947489565_))
                                (_K8947289560_ _rest89570_ _hd89568_)))
                            (_else8947089484_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89456_
                     (gx#core-expand-block__1
                      _stx89450_
                      _expand-special89452_
                      '#f))
                    (_g89720_ (_eval-body89453_ _rbody89456_)))
               (begin
                 (let ((_g89721_
                        (if (##values? _g89720_)
                            (##vector-length _g89720_)
                            1)))
                   (if (not (##fx= _g89721_ 2))
                       (error "Context expects 2 values" _g89721_)))
                 (let ((_expanded-body89458_ (##vector-ref _g89720_ 0))
                       (_value89459_ (##vector-ref _g89720_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89458_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89459_ '())))
                    (gx#stx-source _stx89450_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89420_)
        (let* ((_e8942189428_ _stx89420_)
               (_E8942389432_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8942189428_)))
               (_E8942289446_
                (lambda ()
                  (if (gx#stx-pair? _e8942189428_)
                      (let ((_e8942489436_ (gx#syntax-e _e8942189428_)))
                        (let ((_hd8942589439_ (##car _e8942489436_))
                              (_tl8942689441_ (##cdr _e8942489436_)))
                          (let ((_body89444_ _tl8942689441_))
                            (if (gx#stx-list? _body89444_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89444_)
                                 (gx#stx-source _stx89420_))
                                (_E8942389432_)))))
                      (_E8942389432_)))))
          (_E8942289446_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89418_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89418_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx89364_)
        (let* ((_e8936589378_ _stx89364_)
               (_E8936789382_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8936589378_)))
               (_E8936689414_
                (lambda ()
                  (if (gx#stx-pair? _e8936589378_)
                      (let ((_e8936889386_ (gx#syntax-e _e8936589378_)))
                        (let ((_hd8936989389_ (##car _e8936889386_))
                              (_tl8937089391_ (##cdr _e8936889386_)))
                          (if (gx#stx-pair? _tl8937089391_)
                              (let ((_e8937189394_
                                     (gx#syntax-e _tl8937089391_)))
                                (let ((_hd8937289397_ (##car _e8937189394_))
                                      (_tl8937389399_ (##cdr _e8937189394_)))
                                  (let ((_ann89402_ _hd8937289397_))
                                    (if (gx#stx-pair? _tl8937389399_)
                                        (let ((_e8937489404_
                                               (gx#syntax-e _tl8937389399_)))
                                          (let ((_hd8937589407_
                                                 (##car _e8937489404_))
                                                (_tl8937689409_
                                                 (##cdr _e8937489404_)))
                                            (let ((_expr89412_ _hd8937589407_))
                                              (if (gx#stx-null? _tl8937689409_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann89402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr89412_) '())))
               (gx#stx-source _stx89364_))
              (_E8936789382_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8936789382_)))))
                                        (_E8936789382_)))))
                              (_E8936789382_))))
                      (_E8936789382_)))))
          (_E8936689414_))))
    (define gx#core-expand-local-block
      (lambda (_stx89088_ _body89089_)
        (letrec ((_expand-special89091_
                  (lambda (_hd89359_ _K89360_ _rest89361_ _r89362_)
                    (_K89360_
                     '()
                     (cons (_expand-internal89092_ _hd89359_ _rest89361_)
                           _r89362_))))
                 (_expand-internal89092_
                  (lambda (_hd89355_ _rest89356_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal89094_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd89355_ _rest89356_))
                          (gx#stx-source _stx89088_))
                         _expand-internal-special89093_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89714
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89714)
                       __obj89714))))
                 (_expand-internal-special89093_
                  (lambda (_hd89250_ _K89251_ _rest89252_ _r89253_)
                    (let* ((_e8925489279_ _hd89250_)
                           (_E8927489283_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8925489279_)))
                           (_E8927089295_
                            (lambda ()
                              (if (gx#stx-pair? _e8925489279_)
                                  (let ((_e8927589287_
                                         (gx#syntax-e _e8925489279_)))
                                    (let ((_hd8927689290_
                                           (##car _e8927589287_))
                                          (_tl8927789292_
                                           (##cdr _e8927589287_)))
                                      (if (and (gx#identifier? _hd8927689290_)
                                               (gx#core-identifier=?
                                                _hd8927689290_
                                                '%#declare))
                                          (if '#t
                                              (_K89251_
                                               _rest89252_
                                               (cons (gx#core-expand-declare%
                                                      _hd89250_)
                                                     _r89253_))
                                              (_E8927489283_))
                                          (_E8927489283_))))
                                  (_E8927489283_))))
                           (_E8926689307_
                            (lambda ()
                              (if (gx#stx-pair? _e8925489279_)
                                  (let ((_e8927189299_
                                         (gx#syntax-e _e8925489279_)))
                                    (let ((_hd8927289302_
                                           (##car _e8927189299_))
                                          (_tl8927389304_
                                           (##cdr _e8927189299_)))
                                      (if (and (gx#identifier? _hd8927289302_)
                                               (gx#core-identifier=?
                                                _hd8927289302_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd89250_)
                                                (_K89251_
                                                 _rest89252_
                                                 _r89253_))
                                              (_E8927089295_))
                                          (_E8927089295_))))
                                  (_E8927089295_))))
                           (_E8925689319_
                            (lambda ()
                              (if (gx#stx-pair? _e8925489279_)
                                  (let ((_e8926789311_
                                         (gx#syntax-e _e8925489279_)))
                                    (let ((_hd8926889314_
                                           (##car _e8926789311_))
                                          (_tl8926989316_
                                           (##cdr _e8926789311_)))
                                      (if (and (gx#identifier? _hd8926889314_)
                                               (gx#core-identifier=?
                                                _hd8926889314_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd89250_)
                                                (_K89251_
                                                 _rest89252_
                                                 _r89253_))
                                              (_E8926689307_))
                                          (_E8926689307_))))
                                  (_E8926689307_))))
                           (_E8925589351_
                            (lambda ()
                              (if (gx#stx-pair? _e8925489279_)
                                  (let ((_e8925789323_
                                         (gx#syntax-e _e8925489279_)))
                                    (let ((_hd8925889326_
                                           (##car _e8925789323_))
                                          (_tl8925989328_
                                           (##cdr _e8925789323_)))
                                      (if (and (gx#identifier? _hd8925889326_)
                                               (gx#core-identifier=?
                                                _hd8925889326_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8925989328_)
                                              (let ((_e8926089331_
                                                     (gx#syntax-e
                                                      _tl8925989328_)))
                                                (let ((_hd8926189334_
                                                       (##car _e8926089331_))
                                                      (_tl8926289336_
                                                       (##cdr _e8926089331_)))
                                                  (let ((_hd-bind89339_
                                                         _hd8926189334_))
                                                    (if (gx#stx-pair?
                                                         _tl8926289336_)
                                                        (let ((_e8926389341_
                                                               (gx#syntax-e
                                                                _tl8926289336_)))
                                                          (let ((_hd8926489344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8926389341_))
                        (_tl8926589346_ (##cdr _e8926389341_)))
                    (let ((_expr89349_ _hd8926489344_))
                      (if (gx#stx-null? _tl8926589346_)
                          (if (gx#core-bind-values? _hd-bind89339_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89339_)
                                (_K89251_
                                 _rest89252_
                                 (cons _hd89250_ _r89253_)))
                              (_E8925689319_))
                          (_E8925689319_)))))
                (_E8925689319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8925689319_))
                                          (_E8925689319_))))
                                  (_E8925689319_)))))
                      (_E8925589351_))))
                 (_wrap-internal89094_
                  (lambda (_rbody89096_)
                    (let _lp89098_ ((_rest89100_ _rbody89096_)
                                    (_decls89101_ '())
                                    (_bind89102_ '())
                                    (_body89103_ '()))
                      (let* ((_e8910489111_ _rest89100_)
                             (_E8910689160_
                              (lambda ()
                                (let* ((_body89155_
                                        (let* ((_body8911489124_ _body89103_)
                                               (_else8911789132_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89103_)
                                                   (gx#stx-source
                                                    _stx89088_)))))
                                          (let ((_K8912289152_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx89088_)))
                                                (_K8911989138_
                                                 (lambda (_expr89136_)
                                                   _expr89136_)))
                                            (let ((_try-match8911689148_
                                                   (lambda ()
                                                     (if (##pair? _body8911489124_)
                                                         (let ((_tl8912189143_
                                                                (##cdr _body8911489124_))
                                                               (_hd8912089141_
                                                                (##car _body8911489124_)))
                                                           (if (##null? _tl8912189143_)
                                                               (let ((_expr89146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8912089141_))
                         (_K8911989138_ _expr89146_))
                       (_else8911789132_)))
                 (_else8911789132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8911489124_)
                                                  (_K8912289152_)
                                                  (_try-match8911689148_))))))
                                       (_body89157_
                                        (if (null? _bind89102_)
                                            _body89155_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind89102_
                                                         (cons _body89155_
                                                               '())))
                                             (gx#stx-source _stx89088_)))))
                                  (if (null? _decls89101_)
                                      _body89157_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls89101_
                                                   (cons _body89157_ '())))
                                       (gx#stx-source _stx89088_))))))
                             (_E8910589246_
                              (lambda ()
                                (if (gx#stx-pair? _e8910489111_)
                                    (let ((_e8910789164_
                                           (gx#syntax-e _e8910489111_)))
                                      (let ((_hd8910889167_
                                             (##car _e8910789164_))
                                            (_tl8910989169_
                                             (##cdr _e8910789164_)))
                                        (let* ((_hd89172_ _hd8910889167_)
                                               (_rest89174_ _tl8910989169_))
                                          (if '#t
                                              (let* ((_e8917589192_ _hd89172_)
                                                     (_E8918789196_
                                                      (lambda ()
                                                        (if (null? _bind89102_)
                                                            (_lp89098_
                                                             _rest89174_
                                                             _decls89101_
                                                             _bind89102_
                                                             (cons _hd89172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body89103_))
                    (_lp89098_
                     _rest89174_
                     _decls89101_
                     (cons (cons '#f (cons _hd89172_ '())) _bind89102_)
                     _body89103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8917789210_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8917589192_)
                                                            (let ((_e8918889200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8917589192_)))
                      (let ((_hd8918989203_ (##car _e8918889200_))
                            (_tl8919089205_ (##cdr _e8918889200_)))
                        (if (and (gx#identifier? _hd8918989203_)
                                 (gx#core-identifier=?
                                  _hd8918989203_
                                  '%#declare))
                            (let ((_xdecls89208_ _tl8919089205_))
                              (if '#t
                                  (_lp89098_
                                   _rest89174_
                                   (gx#stx-foldr
                                    cons
                                    _decls89101_
                                    _xdecls89208_)
                                   _bind89102_
                                   _body89103_)
                                  (_E8918789196_)))
                            (_E8918789196_))))
                    (_E8918789196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8917689242_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8917589192_)
                                                            (let ((_e8917889214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8917589192_)))
                      (let ((_hd8917989217_ (##car _e8917889214_))
                            (_tl8918089219_ (##cdr _e8917889214_)))
                        (if (and (gx#identifier? _hd8917989217_)
                                 (gx#core-identifier=?
                                  _hd8917989217_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8918089219_)
                                (let ((_e8918189222_
                                       (gx#syntax-e _tl8918089219_)))
                                  (let ((_hd8918289225_ (##car _e8918189222_))
                                        (_tl8918389227_ (##cdr _e8918189222_)))
                                    (let ((_hd-bind89230_ _hd8918289225_))
                                      (if (gx#stx-pair? _tl8918389227_)
                                          (let ((_e8918489232_
                                                 (gx#syntax-e _tl8918389227_)))
                                            (let ((_hd8918589235_
                                                   (##car _e8918489232_))
                                                  (_tl8918689237_
                                                   (##cdr _e8918489232_)))
                                              (let ((_expr89240_
                                                     _hd8918589235_))
                                                (if (gx#stx-null?
                                                     _tl8918689237_)
                                                    (if '#t
                                                        (_lp89098_
                                                         _rest89174_
                                                         _decls89101_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind89230_)
                             (cons (gx#core-expand-expression _expr89240_)
                                   '()))
                       _bind89102_)
                 _body89103_)
                (_E8917789210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8917789210_)))))
                                          (_E8917789210_)))))
                                (_E8917789210_))
                            (_E8917789210_))))
                    (_E8917789210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8917689242_))
                                              (_E8910689160_)))))
                                    (_E8910689160_)))))
                        (_E8910589246_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body89089_)
            (gx#stx-source _stx89088_))
           _expand-special89091_))))
    (define gx#core-expand-declare%
      (lambda (_stx89026_)
        (let* ((_e8902789034_ _stx89026_)
               (_E8902989038_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8902789034_)))
               (_E8902889084_
                (lambda ()
                  (if (gx#stx-pair? _e8902789034_)
                      (let ((_e8903089042_ (gx#syntax-e _e8902789034_)))
                        (let ((_hd8903189045_ (##car _e8903089042_))
                              (_tl8903289047_ (##cdr _e8903089042_)))
                          (let ((_body89050_ _tl8903289047_))
                            (if (gx#stx-list? _body89050_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89052_)
                                     (let* ((_e8905389060_ _decl89052_)
                                            (_E8905589064_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8905389060_)))
                                            (_E8905489080_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8905389060_)
                                                   (let ((_e8905689068_
                                                          (gx#syntax-e
                                                           _e8905389060_)))
                                                     (let ((_hd8905789071_
                                                            (##car _e8905689068_))
                                                           (_tl8905889073_
                                                            (##cdr _e8905689068_)))
                                                       (let* ((_head89076_
                                                               _hd8905789071_)
                                                              (_args89078_
                                                               _tl8905889073_))
                                                         (if (gx#stx-list?
                                                              _args89078_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89052_)
                                                             (_E8905589064_)))))
                                                   (_E8905589064_)))))
                                       (_E8905489080_)))
                                   _body89050_))
                                 (gx#stx-source _stx89026_))
                                (_E8902989038_)))))
                      (_E8902989038_)))))
          (_E8902889084_))))
    (define gx#core-expand-extern%
      (lambda (_stx88930_)
        (let* ((_e8893188938_ _stx88930_)
               (_E8893388942_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8893188938_)))
               (_E8893289022_
                (lambda ()
                  (if (gx#stx-pair? _e8893188938_)
                      (let ((_e8893488946_ (gx#syntax-e _e8893188938_)))
                        (let ((_hd8893588949_ (##car _e8893488946_))
                              (_tl8893688951_ (##cdr _e8893488946_)))
                          (let ((_body88954_ _tl8893688951_))
                            (if '#t
                                (let _lp88956_ ((_rest88958_ _body88954_)
                                                (_r88959_ '()))
                                  (let* ((_e8896088974_ _rest88958_)
                                         (_E8897288978_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88930_)))
                                         (_E8896288982_
                                          (lambda ()
                                            (if (gx#stx-null? _e8896088974_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88959_))
                                                     (gx#stx-source
                                                      _stx88930_))
                                                    (_E8897288978_))
                                                (_E8897288978_))))
                                         (_E8896189018_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8896088974_)
                                                (let ((_e8896388986_
                                                       (gx#syntax-e
                                                        _e8896088974_)))
                                                  (let ((_hd8896488989_
                                                         (##car _e8896388986_))
                                                        (_tl8896588991_
                                                         (##cdr _e8896388986_)))
                                                    (if (gx#stx-pair?
                                                         _hd8896488989_)
                                                        (let ((_e8896688994_
                                                               (gx#syntax-e
                                                                _hd8896488989_)))
                                                          (let ((_hd8896788997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8896688994_))
                        (_tl8896888999_ (##cdr _e8896688994_)))
                    (let ((_id89002_ _hd8896788997_))
                      (if (gx#stx-pair? _tl8896888999_)
                          (let ((_e8896989004_ (gx#syntax-e _tl8896888999_)))
                            (let ((_hd8897089007_ (##car _e8896989004_))
                                  (_tl8897189009_ (##cdr _e8896989004_)))
                              (let ((_eid89012_ _hd8897089007_))
                                (if (gx#stx-null? _tl8897189009_)
                                    (let ((_rest89014_ _tl8896588991_))
                                      (if (and (gx#identifier? _id89002_)
                                               (gx#identifier? _eid89012_))
                                          (let ((_eid89016_
                                                 (gx#stx-e _eid89012_)))
                                            (gx#core-bind-extern!__0
                                             _id89002_
                                             _eid89016_)
                                            (_lp88956_
                                             _rest89014_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89002_)
                                                         (cons _eid89016_ '()))
                                                   _r88959_)))
                                          (_E8896288982_)))
                                    (_E8896288982_)))))
                          (_E8896288982_)))))
                (_E8896288982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8896288982_)))))
                                    (_E8896189018_)))
                                (_E8893388942_)))))
                      (_E8893388942_)))))
          (_E8893289022_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88876_)
        (let* ((_e8887788890_ _stx88876_)
               (_E8887988894_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8887788890_)))
               (_E8887888926_
                (lambda ()
                  (if (gx#stx-pair? _e8887788890_)
                      (let ((_e8888088898_ (gx#syntax-e _e8887788890_)))
                        (let ((_hd8888188901_ (##car _e8888088898_))
                              (_tl8888288903_ (##cdr _e8888088898_)))
                          (if (gx#stx-pair? _tl8888288903_)
                              (let ((_e8888388906_
                                     (gx#syntax-e _tl8888288903_)))
                                (let ((_hd8888488909_ (##car _e8888388906_))
                                      (_tl8888588911_ (##cdr _e8888388906_)))
                                  (let ((_hd88914_ _hd8888488909_))
                                    (if (gx#stx-pair? _tl8888588911_)
                                        (let ((_e8888688916_
                                               (gx#syntax-e _tl8888588911_)))
                                          (let ((_hd8888788919_
                                                 (##car _e8888688916_))
                                                (_tl8888888921_
                                                 (##cdr _e8888688916_)))
                                            (let ((_expr88924_ _hd8888788919_))
                                              (if (gx#stx-null? _tl8888888921_)
                                                  (if (gx#core-bind-values?
                                                       _hd88914_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88914_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88914_)
                             (cons (gx#core-expand-expression _expr88924_)
                                   '())))
                 (gx#stx-source _stx88876_)))
              (_E8887988894_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8887988894_)))))
                                        (_E8887988894_)))))
                              (_E8887988894_))))
                      (_E8887988894_)))))
          (_E8887888926_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88820_)
        (let* ((_e8882188834_ _stx88820_)
               (_E8882388838_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8882188834_)))
               (_E8882288872_
                (lambda ()
                  (if (gx#stx-pair? _e8882188834_)
                      (let ((_e8882488842_ (gx#syntax-e _e8882188834_)))
                        (let ((_hd8882588845_ (##car _e8882488842_))
                              (_tl8882688847_ (##cdr _e8882488842_)))
                          (if (gx#stx-pair? _tl8882688847_)
                              (let ((_e8882788850_
                                     (gx#syntax-e _tl8882688847_)))
                                (let ((_hd8882888853_ (##car _e8882788850_))
                                      (_tl8882988855_ (##cdr _e8882788850_)))
                                  (let ((_id88858_ _hd8882888853_))
                                    (if (gx#stx-pair? _tl8882988855_)
                                        (let ((_e8883088860_
                                               (gx#syntax-e _tl8882988855_)))
                                          (let ((_hd8883188863_
                                                 (##car _e8883088860_))
                                                (_tl8883288865_
                                                 (##cdr _e8883088860_)))
                                            (let ((_binding-id88868_
                                                   _hd8883188863_))
                                              (if (gx#stx-null? _tl8883288865_)
                                                  (if (and (gx#identifier?
                                                            _id88858_)
                                                           (gx#identifier?
                                                            _binding-id88868_))
                                                      (let ((_eid88870_
                                                             (gx#stx-e
                                                              _binding-id88868_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88858_
                                                         _eid88870_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88858_)
                             (cons _eid88870_ '())))))
              (_E8882388838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8882388838_)))))
                                        (_E8882388838_)))))
                              (_E8882388838_))))
                      (_E8882388838_)))))
          (_E8882288872_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88763_)
        (let* ((_e8876488777_ _stx88763_)
               (_E8876688781_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876488777_)))
               (_E8876588816_
                (lambda ()
                  (if (gx#stx-pair? _e8876488777_)
                      (let ((_e8876788785_ (gx#syntax-e _e8876488777_)))
                        (let ((_hd8876888788_ (##car _e8876788785_))
                              (_tl8876988790_ (##cdr _e8876788785_)))
                          (if (gx#stx-pair? _tl8876988790_)
                              (let ((_e8877088793_
                                     (gx#syntax-e _tl8876988790_)))
                                (let ((_hd8877188796_ (##car _e8877088793_))
                                      (_tl8877288798_ (##cdr _e8877088793_)))
                                  (let ((_id88801_ _hd8877188796_))
                                    (if (gx#stx-pair? _tl8877288798_)
                                        (let ((_e8877388803_
                                               (gx#syntax-e _tl8877288798_)))
                                          (let ((_hd8877488806_
                                                 (##car _e8877388803_))
                                                (_tl8877588808_
                                                 (##cdr _e8877388803_)))
                                            (let ((_expr88811_ _hd8877488806_))
                                              (if (gx#stx-null? _tl8877588808_)
                                                  (if (gx#identifier?
                                                       _id88801_)
                                                      (let ((_g89722_
                                                             (gx#core-expand-expression+1
                                                              _expr88811_)))
                                                        (begin
                                                          (let ((_g89723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89722_)
                             (##vector-length _g89722_)
                             1)))
                    (if (not (##fx= _g89723_ 2))
                        (error "Context expects 2 values" _g89723_)))
                  (let ((_e-stx88813_ (##vector-ref _g89722_ 0))
                        (_e88814_ (##vector-ref _g89722_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88801_ _e88814_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88801_)
                                   (cons _e-stx88813_ '())))
                       (gx#stx-source _stx88763_))))))
              (_E8876688781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8876688781_)))))
                                        (_E8876688781_)))))
                              (_E8876688781_))))
                      (_E8876688781_)))))
          (_E8876588816_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88707_)
        (let* ((_e8870888721_ _stx88707_)
               (_E8871088725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8870888721_)))
               (_E8870988759_
                (lambda ()
                  (if (gx#stx-pair? _e8870888721_)
                      (let ((_e8871188729_ (gx#syntax-e _e8870888721_)))
                        (let ((_hd8871288732_ (##car _e8871188729_))
                              (_tl8871388734_ (##cdr _e8871188729_)))
                          (if (gx#stx-pair? _tl8871388734_)
                              (let ((_e8871488737_
                                     (gx#syntax-e _tl8871388734_)))
                                (let ((_hd8871588740_ (##car _e8871488737_))
                                      (_tl8871688742_ (##cdr _e8871488737_)))
                                  (let ((_id88745_ _hd8871588740_))
                                    (if (gx#stx-pair? _tl8871688742_)
                                        (let ((_e8871788747_
                                               (gx#syntax-e _tl8871688742_)))
                                          (let ((_hd8871888750_
                                                 (##car _e8871788747_))
                                                (_tl8871988752_
                                                 (##cdr _e8871788747_)))
                                            (let ((_alias-id88755_
                                                   _hd8871888750_))
                                              (if (gx#stx-null? _tl8871988752_)
                                                  (if (and (gx#identifier?
                                                            _id88745_)
                                                           (gx#identifier?
                                                            _alias-id88755_))
                                                      (let ((_alias-id88757_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88755_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88745_
                                                         _alias-id88757_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88745_)
                             (cons _alias-id88757_ '())))))
              (_E8871088725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8871088725_)))))
                                        (_E8871088725_)))))
                              (_E8871088725_))))
                      (_E8871088725_)))))
          (_E8870988759_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88650_ _wrap?88651_)
        (let* ((_e8865288662_ _stx88650_)
               (_E8865488666_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8865288662_)))
               (_E8865388693_
                (lambda ()
                  (if (gx#stx-pair? _e8865288662_)
                      (let ((_e8865588670_ (gx#syntax-e _e8865288662_)))
                        (let ((_hd8865688673_ (##car _e8865588670_))
                              (_tl8865788675_ (##cdr _e8865588670_)))
                          (if (gx#stx-pair? _tl8865788675_)
                              (let ((_e8865888678_
                                     (gx#syntax-e _tl8865788675_)))
                                (let ((_hd8865988681_ (##car _e8865888678_))
                                      (_tl8866088683_ (##cdr _e8865888678_)))
                                  (let* ((_hd88686_ _hd8865988681_)
                                         (_body88688_ _tl8866088683_))
                                    (if (gx#core-bind-values? _hd88686_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88686_)
                                           (let ((_body88691_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88686_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88650_
                                                               _body88688_)
                                                              '()))))
                                             (if _wrap?88651_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88691_)
                                                  (gx#stx-source _stx88650_))
                                                 _body88691_)))
                                         gx#current-expander-context
                                         (let ((__obj89715
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89715)
                                           __obj89715))
                                        (_E8865488666_)))))
                              (_E8865488666_))))
                      (_E8865488666_)))))
          (_E8865388693_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88700_)
        (let ((_wrap?88702_ '#t))
          (gx#core-expand-lambda%__% _stx88700_ _wrap?88702_))))
    (define gx#core-expand-lambda%
      (lambda _g89725_
        (let ((_g89724_ (##length _g89725_)))
          (cond ((##fx= _g89724_ 1)
                 (apply (lambda (_stx88700_)
                          (gx#core-expand-lambda%__0 _stx88700_))
                        _g89725_))
                ((##fx= _g89724_ 2)
                 (apply (lambda (_stx88704_ _wrap?88705_)
                          (gx#core-expand-lambda%__% _stx88704_ _wrap?88705_))
                        _g89725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89725_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88614_)
        (let* ((_e8861588622_ _stx88614_)
               (_E8861788626_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8861588622_)))
               (_E8861688645_
                (lambda ()
                  (if (gx#stx-pair? _e8861588622_)
                      (let ((_e8861888630_ (gx#syntax-e _e8861588622_)))
                        (let ((_hd8861988633_ (##car _e8861888630_))
                              (_tl8862088635_ (##cdr _e8861888630_)))
                          (let ((_clauses88638_ _tl8862088635_))
                            (if (gx#stx-list? _clauses88638_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88640_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88640_)
                                       (let ((_$e88642_
                                              (gx#stx-source _clause88640_)))
                                         (if _$e88642_
                                             _$e88642_
                                             (gx#stx-source _stx88614_))))
                                      '#f))
                                   _clauses88638_))
                                 (gx#stx-source _stx88614_))
                                (_E8861788626_)))))
                      (_E8861788626_)))))
          (_E8861688645_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88568_)
        (let* ((_e8856988579_ _stx88568_)
               (_E8857188583_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8856988579_)))
               (_E8857088610_
                (lambda ()
                  (if (gx#stx-pair? _e8856988579_)
                      (let ((_e8857288587_ (gx#syntax-e _e8856988579_)))
                        (let ((_hd8857388590_ (##car _e8857288587_))
                              (_tl8857488592_ (##cdr _e8857288587_)))
                          (if (gx#stx-pair? _tl8857488592_)
                              (let ((_e8857588595_
                                     (gx#syntax-e _tl8857488592_)))
                                (let ((_hd8857688598_ (##car _e8857588595_))
                                      (_tl8857788600_ (##cdr _e8857588595_)))
                                  (let* ((_hd88603_ _hd8857688598_)
                                         (_body88605_ _tl8857788600_))
                                    (if (gx#core-expand-let-bind? _hd88603_)
                                        (let ((_expressions88607_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88603_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88603_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88603_
                                                           _expressions88607_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88568_
                         _body88605_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88568_)))
                                           gx#current-expander-context
                                           (let ((__obj89716
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89716)
                                             __obj89716)))
                                        (_E8857188583_)))))
                              (_E8857188583_))))
                      (_E8857188583_)))))
          (_E8857088610_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88513_ _form88514_)
        (let* ((_e8851588525_ _stx88513_)
               (_E8851788529_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8851588525_)))
               (_E8851688554_
                (lambda ()
                  (if (gx#stx-pair? _e8851588525_)
                      (let ((_e8851888533_ (gx#syntax-e _e8851588525_)))
                        (let ((_hd8851988536_ (##car _e8851888533_))
                              (_tl8852088538_ (##cdr _e8851888533_)))
                          (if (gx#stx-pair? _tl8852088538_)
                              (let ((_e8852188541_
                                     (gx#syntax-e _tl8852088538_)))
                                (let ((_hd8852288544_ (##car _e8852188541_))
                                      (_tl8852388546_ (##cdr _e8852188541_)))
                                  (let* ((_hd88549_ _hd8852288544_)
                                         (_body88551_ _tl8852388546_))
                                    (if (gx#core-expand-let-bind? _hd88549_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88549_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88514_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88549_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88549_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88513_
                                                               _body88551_)
                                                              '())))
                                            (gx#stx-source _stx88513_)))
                                         gx#current-expander-context
                                         (let ((__obj89717
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89717)
                                           __obj89717))
                                        (_E8851788529_)))))
                              (_E8851788529_))))
                      (_E8851788529_)))))
          (_E8851688554_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88561_)
        (let ((_form88563_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88561_ _form88563_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89727_
        (let ((_g89726_ (##length _g89727_)))
          (cond ((##fx= _g89726_ 1)
                 (apply (lambda (_stx88561_)
                          (gx#core-expand-letrec-values%__0 _stx88561_))
                        _g89727_))
                ((##fx= _g89726_ 2)
                 (apply (lambda (_stx88565_ _form88566_)
                          (gx#core-expand-letrec-values%__%
                           _stx88565_
                           _form88566_))
                        _g89727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89727_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88510_)
        (gx#core-expand-letrec-values%__% _stx88510_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88467_)
        (if (gx#stx-list? _stx88467_)
            (gx#stx-andmap
             (lambda (_bind88469_)
               (let* ((_e8847088480_ _bind88469_)
                      (_E8847288484_ (lambda () '#f))
                      (_E8847188506_
                       (lambda ()
                         (if (gx#stx-pair? _e8847088480_)
                             (let ((_e8847388488_ (gx#syntax-e _e8847088480_)))
                               (let ((_hd8847488491_ (##car _e8847388488_))
                                     (_tl8847588493_ (##cdr _e8847388488_)))
                                 (let ((_hd88496_ _hd8847488491_))
                                   (if (gx#stx-pair? _tl8847588493_)
                                       (let ((_e8847688498_
                                              (gx#syntax-e _tl8847588493_)))
                                         (let ((_hd8847788501_
                                                (##car _e8847688498_))
                                               (_tl8847888503_
                                                (##cdr _e8847688498_)))
                                           (if (gx#stx-null? _tl8847888503_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88496_)
                                                   (_E8847288484_))
                                               (_E8847288484_))))
                                       (_E8847288484_)))))
                             (_E8847288484_)))))
                 (_E8847188506_)))
             _stx88467_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88426_)
        (let* ((_e8842788437_ _bind88426_)
               (_E8842988441_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8842788437_)))
               (_E8842888463_
                (lambda ()
                  (if (gx#stx-pair? _e8842788437_)
                      (let ((_e8843088445_ (gx#syntax-e _e8842788437_)))
                        (let ((_hd8843188448_ (##car _e8843088445_))
                              (_tl8843288450_ (##cdr _e8843088445_)))
                          (if (gx#stx-pair? _tl8843288450_)
                              (let ((_e8843388453_
                                     (gx#syntax-e _tl8843288450_)))
                                (let ((_hd8843488456_ (##car _e8843388453_))
                                      (_tl8843588458_ (##cdr _e8843388453_)))
                                  (let ((_expr88461_ _hd8843488456_))
                                    (if (gx#stx-null? _tl8843588458_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88461_)
                                            (_E8842988441_))
                                        (_E8842988441_)))))
                              (_E8842988441_))))
                      (_E8842988441_)))))
          (_E8842888463_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind88385_)
        (let* ((_e8838688396_ _bind88385_)
               (_E8838888400_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8838688396_)))
               (_E8838788422_
                (lambda ()
                  (if (gx#stx-pair? _e8838688396_)
                      (let ((_e8838988404_ (gx#syntax-e _e8838688396_)))
                        (let ((_hd8839088407_ (##car _e8838988404_))
                              (_tl8839188409_ (##cdr _e8838988404_)))
                          (let ((_hd88412_ _hd8839088407_))
                            (if (gx#stx-pair? _tl8839188409_)
                                (let ((_e8839288414_
                                       (gx#syntax-e _tl8839188409_)))
                                  (let ((_hd8839388417_ (##car _e8839288414_))
                                        (_tl8839488419_ (##cdr _e8839288414_)))
                                    (if (gx#stx-null? _tl8839488419_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd88412_)
                                            (_E8838888400_))
                                        (_E8838888400_))))
                                (_E8838888400_)))))
                      (_E8838888400_)))))
          (_E8838788422_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind88343_ _expr88344_)
        (let* ((_e8834588355_ _bind88343_)
               (_E8834788359_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8834588355_)))
               (_E8834688381_
                (lambda ()
                  (if (gx#stx-pair? _e8834588355_)
                      (let ((_e8834888363_ (gx#syntax-e _e8834588355_)))
                        (let ((_hd8834988366_ (##car _e8834888363_))
                              (_tl8835088368_ (##cdr _e8834888363_)))
                          (let ((_hd88371_ _hd8834988366_))
                            (if (gx#stx-pair? _tl8835088368_)
                                (let ((_e8835188373_
                                       (gx#syntax-e _tl8835088368_)))
                                  (let ((_hd8835288376_ (##car _e8835188373_))
                                        (_tl8835388378_ (##cdr _e8835188373_)))
                                    (if (gx#stx-null? _tl8835388378_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd88371_)
                                                  (cons _expr88344_ '()))
                                            (_E8834788359_))
                                        (_E8834788359_))))
                                (_E8834788359_)))))
                      (_E8834788359_)))))
          (_E8834688381_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx88297_)
        (let* ((_e8829888308_ _stx88297_)
               (_E8830088312_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8829888308_)))
               (_E8829988339_
                (lambda ()
                  (if (gx#stx-pair? _e8829888308_)
                      (let ((_e8830188316_ (gx#syntax-e _e8829888308_)))
                        (let ((_hd8830288319_ (##car _e8830188316_))
                              (_tl8830388321_ (##cdr _e8830188316_)))
                          (if (gx#stx-pair? _tl8830388321_)
                              (let ((_e8830488324_
                                     (gx#syntax-e _tl8830388321_)))
                                (let ((_hd8830588327_ (##car _e8830488324_))
                                      (_tl8830688329_ (##cdr _e8830488324_)))
                                  (let* ((_hd88332_ _hd8830588327_)
                                         (_body88334_ _tl8830688329_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88332_)
                                        (let ((_expanders88336_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd88332_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd88332_
                                              _expanders88336_)
                                             (gx#core-expand-local-block
                                              _stx88297_
                                              _body88334_))
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
                                             __obj89718)))
                                        (_E8830088312_)))))
                              (_E8830088312_))))
                      (_E8830088312_)))))
          (_E8829988339_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx88246_)
        (let* ((_e8824788257_ _stx88246_)
               (_E8824988261_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8824788257_)))
               (_E8824888293_
                (lambda ()
                  (if (gx#stx-pair? _e8824788257_)
                      (let ((_e8825088265_ (gx#syntax-e _e8824788257_)))
                        (let ((_hd8825188268_ (##car _e8825088265_))
                              (_tl8825288270_ (##cdr _e8825088265_)))
                          (if (gx#stx-pair? _tl8825288270_)
                              (let ((_e8825388273_
                                     (gx#syntax-e _tl8825288270_)))
                                (let ((_hd8825488276_ (##car _e8825388273_))
                                      (_tl8825588278_ (##cdr _e8825388273_)))
                                  (let* ((_hd88281_ _hd8825488276_)
                                         (_body88283_ _tl8825588278_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88281_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd88281_
                                            (make-list__%
                                             (gx#stx-length _hd88281_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8828588288_
                                                     _g8828688290_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8828588288_
                                               _g8828688290_
                                               '#t))
                                            _hd88281_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd88281_))
                                           (gx#core-expand-local-block
                                            _stx88246_
                                            _body88283_))
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
                                           __obj89719))
                                        (_E8824988261_)))))
                              (_E8824988261_))))
                      (_E8824988261_)))))
          (_E8824888293_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx88203_)
        (if (gx#stx-list? _stx88203_)
            (gx#stx-andmap
             (lambda (_bind88205_)
               (let* ((_e8820688216_ _bind88205_)
                      (_E8820888220_ (lambda () '#f))
                      (_E8820788242_
                       (lambda ()
                         (if (gx#stx-pair? _e8820688216_)
                             (let ((_e8820988224_ (gx#syntax-e _e8820688216_)))
                               (let ((_hd8821088227_ (##car _e8820988224_))
                                     (_tl8821188229_ (##cdr _e8820988224_)))
                                 (let ((_hd88232_ _hd8821088227_))
                                   (if (gx#stx-pair? _tl8821188229_)
                                       (let ((_e8821288234_
                                              (gx#syntax-e _tl8821188229_)))
                                         (let ((_hd8821388237_
                                                (##car _e8821288234_))
                                               (_tl8821488239_
                                                (##cdr _e8821288234_)))
                                           (if (gx#stx-null? _tl8821488239_)
                                               (if '#t
                                                   (gx#identifier? _hd88232_)
                                                   (_E8820888220_))
                                               (_E8820888220_))))
                                       (_E8820888220_)))))
                             (_E8820888220_)))))
                 (_E8820788242_)))
             _stx88203_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind88160_)
        (let* ((_e8816188171_ _bind88160_)
               (_E8816388175_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8816188171_)))
               (_E8816288199_
                (lambda ()
                  (if (gx#stx-pair? _e8816188171_)
                      (let ((_e8816488179_ (gx#syntax-e _e8816188171_)))
                        (let ((_hd8816588182_ (##car _e8816488179_))
                              (_tl8816688184_ (##cdr _e8816488179_)))
                          (if (gx#stx-pair? _tl8816688184_)
                              (let ((_e8816788187_
                                     (gx#syntax-e _tl8816688184_)))
                                (let ((_hd8816888190_ (##car _e8816788187_))
                                      (_tl8816988192_ (##cdr _e8816788187_)))
                                  (let ((_expr88195_ _hd8816888190_))
                                    (if (gx#stx-null? _tl8816988192_)
                                        (if '#t
                                            (let ((_g89728_
                                                   (gx#core-expand-expression+1
                                                    _expr88195_)))
                                              (begin
                                                (let ((_g89729_
                                                       (if (##values? _g89728_)
                                                           (##vector-length
                                                            _g89728_)
                                                           1)))
                                                  (if (not (##fx= _g89729_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89729_)))
                                                (let ((_e88197_
                                                       (##vector-ref
                                                        _g89728_
                                                        1)))
                                                  _e88197_)))
                                            (_E8816388175_))
                                        (_E8816388175_)))))
                              (_E8816388175_))))
                      (_E8816388175_)))))
          (_E8816288199_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind88105_ _e88106_ _rebind?88107_)
        (let* ((_e8810888118_ _bind88105_)
               (_E8811088122_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8810888118_)))
               (_E8810988144_
                (lambda ()
                  (if (gx#stx-pair? _e8810888118_)
                      (let ((_e8811188126_ (gx#syntax-e _e8810888118_)))
                        (let ((_hd8811288129_ (##car _e8811188126_))
                              (_tl8811388131_ (##cdr _e8811188126_)))
                          (let ((_id88134_ _hd8811288129_))
                            (if (gx#stx-pair? _tl8811388131_)
                                (let ((_e8811488136_
                                       (gx#syntax-e _tl8811388131_)))
                                  (let ((_hd8811588139_ (##car _e8811488136_))
                                        (_tl8811688141_ (##cdr _e8811488136_)))
                                    (if (gx#stx-null? _tl8811688141_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id88134_
                                             _e88106_
                                             _rebind?88107_)
                                            (_E8811088122_))
                                        (_E8811088122_))))
                                (_E8811088122_)))))
                      (_E8811088122_)))))
          (_E8810988144_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind88151_ _e88152_)
        (let ((_rebind?88154_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind88151_
           _e88152_
           _rebind?88154_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89731_
        (let ((_g89730_ (##length _g89731_)))
          (cond ((##fx= _g89730_ 2)
                 (apply (lambda (_bind88151_ _e88152_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind88151_
                           _e88152_))
                        _g89731_))
                ((##fx= _g89730_ 3)
                 (apply (lambda (_bind88156_ _e88157_ _rebind?88158_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind88156_
                           _e88157_
                           _rebind?88158_))
                        _g89731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89731_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88063_)
        (let* ((_e8806488074_ _stx88063_)
               (_E8806688078_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8806488074_)))
               (_E8806588100_
                (lambda ()
                  (if (gx#stx-pair? _e8806488074_)
                      (let ((_e8806788082_ (gx#syntax-e _e8806488074_)))
                        (let ((_hd8806888085_ (##car _e8806788082_))
                              (_tl8806988087_ (##cdr _e8806788082_)))
                          (if (gx#stx-pair? _tl8806988087_)
                              (let ((_e8807088090_
                                     (gx#syntax-e _tl8806988087_)))
                                (let ((_hd8807188093_ (##car _e8807088090_))
                                      (_tl8807288095_ (##cdr _e8807088090_)))
                                  (let ((_expr88098_ _hd8807188093_))
                                    (if (gx#stx-null? _tl8807288095_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88098_)
                                            (_E8806688078_))
                                        (_E8806688078_)))))
                              (_E8806688078_))))
                      (_E8806688078_)))))
          (_E8806588100_))))
    (define gx#core-expand-quote%
      (lambda (_stx88022_)
        (let* ((_e8802388033_ _stx88022_)
               (_E8802588037_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8802388033_)))
               (_E8802488059_
                (lambda ()
                  (if (gx#stx-pair? _e8802388033_)
                      (let ((_e8802688041_ (gx#syntax-e _e8802388033_)))
                        (let ((_hd8802788044_ (##car _e8802688041_))
                              (_tl8802888046_ (##cdr _e8802688041_)))
                          (if (gx#stx-pair? _tl8802888046_)
                              (let ((_e8802988049_
                                     (gx#syntax-e _tl8802888046_)))
                                (let ((_hd8803088052_ (##car _e8802988049_))
                                      (_tl8803188054_ (##cdr _e8802988049_)))
                                  (let ((_e88057_ _hd8803088052_))
                                    (if (gx#stx-null? _tl8803188054_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88057_)
                                                         '()))
                                             (gx#stx-source _stx88022_))
                                            (_E8802588037_))
                                        (_E8802588037_)))))
                              (_E8802588037_))))
                      (_E8802588037_)))))
          (_E8802488059_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87981_)
        (let* ((_e8798287992_ _stx87981_)
               (_E8798487996_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8798287992_)))
               (_E8798388018_
                (lambda ()
                  (if (gx#stx-pair? _e8798287992_)
                      (let ((_e8798588000_ (gx#syntax-e _e8798287992_)))
                        (let ((_hd8798688003_ (##car _e8798588000_))
                              (_tl8798788005_ (##cdr _e8798588000_)))
                          (if (gx#stx-pair? _tl8798788005_)
                              (let ((_e8798888008_
                                     (gx#syntax-e _tl8798788005_)))
                                (let ((_hd8798988011_ (##car _e8798888008_))
                                      (_tl8799088013_ (##cdr _e8798888008_)))
                                  (let ((_e88016_ _hd8798988011_))
                                    (if (gx#stx-null? _tl8799088013_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88016_)
                                                         '()))
                                             (gx#stx-source _stx87981_))
                                            (_E8798487996_))
                                        (_E8798487996_)))))
                              (_E8798487996_))))
                      (_E8798487996_)))))
          (_E8798388018_))))
    (define gx#core-expand-call%
      (lambda (_stx87938_)
        (let* ((_e8793987949_ _stx87938_)
               (_E8794187953_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8793987949_)))
               (_E8794087977_
                (lambda ()
                  (if (gx#stx-pair? _e8793987949_)
                      (let ((_e8794287957_ (gx#syntax-e _e8793987949_)))
                        (let ((_hd8794387960_ (##car _e8794287957_))
                              (_tl8794487962_ (##cdr _e8794287957_)))
                          (if (gx#stx-pair? _tl8794487962_)
                              (let ((_e8794587965_
                                     (gx#syntax-e _tl8794487962_)))
                                (let ((_hd8794687968_ (##car _e8794587965_))
                                      (_tl8794787970_ (##cdr _e8794587965_)))
                                  (let* ((_rator87973_ _hd8794687968_)
                                         (_args87975_ _tl8794787970_))
                                    (if (gx#stx-list? _args87975_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87973_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87975_))
                                         (gx#stx-source _stx87938_))
                                        (_E8794187953_)))))
                              (_E8794187953_))))
                      (_E8794187953_)))))
          (_E8794087977_))))
    (define gx#core-expand-if%
      (lambda (_stx87871_)
        (let* ((_e8787287888_ _stx87871_)
               (_E8787487892_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8787287888_)))
               (_E8787387934_
                (lambda ()
                  (if (gx#stx-pair? _e8787287888_)
                      (let ((_e8787587896_ (gx#syntax-e _e8787287888_)))
                        (let ((_hd8787687899_ (##car _e8787587896_))
                              (_tl8787787901_ (##cdr _e8787587896_)))
                          (if (gx#stx-pair? _tl8787787901_)
                              (let ((_e8787887904_
                                     (gx#syntax-e _tl8787787901_)))
                                (let ((_hd8787987907_ (##car _e8787887904_))
                                      (_tl8788087909_ (##cdr _e8787887904_)))
                                  (let ((_test87912_ _hd8787987907_))
                                    (if (gx#stx-pair? _tl8788087909_)
                                        (let ((_e8788187914_
                                               (gx#syntax-e _tl8788087909_)))
                                          (let ((_hd8788287917_
                                                 (##car _e8788187914_))
                                                (_tl8788387919_
                                                 (##cdr _e8788187914_)))
                                            (let ((_K87922_ _hd8788287917_))
                                              (if (gx#stx-pair? _tl8788387919_)
                                                  (let ((_e8788487924_
                                                         (gx#syntax-e
                                                          _tl8788387919_)))
                                                    (let ((_hd8788587927_
                                                           (##car _e8788487924_))
                                                          (_tl8788687929_
                                                           (##cdr _e8788487924_)))
                                                      (let ((_E87932_
                                                             _hd8788587927_))
                                                        (if (gx#stx-null?
                                                             _tl8788687929_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87912_)
                                     (cons (gx#core-expand-expression _K87922_)
                                           (cons (gx#core-expand-expression
                                                  _E87932_)
                                                 '()))))
                         (gx#stx-source _stx87871_))
                        (_E8787487892_))
                    (_E8787487892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8787487892_)))))
                                        (_E8787487892_)))))
                              (_E8787487892_))))
                      (_E8787487892_)))))
          (_E8787387934_))))
    (define gx#core-expand-ref%
      (lambda (_stx87830_)
        (let* ((_e8783187841_ _stx87830_)
               (_E8783387845_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8783187841_)))
               (_E8783287867_
                (lambda ()
                  (if (gx#stx-pair? _e8783187841_)
                      (let ((_e8783487849_ (gx#syntax-e _e8783187841_)))
                        (let ((_hd8783587852_ (##car _e8783487849_))
                              (_tl8783687854_ (##cdr _e8783487849_)))
                          (if (gx#stx-pair? _tl8783687854_)
                              (let ((_e8783787857_
                                     (gx#syntax-e _tl8783687854_)))
                                (let ((_hd8783887860_ (##car _e8783787857_))
                                      (_tl8783987862_ (##cdr _e8783787857_)))
                                  (let ((_id87865_ _hd8783887860_))
                                    (if (gx#stx-null? _tl8783987862_)
                                        (if (gx#identifier? _id87865_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87865_
                                                          _stx87830_)
                                                         '()))
                                             (gx#stx-source _stx87830_))
                                            (_E8783387845_))
                                        (_E8783387845_)))))
                              (_E8783387845_))))
                      (_E8783387845_)))))
          (_E8783287867_))))
    (define gx#core-expand-setq%
      (lambda (_stx87776_)
        (let* ((_e8777787790_ _stx87776_)
               (_E8777987794_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8777787790_)))
               (_E8777887826_
                (lambda ()
                  (if (gx#stx-pair? _e8777787790_)
                      (let ((_e8778087798_ (gx#syntax-e _e8777787790_)))
                        (let ((_hd8778187801_ (##car _e8778087798_))
                              (_tl8778287803_ (##cdr _e8778087798_)))
                          (if (gx#stx-pair? _tl8778287803_)
                              (let ((_e8778387806_
                                     (gx#syntax-e _tl8778287803_)))
                                (let ((_hd8778487809_ (##car _e8778387806_))
                                      (_tl8778587811_ (##cdr _e8778387806_)))
                                  (let ((_id87814_ _hd8778487809_))
                                    (if (gx#stx-pair? _tl8778587811_)
                                        (let ((_e8778687816_
                                               (gx#syntax-e _tl8778587811_)))
                                          (let ((_hd8778787819_
                                                 (##car _e8778687816_))
                                                (_tl8778887821_
                                                 (##cdr _e8778687816_)))
                                            (let ((_expr87824_ _hd8778787819_))
                                              (if (gx#stx-null? _tl8778887821_)
                                                  (if (gx#identifier?
                                                       _id87814_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87814_
                            _stx87776_)
                           (cons (gx#core-expand-expression _expr87824_) '())))
               (gx#stx-source _stx87776_))
              (_E8777987794_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8777987794_)))))
                                        (_E8777987794_)))))
                              (_E8777987794_))))
                      (_E8777987794_)))))
          (_E8777887826_))))
    (define gx#macro-expand-extern
      (lambda (_stx87624_)
        (letrec ((_generate87626_
                  (lambda (_body87656_)
                    (let _lp87658_ ((_rest87660_ _body87656_)
                                    (_ns87661_ (gx#core-context-namespace__0))
                                    (_r87662_ '()))
                      (let* ((_e8766387678_ _rest87660_)
                             (_E8767687682_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8766387678_)))
                             (_E8767287686_
                              (lambda ()
                                (if (gx#stx-null? _e8766387678_)
                                    (if '#t (reverse _r87662_) (_E8767687682_))
                                    (_E8767687682_))))
                             (_E8766587743_
                              (lambda ()
                                (if (gx#stx-pair? _e8766387678_)
                                    (let ((_e8767387690_
                                           (gx#syntax-e _e8766387678_)))
                                      (let ((_hd8767487693_
                                             (##car _e8767387690_))
                                            (_tl8767587695_
                                             (##cdr _e8767387690_)))
                                        (let* ((_hd87698_ _hd8767487693_)
                                               (_rest87700_ _tl8767587695_))
                                          (if '#t
                                              (if (gx#identifier? _hd87698_)
                                                  (_lp87658_
                                                   _rest87700_
                                                   _ns87661_
                                                   (cons (cons _hd87698_
                                                               (cons (if _ns87661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87698_
                                  _ns87661_
                                  '"#"
                                  _hd87698_)
                                 _hd87698_)
                             '()))
                 _r87662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8770187711_
                                                          _hd87698_)
                                                         (_E8770387715_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8770187711_)))
                                                         (_E8770287739_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8770187711_)
                        (let ((_e8770487719_ (gx#syntax-e _e8770187711_)))
                          (let ((_hd8770587722_ (##car _e8770487719_))
                                (_tl8770687724_ (##cdr _e8770487719_)))
                            (let ((_id87727_ _hd8770587722_))
                              (if (gx#stx-pair? _tl8770687724_)
                                  (let ((_e8770787729_
                                         (gx#syntax-e _tl8770687724_)))
                                    (let ((_hd8770887732_
                                           (##car _e8770787729_))
                                          (_tl8770987734_
                                           (##cdr _e8770787729_)))
                                      (let ((_eid87737_ _hd8770887732_))
                                        (if (gx#stx-null? _tl8770987734_)
                                            (if (and (gx#identifier? _id87727_)
                                                     (gx#identifier?
                                                      _eid87737_))
                                                (_lp87658_
                                                 _rest87700_
                                                 _ns87661_
                                                 (cons (cons _id87727_
                                                             (cons _eid87737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8770387715_))
                                            (_E8770387715_)))))
                                  (_E8770387715_)))))
                        (_E8770387715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8770287739_)))
                                              (_E8767287686_)))))
                                    (_E8767287686_))))
                             (_E8766487772_
                              (lambda ()
                                (if (gx#stx-pair? _e8766387678_)
                                    (let ((_e8766687747_
                                           (gx#syntax-e _e8766387678_)))
                                      (let ((_hd8766787750_
                                             (##car _e8766687747_))
                                            (_tl8766887752_
                                             (##cdr _e8766687747_)))
                                        (if (eq? (gx#stx-e _hd8766787750_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8766887752_)
                                                (let ((_e8766987755_
                                                       (gx#syntax-e
                                                        _tl8766887752_)))
                                                  (let ((_hd8767087758_
                                                         (##car _e8766987755_))
                                                        (_tl8767187760_
                                                         (##cdr _e8766987755_)))
                                                    (let* ((_ns87763_
                                                            _hd8767087758_)
                                                           (_rest87765_
                                                            _tl8767187760_))
                                                      (if '#t
                                                          (let ((_ns87770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87763_)
                             (symbol->string (gx#stx-e _ns87763_))
                             (if (or (gx#stx-string? _ns87763_)
                                     (gx#stx-false? _ns87763_))
                                 (gx#stx-e _ns87763_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87624_
                                  _ns87763_)))))
                    (_lp87658_ _rest87765_ _ns87770_ _r87662_))
                  (_E8766587743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8766587743_))
                                            (_E8766587743_))))
                                    (_E8766587743_)))))
                        (_E8766487772_))))))
          (let* ((_e8762787634_ _stx87624_)
                 (_E8762987638_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8762787634_)))
                 (_E8762887652_
                  (lambda ()
                    (if (gx#stx-pair? _e8762787634_)
                        (let ((_e8763087642_ (gx#syntax-e _e8762787634_)))
                          (let ((_hd8763187645_ (##car _e8763087642_))
                                (_tl8763287647_ (##cdr _e8763087642_)))
                            (let ((_body87650_ _tl8763287647_))
                              (if (gx#stx-list? _body87650_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87626_ _body87650_))
                                  (_E8762987638_)))))
                        (_E8762987638_)))))
            (_E8762887652_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87570_)
        (let* ((_e8757187584_ _stx87570_)
               (_E8757387588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8757187584_)))
               (_E8757287620_
                (lambda ()
                  (if (gx#stx-pair? _e8757187584_)
                      (let ((_e8757487592_ (gx#syntax-e _e8757187584_)))
                        (let ((_hd8757587595_ (##car _e8757487592_))
                              (_tl8757687597_ (##cdr _e8757487592_)))
                          (if (gx#stx-pair? _tl8757687597_)
                              (let ((_e8757787600_
                                     (gx#syntax-e _tl8757687597_)))
                                (let ((_hd8757887603_ (##car _e8757787600_))
                                      (_tl8757987605_ (##cdr _e8757787600_)))
                                  (let ((_hd87608_ _hd8757887603_))
                                    (if (gx#stx-pair? _tl8757987605_)
                                        (let ((_e8758087610_
                                               (gx#syntax-e _tl8757987605_)))
                                          (let ((_hd8758187613_
                                                 (##car _e8758087610_))
                                                (_tl8758287615_
                                                 (##cdr _e8758087610_)))
                                            (let ((_expr87618_ _hd8758187613_))
                                              (if (gx#stx-null? _tl8758287615_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87608_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87608_)
                          (cons _expr87618_ '())))
              (_E8757387588_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8757387588_)))))
                                        (_E8757387588_)))))
                              (_E8757387588_))))
                      (_E8757387588_)))))
          (_E8757287620_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87516_)
        (let* ((_e8751787530_ _stx87516_)
               (_E8751987534_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8751787530_)))
               (_E8751887566_
                (lambda ()
                  (if (gx#stx-pair? _e8751787530_)
                      (let ((_e8752087538_ (gx#syntax-e _e8751787530_)))
                        (let ((_hd8752187541_ (##car _e8752087538_))
                              (_tl8752287543_ (##cdr _e8752087538_)))
                          (if (gx#stx-pair? _tl8752287543_)
                              (let ((_e8752387546_
                                     (gx#syntax-e _tl8752287543_)))
                                (let ((_hd8752487549_ (##car _e8752387546_))
                                      (_tl8752587551_ (##cdr _e8752387546_)))
                                  (let ((_hd87554_ _hd8752487549_))
                                    (if (gx#stx-pair? _tl8752587551_)
                                        (let ((_e8752687556_
                                               (gx#syntax-e _tl8752587551_)))
                                          (let ((_hd8752787559_
                                                 (##car _e8752687556_))
                                                (_tl8752887561_
                                                 (##cdr _e8752687556_)))
                                            (let ((_expr87564_ _hd8752787559_))
                                              (if (gx#stx-null? _tl8752887561_)
                                                  (if (gx#identifier?
                                                       _hd87554_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87564_ '())))
              (_E8751987534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8751987534_)))))
                                        (_E8751987534_)))))
                              (_E8751987534_))))
                      (_E8751987534_)))))
          (_E8751887566_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87462_)
        (let* ((_e8746387476_ _stx87462_)
               (_E8746587480_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8746387476_)))
               (_E8746487512_
                (lambda ()
                  (if (gx#stx-pair? _e8746387476_)
                      (let ((_e8746687484_ (gx#syntax-e _e8746387476_)))
                        (let ((_hd8746787487_ (##car _e8746687484_))
                              (_tl8746887489_ (##cdr _e8746687484_)))
                          (if (gx#stx-pair? _tl8746887489_)
                              (let ((_e8746987492_
                                     (gx#syntax-e _tl8746887489_)))
                                (let ((_hd8747087495_ (##car _e8746987492_))
                                      (_tl8747187497_ (##cdr _e8746987492_)))
                                  (let ((_id87500_ _hd8747087495_))
                                    (if (gx#stx-pair? _tl8747187497_)
                                        (let ((_e8747287502_
                                               (gx#syntax-e _tl8747187497_)))
                                          (let ((_hd8747387505_
                                                 (##car _e8747287502_))
                                                (_tl8747487507_
                                                 (##cdr _e8747287502_)))
                                            (let ((_alias-id87510_
                                                   _hd8747387505_))
                                              (if (gx#stx-null? _tl8747487507_)
                                                  (if (and (gx#identifier?
                                                            _id87500_)
                                                           (gx#identifier?
                                                            _alias-id87510_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87510_ '())))
              (_E8746587480_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8746587480_)))))
                                        (_E8746587480_)))))
                              (_E8746587480_))))
                      (_E8746587480_)))))
          (_E8746487512_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87419_)
        (let* ((_e8742087430_ _stx87419_)
               (_E8742287434_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8742087430_)))
               (_E8742187458_
                (lambda ()
                  (if (gx#stx-pair? _e8742087430_)
                      (let ((_e8742387438_ (gx#syntax-e _e8742087430_)))
                        (let ((_hd8742487441_ (##car _e8742387438_))
                              (_tl8742587443_ (##cdr _e8742387438_)))
                          (if (gx#stx-pair? _tl8742587443_)
                              (let ((_e8742687446_
                                     (gx#syntax-e _tl8742587443_)))
                                (let ((_hd8742787449_ (##car _e8742687446_))
                                      (_tl8742887451_ (##cdr _e8742687446_)))
                                  (let* ((_hd87454_ _hd8742787449_)
                                         (_body87456_ _tl8742887451_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87454_)
                                             (gx#stx-list? _body87456_)
                                             (not (gx#stx-null? _body87456_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87454_)
                                         _body87456_)
                                        (_E8742287434_)))))
                              (_E8742287434_))))
                      (_E8742287434_)))))
          (_E8742187458_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx87355_)
        (letrec ((_generate87357_
                  (lambda (_clause87387_)
                    (let* ((_e8738887395_ _clause87387_)
                           (_E8739087399_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx87355_
                               _clause87387_)))
                           (_E8738987415_
                            (lambda ()
                              (if (gx#stx-pair? _e8738887395_)
                                  (let ((_e8739187403_
                                         (gx#syntax-e _e8738887395_)))
                                    (let ((_hd8739287406_
                                           (##car _e8739187403_))
                                          (_tl8739387408_
                                           (##cdr _e8739187403_)))
                                      (let* ((_hd87411_ _hd8739287406_)
                                             (_body87413_ _tl8739387408_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd87411_)
                                                 (gx#stx-list? _body87413_)
                                                 (not (gx#stx-null?
                                                       _body87413_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd87411_)
                                                   _body87413_)
                                             (gx#stx-source _clause87387_))
                                            (_E8739087399_)))))
                                  (_E8739087399_)))))
                      (_E8738987415_)))))
          (let* ((_e8735887365_ _stx87355_)
                 (_E8736087369_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8735887365_)))
                 (_E8735987383_
                  (lambda ()
                    (if (gx#stx-pair? _e8735887365_)
                        (let ((_e8736187373_ (gx#syntax-e _e8735887365_)))
                          (let ((_hd8736287376_ (##car _e8736187373_))
                                (_tl8736387378_ (##cdr _e8736187373_)))
                            (let ((_clauses87381_ _tl8736387378_))
                              (if (gx#stx-list? _clauses87381_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate87357_
                                    _clauses87381_))
                                  (_E8736087369_)))))
                        (_E8736087369_)))))
            (_E8735987383_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx87256_ _form87257_)
        (letrec ((_generate87259_
                  (lambda (_bind87302_)
                    (let* ((_e8730387313_ _bind87302_)
                           (_E8730587317_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx87256_
                               _bind87302_)))
                           (_E8730487341_
                            (lambda ()
                              (if (gx#stx-pair? _e8730387313_)
                                  (let ((_e8730687321_
                                         (gx#syntax-e _e8730387313_)))
                                    (let ((_hd8730787324_
                                           (##car _e8730687321_))
                                          (_tl8730887326_
                                           (##cdr _e8730687321_)))
                                      (let ((_ids87329_ _hd8730787324_))
                                        (if (gx#stx-pair? _tl8730887326_)
                                            (let ((_e8730987331_
                                                   (gx#syntax-e
                                                    _tl8730887326_)))
                                              (let ((_hd8731087334_
                                                     (##car _e8730987331_))
                                                    (_tl8731187336_
                                                     (##cdr _e8730987331_)))
                                                (let ((_expr87339_
                                                       _hd8731087334_))
                                                  (if (gx#stx-null?
                                                       _tl8731187336_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids87329_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids87329_)
                        (cons _expr87339_ '()))
                  (_E8730587317_))
              (_E8730587317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8730587317_)))))
                                  (_E8730587317_)))))
                      (_E8730487341_)))))
          (let* ((_e8726087270_ _stx87256_)
                 (_E8726287274_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8726087270_)))
                 (_E8726187298_
                  (lambda ()
                    (if (gx#stx-pair? _e8726087270_)
                        (let ((_e8726387278_ (gx#syntax-e _e8726087270_)))
                          (let ((_hd8726487281_ (##car _e8726387278_))
                                (_tl8726587283_ (##cdr _e8726387278_)))
                            (if (gx#stx-pair? _tl8726587283_)
                                (let ((_e8726687286_
                                       (gx#syntax-e _tl8726587283_)))
                                  (let ((_hd8726787289_ (##car _e8726687286_))
                                        (_tl8726887291_ (##cdr _e8726687286_)))
                                    (let* ((_hd87294_ _hd8726787289_)
                                           (_body87296_ _tl8726887291_))
                                      (if (and (gx#stx-list? _hd87294_)
                                               (gx#stx-list? _body87296_)
                                               (not (gx#stx-null?
                                                     _body87296_)))
                                          (gx#core-cons*
                                           _form87257_
                                           (gx#stx-map1
                                            _generate87259_
                                            _hd87294_)
                                           _body87296_)
                                          (_E8726287274_)))))
                                (_E8726287274_))))
                        (_E8726287274_)))))
            (_E8726187298_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx87348_)
        (let ((_form87350_ '%#let-values))
          (gx#macro-expand-let-values__% _stx87348_ _form87350_))))
    (define gx#macro-expand-let-values
      (lambda _g89733_
        (let ((_g89732_ (##length _g89733_)))
          (cond ((##fx= _g89732_ 1)
                 (apply (lambda (_stx87348_)
                          (gx#macro-expand-let-values__0 _stx87348_))
                        _g89733_))
                ((##fx= _g89732_ 2)
                 (apply (lambda (_stx87352_ _form87353_)
                          (gx#macro-expand-let-values__%
                           _stx87352_
                           _form87353_))
                        _g89733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89733_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx87253_)
        (gx#macro-expand-let-values__% _stx87253_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx87251_)
        (gx#macro-expand-let-values__% _stx87251_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx87142_)
        (let* ((_e8714387169_ _stx87142_)
               (_E8715587173_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8714387169_)))
               (_E8714587215_
                (lambda ()
                  (if (gx#stx-pair? _e8714387169_)
                      (let ((_e8715687177_ (gx#syntax-e _e8714387169_)))
                        (let ((_hd8715787180_ (##car _e8715687177_))
                              (_tl8715887182_ (##cdr _e8715687177_)))
                          (if (gx#stx-pair? _tl8715887182_)
                              (let ((_e8715987185_
                                     (gx#syntax-e _tl8715887182_)))
                                (let ((_hd8716087188_ (##car _e8715987185_))
                                      (_tl8716187190_ (##cdr _e8715987185_)))
                                  (let ((_test87193_ _hd8716087188_))
                                    (if (gx#stx-pair? _tl8716187190_)
                                        (let ((_e8716287195_
                                               (gx#syntax-e _tl8716187190_)))
                                          (let ((_hd8716387198_
                                                 (##car _e8716287195_))
                                                (_tl8716487200_
                                                 (##cdr _e8716287195_)))
                                            (let ((_K87203_ _hd8716387198_))
                                              (if (gx#stx-pair? _tl8716487200_)
                                                  (let ((_e8716587205_
                                                         (gx#syntax-e
                                                          _tl8716487200_)))
                                                    (let ((_hd8716687208_
                                                           (##car _e8716587205_))
                                                          (_tl8716787210_
                                                           (##cdr _e8716587205_)))
                                                      (let ((_E87213_
                                                             _hd8716687208_))
                                                        (if (gx#stx-null?
                                                             _tl8716787210_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test87193_
                         _K87203_
                         _E87213_)
                        (_E8715587173_))
                    (_E8715587173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8715587173_)))))
                                        (_E8715587173_)))))
                              (_E8715587173_))))
                      (_E8715587173_))))
               (_E8714487247_
                (lambda ()
                  (if (gx#stx-pair? _e8714387169_)
                      (let ((_e8714687219_ (gx#syntax-e _e8714387169_)))
                        (let ((_hd8714787222_ (##car _e8714687219_))
                              (_tl8714887224_ (##cdr _e8714687219_)))
                          (if (gx#stx-pair? _tl8714887224_)
                              (let ((_e8714987227_
                                     (gx#syntax-e _tl8714887224_)))
                                (let ((_hd8715087230_ (##car _e8714987227_))
                                      (_tl8715187232_ (##cdr _e8714987227_)))
                                  (let ((_test87235_ _hd8715087230_))
                                    (if (gx#stx-pair? _tl8715187232_)
                                        (let ((_e8715287237_
                                               (gx#syntax-e _tl8715187232_)))
                                          (let ((_hd8715387240_
                                                 (##car _e8715287237_))
                                                (_tl8715487242_
                                                 (##cdr _e8715287237_)))
                                            (let ((_K87245_ _hd8715387240_))
                                              (if (gx#stx-null? _tl8715487242_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test87235_
                                                       _K87245_
                                                       '#!void)
                                                      (_E8714587215_))
                                                  (_E8714587215_)))))
                                        (_E8714587215_)))))
                              (_E8714587215_))))
                      (_E8714587215_)))))
          (_E8714487247_))))
    (define gx#free-identifier=?
      (lambda (_xid87130_ _yid87131_)
        (let ((_xe87133_ (gx#resolve-identifier__0 _xid87130_))
              (_ye87134_ (gx#resolve-identifier__0 _yid87131_)))
          (if (and _xe87133_ _ye87134_)
              (let ((_$e87136_ (eq? _xe87133_ _ye87134_)))
                (if _$e87136_
                    _$e87136_
                    (if (##structure-instance-of? _xe87133_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye87134_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe87133_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye87134_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe87133_ _ye87134_)
                  '#f
                  (gx#stx-eq? _xid87130_ _yid87131_))))))
    (define gx#bound-identifier=?
      (lambda (_xid87114_ _yid87115_)
        (letrec ((_context87117_
                  (lambda (_e87128_)
                    (if (##structure-direct-instance-of?
                         _e87128_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e87128_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks87118_
                  (lambda (_e87126_)
                    (if (symbol? _e87126_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e87126_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e87126_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e87126_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap87119_
                  (lambda (_e87124_)
                    (if (symbol? _e87124_)
                        _e87124_
                        (gx#syntax-local-unwrap _e87124_)))))
          (let ((_x87121_ (_unwrap87119_ _xid87114_))
                (_y87122_ (_unwrap87119_ _yid87115_)))
            (if (gx#stx-eq? _x87121_ _y87122_)
                (if (eq? (_context87117_ _x87121_) (_context87117_ _y87122_))
                    (equal? (_marks87118_ _x87121_) (_marks87118_ _y87122_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx87112_)
        (if (gx#identifier? _stx87112_)
            (gx#core-identifier=? _stx87112_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx87110_)
        (if (gx#identifier? _stx87110_)
            (gx#core-identifier=? _stx87110_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x87108_)
        (if (gx#identifier? _x87108_)
            (if (not (gx#underscore? _x87108_)) _x87108_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87054_ _where87055_)
        (let _lp87057_ ((_rest87059_ (gx#syntax->list _stx87054_)))
          (let* ((_rest8706087068_ _rest87059_)
                 (_else8706287076_ (lambda () '#t))
                 (_K8706487086_
                  (lambda (_rest87079_ _hd87080_)
                    (if (not (gx#identifier? _hd87080_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87055_
                         _hd87080_)
                        (if (find (lambda (_g8708187083_)
                                    (gx#bound-identifier=?
                                     _g8708187083_
                                     _hd87080_))
                                  _rest87079_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87055_
                             _hd87080_)
                            (_lp87057_ _rest87079_))))))
            (if (##pair? _rest8706087068_)
                (let ((_hd8706587089_ (##car _rest8706087068_))
                      (_tl8706687091_ (##cdr _rest8706087068_)))
                  (let* ((_hd87094_ _hd8706587089_)
                         (_rest87096_ _tl8706687091_))
                    (_K8706487086_ _rest87096_ _hd87094_)))
                (_else8706287076_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx87101_)
        (let ((_where87103_ _stx87101_))
          (gx#check-duplicate-identifiers__% _stx87101_ _where87103_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89735_
        (let ((_g89734_ (##length _g89735_)))
          (cond ((##fx= _g89734_ 1)
                 (apply (lambda (_stx87101_)
                          (gx#check-duplicate-identifiers__0 _stx87101_))
                        _g89735_))
                ((##fx= _g89734_ 2)
                 (apply (lambda (_stx87105_ _where87106_)
                          (gx#check-duplicate-identifiers__%
                           _stx87105_
                           _where87106_))
                        _g89735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89735_))))))
    (define gx#core-bind-values?
      (lambda (_stx87046_)
        (gx#stx-andmap
         (lambda (_x87048_)
           (let ((_$e87050_ (gx#identifier? _x87048_)))
             (if _$e87050_ _$e87050_ (gx#stx-false? _x87048_))))
         _stx87046_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87010_ _rebind?87011_ _phi87012_ _ctx87013_)
        (gx#stx-for-each1
         (lambda (_id87015_)
           (if (gx#identifier? _id87015_)
               (gx#core-bind-runtime!__%
                _id87015_
                _rebind?87011_
                _phi87012_
                _ctx87013_)
               '#!void))
         _stx87010_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87020_)
        (let* ((_rebind?87022_ '#f)
               (_phi87024_ (gx#current-expander-phi))
               (_ctx87026_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87020_
           _rebind?87022_
           _phi87024_
           _ctx87026_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87028_ _rebind?87029_)
        (let* ((_phi87031_ (gx#current-expander-phi))
               (_ctx87033_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87028_
           _rebind?87029_
           _phi87031_
           _ctx87033_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87035_ _rebind?87036_ _phi87037_)
        (let ((_ctx87039_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87035_
           _rebind?87036_
           _phi87037_
           _ctx87039_))))
    (define gx#core-bind-values!
      (lambda _g89737_
        (let ((_g89736_ (##length _g89737_)))
          (cond ((##fx= _g89736_ 1)
                 (apply (lambda (_stx87020_)
                          (gx#core-bind-values!__0 _stx87020_))
                        _g89737_))
                ((##fx= _g89736_ 2)
                 (apply (lambda (_stx87028_ _rebind?87029_)
                          (gx#core-bind-values!__1 _stx87028_ _rebind?87029_))
                        _g89737_))
                ((##fx= _g89736_ 3)
                 (apply (lambda (_stx87035_ _rebind?87036_ _phi87037_)
                          (gx#core-bind-values!__2
                           _stx87035_
                           _rebind?87036_
                           _phi87037_))
                        _g89737_))
                ((##fx= _g89736_ 4)
                 (apply (lambda (_stx87041_
                                 _rebind?87042_
                                 _phi87043_
                                 _ctx87044_)
                          (gx#core-bind-values!__%
                           _stx87041_
                           _rebind?87042_
                           _phi87043_
                           _ctx87044_))
                        _g89737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89737_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87005_)
        (gx#stx-map1
         (lambda (_x87007_)
           (if (gx#identifier? _x87007_)
               (gx#core-quote-syntax__0 _x87007_)
               '#f))
         _stx87005_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86998_)
        (if (gx#identifier? _stx86998_)
            (let* ((_bind87000_ (gx#resolve-identifier__0 _stx86998_))
                   (_$e87002_ (not _bind87000_)))
              (if _$e87002_
                  _$e87002_
                  (##structure-instance-of?
                   _bind87000_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86990_ _form86991_)
        (let ((_bind86993_ (gx#resolve-identifier__0 _id86990_)))
          (if (##structure-instance-of? _bind86993_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86990_)
              (if (not _bind86993_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86990_)))
                      (gx#core-quote-syntax__0 _id86990_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86991_
                       _id86990_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86991_
                   _id86990_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86949_ _rebind?86950_ _phi86951_ _ctx86952_)
        (let* ((_key86954_ (gx#core-identifier-key _id86949_))
               (_eid86956_
                (gx#make-binding-id__% _key86954_ '#f _phi86951_ _ctx86952_))
               (_bind86958_
                (if (##structure-instance-of? _ctx86952_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86956_
                     _key86954_
                     _phi86951_
                     _ctx86952_)
                    (if (##structure-instance-of?
                         _ctx86952_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86956_
                         _key86954_
                         _phi86951_)
                        (if (##structure-instance-of?
                             _ctx86952_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86956_
                             _key86954_
                             _phi86951_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86956_
                             _key86954_
                             _phi86951_))))))
          (gx#bind-identifier!__%
           _id86949_
           _bind86958_
           _rebind?86950_
           _phi86951_
           _ctx86952_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86964_)
        (let* ((_rebind?86966_ '#f)
               (_phi86968_ (gx#current-expander-phi))
               (_ctx86970_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86964_
           _rebind?86966_
           _phi86968_
           _ctx86970_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86972_ _rebind?86973_)
        (let* ((_phi86975_ (gx#current-expander-phi))
               (_ctx86977_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86972_
           _rebind?86973_
           _phi86975_
           _ctx86977_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86979_ _rebind?86980_ _phi86981_)
        (let ((_ctx86983_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86979_
           _rebind?86980_
           _phi86981_
           _ctx86983_))))
    (define gx#core-bind-runtime!
      (lambda _g89739_
        (let ((_g89738_ (##length _g89739_)))
          (cond ((##fx= _g89738_ 1)
                 (apply (lambda (_id86964_)
                          (gx#core-bind-runtime!__0 _id86964_))
                        _g89739_))
                ((##fx= _g89738_ 2)
                 (apply (lambda (_id86972_ _rebind?86973_)
                          (gx#core-bind-runtime!__1 _id86972_ _rebind?86973_))
                        _g89739_))
                ((##fx= _g89738_ 3)
                 (apply (lambda (_id86979_ _rebind?86980_ _phi86981_)
                          (gx#core-bind-runtime!__2
                           _id86979_
                           _rebind?86980_
                           _phi86981_))
                        _g89739_))
                ((##fx= _g89738_ 4)
                 (apply (lambda (_id86985_
                                 _rebind?86986_
                                 _phi86987_
                                 _ctx86988_)
                          (gx#core-bind-runtime!__%
                           _id86985_
                           _rebind?86986_
                           _phi86987_
                           _ctx86988_))
                        _g89739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89739_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86904_ _eid86905_ _rebind?86906_ _phi86907_ _ctx86908_)
        (let* ((_key86910_ (gx#core-identifier-key _id86904_))
               (_bind86912_
                (if (##structure-instance-of? _ctx86908_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86905_
                     _key86910_
                     _phi86907_
                     _ctx86908_)
                    (if (##structure-instance-of?
                         _ctx86908_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86905_
                         _key86910_
                         _phi86907_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86905_
                         _key86910_
                         _phi86907_)))))
          (gx#bind-identifier!__%
           _id86904_
           _bind86912_
           _rebind?86906_
           _phi86907_
           _ctx86908_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86918_ _eid86919_)
        (let* ((_rebind?86921_ '#f)
               (_phi86923_ (gx#current-expander-phi))
               (_ctx86925_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86918_
           _eid86919_
           _rebind?86921_
           _phi86923_
           _ctx86925_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86927_ _eid86928_ _rebind?86929_)
        (let* ((_phi86931_ (gx#current-expander-phi))
               (_ctx86933_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86927_
           _eid86928_
           _rebind?86929_
           _phi86931_
           _ctx86933_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86935_ _eid86936_ _rebind?86937_ _phi86938_)
        (let ((_ctx86940_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86935_
           _eid86936_
           _rebind?86937_
           _phi86938_
           _ctx86940_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89741_
        (let ((_g89740_ (##length _g89741_)))
          (cond ((##fx= _g89740_ 2)
                 (apply (lambda (_id86918_ _eid86919_)
                          (gx#core-bind-runtime-reference!__0
                           _id86918_
                           _eid86919_))
                        _g89741_))
                ((##fx= _g89740_ 3)
                 (apply (lambda (_id86927_ _eid86928_ _rebind?86929_)
                          (gx#core-bind-runtime-reference!__1
                           _id86927_
                           _eid86928_
                           _rebind?86929_))
                        _g89741_))
                ((##fx= _g89740_ 4)
                 (apply (lambda (_id86935_
                                 _eid86936_
                                 _rebind?86937_
                                 _phi86938_)
                          (gx#core-bind-runtime-reference!__2
                           _id86935_
                           _eid86936_
                           _rebind?86937_
                           _phi86938_))
                        _g89741_))
                ((##fx= _g89740_ 5)
                 (apply (lambda (_id86942_
                                 _eid86943_
                                 _rebind?86944_
                                 _phi86945_
                                 _ctx86946_)
                          (gx#core-bind-runtime-reference!__%
                           _id86942_
                           _eid86943_
                           _rebind?86944_
                           _phi86945_
                           _ctx86946_))
                        _g89741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89741_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86864_ _eid86865_ _rebind?86866_ _phi86867_ _ctx86868_)
        (gx#bind-identifier!__%
         _id86864_
         (##structure
          gx#extern-binding::t
          _eid86865_
          (gx#core-identifier-key _id86864_)
          _phi86867_)
         _rebind?86866_
         _phi86867_
         _ctx86868_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86873_ _eid86874_)
        (let* ((_rebind?86876_ '#f)
               (_phi86878_ (gx#current-expander-phi))
               (_ctx86880_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86873_
           _eid86874_
           _rebind?86876_
           _phi86878_
           _ctx86880_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86882_ _eid86883_ _rebind?86884_)
        (let* ((_phi86886_ (gx#current-expander-phi))
               (_ctx86888_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86882_
           _eid86883_
           _rebind?86884_
           _phi86886_
           _ctx86888_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86890_ _eid86891_ _rebind?86892_ _phi86893_)
        (let ((_ctx86895_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86890_
           _eid86891_
           _rebind?86892_
           _phi86893_
           _ctx86895_))))
    (define gx#core-bind-extern!
      (lambda _g89743_
        (let ((_g89742_ (##length _g89743_)))
          (cond ((##fx= _g89742_ 2)
                 (apply (lambda (_id86873_ _eid86874_)
                          (gx#core-bind-extern!__0 _id86873_ _eid86874_))
                        _g89743_))
                ((##fx= _g89742_ 3)
                 (apply (lambda (_id86882_ _eid86883_ _rebind?86884_)
                          (gx#core-bind-extern!__1
                           _id86882_
                           _eid86883_
                           _rebind?86884_))
                        _g89743_))
                ((##fx= _g89742_ 4)
                 (apply (lambda (_id86890_
                                 _eid86891_
                                 _rebind?86892_
                                 _phi86893_)
                          (gx#core-bind-extern!__2
                           _id86890_
                           _eid86891_
                           _rebind?86892_
                           _phi86893_))
                        _g89743_))
                ((##fx= _g89742_ 5)
                 (apply (lambda (_id86897_
                                 _eid86898_
                                 _rebind?86899_
                                 _phi86900_
                                 _ctx86901_)
                          (gx#core-bind-extern!__%
                           _id86897_
                           _eid86898_
                           _rebind?86899_
                           _phi86900_
                           _ctx86901_))
                        _g89743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89743_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86818_ _e86819_ _rebind?86820_ _phi86821_ _ctx86822_)
        (gx#bind-identifier!__%
         _id86818_
         (let ((_key86827_ (gx#core-identifier-key _id86818_))
               (_e86828_
                (if (or (##structure-instance-of? _e86819_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86819_
                         'gx#expander-context::t))
                    _e86819_
                    (##structure
                     gx#user-expander::t
                     _e86819_
                     _ctx86822_
                     _phi86821_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86827_ '#t _phi86821_ _ctx86822_)
            _key86827_
            _phi86821_
            _e86828_))
         _rebind?86820_
         _phi86821_
         _ctx86822_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86833_ _e86834_)
        (let* ((_rebind?86836_ '#f)
               (_phi86838_ (gx#current-expander-phi))
               (_ctx86840_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86833_
           _e86834_
           _rebind?86836_
           _phi86838_
           _ctx86840_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86842_ _e86843_ _rebind?86844_)
        (let* ((_phi86846_ (gx#current-expander-phi))
               (_ctx86848_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86842_
           _e86843_
           _rebind?86844_
           _phi86846_
           _ctx86848_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86850_ _e86851_ _rebind?86852_ _phi86853_)
        (let ((_ctx86855_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86850_
           _e86851_
           _rebind?86852_
           _phi86853_
           _ctx86855_))))
    (define gx#core-bind-syntax!
      (lambda _g89745_
        (let ((_g89744_ (##length _g89745_)))
          (cond ((##fx= _g89744_ 2)
                 (apply (lambda (_id86833_ _e86834_)
                          (gx#core-bind-syntax!__0 _id86833_ _e86834_))
                        _g89745_))
                ((##fx= _g89744_ 3)
                 (apply (lambda (_id86842_ _e86843_ _rebind?86844_)
                          (gx#core-bind-syntax!__1
                           _id86842_
                           _e86843_
                           _rebind?86844_))
                        _g89745_))
                ((##fx= _g89744_ 4)
                 (apply (lambda (_id86850_ _e86851_ _rebind?86852_ _phi86853_)
                          (gx#core-bind-syntax!__2
                           _id86850_
                           _e86851_
                           _rebind?86852_
                           _phi86853_))
                        _g89745_))
                ((##fx= _g89744_ 5)
                 (apply (lambda (_id86857_
                                 _e86858_
                                 _rebind?86859_
                                 _phi86860_
                                 _ctx86861_)
                          (gx#core-bind-syntax!__%
                           _id86857_
                           _e86858_
                           _rebind?86859_
                           _phi86860_
                           _ctx86861_))
                        _g89745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89745_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86801_ _e86802_ _rebind?86803_)
        (gx#core-bind-syntax!__%
         _id86801_
         _e86802_
         _rebind?86803_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86808_ _e86809_)
        (let ((_rebind?86811_ '#f))
          (gx#core-bind-root-syntax!__% _id86808_ _e86809_ _rebind?86811_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89747_
        (let ((_g89746_ (##length _g89747_)))
          (cond ((##fx= _g89746_ 2)
                 (apply (lambda (_id86808_ _e86809_)
                          (gx#core-bind-root-syntax!__0 _id86808_ _e86809_))
                        _g89747_))
                ((##fx= _g89746_ 3)
                 (apply (lambda (_id86813_ _e86814_ _rebind?86815_)
                          (gx#core-bind-root-syntax!__%
                           _id86813_
                           _e86814_
                           _rebind?86815_))
                        _g89747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89747_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86759_ _alias-id86760_ _rebind?86761_ _phi86762_ _ctx86763_)
        (gx#bind-identifier!__%
         _id86759_
         (let ((_key86765_ (gx#core-identifier-key _id86759_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86765_ '#t _phi86762_ _ctx86763_)
            _key86765_
            _phi86762_
            _alias-id86760_))
         _rebind?86761_
         _phi86762_
         _ctx86763_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86770_ _alias-id86771_)
        (let* ((_rebind?86773_ '#f)
               (_phi86775_ (gx#current-expander-phi))
               (_ctx86777_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86770_
           _alias-id86771_
           _rebind?86773_
           _phi86775_
           _ctx86777_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86779_ _alias-id86780_ _rebind?86781_)
        (let* ((_phi86783_ (gx#current-expander-phi))
               (_ctx86785_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86779_
           _alias-id86780_
           _rebind?86781_
           _phi86783_
           _ctx86785_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86787_ _alias-id86788_ _rebind?86789_ _phi86790_)
        (let ((_ctx86792_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86787_
           _alias-id86788_
           _rebind?86789_
           _phi86790_
           _ctx86792_))))
    (define gx#core-bind-alias!
      (lambda _g89749_
        (let ((_g89748_ (##length _g89749_)))
          (cond ((##fx= _g89748_ 2)
                 (apply (lambda (_id86770_ _alias-id86771_)
                          (gx#core-bind-alias!__0 _id86770_ _alias-id86771_))
                        _g89749_))
                ((##fx= _g89748_ 3)
                 (apply (lambda (_id86779_ _alias-id86780_ _rebind?86781_)
                          (gx#core-bind-alias!__1
                           _id86779_
                           _alias-id86780_
                           _rebind?86781_))
                        _g89749_))
                ((##fx= _g89748_ 4)
                 (apply (lambda (_id86787_
                                 _alias-id86788_
                                 _rebind?86789_
                                 _phi86790_)
                          (gx#core-bind-alias!__2
                           _id86787_
                           _alias-id86788_
                           _rebind?86789_
                           _phi86790_))
                        _g89749_))
                ((##fx= _g89748_ 5)
                 (apply (lambda (_id86794_
                                 _alias-id86795_
                                 _rebind?86796_
                                 _phi86797_
                                 _ctx86798_)
                          (gx#core-bind-alias!__%
                           _id86794_
                           _alias-id86795_
                           _rebind?86796_
                           _phi86797_
                           _ctx86798_))
                        _g89749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89749_))))))
    (define gx#make-binding-id__%
      (lambda (_key86716_ _syntax?86717_ _phi86718_ _ctx86719_)
        (if (uninterned-symbol? _key86716_)
            (gensym 'L)
            (if (pair? _key86716_)
                (gensym (car _key86716_))
                (if (##structure-instance-of? _ctx86719_ 'gx#top-context::t)
                    (let ((_ns86721_
                           (gx#core-context-namespace__% _ctx86719_)))
                      (if (and (fxzero? _phi86718_) (not _syntax?86717_))
                          (if _ns86721_
                              (make-symbol__1 _ns86721_ '"#" _key86716_)
                              _key86716_)
                          (if _syntax?86717_
                              (make-symbol__1
                               (let ((_$e86723_ _ns86721_))
                                 (if _$e86723_ _$e86723_ '""))
                               '"[:"
                               (number->string _phi86718_)
                               '":]#"
                               _key86716_)
                              (make-symbol__1
                               (let ((_$e86726_ _ns86721_))
                                 (if _$e86726_ _$e86726_ '""))
                               '"["
                               (number->string _phi86718_)
                               '"]#"
                               _key86716_))))
                    (gensym _key86716_))))))
    (define gx#make-binding-id__0
      (lambda (_key86732_)
        (let* ((_syntax?86734_ '#f)
               (_phi86736_ (gx#current-expander-phi))
               (_ctx86738_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86732_
           _syntax?86734_
           _phi86736_
           _ctx86738_))))
    (define gx#make-binding-id__1
      (lambda (_key86740_ _syntax?86741_)
        (let* ((_phi86743_ (gx#current-expander-phi))
               (_ctx86745_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86740_
           _syntax?86741_
           _phi86743_
           _ctx86745_))))
    (define gx#make-binding-id__2
      (lambda (_key86747_ _syntax?86748_ _phi86749_)
        (let ((_ctx86751_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86747_
           _syntax?86748_
           _phi86749_
           _ctx86751_))))
    (define gx#make-binding-id
      (lambda _g89751_
        (let ((_g89750_ (##length _g89751_)))
          (cond ((##fx= _g89750_ 1)
                 (apply (lambda (_key86732_)
                          (gx#make-binding-id__0 _key86732_))
                        _g89751_))
                ((##fx= _g89750_ 2)
                 (apply (lambda (_key86740_ _syntax?86741_)
                          (gx#make-binding-id__1 _key86740_ _syntax?86741_))
                        _g89751_))
                ((##fx= _g89750_ 3)
                 (apply (lambda (_key86747_ _syntax?86748_ _phi86749_)
                          (gx#make-binding-id__2
                           _key86747_
                           _syntax?86748_
                           _phi86749_))
                        _g89751_))
                ((##fx= _g89750_ 4)
                 (apply (lambda (_key86753_
                                 _syntax?86754_
                                 _phi86755_
                                 _ctx86756_)
                          (gx#make-binding-id__%
                           _key86753_
                           _syntax?86754_
                           _phi86755_
                           _ctx86756_))
                        _g89751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89751_))))))))
