(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1710064747)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx86587_)
        (letrec ((_expand-special86589_
                  (lambda (_hd86591_ _K86592_ _rest86593_ _r86594_)
                    (_K86592_
                     _rest86593_
                     (cons (gx#core-expand-top _hd86591_) _r86594_)))))
          (gx#core-expand-block__0 _stx86587_ _expand-special86589_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx86340_)
        (letrec ((_expand-special86342_
                  (lambda (_hd86462_ _K86463_ _rest86464_ _r86465_)
                    (let* ((_K86469_
                            (lambda (_e86467_)
                              (_K86463_ _rest86464_ (cons _e86467_ _r86465_))))
                           (_e8647086499_ _hd86462_)
                           (_E8649486503_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8647086499_)))
                           (_E8649086515_
                            (lambda ()
                              (if (gx#stx-pair? _e8647086499_)
                                  (let ((_e8649586507_
                                         (gx#syntax-e _e8647086499_)))
                                    (let ((_hd8649686510_
                                           (##car _e8649586507_))
                                          (_tl8649786512_
                                           (##cdr _e8649586507_)))
                                      (if (and (gx#identifier? _hd8649686510_)
                                               (gx#core-identifier=?
                                                _hd8649686510_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K86469_
                                               (gx#core-expand-define-runtime%
                                                _hd86462_))
                                              (_E8649486503_))
                                          (_E8649486503_))))
                                  (_E8649486503_))))
                           (_E8648686527_
                            (lambda ()
                              (if (gx#stx-pair? _e8647086499_)
                                  (let ((_e8649186519_
                                         (gx#syntax-e _e8647086499_)))
                                    (let ((_hd8649286522_
                                           (##car _e8649186519_))
                                          (_tl8649386524_
                                           (##cdr _e8649186519_)))
                                      (if (and (gx#identifier? _hd8649286522_)
                                               (gx#core-identifier=?
                                                _hd8649286522_
                                                '%#define-alias))
                                          (if '#t
                                              (_K86469_
                                               (gx#core-expand-define-alias%
                                                _hd86462_))
                                              (_E8649086515_))
                                          (_E8649086515_))))
                                  (_E8649086515_))))
                           (_E8647686539_
                            (lambda ()
                              (if (gx#stx-pair? _e8647086499_)
                                  (let ((_e8648786531_
                                         (gx#syntax-e _e8647086499_)))
                                    (let ((_hd8648886534_
                                           (##car _e8648786531_))
                                          (_tl8648986536_
                                           (##cdr _e8648786531_)))
                                      (if (and (gx#identifier? _hd8648886534_)
                                               (gx#core-identifier=?
                                                _hd8648886534_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K86469_
                                               (gx#core-expand-define-syntax%
                                                _hd86462_))
                                              (_E8648686527_))
                                          (_E8648686527_))))
                                  (_E8648686527_))))
                           (_E8647286571_
                            (lambda ()
                              (if (gx#stx-pair? _e8647086499_)
                                  (let ((_e8647786543_
                                         (gx#syntax-e _e8647086499_)))
                                    (let ((_hd8647886546_
                                           (##car _e8647786543_))
                                          (_tl8647986548_
                                           (##cdr _e8647786543_)))
                                      (if (and (gx#identifier? _hd8647886546_)
                                               (gx#core-identifier=?
                                                _hd8647886546_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8647986548_)
                                              (let ((_e8648086551_
                                                     (gx#syntax-e
                                                      _tl8647986548_)))
                                                (let ((_hd8648186554_
                                                       (##car _e8648086551_))
                                                      (_tl8648286556_
                                                       (##cdr _e8648086551_)))
                                                  (let ((_hd-bind86559_
                                                         _hd8648186554_))
                                                    (if (gx#stx-pair?
                                                         _tl8648286556_)
                                                        (let ((_e8648386561_
                                                               (gx#syntax-e
                                                                _tl8648286556_)))
                                                          (let ((_hd8648486564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8648386561_))
                        (_tl8648586566_ (##cdr _e8648386561_)))
                    (let ((_expr86569_ _hd8648486564_))
                      (if (gx#stx-null? _tl8648586566_)
                          (if (gx#core-bind-values? _hd-bind86559_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind86559_)
                                (_K86469_ _hd86462_))
                              (_E8647686539_))
                          (_E8647686539_)))))
                (_E8647686539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8647686539_))
                                          (_E8647686539_))))
                                  (_E8647686539_))))
                           (_E8647186583_
                            (lambda ()
                              (if (gx#stx-pair? _e8647086499_)
                                  (let ((_e8647386575_
                                         (gx#syntax-e _e8647086499_)))
                                    (let ((_hd8647486578_
                                           (##car _e8647386575_))
                                          (_tl8647586580_
                                           (##cdr _e8647386575_)))
                                      (if (and (gx#identifier? _hd8647486578_)
                                               (gx#core-identifier=?
                                                _hd8647486578_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K86469_
                                               (gx#core-expand-begin-syntax%
                                                _hd86462_))
                                              (_E8647286571_))
                                          (_E8647286571_))))
                                  (_E8647286571_)))))
                      (_E8647186583_))))
                 (_eval-body86343_
                  (lambda (_rbody86351_)
                    (let _lp86353_ ((_rest86355_ _rbody86351_)
                                    (_body86356_ '())
                                    (_ebody86357_ '()))
                      (let* ((_rest8635886366_ _rest86355_)
                             (_else8636086374_
                              (lambda ()
                                (values _body86356_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody86357_)
                                          (gx#stx-source _stx86340_))))))
                             (_K8636286450_
                              (lambda (_rest86377_ _hd86378_)
                                (let* ((_e8637986396_ _hd86378_)
                                       (_E8639186400_
                                        (lambda ()
                                          (_lp86353_
                                           _rest86377_
                                           (cons _hd86378_ _body86356_)
                                           (cons _hd86378_ _ebody86357_))))
                                       (_E8638186412_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8637986396_)
                                              (let ((_e8639286404_
                                                     (gx#syntax-e
                                                      _e8637986396_)))
                                                (let ((_hd8639386407_
                                                       (##car _e8639286404_))
                                                      (_tl8639486409_
                                                       (##cdr _e8639286404_)))
                                                  (if (and (gx#identifier?
                                                            _hd8639386407_)
                                                           (gx#core-identifier=?
                                                            _hd8639386407_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp86353_
                                                           _rest86377_
                                                           (cons _hd86378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body86356_)
                   _ebody86357_)
                  (_E8639186400_))
              (_E8639186400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8639186400_))))
                                       (_E8638086446_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8637986396_)
                                              (let ((_e8638286416_
                                                     (gx#syntax-e
                                                      _e8637986396_)))
                                                (let ((_hd8638386419_
                                                       (##car _e8638286416_))
                                                      (_tl8638486421_
                                                       (##cdr _e8638286416_)))
                                                  (if (and (gx#identifier?
                                                            _hd8638386419_)
                                                           (gx#core-identifier=?
                                                            _hd8638386419_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8638486421_)
                                                          (let ((_e8638586424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8638486421_)))
                    (let ((_hd8638686427_ (##car _e8638586424_))
                          (_tl8638786429_ (##cdr _e8638586424_)))
                      (let ((_hd-bind86432_ _hd8638686427_))
                        (if (gx#stx-pair? _tl8638786429_)
                            (let ((_e8638886434_ (gx#syntax-e _tl8638786429_)))
                              (let ((_hd8638986437_ (##car _e8638886434_))
                                    (_tl8639086439_ (##cdr _e8638886434_)))
                                (let ((_expr86442_ _hd8638986437_))
                                  (if (gx#stx-null? _tl8639086439_)
                                      (if '#t
                                          (let ((_ehd86444_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind86432_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr86442_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd86378_))))
                                            (_lp86353_
                                             _rest86377_
                                             (cons _ehd86444_ _body86356_)
                                             (cons _ehd86444_ _ebody86357_)))
                                          (_E8638186412_))
                                      (_E8638186412_)))))
                            (_E8638186412_)))))
                  (_E8638186412_))
              (_E8638186412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8638186412_)))))
                                  (_E8638086446_)))))
                        (if (##pair? _rest8635886366_)
                            (let ((_hd8636386453_ (##car _rest8635886366_))
                                  (_tl8636486455_ (##cdr _rest8635886366_)))
                              (let* ((_hd86458_ _hd8636386453_)
                                     (_rest86460_ _tl8636486455_))
                                (_K8636286450_ _rest86460_ _hd86458_)))
                            (_else8636086374_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody86346_
                     (gx#core-expand-block__1
                      _stx86340_
                      _expand-special86342_
                      '#f))
                    (_g86610_ (_eval-body86343_ _rbody86346_)))
               (begin
                 (let ((_g86611_
                        (if (##values? _g86610_)
                            (##vector-length _g86610_)
                            1)))
                   (if (not (##fx= _g86611_ 2))
                       (error "Context expects 2 values" _g86611_)))
                 (let ((_expanded-body86348_ (##vector-ref _g86610_ 0))
                       (_value86349_ (##vector-ref _g86610_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body86348_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value86349_ '())))
                    (gx#stx-source _stx86340_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx86310_)
        (let* ((_e8631186318_ _stx86310_)
               (_E8631386322_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8631186318_)))
               (_E8631286336_
                (lambda ()
                  (if (gx#stx-pair? _e8631186318_)
                      (let ((_e8631486326_ (gx#syntax-e _e8631186318_)))
                        (let ((_hd8631586329_ (##car _e8631486326_))
                              (_tl8631686331_ (##cdr _e8631486326_)))
                          (let ((_body86334_ _tl8631686331_))
                            (if (gx#stx-list? _body86334_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body86334_)
                                 (gx#stx-source _stx86310_))
                                (_E8631386322_)))))
                      (_E8631386322_)))))
          (_E8631286336_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx86308_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx86308_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx86254_)
        (let* ((_e8625586268_ _stx86254_)
               (_E8625786272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8625586268_)))
               (_E8625686304_
                (lambda ()
                  (if (gx#stx-pair? _e8625586268_)
                      (let ((_e8625886276_ (gx#syntax-e _e8625586268_)))
                        (let ((_hd8625986279_ (##car _e8625886276_))
                              (_tl8626086281_ (##cdr _e8625886276_)))
                          (if (gx#stx-pair? _tl8626086281_)
                              (let ((_e8626186284_
                                     (gx#syntax-e _tl8626086281_)))
                                (let ((_hd8626286287_ (##car _e8626186284_))
                                      (_tl8626386289_ (##cdr _e8626186284_)))
                                  (let ((_ann86292_ _hd8626286287_))
                                    (if (gx#stx-pair? _tl8626386289_)
                                        (let ((_e8626486294_
                                               (gx#syntax-e _tl8626386289_)))
                                          (let ((_hd8626586297_
                                                 (##car _e8626486294_))
                                                (_tl8626686299_
                                                 (##cdr _e8626486294_)))
                                            (let ((_expr86302_ _hd8626586297_))
                                              (if (gx#stx-null? _tl8626686299_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann86292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr86302_) '())))
               (gx#stx-source _stx86254_))
              (_E8625786272_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8625786272_)))))
                                        (_E8625786272_)))))
                              (_E8625786272_))))
                      (_E8625786272_)))))
          (_E8625686304_))))
    (define gx#core-expand-local-block
      (lambda (_stx85978_ _body85979_)
        (letrec ((_expand-special85981_
                  (lambda (_hd86249_ _K86250_ _rest86251_ _r86252_)
                    (_K86250_
                     '()
                     (cons (_expand-internal85982_ _hd86249_ _rest86251_)
                           _r86252_))))
                 (_expand-internal85982_
                  (lambda (_hd86245_ _rest86246_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal85984_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd86245_ _rest86246_))
                          (gx#stx-source _stx85978_))
                         _expand-internal-special85983_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj86604
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj86604)
                       __obj86604))))
                 (_expand-internal-special85983_
                  (lambda (_hd86140_ _K86141_ _rest86142_ _r86143_)
                    (let* ((_e8614486169_ _hd86140_)
                           (_E8616486173_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8614486169_)))
                           (_E8616086185_
                            (lambda ()
                              (if (gx#stx-pair? _e8614486169_)
                                  (let ((_e8616586177_
                                         (gx#syntax-e _e8614486169_)))
                                    (let ((_hd8616686180_
                                           (##car _e8616586177_))
                                          (_tl8616786182_
                                           (##cdr _e8616586177_)))
                                      (if (and (gx#identifier? _hd8616686180_)
                                               (gx#core-identifier=?
                                                _hd8616686180_
                                                '%#declare))
                                          (if '#t
                                              (_K86141_
                                               _rest86142_
                                               (cons (gx#core-expand-declare%
                                                      _hd86140_)
                                                     _r86143_))
                                              (_E8616486173_))
                                          (_E8616486173_))))
                                  (_E8616486173_))))
                           (_E8615686197_
                            (lambda ()
                              (if (gx#stx-pair? _e8614486169_)
                                  (let ((_e8616186189_
                                         (gx#syntax-e _e8614486169_)))
                                    (let ((_hd8616286192_
                                           (##car _e8616186189_))
                                          (_tl8616386194_
                                           (##cdr _e8616186189_)))
                                      (if (and (gx#identifier? _hd8616286192_)
                                               (gx#core-identifier=?
                                                _hd8616286192_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd86140_)
                                                (_K86141_
                                                 _rest86142_
                                                 _r86143_))
                                              (_E8616086185_))
                                          (_E8616086185_))))
                                  (_E8616086185_))))
                           (_E8614686209_
                            (lambda ()
                              (if (gx#stx-pair? _e8614486169_)
                                  (let ((_e8615786201_
                                         (gx#syntax-e _e8614486169_)))
                                    (let ((_hd8615886204_
                                           (##car _e8615786201_))
                                          (_tl8615986206_
                                           (##cdr _e8615786201_)))
                                      (if (and (gx#identifier? _hd8615886204_)
                                               (gx#core-identifier=?
                                                _hd8615886204_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd86140_)
                                                (_K86141_
                                                 _rest86142_
                                                 _r86143_))
                                              (_E8615686197_))
                                          (_E8615686197_))))
                                  (_E8615686197_))))
                           (_E8614586241_
                            (lambda ()
                              (if (gx#stx-pair? _e8614486169_)
                                  (let ((_e8614786213_
                                         (gx#syntax-e _e8614486169_)))
                                    (let ((_hd8614886216_
                                           (##car _e8614786213_))
                                          (_tl8614986218_
                                           (##cdr _e8614786213_)))
                                      (if (and (gx#identifier? _hd8614886216_)
                                               (gx#core-identifier=?
                                                _hd8614886216_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8614986218_)
                                              (let ((_e8615086221_
                                                     (gx#syntax-e
                                                      _tl8614986218_)))
                                                (let ((_hd8615186224_
                                                       (##car _e8615086221_))
                                                      (_tl8615286226_
                                                       (##cdr _e8615086221_)))
                                                  (let ((_hd-bind86229_
                                                         _hd8615186224_))
                                                    (if (gx#stx-pair?
                                                         _tl8615286226_)
                                                        (let ((_e8615386231_
                                                               (gx#syntax-e
                                                                _tl8615286226_)))
                                                          (let ((_hd8615486234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8615386231_))
                        (_tl8615586236_ (##cdr _e8615386231_)))
                    (let ((_expr86239_ _hd8615486234_))
                      (if (gx#stx-null? _tl8615586236_)
                          (if (gx#core-bind-values? _hd-bind86229_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind86229_)
                                (_K86141_
                                 _rest86142_
                                 (cons _hd86140_ _r86143_)))
                              (_E8614686209_))
                          (_E8614686209_)))))
                (_E8614686209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8614686209_))
                                          (_E8614686209_))))
                                  (_E8614686209_)))))
                      (_E8614586241_))))
                 (_wrap-internal85984_
                  (lambda (_rbody85986_)
                    (let _lp85988_ ((_rest85990_ _rbody85986_)
                                    (_decls85991_ '())
                                    (_bind85992_ '())
                                    (_body85993_ '()))
                      (let* ((_e8599486001_ _rest85990_)
                             (_E8599686050_
                              (lambda ()
                                (let* ((_body86045_
                                        (let* ((_body8600486014_ _body85993_)
                                               (_else8600786022_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body85993_)
                                                   (gx#stx-source
                                                    _stx85978_)))))
                                          (let ((_K8601286042_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx85978_)))
                                                (_K8600986028_
                                                 (lambda (_expr86026_)
                                                   _expr86026_)))
                                            (let ((_try-match8600686038_
                                                   (lambda ()
                                                     (if (##pair? _body8600486014_)
                                                         (let ((_tl8601186033_
                                                                (##cdr _body8600486014_))
                                                               (_hd8601086031_
                                                                (##car _body8600486014_)))
                                                           (if (##null? _tl8601186033_)
                                                               (let ((_expr86036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8601086031_))
                         (_K8600986028_ _expr86036_))
                       (_else8600786022_)))
                 (_else8600786022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8600486014_)
                                                  (_K8601286042_)
                                                  (_try-match8600686038_))))))
                                       (_body86047_
                                        (if (null? _bind85992_)
                                            _body86045_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind85992_
                                                         (cons _body86045_
                                                               '())))
                                             (gx#stx-source _stx85978_)))))
                                  (if (null? _decls85991_)
                                      _body86047_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls85991_
                                                   (cons _body86047_ '())))
                                       (gx#stx-source _stx85978_))))))
                             (_E8599586136_
                              (lambda ()
                                (if (gx#stx-pair? _e8599486001_)
                                    (let ((_e8599786054_
                                           (gx#syntax-e _e8599486001_)))
                                      (let ((_hd8599886057_
                                             (##car _e8599786054_))
                                            (_tl8599986059_
                                             (##cdr _e8599786054_)))
                                        (let* ((_hd86062_ _hd8599886057_)
                                               (_rest86064_ _tl8599986059_))
                                          (if '#t
                                              (let* ((_e8606586082_ _hd86062_)
                                                     (_E8607786086_
                                                      (lambda ()
                                                        (if (null? _bind85992_)
                                                            (_lp85988_
                                                             _rest86064_
                                                             _decls85991_
                                                             _bind85992_
                                                             (cons _hd86062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body85993_))
                    (_lp85988_
                     _rest86064_
                     _decls85991_
                     (cons (cons '#f (cons _hd86062_ '())) _bind85992_)
                     _body85993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8606786100_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8606586082_)
                                                            (let ((_e8607886090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8606586082_)))
                      (let ((_hd8607986093_ (##car _e8607886090_))
                            (_tl8608086095_ (##cdr _e8607886090_)))
                        (if (and (gx#identifier? _hd8607986093_)
                                 (gx#core-identifier=?
                                  _hd8607986093_
                                  '%#declare))
                            (let ((_xdecls86098_ _tl8608086095_))
                              (if '#t
                                  (_lp85988_
                                   _rest86064_
                                   (gx#stx-foldr
                                    cons
                                    _decls85991_
                                    _xdecls86098_)
                                   _bind85992_
                                   _body85993_)
                                  (_E8607786086_)))
                            (_E8607786086_))))
                    (_E8607786086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8606686132_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8606586082_)
                                                            (let ((_e8606886104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8606586082_)))
                      (let ((_hd8606986107_ (##car _e8606886104_))
                            (_tl8607086109_ (##cdr _e8606886104_)))
                        (if (and (gx#identifier? _hd8606986107_)
                                 (gx#core-identifier=?
                                  _hd8606986107_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8607086109_)
                                (let ((_e8607186112_
                                       (gx#syntax-e _tl8607086109_)))
                                  (let ((_hd8607286115_ (##car _e8607186112_))
                                        (_tl8607386117_ (##cdr _e8607186112_)))
                                    (let ((_hd-bind86120_ _hd8607286115_))
                                      (if (gx#stx-pair? _tl8607386117_)
                                          (let ((_e8607486122_
                                                 (gx#syntax-e _tl8607386117_)))
                                            (let ((_hd8607586125_
                                                   (##car _e8607486122_))
                                                  (_tl8607686127_
                                                   (##cdr _e8607486122_)))
                                              (let ((_expr86130_
                                                     _hd8607586125_))
                                                (if (gx#stx-null?
                                                     _tl8607686127_)
                                                    (if '#t
                                                        (_lp85988_
                                                         _rest86064_
                                                         _decls85991_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind86120_)
                             (cons (gx#core-expand-expression _expr86130_)
                                   '()))
                       _bind85992_)
                 _body85993_)
                (_E8606786100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8606786100_)))))
                                          (_E8606786100_)))))
                                (_E8606786100_))
                            (_E8606786100_))))
                    (_E8606786100_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8606686132_))
                                              (_E8599686050_)))))
                                    (_E8599686050_)))))
                        (_E8599586136_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body85979_)
            (gx#stx-source _stx85978_))
           _expand-special85981_))))
    (define gx#core-expand-declare%
      (lambda (_stx85916_)
        (let* ((_e8591785924_ _stx85916_)
               (_E8591985928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8591785924_)))
               (_E8591885974_
                (lambda ()
                  (if (gx#stx-pair? _e8591785924_)
                      (let ((_e8592085932_ (gx#syntax-e _e8591785924_)))
                        (let ((_hd8592185935_ (##car _e8592085932_))
                              (_tl8592285937_ (##cdr _e8592085932_)))
                          (let ((_body85940_ _tl8592285937_))
                            (if (gx#stx-list? _body85940_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl85942_)
                                     (let* ((_e8594385950_ _decl85942_)
                                            (_E8594585954_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8594385950_)))
                                            (_E8594485970_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8594385950_)
                                                   (let ((_e8594685958_
                                                          (gx#syntax-e
                                                           _e8594385950_)))
                                                     (let ((_hd8594785961_
                                                            (##car _e8594685958_))
                                                           (_tl8594885963_
                                                            (##cdr _e8594685958_)))
                                                       (let* ((_head85966_
                                                               _hd8594785961_)
                                                              (_args85968_
                                                               _tl8594885963_))
                                                         (if (gx#stx-list?
                                                              _args85968_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl85942_)
                                                             (_E8594585954_)))))
                                                   (_E8594585954_)))))
                                       (_E8594485970_)))
                                   _body85940_))
                                 (gx#stx-source _stx85916_))
                                (_E8591985928_)))))
                      (_E8591985928_)))))
          (_E8591885974_))))
    (define gx#core-expand-extern%
      (lambda (_stx85820_)
        (let* ((_e8582185828_ _stx85820_)
               (_E8582385832_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8582185828_)))
               (_E8582285912_
                (lambda ()
                  (if (gx#stx-pair? _e8582185828_)
                      (let ((_e8582485836_ (gx#syntax-e _e8582185828_)))
                        (let ((_hd8582585839_ (##car _e8582485836_))
                              (_tl8582685841_ (##cdr _e8582485836_)))
                          (let ((_body85844_ _tl8582685841_))
                            (if '#t
                                (let _lp85846_ ((_rest85848_ _body85844_)
                                                (_r85849_ '()))
                                  (let* ((_e8585085864_ _rest85848_)
                                         (_E8586285868_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx85820_)))
                                         (_E8585285872_
                                          (lambda ()
                                            (if (gx#stx-null? _e8585085864_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r85849_))
                                                     (gx#stx-source
                                                      _stx85820_))
                                                    (_E8586285868_))
                                                (_E8586285868_))))
                                         (_E8585185908_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8585085864_)
                                                (let ((_e8585385876_
                                                       (gx#syntax-e
                                                        _e8585085864_)))
                                                  (let ((_hd8585485879_
                                                         (##car _e8585385876_))
                                                        (_tl8585585881_
                                                         (##cdr _e8585385876_)))
                                                    (if (gx#stx-pair?
                                                         _hd8585485879_)
                                                        (let ((_e8585685884_
                                                               (gx#syntax-e
                                                                _hd8585485879_)))
                                                          (let ((_hd8585785887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8585685884_))
                        (_tl8585885889_ (##cdr _e8585685884_)))
                    (let ((_id85892_ _hd8585785887_))
                      (if (gx#stx-pair? _tl8585885889_)
                          (let ((_e8585985894_ (gx#syntax-e _tl8585885889_)))
                            (let ((_hd8586085897_ (##car _e8585985894_))
                                  (_tl8586185899_ (##cdr _e8585985894_)))
                              (let ((_eid85902_ _hd8586085897_))
                                (if (gx#stx-null? _tl8586185899_)
                                    (let ((_rest85904_ _tl8585585881_))
                                      (if (and (gx#identifier? _id85892_)
                                               (gx#identifier? _eid85902_))
                                          (let ((_eid85906_
                                                 (gx#stx-e _eid85902_)))
                                            (gx#core-bind-extern!__0
                                             _id85892_
                                             _eid85906_)
                                            (_lp85846_
                                             _rest85904_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id85892_)
                                                         (cons _eid85906_ '()))
                                                   _r85849_)))
                                          (_E8585285872_)))
                                    (_E8585285872_)))))
                          (_E8585285872_)))))
                (_E8585285872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8585285872_)))))
                                    (_E8585185908_)))
                                (_E8582385832_)))))
                      (_E8582385832_)))))
          (_E8582285912_))))
    (define gx#core-expand-define-values%
      (lambda (_stx85766_)
        (let* ((_e8576785780_ _stx85766_)
               (_E8576985784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8576785780_)))
               (_E8576885816_
                (lambda ()
                  (if (gx#stx-pair? _e8576785780_)
                      (let ((_e8577085788_ (gx#syntax-e _e8576785780_)))
                        (let ((_hd8577185791_ (##car _e8577085788_))
                              (_tl8577285793_ (##cdr _e8577085788_)))
                          (if (gx#stx-pair? _tl8577285793_)
                              (let ((_e8577385796_
                                     (gx#syntax-e _tl8577285793_)))
                                (let ((_hd8577485799_ (##car _e8577385796_))
                                      (_tl8577585801_ (##cdr _e8577385796_)))
                                  (let ((_hd85804_ _hd8577485799_))
                                    (if (gx#stx-pair? _tl8577585801_)
                                        (let ((_e8577685806_
                                               (gx#syntax-e _tl8577585801_)))
                                          (let ((_hd8577785809_
                                                 (##car _e8577685806_))
                                                (_tl8577885811_
                                                 (##cdr _e8577685806_)))
                                            (let ((_expr85814_ _hd8577785809_))
                                              (if (gx#stx-null? _tl8577885811_)
                                                  (if (gx#core-bind-values?
                                                       _hd85804_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd85804_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd85804_)
                             (cons (gx#core-expand-expression _expr85814_)
                                   '())))
                 (gx#stx-source _stx85766_)))
              (_E8576985784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8576985784_)))))
                                        (_E8576985784_)))))
                              (_E8576985784_))))
                      (_E8576985784_)))))
          (_E8576885816_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx85710_)
        (let* ((_e8571185724_ _stx85710_)
               (_E8571385728_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8571185724_)))
               (_E8571285762_
                (lambda ()
                  (if (gx#stx-pair? _e8571185724_)
                      (let ((_e8571485732_ (gx#syntax-e _e8571185724_)))
                        (let ((_hd8571585735_ (##car _e8571485732_))
                              (_tl8571685737_ (##cdr _e8571485732_)))
                          (if (gx#stx-pair? _tl8571685737_)
                              (let ((_e8571785740_
                                     (gx#syntax-e _tl8571685737_)))
                                (let ((_hd8571885743_ (##car _e8571785740_))
                                      (_tl8571985745_ (##cdr _e8571785740_)))
                                  (let ((_id85748_ _hd8571885743_))
                                    (if (gx#stx-pair? _tl8571985745_)
                                        (let ((_e8572085750_
                                               (gx#syntax-e _tl8571985745_)))
                                          (let ((_hd8572185753_
                                                 (##car _e8572085750_))
                                                (_tl8572285755_
                                                 (##cdr _e8572085750_)))
                                            (let ((_binding-id85758_
                                                   _hd8572185753_))
                                              (if (gx#stx-null? _tl8572285755_)
                                                  (if (and (gx#identifier?
                                                            _id85748_)
                                                           (gx#identifier?
                                                            _binding-id85758_))
                                                      (let ((_eid85760_
                                                             (gx#stx-e
                                                              _binding-id85758_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id85748_
                                                         _eid85760_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id85748_)
                             (cons _eid85760_ '())))))
              (_E8571385728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8571385728_)))))
                                        (_E8571385728_)))))
                              (_E8571385728_))))
                      (_E8571385728_)))))
          (_E8571285762_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx85653_)
        (let* ((_e8565485667_ _stx85653_)
               (_E8565685671_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8565485667_)))
               (_E8565585706_
                (lambda ()
                  (if (gx#stx-pair? _e8565485667_)
                      (let ((_e8565785675_ (gx#syntax-e _e8565485667_)))
                        (let ((_hd8565885678_ (##car _e8565785675_))
                              (_tl8565985680_ (##cdr _e8565785675_)))
                          (if (gx#stx-pair? _tl8565985680_)
                              (let ((_e8566085683_
                                     (gx#syntax-e _tl8565985680_)))
                                (let ((_hd8566185686_ (##car _e8566085683_))
                                      (_tl8566285688_ (##cdr _e8566085683_)))
                                  (let ((_id85691_ _hd8566185686_))
                                    (if (gx#stx-pair? _tl8566285688_)
                                        (let ((_e8566385693_
                                               (gx#syntax-e _tl8566285688_)))
                                          (let ((_hd8566485696_
                                                 (##car _e8566385693_))
                                                (_tl8566585698_
                                                 (##cdr _e8566385693_)))
                                            (let ((_expr85701_ _hd8566485696_))
                                              (if (gx#stx-null? _tl8566585698_)
                                                  (if (gx#identifier?
                                                       _id85691_)
                                                      (let ((_g86612_
                                                             (gx#core-expand-expression+1
                                                              _expr85701_)))
                                                        (begin
                                                          (let ((_g86613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g86612_)
                             (##vector-length _g86612_)
                             1)))
                    (if (not (##fx= _g86613_ 2))
                        (error "Context expects 2 values" _g86613_)))
                  (let ((_e-stx85703_ (##vector-ref _g86612_ 0))
                        (_e85704_ (##vector-ref _g86612_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id85691_ _e85704_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id85691_)
                                   (cons _e-stx85703_ '())))
                       (gx#stx-source _stx85653_))))))
              (_E8565685671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8565685671_)))))
                                        (_E8565685671_)))))
                              (_E8565685671_))))
                      (_E8565685671_)))))
          (_E8565585706_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx85597_)
        (let* ((_e8559885611_ _stx85597_)
               (_E8560085615_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8559885611_)))
               (_E8559985649_
                (lambda ()
                  (if (gx#stx-pair? _e8559885611_)
                      (let ((_e8560185619_ (gx#syntax-e _e8559885611_)))
                        (let ((_hd8560285622_ (##car _e8560185619_))
                              (_tl8560385624_ (##cdr _e8560185619_)))
                          (if (gx#stx-pair? _tl8560385624_)
                              (let ((_e8560485627_
                                     (gx#syntax-e _tl8560385624_)))
                                (let ((_hd8560585630_ (##car _e8560485627_))
                                      (_tl8560685632_ (##cdr _e8560485627_)))
                                  (let ((_id85635_ _hd8560585630_))
                                    (if (gx#stx-pair? _tl8560685632_)
                                        (let ((_e8560785637_
                                               (gx#syntax-e _tl8560685632_)))
                                          (let ((_hd8560885640_
                                                 (##car _e8560785637_))
                                                (_tl8560985642_
                                                 (##cdr _e8560785637_)))
                                            (let ((_alias-id85645_
                                                   _hd8560885640_))
                                              (if (gx#stx-null? _tl8560985642_)
                                                  (if (and (gx#identifier?
                                                            _id85635_)
                                                           (gx#identifier?
                                                            _alias-id85645_))
                                                      (let ((_alias-id85647_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id85645_)))
                                                        (gx#core-bind-alias!__0
                                                         _id85635_
                                                         _alias-id85647_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id85635_)
                             (cons _alias-id85647_ '())))))
              (_E8560085615_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8560085615_)))))
                                        (_E8560085615_)))))
                              (_E8560085615_))))
                      (_E8560085615_)))))
          (_E8559985649_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx85540_ _wrap?85541_)
        (let* ((_e8554285552_ _stx85540_)
               (_E8554485556_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8554285552_)))
               (_E8554385583_
                (lambda ()
                  (if (gx#stx-pair? _e8554285552_)
                      (let ((_e8554585560_ (gx#syntax-e _e8554285552_)))
                        (let ((_hd8554685563_ (##car _e8554585560_))
                              (_tl8554785565_ (##cdr _e8554585560_)))
                          (if (gx#stx-pair? _tl8554785565_)
                              (let ((_e8554885568_
                                     (gx#syntax-e _tl8554785565_)))
                                (let ((_hd8554985571_ (##car _e8554885568_))
                                      (_tl8555085573_ (##cdr _e8554885568_)))
                                  (let* ((_hd85576_ _hd8554985571_)
                                         (_body85578_ _tl8555085573_))
                                    (if (gx#core-bind-values? _hd85576_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd85576_)
                                           (let ((_body85581_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd85576_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx85540_
                                                               _body85578_)
                                                              '()))))
                                             (if _wrap?85541_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body85581_)
                                                  (gx#stx-source _stx85540_))
                                                 _body85581_)))
                                         gx#current-expander-context
                                         (let ((__obj86605
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj86605)
                                           __obj86605))
                                        (_E8554485556_)))))
                              (_E8554485556_))))
                      (_E8554485556_)))))
          (_E8554385583_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx85590_)
        (let ((_wrap?85592_ '#t))
          (gx#core-expand-lambda%__% _stx85590_ _wrap?85592_))))
    (define gx#core-expand-lambda%
      (lambda _g86615_
        (let ((_g86614_ (##length _g86615_)))
          (cond ((##fx= _g86614_ 1)
                 (apply (lambda (_stx85590_)
                          (gx#core-expand-lambda%__0 _stx85590_))
                        _g86615_))
                ((##fx= _g86614_ 2)
                 (apply (lambda (_stx85594_ _wrap?85595_)
                          (gx#core-expand-lambda%__% _stx85594_ _wrap?85595_))
                        _g86615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g86615_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx85504_)
        (let* ((_e8550585512_ _stx85504_)
               (_E8550785516_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8550585512_)))
               (_E8550685535_
                (lambda ()
                  (if (gx#stx-pair? _e8550585512_)
                      (let ((_e8550885520_ (gx#syntax-e _e8550585512_)))
                        (let ((_hd8550985523_ (##car _e8550885520_))
                              (_tl8551085525_ (##cdr _e8550885520_)))
                          (let ((_clauses85528_ _tl8551085525_))
                            (if (gx#stx-list? _clauses85528_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause85530_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause85530_)
                                       (let ((_$e85532_
                                              (gx#stx-source _clause85530_)))
                                         (if _$e85532_
                                             _$e85532_
                                             (gx#stx-source _stx85504_))))
                                      '#f))
                                   _clauses85528_))
                                 (gx#stx-source _stx85504_))
                                (_E8550785516_)))))
                      (_E8550785516_)))))
          (_E8550685535_))))
    (define gx#core-expand-let-values%
      (lambda (_stx85458_)
        (let* ((_e8545985469_ _stx85458_)
               (_E8546185473_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8545985469_)))
               (_E8546085500_
                (lambda ()
                  (if (gx#stx-pair? _e8545985469_)
                      (let ((_e8546285477_ (gx#syntax-e _e8545985469_)))
                        (let ((_hd8546385480_ (##car _e8546285477_))
                              (_tl8546485482_ (##cdr _e8546285477_)))
                          (if (gx#stx-pair? _tl8546485482_)
                              (let ((_e8546585485_
                                     (gx#syntax-e _tl8546485482_)))
                                (let ((_hd8546685488_ (##car _e8546585485_))
                                      (_tl8546785490_ (##cdr _e8546585485_)))
                                  (let* ((_hd85493_ _hd8546685488_)
                                         (_body85495_ _tl8546785490_))
                                    (if (gx#core-expand-let-bind? _hd85493_)
                                        (let ((_expressions85497_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd85493_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd85493_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd85493_
                                                           _expressions85497_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx85458_
                         _body85495_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx85458_)))
                                           gx#current-expander-context
                                           (let ((__obj86606
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj86606)
                                             __obj86606)))
                                        (_E8546185473_)))))
                              (_E8546185473_))))
                      (_E8546185473_)))))
          (_E8546085500_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx85403_ _form85404_)
        (let* ((_e8540585415_ _stx85403_)
               (_E8540785419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8540585415_)))
               (_E8540685444_
                (lambda ()
                  (if (gx#stx-pair? _e8540585415_)
                      (let ((_e8540885423_ (gx#syntax-e _e8540585415_)))
                        (let ((_hd8540985426_ (##car _e8540885423_))
                              (_tl8541085428_ (##cdr _e8540885423_)))
                          (if (gx#stx-pair? _tl8541085428_)
                              (let ((_e8541185431_
                                     (gx#syntax-e _tl8541085428_)))
                                (let ((_hd8541285434_ (##car _e8541185431_))
                                      (_tl8541385436_ (##cdr _e8541185431_)))
                                  (let* ((_hd85439_ _hd8541285434_)
                                         (_body85441_ _tl8541385436_))
                                    (if (gx#core-expand-let-bind? _hd85439_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd85439_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form85404_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd85439_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd85439_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx85403_
                                                               _body85441_)
                                                              '())))
                                            (gx#stx-source _stx85403_)))
                                         gx#current-expander-context
                                         (let ((__obj86607
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj86607)
                                           __obj86607))
                                        (_E8540785419_)))))
                              (_E8540785419_))))
                      (_E8540785419_)))))
          (_E8540685444_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx85451_)
        (let ((_form85453_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx85451_ _form85453_))))
    (define gx#core-expand-letrec-values%
      (lambda _g86617_
        (let ((_g86616_ (##length _g86617_)))
          (cond ((##fx= _g86616_ 1)
                 (apply (lambda (_stx85451_)
                          (gx#core-expand-letrec-values%__0 _stx85451_))
                        _g86617_))
                ((##fx= _g86616_ 2)
                 (apply (lambda (_stx85455_ _form85456_)
                          (gx#core-expand-letrec-values%__%
                           _stx85455_
                           _form85456_))
                        _g86617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g86617_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx85400_)
        (gx#core-expand-letrec-values%__% _stx85400_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx85357_)
        (if (gx#stx-list? _stx85357_)
            (gx#stx-andmap
             (lambda (_bind85359_)
               (let* ((_e8536085370_ _bind85359_)
                      (_E8536285374_ (lambda () '#f))
                      (_E8536185396_
                       (lambda ()
                         (if (gx#stx-pair? _e8536085370_)
                             (let ((_e8536385378_ (gx#syntax-e _e8536085370_)))
                               (let ((_hd8536485381_ (##car _e8536385378_))
                                     (_tl8536585383_ (##cdr _e8536385378_)))
                                 (let ((_hd85386_ _hd8536485381_))
                                   (if (gx#stx-pair? _tl8536585383_)
                                       (let ((_e8536685388_
                                              (gx#syntax-e _tl8536585383_)))
                                         (let ((_hd8536785391_
                                                (##car _e8536685388_))
                                               (_tl8536885393_
                                                (##cdr _e8536685388_)))
                                           (if (gx#stx-null? _tl8536885393_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd85386_)
                                                   (_E8536285374_))
                                               (_E8536285374_))))
                                       (_E8536285374_)))))
                             (_E8536285374_)))))
                 (_E8536185396_)))
             _stx85357_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind85316_)
        (let* ((_e8531785327_ _bind85316_)
               (_E8531985331_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8531785327_)))
               (_E8531885353_
                (lambda ()
                  (if (gx#stx-pair? _e8531785327_)
                      (let ((_e8532085335_ (gx#syntax-e _e8531785327_)))
                        (let ((_hd8532185338_ (##car _e8532085335_))
                              (_tl8532285340_ (##cdr _e8532085335_)))
                          (if (gx#stx-pair? _tl8532285340_)
                              (let ((_e8532385343_
                                     (gx#syntax-e _tl8532285340_)))
                                (let ((_hd8532485346_ (##car _e8532385343_))
                                      (_tl8532585348_ (##cdr _e8532385343_)))
                                  (let ((_expr85351_ _hd8532485346_))
                                    (if (gx#stx-null? _tl8532585348_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr85351_)
                                            (_E8531985331_))
                                        (_E8531985331_)))))
                              (_E8531985331_))))
                      (_E8531985331_)))))
          (_E8531885353_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind85275_)
        (let* ((_e8527685286_ _bind85275_)
               (_E8527885290_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8527685286_)))
               (_E8527785312_
                (lambda ()
                  (if (gx#stx-pair? _e8527685286_)
                      (let ((_e8527985294_ (gx#syntax-e _e8527685286_)))
                        (let ((_hd8528085297_ (##car _e8527985294_))
                              (_tl8528185299_ (##cdr _e8527985294_)))
                          (let ((_hd85302_ _hd8528085297_))
                            (if (gx#stx-pair? _tl8528185299_)
                                (let ((_e8528285304_
                                       (gx#syntax-e _tl8528185299_)))
                                  (let ((_hd8528385307_ (##car _e8528285304_))
                                        (_tl8528485309_ (##cdr _e8528285304_)))
                                    (if (gx#stx-null? _tl8528485309_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd85302_)
                                            (_E8527885290_))
                                        (_E8527885290_))))
                                (_E8527885290_)))))
                      (_E8527885290_)))))
          (_E8527785312_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind85233_ _expr85234_)
        (let* ((_e8523585245_ _bind85233_)
               (_E8523785249_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8523585245_)))
               (_E8523685271_
                (lambda ()
                  (if (gx#stx-pair? _e8523585245_)
                      (let ((_e8523885253_ (gx#syntax-e _e8523585245_)))
                        (let ((_hd8523985256_ (##car _e8523885253_))
                              (_tl8524085258_ (##cdr _e8523885253_)))
                          (let ((_hd85261_ _hd8523985256_))
                            (if (gx#stx-pair? _tl8524085258_)
                                (let ((_e8524185263_
                                       (gx#syntax-e _tl8524085258_)))
                                  (let ((_hd8524285266_ (##car _e8524185263_))
                                        (_tl8524385268_ (##cdr _e8524185263_)))
                                    (if (gx#stx-null? _tl8524385268_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd85261_)
                                                  (cons _expr85234_ '()))
                                            (_E8523785249_))
                                        (_E8523785249_))))
                                (_E8523785249_)))))
                      (_E8523785249_)))))
          (_E8523685271_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx85187_)
        (let* ((_e8518885198_ _stx85187_)
               (_E8519085202_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8518885198_)))
               (_E8518985229_
                (lambda ()
                  (if (gx#stx-pair? _e8518885198_)
                      (let ((_e8519185206_ (gx#syntax-e _e8518885198_)))
                        (let ((_hd8519285209_ (##car _e8519185206_))
                              (_tl8519385211_ (##cdr _e8519185206_)))
                          (if (gx#stx-pair? _tl8519385211_)
                              (let ((_e8519485214_
                                     (gx#syntax-e _tl8519385211_)))
                                (let ((_hd8519585217_ (##car _e8519485214_))
                                      (_tl8519685219_ (##cdr _e8519485214_)))
                                  (let* ((_hd85222_ _hd8519585217_)
                                         (_body85224_ _tl8519685219_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd85222_)
                                        (let ((_expanders85226_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd85222_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd85222_
                                              _expanders85226_)
                                             (gx#core-expand-local-block
                                              _stx85187_
                                              _body85224_))
                                           gx#current-expander-context
                                           (let ((__obj86608
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj86608)
                                             __obj86608)))
                                        (_E8519085202_)))))
                              (_E8519085202_))))
                      (_E8519085202_)))))
          (_E8518985229_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx85136_)
        (let* ((_e8513785147_ _stx85136_)
               (_E8513985151_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8513785147_)))
               (_E8513885183_
                (lambda ()
                  (if (gx#stx-pair? _e8513785147_)
                      (let ((_e8514085155_ (gx#syntax-e _e8513785147_)))
                        (let ((_hd8514185158_ (##car _e8514085155_))
                              (_tl8514285160_ (##cdr _e8514085155_)))
                          (if (gx#stx-pair? _tl8514285160_)
                              (let ((_e8514385163_
                                     (gx#syntax-e _tl8514285160_)))
                                (let ((_hd8514485166_ (##car _e8514385163_))
                                      (_tl8514585168_ (##cdr _e8514385163_)))
                                  (let* ((_hd85171_ _hd8514485166_)
                                         (_body85173_ _tl8514585168_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd85171_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd85171_
                                            (make-list
                                             (gx#stx-length _hd85171_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8517585178_
                                                     _g8517685180_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8517585178_
                                               _g8517685180_
                                               '#t))
                                            _hd85171_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd85171_))
                                           (gx#core-expand-local-block
                                            _stx85136_
                                            _body85173_))
                                         gx#current-expander-context
                                         (let ((__obj86609
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj86609)
                                           __obj86609))
                                        (_E8513985151_)))))
                              (_E8513985151_))))
                      (_E8513985151_)))))
          (_E8513885183_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx85093_)
        (if (gx#stx-list? _stx85093_)
            (gx#stx-andmap
             (lambda (_bind85095_)
               (let* ((_e8509685106_ _bind85095_)
                      (_E8509885110_ (lambda () '#f))
                      (_E8509785132_
                       (lambda ()
                         (if (gx#stx-pair? _e8509685106_)
                             (let ((_e8509985114_ (gx#syntax-e _e8509685106_)))
                               (let ((_hd8510085117_ (##car _e8509985114_))
                                     (_tl8510185119_ (##cdr _e8509985114_)))
                                 (let ((_hd85122_ _hd8510085117_))
                                   (if (gx#stx-pair? _tl8510185119_)
                                       (let ((_e8510285124_
                                              (gx#syntax-e _tl8510185119_)))
                                         (let ((_hd8510385127_
                                                (##car _e8510285124_))
                                               (_tl8510485129_
                                                (##cdr _e8510285124_)))
                                           (if (gx#stx-null? _tl8510485129_)
                                               (if '#t
                                                   (gx#identifier? _hd85122_)
                                                   (_E8509885110_))
                                               (_E8509885110_))))
                                       (_E8509885110_)))))
                             (_E8509885110_)))))
                 (_E8509785132_)))
             _stx85093_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind85050_)
        (let* ((_e8505185061_ _bind85050_)
               (_E8505385065_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8505185061_)))
               (_E8505285089_
                (lambda ()
                  (if (gx#stx-pair? _e8505185061_)
                      (let ((_e8505485069_ (gx#syntax-e _e8505185061_)))
                        (let ((_hd8505585072_ (##car _e8505485069_))
                              (_tl8505685074_ (##cdr _e8505485069_)))
                          (if (gx#stx-pair? _tl8505685074_)
                              (let ((_e8505785077_
                                     (gx#syntax-e _tl8505685074_)))
                                (let ((_hd8505885080_ (##car _e8505785077_))
                                      (_tl8505985082_ (##cdr _e8505785077_)))
                                  (let ((_expr85085_ _hd8505885080_))
                                    (if (gx#stx-null? _tl8505985082_)
                                        (if '#t
                                            (let ((_g86618_
                                                   (gx#core-expand-expression+1
                                                    _expr85085_)))
                                              (begin
                                                (let ((_g86619_
                                                       (if (##values? _g86618_)
                                                           (##vector-length
                                                            _g86618_)
                                                           1)))
                                                  (if (not (##fx= _g86619_ 2))
                                                      (error "Context expects 2 values"
                                                             _g86619_)))
                                                (let ((_e85087_
                                                       (##vector-ref
                                                        _g86618_
                                                        1)))
                                                  _e85087_)))
                                            (_E8505385065_))
                                        (_E8505385065_)))))
                              (_E8505385065_))))
                      (_E8505385065_)))))
          (_E8505285089_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind84995_ _e84996_ _rebind?84997_)
        (let* ((_e8499885008_ _bind84995_)
               (_E8500085012_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8499885008_)))
               (_E8499985034_
                (lambda ()
                  (if (gx#stx-pair? _e8499885008_)
                      (let ((_e8500185016_ (gx#syntax-e _e8499885008_)))
                        (let ((_hd8500285019_ (##car _e8500185016_))
                              (_tl8500385021_ (##cdr _e8500185016_)))
                          (let ((_id85024_ _hd8500285019_))
                            (if (gx#stx-pair? _tl8500385021_)
                                (let ((_e8500485026_
                                       (gx#syntax-e _tl8500385021_)))
                                  (let ((_hd8500585029_ (##car _e8500485026_))
                                        (_tl8500685031_ (##cdr _e8500485026_)))
                                    (if (gx#stx-null? _tl8500685031_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id85024_
                                             _e84996_
                                             _rebind?84997_)
                                            (_E8500085012_))
                                        (_E8500085012_))))
                                (_E8500085012_)))))
                      (_E8500085012_)))))
          (_E8499985034_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind85041_ _e85042_)
        (let ((_rebind?85044_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind85041_
           _e85042_
           _rebind?85044_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g86621_
        (let ((_g86620_ (##length _g86621_)))
          (cond ((##fx= _g86620_ 2)
                 (apply (lambda (_bind85041_ _e85042_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind85041_
                           _e85042_))
                        _g86621_))
                ((##fx= _g86620_ 3)
                 (apply (lambda (_bind85046_ _e85047_ _rebind?85048_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind85046_
                           _e85047_
                           _rebind?85048_))
                        _g86621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g86621_))))))
    (define gx#core-expand-expression%
      (lambda (_stx84953_)
        (let* ((_e8495484964_ _stx84953_)
               (_E8495684968_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8495484964_)))
               (_E8495584990_
                (lambda ()
                  (if (gx#stx-pair? _e8495484964_)
                      (let ((_e8495784972_ (gx#syntax-e _e8495484964_)))
                        (let ((_hd8495884975_ (##car _e8495784972_))
                              (_tl8495984977_ (##cdr _e8495784972_)))
                          (if (gx#stx-pair? _tl8495984977_)
                              (let ((_e8496084980_
                                     (gx#syntax-e _tl8495984977_)))
                                (let ((_hd8496184983_ (##car _e8496084980_))
                                      (_tl8496284985_ (##cdr _e8496084980_)))
                                  (let ((_expr84988_ _hd8496184983_))
                                    (if (gx#stx-null? _tl8496284985_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr84988_)
                                            (_E8495684968_))
                                        (_E8495684968_)))))
                              (_E8495684968_))))
                      (_E8495684968_)))))
          (_E8495584990_))))
    (define gx#core-expand-quote%
      (lambda (_stx84912_)
        (let* ((_e8491384923_ _stx84912_)
               (_E8491584927_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8491384923_)))
               (_E8491484949_
                (lambda ()
                  (if (gx#stx-pair? _e8491384923_)
                      (let ((_e8491684931_ (gx#syntax-e _e8491384923_)))
                        (let ((_hd8491784934_ (##car _e8491684931_))
                              (_tl8491884936_ (##cdr _e8491684931_)))
                          (if (gx#stx-pair? _tl8491884936_)
                              (let ((_e8491984939_
                                     (gx#syntax-e _tl8491884936_)))
                                (let ((_hd8492084942_ (##car _e8491984939_))
                                      (_tl8492184944_ (##cdr _e8491984939_)))
                                  (let ((_e84947_ _hd8492084942_))
                                    (if (gx#stx-null? _tl8492184944_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e84947_)
                                                         '()))
                                             (gx#stx-source _stx84912_))
                                            (_E8491584927_))
                                        (_E8491584927_)))))
                              (_E8491584927_))))
                      (_E8491584927_)))))
          (_E8491484949_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx84871_)
        (let* ((_e8487284882_ _stx84871_)
               (_E8487484886_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8487284882_)))
               (_E8487384908_
                (lambda ()
                  (if (gx#stx-pair? _e8487284882_)
                      (let ((_e8487584890_ (gx#syntax-e _e8487284882_)))
                        (let ((_hd8487684893_ (##car _e8487584890_))
                              (_tl8487784895_ (##cdr _e8487584890_)))
                          (if (gx#stx-pair? _tl8487784895_)
                              (let ((_e8487884898_
                                     (gx#syntax-e _tl8487784895_)))
                                (let ((_hd8487984901_ (##car _e8487884898_))
                                      (_tl8488084903_ (##cdr _e8487884898_)))
                                  (let ((_e84906_ _hd8487984901_))
                                    (if (gx#stx-null? _tl8488084903_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e84906_)
                                                         '()))
                                             (gx#stx-source _stx84871_))
                                            (_E8487484886_))
                                        (_E8487484886_)))))
                              (_E8487484886_))))
                      (_E8487484886_)))))
          (_E8487384908_))))
    (define gx#core-expand-call%
      (lambda (_stx84828_)
        (let* ((_e8482984839_ _stx84828_)
               (_E8483184843_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8482984839_)))
               (_E8483084867_
                (lambda ()
                  (if (gx#stx-pair? _e8482984839_)
                      (let ((_e8483284847_ (gx#syntax-e _e8482984839_)))
                        (let ((_hd8483384850_ (##car _e8483284847_))
                              (_tl8483484852_ (##cdr _e8483284847_)))
                          (if (gx#stx-pair? _tl8483484852_)
                              (let ((_e8483584855_
                                     (gx#syntax-e _tl8483484852_)))
                                (let ((_hd8483684858_ (##car _e8483584855_))
                                      (_tl8483784860_ (##cdr _e8483584855_)))
                                  (let* ((_rator84863_ _hd8483684858_)
                                         (_args84865_ _tl8483784860_))
                                    (if (gx#stx-list? _args84865_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator84863_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args84865_))
                                         (gx#stx-source _stx84828_))
                                        (_E8483184843_)))))
                              (_E8483184843_))))
                      (_E8483184843_)))))
          (_E8483084867_))))
    (define gx#core-expand-if%
      (lambda (_stx84761_)
        (let* ((_e8476284778_ _stx84761_)
               (_E8476484782_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8476284778_)))
               (_E8476384824_
                (lambda ()
                  (if (gx#stx-pair? _e8476284778_)
                      (let ((_e8476584786_ (gx#syntax-e _e8476284778_)))
                        (let ((_hd8476684789_ (##car _e8476584786_))
                              (_tl8476784791_ (##cdr _e8476584786_)))
                          (if (gx#stx-pair? _tl8476784791_)
                              (let ((_e8476884794_
                                     (gx#syntax-e _tl8476784791_)))
                                (let ((_hd8476984797_ (##car _e8476884794_))
                                      (_tl8477084799_ (##cdr _e8476884794_)))
                                  (let ((_test84802_ _hd8476984797_))
                                    (if (gx#stx-pair? _tl8477084799_)
                                        (let ((_e8477184804_
                                               (gx#syntax-e _tl8477084799_)))
                                          (let ((_hd8477284807_
                                                 (##car _e8477184804_))
                                                (_tl8477384809_
                                                 (##cdr _e8477184804_)))
                                            (let ((_K84812_ _hd8477284807_))
                                              (if (gx#stx-pair? _tl8477384809_)
                                                  (let ((_e8477484814_
                                                         (gx#syntax-e
                                                          _tl8477384809_)))
                                                    (let ((_hd8477584817_
                                                           (##car _e8477484814_))
                                                          (_tl8477684819_
                                                           (##cdr _e8477484814_)))
                                                      (let ((_E84822_
                                                             _hd8477584817_))
                                                        (if (gx#stx-null?
                                                             _tl8477684819_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test84802_)
                                     (cons (gx#core-expand-expression _K84812_)
                                           (cons (gx#core-expand-expression
                                                  _E84822_)
                                                 '()))))
                         (gx#stx-source _stx84761_))
                        (_E8476484782_))
                    (_E8476484782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8476484782_)))))
                                        (_E8476484782_)))))
                              (_E8476484782_))))
                      (_E8476484782_)))))
          (_E8476384824_))))
    (define gx#core-expand-ref%
      (lambda (_stx84720_)
        (let* ((_e8472184731_ _stx84720_)
               (_E8472384735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8472184731_)))
               (_E8472284757_
                (lambda ()
                  (if (gx#stx-pair? _e8472184731_)
                      (let ((_e8472484739_ (gx#syntax-e _e8472184731_)))
                        (let ((_hd8472584742_ (##car _e8472484739_))
                              (_tl8472684744_ (##cdr _e8472484739_)))
                          (if (gx#stx-pair? _tl8472684744_)
                              (let ((_e8472784747_
                                     (gx#syntax-e _tl8472684744_)))
                                (let ((_hd8472884750_ (##car _e8472784747_))
                                      (_tl8472984752_ (##cdr _e8472784747_)))
                                  (let ((_id84755_ _hd8472884750_))
                                    (if (gx#stx-null? _tl8472984752_)
                                        (if (gx#identifier? _id84755_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id84755_
                                                          _stx84720_)
                                                         '()))
                                             (gx#stx-source _stx84720_))
                                            (_E8472384735_))
                                        (_E8472384735_)))))
                              (_E8472384735_))))
                      (_E8472384735_)))))
          (_E8472284757_))))
    (define gx#core-expand-setq%
      (lambda (_stx84666_)
        (let* ((_e8466784680_ _stx84666_)
               (_E8466984684_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8466784680_)))
               (_E8466884716_
                (lambda ()
                  (if (gx#stx-pair? _e8466784680_)
                      (let ((_e8467084688_ (gx#syntax-e _e8466784680_)))
                        (let ((_hd8467184691_ (##car _e8467084688_))
                              (_tl8467284693_ (##cdr _e8467084688_)))
                          (if (gx#stx-pair? _tl8467284693_)
                              (let ((_e8467384696_
                                     (gx#syntax-e _tl8467284693_)))
                                (let ((_hd8467484699_ (##car _e8467384696_))
                                      (_tl8467584701_ (##cdr _e8467384696_)))
                                  (let ((_id84704_ _hd8467484699_))
                                    (if (gx#stx-pair? _tl8467584701_)
                                        (let ((_e8467684706_
                                               (gx#syntax-e _tl8467584701_)))
                                          (let ((_hd8467784709_
                                                 (##car _e8467684706_))
                                                (_tl8467884711_
                                                 (##cdr _e8467684706_)))
                                            (let ((_expr84714_ _hd8467784709_))
                                              (if (gx#stx-null? _tl8467884711_)
                                                  (if (gx#identifier?
                                                       _id84704_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id84704_
                            _stx84666_)
                           (cons (gx#core-expand-expression _expr84714_) '())))
               (gx#stx-source _stx84666_))
              (_E8466984684_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8466984684_)))))
                                        (_E8466984684_)))))
                              (_E8466984684_))))
                      (_E8466984684_)))))
          (_E8466884716_))))
    (define gx#macro-expand-extern
      (lambda (_stx84514_)
        (letrec ((_generate84516_
                  (lambda (_body84546_)
                    (let _lp84548_ ((_rest84550_ _body84546_)
                                    (_ns84551_ (gx#core-context-namespace__0))
                                    (_r84552_ '()))
                      (let* ((_e8455384568_ _rest84550_)
                             (_E8456684572_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8455384568_)))
                             (_E8456284576_
                              (lambda ()
                                (if (gx#stx-null? _e8455384568_)
                                    (if '#t (reverse _r84552_) (_E8456684572_))
                                    (_E8456684572_))))
                             (_E8455584633_
                              (lambda ()
                                (if (gx#stx-pair? _e8455384568_)
                                    (let ((_e8456384580_
                                           (gx#syntax-e _e8455384568_)))
                                      (let ((_hd8456484583_
                                             (##car _e8456384580_))
                                            (_tl8456584585_
                                             (##cdr _e8456384580_)))
                                        (let* ((_hd84588_ _hd8456484583_)
                                               (_rest84590_ _tl8456584585_))
                                          (if '#t
                                              (if (gx#identifier? _hd84588_)
                                                  (_lp84548_
                                                   _rest84590_
                                                   _ns84551_
                                                   (cons (cons _hd84588_
                                                               (cons (if _ns84551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd84588_
                                  _ns84551_
                                  '"#"
                                  _hd84588_)
                                 _hd84588_)
                             '()))
                 _r84552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8459184601_
                                                          _hd84588_)
                                                         (_E8459384605_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8459184601_)))
                                                         (_E8459284629_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8459184601_)
                        (let ((_e8459484609_ (gx#syntax-e _e8459184601_)))
                          (let ((_hd8459584612_ (##car _e8459484609_))
                                (_tl8459684614_ (##cdr _e8459484609_)))
                            (let ((_id84617_ _hd8459584612_))
                              (if (gx#stx-pair? _tl8459684614_)
                                  (let ((_e8459784619_
                                         (gx#syntax-e _tl8459684614_)))
                                    (let ((_hd8459884622_
                                           (##car _e8459784619_))
                                          (_tl8459984624_
                                           (##cdr _e8459784619_)))
                                      (let ((_eid84627_ _hd8459884622_))
                                        (if (gx#stx-null? _tl8459984624_)
                                            (if (and (gx#identifier? _id84617_)
                                                     (gx#identifier?
                                                      _eid84627_))
                                                (_lp84548_
                                                 _rest84590_
                                                 _ns84551_
                                                 (cons (cons _id84617_
                                                             (cons _eid84627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r84552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8459384605_))
                                            (_E8459384605_)))))
                                  (_E8459384605_)))))
                        (_E8459384605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8459284629_)))
                                              (_E8456284576_)))))
                                    (_E8456284576_))))
                             (_E8455484662_
                              (lambda ()
                                (if (gx#stx-pair? _e8455384568_)
                                    (let ((_e8455684637_
                                           (gx#syntax-e _e8455384568_)))
                                      (let ((_hd8455784640_
                                             (##car _e8455684637_))
                                            (_tl8455884642_
                                             (##cdr _e8455684637_)))
                                        (if (eq? (gx#stx-e _hd8455784640_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8455884642_)
                                                (let ((_e8455984645_
                                                       (gx#syntax-e
                                                        _tl8455884642_)))
                                                  (let ((_hd8456084648_
                                                         (##car _e8455984645_))
                                                        (_tl8456184650_
                                                         (##cdr _e8455984645_)))
                                                    (let* ((_ns84653_
                                                            _hd8456084648_)
                                                           (_rest84655_
                                                            _tl8456184650_))
                                                      (if '#t
                                                          (let ((_ns84660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns84653_)
                             (symbol->string (gx#stx-e _ns84653_))
                             (if (or (gx#stx-string? _ns84653_)
                                     (gx#stx-false? _ns84653_))
                                 (gx#stx-e _ns84653_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx84514_
                                  _ns84653_)))))
                    (_lp84548_ _rest84655_ _ns84660_ _r84552_))
                  (_E8455584633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8455584633_))
                                            (_E8455584633_))))
                                    (_E8455584633_)))))
                        (_E8455484662_))))))
          (let* ((_e8451784524_ _stx84514_)
                 (_E8451984528_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8451784524_)))
                 (_E8451884542_
                  (lambda ()
                    (if (gx#stx-pair? _e8451784524_)
                        (let ((_e8452084532_ (gx#syntax-e _e8451784524_)))
                          (let ((_hd8452184535_ (##car _e8452084532_))
                                (_tl8452284537_ (##cdr _e8452084532_)))
                            (let ((_body84540_ _tl8452284537_))
                              (if (gx#stx-list? _body84540_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate84516_ _body84540_))
                                  (_E8451984528_)))))
                        (_E8451984528_)))))
            (_E8451884542_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx84460_)
        (let* ((_e8446184474_ _stx84460_)
               (_E8446384478_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8446184474_)))
               (_E8446284510_
                (lambda ()
                  (if (gx#stx-pair? _e8446184474_)
                      (let ((_e8446484482_ (gx#syntax-e _e8446184474_)))
                        (let ((_hd8446584485_ (##car _e8446484482_))
                              (_tl8446684487_ (##cdr _e8446484482_)))
                          (if (gx#stx-pair? _tl8446684487_)
                              (let ((_e8446784490_
                                     (gx#syntax-e _tl8446684487_)))
                                (let ((_hd8446884493_ (##car _e8446784490_))
                                      (_tl8446984495_ (##cdr _e8446784490_)))
                                  (let ((_hd84498_ _hd8446884493_))
                                    (if (gx#stx-pair? _tl8446984495_)
                                        (let ((_e8447084500_
                                               (gx#syntax-e _tl8446984495_)))
                                          (let ((_hd8447184503_
                                                 (##car _e8447084500_))
                                                (_tl8447284505_
                                                 (##cdr _e8447084500_)))
                                            (let ((_expr84508_ _hd8447184503_))
                                              (if (gx#stx-null? _tl8447284505_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd84498_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd84498_)
                          (cons _expr84508_ '())))
              (_E8446384478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8446384478_)))))
                                        (_E8446384478_)))))
                              (_E8446384478_))))
                      (_E8446384478_)))))
          (_E8446284510_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx84406_)
        (let* ((_e8440784420_ _stx84406_)
               (_E8440984424_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8440784420_)))
               (_E8440884456_
                (lambda ()
                  (if (gx#stx-pair? _e8440784420_)
                      (let ((_e8441084428_ (gx#syntax-e _e8440784420_)))
                        (let ((_hd8441184431_ (##car _e8441084428_))
                              (_tl8441284433_ (##cdr _e8441084428_)))
                          (if (gx#stx-pair? _tl8441284433_)
                              (let ((_e8441384436_
                                     (gx#syntax-e _tl8441284433_)))
                                (let ((_hd8441484439_ (##car _e8441384436_))
                                      (_tl8441584441_ (##cdr _e8441384436_)))
                                  (let ((_hd84444_ _hd8441484439_))
                                    (if (gx#stx-pair? _tl8441584441_)
                                        (let ((_e8441684446_
                                               (gx#syntax-e _tl8441584441_)))
                                          (let ((_hd8441784449_
                                                 (##car _e8441684446_))
                                                (_tl8441884451_
                                                 (##cdr _e8441684446_)))
                                            (let ((_expr84454_ _hd8441784449_))
                                              (if (gx#stx-null? _tl8441884451_)
                                                  (if (gx#identifier?
                                                       _hd84444_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd84444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr84454_ '())))
              (_E8440984424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8440984424_)))))
                                        (_E8440984424_)))))
                              (_E8440984424_))))
                      (_E8440984424_)))))
          (_E8440884456_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx84352_)
        (let* ((_e8435384366_ _stx84352_)
               (_E8435584370_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8435384366_)))
               (_E8435484402_
                (lambda ()
                  (if (gx#stx-pair? _e8435384366_)
                      (let ((_e8435684374_ (gx#syntax-e _e8435384366_)))
                        (let ((_hd8435784377_ (##car _e8435684374_))
                              (_tl8435884379_ (##cdr _e8435684374_)))
                          (if (gx#stx-pair? _tl8435884379_)
                              (let ((_e8435984382_
                                     (gx#syntax-e _tl8435884379_)))
                                (let ((_hd8436084385_ (##car _e8435984382_))
                                      (_tl8436184387_ (##cdr _e8435984382_)))
                                  (let ((_id84390_ _hd8436084385_))
                                    (if (gx#stx-pair? _tl8436184387_)
                                        (let ((_e8436284392_
                                               (gx#syntax-e _tl8436184387_)))
                                          (let ((_hd8436384395_
                                                 (##car _e8436284392_))
                                                (_tl8436484397_
                                                 (##cdr _e8436284392_)))
                                            (let ((_alias-id84400_
                                                   _hd8436384395_))
                                              (if (gx#stx-null? _tl8436484397_)
                                                  (if (and (gx#identifier?
                                                            _id84390_)
                                                           (gx#identifier?
                                                            _alias-id84400_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id84390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id84400_ '())))
              (_E8435584370_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8435584370_)))))
                                        (_E8435584370_)))))
                              (_E8435584370_))))
                      (_E8435584370_)))))
          (_E8435484402_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx84309_)
        (let* ((_e8431084320_ _stx84309_)
               (_E8431284324_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8431084320_)))
               (_E8431184348_
                (lambda ()
                  (if (gx#stx-pair? _e8431084320_)
                      (let ((_e8431384328_ (gx#syntax-e _e8431084320_)))
                        (let ((_hd8431484331_ (##car _e8431384328_))
                              (_tl8431584333_ (##cdr _e8431384328_)))
                          (if (gx#stx-pair? _tl8431584333_)
                              (let ((_e8431684336_
                                     (gx#syntax-e _tl8431584333_)))
                                (let ((_hd8431784339_ (##car _e8431684336_))
                                      (_tl8431884341_ (##cdr _e8431684336_)))
                                  (let* ((_hd84344_ _hd8431784339_)
                                         (_body84346_ _tl8431884341_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd84344_)
                                             (gx#stx-list? _body84346_)
                                             (not (gx#stx-null? _body84346_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd84344_)
                                         _body84346_)
                                        (_E8431284324_)))))
                              (_E8431284324_))))
                      (_E8431284324_)))))
          (_E8431184348_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx84245_)
        (letrec ((_generate84247_
                  (lambda (_clause84277_)
                    (let* ((_e8427884285_ _clause84277_)
                           (_E8428084289_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx84245_
                               _clause84277_)))
                           (_E8427984305_
                            (lambda ()
                              (if (gx#stx-pair? _e8427884285_)
                                  (let ((_e8428184293_
                                         (gx#syntax-e _e8427884285_)))
                                    (let ((_hd8428284296_
                                           (##car _e8428184293_))
                                          (_tl8428384298_
                                           (##cdr _e8428184293_)))
                                      (let* ((_hd84301_ _hd8428284296_)
                                             (_body84303_ _tl8428384298_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd84301_)
                                                 (gx#stx-list? _body84303_)
                                                 (not (gx#stx-null?
                                                       _body84303_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd84301_)
                                                   _body84303_)
                                             (gx#stx-source _clause84277_))
                                            (_E8428084289_)))))
                                  (_E8428084289_)))))
                      (_E8427984305_)))))
          (let* ((_e8424884255_ _stx84245_)
                 (_E8425084259_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8424884255_)))
                 (_E8424984273_
                  (lambda ()
                    (if (gx#stx-pair? _e8424884255_)
                        (let ((_e8425184263_ (gx#syntax-e _e8424884255_)))
                          (let ((_hd8425284266_ (##car _e8425184263_))
                                (_tl8425384268_ (##cdr _e8425184263_)))
                            (let ((_clauses84271_ _tl8425384268_))
                              (if (gx#stx-list? _clauses84271_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate84247_
                                    _clauses84271_))
                                  (_E8425084259_)))))
                        (_E8425084259_)))))
            (_E8424984273_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx84146_ _form84147_)
        (letrec ((_generate84149_
                  (lambda (_bind84192_)
                    (let* ((_e8419384203_ _bind84192_)
                           (_E8419584207_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx84146_
                               _bind84192_)))
                           (_E8419484231_
                            (lambda ()
                              (if (gx#stx-pair? _e8419384203_)
                                  (let ((_e8419684211_
                                         (gx#syntax-e _e8419384203_)))
                                    (let ((_hd8419784214_
                                           (##car _e8419684211_))
                                          (_tl8419884216_
                                           (##cdr _e8419684211_)))
                                      (let ((_ids84219_ _hd8419784214_))
                                        (if (gx#stx-pair? _tl8419884216_)
                                            (let ((_e8419984221_
                                                   (gx#syntax-e
                                                    _tl8419884216_)))
                                              (let ((_hd8420084224_
                                                     (##car _e8419984221_))
                                                    (_tl8420184226_
                                                     (##cdr _e8419984221_)))
                                                (let ((_expr84229_
                                                       _hd8420084224_))
                                                  (if (gx#stx-null?
                                                       _tl8420184226_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids84219_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids84219_)
                        (cons _expr84229_ '()))
                  (_E8419584207_))
              (_E8419584207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8419584207_)))))
                                  (_E8419584207_)))))
                      (_E8419484231_)))))
          (let* ((_e8415084160_ _stx84146_)
                 (_E8415284164_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8415084160_)))
                 (_E8415184188_
                  (lambda ()
                    (if (gx#stx-pair? _e8415084160_)
                        (let ((_e8415384168_ (gx#syntax-e _e8415084160_)))
                          (let ((_hd8415484171_ (##car _e8415384168_))
                                (_tl8415584173_ (##cdr _e8415384168_)))
                            (if (gx#stx-pair? _tl8415584173_)
                                (let ((_e8415684176_
                                       (gx#syntax-e _tl8415584173_)))
                                  (let ((_hd8415784179_ (##car _e8415684176_))
                                        (_tl8415884181_ (##cdr _e8415684176_)))
                                    (let* ((_hd84184_ _hd8415784179_)
                                           (_body84186_ _tl8415884181_))
                                      (if (and (gx#stx-list? _hd84184_)
                                               (gx#stx-list? _body84186_)
                                               (not (gx#stx-null?
                                                     _body84186_)))
                                          (gx#core-cons*
                                           _form84147_
                                           (gx#stx-map1
                                            _generate84149_
                                            _hd84184_)
                                           _body84186_)
                                          (_E8415284164_)))))
                                (_E8415284164_))))
                        (_E8415284164_)))))
            (_E8415184188_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx84238_)
        (let ((_form84240_ '%#let-values))
          (gx#macro-expand-let-values__% _stx84238_ _form84240_))))
    (define gx#macro-expand-let-values
      (lambda _g86623_
        (let ((_g86622_ (##length _g86623_)))
          (cond ((##fx= _g86622_ 1)
                 (apply (lambda (_stx84238_)
                          (gx#macro-expand-let-values__0 _stx84238_))
                        _g86623_))
                ((##fx= _g86622_ 2)
                 (apply (lambda (_stx84242_ _form84243_)
                          (gx#macro-expand-let-values__%
                           _stx84242_
                           _form84243_))
                        _g86623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g86623_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx84143_)
        (gx#macro-expand-let-values__% _stx84143_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx84141_)
        (gx#macro-expand-let-values__% _stx84141_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx84032_)
        (let* ((_e8403384059_ _stx84032_)
               (_E8404584063_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8403384059_)))
               (_E8403584105_
                (lambda ()
                  (if (gx#stx-pair? _e8403384059_)
                      (let ((_e8404684067_ (gx#syntax-e _e8403384059_)))
                        (let ((_hd8404784070_ (##car _e8404684067_))
                              (_tl8404884072_ (##cdr _e8404684067_)))
                          (if (gx#stx-pair? _tl8404884072_)
                              (let ((_e8404984075_
                                     (gx#syntax-e _tl8404884072_)))
                                (let ((_hd8405084078_ (##car _e8404984075_))
                                      (_tl8405184080_ (##cdr _e8404984075_)))
                                  (let ((_test84083_ _hd8405084078_))
                                    (if (gx#stx-pair? _tl8405184080_)
                                        (let ((_e8405284085_
                                               (gx#syntax-e _tl8405184080_)))
                                          (let ((_hd8405384088_
                                                 (##car _e8405284085_))
                                                (_tl8405484090_
                                                 (##cdr _e8405284085_)))
                                            (let ((_K84093_ _hd8405384088_))
                                              (if (gx#stx-pair? _tl8405484090_)
                                                  (let ((_e8405584095_
                                                         (gx#syntax-e
                                                          _tl8405484090_)))
                                                    (let ((_hd8405684098_
                                                           (##car _e8405584095_))
                                                          (_tl8405784100_
                                                           (##cdr _e8405584095_)))
                                                      (let ((_E84103_
                                                             _hd8405684098_))
                                                        (if (gx#stx-null?
                                                             _tl8405784100_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test84083_
                         _K84093_
                         _E84103_)
                        (_E8404584063_))
                    (_E8404584063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8404584063_)))))
                                        (_E8404584063_)))))
                              (_E8404584063_))))
                      (_E8404584063_))))
               (_E8403484137_
                (lambda ()
                  (if (gx#stx-pair? _e8403384059_)
                      (let ((_e8403684109_ (gx#syntax-e _e8403384059_)))
                        (let ((_hd8403784112_ (##car _e8403684109_))
                              (_tl8403884114_ (##cdr _e8403684109_)))
                          (if (gx#stx-pair? _tl8403884114_)
                              (let ((_e8403984117_
                                     (gx#syntax-e _tl8403884114_)))
                                (let ((_hd8404084120_ (##car _e8403984117_))
                                      (_tl8404184122_ (##cdr _e8403984117_)))
                                  (let ((_test84125_ _hd8404084120_))
                                    (if (gx#stx-pair? _tl8404184122_)
                                        (let ((_e8404284127_
                                               (gx#syntax-e _tl8404184122_)))
                                          (let ((_hd8404384130_
                                                 (##car _e8404284127_))
                                                (_tl8404484132_
                                                 (##cdr _e8404284127_)))
                                            (let ((_K84135_ _hd8404384130_))
                                              (if (gx#stx-null? _tl8404484132_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test84125_
                                                       _K84135_
                                                       '#!void)
                                                      (_E8403584105_))
                                                  (_E8403584105_)))))
                                        (_E8403584105_)))))
                              (_E8403584105_))))
                      (_E8403584105_)))))
          (_E8403484137_))))
    (define gx#free-identifier=?
      (lambda (_xid84020_ _yid84021_)
        (let ((_xe84023_ (gx#resolve-identifier__0 _xid84020_))
              (_ye84024_ (gx#resolve-identifier__0 _yid84021_)))
          (if (and _xe84023_ _ye84024_)
              (let ((_$e84026_ (eq? _xe84023_ _ye84024_)))
                (if _$e84026_
                    _$e84026_
                    (if (##structure-instance-of? _xe84023_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye84024_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe84023_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye84024_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe84023_ _ye84024_)
                  '#f
                  (gx#stx-eq? _xid84020_ _yid84021_))))))
    (define gx#bound-identifier=?
      (lambda (_xid84004_ _yid84005_)
        (letrec ((_context84007_
                  (lambda (_e84018_)
                    (if (##structure-direct-instance-of?
                         _e84018_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e84018_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks84008_
                  (lambda (_e84016_)
                    (if (symbol? _e84016_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e84016_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e84016_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e84016_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap84009_
                  (lambda (_e84014_)
                    (if (symbol? _e84014_)
                        _e84014_
                        (gx#syntax-local-unwrap _e84014_)))))
          (let ((_x84011_ (_unwrap84009_ _xid84004_))
                (_y84012_ (_unwrap84009_ _yid84005_)))
            (if (gx#stx-eq? _x84011_ _y84012_)
                (if (eq? (_context84007_ _x84011_) (_context84007_ _y84012_))
                    (equal? (_marks84008_ _x84011_) (_marks84008_ _y84012_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx84002_)
        (if (gx#identifier? _stx84002_)
            (gx#core-identifier=? _stx84002_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx84000_)
        (if (gx#identifier? _stx84000_)
            (gx#core-identifier=? _stx84000_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x83998_)
        (if (gx#identifier? _x83998_)
            (if (not (gx#underscore? _x83998_)) _x83998_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx83944_ _where83945_)
        (let _lp83947_ ((_rest83949_ (gx#syntax->list _stx83944_)))
          (let* ((_rest8395083958_ _rest83949_)
                 (_else8395283966_ (lambda () '#t))
                 (_K8395483976_
                  (lambda (_rest83969_ _hd83970_)
                    (if (not (gx#identifier? _hd83970_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where83945_
                         _hd83970_)
                        (if (find (lambda (_g8397183973_)
                                    (gx#bound-identifier=?
                                     _g8397183973_
                                     _hd83970_))
                                  _rest83969_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where83945_
                             _hd83970_)
                            (_lp83947_ _rest83969_))))))
            (if (##pair? _rest8395083958_)
                (let ((_hd8395583979_ (##car _rest8395083958_))
                      (_tl8395683981_ (##cdr _rest8395083958_)))
                  (let* ((_hd83984_ _hd8395583979_)
                         (_rest83986_ _tl8395683981_))
                    (_K8395483976_ _rest83986_ _hd83984_)))
                (_else8395283966_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx83991_)
        (let ((_where83993_ _stx83991_))
          (gx#check-duplicate-identifiers__% _stx83991_ _where83993_))))
    (define gx#check-duplicate-identifiers
      (lambda _g86625_
        (let ((_g86624_ (##length _g86625_)))
          (cond ((##fx= _g86624_ 1)
                 (apply (lambda (_stx83991_)
                          (gx#check-duplicate-identifiers__0 _stx83991_))
                        _g86625_))
                ((##fx= _g86624_ 2)
                 (apply (lambda (_stx83995_ _where83996_)
                          (gx#check-duplicate-identifiers__%
                           _stx83995_
                           _where83996_))
                        _g86625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g86625_))))))
    (define gx#core-bind-values?
      (lambda (_stx83936_)
        (gx#stx-andmap
         (lambda (_x83938_)
           (let ((_$e83940_ (gx#identifier? _x83938_)))
             (if _$e83940_ _$e83940_ (gx#stx-false? _x83938_))))
         _stx83936_)))
    (define gx#core-bind-values!__%
      (lambda (_stx83900_ _rebind?83901_ _phi83902_ _ctx83903_)
        (gx#stx-for-each1
         (lambda (_id83905_)
           (if (gx#identifier? _id83905_)
               (gx#core-bind-runtime!__%
                _id83905_
                _rebind?83901_
                _phi83902_
                _ctx83903_)
               '#!void))
         _stx83900_)))
    (define gx#core-bind-values!__0
      (lambda (_stx83910_)
        (let* ((_rebind?83912_ '#f)
               (_phi83914_ (gx#current-expander-phi))
               (_ctx83916_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx83910_
           _rebind?83912_
           _phi83914_
           _ctx83916_))))
    (define gx#core-bind-values!__1
      (lambda (_stx83918_ _rebind?83919_)
        (let* ((_phi83921_ (gx#current-expander-phi))
               (_ctx83923_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx83918_
           _rebind?83919_
           _phi83921_
           _ctx83923_))))
    (define gx#core-bind-values!__2
      (lambda (_stx83925_ _rebind?83926_ _phi83927_)
        (let ((_ctx83929_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx83925_
           _rebind?83926_
           _phi83927_
           _ctx83929_))))
    (define gx#core-bind-values!
      (lambda _g86627_
        (let ((_g86626_ (##length _g86627_)))
          (cond ((##fx= _g86626_ 1)
                 (apply (lambda (_stx83910_)
                          (gx#core-bind-values!__0 _stx83910_))
                        _g86627_))
                ((##fx= _g86626_ 2)
                 (apply (lambda (_stx83918_ _rebind?83919_)
                          (gx#core-bind-values!__1 _stx83918_ _rebind?83919_))
                        _g86627_))
                ((##fx= _g86626_ 3)
                 (apply (lambda (_stx83925_ _rebind?83926_ _phi83927_)
                          (gx#core-bind-values!__2
                           _stx83925_
                           _rebind?83926_
                           _phi83927_))
                        _g86627_))
                ((##fx= _g86626_ 4)
                 (apply (lambda (_stx83931_
                                 _rebind?83932_
                                 _phi83933_
                                 _ctx83934_)
                          (gx#core-bind-values!__%
                           _stx83931_
                           _rebind?83932_
                           _phi83933_
                           _ctx83934_))
                        _g86627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g86627_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx83895_)
        (gx#stx-map1
         (lambda (_x83897_)
           (if (gx#identifier? _x83897_)
               (gx#core-quote-syntax__0 _x83897_)
               '#f))
         _stx83895_)))
    (define gx#core-runtime-ref?
      (lambda (_stx83888_)
        (if (gx#identifier? _stx83888_)
            (let* ((_bind83890_ (gx#resolve-identifier__0 _stx83888_))
                   (_$e83892_ (not _bind83890_)))
              (if _$e83892_
                  _$e83892_
                  (##structure-instance-of?
                   _bind83890_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id83880_ _form83881_)
        (let ((_bind83883_ (gx#resolve-identifier__0 _id83880_)))
          (if (##structure-instance-of? _bind83883_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id83880_)
              (if (not _bind83883_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id83880_)))
                      (gx#core-quote-syntax__0 _id83880_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form83881_
                       _id83880_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form83881_
                   _id83880_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id83839_ _rebind?83840_ _phi83841_ _ctx83842_)
        (let* ((_key83844_ (gx#core-identifier-key _id83839_))
               (_eid83846_
                (gx#make-binding-id__% _key83844_ '#f _phi83841_ _ctx83842_))
               (_bind83848_
                (if (##structure-instance-of? _ctx83842_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid83846_
                     _key83844_
                     _phi83841_
                     _ctx83842_)
                    (if (##structure-instance-of?
                         _ctx83842_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid83846_
                         _key83844_
                         _phi83841_)
                        (if (##structure-instance-of?
                             _ctx83842_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid83846_
                             _key83844_
                             _phi83841_)
                            (##structure
                             gx#runtime-binding::t
                             _eid83846_
                             _key83844_
                             _phi83841_))))))
          (gx#bind-identifier!__%
           _id83839_
           _bind83848_
           _rebind?83840_
           _phi83841_
           _ctx83842_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id83854_)
        (let* ((_rebind?83856_ '#f)
               (_phi83858_ (gx#current-expander-phi))
               (_ctx83860_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id83854_
           _rebind?83856_
           _phi83858_
           _ctx83860_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id83862_ _rebind?83863_)
        (let* ((_phi83865_ (gx#current-expander-phi))
               (_ctx83867_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id83862_
           _rebind?83863_
           _phi83865_
           _ctx83867_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id83869_ _rebind?83870_ _phi83871_)
        (let ((_ctx83873_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id83869_
           _rebind?83870_
           _phi83871_
           _ctx83873_))))
    (define gx#core-bind-runtime!
      (lambda _g86629_
        (let ((_g86628_ (##length _g86629_)))
          (cond ((##fx= _g86628_ 1)
                 (apply (lambda (_id83854_)
                          (gx#core-bind-runtime!__0 _id83854_))
                        _g86629_))
                ((##fx= _g86628_ 2)
                 (apply (lambda (_id83862_ _rebind?83863_)
                          (gx#core-bind-runtime!__1 _id83862_ _rebind?83863_))
                        _g86629_))
                ((##fx= _g86628_ 3)
                 (apply (lambda (_id83869_ _rebind?83870_ _phi83871_)
                          (gx#core-bind-runtime!__2
                           _id83869_
                           _rebind?83870_
                           _phi83871_))
                        _g86629_))
                ((##fx= _g86628_ 4)
                 (apply (lambda (_id83875_
                                 _rebind?83876_
                                 _phi83877_
                                 _ctx83878_)
                          (gx#core-bind-runtime!__%
                           _id83875_
                           _rebind?83876_
                           _phi83877_
                           _ctx83878_))
                        _g86629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g86629_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id83794_ _eid83795_ _rebind?83796_ _phi83797_ _ctx83798_)
        (let* ((_key83800_ (gx#core-identifier-key _id83794_))
               (_bind83802_
                (if (##structure-instance-of? _ctx83798_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid83795_
                     _key83800_
                     _phi83797_
                     _ctx83798_)
                    (if (##structure-instance-of?
                         _ctx83798_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid83795_
                         _key83800_
                         _phi83797_)
                        (##structure
                         gx#runtime-binding::t
                         _eid83795_
                         _key83800_
                         _phi83797_)))))
          (gx#bind-identifier!__%
           _id83794_
           _bind83802_
           _rebind?83796_
           _phi83797_
           _ctx83798_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id83808_ _eid83809_)
        (let* ((_rebind?83811_ '#f)
               (_phi83813_ (gx#current-expander-phi))
               (_ctx83815_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id83808_
           _eid83809_
           _rebind?83811_
           _phi83813_
           _ctx83815_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id83817_ _eid83818_ _rebind?83819_)
        (let* ((_phi83821_ (gx#current-expander-phi))
               (_ctx83823_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id83817_
           _eid83818_
           _rebind?83819_
           _phi83821_
           _ctx83823_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id83825_ _eid83826_ _rebind?83827_ _phi83828_)
        (let ((_ctx83830_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id83825_
           _eid83826_
           _rebind?83827_
           _phi83828_
           _ctx83830_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g86631_
        (let ((_g86630_ (##length _g86631_)))
          (cond ((##fx= _g86630_ 2)
                 (apply (lambda (_id83808_ _eid83809_)
                          (gx#core-bind-runtime-reference!__0
                           _id83808_
                           _eid83809_))
                        _g86631_))
                ((##fx= _g86630_ 3)
                 (apply (lambda (_id83817_ _eid83818_ _rebind?83819_)
                          (gx#core-bind-runtime-reference!__1
                           _id83817_
                           _eid83818_
                           _rebind?83819_))
                        _g86631_))
                ((##fx= _g86630_ 4)
                 (apply (lambda (_id83825_
                                 _eid83826_
                                 _rebind?83827_
                                 _phi83828_)
                          (gx#core-bind-runtime-reference!__2
                           _id83825_
                           _eid83826_
                           _rebind?83827_
                           _phi83828_))
                        _g86631_))
                ((##fx= _g86630_ 5)
                 (apply (lambda (_id83832_
                                 _eid83833_
                                 _rebind?83834_
                                 _phi83835_
                                 _ctx83836_)
                          (gx#core-bind-runtime-reference!__%
                           _id83832_
                           _eid83833_
                           _rebind?83834_
                           _phi83835_
                           _ctx83836_))
                        _g86631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g86631_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id83754_ _eid83755_ _rebind?83756_ _phi83757_ _ctx83758_)
        (gx#bind-identifier!__%
         _id83754_
         (##structure
          gx#extern-binding::t
          _eid83755_
          (gx#core-identifier-key _id83754_)
          _phi83757_)
         _rebind?83756_
         _phi83757_
         _ctx83758_)))
    (define gx#core-bind-extern!__0
      (lambda (_id83763_ _eid83764_)
        (let* ((_rebind?83766_ '#f)
               (_phi83768_ (gx#current-expander-phi))
               (_ctx83770_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id83763_
           _eid83764_
           _rebind?83766_
           _phi83768_
           _ctx83770_))))
    (define gx#core-bind-extern!__1
      (lambda (_id83772_ _eid83773_ _rebind?83774_)
        (let* ((_phi83776_ (gx#current-expander-phi))
               (_ctx83778_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id83772_
           _eid83773_
           _rebind?83774_
           _phi83776_
           _ctx83778_))))
    (define gx#core-bind-extern!__2
      (lambda (_id83780_ _eid83781_ _rebind?83782_ _phi83783_)
        (let ((_ctx83785_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id83780_
           _eid83781_
           _rebind?83782_
           _phi83783_
           _ctx83785_))))
    (define gx#core-bind-extern!
      (lambda _g86633_
        (let ((_g86632_ (##length _g86633_)))
          (cond ((##fx= _g86632_ 2)
                 (apply (lambda (_id83763_ _eid83764_)
                          (gx#core-bind-extern!__0 _id83763_ _eid83764_))
                        _g86633_))
                ((##fx= _g86632_ 3)
                 (apply (lambda (_id83772_ _eid83773_ _rebind?83774_)
                          (gx#core-bind-extern!__1
                           _id83772_
                           _eid83773_
                           _rebind?83774_))
                        _g86633_))
                ((##fx= _g86632_ 4)
                 (apply (lambda (_id83780_
                                 _eid83781_
                                 _rebind?83782_
                                 _phi83783_)
                          (gx#core-bind-extern!__2
                           _id83780_
                           _eid83781_
                           _rebind?83782_
                           _phi83783_))
                        _g86633_))
                ((##fx= _g86632_ 5)
                 (apply (lambda (_id83787_
                                 _eid83788_
                                 _rebind?83789_
                                 _phi83790_
                                 _ctx83791_)
                          (gx#core-bind-extern!__%
                           _id83787_
                           _eid83788_
                           _rebind?83789_
                           _phi83790_
                           _ctx83791_))
                        _g86633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g86633_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id83708_ _e83709_ _rebind?83710_ _phi83711_ _ctx83712_)
        (gx#bind-identifier!__%
         _id83708_
         (let ((_key83717_ (gx#core-identifier-key _id83708_))
               (_e83718_
                (if (or (##structure-instance-of? _e83709_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e83709_
                         'gx#expander-context::t))
                    _e83709_
                    (##structure
                     gx#user-expander::t
                     _e83709_
                     _ctx83712_
                     _phi83711_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key83717_ '#t _phi83711_ _ctx83712_)
            _key83717_
            _phi83711_
            _e83718_))
         _rebind?83710_
         _phi83711_
         _ctx83712_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id83723_ _e83724_)
        (let* ((_rebind?83726_ '#f)
               (_phi83728_ (gx#current-expander-phi))
               (_ctx83730_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id83723_
           _e83724_
           _rebind?83726_
           _phi83728_
           _ctx83730_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id83732_ _e83733_ _rebind?83734_)
        (let* ((_phi83736_ (gx#current-expander-phi))
               (_ctx83738_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id83732_
           _e83733_
           _rebind?83734_
           _phi83736_
           _ctx83738_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id83740_ _e83741_ _rebind?83742_ _phi83743_)
        (let ((_ctx83745_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id83740_
           _e83741_
           _rebind?83742_
           _phi83743_
           _ctx83745_))))
    (define gx#core-bind-syntax!
      (lambda _g86635_
        (let ((_g86634_ (##length _g86635_)))
          (cond ((##fx= _g86634_ 2)
                 (apply (lambda (_id83723_ _e83724_)
                          (gx#core-bind-syntax!__0 _id83723_ _e83724_))
                        _g86635_))
                ((##fx= _g86634_ 3)
                 (apply (lambda (_id83732_ _e83733_ _rebind?83734_)
                          (gx#core-bind-syntax!__1
                           _id83732_
                           _e83733_
                           _rebind?83734_))
                        _g86635_))
                ((##fx= _g86634_ 4)
                 (apply (lambda (_id83740_ _e83741_ _rebind?83742_ _phi83743_)
                          (gx#core-bind-syntax!__2
                           _id83740_
                           _e83741_
                           _rebind?83742_
                           _phi83743_))
                        _g86635_))
                ((##fx= _g86634_ 5)
                 (apply (lambda (_id83747_
                                 _e83748_
                                 _rebind?83749_
                                 _phi83750_
                                 _ctx83751_)
                          (gx#core-bind-syntax!__%
                           _id83747_
                           _e83748_
                           _rebind?83749_
                           _phi83750_
                           _ctx83751_))
                        _g86635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g86635_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id83691_ _e83692_ _rebind?83693_)
        (gx#core-bind-syntax!__%
         _id83691_
         _e83692_
         _rebind?83693_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id83698_ _e83699_)
        (let ((_rebind?83701_ '#f))
          (gx#core-bind-root-syntax!__% _id83698_ _e83699_ _rebind?83701_))))
    (define gx#core-bind-root-syntax!
      (lambda _g86637_
        (let ((_g86636_ (##length _g86637_)))
          (cond ((##fx= _g86636_ 2)
                 (apply (lambda (_id83698_ _e83699_)
                          (gx#core-bind-root-syntax!__0 _id83698_ _e83699_))
                        _g86637_))
                ((##fx= _g86636_ 3)
                 (apply (lambda (_id83703_ _e83704_ _rebind?83705_)
                          (gx#core-bind-root-syntax!__%
                           _id83703_
                           _e83704_
                           _rebind?83705_))
                        _g86637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g86637_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id83649_ _alias-id83650_ _rebind?83651_ _phi83652_ _ctx83653_)
        (gx#bind-identifier!__%
         _id83649_
         (let ((_key83655_ (gx#core-identifier-key _id83649_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key83655_ '#t _phi83652_ _ctx83653_)
            _key83655_
            _phi83652_
            _alias-id83650_))
         _rebind?83651_
         _phi83652_
         _ctx83653_)))
    (define gx#core-bind-alias!__0
      (lambda (_id83660_ _alias-id83661_)
        (let* ((_rebind?83663_ '#f)
               (_phi83665_ (gx#current-expander-phi))
               (_ctx83667_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id83660_
           _alias-id83661_
           _rebind?83663_
           _phi83665_
           _ctx83667_))))
    (define gx#core-bind-alias!__1
      (lambda (_id83669_ _alias-id83670_ _rebind?83671_)
        (let* ((_phi83673_ (gx#current-expander-phi))
               (_ctx83675_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id83669_
           _alias-id83670_
           _rebind?83671_
           _phi83673_
           _ctx83675_))))
    (define gx#core-bind-alias!__2
      (lambda (_id83677_ _alias-id83678_ _rebind?83679_ _phi83680_)
        (let ((_ctx83682_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id83677_
           _alias-id83678_
           _rebind?83679_
           _phi83680_
           _ctx83682_))))
    (define gx#core-bind-alias!
      (lambda _g86639_
        (let ((_g86638_ (##length _g86639_)))
          (cond ((##fx= _g86638_ 2)
                 (apply (lambda (_id83660_ _alias-id83661_)
                          (gx#core-bind-alias!__0 _id83660_ _alias-id83661_))
                        _g86639_))
                ((##fx= _g86638_ 3)
                 (apply (lambda (_id83669_ _alias-id83670_ _rebind?83671_)
                          (gx#core-bind-alias!__1
                           _id83669_
                           _alias-id83670_
                           _rebind?83671_))
                        _g86639_))
                ((##fx= _g86638_ 4)
                 (apply (lambda (_id83677_
                                 _alias-id83678_
                                 _rebind?83679_
                                 _phi83680_)
                          (gx#core-bind-alias!__2
                           _id83677_
                           _alias-id83678_
                           _rebind?83679_
                           _phi83680_))
                        _g86639_))
                ((##fx= _g86638_ 5)
                 (apply (lambda (_id83684_
                                 _alias-id83685_
                                 _rebind?83686_
                                 _phi83687_
                                 _ctx83688_)
                          (gx#core-bind-alias!__%
                           _id83684_
                           _alias-id83685_
                           _rebind?83686_
                           _phi83687_
                           _ctx83688_))
                        _g86639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g86639_))))))
    (define gx#make-binding-id__%
      (lambda (_key83606_ _syntax?83607_ _phi83608_ _ctx83609_)
        (if (uninterned-symbol? _key83606_)
            (gensym 'L)
            (if (pair? _key83606_)
                (gensym (car _key83606_))
                (if (##structure-instance-of? _ctx83609_ 'gx#top-context::t)
                    (let ((_ns83611_
                           (gx#core-context-namespace__% _ctx83609_)))
                      (if (and (fxzero? _phi83608_) (not _syntax?83607_))
                          (if _ns83611_
                              (make-symbol__1 _ns83611_ '"#" _key83606_)
                              _key83606_)
                          (if _syntax?83607_
                              (make-symbol__1
                               (let ((_$e83613_ _ns83611_))
                                 (if _$e83613_ _$e83613_ '""))
                               '"[:"
                               (number->string _phi83608_)
                               '":]#"
                               _key83606_)
                              (make-symbol__1
                               (let ((_$e83616_ _ns83611_))
                                 (if _$e83616_ _$e83616_ '""))
                               '"["
                               (number->string _phi83608_)
                               '"]#"
                               _key83606_))))
                    (gensym _key83606_))))))
    (define gx#make-binding-id__0
      (lambda (_key83622_)
        (let* ((_syntax?83624_ '#f)
               (_phi83626_ (gx#current-expander-phi))
               (_ctx83628_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key83622_
           _syntax?83624_
           _phi83626_
           _ctx83628_))))
    (define gx#make-binding-id__1
      (lambda (_key83630_ _syntax?83631_)
        (let* ((_phi83633_ (gx#current-expander-phi))
               (_ctx83635_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key83630_
           _syntax?83631_
           _phi83633_
           _ctx83635_))))
    (define gx#make-binding-id__2
      (lambda (_key83637_ _syntax?83638_ _phi83639_)
        (let ((_ctx83641_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key83637_
           _syntax?83638_
           _phi83639_
           _ctx83641_))))
    (define gx#make-binding-id
      (lambda _g86641_
        (let ((_g86640_ (##length _g86641_)))
          (cond ((##fx= _g86640_ 1)
                 (apply (lambda (_key83622_)
                          (gx#make-binding-id__0 _key83622_))
                        _g86641_))
                ((##fx= _g86640_ 2)
                 (apply (lambda (_key83630_ _syntax?83631_)
                          (gx#make-binding-id__1 _key83630_ _syntax?83631_))
                        _g86641_))
                ((##fx= _g86640_ 3)
                 (apply (lambda (_key83637_ _syntax?83638_ _phi83639_)
                          (gx#make-binding-id__2
                           _key83637_
                           _syntax?83638_
                           _phi83639_))
                        _g86641_))
                ((##fx= _g86640_ 4)
                 (apply (lambda (_key83643_
                                 _syntax?83644_
                                 _phi83645_
                                 _ctx83646_)
                          (gx#make-binding-id__%
                           _key83643_
                           _syntax?83644_
                           _phi83645_
                           _ctx83646_))
                        _g86641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g86641_))))))))
