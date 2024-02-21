(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1708510101)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89040_)
        (letrec ((_expand-special89042_
                  (lambda (_hd89044_ _K89045_ _rest89046_ _r89047_)
                    (_K89045_
                     _rest89046_
                     (cons (gx#core-expand-top _hd89044_) _r89047_)))))
          (gx#core-expand-block__0 _stx89040_ _expand-special89042_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx88793_)
        (letrec ((_expand-special88795_
                  (lambda (_hd88915_ _K88916_ _rest88917_ _r88918_)
                    (let* ((_K88922_
                            (lambda (_e88920_)
                              (_K88916_ _rest88917_ (cons _e88920_ _r88918_))))
                           (_e8892388952_ _hd88915_)
                           (_E8894788956_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8892388952_)))
                           (_E8894388968_
                            (lambda ()
                              (if (gx#stx-pair? _e8892388952_)
                                  (let ((_e8894888960_
                                         (gx#syntax-e _e8892388952_)))
                                    (let ((_hd8894988963_
                                           (##car _e8894888960_))
                                          (_tl8895088965_
                                           (##cdr _e8894888960_)))
                                      (if (and (gx#identifier? _hd8894988963_)
                                               (gx#core-identifier=?
                                                _hd8894988963_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K88922_
                                               (gx#core-expand-define-runtime%
                                                _hd88915_))
                                              (_E8894788956_))
                                          (_E8894788956_))))
                                  (_E8894788956_))))
                           (_E8893988980_
                            (lambda ()
                              (if (gx#stx-pair? _e8892388952_)
                                  (let ((_e8894488972_
                                         (gx#syntax-e _e8892388952_)))
                                    (let ((_hd8894588975_
                                           (##car _e8894488972_))
                                          (_tl8894688977_
                                           (##cdr _e8894488972_)))
                                      (if (and (gx#identifier? _hd8894588975_)
                                               (gx#core-identifier=?
                                                _hd8894588975_
                                                '%#define-alias))
                                          (if '#t
                                              (_K88922_
                                               (gx#core-expand-define-alias%
                                                _hd88915_))
                                              (_E8894388968_))
                                          (_E8894388968_))))
                                  (_E8894388968_))))
                           (_E8892988992_
                            (lambda ()
                              (if (gx#stx-pair? _e8892388952_)
                                  (let ((_e8894088984_
                                         (gx#syntax-e _e8892388952_)))
                                    (let ((_hd8894188987_
                                           (##car _e8894088984_))
                                          (_tl8894288989_
                                           (##cdr _e8894088984_)))
                                      (if (and (gx#identifier? _hd8894188987_)
                                               (gx#core-identifier=?
                                                _hd8894188987_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K88922_
                                               (gx#core-expand-define-syntax%
                                                _hd88915_))
                                              (_E8893988980_))
                                          (_E8893988980_))))
                                  (_E8893988980_))))
                           (_E8892589024_
                            (lambda ()
                              (if (gx#stx-pair? _e8892388952_)
                                  (let ((_e8893088996_
                                         (gx#syntax-e _e8892388952_)))
                                    (let ((_hd8893188999_
                                           (##car _e8893088996_))
                                          (_tl8893289001_
                                           (##cdr _e8893088996_)))
                                      (if (and (gx#identifier? _hd8893188999_)
                                               (gx#core-identifier=?
                                                _hd8893188999_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8893289001_)
                                              (let ((_e8893389004_
                                                     (gx#syntax-e
                                                      _tl8893289001_)))
                                                (let ((_hd8893489007_
                                                       (##car _e8893389004_))
                                                      (_tl8893589009_
                                                       (##cdr _e8893389004_)))
                                                  (let ((_hd-bind89012_
                                                         _hd8893489007_))
                                                    (if (gx#stx-pair?
                                                         _tl8893589009_)
                                                        (let ((_e8893689014_
                                                               (gx#syntax-e
                                                                _tl8893589009_)))
                                                          (let ((_hd8893789017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8893689014_))
                        (_tl8893889019_ (##cdr _e8893689014_)))
                    (let ((_expr89022_ _hd8893789017_))
                      (if (gx#stx-null? _tl8893889019_)
                          (if (gx#core-bind-values? _hd-bind89012_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89012_)
                                (_K88922_ _hd88915_))
                              (_E8892988992_))
                          (_E8892988992_)))))
                (_E8892988992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8892988992_))
                                          (_E8892988992_))))
                                  (_E8892988992_))))
                           (_E8892489036_
                            (lambda ()
                              (if (gx#stx-pair? _e8892388952_)
                                  (let ((_e8892689028_
                                         (gx#syntax-e _e8892388952_)))
                                    (let ((_hd8892789031_
                                           (##car _e8892689028_))
                                          (_tl8892889033_
                                           (##cdr _e8892689028_)))
                                      (if (and (gx#identifier? _hd8892789031_)
                                               (gx#core-identifier=?
                                                _hd8892789031_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K88922_
                                               (gx#core-expand-begin-syntax%
                                                _hd88915_))
                                              (_E8892589024_))
                                          (_E8892589024_))))
                                  (_E8892589024_)))))
                      (_E8892489036_))))
                 (_eval-body88796_
                  (lambda (_rbody88804_)
                    (let _lp88806_ ((_rest88808_ _rbody88804_)
                                    (_body88809_ '())
                                    (_ebody88810_ '()))
                      (let* ((_rest8881188819_ _rest88808_)
                             (_else8881388827_
                              (lambda ()
                                (values _body88809_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody88810_)
                                          (gx#stx-source _stx88793_))))))
                             (_K8881588903_
                              (lambda (_rest88830_ _hd88831_)
                                (let* ((_e8883288849_ _hd88831_)
                                       (_E8884488853_
                                        (lambda ()
                                          (_lp88806_
                                           _rest88830_
                                           (cons _hd88831_ _body88809_)
                                           (cons _hd88831_ _ebody88810_))))
                                       (_E8883488865_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8883288849_)
                                              (let ((_e8884588857_
                                                     (gx#syntax-e
                                                      _e8883288849_)))
                                                (let ((_hd8884688860_
                                                       (##car _e8884588857_))
                                                      (_tl8884788862_
                                                       (##cdr _e8884588857_)))
                                                  (if (and (gx#identifier?
                                                            _hd8884688860_)
                                                           (gx#core-identifier=?
                                                            _hd8884688860_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp88806_
                                                           _rest88830_
                                                           (cons _hd88831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body88809_)
                   _ebody88810_)
                  (_E8884488853_))
              (_E8884488853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8884488853_))))
                                       (_E8883388899_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8883288849_)
                                              (let ((_e8883588869_
                                                     (gx#syntax-e
                                                      _e8883288849_)))
                                                (let ((_hd8883688872_
                                                       (##car _e8883588869_))
                                                      (_tl8883788874_
                                                       (##cdr _e8883588869_)))
                                                  (if (and (gx#identifier?
                                                            _hd8883688872_)
                                                           (gx#core-identifier=?
                                                            _hd8883688872_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8883788874_)
                                                          (let ((_e8883888877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8883788874_)))
                    (let ((_hd8883988880_ (##car _e8883888877_))
                          (_tl8884088882_ (##cdr _e8883888877_)))
                      (let ((_hd-bind88885_ _hd8883988880_))
                        (if (gx#stx-pair? _tl8884088882_)
                            (let ((_e8884188887_ (gx#syntax-e _tl8884088882_)))
                              (let ((_hd8884288890_ (##car _e8884188887_))
                                    (_tl8884388892_ (##cdr _e8884188887_)))
                                (let ((_expr88895_ _hd8884288890_))
                                  (if (gx#stx-null? _tl8884388892_)
                                      (if '#t
                                          (let ((_ehd88897_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind88885_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr88895_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd88831_))))
                                            (_lp88806_
                                             _rest88830_
                                             (cons _ehd88897_ _body88809_)
                                             (cons _ehd88897_ _ebody88810_)))
                                          (_E8883488865_))
                                      (_E8883488865_)))))
                            (_E8883488865_)))))
                  (_E8883488865_))
              (_E8883488865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8883488865_)))))
                                  (_E8883388899_)))))
                        (if (##pair? _rest8881188819_)
                            (let ((_hd8881688906_ (##car _rest8881188819_))
                                  (_tl8881788908_ (##cdr _rest8881188819_)))
                              (let* ((_hd88911_ _hd8881688906_)
                                     (_rest88913_ _tl8881788908_))
                                (_K8881588903_ _rest88913_ _hd88911_)))
                            (_else8881388827_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody88799_
                     (gx#core-expand-block__1
                      _stx88793_
                      _expand-special88795_
                      '#f))
                    (_g89063_ (_eval-body88796_ _rbody88799_)))
               (begin
                 (let ((_g89064_
                        (if (##values? _g89063_)
                            (##vector-length _g89063_)
                            1)))
                   (if (not (##fx= _g89064_ 2))
                       (error "Context expects 2 values" _g89064_)))
                 (let ((_expanded-body88801_ (##vector-ref _g89063_ 0))
                       (_value88802_ (##vector-ref _g89063_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body88801_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value88802_ '())))
                    (gx#stx-source _stx88793_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx88763_)
        (let* ((_e8876488771_ _stx88763_)
               (_E8876688775_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876488771_)))
               (_E8876588789_
                (lambda ()
                  (if (gx#stx-pair? _e8876488771_)
                      (let ((_e8876788779_ (gx#syntax-e _e8876488771_)))
                        (let ((_hd8876888782_ (##car _e8876788779_))
                              (_tl8876988784_ (##cdr _e8876788779_)))
                          (let ((_body88787_ _tl8876988784_))
                            (if (gx#stx-list? _body88787_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body88787_)
                                 (gx#stx-source _stx88763_))
                                (_E8876688775_)))))
                      (_E8876688775_)))))
          (_E8876588789_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx88761_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx88761_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx88707_)
        (let* ((_e8870888721_ _stx88707_)
               (_E8871088725_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8870888721_)))
               (_E8870988757_
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
                                  (let ((_ann88745_ _hd8871588740_))
                                    (if (gx#stx-pair? _tl8871688742_)
                                        (let ((_e8871788747_
                                               (gx#syntax-e _tl8871688742_)))
                                          (let ((_hd8871888750_
                                                 (##car _e8871788747_))
                                                (_tl8871988752_
                                                 (##cdr _e8871788747_)))
                                            (let ((_expr88755_ _hd8871888750_))
                                              (if (gx#stx-null? _tl8871988752_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann88745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr88755_) '())))
               (gx#stx-source _stx88707_))
              (_E8871088725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8871088725_)))))
                                        (_E8871088725_)))))
                              (_E8871088725_))))
                      (_E8871088725_)))))
          (_E8870988757_))))
    (define gx#core-expand-local-block
      (lambda (_stx88431_ _body88432_)
        (letrec ((_expand-special88434_
                  (lambda (_hd88702_ _K88703_ _rest88704_ _r88705_)
                    (_K88703_
                     '()
                     (cons (_expand-internal88435_ _hd88702_ _rest88704_)
                           _r88705_))))
                 (_expand-internal88435_
                  (lambda (_hd88698_ _rest88699_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal88437_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd88698_ _rest88699_))
                          (gx#stx-source _stx88431_))
                         _expand-internal-special88436_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89057
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89057)
                       __obj89057))))
                 (_expand-internal-special88436_
                  (lambda (_hd88593_ _K88594_ _rest88595_ _r88596_)
                    (let* ((_e8859788622_ _hd88593_)
                           (_E8861788626_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8859788622_)))
                           (_E8861388638_
                            (lambda ()
                              (if (gx#stx-pair? _e8859788622_)
                                  (let ((_e8861888630_
                                         (gx#syntax-e _e8859788622_)))
                                    (let ((_hd8861988633_
                                           (##car _e8861888630_))
                                          (_tl8862088635_
                                           (##cdr _e8861888630_)))
                                      (if (and (gx#identifier? _hd8861988633_)
                                               (gx#core-identifier=?
                                                _hd8861988633_
                                                '%#declare))
                                          (if '#t
                                              (_K88594_
                                               _rest88595_
                                               (cons (gx#core-expand-declare%
                                                      _hd88593_)
                                                     _r88596_))
                                              (_E8861788626_))
                                          (_E8861788626_))))
                                  (_E8861788626_))))
                           (_E8860988650_
                            (lambda ()
                              (if (gx#stx-pair? _e8859788622_)
                                  (let ((_e8861488642_
                                         (gx#syntax-e _e8859788622_)))
                                    (let ((_hd8861588645_
                                           (##car _e8861488642_))
                                          (_tl8861688647_
                                           (##cdr _e8861488642_)))
                                      (if (and (gx#identifier? _hd8861588645_)
                                               (gx#core-identifier=?
                                                _hd8861588645_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd88593_)
                                                (_K88594_
                                                 _rest88595_
                                                 _r88596_))
                                              (_E8861388638_))
                                          (_E8861388638_))))
                                  (_E8861388638_))))
                           (_E8859988662_
                            (lambda ()
                              (if (gx#stx-pair? _e8859788622_)
                                  (let ((_e8861088654_
                                         (gx#syntax-e _e8859788622_)))
                                    (let ((_hd8861188657_
                                           (##car _e8861088654_))
                                          (_tl8861288659_
                                           (##cdr _e8861088654_)))
                                      (if (and (gx#identifier? _hd8861188657_)
                                               (gx#core-identifier=?
                                                _hd8861188657_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd88593_)
                                                (_K88594_
                                                 _rest88595_
                                                 _r88596_))
                                              (_E8860988650_))
                                          (_E8860988650_))))
                                  (_E8860988650_))))
                           (_E8859888694_
                            (lambda ()
                              (if (gx#stx-pair? _e8859788622_)
                                  (let ((_e8860088666_
                                         (gx#syntax-e _e8859788622_)))
                                    (let ((_hd8860188669_
                                           (##car _e8860088666_))
                                          (_tl8860288671_
                                           (##cdr _e8860088666_)))
                                      (if (and (gx#identifier? _hd8860188669_)
                                               (gx#core-identifier=?
                                                _hd8860188669_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8860288671_)
                                              (let ((_e8860388674_
                                                     (gx#syntax-e
                                                      _tl8860288671_)))
                                                (let ((_hd8860488677_
                                                       (##car _e8860388674_))
                                                      (_tl8860588679_
                                                       (##cdr _e8860388674_)))
                                                  (let ((_hd-bind88682_
                                                         _hd8860488677_))
                                                    (if (gx#stx-pair?
                                                         _tl8860588679_)
                                                        (let ((_e8860688684_
                                                               (gx#syntax-e
                                                                _tl8860588679_)))
                                                          (let ((_hd8860788687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8860688684_))
                        (_tl8860888689_ (##cdr _e8860688684_)))
                    (let ((_expr88692_ _hd8860788687_))
                      (if (gx#stx-null? _tl8860888689_)
                          (if (gx#core-bind-values? _hd-bind88682_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind88682_)
                                (_K88594_
                                 _rest88595_
                                 (cons _hd88593_ _r88596_)))
                              (_E8859988662_))
                          (_E8859988662_)))))
                (_E8859988662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8859988662_))
                                          (_E8859988662_))))
                                  (_E8859988662_)))))
                      (_E8859888694_))))
                 (_wrap-internal88437_
                  (lambda (_rbody88439_)
                    (let _lp88441_ ((_rest88443_ _rbody88439_)
                                    (_decls88444_ '())
                                    (_bind88445_ '())
                                    (_body88446_ '()))
                      (let* ((_e8844788454_ _rest88443_)
                             (_E8844988503_
                              (lambda ()
                                (let* ((_body88498_
                                        (let* ((_body8845788467_ _body88446_)
                                               (_else8846088475_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body88446_)
                                                   (gx#stx-source
                                                    _stx88431_)))))
                                          (let ((_K8846588495_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx88431_)))
                                                (_K8846288481_
                                                 (lambda (_expr88479_)
                                                   _expr88479_)))
                                            (let ((_try-match8845988491_
                                                   (lambda ()
                                                     (if (##pair? _body8845788467_)
                                                         (let ((_tl8846488486_
                                                                (##cdr _body8845788467_))
                                                               (_hd8846388484_
                                                                (##car _body8845788467_)))
                                                           (if (##null? _tl8846488486_)
                                                               (let ((_expr88489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8846388484_))
                         (_K8846288481_ _expr88489_))
                       (_else8846088475_)))
                 (_else8846088475_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8845788467_)
                                                  (_K8846588495_)
                                                  (_try-match8845988491_))))))
                                       (_body88500_
                                        (if (null? _bind88445_)
                                            _body88498_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind88445_
                                                         (cons _body88498_
                                                               '())))
                                             (gx#stx-source _stx88431_)))))
                                  (if (null? _decls88444_)
                                      _body88500_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls88444_
                                                   (cons _body88500_ '())))
                                       (gx#stx-source _stx88431_))))))
                             (_E8844888589_
                              (lambda ()
                                (if (gx#stx-pair? _e8844788454_)
                                    (let ((_e8845088507_
                                           (gx#syntax-e _e8844788454_)))
                                      (let ((_hd8845188510_
                                             (##car _e8845088507_))
                                            (_tl8845288512_
                                             (##cdr _e8845088507_)))
                                        (let* ((_hd88515_ _hd8845188510_)
                                               (_rest88517_ _tl8845288512_))
                                          (if '#t
                                              (let* ((_e8851888535_ _hd88515_)
                                                     (_E8853088539_
                                                      (lambda ()
                                                        (if (null? _bind88445_)
                                                            (_lp88441_
                                                             _rest88517_
                                                             _decls88444_
                                                             _bind88445_
                                                             (cons _hd88515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body88446_))
                    (_lp88441_
                     _rest88517_
                     _decls88444_
                     (cons (cons '#f (cons _hd88515_ '())) _bind88445_)
                     _body88446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8852088553_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8851888535_)
                                                            (let ((_e8853188543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8851888535_)))
                      (let ((_hd8853288546_ (##car _e8853188543_))
                            (_tl8853388548_ (##cdr _e8853188543_)))
                        (if (and (gx#identifier? _hd8853288546_)
                                 (gx#core-identifier=?
                                  _hd8853288546_
                                  '%#declare))
                            (let ((_xdecls88551_ _tl8853388548_))
                              (if '#t
                                  (_lp88441_
                                   _rest88517_
                                   (gx#stx-foldr
                                    cons
                                    _decls88444_
                                    _xdecls88551_)
                                   _bind88445_
                                   _body88446_)
                                  (_E8853088539_)))
                            (_E8853088539_))))
                    (_E8853088539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8851988585_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8851888535_)
                                                            (let ((_e8852188557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8851888535_)))
                      (let ((_hd8852288560_ (##car _e8852188557_))
                            (_tl8852388562_ (##cdr _e8852188557_)))
                        (if (and (gx#identifier? _hd8852288560_)
                                 (gx#core-identifier=?
                                  _hd8852288560_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8852388562_)
                                (let ((_e8852488565_
                                       (gx#syntax-e _tl8852388562_)))
                                  (let ((_hd8852588568_ (##car _e8852488565_))
                                        (_tl8852688570_ (##cdr _e8852488565_)))
                                    (let ((_hd-bind88573_ _hd8852588568_))
                                      (if (gx#stx-pair? _tl8852688570_)
                                          (let ((_e8852788575_
                                                 (gx#syntax-e _tl8852688570_)))
                                            (let ((_hd8852888578_
                                                   (##car _e8852788575_))
                                                  (_tl8852988580_
                                                   (##cdr _e8852788575_)))
                                              (let ((_expr88583_
                                                     _hd8852888578_))
                                                (if (gx#stx-null?
                                                     _tl8852988580_)
                                                    (if '#t
                                                        (_lp88441_
                                                         _rest88517_
                                                         _decls88444_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind88573_)
                             (cons (gx#core-expand-expression _expr88583_)
                                   '()))
                       _bind88445_)
                 _body88446_)
                (_E8852088553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8852088553_)))))
                                          (_E8852088553_)))))
                                (_E8852088553_))
                            (_E8852088553_))))
                    (_E8852088553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8851988585_))
                                              (_E8844988503_)))))
                                    (_E8844988503_)))))
                        (_E8844888589_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body88432_)
            (gx#stx-source _stx88431_))
           _expand-special88434_))))
    (define gx#core-expand-declare%
      (lambda (_stx88369_)
        (let* ((_e8837088377_ _stx88369_)
               (_E8837288381_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8837088377_)))
               (_E8837188427_
                (lambda ()
                  (if (gx#stx-pair? _e8837088377_)
                      (let ((_e8837388385_ (gx#syntax-e _e8837088377_)))
                        (let ((_hd8837488388_ (##car _e8837388385_))
                              (_tl8837588390_ (##cdr _e8837388385_)))
                          (let ((_body88393_ _tl8837588390_))
                            (if (gx#stx-list? _body88393_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl88395_)
                                     (let* ((_e8839688403_ _decl88395_)
                                            (_E8839888407_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8839688403_)))
                                            (_E8839788423_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8839688403_)
                                                   (let ((_e8839988411_
                                                          (gx#syntax-e
                                                           _e8839688403_)))
                                                     (let ((_hd8840088414_
                                                            (##car _e8839988411_))
                                                           (_tl8840188416_
                                                            (##cdr _e8839988411_)))
                                                       (let* ((_head88419_
                                                               _hd8840088414_)
                                                              (_args88421_
                                                               _tl8840188416_))
                                                         (if (gx#stx-list?
                                                              _args88421_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl88395_)
                                                             (_E8839888407_)))))
                                                   (_E8839888407_)))))
                                       (_E8839788423_)))
                                   _body88393_))
                                 (gx#stx-source _stx88369_))
                                (_E8837288381_)))))
                      (_E8837288381_)))))
          (_E8837188427_))))
    (define gx#core-expand-extern%
      (lambda (_stx88273_)
        (let* ((_e8827488281_ _stx88273_)
               (_E8827688285_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8827488281_)))
               (_E8827588365_
                (lambda ()
                  (if (gx#stx-pair? _e8827488281_)
                      (let ((_e8827788289_ (gx#syntax-e _e8827488281_)))
                        (let ((_hd8827888292_ (##car _e8827788289_))
                              (_tl8827988294_ (##cdr _e8827788289_)))
                          (let ((_body88297_ _tl8827988294_))
                            (if '#t
                                (let _lp88299_ ((_rest88301_ _body88297_)
                                                (_r88302_ '()))
                                  (let* ((_e8830388317_ _rest88301_)
                                         (_E8831588321_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx88273_)))
                                         (_E8830588325_
                                          (lambda ()
                                            (if (gx#stx-null? _e8830388317_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r88302_))
                                                     (gx#stx-source
                                                      _stx88273_))
                                                    (_E8831588321_))
                                                (_E8831588321_))))
                                         (_E8830488361_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8830388317_)
                                                (let ((_e8830688329_
                                                       (gx#syntax-e
                                                        _e8830388317_)))
                                                  (let ((_hd8830788332_
                                                         (##car _e8830688329_))
                                                        (_tl8830888334_
                                                         (##cdr _e8830688329_)))
                                                    (if (gx#stx-pair?
                                                         _hd8830788332_)
                                                        (let ((_e8830988337_
                                                               (gx#syntax-e
                                                                _hd8830788332_)))
                                                          (let ((_hd8831088340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8830988337_))
                        (_tl8831188342_ (##cdr _e8830988337_)))
                    (let ((_id88345_ _hd8831088340_))
                      (if (gx#stx-pair? _tl8831188342_)
                          (let ((_e8831288347_ (gx#syntax-e _tl8831188342_)))
                            (let ((_hd8831388350_ (##car _e8831288347_))
                                  (_tl8831488352_ (##cdr _e8831288347_)))
                              (let ((_eid88355_ _hd8831388350_))
                                (if (gx#stx-null? _tl8831488352_)
                                    (let ((_rest88357_ _tl8830888334_))
                                      (if (and (gx#identifier? _id88345_)
                                               (gx#identifier? _eid88355_))
                                          (let ((_eid88359_
                                                 (gx#stx-e _eid88355_)))
                                            (gx#core-bind-extern!__0
                                             _id88345_
                                             _eid88359_)
                                            (_lp88299_
                                             _rest88357_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id88345_)
                                                         (cons _eid88359_ '()))
                                                   _r88302_)))
                                          (_E8830588325_)))
                                    (_E8830588325_)))))
                          (_E8830588325_)))))
                (_E8830588325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8830588325_)))))
                                    (_E8830488361_)))
                                (_E8827688285_)))))
                      (_E8827688285_)))))
          (_E8827588365_))))
    (define gx#core-expand-define-values%
      (lambda (_stx88219_)
        (let* ((_e8822088233_ _stx88219_)
               (_E8822288237_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8822088233_)))
               (_E8822188269_
                (lambda ()
                  (if (gx#stx-pair? _e8822088233_)
                      (let ((_e8822388241_ (gx#syntax-e _e8822088233_)))
                        (let ((_hd8822488244_ (##car _e8822388241_))
                              (_tl8822588246_ (##cdr _e8822388241_)))
                          (if (gx#stx-pair? _tl8822588246_)
                              (let ((_e8822688249_
                                     (gx#syntax-e _tl8822588246_)))
                                (let ((_hd8822788252_ (##car _e8822688249_))
                                      (_tl8822888254_ (##cdr _e8822688249_)))
                                  (let ((_hd88257_ _hd8822788252_))
                                    (if (gx#stx-pair? _tl8822888254_)
                                        (let ((_e8822988259_
                                               (gx#syntax-e _tl8822888254_)))
                                          (let ((_hd8823088262_
                                                 (##car _e8822988259_))
                                                (_tl8823188264_
                                                 (##cdr _e8822988259_)))
                                            (let ((_expr88267_ _hd8823088262_))
                                              (if (gx#stx-null? _tl8823188264_)
                                                  (if (gx#core-bind-values?
                                                       _hd88257_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd88257_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd88257_)
                             (cons (gx#core-expand-expression _expr88267_)
                                   '())))
                 (gx#stx-source _stx88219_)))
              (_E8822288237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8822288237_)))))
                                        (_E8822288237_)))))
                              (_E8822288237_))))
                      (_E8822288237_)))))
          (_E8822188269_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx88163_)
        (let* ((_e8816488177_ _stx88163_)
               (_E8816688181_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8816488177_)))
               (_E8816588215_
                (lambda ()
                  (if (gx#stx-pair? _e8816488177_)
                      (let ((_e8816788185_ (gx#syntax-e _e8816488177_)))
                        (let ((_hd8816888188_ (##car _e8816788185_))
                              (_tl8816988190_ (##cdr _e8816788185_)))
                          (if (gx#stx-pair? _tl8816988190_)
                              (let ((_e8817088193_
                                     (gx#syntax-e _tl8816988190_)))
                                (let ((_hd8817188196_ (##car _e8817088193_))
                                      (_tl8817288198_ (##cdr _e8817088193_)))
                                  (let ((_id88201_ _hd8817188196_))
                                    (if (gx#stx-pair? _tl8817288198_)
                                        (let ((_e8817388203_
                                               (gx#syntax-e _tl8817288198_)))
                                          (let ((_hd8817488206_
                                                 (##car _e8817388203_))
                                                (_tl8817588208_
                                                 (##cdr _e8817388203_)))
                                            (let ((_binding-id88211_
                                                   _hd8817488206_))
                                              (if (gx#stx-null? _tl8817588208_)
                                                  (if (and (gx#identifier?
                                                            _id88201_)
                                                           (gx#identifier?
                                                            _binding-id88211_))
                                                      (let ((_eid88213_
                                                             (gx#stx-e
                                                              _binding-id88211_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id88201_
                                                         _eid88213_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88201_)
                             (cons _eid88213_ '())))))
              (_E8816688181_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8816688181_)))))
                                        (_E8816688181_)))))
                              (_E8816688181_))))
                      (_E8816688181_)))))
          (_E8816588215_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx88106_)
        (let* ((_e8810788120_ _stx88106_)
               (_E8810988124_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8810788120_)))
               (_E8810888159_
                (lambda ()
                  (if (gx#stx-pair? _e8810788120_)
                      (let ((_e8811088128_ (gx#syntax-e _e8810788120_)))
                        (let ((_hd8811188131_ (##car _e8811088128_))
                              (_tl8811288133_ (##cdr _e8811088128_)))
                          (if (gx#stx-pair? _tl8811288133_)
                              (let ((_e8811388136_
                                     (gx#syntax-e _tl8811288133_)))
                                (let ((_hd8811488139_ (##car _e8811388136_))
                                      (_tl8811588141_ (##cdr _e8811388136_)))
                                  (let ((_id88144_ _hd8811488139_))
                                    (if (gx#stx-pair? _tl8811588141_)
                                        (let ((_e8811688146_
                                               (gx#syntax-e _tl8811588141_)))
                                          (let ((_hd8811788149_
                                                 (##car _e8811688146_))
                                                (_tl8811888151_
                                                 (##cdr _e8811688146_)))
                                            (let ((_expr88154_ _hd8811788149_))
                                              (if (gx#stx-null? _tl8811888151_)
                                                  (if (gx#identifier?
                                                       _id88144_)
                                                      (let ((_g89065_
                                                             (gx#core-expand-expression+1
                                                              _expr88154_)))
                                                        (begin
                                                          (let ((_g89066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89065_)
                             (##vector-length _g89065_)
                             1)))
                    (if (not (##fx= _g89066_ 2))
                        (error "Context expects 2 values" _g89066_)))
                  (let ((_e-stx88156_ (##vector-ref _g89065_ 0))
                        (_e88157_ (##vector-ref _g89065_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id88144_ _e88157_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id88144_)
                                   (cons _e-stx88156_ '())))
                       (gx#stx-source _stx88106_))))))
              (_E8810988124_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8810988124_)))))
                                        (_E8810988124_)))))
                              (_E8810988124_))))
                      (_E8810988124_)))))
          (_E8810888159_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88050_)
        (let* ((_e8805188064_ _stx88050_)
               (_E8805388068_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8805188064_)))
               (_E8805288102_
                (lambda ()
                  (if (gx#stx-pair? _e8805188064_)
                      (let ((_e8805488072_ (gx#syntax-e _e8805188064_)))
                        (let ((_hd8805588075_ (##car _e8805488072_))
                              (_tl8805688077_ (##cdr _e8805488072_)))
                          (if (gx#stx-pair? _tl8805688077_)
                              (let ((_e8805788080_
                                     (gx#syntax-e _tl8805688077_)))
                                (let ((_hd8805888083_ (##car _e8805788080_))
                                      (_tl8805988085_ (##cdr _e8805788080_)))
                                  (let ((_id88088_ _hd8805888083_))
                                    (if (gx#stx-pair? _tl8805988085_)
                                        (let ((_e8806088090_
                                               (gx#syntax-e _tl8805988085_)))
                                          (let ((_hd8806188093_
                                                 (##car _e8806088090_))
                                                (_tl8806288095_
                                                 (##cdr _e8806088090_)))
                                            (let ((_alias-id88098_
                                                   _hd8806188093_))
                                              (if (gx#stx-null? _tl8806288095_)
                                                  (if (and (gx#identifier?
                                                            _id88088_)
                                                           (gx#identifier?
                                                            _alias-id88098_))
                                                      (let ((_alias-id88100_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id88098_)))
                                                        (gx#core-bind-alias!__0
                                                         _id88088_
                                                         _alias-id88100_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id88088_)
                             (cons _alias-id88100_ '())))))
              (_E8805388068_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8805388068_)))))
                                        (_E8805388068_)))))
                              (_E8805388068_))))
                      (_E8805388068_)))))
          (_E8805288102_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx87993_ _wrap?87994_)
        (let* ((_e8799588005_ _stx87993_)
               (_E8799788009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8799588005_)))
               (_E8799688036_
                (lambda ()
                  (if (gx#stx-pair? _e8799588005_)
                      (let ((_e8799888013_ (gx#syntax-e _e8799588005_)))
                        (let ((_hd8799988016_ (##car _e8799888013_))
                              (_tl8800088018_ (##cdr _e8799888013_)))
                          (if (gx#stx-pair? _tl8800088018_)
                              (let ((_e8800188021_
                                     (gx#syntax-e _tl8800088018_)))
                                (let ((_hd8800288024_ (##car _e8800188021_))
                                      (_tl8800388026_ (##cdr _e8800188021_)))
                                  (let* ((_hd88029_ _hd8800288024_)
                                         (_body88031_ _tl8800388026_))
                                    (if (gx#core-bind-values? _hd88029_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88029_)
                                           (let ((_body88034_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88029_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx87993_
                                                               _body88031_)
                                                              '()))))
                                             (if _wrap?87994_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88034_)
                                                  (gx#stx-source _stx87993_))
                                                 _body88034_)))
                                         gx#current-expander-context
                                         (let ((__obj89058
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89058)
                                           __obj89058))
                                        (_E8799788009_)))))
                              (_E8799788009_))))
                      (_E8799788009_)))))
          (_E8799688036_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88043_)
        (let ((_wrap?88045_ '#t))
          (gx#core-expand-lambda%__% _stx88043_ _wrap?88045_))))
    (define gx#core-expand-lambda%
      (lambda _g89068_
        (let ((_g89067_ (##length _g89068_)))
          (cond ((##fx= _g89067_ 1)
                 (apply (lambda (_stx88043_)
                          (gx#core-expand-lambda%__0 _stx88043_))
                        _g89068_))
                ((##fx= _g89067_ 2)
                 (apply (lambda (_stx88047_ _wrap?88048_)
                          (gx#core-expand-lambda%__% _stx88047_ _wrap?88048_))
                        _g89068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89068_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx87957_)
        (let* ((_e8795887965_ _stx87957_)
               (_E8796087969_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8795887965_)))
               (_E8795987988_
                (lambda ()
                  (if (gx#stx-pair? _e8795887965_)
                      (let ((_e8796187973_ (gx#syntax-e _e8795887965_)))
                        (let ((_hd8796287976_ (##car _e8796187973_))
                              (_tl8796387978_ (##cdr _e8796187973_)))
                          (let ((_clauses87981_ _tl8796387978_))
                            (if (gx#stx-list? _clauses87981_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause87983_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause87983_)
                                       (let ((_$e87985_
                                              (gx#stx-source _clause87983_)))
                                         (if _$e87985_
                                             _$e87985_
                                             (gx#stx-source _stx87957_))))
                                      '#f))
                                   _clauses87981_))
                                 (gx#stx-source _stx87957_))
                                (_E8796087969_)))))
                      (_E8796087969_)))))
          (_E8795987988_))))
    (define gx#core-expand-let-values%
      (lambda (_stx87911_)
        (let* ((_e8791287922_ _stx87911_)
               (_E8791487926_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8791287922_)))
               (_E8791387953_
                (lambda ()
                  (if (gx#stx-pair? _e8791287922_)
                      (let ((_e8791587930_ (gx#syntax-e _e8791287922_)))
                        (let ((_hd8791687933_ (##car _e8791587930_))
                              (_tl8791787935_ (##cdr _e8791587930_)))
                          (if (gx#stx-pair? _tl8791787935_)
                              (let ((_e8791887938_
                                     (gx#syntax-e _tl8791787935_)))
                                (let ((_hd8791987941_ (##car _e8791887938_))
                                      (_tl8792087943_ (##cdr _e8791887938_)))
                                  (let* ((_hd87946_ _hd8791987941_)
                                         (_body87948_ _tl8792087943_))
                                    (if (gx#core-expand-let-bind? _hd87946_)
                                        (let ((_expressions87950_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd87946_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd87946_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd87946_
                                                           _expressions87950_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx87911_
                         _body87948_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx87911_)))
                                           gx#current-expander-context
                                           (let ((__obj89059
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89059)
                                             __obj89059)))
                                        (_E8791487926_)))))
                              (_E8791487926_))))
                      (_E8791487926_)))))
          (_E8791387953_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx87856_ _form87857_)
        (let* ((_e8785887868_ _stx87856_)
               (_E8786087872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8785887868_)))
               (_E8785987897_
                (lambda ()
                  (if (gx#stx-pair? _e8785887868_)
                      (let ((_e8786187876_ (gx#syntax-e _e8785887868_)))
                        (let ((_hd8786287879_ (##car _e8786187876_))
                              (_tl8786387881_ (##cdr _e8786187876_)))
                          (if (gx#stx-pair? _tl8786387881_)
                              (let ((_e8786487884_
                                     (gx#syntax-e _tl8786387881_)))
                                (let ((_hd8786587887_ (##car _e8786487884_))
                                      (_tl8786687889_ (##cdr _e8786487884_)))
                                  (let* ((_hd87892_ _hd8786587887_)
                                         (_body87894_ _tl8786687889_))
                                    (if (gx#core-expand-let-bind? _hd87892_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd87892_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form87857_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd87892_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd87892_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx87856_
                                                               _body87894_)
                                                              '())))
                                            (gx#stx-source _stx87856_)))
                                         gx#current-expander-context
                                         (let ((__obj89060
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89060)
                                           __obj89060))
                                        (_E8786087872_)))))
                              (_E8786087872_))))
                      (_E8786087872_)))))
          (_E8785987897_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx87904_)
        (let ((_form87906_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx87904_ _form87906_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89070_
        (let ((_g89069_ (##length _g89070_)))
          (cond ((##fx= _g89069_ 1)
                 (apply (lambda (_stx87904_)
                          (gx#core-expand-letrec-values%__0 _stx87904_))
                        _g89070_))
                ((##fx= _g89069_ 2)
                 (apply (lambda (_stx87908_ _form87909_)
                          (gx#core-expand-letrec-values%__%
                           _stx87908_
                           _form87909_))
                        _g89070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89070_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx87853_)
        (gx#core-expand-letrec-values%__% _stx87853_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx87810_)
        (if (gx#stx-list? _stx87810_)
            (gx#stx-andmap
             (lambda (_bind87812_)
               (let* ((_e8781387823_ _bind87812_)
                      (_E8781587827_ (lambda () '#f))
                      (_E8781487849_
                       (lambda ()
                         (if (gx#stx-pair? _e8781387823_)
                             (let ((_e8781687831_ (gx#syntax-e _e8781387823_)))
                               (let ((_hd8781787834_ (##car _e8781687831_))
                                     (_tl8781887836_ (##cdr _e8781687831_)))
                                 (let ((_hd87839_ _hd8781787834_))
                                   (if (gx#stx-pair? _tl8781887836_)
                                       (let ((_e8781987841_
                                              (gx#syntax-e _tl8781887836_)))
                                         (let ((_hd8782087844_
                                                (##car _e8781987841_))
                                               (_tl8782187846_
                                                (##cdr _e8781987841_)))
                                           (if (gx#stx-null? _tl8782187846_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd87839_)
                                                   (_E8781587827_))
                                               (_E8781587827_))))
                                       (_E8781587827_)))))
                             (_E8781587827_)))))
                 (_E8781487849_)))
             _stx87810_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind87769_)
        (let* ((_e8777087780_ _bind87769_)
               (_E8777287784_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8777087780_)))
               (_E8777187806_
                (lambda ()
                  (if (gx#stx-pair? _e8777087780_)
                      (let ((_e8777387788_ (gx#syntax-e _e8777087780_)))
                        (let ((_hd8777487791_ (##car _e8777387788_))
                              (_tl8777587793_ (##cdr _e8777387788_)))
                          (if (gx#stx-pair? _tl8777587793_)
                              (let ((_e8777687796_
                                     (gx#syntax-e _tl8777587793_)))
                                (let ((_hd8777787799_ (##car _e8777687796_))
                                      (_tl8777887801_ (##cdr _e8777687796_)))
                                  (let ((_expr87804_ _hd8777787799_))
                                    (if (gx#stx-null? _tl8777887801_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87804_)
                                            (_E8777287784_))
                                        (_E8777287784_)))))
                              (_E8777287784_))))
                      (_E8777287784_)))))
          (_E8777187806_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind87728_)
        (let* ((_e8772987739_ _bind87728_)
               (_E8773187743_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8772987739_)))
               (_E8773087765_
                (lambda ()
                  (if (gx#stx-pair? _e8772987739_)
                      (let ((_e8773287747_ (gx#syntax-e _e8772987739_)))
                        (let ((_hd8773387750_ (##car _e8773287747_))
                              (_tl8773487752_ (##cdr _e8773287747_)))
                          (let ((_hd87755_ _hd8773387750_))
                            (if (gx#stx-pair? _tl8773487752_)
                                (let ((_e8773587757_
                                       (gx#syntax-e _tl8773487752_)))
                                  (let ((_hd8773687760_ (##car _e8773587757_))
                                        (_tl8773787762_ (##cdr _e8773587757_)))
                                    (if (gx#stx-null? _tl8773787762_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd87755_)
                                            (_E8773187743_))
                                        (_E8773187743_))))
                                (_E8773187743_)))))
                      (_E8773187743_)))))
          (_E8773087765_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind87686_ _expr87687_)
        (let* ((_e8768887698_ _bind87686_)
               (_E8769087702_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8768887698_)))
               (_E8768987724_
                (lambda ()
                  (if (gx#stx-pair? _e8768887698_)
                      (let ((_e8769187706_ (gx#syntax-e _e8768887698_)))
                        (let ((_hd8769287709_ (##car _e8769187706_))
                              (_tl8769387711_ (##cdr _e8769187706_)))
                          (let ((_hd87714_ _hd8769287709_))
                            (if (gx#stx-pair? _tl8769387711_)
                                (let ((_e8769487716_
                                       (gx#syntax-e _tl8769387711_)))
                                  (let ((_hd8769587719_ (##car _e8769487716_))
                                        (_tl8769687721_ (##cdr _e8769487716_)))
                                    (if (gx#stx-null? _tl8769687721_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd87714_)
                                                  (cons _expr87687_ '()))
                                            (_E8769087702_))
                                        (_E8769087702_))))
                                (_E8769087702_)))))
                      (_E8769087702_)))))
          (_E8768987724_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx87640_)
        (let* ((_e8764187651_ _stx87640_)
               (_E8764387655_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8764187651_)))
               (_E8764287682_
                (lambda ()
                  (if (gx#stx-pair? _e8764187651_)
                      (let ((_e8764487659_ (gx#syntax-e _e8764187651_)))
                        (let ((_hd8764587662_ (##car _e8764487659_))
                              (_tl8764687664_ (##cdr _e8764487659_)))
                          (if (gx#stx-pair? _tl8764687664_)
                              (let ((_e8764787667_
                                     (gx#syntax-e _tl8764687664_)))
                                (let ((_hd8764887670_ (##car _e8764787667_))
                                      (_tl8764987672_ (##cdr _e8764787667_)))
                                  (let* ((_hd87675_ _hd8764887670_)
                                         (_body87677_ _tl8764987672_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87675_)
                                        (let ((_expanders87679_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd87675_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd87675_
                                              _expanders87679_)
                                             (gx#core-expand-local-block
                                              _stx87640_
                                              _body87677_))
                                           gx#current-expander-context
                                           (let ((__obj89061
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89061)
                                             __obj89061)))
                                        (_E8764387655_)))))
                              (_E8764387655_))))
                      (_E8764387655_)))))
          (_E8764287682_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx87589_)
        (let* ((_e8759087600_ _stx87589_)
               (_E8759287604_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8759087600_)))
               (_E8759187636_
                (lambda ()
                  (if (gx#stx-pair? _e8759087600_)
                      (let ((_e8759387608_ (gx#syntax-e _e8759087600_)))
                        (let ((_hd8759487611_ (##car _e8759387608_))
                              (_tl8759587613_ (##cdr _e8759387608_)))
                          (if (gx#stx-pair? _tl8759587613_)
                              (let ((_e8759687616_
                                     (gx#syntax-e _tl8759587613_)))
                                (let ((_hd8759787619_ (##car _e8759687616_))
                                      (_tl8759887621_ (##cdr _e8759687616_)))
                                  (let* ((_hd87624_ _hd8759787619_)
                                         (_body87626_ _tl8759887621_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd87624_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd87624_
                                            (make-list__%
                                             (gx#stx-length _hd87624_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8762887631_
                                                     _g8762987633_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8762887631_
                                               _g8762987633_
                                               '#t))
                                            _hd87624_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd87624_))
                                           (gx#core-expand-local-block
                                            _stx87589_
                                            _body87626_))
                                         gx#current-expander-context
                                         (let ((__obj89062
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89062)
                                           __obj89062))
                                        (_E8759287604_)))))
                              (_E8759287604_))))
                      (_E8759287604_)))))
          (_E8759187636_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx87546_)
        (if (gx#stx-list? _stx87546_)
            (gx#stx-andmap
             (lambda (_bind87548_)
               (let* ((_e8754987559_ _bind87548_)
                      (_E8755187563_ (lambda () '#f))
                      (_E8755087585_
                       (lambda ()
                         (if (gx#stx-pair? _e8754987559_)
                             (let ((_e8755287567_ (gx#syntax-e _e8754987559_)))
                               (let ((_hd8755387570_ (##car _e8755287567_))
                                     (_tl8755487572_ (##cdr _e8755287567_)))
                                 (let ((_hd87575_ _hd8755387570_))
                                   (if (gx#stx-pair? _tl8755487572_)
                                       (let ((_e8755587577_
                                              (gx#syntax-e _tl8755487572_)))
                                         (let ((_hd8755687580_
                                                (##car _e8755587577_))
                                               (_tl8755787582_
                                                (##cdr _e8755587577_)))
                                           (if (gx#stx-null? _tl8755787582_)
                                               (if '#t
                                                   (gx#identifier? _hd87575_)
                                                   (_E8755187563_))
                                               (_E8755187563_))))
                                       (_E8755187563_)))))
                             (_E8755187563_)))))
                 (_E8755087585_)))
             _stx87546_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind87503_)
        (let* ((_e8750487514_ _bind87503_)
               (_E8750687518_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8750487514_)))
               (_E8750587542_
                (lambda ()
                  (if (gx#stx-pair? _e8750487514_)
                      (let ((_e8750787522_ (gx#syntax-e _e8750487514_)))
                        (let ((_hd8750887525_ (##car _e8750787522_))
                              (_tl8750987527_ (##cdr _e8750787522_)))
                          (if (gx#stx-pair? _tl8750987527_)
                              (let ((_e8751087530_
                                     (gx#syntax-e _tl8750987527_)))
                                (let ((_hd8751187533_ (##car _e8751087530_))
                                      (_tl8751287535_ (##cdr _e8751087530_)))
                                  (let ((_expr87538_ _hd8751187533_))
                                    (if (gx#stx-null? _tl8751287535_)
                                        (if '#t
                                            (let ((_g89071_
                                                   (gx#core-expand-expression+1
                                                    _expr87538_)))
                                              (begin
                                                (let ((_g89072_
                                                       (if (##values? _g89071_)
                                                           (##vector-length
                                                            _g89071_)
                                                           1)))
                                                  (if (not (##fx= _g89072_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89072_)))
                                                (let ((_e87540_
                                                       (##vector-ref
                                                        _g89071_
                                                        1)))
                                                  _e87540_)))
                                            (_E8750687518_))
                                        (_E8750687518_)))))
                              (_E8750687518_))))
                      (_E8750687518_)))))
          (_E8750587542_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind87448_ _e87449_ _rebind?87450_)
        (let* ((_e8745187461_ _bind87448_)
               (_E8745387465_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8745187461_)))
               (_E8745287487_
                (lambda ()
                  (if (gx#stx-pair? _e8745187461_)
                      (let ((_e8745487469_ (gx#syntax-e _e8745187461_)))
                        (let ((_hd8745587472_ (##car _e8745487469_))
                              (_tl8745687474_ (##cdr _e8745487469_)))
                          (let ((_id87477_ _hd8745587472_))
                            (if (gx#stx-pair? _tl8745687474_)
                                (let ((_e8745787479_
                                       (gx#syntax-e _tl8745687474_)))
                                  (let ((_hd8745887482_ (##car _e8745787479_))
                                        (_tl8745987484_ (##cdr _e8745787479_)))
                                    (if (gx#stx-null? _tl8745987484_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id87477_
                                             _e87449_
                                             _rebind?87450_)
                                            (_E8745387465_))
                                        (_E8745387465_))))
                                (_E8745387465_)))))
                      (_E8745387465_)))))
          (_E8745287487_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind87494_ _e87495_)
        (let ((_rebind?87497_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind87494_
           _e87495_
           _rebind?87497_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89074_
        (let ((_g89073_ (##length _g89074_)))
          (cond ((##fx= _g89073_ 2)
                 (apply (lambda (_bind87494_ _e87495_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind87494_
                           _e87495_))
                        _g89074_))
                ((##fx= _g89073_ 3)
                 (apply (lambda (_bind87499_ _e87500_ _rebind?87501_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind87499_
                           _e87500_
                           _rebind?87501_))
                        _g89074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89074_))))))
    (define gx#core-expand-expression%
      (lambda (_stx87406_)
        (let* ((_e8740787417_ _stx87406_)
               (_E8740987421_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8740787417_)))
               (_E8740887443_
                (lambda ()
                  (if (gx#stx-pair? _e8740787417_)
                      (let ((_e8741087425_ (gx#syntax-e _e8740787417_)))
                        (let ((_hd8741187428_ (##car _e8741087425_))
                              (_tl8741287430_ (##cdr _e8741087425_)))
                          (if (gx#stx-pair? _tl8741287430_)
                              (let ((_e8741387433_
                                     (gx#syntax-e _tl8741287430_)))
                                (let ((_hd8741487436_ (##car _e8741387433_))
                                      (_tl8741587438_ (##cdr _e8741387433_)))
                                  (let ((_expr87441_ _hd8741487436_))
                                    (if (gx#stx-null? _tl8741587438_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr87441_)
                                            (_E8740987421_))
                                        (_E8740987421_)))))
                              (_E8740987421_))))
                      (_E8740987421_)))))
          (_E8740887443_))))
    (define gx#core-expand-quote%
      (lambda (_stx87365_)
        (let* ((_e8736687376_ _stx87365_)
               (_E8736887380_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8736687376_)))
               (_E8736787402_
                (lambda ()
                  (if (gx#stx-pair? _e8736687376_)
                      (let ((_e8736987384_ (gx#syntax-e _e8736687376_)))
                        (let ((_hd8737087387_ (##car _e8736987384_))
                              (_tl8737187389_ (##cdr _e8736987384_)))
                          (if (gx#stx-pair? _tl8737187389_)
                              (let ((_e8737287392_
                                     (gx#syntax-e _tl8737187389_)))
                                (let ((_hd8737387395_ (##car _e8737287392_))
                                      (_tl8737487397_ (##cdr _e8737287392_)))
                                  (let ((_e87400_ _hd8737387395_))
                                    (if (gx#stx-null? _tl8737487397_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e87400_)
                                                         '()))
                                             (gx#stx-source _stx87365_))
                                            (_E8736887380_))
                                        (_E8736887380_)))))
                              (_E8736887380_))))
                      (_E8736887380_)))))
          (_E8736787402_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx87324_)
        (let* ((_e8732587335_ _stx87324_)
               (_E8732787339_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8732587335_)))
               (_E8732687361_
                (lambda ()
                  (if (gx#stx-pair? _e8732587335_)
                      (let ((_e8732887343_ (gx#syntax-e _e8732587335_)))
                        (let ((_hd8732987346_ (##car _e8732887343_))
                              (_tl8733087348_ (##cdr _e8732887343_)))
                          (if (gx#stx-pair? _tl8733087348_)
                              (let ((_e8733187351_
                                     (gx#syntax-e _tl8733087348_)))
                                (let ((_hd8733287354_ (##car _e8733187351_))
                                      (_tl8733387356_ (##cdr _e8733187351_)))
                                  (let ((_e87359_ _hd8733287354_))
                                    (if (gx#stx-null? _tl8733387356_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e87359_)
                                                         '()))
                                             (gx#stx-source _stx87324_))
                                            (_E8732787339_))
                                        (_E8732787339_)))))
                              (_E8732787339_))))
                      (_E8732787339_)))))
          (_E8732687361_))))
    (define gx#core-expand-call%
      (lambda (_stx87281_)
        (let* ((_e8728287292_ _stx87281_)
               (_E8728487296_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8728287292_)))
               (_E8728387320_
                (lambda ()
                  (if (gx#stx-pair? _e8728287292_)
                      (let ((_e8728587300_ (gx#syntax-e _e8728287292_)))
                        (let ((_hd8728687303_ (##car _e8728587300_))
                              (_tl8728787305_ (##cdr _e8728587300_)))
                          (if (gx#stx-pair? _tl8728787305_)
                              (let ((_e8728887308_
                                     (gx#syntax-e _tl8728787305_)))
                                (let ((_hd8728987311_ (##car _e8728887308_))
                                      (_tl8729087313_ (##cdr _e8728887308_)))
                                  (let* ((_rator87316_ _hd8728987311_)
                                         (_args87318_ _tl8729087313_))
                                    (if (gx#stx-list? _args87318_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator87316_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args87318_))
                                         (gx#stx-source _stx87281_))
                                        (_E8728487296_)))))
                              (_E8728487296_))))
                      (_E8728487296_)))))
          (_E8728387320_))))
    (define gx#core-expand-if%
      (lambda (_stx87214_)
        (let* ((_e8721587231_ _stx87214_)
               (_E8721787235_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8721587231_)))
               (_E8721687277_
                (lambda ()
                  (if (gx#stx-pair? _e8721587231_)
                      (let ((_e8721887239_ (gx#syntax-e _e8721587231_)))
                        (let ((_hd8721987242_ (##car _e8721887239_))
                              (_tl8722087244_ (##cdr _e8721887239_)))
                          (if (gx#stx-pair? _tl8722087244_)
                              (let ((_e8722187247_
                                     (gx#syntax-e _tl8722087244_)))
                                (let ((_hd8722287250_ (##car _e8722187247_))
                                      (_tl8722387252_ (##cdr _e8722187247_)))
                                  (let ((_test87255_ _hd8722287250_))
                                    (if (gx#stx-pair? _tl8722387252_)
                                        (let ((_e8722487257_
                                               (gx#syntax-e _tl8722387252_)))
                                          (let ((_hd8722587260_
                                                 (##car _e8722487257_))
                                                (_tl8722687262_
                                                 (##cdr _e8722487257_)))
                                            (let ((_K87265_ _hd8722587260_))
                                              (if (gx#stx-pair? _tl8722687262_)
                                                  (let ((_e8722787267_
                                                         (gx#syntax-e
                                                          _tl8722687262_)))
                                                    (let ((_hd8722887270_
                                                           (##car _e8722787267_))
                                                          (_tl8722987272_
                                                           (##cdr _e8722787267_)))
                                                      (let ((_E87275_
                                                             _hd8722887270_))
                                                        (if (gx#stx-null?
                                                             _tl8722987272_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test87255_)
                                     (cons (gx#core-expand-expression _K87265_)
                                           (cons (gx#core-expand-expression
                                                  _E87275_)
                                                 '()))))
                         (gx#stx-source _stx87214_))
                        (_E8721787235_))
                    (_E8721787235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8721787235_)))))
                                        (_E8721787235_)))))
                              (_E8721787235_))))
                      (_E8721787235_)))))
          (_E8721687277_))))
    (define gx#core-expand-ref%
      (lambda (_stx87173_)
        (let* ((_e8717487184_ _stx87173_)
               (_E8717687188_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8717487184_)))
               (_E8717587210_
                (lambda ()
                  (if (gx#stx-pair? _e8717487184_)
                      (let ((_e8717787192_ (gx#syntax-e _e8717487184_)))
                        (let ((_hd8717887195_ (##car _e8717787192_))
                              (_tl8717987197_ (##cdr _e8717787192_)))
                          (if (gx#stx-pair? _tl8717987197_)
                              (let ((_e8718087200_
                                     (gx#syntax-e _tl8717987197_)))
                                (let ((_hd8718187203_ (##car _e8718087200_))
                                      (_tl8718287205_ (##cdr _e8718087200_)))
                                  (let ((_id87208_ _hd8718187203_))
                                    (if (gx#stx-null? _tl8718287205_)
                                        (if (gx#identifier? _id87208_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id87208_
                                                          _stx87173_)
                                                         '()))
                                             (gx#stx-source _stx87173_))
                                            (_E8717687188_))
                                        (_E8717687188_)))))
                              (_E8717687188_))))
                      (_E8717687188_)))))
          (_E8717587210_))))
    (define gx#core-expand-setq%
      (lambda (_stx87119_)
        (let* ((_e8712087133_ _stx87119_)
               (_E8712287137_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8712087133_)))
               (_E8712187169_
                (lambda ()
                  (if (gx#stx-pair? _e8712087133_)
                      (let ((_e8712387141_ (gx#syntax-e _e8712087133_)))
                        (let ((_hd8712487144_ (##car _e8712387141_))
                              (_tl8712587146_ (##cdr _e8712387141_)))
                          (if (gx#stx-pair? _tl8712587146_)
                              (let ((_e8712687149_
                                     (gx#syntax-e _tl8712587146_)))
                                (let ((_hd8712787152_ (##car _e8712687149_))
                                      (_tl8712887154_ (##cdr _e8712687149_)))
                                  (let ((_id87157_ _hd8712787152_))
                                    (if (gx#stx-pair? _tl8712887154_)
                                        (let ((_e8712987159_
                                               (gx#syntax-e _tl8712887154_)))
                                          (let ((_hd8713087162_
                                                 (##car _e8712987159_))
                                                (_tl8713187164_
                                                 (##cdr _e8712987159_)))
                                            (let ((_expr87167_ _hd8713087162_))
                                              (if (gx#stx-null? _tl8713187164_)
                                                  (if (gx#identifier?
                                                       _id87157_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id87157_
                            _stx87119_)
                           (cons (gx#core-expand-expression _expr87167_) '())))
               (gx#stx-source _stx87119_))
              (_E8712287137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8712287137_)))))
                                        (_E8712287137_)))))
                              (_E8712287137_))))
                      (_E8712287137_)))))
          (_E8712187169_))))
    (define gx#macro-expand-extern
      (lambda (_stx86967_)
        (letrec ((_generate86969_
                  (lambda (_body86999_)
                    (let _lp87001_ ((_rest87003_ _body86999_)
                                    (_ns87004_ (gx#core-context-namespace__0))
                                    (_r87005_ '()))
                      (let* ((_e8700687021_ _rest87003_)
                             (_E8701987025_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8700687021_)))
                             (_E8701587029_
                              (lambda ()
                                (if (gx#stx-null? _e8700687021_)
                                    (if '#t (reverse _r87005_) (_E8701987025_))
                                    (_E8701987025_))))
                             (_E8700887086_
                              (lambda ()
                                (if (gx#stx-pair? _e8700687021_)
                                    (let ((_e8701687033_
                                           (gx#syntax-e _e8700687021_)))
                                      (let ((_hd8701787036_
                                             (##car _e8701687033_))
                                            (_tl8701887038_
                                             (##cdr _e8701687033_)))
                                        (let* ((_hd87041_ _hd8701787036_)
                                               (_rest87043_ _tl8701887038_))
                                          (if '#t
                                              (if (gx#identifier? _hd87041_)
                                                  (_lp87001_
                                                   _rest87043_
                                                   _ns87004_
                                                   (cons (cons _hd87041_
                                                               (cons (if _ns87004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87041_
                                  _ns87004_
                                  '"#"
                                  _hd87041_)
                                 _hd87041_)
                             '()))
                 _r87005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8704487054_
                                                          _hd87041_)
                                                         (_E8704687058_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8704487054_)))
                                                         (_E8704587082_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8704487054_)
                        (let ((_e8704787062_ (gx#syntax-e _e8704487054_)))
                          (let ((_hd8704887065_ (##car _e8704787062_))
                                (_tl8704987067_ (##cdr _e8704787062_)))
                            (let ((_id87070_ _hd8704887065_))
                              (if (gx#stx-pair? _tl8704987067_)
                                  (let ((_e8705087072_
                                         (gx#syntax-e _tl8704987067_)))
                                    (let ((_hd8705187075_
                                           (##car _e8705087072_))
                                          (_tl8705287077_
                                           (##cdr _e8705087072_)))
                                      (let ((_eid87080_ _hd8705187075_))
                                        (if (gx#stx-null? _tl8705287077_)
                                            (if (and (gx#identifier? _id87070_)
                                                     (gx#identifier?
                                                      _eid87080_))
                                                (_lp87001_
                                                 _rest87043_
                                                 _ns87004_
                                                 (cons (cons _id87070_
                                                             (cons _eid87080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8704687058_))
                                            (_E8704687058_)))))
                                  (_E8704687058_)))))
                        (_E8704687058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8704587082_)))
                                              (_E8701587029_)))))
                                    (_E8701587029_))))
                             (_E8700787115_
                              (lambda ()
                                (if (gx#stx-pair? _e8700687021_)
                                    (let ((_e8700987090_
                                           (gx#syntax-e _e8700687021_)))
                                      (let ((_hd8701087093_
                                             (##car _e8700987090_))
                                            (_tl8701187095_
                                             (##cdr _e8700987090_)))
                                        (if (eq? (gx#stx-e _hd8701087093_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8701187095_)
                                                (let ((_e8701287098_
                                                       (gx#syntax-e
                                                        _tl8701187095_)))
                                                  (let ((_hd8701387101_
                                                         (##car _e8701287098_))
                                                        (_tl8701487103_
                                                         (##cdr _e8701287098_)))
                                                    (let* ((_ns87106_
                                                            _hd8701387101_)
                                                           (_rest87108_
                                                            _tl8701487103_))
                                                      (if '#t
                                                          (let ((_ns87113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns87106_)
                             (symbol->string (gx#stx-e _ns87106_))
                             (if (or (gx#stx-string? _ns87106_)
                                     (gx#stx-false? _ns87106_))
                                 (gx#stx-e _ns87106_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx86967_
                                  _ns87106_)))))
                    (_lp87001_ _rest87108_ _ns87113_ _r87005_))
                  (_E8700887086_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8700887086_))
                                            (_E8700887086_))))
                                    (_E8700887086_)))))
                        (_E8700787115_))))))
          (let* ((_e8697086977_ _stx86967_)
                 (_E8697286981_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8697086977_)))
                 (_E8697186995_
                  (lambda ()
                    (if (gx#stx-pair? _e8697086977_)
                        (let ((_e8697386985_ (gx#syntax-e _e8697086977_)))
                          (let ((_hd8697486988_ (##car _e8697386985_))
                                (_tl8697586990_ (##cdr _e8697386985_)))
                            (let ((_body86993_ _tl8697586990_))
                              (if (gx#stx-list? _body86993_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate86969_ _body86993_))
                                  (_E8697286981_)))))
                        (_E8697286981_)))))
            (_E8697186995_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx86913_)
        (let* ((_e8691486927_ _stx86913_)
               (_E8691686931_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8691486927_)))
               (_E8691586963_
                (lambda ()
                  (if (gx#stx-pair? _e8691486927_)
                      (let ((_e8691786935_ (gx#syntax-e _e8691486927_)))
                        (let ((_hd8691886938_ (##car _e8691786935_))
                              (_tl8691986940_ (##cdr _e8691786935_)))
                          (if (gx#stx-pair? _tl8691986940_)
                              (let ((_e8692086943_
                                     (gx#syntax-e _tl8691986940_)))
                                (let ((_hd8692186946_ (##car _e8692086943_))
                                      (_tl8692286948_ (##cdr _e8692086943_)))
                                  (let ((_hd86951_ _hd8692186946_))
                                    (if (gx#stx-pair? _tl8692286948_)
                                        (let ((_e8692386953_
                                               (gx#syntax-e _tl8692286948_)))
                                          (let ((_hd8692486956_
                                                 (##car _e8692386953_))
                                                (_tl8692586958_
                                                 (##cdr _e8692386953_)))
                                            (let ((_expr86961_ _hd8692486956_))
                                              (if (gx#stx-null? _tl8692586958_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd86951_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd86951_)
                          (cons _expr86961_ '())))
              (_E8691686931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8691686931_)))))
                                        (_E8691686931_)))))
                              (_E8691686931_))))
                      (_E8691686931_)))))
          (_E8691586963_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx86859_)
        (let* ((_e8686086873_ _stx86859_)
               (_E8686286877_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8686086873_)))
               (_E8686186909_
                (lambda ()
                  (if (gx#stx-pair? _e8686086873_)
                      (let ((_e8686386881_ (gx#syntax-e _e8686086873_)))
                        (let ((_hd8686486884_ (##car _e8686386881_))
                              (_tl8686586886_ (##cdr _e8686386881_)))
                          (if (gx#stx-pair? _tl8686586886_)
                              (let ((_e8686686889_
                                     (gx#syntax-e _tl8686586886_)))
                                (let ((_hd8686786892_ (##car _e8686686889_))
                                      (_tl8686886894_ (##cdr _e8686686889_)))
                                  (let ((_hd86897_ _hd8686786892_))
                                    (if (gx#stx-pair? _tl8686886894_)
                                        (let ((_e8686986899_
                                               (gx#syntax-e _tl8686886894_)))
                                          (let ((_hd8687086902_
                                                 (##car _e8686986899_))
                                                (_tl8687186904_
                                                 (##cdr _e8686986899_)))
                                            (let ((_expr86907_ _hd8687086902_))
                                              (if (gx#stx-null? _tl8687186904_)
                                                  (if (gx#identifier?
                                                       _hd86897_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd86897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr86907_ '())))
              (_E8686286877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8686286877_)))))
                                        (_E8686286877_)))))
                              (_E8686286877_))))
                      (_E8686286877_)))))
          (_E8686186909_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx86805_)
        (let* ((_e8680686819_ _stx86805_)
               (_E8680886823_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8680686819_)))
               (_E8680786855_
                (lambda ()
                  (if (gx#stx-pair? _e8680686819_)
                      (let ((_e8680986827_ (gx#syntax-e _e8680686819_)))
                        (let ((_hd8681086830_ (##car _e8680986827_))
                              (_tl8681186832_ (##cdr _e8680986827_)))
                          (if (gx#stx-pair? _tl8681186832_)
                              (let ((_e8681286835_
                                     (gx#syntax-e _tl8681186832_)))
                                (let ((_hd8681386838_ (##car _e8681286835_))
                                      (_tl8681486840_ (##cdr _e8681286835_)))
                                  (let ((_id86843_ _hd8681386838_))
                                    (if (gx#stx-pair? _tl8681486840_)
                                        (let ((_e8681586845_
                                               (gx#syntax-e _tl8681486840_)))
                                          (let ((_hd8681686848_
                                                 (##car _e8681586845_))
                                                (_tl8681786850_
                                                 (##cdr _e8681586845_)))
                                            (let ((_alias-id86853_
                                                   _hd8681686848_))
                                              (if (gx#stx-null? _tl8681786850_)
                                                  (if (and (gx#identifier?
                                                            _id86843_)
                                                           (gx#identifier?
                                                            _alias-id86853_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id86843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id86853_ '())))
              (_E8680886823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8680886823_)))))
                                        (_E8680886823_)))))
                              (_E8680886823_))))
                      (_E8680886823_)))))
          (_E8680786855_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx86762_)
        (let* ((_e8676386773_ _stx86762_)
               (_E8676586777_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8676386773_)))
               (_E8676486801_
                (lambda ()
                  (if (gx#stx-pair? _e8676386773_)
                      (let ((_e8676686781_ (gx#syntax-e _e8676386773_)))
                        (let ((_hd8676786784_ (##car _e8676686781_))
                              (_tl8676886786_ (##cdr _e8676686781_)))
                          (if (gx#stx-pair? _tl8676886786_)
                              (let ((_e8676986789_
                                     (gx#syntax-e _tl8676886786_)))
                                (let ((_hd8677086792_ (##car _e8676986789_))
                                      (_tl8677186794_ (##cdr _e8676986789_)))
                                  (let* ((_hd86797_ _hd8677086792_)
                                         (_body86799_ _tl8677186794_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd86797_)
                                             (gx#stx-list? _body86799_)
                                             (not (gx#stx-null? _body86799_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd86797_)
                                         _body86799_)
                                        (_E8676586777_)))))
                              (_E8676586777_))))
                      (_E8676586777_)))))
          (_E8676486801_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx86698_)
        (letrec ((_generate86700_
                  (lambda (_clause86730_)
                    (let* ((_e8673186738_ _clause86730_)
                           (_E8673386742_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx86698_
                               _clause86730_)))
                           (_E8673286758_
                            (lambda ()
                              (if (gx#stx-pair? _e8673186738_)
                                  (let ((_e8673486746_
                                         (gx#syntax-e _e8673186738_)))
                                    (let ((_hd8673586749_
                                           (##car _e8673486746_))
                                          (_tl8673686751_
                                           (##cdr _e8673486746_)))
                                      (let* ((_hd86754_ _hd8673586749_)
                                             (_body86756_ _tl8673686751_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd86754_)
                                                 (gx#stx-list? _body86756_)
                                                 (not (gx#stx-null?
                                                       _body86756_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd86754_)
                                                   _body86756_)
                                             (gx#stx-source _clause86730_))
                                            (_E8673386742_)))))
                                  (_E8673386742_)))))
                      (_E8673286758_)))))
          (let* ((_e8670186708_ _stx86698_)
                 (_E8670386712_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8670186708_)))
                 (_E8670286726_
                  (lambda ()
                    (if (gx#stx-pair? _e8670186708_)
                        (let ((_e8670486716_ (gx#syntax-e _e8670186708_)))
                          (let ((_hd8670586719_ (##car _e8670486716_))
                                (_tl8670686721_ (##cdr _e8670486716_)))
                            (let ((_clauses86724_ _tl8670686721_))
                              (if (gx#stx-list? _clauses86724_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate86700_
                                    _clauses86724_))
                                  (_E8670386712_)))))
                        (_E8670386712_)))))
            (_E8670286726_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx86599_ _form86600_)
        (letrec ((_generate86602_
                  (lambda (_bind86645_)
                    (let* ((_e8664686656_ _bind86645_)
                           (_E8664886660_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx86599_
                               _bind86645_)))
                           (_E8664786684_
                            (lambda ()
                              (if (gx#stx-pair? _e8664686656_)
                                  (let ((_e8664986664_
                                         (gx#syntax-e _e8664686656_)))
                                    (let ((_hd8665086667_
                                           (##car _e8664986664_))
                                          (_tl8665186669_
                                           (##cdr _e8664986664_)))
                                      (let ((_ids86672_ _hd8665086667_))
                                        (if (gx#stx-pair? _tl8665186669_)
                                            (let ((_e8665286674_
                                                   (gx#syntax-e
                                                    _tl8665186669_)))
                                              (let ((_hd8665386677_
                                                     (##car _e8665286674_))
                                                    (_tl8665486679_
                                                     (##cdr _e8665286674_)))
                                                (let ((_expr86682_
                                                       _hd8665386677_))
                                                  (if (gx#stx-null?
                                                       _tl8665486679_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids86672_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids86672_)
                        (cons _expr86682_ '()))
                  (_E8664886660_))
              (_E8664886660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8664886660_)))))
                                  (_E8664886660_)))))
                      (_E8664786684_)))))
          (let* ((_e8660386613_ _stx86599_)
                 (_E8660586617_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8660386613_)))
                 (_E8660486641_
                  (lambda ()
                    (if (gx#stx-pair? _e8660386613_)
                        (let ((_e8660686621_ (gx#syntax-e _e8660386613_)))
                          (let ((_hd8660786624_ (##car _e8660686621_))
                                (_tl8660886626_ (##cdr _e8660686621_)))
                            (if (gx#stx-pair? _tl8660886626_)
                                (let ((_e8660986629_
                                       (gx#syntax-e _tl8660886626_)))
                                  (let ((_hd8661086632_ (##car _e8660986629_))
                                        (_tl8661186634_ (##cdr _e8660986629_)))
                                    (let* ((_hd86637_ _hd8661086632_)
                                           (_body86639_ _tl8661186634_))
                                      (if (and (gx#stx-list? _hd86637_)
                                               (gx#stx-list? _body86639_)
                                               (not (gx#stx-null?
                                                     _body86639_)))
                                          (gx#core-cons*
                                           _form86600_
                                           (gx#stx-map1
                                            _generate86602_
                                            _hd86637_)
                                           _body86639_)
                                          (_E8660586617_)))))
                                (_E8660586617_))))
                        (_E8660586617_)))))
            (_E8660486641_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx86691_)
        (let ((_form86693_ '%#let-values))
          (gx#macro-expand-let-values__% _stx86691_ _form86693_))))
    (define gx#macro-expand-let-values
      (lambda _g89076_
        (let ((_g89075_ (##length _g89076_)))
          (cond ((##fx= _g89075_ 1)
                 (apply (lambda (_stx86691_)
                          (gx#macro-expand-let-values__0 _stx86691_))
                        _g89076_))
                ((##fx= _g89075_ 2)
                 (apply (lambda (_stx86695_ _form86696_)
                          (gx#macro-expand-let-values__%
                           _stx86695_
                           _form86696_))
                        _g89076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89076_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx86596_)
        (gx#macro-expand-let-values__% _stx86596_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx86594_)
        (gx#macro-expand-let-values__% _stx86594_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx86485_)
        (let* ((_e8648686512_ _stx86485_)
               (_E8649886516_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8648686512_)))
               (_E8648886558_
                (lambda ()
                  (if (gx#stx-pair? _e8648686512_)
                      (let ((_e8649986520_ (gx#syntax-e _e8648686512_)))
                        (let ((_hd8650086523_ (##car _e8649986520_))
                              (_tl8650186525_ (##cdr _e8649986520_)))
                          (if (gx#stx-pair? _tl8650186525_)
                              (let ((_e8650286528_
                                     (gx#syntax-e _tl8650186525_)))
                                (let ((_hd8650386531_ (##car _e8650286528_))
                                      (_tl8650486533_ (##cdr _e8650286528_)))
                                  (let ((_test86536_ _hd8650386531_))
                                    (if (gx#stx-pair? _tl8650486533_)
                                        (let ((_e8650586538_
                                               (gx#syntax-e _tl8650486533_)))
                                          (let ((_hd8650686541_
                                                 (##car _e8650586538_))
                                                (_tl8650786543_
                                                 (##cdr _e8650586538_)))
                                            (let ((_K86546_ _hd8650686541_))
                                              (if (gx#stx-pair? _tl8650786543_)
                                                  (let ((_e8650886548_
                                                         (gx#syntax-e
                                                          _tl8650786543_)))
                                                    (let ((_hd8650986551_
                                                           (##car _e8650886548_))
                                                          (_tl8651086553_
                                                           (##cdr _e8650886548_)))
                                                      (let ((_E86556_
                                                             _hd8650986551_))
                                                        (if (gx#stx-null?
                                                             _tl8651086553_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test86536_
                         _K86546_
                         _E86556_)
                        (_E8649886516_))
                    (_E8649886516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8649886516_)))))
                                        (_E8649886516_)))))
                              (_E8649886516_))))
                      (_E8649886516_))))
               (_E8648786590_
                (lambda ()
                  (if (gx#stx-pair? _e8648686512_)
                      (let ((_e8648986562_ (gx#syntax-e _e8648686512_)))
                        (let ((_hd8649086565_ (##car _e8648986562_))
                              (_tl8649186567_ (##cdr _e8648986562_)))
                          (if (gx#stx-pair? _tl8649186567_)
                              (let ((_e8649286570_
                                     (gx#syntax-e _tl8649186567_)))
                                (let ((_hd8649386573_ (##car _e8649286570_))
                                      (_tl8649486575_ (##cdr _e8649286570_)))
                                  (let ((_test86578_ _hd8649386573_))
                                    (if (gx#stx-pair? _tl8649486575_)
                                        (let ((_e8649586580_
                                               (gx#syntax-e _tl8649486575_)))
                                          (let ((_hd8649686583_
                                                 (##car _e8649586580_))
                                                (_tl8649786585_
                                                 (##cdr _e8649586580_)))
                                            (let ((_K86588_ _hd8649686583_))
                                              (if (gx#stx-null? _tl8649786585_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test86578_
                                                       _K86588_
                                                       '#!void)
                                                      (_E8648886558_))
                                                  (_E8648886558_)))))
                                        (_E8648886558_)))))
                              (_E8648886558_))))
                      (_E8648886558_)))))
          (_E8648786590_))))
    (define gx#free-identifier=?
      (lambda (_xid86473_ _yid86474_)
        (let ((_xe86476_ (gx#resolve-identifier__0 _xid86473_))
              (_ye86477_ (gx#resolve-identifier__0 _yid86474_)))
          (if (and _xe86476_ _ye86477_)
              (let ((_$e86479_ (eq? _xe86476_ _ye86477_)))
                (if _$e86479_
                    _$e86479_
                    (if (##structure-instance-of? _xe86476_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye86477_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe86476_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye86477_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe86476_ _ye86477_)
                  '#f
                  (gx#stx-eq? _xid86473_ _yid86474_))))))
    (define gx#bound-identifier=?
      (lambda (_xid86457_ _yid86458_)
        (letrec ((_context86460_
                  (lambda (_e86471_)
                    (if (##structure-direct-instance-of?
                         _e86471_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e86471_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks86461_
                  (lambda (_e86469_)
                    (if (symbol? _e86469_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e86469_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e86469_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e86469_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap86462_
                  (lambda (_e86467_)
                    (if (symbol? _e86467_)
                        _e86467_
                        (gx#syntax-local-unwrap _e86467_)))))
          (let ((_x86464_ (_unwrap86462_ _xid86457_))
                (_y86465_ (_unwrap86462_ _yid86458_)))
            (if (gx#stx-eq? _x86464_ _y86465_)
                (if (eq? (_context86460_ _x86464_) (_context86460_ _y86465_))
                    (equal? (_marks86461_ _x86464_) (_marks86461_ _y86465_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx86455_)
        (if (gx#identifier? _stx86455_)
            (gx#core-identifier=? _stx86455_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx86453_)
        (if (gx#identifier? _stx86453_)
            (gx#core-identifier=? _stx86453_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x86451_)
        (if (gx#identifier? _x86451_)
            (if (not (gx#underscore? _x86451_)) _x86451_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx86397_ _where86398_)
        (let _lp86400_ ((_rest86402_ (gx#syntax->list _stx86397_)))
          (let* ((_rest8640386411_ _rest86402_)
                 (_else8640586419_ (lambda () '#t))
                 (_K8640786429_
                  (lambda (_rest86422_ _hd86423_)
                    (if (not (gx#identifier? _hd86423_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where86398_
                         _hd86423_)
                        (if (find (lambda (_g8642486426_)
                                    (gx#bound-identifier=?
                                     _g8642486426_
                                     _hd86423_))
                                  _rest86422_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where86398_
                             _hd86423_)
                            (_lp86400_ _rest86422_))))))
            (if (##pair? _rest8640386411_)
                (let ((_hd8640886432_ (##car _rest8640386411_))
                      (_tl8640986434_ (##cdr _rest8640386411_)))
                  (let* ((_hd86437_ _hd8640886432_)
                         (_rest86439_ _tl8640986434_))
                    (_K8640786429_ _rest86439_ _hd86437_)))
                (_else8640586419_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx86444_)
        (let ((_where86446_ _stx86444_))
          (gx#check-duplicate-identifiers__% _stx86444_ _where86446_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89078_
        (let ((_g89077_ (##length _g89078_)))
          (cond ((##fx= _g89077_ 1)
                 (apply (lambda (_stx86444_)
                          (gx#check-duplicate-identifiers__0 _stx86444_))
                        _g89078_))
                ((##fx= _g89077_ 2)
                 (apply (lambda (_stx86448_ _where86449_)
                          (gx#check-duplicate-identifiers__%
                           _stx86448_
                           _where86449_))
                        _g89078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89078_))))))
    (define gx#core-bind-values?
      (lambda (_stx86389_)
        (gx#stx-andmap
         (lambda (_x86391_)
           (let ((_$e86393_ (gx#identifier? _x86391_)))
             (if _$e86393_ _$e86393_ (gx#stx-false? _x86391_))))
         _stx86389_)))
    (define gx#core-bind-values!__%
      (lambda (_stx86353_ _rebind?86354_ _phi86355_ _ctx86356_)
        (gx#stx-for-each1
         (lambda (_id86358_)
           (if (gx#identifier? _id86358_)
               (gx#core-bind-runtime!__%
                _id86358_
                _rebind?86354_
                _phi86355_
                _ctx86356_)
               '#!void))
         _stx86353_)))
    (define gx#core-bind-values!__0
      (lambda (_stx86363_)
        (let* ((_rebind?86365_ '#f)
               (_phi86367_ (gx#current-expander-phi))
               (_ctx86369_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86363_
           _rebind?86365_
           _phi86367_
           _ctx86369_))))
    (define gx#core-bind-values!__1
      (lambda (_stx86371_ _rebind?86372_)
        (let* ((_phi86374_ (gx#current-expander-phi))
               (_ctx86376_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86371_
           _rebind?86372_
           _phi86374_
           _ctx86376_))))
    (define gx#core-bind-values!__2
      (lambda (_stx86378_ _rebind?86379_ _phi86380_)
        (let ((_ctx86382_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx86378_
           _rebind?86379_
           _phi86380_
           _ctx86382_))))
    (define gx#core-bind-values!
      (lambda _g89080_
        (let ((_g89079_ (##length _g89080_)))
          (cond ((##fx= _g89079_ 1)
                 (apply (lambda (_stx86363_)
                          (gx#core-bind-values!__0 _stx86363_))
                        _g89080_))
                ((##fx= _g89079_ 2)
                 (apply (lambda (_stx86371_ _rebind?86372_)
                          (gx#core-bind-values!__1 _stx86371_ _rebind?86372_))
                        _g89080_))
                ((##fx= _g89079_ 3)
                 (apply (lambda (_stx86378_ _rebind?86379_ _phi86380_)
                          (gx#core-bind-values!__2
                           _stx86378_
                           _rebind?86379_
                           _phi86380_))
                        _g89080_))
                ((##fx= _g89079_ 4)
                 (apply (lambda (_stx86384_
                                 _rebind?86385_
                                 _phi86386_
                                 _ctx86387_)
                          (gx#core-bind-values!__%
                           _stx86384_
                           _rebind?86385_
                           _phi86386_
                           _ctx86387_))
                        _g89080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89080_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx86348_)
        (gx#stx-map1
         (lambda (_x86350_)
           (if (gx#identifier? _x86350_)
               (gx#core-quote-syntax__0 _x86350_)
               '#f))
         _stx86348_)))
    (define gx#core-runtime-ref?
      (lambda (_stx86341_)
        (if (gx#identifier? _stx86341_)
            (let* ((_bind86343_ (gx#resolve-identifier__0 _stx86341_))
                   (_$e86345_ (not _bind86343_)))
              (if _$e86345_
                  _$e86345_
                  (##structure-instance-of?
                   _bind86343_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id86333_ _form86334_)
        (let ((_bind86336_ (gx#resolve-identifier__0 _id86333_)))
          (if (##structure-instance-of? _bind86336_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id86333_)
              (if (not _bind86336_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id86333_)))
                      (gx#core-quote-syntax__0 _id86333_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form86334_
                       _id86333_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form86334_
                   _id86333_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id86292_ _rebind?86293_ _phi86294_ _ctx86295_)
        (let* ((_key86297_ (gx#core-identifier-key _id86292_))
               (_eid86299_
                (gx#make-binding-id__% _key86297_ '#f _phi86294_ _ctx86295_))
               (_bind86301_
                (if (##structure-instance-of? _ctx86295_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86299_
                     _key86297_
                     _phi86294_
                     _ctx86295_)
                    (if (##structure-instance-of?
                         _ctx86295_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86299_
                         _key86297_
                         _phi86294_)
                        (if (##structure-instance-of?
                             _ctx86295_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid86299_
                             _key86297_
                             _phi86294_)
                            (##structure
                             gx#runtime-binding::t
                             _eid86299_
                             _key86297_
                             _phi86294_))))))
          (gx#bind-identifier!__%
           _id86292_
           _bind86301_
           _rebind?86293_
           _phi86294_
           _ctx86295_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id86307_)
        (let* ((_rebind?86309_ '#f)
               (_phi86311_ (gx#current-expander-phi))
               (_ctx86313_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86307_
           _rebind?86309_
           _phi86311_
           _ctx86313_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id86315_ _rebind?86316_)
        (let* ((_phi86318_ (gx#current-expander-phi))
               (_ctx86320_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86315_
           _rebind?86316_
           _phi86318_
           _ctx86320_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id86322_ _rebind?86323_ _phi86324_)
        (let ((_ctx86326_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id86322_
           _rebind?86323_
           _phi86324_
           _ctx86326_))))
    (define gx#core-bind-runtime!
      (lambda _g89082_
        (let ((_g89081_ (##length _g89082_)))
          (cond ((##fx= _g89081_ 1)
                 (apply (lambda (_id86307_)
                          (gx#core-bind-runtime!__0 _id86307_))
                        _g89082_))
                ((##fx= _g89081_ 2)
                 (apply (lambda (_id86315_ _rebind?86316_)
                          (gx#core-bind-runtime!__1 _id86315_ _rebind?86316_))
                        _g89082_))
                ((##fx= _g89081_ 3)
                 (apply (lambda (_id86322_ _rebind?86323_ _phi86324_)
                          (gx#core-bind-runtime!__2
                           _id86322_
                           _rebind?86323_
                           _phi86324_))
                        _g89082_))
                ((##fx= _g89081_ 4)
                 (apply (lambda (_id86328_
                                 _rebind?86329_
                                 _phi86330_
                                 _ctx86331_)
                          (gx#core-bind-runtime!__%
                           _id86328_
                           _rebind?86329_
                           _phi86330_
                           _ctx86331_))
                        _g89082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g89082_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id86247_ _eid86248_ _rebind?86249_ _phi86250_ _ctx86251_)
        (let* ((_key86253_ (gx#core-identifier-key _id86247_))
               (_bind86255_
                (if (##structure-instance-of? _ctx86251_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid86248_
                     _key86253_
                     _phi86250_
                     _ctx86251_)
                    (if (##structure-instance-of?
                         _ctx86251_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid86248_
                         _key86253_
                         _phi86250_)
                        (##structure
                         gx#runtime-binding::t
                         _eid86248_
                         _key86253_
                         _phi86250_)))))
          (gx#bind-identifier!__%
           _id86247_
           _bind86255_
           _rebind?86249_
           _phi86250_
           _ctx86251_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id86261_ _eid86262_)
        (let* ((_rebind?86264_ '#f)
               (_phi86266_ (gx#current-expander-phi))
               (_ctx86268_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86261_
           _eid86262_
           _rebind?86264_
           _phi86266_
           _ctx86268_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id86270_ _eid86271_ _rebind?86272_)
        (let* ((_phi86274_ (gx#current-expander-phi))
               (_ctx86276_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86270_
           _eid86271_
           _rebind?86272_
           _phi86274_
           _ctx86276_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id86278_ _eid86279_ _rebind?86280_ _phi86281_)
        (let ((_ctx86283_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id86278_
           _eid86279_
           _rebind?86280_
           _phi86281_
           _ctx86283_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g89084_
        (let ((_g89083_ (##length _g89084_)))
          (cond ((##fx= _g89083_ 2)
                 (apply (lambda (_id86261_ _eid86262_)
                          (gx#core-bind-runtime-reference!__0
                           _id86261_
                           _eid86262_))
                        _g89084_))
                ((##fx= _g89083_ 3)
                 (apply (lambda (_id86270_ _eid86271_ _rebind?86272_)
                          (gx#core-bind-runtime-reference!__1
                           _id86270_
                           _eid86271_
                           _rebind?86272_))
                        _g89084_))
                ((##fx= _g89083_ 4)
                 (apply (lambda (_id86278_
                                 _eid86279_
                                 _rebind?86280_
                                 _phi86281_)
                          (gx#core-bind-runtime-reference!__2
                           _id86278_
                           _eid86279_
                           _rebind?86280_
                           _phi86281_))
                        _g89084_))
                ((##fx= _g89083_ 5)
                 (apply (lambda (_id86285_
                                 _eid86286_
                                 _rebind?86287_
                                 _phi86288_
                                 _ctx86289_)
                          (gx#core-bind-runtime-reference!__%
                           _id86285_
                           _eid86286_
                           _rebind?86287_
                           _phi86288_
                           _ctx86289_))
                        _g89084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g89084_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id86207_ _eid86208_ _rebind?86209_ _phi86210_ _ctx86211_)
        (gx#bind-identifier!__%
         _id86207_
         (##structure
          gx#extern-binding::t
          _eid86208_
          (gx#core-identifier-key _id86207_)
          _phi86210_)
         _rebind?86209_
         _phi86210_
         _ctx86211_)))
    (define gx#core-bind-extern!__0
      (lambda (_id86216_ _eid86217_)
        (let* ((_rebind?86219_ '#f)
               (_phi86221_ (gx#current-expander-phi))
               (_ctx86223_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86216_
           _eid86217_
           _rebind?86219_
           _phi86221_
           _ctx86223_))))
    (define gx#core-bind-extern!__1
      (lambda (_id86225_ _eid86226_ _rebind?86227_)
        (let* ((_phi86229_ (gx#current-expander-phi))
               (_ctx86231_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86225_
           _eid86226_
           _rebind?86227_
           _phi86229_
           _ctx86231_))))
    (define gx#core-bind-extern!__2
      (lambda (_id86233_ _eid86234_ _rebind?86235_ _phi86236_)
        (let ((_ctx86238_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id86233_
           _eid86234_
           _rebind?86235_
           _phi86236_
           _ctx86238_))))
    (define gx#core-bind-extern!
      (lambda _g89086_
        (let ((_g89085_ (##length _g89086_)))
          (cond ((##fx= _g89085_ 2)
                 (apply (lambda (_id86216_ _eid86217_)
                          (gx#core-bind-extern!__0 _id86216_ _eid86217_))
                        _g89086_))
                ((##fx= _g89085_ 3)
                 (apply (lambda (_id86225_ _eid86226_ _rebind?86227_)
                          (gx#core-bind-extern!__1
                           _id86225_
                           _eid86226_
                           _rebind?86227_))
                        _g89086_))
                ((##fx= _g89085_ 4)
                 (apply (lambda (_id86233_
                                 _eid86234_
                                 _rebind?86235_
                                 _phi86236_)
                          (gx#core-bind-extern!__2
                           _id86233_
                           _eid86234_
                           _rebind?86235_
                           _phi86236_))
                        _g89086_))
                ((##fx= _g89085_ 5)
                 (apply (lambda (_id86240_
                                 _eid86241_
                                 _rebind?86242_
                                 _phi86243_
                                 _ctx86244_)
                          (gx#core-bind-extern!__%
                           _id86240_
                           _eid86241_
                           _rebind?86242_
                           _phi86243_
                           _ctx86244_))
                        _g89086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g89086_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id86161_ _e86162_ _rebind?86163_ _phi86164_ _ctx86165_)
        (gx#bind-identifier!__%
         _id86161_
         (let ((_key86170_ (gx#core-identifier-key _id86161_))
               (_e86171_
                (if (or (##structure-instance-of? _e86162_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e86162_
                         'gx#expander-context::t))
                    _e86162_
                    (##structure
                     gx#user-expander::t
                     _e86162_
                     _ctx86165_
                     _phi86164_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key86170_ '#t _phi86164_ _ctx86165_)
            _key86170_
            _phi86164_
            _e86171_))
         _rebind?86163_
         _phi86164_
         _ctx86165_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id86176_ _e86177_)
        (let* ((_rebind?86179_ '#f)
               (_phi86181_ (gx#current-expander-phi))
               (_ctx86183_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86176_
           _e86177_
           _rebind?86179_
           _phi86181_
           _ctx86183_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id86185_ _e86186_ _rebind?86187_)
        (let* ((_phi86189_ (gx#current-expander-phi))
               (_ctx86191_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86185_
           _e86186_
           _rebind?86187_
           _phi86189_
           _ctx86191_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id86193_ _e86194_ _rebind?86195_ _phi86196_)
        (let ((_ctx86198_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id86193_
           _e86194_
           _rebind?86195_
           _phi86196_
           _ctx86198_))))
    (define gx#core-bind-syntax!
      (lambda _g89088_
        (let ((_g89087_ (##length _g89088_)))
          (cond ((##fx= _g89087_ 2)
                 (apply (lambda (_id86176_ _e86177_)
                          (gx#core-bind-syntax!__0 _id86176_ _e86177_))
                        _g89088_))
                ((##fx= _g89087_ 3)
                 (apply (lambda (_id86185_ _e86186_ _rebind?86187_)
                          (gx#core-bind-syntax!__1
                           _id86185_
                           _e86186_
                           _rebind?86187_))
                        _g89088_))
                ((##fx= _g89087_ 4)
                 (apply (lambda (_id86193_ _e86194_ _rebind?86195_ _phi86196_)
                          (gx#core-bind-syntax!__2
                           _id86193_
                           _e86194_
                           _rebind?86195_
                           _phi86196_))
                        _g89088_))
                ((##fx= _g89087_ 5)
                 (apply (lambda (_id86200_
                                 _e86201_
                                 _rebind?86202_
                                 _phi86203_
                                 _ctx86204_)
                          (gx#core-bind-syntax!__%
                           _id86200_
                           _e86201_
                           _rebind?86202_
                           _phi86203_
                           _ctx86204_))
                        _g89088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g89088_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id86144_ _e86145_ _rebind?86146_)
        (gx#core-bind-syntax!__%
         _id86144_
         _e86145_
         _rebind?86146_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id86151_ _e86152_)
        (let ((_rebind?86154_ '#f))
          (gx#core-bind-root-syntax!__% _id86151_ _e86152_ _rebind?86154_))))
    (define gx#core-bind-root-syntax!
      (lambda _g89090_
        (let ((_g89089_ (##length _g89090_)))
          (cond ((##fx= _g89089_ 2)
                 (apply (lambda (_id86151_ _e86152_)
                          (gx#core-bind-root-syntax!__0 _id86151_ _e86152_))
                        _g89090_))
                ((##fx= _g89089_ 3)
                 (apply (lambda (_id86156_ _e86157_ _rebind?86158_)
                          (gx#core-bind-root-syntax!__%
                           _id86156_
                           _e86157_
                           _rebind?86158_))
                        _g89090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g89090_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id86102_ _alias-id86103_ _rebind?86104_ _phi86105_ _ctx86106_)
        (gx#bind-identifier!__%
         _id86102_
         (let ((_key86108_ (gx#core-identifier-key _id86102_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key86108_ '#t _phi86105_ _ctx86106_)
            _key86108_
            _phi86105_
            _alias-id86103_))
         _rebind?86104_
         _phi86105_
         _ctx86106_)))
    (define gx#core-bind-alias!__0
      (lambda (_id86113_ _alias-id86114_)
        (let* ((_rebind?86116_ '#f)
               (_phi86118_ (gx#current-expander-phi))
               (_ctx86120_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86113_
           _alias-id86114_
           _rebind?86116_
           _phi86118_
           _ctx86120_))))
    (define gx#core-bind-alias!__1
      (lambda (_id86122_ _alias-id86123_ _rebind?86124_)
        (let* ((_phi86126_ (gx#current-expander-phi))
               (_ctx86128_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86122_
           _alias-id86123_
           _rebind?86124_
           _phi86126_
           _ctx86128_))))
    (define gx#core-bind-alias!__2
      (lambda (_id86130_ _alias-id86131_ _rebind?86132_ _phi86133_)
        (let ((_ctx86135_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id86130_
           _alias-id86131_
           _rebind?86132_
           _phi86133_
           _ctx86135_))))
    (define gx#core-bind-alias!
      (lambda _g89092_
        (let ((_g89091_ (##length _g89092_)))
          (cond ((##fx= _g89091_ 2)
                 (apply (lambda (_id86113_ _alias-id86114_)
                          (gx#core-bind-alias!__0 _id86113_ _alias-id86114_))
                        _g89092_))
                ((##fx= _g89091_ 3)
                 (apply (lambda (_id86122_ _alias-id86123_ _rebind?86124_)
                          (gx#core-bind-alias!__1
                           _id86122_
                           _alias-id86123_
                           _rebind?86124_))
                        _g89092_))
                ((##fx= _g89091_ 4)
                 (apply (lambda (_id86130_
                                 _alias-id86131_
                                 _rebind?86132_
                                 _phi86133_)
                          (gx#core-bind-alias!__2
                           _id86130_
                           _alias-id86131_
                           _rebind?86132_
                           _phi86133_))
                        _g89092_))
                ((##fx= _g89091_ 5)
                 (apply (lambda (_id86137_
                                 _alias-id86138_
                                 _rebind?86139_
                                 _phi86140_
                                 _ctx86141_)
                          (gx#core-bind-alias!__%
                           _id86137_
                           _alias-id86138_
                           _rebind?86139_
                           _phi86140_
                           _ctx86141_))
                        _g89092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g89092_))))))
    (define gx#make-binding-id__%
      (lambda (_key86059_ _syntax?86060_ _phi86061_ _ctx86062_)
        (if (uninterned-symbol? _key86059_)
            (gensym 'L)
            (if (pair? _key86059_)
                (gensym (car _key86059_))
                (if (##structure-instance-of? _ctx86062_ 'gx#top-context::t)
                    (let ((_ns86064_
                           (gx#core-context-namespace__% _ctx86062_)))
                      (if (and (fxzero? _phi86061_) (not _syntax?86060_))
                          (if _ns86064_
                              (make-symbol__1 _ns86064_ '"#" _key86059_)
                              _key86059_)
                          (if _syntax?86060_
                              (make-symbol__1
                               (let ((_$e86066_ _ns86064_))
                                 (if _$e86066_ _$e86066_ '""))
                               '"[:"
                               (number->string _phi86061_)
                               '":]#"
                               _key86059_)
                              (make-symbol__1
                               (let ((_$e86069_ _ns86064_))
                                 (if _$e86069_ _$e86069_ '""))
                               '"["
                               (number->string _phi86061_)
                               '"]#"
                               _key86059_))))
                    (gensym _key86059_))))))
    (define gx#make-binding-id__0
      (lambda (_key86075_)
        (let* ((_syntax?86077_ '#f)
               (_phi86079_ (gx#current-expander-phi))
               (_ctx86081_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86075_
           _syntax?86077_
           _phi86079_
           _ctx86081_))))
    (define gx#make-binding-id__1
      (lambda (_key86083_ _syntax?86084_)
        (let* ((_phi86086_ (gx#current-expander-phi))
               (_ctx86088_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86083_
           _syntax?86084_
           _phi86086_
           _ctx86088_))))
    (define gx#make-binding-id__2
      (lambda (_key86090_ _syntax?86091_ _phi86092_)
        (let ((_ctx86094_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86090_
           _syntax?86091_
           _phi86092_
           _ctx86094_))))
    (define gx#make-binding-id
      (lambda _g89094_
        (let ((_g89093_ (##length _g89094_)))
          (cond ((##fx= _g89093_ 1)
                 (apply (lambda (_key86075_)
                          (gx#make-binding-id__0 _key86075_))
                        _g89094_))
                ((##fx= _g89093_ 2)
                 (apply (lambda (_key86083_ _syntax?86084_)
                          (gx#make-binding-id__1 _key86083_ _syntax?86084_))
                        _g89094_))
                ((##fx= _g89093_ 3)
                 (apply (lambda (_key86090_ _syntax?86091_ _phi86092_)
                          (gx#make-binding-id__2
                           _key86090_
                           _syntax?86091_
                           _phi86092_))
                        _g89094_))
                ((##fx= _g89093_ 4)
                 (apply (lambda (_key86096_
                                 _syntax?86097_
                                 _phi86098_
                                 _ctx86099_)
                          (gx#make-binding-id__%
                           _key86096_
                           _syntax?86097_
                           _phi86098_
                           _ctx86099_))
                        _g89094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g89094_))))))))
