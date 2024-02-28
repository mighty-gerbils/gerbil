(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709159707)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89702_)
        (letrec ((_expand-special89704_
                  (lambda (_hd89706_ _K89707_ _rest89708_ _r89709_)
                    (_K89707_
                     _rest89708_
                     (cons (gx#core-expand-top _hd89706_) _r89709_)))))
          (gx#core-expand-block__0 _stx89702_ _expand-special89704_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89455_)
        (letrec ((_expand-special89457_
                  (lambda (_hd89577_ _K89578_ _rest89579_ _r89580_)
                    (let* ((_K89584_
                            (lambda (_e89582_)
                              (_K89578_ _rest89579_ (cons _e89582_ _r89580_))))
                           (_e8958589614_ _hd89577_)
                           (_E8960989618_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8958589614_)))
                           (_E8960589630_
                            (lambda ()
                              (if (gx#stx-pair? _e8958589614_)
                                  (let ((_e8961089622_
                                         (gx#syntax-e _e8958589614_)))
                                    (let ((_hd8961189625_
                                           (##car _e8961089622_))
                                          (_tl8961289627_
                                           (##cdr _e8961089622_)))
                                      (if (and (gx#identifier? _hd8961189625_)
                                               (gx#core-identifier=?
                                                _hd8961189625_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89584_
                                               (gx#core-expand-define-runtime%
                                                _hd89577_))
                                              (_E8960989618_))
                                          (_E8960989618_))))
                                  (_E8960989618_))))
                           (_E8960189642_
                            (lambda ()
                              (if (gx#stx-pair? _e8958589614_)
                                  (let ((_e8960689634_
                                         (gx#syntax-e _e8958589614_)))
                                    (let ((_hd8960789637_
                                           (##car _e8960689634_))
                                          (_tl8960889639_
                                           (##cdr _e8960689634_)))
                                      (if (and (gx#identifier? _hd8960789637_)
                                               (gx#core-identifier=?
                                                _hd8960789637_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89584_
                                               (gx#core-expand-define-alias%
                                                _hd89577_))
                                              (_E8960589630_))
                                          (_E8960589630_))))
                                  (_E8960589630_))))
                           (_E8959189654_
                            (lambda ()
                              (if (gx#stx-pair? _e8958589614_)
                                  (let ((_e8960289646_
                                         (gx#syntax-e _e8958589614_)))
                                    (let ((_hd8960389649_
                                           (##car _e8960289646_))
                                          (_tl8960489651_
                                           (##cdr _e8960289646_)))
                                      (if (and (gx#identifier? _hd8960389649_)
                                               (gx#core-identifier=?
                                                _hd8960389649_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89584_
                                               (gx#core-expand-define-syntax%
                                                _hd89577_))
                                              (_E8960189642_))
                                          (_E8960189642_))))
                                  (_E8960189642_))))
                           (_E8958789686_
                            (lambda ()
                              (if (gx#stx-pair? _e8958589614_)
                                  (let ((_e8959289658_
                                         (gx#syntax-e _e8958589614_)))
                                    (let ((_hd8959389661_
                                           (##car _e8959289658_))
                                          (_tl8959489663_
                                           (##cdr _e8959289658_)))
                                      (if (and (gx#identifier? _hd8959389661_)
                                               (gx#core-identifier=?
                                                _hd8959389661_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8959489663_)
                                              (let ((_e8959589666_
                                                     (gx#syntax-e
                                                      _tl8959489663_)))
                                                (let ((_hd8959689669_
                                                       (##car _e8959589666_))
                                                      (_tl8959789671_
                                                       (##cdr _e8959589666_)))
                                                  (let ((_hd-bind89674_
                                                         _hd8959689669_))
                                                    (if (gx#stx-pair?
                                                         _tl8959789671_)
                                                        (let ((_e8959889676_
                                                               (gx#syntax-e
                                                                _tl8959789671_)))
                                                          (let ((_hd8959989679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8959889676_))
                        (_tl8960089681_ (##cdr _e8959889676_)))
                    (let ((_expr89684_ _hd8959989679_))
                      (if (gx#stx-null? _tl8960089681_)
                          (if (gx#core-bind-values? _hd-bind89674_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89674_)
                                (_K89584_ _hd89577_))
                              (_E8959189654_))
                          (_E8959189654_)))))
                (_E8959189654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8959189654_))
                                          (_E8959189654_))))
                                  (_E8959189654_))))
                           (_E8958689698_
                            (lambda ()
                              (if (gx#stx-pair? _e8958589614_)
                                  (let ((_e8958889690_
                                         (gx#syntax-e _e8958589614_)))
                                    (let ((_hd8958989693_
                                           (##car _e8958889690_))
                                          (_tl8959089695_
                                           (##cdr _e8958889690_)))
                                      (if (and (gx#identifier? _hd8958989693_)
                                               (gx#core-identifier=?
                                                _hd8958989693_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89584_
                                               (gx#core-expand-begin-syntax%
                                                _hd89577_))
                                              (_E8958789686_))
                                          (_E8958789686_))))
                                  (_E8958789686_)))))
                      (_E8958689698_))))
                 (_eval-body89458_
                  (lambda (_rbody89466_)
                    (let _lp89468_ ((_rest89470_ _rbody89466_)
                                    (_body89471_ '())
                                    (_ebody89472_ '()))
                      (let* ((_rest8947389481_ _rest89470_)
                             (_else8947589489_
                              (lambda ()
                                (values _body89471_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89472_)
                                          (gx#stx-source _stx89455_))))))
                             (_K8947789565_
                              (lambda (_rest89492_ _hd89493_)
                                (let* ((_e8949489511_ _hd89493_)
                                       (_E8950689515_
                                        (lambda ()
                                          (_lp89468_
                                           _rest89492_
                                           (cons _hd89493_ _body89471_)
                                           (cons _hd89493_ _ebody89472_))))
                                       (_E8949689527_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8949489511_)
                                              (let ((_e8950789519_
                                                     (gx#syntax-e
                                                      _e8949489511_)))
                                                (let ((_hd8950889522_
                                                       (##car _e8950789519_))
                                                      (_tl8950989524_
                                                       (##cdr _e8950789519_)))
                                                  (if (and (gx#identifier?
                                                            _hd8950889522_)
                                                           (gx#core-identifier=?
                                                            _hd8950889522_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89468_
                                                           _rest89492_
                                                           (cons _hd89493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89471_)
                   _ebody89472_)
                  (_E8950689515_))
              (_E8950689515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8950689515_))))
                                       (_E8949589561_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8949489511_)
                                              (let ((_e8949789531_
                                                     (gx#syntax-e
                                                      _e8949489511_)))
                                                (let ((_hd8949889534_
                                                       (##car _e8949789531_))
                                                      (_tl8949989536_
                                                       (##cdr _e8949789531_)))
                                                  (if (and (gx#identifier?
                                                            _hd8949889534_)
                                                           (gx#core-identifier=?
                                                            _hd8949889534_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8949989536_)
                                                          (let ((_e8950089539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8949989536_)))
                    (let ((_hd8950189542_ (##car _e8950089539_))
                          (_tl8950289544_ (##cdr _e8950089539_)))
                      (let ((_hd-bind89547_ _hd8950189542_))
                        (if (gx#stx-pair? _tl8950289544_)
                            (let ((_e8950389549_ (gx#syntax-e _tl8950289544_)))
                              (let ((_hd8950489552_ (##car _e8950389549_))
                                    (_tl8950589554_ (##cdr _e8950389549_)))
                                (let ((_expr89557_ _hd8950489552_))
                                  (if (gx#stx-null? _tl8950589554_)
                                      (if '#t
                                          (let ((_ehd89559_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89547_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89557_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89493_))))
                                            (_lp89468_
                                             _rest89492_
                                             (cons _ehd89559_ _body89471_)
                                             (cons _ehd89559_ _ebody89472_)))
                                          (_E8949689527_))
                                      (_E8949689527_)))))
                            (_E8949689527_)))))
                  (_E8949689527_))
              (_E8949689527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8949689527_)))))
                                  (_E8949589561_)))))
                        (if (##pair? _rest8947389481_)
                            (let ((_hd8947889568_ (##car _rest8947389481_))
                                  (_tl8947989570_ (##cdr _rest8947389481_)))
                              (let* ((_hd89573_ _hd8947889568_)
                                     (_rest89575_ _tl8947989570_))
                                (_K8947789565_ _rest89575_ _hd89573_)))
                            (_else8947589489_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89461_
                     (gx#core-expand-block__1
                      _stx89455_
                      _expand-special89457_
                      '#f))
                    (_g89725_ (_eval-body89458_ _rbody89461_)))
               (begin
                 (let ((_g89726_
                        (if (##values? _g89725_)
                            (##vector-length _g89725_)
                            1)))
                   (if (not (##fx= _g89726_ 2))
                       (error "Context expects 2 values" _g89726_)))
                 (let ((_expanded-body89463_ (##vector-ref _g89725_ 0))
                       (_value89464_ (##vector-ref _g89725_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89463_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89464_ '())))
                    (gx#stx-source _stx89455_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89425_)
        (let* ((_e8942689433_ _stx89425_)
               (_E8942889437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8942689433_)))
               (_E8942789451_
                (lambda ()
                  (if (gx#stx-pair? _e8942689433_)
                      (let ((_e8942989441_ (gx#syntax-e _e8942689433_)))
                        (let ((_hd8943089444_ (##car _e8942989441_))
                              (_tl8943189446_ (##cdr _e8942989441_)))
                          (let ((_body89449_ _tl8943189446_))
                            (if (gx#stx-list? _body89449_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89449_)
                                 (gx#stx-source _stx89425_))
                                (_E8942889437_)))))
                      (_E8942889437_)))))
          (_E8942789451_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89423_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89423_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx89369_)
        (let* ((_e8937089383_ _stx89369_)
               (_E8937289387_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8937089383_)))
               (_E8937189419_
                (lambda ()
                  (if (gx#stx-pair? _e8937089383_)
                      (let ((_e8937389391_ (gx#syntax-e _e8937089383_)))
                        (let ((_hd8937489394_ (##car _e8937389391_))
                              (_tl8937589396_ (##cdr _e8937389391_)))
                          (if (gx#stx-pair? _tl8937589396_)
                              (let ((_e8937689399_
                                     (gx#syntax-e _tl8937589396_)))
                                (let ((_hd8937789402_ (##car _e8937689399_))
                                      (_tl8937889404_ (##cdr _e8937689399_)))
                                  (let ((_ann89407_ _hd8937789402_))
                                    (if (gx#stx-pair? _tl8937889404_)
                                        (let ((_e8937989409_
                                               (gx#syntax-e _tl8937889404_)))
                                          (let ((_hd8938089412_
                                                 (##car _e8937989409_))
                                                (_tl8938189414_
                                                 (##cdr _e8937989409_)))
                                            (let ((_expr89417_ _hd8938089412_))
                                              (if (gx#stx-null? _tl8938189414_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann89407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr89417_) '())))
               (gx#stx-source _stx89369_))
              (_E8937289387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8937289387_)))))
                                        (_E8937289387_)))))
                              (_E8937289387_))))
                      (_E8937289387_)))))
          (_E8937189419_))))
    (define gx#core-expand-local-block
      (lambda (_stx89093_ _body89094_)
        (letrec ((_expand-special89096_
                  (lambda (_hd89364_ _K89365_ _rest89366_ _r89367_)
                    (_K89365_
                     '()
                     (cons (_expand-internal89097_ _hd89364_ _rest89366_)
                           _r89367_))))
                 (_expand-internal89097_
                  (lambda (_hd89360_ _rest89361_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal89099_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd89360_ _rest89361_))
                          (gx#stx-source _stx89093_))
                         _expand-internal-special89098_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89719
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89719)
                       __obj89719))))
                 (_expand-internal-special89098_
                  (lambda (_hd89255_ _K89256_ _rest89257_ _r89258_)
                    (let* ((_e8925989284_ _hd89255_)
                           (_E8927989288_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8925989284_)))
                           (_E8927589300_
                            (lambda ()
                              (if (gx#stx-pair? _e8925989284_)
                                  (let ((_e8928089292_
                                         (gx#syntax-e _e8925989284_)))
                                    (let ((_hd8928189295_
                                           (##car _e8928089292_))
                                          (_tl8928289297_
                                           (##cdr _e8928089292_)))
                                      (if (and (gx#identifier? _hd8928189295_)
                                               (gx#core-identifier=?
                                                _hd8928189295_
                                                '%#declare))
                                          (if '#t
                                              (_K89256_
                                               _rest89257_
                                               (cons (gx#core-expand-declare%
                                                      _hd89255_)
                                                     _r89258_))
                                              (_E8927989288_))
                                          (_E8927989288_))))
                                  (_E8927989288_))))
                           (_E8927189312_
                            (lambda ()
                              (if (gx#stx-pair? _e8925989284_)
                                  (let ((_e8927689304_
                                         (gx#syntax-e _e8925989284_)))
                                    (let ((_hd8927789307_
                                           (##car _e8927689304_))
                                          (_tl8927889309_
                                           (##cdr _e8927689304_)))
                                      (if (and (gx#identifier? _hd8927789307_)
                                               (gx#core-identifier=?
                                                _hd8927789307_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd89255_)
                                                (_K89256_
                                                 _rest89257_
                                                 _r89258_))
                                              (_E8927589300_))
                                          (_E8927589300_))))
                                  (_E8927589300_))))
                           (_E8926189324_
                            (lambda ()
                              (if (gx#stx-pair? _e8925989284_)
                                  (let ((_e8927289316_
                                         (gx#syntax-e _e8925989284_)))
                                    (let ((_hd8927389319_
                                           (##car _e8927289316_))
                                          (_tl8927489321_
                                           (##cdr _e8927289316_)))
                                      (if (and (gx#identifier? _hd8927389319_)
                                               (gx#core-identifier=?
                                                _hd8927389319_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd89255_)
                                                (_K89256_
                                                 _rest89257_
                                                 _r89258_))
                                              (_E8927189312_))
                                          (_E8927189312_))))
                                  (_E8927189312_))))
                           (_E8926089356_
                            (lambda ()
                              (if (gx#stx-pair? _e8925989284_)
                                  (let ((_e8926289328_
                                         (gx#syntax-e _e8925989284_)))
                                    (let ((_hd8926389331_
                                           (##car _e8926289328_))
                                          (_tl8926489333_
                                           (##cdr _e8926289328_)))
                                      (if (and (gx#identifier? _hd8926389331_)
                                               (gx#core-identifier=?
                                                _hd8926389331_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8926489333_)
                                              (let ((_e8926589336_
                                                     (gx#syntax-e
                                                      _tl8926489333_)))
                                                (let ((_hd8926689339_
                                                       (##car _e8926589336_))
                                                      (_tl8926789341_
                                                       (##cdr _e8926589336_)))
                                                  (let ((_hd-bind89344_
                                                         _hd8926689339_))
                                                    (if (gx#stx-pair?
                                                         _tl8926789341_)
                                                        (let ((_e8926889346_
                                                               (gx#syntax-e
                                                                _tl8926789341_)))
                                                          (let ((_hd8926989349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8926889346_))
                        (_tl8927089351_ (##cdr _e8926889346_)))
                    (let ((_expr89354_ _hd8926989349_))
                      (if (gx#stx-null? _tl8927089351_)
                          (if (gx#core-bind-values? _hd-bind89344_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89344_)
                                (_K89256_
                                 _rest89257_
                                 (cons _hd89255_ _r89258_)))
                              (_E8926189324_))
                          (_E8926189324_)))))
                (_E8926189324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8926189324_))
                                          (_E8926189324_))))
                                  (_E8926189324_)))))
                      (_E8926089356_))))
                 (_wrap-internal89099_
                  (lambda (_rbody89101_)
                    (let _lp89103_ ((_rest89105_ _rbody89101_)
                                    (_decls89106_ '())
                                    (_bind89107_ '())
                                    (_body89108_ '()))
                      (let* ((_e8910989116_ _rest89105_)
                             (_E8911189165_
                              (lambda ()
                                (let* ((_body89160_
                                        (let* ((_body8911989129_ _body89108_)
                                               (_else8912289137_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89108_)
                                                   (gx#stx-source
                                                    _stx89093_)))))
                                          (let ((_K8912789157_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx89093_)))
                                                (_K8912489143_
                                                 (lambda (_expr89141_)
                                                   _expr89141_)))
                                            (let ((_try-match8912189153_
                                                   (lambda ()
                                                     (if (##pair? _body8911989129_)
                                                         (let ((_tl8912689148_
                                                                (##cdr _body8911989129_))
                                                               (_hd8912589146_
                                                                (##car _body8911989129_)))
                                                           (if (##null? _tl8912689148_)
                                                               (let ((_expr89151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8912589146_))
                         (_K8912489143_ _expr89151_))
                       (_else8912289137_)))
                 (_else8912289137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8911989129_)
                                                  (_K8912789157_)
                                                  (_try-match8912189153_))))))
                                       (_body89162_
                                        (if (null? _bind89107_)
                                            _body89160_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind89107_
                                                         (cons _body89160_
                                                               '())))
                                             (gx#stx-source _stx89093_)))))
                                  (if (null? _decls89106_)
                                      _body89162_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls89106_
                                                   (cons _body89162_ '())))
                                       (gx#stx-source _stx89093_))))))
                             (_E8911089251_
                              (lambda ()
                                (if (gx#stx-pair? _e8910989116_)
                                    (let ((_e8911289169_
                                           (gx#syntax-e _e8910989116_)))
                                      (let ((_hd8911389172_
                                             (##car _e8911289169_))
                                            (_tl8911489174_
                                             (##cdr _e8911289169_)))
                                        (let* ((_hd89177_ _hd8911389172_)
                                               (_rest89179_ _tl8911489174_))
                                          (if '#t
                                              (let* ((_e8918089197_ _hd89177_)
                                                     (_E8919289201_
                                                      (lambda ()
                                                        (if (null? _bind89107_)
                                                            (_lp89103_
                                                             _rest89179_
                                                             _decls89106_
                                                             _bind89107_
                                                             (cons _hd89177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body89108_))
                    (_lp89103_
                     _rest89179_
                     _decls89106_
                     (cons (cons '#f (cons _hd89177_ '())) _bind89107_)
                     _body89108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8918289215_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8918089197_)
                                                            (let ((_e8919389205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8918089197_)))
                      (let ((_hd8919489208_ (##car _e8919389205_))
                            (_tl8919589210_ (##cdr _e8919389205_)))
                        (if (and (gx#identifier? _hd8919489208_)
                                 (gx#core-identifier=?
                                  _hd8919489208_
                                  '%#declare))
                            (let ((_xdecls89213_ _tl8919589210_))
                              (if '#t
                                  (_lp89103_
                                   _rest89179_
                                   (gx#stx-foldr
                                    cons
                                    _decls89106_
                                    _xdecls89213_)
                                   _bind89107_
                                   _body89108_)
                                  (_E8919289201_)))
                            (_E8919289201_))))
                    (_E8919289201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8918189247_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8918089197_)
                                                            (let ((_e8918389219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8918089197_)))
                      (let ((_hd8918489222_ (##car _e8918389219_))
                            (_tl8918589224_ (##cdr _e8918389219_)))
                        (if (and (gx#identifier? _hd8918489222_)
                                 (gx#core-identifier=?
                                  _hd8918489222_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8918589224_)
                                (let ((_e8918689227_
                                       (gx#syntax-e _tl8918589224_)))
                                  (let ((_hd8918789230_ (##car _e8918689227_))
                                        (_tl8918889232_ (##cdr _e8918689227_)))
                                    (let ((_hd-bind89235_ _hd8918789230_))
                                      (if (gx#stx-pair? _tl8918889232_)
                                          (let ((_e8918989237_
                                                 (gx#syntax-e _tl8918889232_)))
                                            (let ((_hd8919089240_
                                                   (##car _e8918989237_))
                                                  (_tl8919189242_
                                                   (##cdr _e8918989237_)))
                                              (let ((_expr89245_
                                                     _hd8919089240_))
                                                (if (gx#stx-null?
                                                     _tl8919189242_)
                                                    (if '#t
                                                        (_lp89103_
                                                         _rest89179_
                                                         _decls89106_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind89235_)
                             (cons (gx#core-expand-expression _expr89245_)
                                   '()))
                       _bind89107_)
                 _body89108_)
                (_E8918289215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8918289215_)))))
                                          (_E8918289215_)))))
                                (_E8918289215_))
                            (_E8918289215_))))
                    (_E8918289215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8918189247_))
                                              (_E8911189165_)))))
                                    (_E8911189165_)))))
                        (_E8911089251_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body89094_)
            (gx#stx-source _stx89093_))
           _expand-special89096_))))
    (define gx#core-expand-declare%
      (lambda (_stx89031_)
        (let* ((_e8903289039_ _stx89031_)
               (_E8903489043_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8903289039_)))
               (_E8903389089_
                (lambda ()
                  (if (gx#stx-pair? _e8903289039_)
                      (let ((_e8903589047_ (gx#syntax-e _e8903289039_)))
                        (let ((_hd8903689050_ (##car _e8903589047_))
                              (_tl8903789052_ (##cdr _e8903589047_)))
                          (let ((_body89055_ _tl8903789052_))
                            (if (gx#stx-list? _body89055_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89057_)
                                     (let* ((_e8905889065_ _decl89057_)
                                            (_E8906089069_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8905889065_)))
                                            (_E8905989085_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8905889065_)
                                                   (let ((_e8906189073_
                                                          (gx#syntax-e
                                                           _e8905889065_)))
                                                     (let ((_hd8906289076_
                                                            (##car _e8906189073_))
                                                           (_tl8906389078_
                                                            (##cdr _e8906189073_)))
                                                       (let* ((_head89081_
                                                               _hd8906289076_)
                                                              (_args89083_
                                                               _tl8906389078_))
                                                         (if (gx#stx-list?
                                                              _args89083_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89057_)
                                                             (_E8906089069_)))))
                                                   (_E8906089069_)))))
                                       (_E8905989085_)))
                                   _body89055_))
                                 (gx#stx-source _stx89031_))
                                (_E8903489043_)))))
                      (_E8903489043_)))))
          (_E8903389089_))))
    (define gx#core-expand-extern%
      (lambda (_stx88935_)
        (let* ((_e8893688943_ _stx88935_)
               (_E8893888947_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8893688943_)))
               (_E8893789027_
                (lambda ()
                  (if (gx#stx-pair? _e8893688943_)
                      (let ((_e8893988951_ (gx#syntax-e _e8893688943_)))
                        (let ((_hd8894088954_ (##car _e8893988951_))
                              (_tl8894188956_ (##cdr _e8893988951_)))
                          (let ((_body88959_ _tl8894188956_))
                            (if '#t
                                (let _lp88961_ ((_rest88963_ _body88959_)
                                                (_r88964_ '()))
                                  (let* ((_e8896588979_ _rest88963_)
                                         (_E8897788983_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88935_)))
                                         (_E8896788987_
                                          (lambda ()
                                            (if (gx#stx-null? _e8896588979_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88964_))
                                                     (gx#stx-source
                                                      _stx88935_))
                                                    (_E8897788983_))
                                                (_E8897788983_))))
                                         (_E8896689023_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8896588979_)
                                                (let ((_e8896888991_
                                                       (gx#syntax-e
                                                        _e8896588979_)))
                                                  (let ((_hd8896988994_
                                                         (##car _e8896888991_))
                                                        (_tl8897088996_
                                                         (##cdr _e8896888991_)))
                                                    (if (gx#stx-pair?
                                                         _hd8896988994_)
                                                        (let ((_e8897188999_
                                                               (gx#syntax-e
                                                                _hd8896988994_)))
                                                          (let ((_hd8897289002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8897188999_))
                        (_tl8897389004_ (##cdr _e8897188999_)))
                    (let ((_id89007_ _hd8897289002_))
                      (if (gx#stx-pair? _tl8897389004_)
                          (let ((_e8897489009_ (gx#syntax-e _tl8897389004_)))
                            (let ((_hd8897589012_ (##car _e8897489009_))
                                  (_tl8897689014_ (##cdr _e8897489009_)))
                              (let ((_eid89017_ _hd8897589012_))
                                (if (gx#stx-null? _tl8897689014_)
                                    (let ((_rest89019_ _tl8897088996_))
                                      (if (and (gx#identifier? _id89007_)
                                               (gx#identifier? _eid89017_))
                                          (let ((_eid89021_
                                                 (gx#stx-e _eid89017_)))
                                            (gx#core-bind-extern!__0
                                             _id89007_
                                             _eid89021_)
                                            (_lp88961_
                                             _rest89019_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89007_)
                                                         (cons _eid89021_ '()))
                                                   _r88964_)))
                                          (_E8896788987_)))
                                    (_E8896788987_)))))
                          (_E8896788987_)))))
                (_E8896788987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8896788987_)))))
                                    (_E8896689023_)))
                                (_E8893888947_)))))
                      (_E8893888947_)))))
          (_E8893789027_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88881_)
        (let* ((_e8888288895_ _stx88881_)
               (_E8888488899_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8888288895_)))
               (_E8888388931_
                (lambda ()
                  (if (gx#stx-pair? _e8888288895_)
                      (let ((_e8888588903_ (gx#syntax-e _e8888288895_)))
                        (let ((_hd8888688906_ (##car _e8888588903_))
                              (_tl8888788908_ (##cdr _e8888588903_)))
                          (if (gx#stx-pair? _tl8888788908_)
                              (let ((_e8888888911_
                                     (gx#syntax-e _tl8888788908_)))
                                (let ((_hd8888988914_ (##car _e8888888911_))
                                      (_tl8889088916_ (##cdr _e8888888911_)))
                                  (let ((_hd88919_ _hd8888988914_))
                                    (if (gx#stx-pair? _tl8889088916_)
                                        (let ((_e8889188921_
                                               (gx#syntax-e _tl8889088916_)))
                                          (let ((_hd8889288924_
                                                 (##car _e8889188921_))
                                                (_tl8889388926_
                                                 (##cdr _e8889188921_)))
                                            (let ((_expr88929_ _hd8889288924_))
                                              (if (gx#stx-null? _tl8889388926_)
                                                  (if (gx#core-bind-values?
                                                       _hd88919_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88919_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88919_)
                             (cons (gx#core-expand-expression _expr88929_)
                                   '())))
                 (gx#stx-source _stx88881_)))
              (_E8888488899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8888488899_)))))
                                        (_E8888488899_)))))
                              (_E8888488899_))))
                      (_E8888488899_)))))
          (_E8888388931_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88825_)
        (let* ((_e8882688839_ _stx88825_)
               (_E8882888843_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8882688839_)))
               (_E8882788877_
                (lambda ()
                  (if (gx#stx-pair? _e8882688839_)
                      (let ((_e8882988847_ (gx#syntax-e _e8882688839_)))
                        (let ((_hd8883088850_ (##car _e8882988847_))
                              (_tl8883188852_ (##cdr _e8882988847_)))
                          (if (gx#stx-pair? _tl8883188852_)
                              (let ((_e8883288855_
                                     (gx#syntax-e _tl8883188852_)))
                                (let ((_hd8883388858_ (##car _e8883288855_))
                                      (_tl8883488860_ (##cdr _e8883288855_)))
                                  (let ((_id88863_ _hd8883388858_))
                                    (if (gx#stx-pair? _tl8883488860_)
                                        (let ((_e8883588865_
                                               (gx#syntax-e _tl8883488860_)))
                                          (let ((_hd8883688868_
                                                 (##car _e8883588865_))
                                                (_tl8883788870_
                                                 (##cdr _e8883588865_)))
                                            (let ((_binding-id88873_
                                                   _hd8883688868_))
                                              (if (gx#stx-null? _tl8883788870_)
                                                  (if (and (gx#identifier?
                                                            _id88863_)
                                                           (gx#identifier?
                                                            _binding-id88873_))
                                                      (let ((_eid88875_
                                                             (gx#stx-e
                                                              _binding-id88873_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88863_
                                                         _eid88875_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88863_)
                             (cons _eid88875_ '())))))
              (_E8882888843_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8882888843_)))))
                                        (_E8882888843_)))))
                              (_E8882888843_))))
                      (_E8882888843_)))))
          (_E8882788877_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88768_)
        (let* ((_e8876988782_ _stx88768_)
               (_E8877188786_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876988782_)))
               (_E8877088821_
                (lambda ()
                  (if (gx#stx-pair? _e8876988782_)
                      (let ((_e8877288790_ (gx#syntax-e _e8876988782_)))
                        (let ((_hd8877388793_ (##car _e8877288790_))
                              (_tl8877488795_ (##cdr _e8877288790_)))
                          (if (gx#stx-pair? _tl8877488795_)
                              (let ((_e8877588798_
                                     (gx#syntax-e _tl8877488795_)))
                                (let ((_hd8877688801_ (##car _e8877588798_))
                                      (_tl8877788803_ (##cdr _e8877588798_)))
                                  (let ((_id88806_ _hd8877688801_))
                                    (if (gx#stx-pair? _tl8877788803_)
                                        (let ((_e8877888808_
                                               (gx#syntax-e _tl8877788803_)))
                                          (let ((_hd8877988811_
                                                 (##car _e8877888808_))
                                                (_tl8878088813_
                                                 (##cdr _e8877888808_)))
                                            (let ((_expr88816_ _hd8877988811_))
                                              (if (gx#stx-null? _tl8878088813_)
                                                  (if (gx#identifier?
                                                       _id88806_)
                                                      (let ((_g89727_
                                                             (gx#core-expand-expression+1
                                                              _expr88816_)))
                                                        (begin
                                                          (let ((_g89728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89727_)
                             (##vector-length _g89727_)
                             1)))
                    (if (not (##fx= _g89728_ 2))
                        (error "Context expects 2 values" _g89728_)))
                  (let ((_e-stx88818_ (##vector-ref _g89727_ 0))
                        (_e88819_ (##vector-ref _g89727_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88806_ _e88819_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88806_)
                                   (cons _e-stx88818_ '())))
                       (gx#stx-source _stx88768_))))))
              (_E8877188786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8877188786_)))))
                                        (_E8877188786_)))))
                              (_E8877188786_))))
                      (_E8877188786_)))))
          (_E8877088821_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88712_)
        (let* ((_e8871388726_ _stx88712_)
               (_E8871588730_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8871388726_)))
               (_E8871488764_
                (lambda ()
                  (if (gx#stx-pair? _e8871388726_)
                      (let ((_e8871688734_ (gx#syntax-e _e8871388726_)))
                        (let ((_hd8871788737_ (##car _e8871688734_))
                              (_tl8871888739_ (##cdr _e8871688734_)))
                          (if (gx#stx-pair? _tl8871888739_)
                              (let ((_e8871988742_
                                     (gx#syntax-e _tl8871888739_)))
                                (let ((_hd8872088745_ (##car _e8871988742_))
                                      (_tl8872188747_ (##cdr _e8871988742_)))
                                  (let ((_id88750_ _hd8872088745_))
                                    (if (gx#stx-pair? _tl8872188747_)
                                        (let ((_e8872288752_
                                               (gx#syntax-e _tl8872188747_)))
                                          (let ((_hd8872388755_
                                                 (##car _e8872288752_))
                                                (_tl8872488757_
                                                 (##cdr _e8872288752_)))
                                            (let ((_alias-id88760_
                                                   _hd8872388755_))
                                              (if (gx#stx-null? _tl8872488757_)
                                                  (if (and (gx#identifier?
                                                            _id88750_)
                                                           (gx#identifier?
                                                            _alias-id88760_))
                                                      (let ((_alias-id88762_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88760_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88750_
                                                         _alias-id88762_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88750_)
                             (cons _alias-id88762_ '())))))
              (_E8871588730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8871588730_)))))
                                        (_E8871588730_)))))
                              (_E8871588730_))))
                      (_E8871588730_)))))
          (_E8871488764_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88655_ _wrap?88656_)
        (let* ((_e8865788667_ _stx88655_)
               (_E8865988671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8865788667_)))
               (_E8865888698_
                (lambda ()
                  (if (gx#stx-pair? _e8865788667_)
                      (let ((_e8866088675_ (gx#syntax-e _e8865788667_)))
                        (let ((_hd8866188678_ (##car _e8866088675_))
                              (_tl8866288680_ (##cdr _e8866088675_)))
                          (if (gx#stx-pair? _tl8866288680_)
                              (let ((_e8866388683_
                                     (gx#syntax-e _tl8866288680_)))
                                (let ((_hd8866488686_ (##car _e8866388683_))
                                      (_tl8866588688_ (##cdr _e8866388683_)))
                                  (let* ((_hd88691_ _hd8866488686_)
                                         (_body88693_ _tl8866588688_))
                                    (if (gx#core-bind-values? _hd88691_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88691_)
                                           (let ((_body88696_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88691_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88655_
                                                               _body88693_)
                                                              '()))))
                                             (if _wrap?88656_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88696_)
                                                  (gx#stx-source _stx88655_))
                                                 _body88696_)))
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
                                        (_E8865988671_)))))
                              (_E8865988671_))))
                      (_E8865988671_)))))
          (_E8865888698_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88705_)
        (let ((_wrap?88707_ '#t))
          (gx#core-expand-lambda%__% _stx88705_ _wrap?88707_))))
    (define gx#core-expand-lambda%
      (lambda _g89730_
        (let ((_g89729_ (##length _g89730_)))
          (cond ((##fx= _g89729_ 1)
                 (apply (lambda (_stx88705_)
                          (gx#core-expand-lambda%__0 _stx88705_))
                        _g89730_))
                ((##fx= _g89729_ 2)
                 (apply (lambda (_stx88709_ _wrap?88710_)
                          (gx#core-expand-lambda%__% _stx88709_ _wrap?88710_))
                        _g89730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89730_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88619_)
        (let* ((_e8862088627_ _stx88619_)
               (_E8862288631_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8862088627_)))
               (_E8862188650_
                (lambda ()
                  (if (gx#stx-pair? _e8862088627_)
                      (let ((_e8862388635_ (gx#syntax-e _e8862088627_)))
                        (let ((_hd8862488638_ (##car _e8862388635_))
                              (_tl8862588640_ (##cdr _e8862388635_)))
                          (let ((_clauses88643_ _tl8862588640_))
                            (if (gx#stx-list? _clauses88643_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88645_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88645_)
                                       (let ((_$e88647_
                                              (gx#stx-source _clause88645_)))
                                         (if _$e88647_
                                             _$e88647_
                                             (gx#stx-source _stx88619_))))
                                      '#f))
                                   _clauses88643_))
                                 (gx#stx-source _stx88619_))
                                (_E8862288631_)))))
                      (_E8862288631_)))))
          (_E8862188650_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88573_)
        (let* ((_e8857488584_ _stx88573_)
               (_E8857688588_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8857488584_)))
               (_E8857588615_
                (lambda ()
                  (if (gx#stx-pair? _e8857488584_)
                      (let ((_e8857788592_ (gx#syntax-e _e8857488584_)))
                        (let ((_hd8857888595_ (##car _e8857788592_))
                              (_tl8857988597_ (##cdr _e8857788592_)))
                          (if (gx#stx-pair? _tl8857988597_)
                              (let ((_e8858088600_
                                     (gx#syntax-e _tl8857988597_)))
                                (let ((_hd8858188603_ (##car _e8858088600_))
                                      (_tl8858288605_ (##cdr _e8858088600_)))
                                  (let* ((_hd88608_ _hd8858188603_)
                                         (_body88610_ _tl8858288605_))
                                    (if (gx#core-expand-let-bind? _hd88608_)
                                        (let ((_expressions88612_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88608_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88608_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88608_
                                                           _expressions88612_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88573_
                         _body88610_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88573_)))
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
                                        (_E8857688588_)))))
                              (_E8857688588_))))
                      (_E8857688588_)))))
          (_E8857588615_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88518_ _form88519_)
        (let* ((_e8852088530_ _stx88518_)
               (_E8852288534_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8852088530_)))
               (_E8852188559_
                (lambda ()
                  (if (gx#stx-pair? _e8852088530_)
                      (let ((_e8852388538_ (gx#syntax-e _e8852088530_)))
                        (let ((_hd8852488541_ (##car _e8852388538_))
                              (_tl8852588543_ (##cdr _e8852388538_)))
                          (if (gx#stx-pair? _tl8852588543_)
                              (let ((_e8852688546_
                                     (gx#syntax-e _tl8852588543_)))
                                (let ((_hd8852788549_ (##car _e8852688546_))
                                      (_tl8852888551_ (##cdr _e8852688546_)))
                                  (let* ((_hd88554_ _hd8852788549_)
                                         (_body88556_ _tl8852888551_))
                                    (if (gx#core-expand-let-bind? _hd88554_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88554_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88519_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88554_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88554_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88518_
                                                               _body88556_)
                                                              '())))
                                            (gx#stx-source _stx88518_)))
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
                                        (_E8852288534_)))))
                              (_E8852288534_))))
                      (_E8852288534_)))))
          (_E8852188559_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88566_)
        (let ((_form88568_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88566_ _form88568_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89732_
        (let ((_g89731_ (##length _g89732_)))
          (cond ((##fx= _g89731_ 1)
                 (apply (lambda (_stx88566_)
                          (gx#core-expand-letrec-values%__0 _stx88566_))
                        _g89732_))
                ((##fx= _g89731_ 2)
                 (apply (lambda (_stx88570_ _form88571_)
                          (gx#core-expand-letrec-values%__%
                           _stx88570_
                           _form88571_))
                        _g89732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89732_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88515_)
        (gx#core-expand-letrec-values%__% _stx88515_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88472_)
        (if (gx#stx-list? _stx88472_)
            (gx#stx-andmap
             (lambda (_bind88474_)
               (let* ((_e8847588485_ _bind88474_)
                      (_E8847788489_ (lambda () '#f))
                      (_E8847688511_
                       (lambda ()
                         (if (gx#stx-pair? _e8847588485_)
                             (let ((_e8847888493_ (gx#syntax-e _e8847588485_)))
                               (let ((_hd8847988496_ (##car _e8847888493_))
                                     (_tl8848088498_ (##cdr _e8847888493_)))
                                 (let ((_hd88501_ _hd8847988496_))
                                   (if (gx#stx-pair? _tl8848088498_)
                                       (let ((_e8848188503_
                                              (gx#syntax-e _tl8848088498_)))
                                         (let ((_hd8848288506_
                                                (##car _e8848188503_))
                                               (_tl8848388508_
                                                (##cdr _e8848188503_)))
                                           (if (gx#stx-null? _tl8848388508_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88501_)
                                                   (_E8847788489_))
                                               (_E8847788489_))))
                                       (_E8847788489_)))))
                             (_E8847788489_)))))
                 (_E8847688511_)))
             _stx88472_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88431_)
        (let* ((_e8843288442_ _bind88431_)
               (_E8843488446_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8843288442_)))
               (_E8843388468_
                (lambda ()
                  (if (gx#stx-pair? _e8843288442_)
                      (let ((_e8843588450_ (gx#syntax-e _e8843288442_)))
                        (let ((_hd8843688453_ (##car _e8843588450_))
                              (_tl8843788455_ (##cdr _e8843588450_)))
                          (if (gx#stx-pair? _tl8843788455_)
                              (let ((_e8843888458_
                                     (gx#syntax-e _tl8843788455_)))
                                (let ((_hd8843988461_ (##car _e8843888458_))
                                      (_tl8844088463_ (##cdr _e8843888458_)))
                                  (let ((_expr88466_ _hd8843988461_))
                                    (if (gx#stx-null? _tl8844088463_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88466_)
                                            (_E8843488446_))
                                        (_E8843488446_)))))
                              (_E8843488446_))))
                      (_E8843488446_)))))
          (_E8843388468_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind88390_)
        (let* ((_e8839188401_ _bind88390_)
               (_E8839388405_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8839188401_)))
               (_E8839288427_
                (lambda ()
                  (if (gx#stx-pair? _e8839188401_)
                      (let ((_e8839488409_ (gx#syntax-e _e8839188401_)))
                        (let ((_hd8839588412_ (##car _e8839488409_))
                              (_tl8839688414_ (##cdr _e8839488409_)))
                          (let ((_hd88417_ _hd8839588412_))
                            (if (gx#stx-pair? _tl8839688414_)
                                (let ((_e8839788419_
                                       (gx#syntax-e _tl8839688414_)))
                                  (let ((_hd8839888422_ (##car _e8839788419_))
                                        (_tl8839988424_ (##cdr _e8839788419_)))
                                    (if (gx#stx-null? _tl8839988424_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd88417_)
                                            (_E8839388405_))
                                        (_E8839388405_))))
                                (_E8839388405_)))))
                      (_E8839388405_)))))
          (_E8839288427_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind88348_ _expr88349_)
        (let* ((_e8835088360_ _bind88348_)
               (_E8835288364_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8835088360_)))
               (_E8835188386_
                (lambda ()
                  (if (gx#stx-pair? _e8835088360_)
                      (let ((_e8835388368_ (gx#syntax-e _e8835088360_)))
                        (let ((_hd8835488371_ (##car _e8835388368_))
                              (_tl8835588373_ (##cdr _e8835388368_)))
                          (let ((_hd88376_ _hd8835488371_))
                            (if (gx#stx-pair? _tl8835588373_)
                                (let ((_e8835688378_
                                       (gx#syntax-e _tl8835588373_)))
                                  (let ((_hd8835788381_ (##car _e8835688378_))
                                        (_tl8835888383_ (##cdr _e8835688378_)))
                                    (if (gx#stx-null? _tl8835888383_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd88376_)
                                                  (cons _expr88349_ '()))
                                            (_E8835288364_))
                                        (_E8835288364_))))
                                (_E8835288364_)))))
                      (_E8835288364_)))))
          (_E8835188386_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx88302_)
        (let* ((_e8830388313_ _stx88302_)
               (_E8830588317_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8830388313_)))
               (_E8830488344_
                (lambda ()
                  (if (gx#stx-pair? _e8830388313_)
                      (let ((_e8830688321_ (gx#syntax-e _e8830388313_)))
                        (let ((_hd8830788324_ (##car _e8830688321_))
                              (_tl8830888326_ (##cdr _e8830688321_)))
                          (if (gx#stx-pair? _tl8830888326_)
                              (let ((_e8830988329_
                                     (gx#syntax-e _tl8830888326_)))
                                (let ((_hd8831088332_ (##car _e8830988329_))
                                      (_tl8831188334_ (##cdr _e8830988329_)))
                                  (let* ((_hd88337_ _hd8831088332_)
                                         (_body88339_ _tl8831188334_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88337_)
                                        (let ((_expanders88341_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd88337_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd88337_
                                              _expanders88341_)
                                             (gx#core-expand-local-block
                                              _stx88302_
                                              _body88339_))
                                           gx#current-expander-context
                                           (let ((__obj89723
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89723)
                                             __obj89723)))
                                        (_E8830588317_)))))
                              (_E8830588317_))))
                      (_E8830588317_)))))
          (_E8830488344_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx88251_)
        (let* ((_e8825288262_ _stx88251_)
               (_E8825488266_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8825288262_)))
               (_E8825388298_
                (lambda ()
                  (if (gx#stx-pair? _e8825288262_)
                      (let ((_e8825588270_ (gx#syntax-e _e8825288262_)))
                        (let ((_hd8825688273_ (##car _e8825588270_))
                              (_tl8825788275_ (##cdr _e8825588270_)))
                          (if (gx#stx-pair? _tl8825788275_)
                              (let ((_e8825888278_
                                     (gx#syntax-e _tl8825788275_)))
                                (let ((_hd8825988281_ (##car _e8825888278_))
                                      (_tl8826088283_ (##cdr _e8825888278_)))
                                  (let* ((_hd88286_ _hd8825988281_)
                                         (_body88288_ _tl8826088283_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88286_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd88286_
                                            (make-list__%
                                             (gx#stx-length _hd88286_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8829088293_
                                                     _g8829188295_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8829088293_
                                               _g8829188295_
                                               '#t))
                                            _hd88286_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd88286_))
                                           (gx#core-expand-local-block
                                            _stx88251_
                                            _body88288_))
                                         gx#current-expander-context
                                         (let ((__obj89724
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89724)
                                           __obj89724))
                                        (_E8825488266_)))))
                              (_E8825488266_))))
                      (_E8825488266_)))))
          (_E8825388298_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx88208_)
        (if (gx#stx-list? _stx88208_)
            (gx#stx-andmap
             (lambda (_bind88210_)
               (let* ((_e8821188221_ _bind88210_)
                      (_E8821388225_ (lambda () '#f))
                      (_E8821288247_
                       (lambda ()
                         (if (gx#stx-pair? _e8821188221_)
                             (let ((_e8821488229_ (gx#syntax-e _e8821188221_)))
                               (let ((_hd8821588232_ (##car _e8821488229_))
                                     (_tl8821688234_ (##cdr _e8821488229_)))
                                 (let ((_hd88237_ _hd8821588232_))
                                   (if (gx#stx-pair? _tl8821688234_)
                                       (let ((_e8821788239_
                                              (gx#syntax-e _tl8821688234_)))
                                         (let ((_hd8821888242_
                                                (##car _e8821788239_))
                                               (_tl8821988244_
                                                (##cdr _e8821788239_)))
                                           (if (gx#stx-null? _tl8821988244_)
                                               (if '#t
                                                   (gx#identifier? _hd88237_)
                                                   (_E8821388225_))
                                               (_E8821388225_))))
                                       (_E8821388225_)))))
                             (_E8821388225_)))))
                 (_E8821288247_)))
             _stx88208_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind88165_)
        (let* ((_e8816688176_ _bind88165_)
               (_E8816888180_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8816688176_)))
               (_E8816788204_
                (lambda ()
                  (if (gx#stx-pair? _e8816688176_)
                      (let ((_e8816988184_ (gx#syntax-e _e8816688176_)))
                        (let ((_hd8817088187_ (##car _e8816988184_))
                              (_tl8817188189_ (##cdr _e8816988184_)))
                          (if (gx#stx-pair? _tl8817188189_)
                              (let ((_e8817288192_
                                     (gx#syntax-e _tl8817188189_)))
                                (let ((_hd8817388195_ (##car _e8817288192_))
                                      (_tl8817488197_ (##cdr _e8817288192_)))
                                  (let ((_expr88200_ _hd8817388195_))
                                    (if (gx#stx-null? _tl8817488197_)
                                        (if '#t
                                            (let ((_g89733_
                                                   (gx#core-expand-expression+1
                                                    _expr88200_)))
                                              (begin
                                                (let ((_g89734_
                                                       (if (##values? _g89733_)
                                                           (##vector-length
                                                            _g89733_)
                                                           1)))
                                                  (if (not (##fx= _g89734_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89734_)))
                                                (let ((_e88202_
                                                       (##vector-ref
                                                        _g89733_
                                                        1)))
                                                  _e88202_)))
                                            (_E8816888180_))
                                        (_E8816888180_)))))
                              (_E8816888180_))))
                      (_E8816888180_)))))
          (_E8816788204_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind88110_ _e88111_ _rebind?88112_)
        (let* ((_e8811388123_ _bind88110_)
               (_E8811588127_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8811388123_)))
               (_E8811488149_
                (lambda ()
                  (if (gx#stx-pair? _e8811388123_)
                      (let ((_e8811688131_ (gx#syntax-e _e8811388123_)))
                        (let ((_hd8811788134_ (##car _e8811688131_))
                              (_tl8811888136_ (##cdr _e8811688131_)))
                          (let ((_id88139_ _hd8811788134_))
                            (if (gx#stx-pair? _tl8811888136_)
                                (let ((_e8811988141_
                                       (gx#syntax-e _tl8811888136_)))
                                  (let ((_hd8812088144_ (##car _e8811988141_))
                                        (_tl8812188146_ (##cdr _e8811988141_)))
                                    (if (gx#stx-null? _tl8812188146_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id88139_
                                             _e88111_
                                             _rebind?88112_)
                                            (_E8811588127_))
                                        (_E8811588127_))))
                                (_E8811588127_)))))
                      (_E8811588127_)))))
          (_E8811488149_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind88156_ _e88157_)
        (let ((_rebind?88159_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind88156_
           _e88157_
           _rebind?88159_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89736_
        (let ((_g89735_ (##length _g89736_)))
          (cond ((##fx= _g89735_ 2)
                 (apply (lambda (_bind88156_ _e88157_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind88156_
                           _e88157_))
                        _g89736_))
                ((##fx= _g89735_ 3)
                 (apply (lambda (_bind88161_ _e88162_ _rebind?88163_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind88161_
                           _e88162_
                           _rebind?88163_))
                        _g89736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89736_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88068_)
        (let* ((_e8806988079_ _stx88068_)
               (_E8807188083_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8806988079_)))
               (_E8807088105_
                (lambda ()
                  (if (gx#stx-pair? _e8806988079_)
                      (let ((_e8807288087_ (gx#syntax-e _e8806988079_)))
                        (let ((_hd8807388090_ (##car _e8807288087_))
                              (_tl8807488092_ (##cdr _e8807288087_)))
                          (if (gx#stx-pair? _tl8807488092_)
                              (let ((_e8807588095_
                                     (gx#syntax-e _tl8807488092_)))
                                (let ((_hd8807688098_ (##car _e8807588095_))
                                      (_tl8807788100_ (##cdr _e8807588095_)))
                                  (let ((_expr88103_ _hd8807688098_))
                                    (if (gx#stx-null? _tl8807788100_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88103_)
                                            (_E8807188083_))
                                        (_E8807188083_)))))
                              (_E8807188083_))))
                      (_E8807188083_)))))
          (_E8807088105_))))
    (define gx#core-expand-quote%
      (lambda (_stx88027_)
        (let* ((_e8802888038_ _stx88027_)
               (_E8803088042_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8802888038_)))
               (_E8802988064_
                (lambda ()
                  (if (gx#stx-pair? _e8802888038_)
                      (let ((_e8803188046_ (gx#syntax-e _e8802888038_)))
                        (let ((_hd8803288049_ (##car _e8803188046_))
                              (_tl8803388051_ (##cdr _e8803188046_)))
                          (if (gx#stx-pair? _tl8803388051_)
                              (let ((_e8803488054_
                                     (gx#syntax-e _tl8803388051_)))
                                (let ((_hd8803588057_ (##car _e8803488054_))
                                      (_tl8803688059_ (##cdr _e8803488054_)))
                                  (let ((_e88062_ _hd8803588057_))
                                    (if (gx#stx-null? _tl8803688059_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88062_)
                                                         '()))
                                             (gx#stx-source _stx88027_))
                                            (_E8803088042_))
                                        (_E8803088042_)))))
                              (_E8803088042_))))
                      (_E8803088042_)))))
          (_E8802988064_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87986_)
        (let* ((_e8798787997_ _stx87986_)
               (_E8798988001_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8798787997_)))
               (_E8798888023_
                (lambda ()
                  (if (gx#stx-pair? _e8798787997_)
                      (let ((_e8799088005_ (gx#syntax-e _e8798787997_)))
                        (let ((_hd8799188008_ (##car _e8799088005_))
                              (_tl8799288010_ (##cdr _e8799088005_)))
                          (if (gx#stx-pair? _tl8799288010_)
                              (let ((_e8799388013_
                                     (gx#syntax-e _tl8799288010_)))
                                (let ((_hd8799488016_ (##car _e8799388013_))
                                      (_tl8799588018_ (##cdr _e8799388013_)))
                                  (let ((_e88021_ _hd8799488016_))
                                    (if (gx#stx-null? _tl8799588018_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88021_)
                                                         '()))
                                             (gx#stx-source _stx87986_))
                                            (_E8798988001_))
                                        (_E8798988001_)))))
                              (_E8798988001_))))
                      (_E8798988001_)))))
          (_E8798888023_))))
    (define gx#core-expand-call%
      (lambda (_stx87943_)
        (let* ((_e8794487954_ _stx87943_)
               (_E8794687958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8794487954_)))
               (_E8794587982_
                (lambda ()
                  (if (gx#stx-pair? _e8794487954_)
                      (let ((_e8794787962_ (gx#syntax-e _e8794487954_)))
                        (let ((_hd8794887965_ (##car _e8794787962_))
                              (_tl8794987967_ (##cdr _e8794787962_)))
                          (if (gx#stx-pair? _tl8794987967_)
                              (let ((_e8795087970_
                                     (gx#syntax-e _tl8794987967_)))
                                (let ((_hd8795187973_ (##car _e8795087970_))
                                      (_tl8795287975_ (##cdr _e8795087970_)))
                                  (let* ((_rator87978_ _hd8795187973_)
                                         (_args87980_ _tl8795287975_))
                                    (if (gx#stx-list? _args87980_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87978_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87980_))
                                         (gx#stx-source _stx87943_))
                                        (_E8794687958_)))))
                              (_E8794687958_))))
                      (_E8794687958_)))))
          (_E8794587982_))))
    (define gx#core-expand-if%
      (lambda (_stx87876_)
        (let* ((_e8787787893_ _stx87876_)
               (_E8787987897_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8787787893_)))
               (_E8787887939_
                (lambda ()
                  (if (gx#stx-pair? _e8787787893_)
                      (let ((_e8788087901_ (gx#syntax-e _e8787787893_)))
                        (let ((_hd8788187904_ (##car _e8788087901_))
                              (_tl8788287906_ (##cdr _e8788087901_)))
                          (if (gx#stx-pair? _tl8788287906_)
                              (let ((_e8788387909_
                                     (gx#syntax-e _tl8788287906_)))
                                (let ((_hd8788487912_ (##car _e8788387909_))
                                      (_tl8788587914_ (##cdr _e8788387909_)))
                                  (let ((_test87917_ _hd8788487912_))
                                    (if (gx#stx-pair? _tl8788587914_)
                                        (let ((_e8788687919_
                                               (gx#syntax-e _tl8788587914_)))
                                          (let ((_hd8788787922_
                                                 (##car _e8788687919_))
                                                (_tl8788887924_
                                                 (##cdr _e8788687919_)))
                                            (let ((_K87927_ _hd8788787922_))
                                              (if (gx#stx-pair? _tl8788887924_)
                                                  (let ((_e8788987929_
                                                         (gx#syntax-e
                                                          _tl8788887924_)))
                                                    (let ((_hd8789087932_
                                                           (##car _e8788987929_))
                                                          (_tl8789187934_
                                                           (##cdr _e8788987929_)))
                                                      (let ((_E87937_
                                                             _hd8789087932_))
                                                        (if (gx#stx-null?
                                                             _tl8789187934_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87917_)
                                     (cons (gx#core-expand-expression _K87927_)
                                           (cons (gx#core-expand-expression
                                                  _E87937_)
                                                 '()))))
                         (gx#stx-source _stx87876_))
                        (_E8787987897_))
                    (_E8787987897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8787987897_)))))
                                        (_E8787987897_)))))
                              (_E8787987897_))))
                      (_E8787987897_)))))
          (_E8787887939_))))
    (define gx#core-expand-ref%
      (lambda (_stx87835_)
        (let* ((_e8783687846_ _stx87835_)
               (_E8783887850_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8783687846_)))
               (_E8783787872_
                (lambda ()
                  (if (gx#stx-pair? _e8783687846_)
                      (let ((_e8783987854_ (gx#syntax-e _e8783687846_)))
                        (let ((_hd8784087857_ (##car _e8783987854_))
                              (_tl8784187859_ (##cdr _e8783987854_)))
                          (if (gx#stx-pair? _tl8784187859_)
                              (let ((_e8784287862_
                                     (gx#syntax-e _tl8784187859_)))
                                (let ((_hd8784387865_ (##car _e8784287862_))
                                      (_tl8784487867_ (##cdr _e8784287862_)))
                                  (let ((_id87870_ _hd8784387865_))
                                    (if (gx#stx-null? _tl8784487867_)
                                        (if (gx#identifier? _id87870_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87870_
                                                          _stx87835_)
                                                         '()))
                                             (gx#stx-source _stx87835_))
                                            (_E8783887850_))
                                        (_E8783887850_)))))
                              (_E8783887850_))))
                      (_E8783887850_)))))
          (_E8783787872_))))
    (define gx#core-expand-setq%
      (lambda (_stx87781_)
        (let* ((_e8778287795_ _stx87781_)
               (_E8778487799_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8778287795_)))
               (_E8778387831_
                (lambda ()
                  (if (gx#stx-pair? _e8778287795_)
                      (let ((_e8778587803_ (gx#syntax-e _e8778287795_)))
                        (let ((_hd8778687806_ (##car _e8778587803_))
                              (_tl8778787808_ (##cdr _e8778587803_)))
                          (if (gx#stx-pair? _tl8778787808_)
                              (let ((_e8778887811_
                                     (gx#syntax-e _tl8778787808_)))
                                (let ((_hd8778987814_ (##car _e8778887811_))
                                      (_tl8779087816_ (##cdr _e8778887811_)))
                                  (let ((_id87819_ _hd8778987814_))
                                    (if (gx#stx-pair? _tl8779087816_)
                                        (let ((_e8779187821_
                                               (gx#syntax-e _tl8779087816_)))
                                          (let ((_hd8779287824_
                                                 (##car _e8779187821_))
                                                (_tl8779387826_
                                                 (##cdr _e8779187821_)))
                                            (let ((_expr87829_ _hd8779287824_))
                                              (if (gx#stx-null? _tl8779387826_)
                                                  (if (gx#identifier?
                                                       _id87819_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87819_
                            _stx87781_)
                           (cons (gx#core-expand-expression _expr87829_) '())))
               (gx#stx-source _stx87781_))
              (_E8778487799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8778487799_)))))
                                        (_E8778487799_)))))
                              (_E8778487799_))))
                      (_E8778487799_)))))
          (_E8778387831_))))
    (define gx#macro-expand-extern
      (lambda (_stx87629_)
        (letrec ((_generate87631_
                  (lambda (_body87661_)
                    (let _lp87663_ ((_rest87665_ _body87661_)
                                    (_ns87666_ (gx#core-context-namespace__0))
                                    (_r87667_ '()))
                      (let* ((_e8766887683_ _rest87665_)
                             (_E8768187687_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8766887683_)))
                             (_E8767787691_
                              (lambda ()
                                (if (gx#stx-null? _e8766887683_)
                                    (if '#t (reverse _r87667_) (_E8768187687_))
                                    (_E8768187687_))))
                             (_E8767087748_
                              (lambda ()
                                (if (gx#stx-pair? _e8766887683_)
                                    (let ((_e8767887695_
                                           (gx#syntax-e _e8766887683_)))
                                      (let ((_hd8767987698_
                                             (##car _e8767887695_))
                                            (_tl8768087700_
                                             (##cdr _e8767887695_)))
                                        (let* ((_hd87703_ _hd8767987698_)
                                               (_rest87705_ _tl8768087700_))
                                          (if '#t
                                              (if (gx#identifier? _hd87703_)
                                                  (_lp87663_
                                                   _rest87705_
                                                   _ns87666_
                                                   (cons (cons _hd87703_
                                                               (cons (if _ns87666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87703_
                                  _ns87666_
                                  '"#"
                                  _hd87703_)
                                 _hd87703_)
                             '()))
                 _r87667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8770687716_
                                                          _hd87703_)
                                                         (_E8770887720_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8770687716_)))
                                                         (_E8770787744_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8770687716_)
                        (let ((_e8770987724_ (gx#syntax-e _e8770687716_)))
                          (let ((_hd8771087727_ (##car _e8770987724_))
                                (_tl8771187729_ (##cdr _e8770987724_)))
                            (let ((_id87732_ _hd8771087727_))
                              (if (gx#stx-pair? _tl8771187729_)
                                  (let ((_e8771287734_
                                         (gx#syntax-e _tl8771187729_)))
                                    (let ((_hd8771387737_
                                           (##car _e8771287734_))
                                          (_tl8771487739_
                                           (##cdr _e8771287734_)))
                                      (let ((_eid87742_ _hd8771387737_))
                                        (if (gx#stx-null? _tl8771487739_)
                                            (if (and (gx#identifier? _id87732_)
                                                     (gx#identifier?
                                                      _eid87742_))
                                                (_lp87663_
                                                 _rest87705_
                                                 _ns87666_
                                                 (cons (cons _id87732_
                                                             (cons _eid87742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8770887720_))
                                            (_E8770887720_)))))
                                  (_E8770887720_)))))
                        (_E8770887720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8770787744_)))
                                              (_E8767787691_)))))
                                    (_E8767787691_))))
                             (_E8766987777_
                              (lambda ()
                                (if (gx#stx-pair? _e8766887683_)
                                    (let ((_e8767187752_
                                           (gx#syntax-e _e8766887683_)))
                                      (let ((_hd8767287755_
                                             (##car _e8767187752_))
                                            (_tl8767387757_
                                             (##cdr _e8767187752_)))
                                        (if (eq? (gx#stx-e _hd8767287755_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8767387757_)
                                                (let ((_e8767487760_
                                                       (gx#syntax-e
                                                        _tl8767387757_)))
                                                  (let ((_hd8767587763_
                                                         (##car _e8767487760_))
                                                        (_tl8767687765_
                                                         (##cdr _e8767487760_)))
                                                    (let* ((_ns87768_
                                                            _hd8767587763_)
                                                           (_rest87770_
                                                            _tl8767687765_))
                                                      (if '#t
                                                          (let ((_ns87775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87768_)
                             (symbol->string (gx#stx-e _ns87768_))
                             (if (or (gx#stx-string? _ns87768_)
                                     (gx#stx-false? _ns87768_))
                                 (gx#stx-e _ns87768_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87629_
                                  _ns87768_)))))
                    (_lp87663_ _rest87770_ _ns87775_ _r87667_))
                  (_E8767087748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8767087748_))
                                            (_E8767087748_))))
                                    (_E8767087748_)))))
                        (_E8766987777_))))))
          (let* ((_e8763287639_ _stx87629_)
                 (_E8763487643_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8763287639_)))
                 (_E8763387657_
                  (lambda ()
                    (if (gx#stx-pair? _e8763287639_)
                        (let ((_e8763587647_ (gx#syntax-e _e8763287639_)))
                          (let ((_hd8763687650_ (##car _e8763587647_))
                                (_tl8763787652_ (##cdr _e8763587647_)))
                            (let ((_body87655_ _tl8763787652_))
                              (if (gx#stx-list? _body87655_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87631_ _body87655_))
                                  (_E8763487643_)))))
                        (_E8763487643_)))))
            (_E8763387657_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87575_)
        (let* ((_e8757687589_ _stx87575_)
               (_E8757887593_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8757687589_)))
               (_E8757787625_
                (lambda ()
                  (if (gx#stx-pair? _e8757687589_)
                      (let ((_e8757987597_ (gx#syntax-e _e8757687589_)))
                        (let ((_hd8758087600_ (##car _e8757987597_))
                              (_tl8758187602_ (##cdr _e8757987597_)))
                          (if (gx#stx-pair? _tl8758187602_)
                              (let ((_e8758287605_
                                     (gx#syntax-e _tl8758187602_)))
                                (let ((_hd8758387608_ (##car _e8758287605_))
                                      (_tl8758487610_ (##cdr _e8758287605_)))
                                  (let ((_hd87613_ _hd8758387608_))
                                    (if (gx#stx-pair? _tl8758487610_)
                                        (let ((_e8758587615_
                                               (gx#syntax-e _tl8758487610_)))
                                          (let ((_hd8758687618_
                                                 (##car _e8758587615_))
                                                (_tl8758787620_
                                                 (##cdr _e8758587615_)))
                                            (let ((_expr87623_ _hd8758687618_))
                                              (if (gx#stx-null? _tl8758787620_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87613_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87613_)
                          (cons _expr87623_ '())))
              (_E8757887593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8757887593_)))))
                                        (_E8757887593_)))))
                              (_E8757887593_))))
                      (_E8757887593_)))))
          (_E8757787625_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87521_)
        (let* ((_e8752287535_ _stx87521_)
               (_E8752487539_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8752287535_)))
               (_E8752387571_
                (lambda ()
                  (if (gx#stx-pair? _e8752287535_)
                      (let ((_e8752587543_ (gx#syntax-e _e8752287535_)))
                        (let ((_hd8752687546_ (##car _e8752587543_))
                              (_tl8752787548_ (##cdr _e8752587543_)))
                          (if (gx#stx-pair? _tl8752787548_)
                              (let ((_e8752887551_
                                     (gx#syntax-e _tl8752787548_)))
                                (let ((_hd8752987554_ (##car _e8752887551_))
                                      (_tl8753087556_ (##cdr _e8752887551_)))
                                  (let ((_hd87559_ _hd8752987554_))
                                    (if (gx#stx-pair? _tl8753087556_)
                                        (let ((_e8753187561_
                                               (gx#syntax-e _tl8753087556_)))
                                          (let ((_hd8753287564_
                                                 (##car _e8753187561_))
                                                (_tl8753387566_
                                                 (##cdr _e8753187561_)))
                                            (let ((_expr87569_ _hd8753287564_))
                                              (if (gx#stx-null? _tl8753387566_)
                                                  (if (gx#identifier?
                                                       _hd87559_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87569_ '())))
              (_E8752487539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8752487539_)))))
                                        (_E8752487539_)))))
                              (_E8752487539_))))
                      (_E8752487539_)))))
          (_E8752387571_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87467_)
        (let* ((_e8746887481_ _stx87467_)
               (_E8747087485_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8746887481_)))
               (_E8746987517_
                (lambda ()
                  (if (gx#stx-pair? _e8746887481_)
                      (let ((_e8747187489_ (gx#syntax-e _e8746887481_)))
                        (let ((_hd8747287492_ (##car _e8747187489_))
                              (_tl8747387494_ (##cdr _e8747187489_)))
                          (if (gx#stx-pair? _tl8747387494_)
                              (let ((_e8747487497_
                                     (gx#syntax-e _tl8747387494_)))
                                (let ((_hd8747587500_ (##car _e8747487497_))
                                      (_tl8747687502_ (##cdr _e8747487497_)))
                                  (let ((_id87505_ _hd8747587500_))
                                    (if (gx#stx-pair? _tl8747687502_)
                                        (let ((_e8747787507_
                                               (gx#syntax-e _tl8747687502_)))
                                          (let ((_hd8747887510_
                                                 (##car _e8747787507_))
                                                (_tl8747987512_
                                                 (##cdr _e8747787507_)))
                                            (let ((_alias-id87515_
                                                   _hd8747887510_))
                                              (if (gx#stx-null? _tl8747987512_)
                                                  (if (and (gx#identifier?
                                                            _id87505_)
                                                           (gx#identifier?
                                                            _alias-id87515_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87515_ '())))
              (_E8747087485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8747087485_)))))
                                        (_E8747087485_)))))
                              (_E8747087485_))))
                      (_E8747087485_)))))
          (_E8746987517_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87424_)
        (let* ((_e8742587435_ _stx87424_)
               (_E8742787439_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8742587435_)))
               (_E8742687463_
                (lambda ()
                  (if (gx#stx-pair? _e8742587435_)
                      (let ((_e8742887443_ (gx#syntax-e _e8742587435_)))
                        (let ((_hd8742987446_ (##car _e8742887443_))
                              (_tl8743087448_ (##cdr _e8742887443_)))
                          (if (gx#stx-pair? _tl8743087448_)
                              (let ((_e8743187451_
                                     (gx#syntax-e _tl8743087448_)))
                                (let ((_hd8743287454_ (##car _e8743187451_))
                                      (_tl8743387456_ (##cdr _e8743187451_)))
                                  (let* ((_hd87459_ _hd8743287454_)
                                         (_body87461_ _tl8743387456_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87459_)
                                             (gx#stx-list? _body87461_)
                                             (not (gx#stx-null? _body87461_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87459_)
                                         _body87461_)
                                        (_E8742787439_)))))
                              (_E8742787439_))))
                      (_E8742787439_)))))
          (_E8742687463_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx87360_)
        (letrec ((_generate87362_
                  (lambda (_clause87392_)
                    (let* ((_e8739387400_ _clause87392_)
                           (_E8739587404_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx87360_
                               _clause87392_)))
                           (_E8739487420_
                            (lambda ()
                              (if (gx#stx-pair? _e8739387400_)
                                  (let ((_e8739687408_
                                         (gx#syntax-e _e8739387400_)))
                                    (let ((_hd8739787411_
                                           (##car _e8739687408_))
                                          (_tl8739887413_
                                           (##cdr _e8739687408_)))
                                      (let* ((_hd87416_ _hd8739787411_)
                                             (_body87418_ _tl8739887413_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd87416_)
                                                 (gx#stx-list? _body87418_)
                                                 (not (gx#stx-null?
                                                       _body87418_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd87416_)
                                                   _body87418_)
                                             (gx#stx-source _clause87392_))
                                            (_E8739587404_)))))
                                  (_E8739587404_)))))
                      (_E8739487420_)))))
          (let* ((_e8736387370_ _stx87360_)
                 (_E8736587374_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8736387370_)))
                 (_E8736487388_
                  (lambda ()
                    (if (gx#stx-pair? _e8736387370_)
                        (let ((_e8736687378_ (gx#syntax-e _e8736387370_)))
                          (let ((_hd8736787381_ (##car _e8736687378_))
                                (_tl8736887383_ (##cdr _e8736687378_)))
                            (let ((_clauses87386_ _tl8736887383_))
                              (if (gx#stx-list? _clauses87386_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate87362_
                                    _clauses87386_))
                                  (_E8736587374_)))))
                        (_E8736587374_)))))
            (_E8736487388_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx87261_ _form87262_)
        (letrec ((_generate87264_
                  (lambda (_bind87307_)
                    (let* ((_e8730887318_ _bind87307_)
                           (_E8731087322_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx87261_
                               _bind87307_)))
                           (_E8730987346_
                            (lambda ()
                              (if (gx#stx-pair? _e8730887318_)
                                  (let ((_e8731187326_
                                         (gx#syntax-e _e8730887318_)))
                                    (let ((_hd8731287329_
                                           (##car _e8731187326_))
                                          (_tl8731387331_
                                           (##cdr _e8731187326_)))
                                      (let ((_ids87334_ _hd8731287329_))
                                        (if (gx#stx-pair? _tl8731387331_)
                                            (let ((_e8731487336_
                                                   (gx#syntax-e
                                                    _tl8731387331_)))
                                              (let ((_hd8731587339_
                                                     (##car _e8731487336_))
                                                    (_tl8731687341_
                                                     (##cdr _e8731487336_)))
                                                (let ((_expr87344_
                                                       _hd8731587339_))
                                                  (if (gx#stx-null?
                                                       _tl8731687341_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids87334_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids87334_)
                        (cons _expr87344_ '()))
                  (_E8731087322_))
              (_E8731087322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8731087322_)))))
                                  (_E8731087322_)))))
                      (_E8730987346_)))))
          (let* ((_e8726587275_ _stx87261_)
                 (_E8726787279_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8726587275_)))
                 (_E8726687303_
                  (lambda ()
                    (if (gx#stx-pair? _e8726587275_)
                        (let ((_e8726887283_ (gx#syntax-e _e8726587275_)))
                          (let ((_hd8726987286_ (##car _e8726887283_))
                                (_tl8727087288_ (##cdr _e8726887283_)))
                            (if (gx#stx-pair? _tl8727087288_)
                                (let ((_e8727187291_
                                       (gx#syntax-e _tl8727087288_)))
                                  (let ((_hd8727287294_ (##car _e8727187291_))
                                        (_tl8727387296_ (##cdr _e8727187291_)))
                                    (let* ((_hd87299_ _hd8727287294_)
                                           (_body87301_ _tl8727387296_))
                                      (if (and (gx#stx-list? _hd87299_)
                                               (gx#stx-list? _body87301_)
                                               (not (gx#stx-null?
                                                     _body87301_)))
                                          (gx#core-cons*
                                           _form87262_
                                           (gx#stx-map1
                                            _generate87264_
                                            _hd87299_)
                                           _body87301_)
                                          (_E8726787279_)))))
                                (_E8726787279_))))
                        (_E8726787279_)))))
            (_E8726687303_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx87353_)
        (let ((_form87355_ '%#let-values))
          (gx#macro-expand-let-values__% _stx87353_ _form87355_))))
    (define gx#macro-expand-let-values
      (lambda _g89738_
        (let ((_g89737_ (##length _g89738_)))
          (cond ((##fx= _g89737_ 1)
                 (apply (lambda (_stx87353_)
                          (gx#macro-expand-let-values__0 _stx87353_))
                        _g89738_))
                ((##fx= _g89737_ 2)
                 (apply (lambda (_stx87357_ _form87358_)
                          (gx#macro-expand-let-values__%
                           _stx87357_
                           _form87358_))
                        _g89738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89738_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx87258_)
        (gx#macro-expand-let-values__% _stx87258_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx87256_)
        (gx#macro-expand-let-values__% _stx87256_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx87147_)
        (let* ((_e8714887174_ _stx87147_)
               (_E8716087178_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8714887174_)))
               (_E8715087220_
                (lambda ()
                  (if (gx#stx-pair? _e8714887174_)
                      (let ((_e8716187182_ (gx#syntax-e _e8714887174_)))
                        (let ((_hd8716287185_ (##car _e8716187182_))
                              (_tl8716387187_ (##cdr _e8716187182_)))
                          (if (gx#stx-pair? _tl8716387187_)
                              (let ((_e8716487190_
                                     (gx#syntax-e _tl8716387187_)))
                                (let ((_hd8716587193_ (##car _e8716487190_))
                                      (_tl8716687195_ (##cdr _e8716487190_)))
                                  (let ((_test87198_ _hd8716587193_))
                                    (if (gx#stx-pair? _tl8716687195_)
                                        (let ((_e8716787200_
                                               (gx#syntax-e _tl8716687195_)))
                                          (let ((_hd8716887203_
                                                 (##car _e8716787200_))
                                                (_tl8716987205_
                                                 (##cdr _e8716787200_)))
                                            (let ((_K87208_ _hd8716887203_))
                                              (if (gx#stx-pair? _tl8716987205_)
                                                  (let ((_e8717087210_
                                                         (gx#syntax-e
                                                          _tl8716987205_)))
                                                    (let ((_hd8717187213_
                                                           (##car _e8717087210_))
                                                          (_tl8717287215_
                                                           (##cdr _e8717087210_)))
                                                      (let ((_E87218_
                                                             _hd8717187213_))
                                                        (if (gx#stx-null?
                                                             _tl8717287215_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test87198_
                         _K87208_
                         _E87218_)
                        (_E8716087178_))
                    (_E8716087178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8716087178_)))))
                                        (_E8716087178_)))))
                              (_E8716087178_))))
                      (_E8716087178_))))
               (_E8714987252_
                (lambda ()
                  (if (gx#stx-pair? _e8714887174_)
                      (let ((_e8715187224_ (gx#syntax-e _e8714887174_)))
                        (let ((_hd8715287227_ (##car _e8715187224_))
                              (_tl8715387229_ (##cdr _e8715187224_)))
                          (if (gx#stx-pair? _tl8715387229_)
                              (let ((_e8715487232_
                                     (gx#syntax-e _tl8715387229_)))
                                (let ((_hd8715587235_ (##car _e8715487232_))
                                      (_tl8715687237_ (##cdr _e8715487232_)))
                                  (let ((_test87240_ _hd8715587235_))
                                    (if (gx#stx-pair? _tl8715687237_)
                                        (let ((_e8715787242_
                                               (gx#syntax-e _tl8715687237_)))
                                          (let ((_hd8715887245_
                                                 (##car _e8715787242_))
                                                (_tl8715987247_
                                                 (##cdr _e8715787242_)))
                                            (let ((_K87250_ _hd8715887245_))
                                              (if (gx#stx-null? _tl8715987247_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test87240_
                                                       _K87250_
                                                       '#!void)
                                                      (_E8715087220_))
                                                  (_E8715087220_)))))
                                        (_E8715087220_)))))
                              (_E8715087220_))))
                      (_E8715087220_)))))
          (_E8714987252_))))
    (define gx#free-identifier=?
      (lambda (_xid87135_ _yid87136_)
        (let ((_xe87138_ (gx#resolve-identifier__0 _xid87135_))
              (_ye87139_ (gx#resolve-identifier__0 _yid87136_)))
          (if (and _xe87138_ _ye87139_)
              (let ((_$e87141_ (eq? _xe87138_ _ye87139_)))
                (if _$e87141_
                    _$e87141_
                    (if (##structure-instance-of? _xe87138_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye87139_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe87138_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye87139_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe87138_ _ye87139_)
                  '#f
                  (gx#stx-eq? _xid87135_ _yid87136_))))))
    (define gx#bound-identifier=?
      (lambda (_xid87119_ _yid87120_)
        (letrec ((_context87122_
                  (lambda (_e87133_)
                    (if (##structure-direct-instance-of?
                         _e87133_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e87133_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks87123_
                  (lambda (_e87131_)
                    (if (symbol? _e87131_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e87131_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e87131_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e87131_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap87124_
                  (lambda (_e87129_)
                    (if (symbol? _e87129_)
                        _e87129_
                        (gx#syntax-local-unwrap _e87129_)))))
          (let ((_x87126_ (_unwrap87124_ _xid87119_))
                (_y87127_ (_unwrap87124_ _yid87120_)))
            (if (gx#stx-eq? _x87126_ _y87127_)
                (if (eq? (_context87122_ _x87126_) (_context87122_ _y87127_))
                    (equal? (_marks87123_ _x87126_) (_marks87123_ _y87127_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx87117_)
        (if (gx#identifier? _stx87117_)
            (gx#core-identifier=? _stx87117_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx87115_)
        (if (gx#identifier? _stx87115_)
            (gx#core-identifier=? _stx87115_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x87113_)
        (if (gx#identifier? _x87113_)
            (if (not (gx#underscore? _x87113_)) _x87113_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87059_ _where87060_)
        (let _lp87062_ ((_rest87064_ (gx#syntax->list _stx87059_)))
          (let* ((_rest8706587073_ _rest87064_)
                 (_else8706787081_ (lambda () '#t))
                 (_K8706987091_
                  (lambda (_rest87084_ _hd87085_)
                    (if (not (gx#identifier? _hd87085_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87060_
                         _hd87085_)
                        (if (find (lambda (_g8708687088_)
                                    (gx#bound-identifier=?
                                     _g8708687088_
                                     _hd87085_))
                                  _rest87084_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87060_
                             _hd87085_)
                            (_lp87062_ _rest87084_))))))
            (if (##pair? _rest8706587073_)
                (let ((_hd8707087094_ (##car _rest8706587073_))
                      (_tl8707187096_ (##cdr _rest8706587073_)))
                  (let* ((_hd87099_ _hd8707087094_)
                         (_rest87101_ _tl8707187096_))
                    (_K8706987091_ _rest87101_ _hd87099_)))
                (_else8706787081_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx87106_)
        (let ((_where87108_ _stx87106_))
          (gx#check-duplicate-identifiers__% _stx87106_ _where87108_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89740_
        (let ((_g89739_ (##length _g89740_)))
          (cond ((##fx= _g89739_ 1)
                 (apply (lambda (_stx87106_)
                          (gx#check-duplicate-identifiers__0 _stx87106_))
                        _g89740_))
                ((##fx= _g89739_ 2)
                 (apply (lambda (_stx87110_ _where87111_)
                          (gx#check-duplicate-identifiers__%
                           _stx87110_
                           _where87111_))
                        _g89740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89740_))))))
    (define gx#core-bind-values?
      (lambda (_stx87051_)
        (gx#stx-andmap
         (lambda (_x87053_)
           (let ((_$e87055_ (gx#identifier? _x87053_)))
             (if _$e87055_ _$e87055_ (gx#stx-false? _x87053_))))
         _stx87051_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87015_ _rebind?87016_ _phi87017_ _ctx87018_)
        (gx#stx-for-each1
         (lambda (_id87020_)
           (if (gx#identifier? _id87020_)
               (gx#core-bind-runtime!__%
                _id87020_
                _rebind?87016_
                _phi87017_
                _ctx87018_)
               '#!void))
         _stx87015_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87025_)
        (let* ((_rebind?87027_ '#f)
               (_phi87029_ (gx#current-expander-phi))
               (_ctx87031_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87025_
           _rebind?87027_
           _phi87029_
           _ctx87031_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87033_ _rebind?87034_)
        (let* ((_phi87036_ (gx#current-expander-phi))
               (_ctx87038_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87033_
           _rebind?87034_
           _phi87036_
           _ctx87038_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87040_ _rebind?87041_ _phi87042_)
        (let ((_ctx87044_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87040_
           _rebind?87041_
           _phi87042_
           _ctx87044_))))
    (define gx#core-bind-values!
      (lambda _g89742_
        (let ((_g89741_ (##length _g89742_)))
          (cond ((##fx= _g89741_ 1)
                 (apply (lambda (_stx87025_)
                          (gx#core-bind-values!__0 _stx87025_))
                        _g89742_))
                ((##fx= _g89741_ 2)
                 (apply (lambda (_stx87033_ _rebind?87034_)
                          (gx#core-bind-values!__1 _stx87033_ _rebind?87034_))
                        _g89742_))
                ((##fx= _g89741_ 3)
                 (apply (lambda (_stx87040_ _rebind?87041_ _phi87042_)
                          (gx#core-bind-values!__2
                           _stx87040_
                           _rebind?87041_
                           _phi87042_))
                        _g89742_))
                ((##fx= _g89741_ 4)
                 (apply (lambda (_stx87046_
                                 _rebind?87047_
                                 _phi87048_
                                 _ctx87049_)
                          (gx#core-bind-values!__%
                           _stx87046_
                           _rebind?87047_
                           _phi87048_
                           _ctx87049_))
                        _g89742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89742_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87010_)
        (gx#stx-map1
         (lambda (_x87012_)
           (if (gx#identifier? _x87012_)
               (gx#core-quote-syntax__0 _x87012_)
               '#f))
         _stx87010_)))
    (define gx#core-runtime-ref?
      (lambda (_stx87003_)
        (if (gx#identifier? _stx87003_)
            (let* ((_bind87005_ (gx#resolve-identifier__0 _stx87003_))
                   (_$e87007_ (not _bind87005_)))
              (if _$e87007_
                  _$e87007_
                  (##structure-instance-of?
                   _bind87005_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86995_ _form86996_)
        (let ((_bind86998_ (gx#resolve-identifier__0 _id86995_)))
          (if (##structure-instance-of? _bind86998_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86995_)
              (if (not _bind86998_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86995_)))
                      (gx#core-quote-syntax__0 _id86995_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86996_
                       _id86995_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86996_
                   _id86995_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86954_ _rebind?86955_ _phi86956_ _ctx86957_)
        (let* ((_key86959_ (gx#core-identifier-key _id86954_))
               (_eid86961_
                (gx#make-binding-id__% _key86959_ '#f _phi86956_ _ctx86957_))
               (_bind86963_
                (if (##structure-instance-of? _ctx86957_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86961_
                     _key86959_
                     _phi86956_
                     _ctx86957_)
                    (if (##structure-instance-of?
                         _ctx86957_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86961_
                         _key86959_
                         _phi86956_)
                        (if (##structure-instance-of?
                             _ctx86957_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86961_
                             _key86959_
                             _phi86956_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86961_
                             _key86959_
                             _phi86956_))))))
          (gx#bind-identifier!__%
           _id86954_
           _bind86963_
           _rebind?86955_
           _phi86956_
           _ctx86957_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86969_)
        (let* ((_rebind?86971_ '#f)
               (_phi86973_ (gx#current-expander-phi))
               (_ctx86975_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86969_
           _rebind?86971_
           _phi86973_
           _ctx86975_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86977_ _rebind?86978_)
        (let* ((_phi86980_ (gx#current-expander-phi))
               (_ctx86982_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86977_
           _rebind?86978_
           _phi86980_
           _ctx86982_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86984_ _rebind?86985_ _phi86986_)
        (let ((_ctx86988_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86984_
           _rebind?86985_
           _phi86986_
           _ctx86988_))))
    (define gx#core-bind-runtime!
      (lambda _g89744_
        (let ((_g89743_ (##length _g89744_)))
          (cond ((##fx= _g89743_ 1)
                 (apply (lambda (_id86969_)
                          (gx#core-bind-runtime!__0 _id86969_))
                        _g89744_))
                ((##fx= _g89743_ 2)
                 (apply (lambda (_id86977_ _rebind?86978_)
                          (gx#core-bind-runtime!__1 _id86977_ _rebind?86978_))
                        _g89744_))
                ((##fx= _g89743_ 3)
                 (apply (lambda (_id86984_ _rebind?86985_ _phi86986_)
                          (gx#core-bind-runtime!__2
                           _id86984_
                           _rebind?86985_
                           _phi86986_))
                        _g89744_))
                ((##fx= _g89743_ 4)
                 (apply (lambda (_id86990_
                                 _rebind?86991_
                                 _phi86992_
                                 _ctx86993_)
                          (gx#core-bind-runtime!__%
                           _id86990_
                           _rebind?86991_
                           _phi86992_
                           _ctx86993_))
                        _g89744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89744_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86909_ _eid86910_ _rebind?86911_ _phi86912_ _ctx86913_)
        (let* ((_key86915_ (gx#core-identifier-key _id86909_))
               (_bind86917_
                (if (##structure-instance-of? _ctx86913_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86910_
                     _key86915_
                     _phi86912_
                     _ctx86913_)
                    (if (##structure-instance-of?
                         _ctx86913_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86910_
                         _key86915_
                         _phi86912_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86910_
                         _key86915_
                         _phi86912_)))))
          (gx#bind-identifier!__%
           _id86909_
           _bind86917_
           _rebind?86911_
           _phi86912_
           _ctx86913_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86923_ _eid86924_)
        (let* ((_rebind?86926_ '#f)
               (_phi86928_ (gx#current-expander-phi))
               (_ctx86930_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86923_
           _eid86924_
           _rebind?86926_
           _phi86928_
           _ctx86930_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86932_ _eid86933_ _rebind?86934_)
        (let* ((_phi86936_ (gx#current-expander-phi))
               (_ctx86938_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86932_
           _eid86933_
           _rebind?86934_
           _phi86936_
           _ctx86938_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86940_ _eid86941_ _rebind?86942_ _phi86943_)
        (let ((_ctx86945_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86940_
           _eid86941_
           _rebind?86942_
           _phi86943_
           _ctx86945_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89746_
        (let ((_g89745_ (##length _g89746_)))
          (cond ((##fx= _g89745_ 2)
                 (apply (lambda (_id86923_ _eid86924_)
                          (gx#core-bind-runtime-reference!__0
                           _id86923_
                           _eid86924_))
                        _g89746_))
                ((##fx= _g89745_ 3)
                 (apply (lambda (_id86932_ _eid86933_ _rebind?86934_)
                          (gx#core-bind-runtime-reference!__1
                           _id86932_
                           _eid86933_
                           _rebind?86934_))
                        _g89746_))
                ((##fx= _g89745_ 4)
                 (apply (lambda (_id86940_
                                 _eid86941_
                                 _rebind?86942_
                                 _phi86943_)
                          (gx#core-bind-runtime-reference!__2
                           _id86940_
                           _eid86941_
                           _rebind?86942_
                           _phi86943_))
                        _g89746_))
                ((##fx= _g89745_ 5)
                 (apply (lambda (_id86947_
                                 _eid86948_
                                 _rebind?86949_
                                 _phi86950_
                                 _ctx86951_)
                          (gx#core-bind-runtime-reference!__%
                           _id86947_
                           _eid86948_
                           _rebind?86949_
                           _phi86950_
                           _ctx86951_))
                        _g89746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89746_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86869_ _eid86870_ _rebind?86871_ _phi86872_ _ctx86873_)
        (gx#bind-identifier!__%
         _id86869_
         (##structure
          gx#extern-binding::t
          _eid86870_
          (gx#core-identifier-key _id86869_)
          _phi86872_)
         _rebind?86871_
         _phi86872_
         _ctx86873_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86878_ _eid86879_)
        (let* ((_rebind?86881_ '#f)
               (_phi86883_ (gx#current-expander-phi))
               (_ctx86885_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86878_
           _eid86879_
           _rebind?86881_
           _phi86883_
           _ctx86885_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86887_ _eid86888_ _rebind?86889_)
        (let* ((_phi86891_ (gx#current-expander-phi))
               (_ctx86893_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86887_
           _eid86888_
           _rebind?86889_
           _phi86891_
           _ctx86893_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86895_ _eid86896_ _rebind?86897_ _phi86898_)
        (let ((_ctx86900_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86895_
           _eid86896_
           _rebind?86897_
           _phi86898_
           _ctx86900_))))
    (define gx#core-bind-extern!
      (lambda _g89748_
        (let ((_g89747_ (##length _g89748_)))
          (cond ((##fx= _g89747_ 2)
                 (apply (lambda (_id86878_ _eid86879_)
                          (gx#core-bind-extern!__0 _id86878_ _eid86879_))
                        _g89748_))
                ((##fx= _g89747_ 3)
                 (apply (lambda (_id86887_ _eid86888_ _rebind?86889_)
                          (gx#core-bind-extern!__1
                           _id86887_
                           _eid86888_
                           _rebind?86889_))
                        _g89748_))
                ((##fx= _g89747_ 4)
                 (apply (lambda (_id86895_
                                 _eid86896_
                                 _rebind?86897_
                                 _phi86898_)
                          (gx#core-bind-extern!__2
                           _id86895_
                           _eid86896_
                           _rebind?86897_
                           _phi86898_))
                        _g89748_))
                ((##fx= _g89747_ 5)
                 (apply (lambda (_id86902_
                                 _eid86903_
                                 _rebind?86904_
                                 _phi86905_
                                 _ctx86906_)
                          (gx#core-bind-extern!__%
                           _id86902_
                           _eid86903_
                           _rebind?86904_
                           _phi86905_
                           _ctx86906_))
                        _g89748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89748_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86823_ _e86824_ _rebind?86825_ _phi86826_ _ctx86827_)
        (gx#bind-identifier!__%
         _id86823_
         (let ((_key86832_ (gx#core-identifier-key _id86823_))
               (_e86833_
                (if (or (##structure-instance-of? _e86824_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86824_
                         'gx#expander-context::t))
                    _e86824_
                    (##structure
                     gx#user-expander::t
                     _e86824_
                     _ctx86827_
                     _phi86826_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86832_ '#t _phi86826_ _ctx86827_)
            _key86832_
            _phi86826_
            _e86833_))
         _rebind?86825_
         _phi86826_
         _ctx86827_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86838_ _e86839_)
        (let* ((_rebind?86841_ '#f)
               (_phi86843_ (gx#current-expander-phi))
               (_ctx86845_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86838_
           _e86839_
           _rebind?86841_
           _phi86843_
           _ctx86845_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86847_ _e86848_ _rebind?86849_)
        (let* ((_phi86851_ (gx#current-expander-phi))
               (_ctx86853_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86847_
           _e86848_
           _rebind?86849_
           _phi86851_
           _ctx86853_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86855_ _e86856_ _rebind?86857_ _phi86858_)
        (let ((_ctx86860_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86855_
           _e86856_
           _rebind?86857_
           _phi86858_
           _ctx86860_))))
    (define gx#core-bind-syntax!
      (lambda _g89750_
        (let ((_g89749_ (##length _g89750_)))
          (cond ((##fx= _g89749_ 2)
                 (apply (lambda (_id86838_ _e86839_)
                          (gx#core-bind-syntax!__0 _id86838_ _e86839_))
                        _g89750_))
                ((##fx= _g89749_ 3)
                 (apply (lambda (_id86847_ _e86848_ _rebind?86849_)
                          (gx#core-bind-syntax!__1
                           _id86847_
                           _e86848_
                           _rebind?86849_))
                        _g89750_))
                ((##fx= _g89749_ 4)
                 (apply (lambda (_id86855_ _e86856_ _rebind?86857_ _phi86858_)
                          (gx#core-bind-syntax!__2
                           _id86855_
                           _e86856_
                           _rebind?86857_
                           _phi86858_))
                        _g89750_))
                ((##fx= _g89749_ 5)
                 (apply (lambda (_id86862_
                                 _e86863_
                                 _rebind?86864_
                                 _phi86865_
                                 _ctx86866_)
                          (gx#core-bind-syntax!__%
                           _id86862_
                           _e86863_
                           _rebind?86864_
                           _phi86865_
                           _ctx86866_))
                        _g89750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89750_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86806_ _e86807_ _rebind?86808_)
        (gx#core-bind-syntax!__%
         _id86806_
         _e86807_
         _rebind?86808_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86813_ _e86814_)
        (let ((_rebind?86816_ '#f))
          (gx#core-bind-root-syntax!__% _id86813_ _e86814_ _rebind?86816_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89752_
        (let ((_g89751_ (##length _g89752_)))
          (cond ((##fx= _g89751_ 2)
                 (apply (lambda (_id86813_ _e86814_)
                          (gx#core-bind-root-syntax!__0 _id86813_ _e86814_))
                        _g89752_))
                ((##fx= _g89751_ 3)
                 (apply (lambda (_id86818_ _e86819_ _rebind?86820_)
                          (gx#core-bind-root-syntax!__%
                           _id86818_
                           _e86819_
                           _rebind?86820_))
                        _g89752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89752_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86764_ _alias-id86765_ _rebind?86766_ _phi86767_ _ctx86768_)
        (gx#bind-identifier!__%
         _id86764_
         (let ((_key86770_ (gx#core-identifier-key _id86764_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86770_ '#t _phi86767_ _ctx86768_)
            _key86770_
            _phi86767_
            _alias-id86765_))
         _rebind?86766_
         _phi86767_
         _ctx86768_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86775_ _alias-id86776_)
        (let* ((_rebind?86778_ '#f)
               (_phi86780_ (gx#current-expander-phi))
               (_ctx86782_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86775_
           _alias-id86776_
           _rebind?86778_
           _phi86780_
           _ctx86782_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86784_ _alias-id86785_ _rebind?86786_)
        (let* ((_phi86788_ (gx#current-expander-phi))
               (_ctx86790_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86784_
           _alias-id86785_
           _rebind?86786_
           _phi86788_
           _ctx86790_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86792_ _alias-id86793_ _rebind?86794_ _phi86795_)
        (let ((_ctx86797_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86792_
           _alias-id86793_
           _rebind?86794_
           _phi86795_
           _ctx86797_))))
    (define gx#core-bind-alias!
      (lambda _g89754_
        (let ((_g89753_ (##length _g89754_)))
          (cond ((##fx= _g89753_ 2)
                 (apply (lambda (_id86775_ _alias-id86776_)
                          (gx#core-bind-alias!__0 _id86775_ _alias-id86776_))
                        _g89754_))
                ((##fx= _g89753_ 3)
                 (apply (lambda (_id86784_ _alias-id86785_ _rebind?86786_)
                          (gx#core-bind-alias!__1
                           _id86784_
                           _alias-id86785_
                           _rebind?86786_))
                        _g89754_))
                ((##fx= _g89753_ 4)
                 (apply (lambda (_id86792_
                                 _alias-id86793_
                                 _rebind?86794_
                                 _phi86795_)
                          (gx#core-bind-alias!__2
                           _id86792_
                           _alias-id86793_
                           _rebind?86794_
                           _phi86795_))
                        _g89754_))
                ((##fx= _g89753_ 5)
                 (apply (lambda (_id86799_
                                 _alias-id86800_
                                 _rebind?86801_
                                 _phi86802_
                                 _ctx86803_)
                          (gx#core-bind-alias!__%
                           _id86799_
                           _alias-id86800_
                           _rebind?86801_
                           _phi86802_
                           _ctx86803_))
                        _g89754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89754_))))))
    (define gx#make-binding-id__%
      (lambda (_key86721_ _syntax?86722_ _phi86723_ _ctx86724_)
        (if (uninterned-symbol? _key86721_)
            (gensym 'L)
            (if (pair? _key86721_)
                (gensym (car _key86721_))
                (if (##structure-instance-of? _ctx86724_ 'gx#top-context::t)
                    (let ((_ns86726_
                           (gx#core-context-namespace__% _ctx86724_)))
                      (if (and (fxzero? _phi86723_) (not _syntax?86722_))
                          (if _ns86726_
                              (make-symbol__1 _ns86726_ '"#" _key86721_)
                              _key86721_)
                          (if _syntax?86722_
                              (make-symbol__1
                               (let ((_$e86728_ _ns86726_))
                                 (if _$e86728_ _$e86728_ '""))
                               '"[:"
                               (number->string _phi86723_)
                               '":]#"
                               _key86721_)
                              (make-symbol__1
                               (let ((_$e86731_ _ns86726_))
                                 (if _$e86731_ _$e86731_ '""))
                               '"["
                               (number->string _phi86723_)
                               '"]#"
                               _key86721_))))
                    (gensym _key86721_))))))
    (define gx#make-binding-id__0
      (lambda (_key86737_)
        (let* ((_syntax?86739_ '#f)
               (_phi86741_ (gx#current-expander-phi))
               (_ctx86743_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86737_
           _syntax?86739_
           _phi86741_
           _ctx86743_))))
    (define gx#make-binding-id__1
      (lambda (_key86745_ _syntax?86746_)
        (let* ((_phi86748_ (gx#current-expander-phi))
               (_ctx86750_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86745_
           _syntax?86746_
           _phi86748_
           _ctx86750_))))
    (define gx#make-binding-id__2
      (lambda (_key86752_ _syntax?86753_ _phi86754_)
        (let ((_ctx86756_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86752_
           _syntax?86753_
           _phi86754_
           _ctx86756_))))
    (define gx#make-binding-id
      (lambda _g89756_
        (let ((_g89755_ (##length _g89756_)))
          (cond ((##fx= _g89755_ 1)
                 (apply (lambda (_key86737_)
                          (gx#make-binding-id__0 _key86737_))
                        _g89756_))
                ((##fx= _g89755_ 2)
                 (apply (lambda (_key86745_ _syntax?86746_)
                          (gx#make-binding-id__1 _key86745_ _syntax?86746_))
                        _g89756_))
                ((##fx= _g89755_ 3)
                 (apply (lambda (_key86752_ _syntax?86753_ _phi86754_)
                          (gx#make-binding-id__2
                           _key86752_
                           _syntax?86753_
                           _phi86754_))
                        _g89756_))
                ((##fx= _g89755_ 4)
                 (apply (lambda (_key86758_
                                 _syntax?86759_
                                 _phi86760_
                                 _ctx86761_)
                          (gx#make-binding-id__%
                           _key86758_
                           _syntax?86759_
                           _phi86760_
                           _ctx86761_))
                        _g89756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89756_))))))))
