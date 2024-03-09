(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1709994213)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx89959_)
        (letrec ((_expand-special89961_
                  (lambda (_hd89963_ _K89964_ _rest89965_ _r89966_)
                    (_K89964_
                     _rest89965_
                     (cons (gx#core-expand-top _hd89963_) _r89966_)))))
          (gx#core-expand-block__0 _stx89959_ _expand-special89961_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx89712_)
        (letrec ((_expand-special89714_
                  (lambda (_hd89834_ _K89835_ _rest89836_ _r89837_)
                    (let* ((_K89841_
                            (lambda (_e89839_)
                              (_K89835_ _rest89836_ (cons _e89839_ _r89837_))))
                           (_e8984289871_ _hd89834_)
                           (_E8986689875_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8984289871_)))
                           (_E8986289887_
                            (lambda ()
                              (if (gx#stx-pair? _e8984289871_)
                                  (let ((_e8986789879_
                                         (gx#syntax-e _e8984289871_)))
                                    (let ((_hd8986889882_
                                           (##car _e8986789879_))
                                          (_tl8986989884_
                                           (##cdr _e8986789879_)))
                                      (if (and (gx#identifier? _hd8986889882_)
                                               (gx#core-identifier=?
                                                _hd8986889882_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K89841_
                                               (gx#core-expand-define-runtime%
                                                _hd89834_))
                                              (_E8986689875_))
                                          (_E8986689875_))))
                                  (_E8986689875_))))
                           (_E8985889899_
                            (lambda ()
                              (if (gx#stx-pair? _e8984289871_)
                                  (let ((_e8986389891_
                                         (gx#syntax-e _e8984289871_)))
                                    (let ((_hd8986489894_
                                           (##car _e8986389891_))
                                          (_tl8986589896_
                                           (##cdr _e8986389891_)))
                                      (if (and (gx#identifier? _hd8986489894_)
                                               (gx#core-identifier=?
                                                _hd8986489894_
                                                '%#define-alias))
                                          (if '#t
                                              (_K89841_
                                               (gx#core-expand-define-alias%
                                                _hd89834_))
                                              (_E8986289887_))
                                          (_E8986289887_))))
                                  (_E8986289887_))))
                           (_E8984889911_
                            (lambda ()
                              (if (gx#stx-pair? _e8984289871_)
                                  (let ((_e8985989903_
                                         (gx#syntax-e _e8984289871_)))
                                    (let ((_hd8986089906_
                                           (##car _e8985989903_))
                                          (_tl8986189908_
                                           (##cdr _e8985989903_)))
                                      (if (and (gx#identifier? _hd8986089906_)
                                               (gx#core-identifier=?
                                                _hd8986089906_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K89841_
                                               (gx#core-expand-define-syntax%
                                                _hd89834_))
                                              (_E8985889899_))
                                          (_E8985889899_))))
                                  (_E8985889899_))))
                           (_E8984489943_
                            (lambda ()
                              (if (gx#stx-pair? _e8984289871_)
                                  (let ((_e8984989915_
                                         (gx#syntax-e _e8984289871_)))
                                    (let ((_hd8985089918_
                                           (##car _e8984989915_))
                                          (_tl8985189920_
                                           (##cdr _e8984989915_)))
                                      (if (and (gx#identifier? _hd8985089918_)
                                               (gx#core-identifier=?
                                                _hd8985089918_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8985189920_)
                                              (let ((_e8985289923_
                                                     (gx#syntax-e
                                                      _tl8985189920_)))
                                                (let ((_hd8985389926_
                                                       (##car _e8985289923_))
                                                      (_tl8985489928_
                                                       (##cdr _e8985289923_)))
                                                  (let ((_hd-bind89931_
                                                         _hd8985389926_))
                                                    (if (gx#stx-pair?
                                                         _tl8985489928_)
                                                        (let ((_e8985589933_
                                                               (gx#syntax-e
                                                                _tl8985489928_)))
                                                          (let ((_hd8985689936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8985589933_))
                        (_tl8985789938_ (##cdr _e8985589933_)))
                    (let ((_expr89941_ _hd8985689936_))
                      (if (gx#stx-null? _tl8985789938_)
                          (if (gx#core-bind-values? _hd-bind89931_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89931_)
                                (_K89841_ _hd89834_))
                              (_E8984889911_))
                          (_E8984889911_)))))
                (_E8984889911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8984889911_))
                                          (_E8984889911_))))
                                  (_E8984889911_))))
                           (_E8984389955_
                            (lambda ()
                              (if (gx#stx-pair? _e8984289871_)
                                  (let ((_e8984589947_
                                         (gx#syntax-e _e8984289871_)))
                                    (let ((_hd8984689950_
                                           (##car _e8984589947_))
                                          (_tl8984789952_
                                           (##cdr _e8984589947_)))
                                      (if (and (gx#identifier? _hd8984689950_)
                                               (gx#core-identifier=?
                                                _hd8984689950_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K89841_
                                               (gx#core-expand-begin-syntax%
                                                _hd89834_))
                                              (_E8984489943_))
                                          (_E8984489943_))))
                                  (_E8984489943_)))))
                      (_E8984389955_))))
                 (_eval-body89715_
                  (lambda (_rbody89723_)
                    (let _lp89725_ ((_rest89727_ _rbody89723_)
                                    (_body89728_ '())
                                    (_ebody89729_ '()))
                      (let* ((_rest8973089738_ _rest89727_)
                             (_else8973289746_
                              (lambda ()
                                (values _body89728_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody89729_)
                                          (gx#stx-source _stx89712_))))))
                             (_K8973489822_
                              (lambda (_rest89749_ _hd89750_)
                                (let* ((_e8975189768_ _hd89750_)
                                       (_E8976389772_
                                        (lambda ()
                                          (_lp89725_
                                           _rest89749_
                                           (cons _hd89750_ _body89728_)
                                           (cons _hd89750_ _ebody89729_))))
                                       (_E8975389784_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8975189768_)
                                              (let ((_e8976489776_
                                                     (gx#syntax-e
                                                      _e8975189768_)))
                                                (let ((_hd8976589779_
                                                       (##car _e8976489776_))
                                                      (_tl8976689781_
                                                       (##cdr _e8976489776_)))
                                                  (if (and (gx#identifier?
                                                            _hd8976589779_)
                                                           (gx#core-identifier=?
                                                            _hd8976589779_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp89725_
                                                           _rest89749_
                                                           (cons _hd89750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body89728_)
                   _ebody89729_)
                  (_E8976389772_))
              (_E8976389772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8976389772_))))
                                       (_E8975289818_
                                        (lambda ()
                                          (if (gx#stx-pair? _e8975189768_)
                                              (let ((_e8975489788_
                                                     (gx#syntax-e
                                                      _e8975189768_)))
                                                (let ((_hd8975589791_
                                                       (##car _e8975489788_))
                                                      (_tl8975689793_
                                                       (##cdr _e8975489788_)))
                                                  (if (and (gx#identifier?
                                                            _hd8975589791_)
                                                           (gx#core-identifier=?
                                                            _hd8975589791_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl8975689793_)
                                                          (let ((_e8975789796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl8975689793_)))
                    (let ((_hd8975889799_ (##car _e8975789796_))
                          (_tl8975989801_ (##cdr _e8975789796_)))
                      (let ((_hd-bind89804_ _hd8975889799_))
                        (if (gx#stx-pair? _tl8975989801_)
                            (let ((_e8976089806_ (gx#syntax-e _tl8975989801_)))
                              (let ((_hd8976189809_ (##car _e8976089806_))
                                    (_tl8976289811_ (##cdr _e8976089806_)))
                                (let ((_expr89814_ _hd8976189809_))
                                  (if (gx#stx-null? _tl8976289811_)
                                      (if '#t
                                          (let ((_ehd89816_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind89804_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr89814_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd89750_))))
                                            (_lp89725_
                                             _rest89749_
                                             (cons _ehd89816_ _body89728_)
                                             (cons _ehd89816_ _ebody89729_)))
                                          (_E8975389784_))
                                      (_E8975389784_)))))
                            (_E8975389784_)))))
                  (_E8975389784_))
              (_E8975389784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8975389784_)))))
                                  (_E8975289818_)))))
                        (if (##pair? _rest8973089738_)
                            (let ((_hd8973589825_ (##car _rest8973089738_))
                                  (_tl8973689827_ (##cdr _rest8973089738_)))
                              (let* ((_hd89830_ _hd8973589825_)
                                     (_rest89832_ _tl8973689827_))
                                (_K8973489822_ _rest89832_ _hd89830_)))
                            (_else8973289746_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody89718_
                     (gx#core-expand-block__1
                      _stx89712_
                      _expand-special89714_
                      '#f))
                    (_g89982_ (_eval-body89715_ _rbody89718_)))
               (begin
                 (let ((_g89983_
                        (if (##values? _g89982_)
                            (##vector-length _g89982_)
                            1)))
                   (if (not (##fx= _g89983_ 2))
                       (error "Context expects 2 values" _g89983_)))
                 (let ((_expanded-body89720_ (##vector-ref _g89982_ 0))
                       (_value89721_ (##vector-ref _g89982_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body89720_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value89721_ '())))
                    (gx#stx-source _stx89712_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx89682_)
        (let* ((_e8968389690_ _stx89682_)
               (_E8968589694_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8968389690_)))
               (_E8968489708_
                (lambda ()
                  (if (gx#stx-pair? _e8968389690_)
                      (let ((_e8968689698_ (gx#syntax-e _e8968389690_)))
                        (let ((_hd8968789701_ (##car _e8968689698_))
                              (_tl8968889703_ (##cdr _e8968689698_)))
                          (let ((_body89706_ _tl8968889703_))
                            (if (gx#stx-list? _body89706_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body89706_)
                                 (gx#stx-source _stx89682_))
                                (_E8968589694_)))))
                      (_E8968589694_)))))
          (_E8968489708_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx89680_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx89680_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx89626_)
        (let* ((_e8962789640_ _stx89626_)
               (_E8962989644_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8962789640_)))
               (_E8962889676_
                (lambda ()
                  (if (gx#stx-pair? _e8962789640_)
                      (let ((_e8963089648_ (gx#syntax-e _e8962789640_)))
                        (let ((_hd8963189651_ (##car _e8963089648_))
                              (_tl8963289653_ (##cdr _e8963089648_)))
                          (if (gx#stx-pair? _tl8963289653_)
                              (let ((_e8963389656_
                                     (gx#syntax-e _tl8963289653_)))
                                (let ((_hd8963489659_ (##car _e8963389656_))
                                      (_tl8963589661_ (##cdr _e8963389656_)))
                                  (let ((_ann89664_ _hd8963489659_))
                                    (if (gx#stx-pair? _tl8963589661_)
                                        (let ((_e8963689666_
                                               (gx#syntax-e _tl8963589661_)))
                                          (let ((_hd8963789669_
                                                 (##car _e8963689666_))
                                                (_tl8963889671_
                                                 (##cdr _e8963689666_)))
                                            (let ((_expr89674_ _hd8963789669_))
                                              (if (gx#stx-null? _tl8963889671_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann89664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr89674_) '())))
               (gx#stx-source _stx89626_))
              (_E8962989644_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8962989644_)))))
                                        (_E8962989644_)))))
                              (_E8962989644_))))
                      (_E8962989644_)))))
          (_E8962889676_))))
    (define gx#core-expand-local-block
      (lambda (_stx89350_ _body89351_)
        (letrec ((_expand-special89353_
                  (lambda (_hd89621_ _K89622_ _rest89623_ _r89624_)
                    (_K89622_
                     '()
                     (cons (_expand-internal89354_ _hd89621_ _rest89623_)
                           _r89624_))))
                 (_expand-internal89354_
                  (lambda (_hd89617_ _rest89618_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal89356_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd89617_ _rest89618_))
                          (gx#stx-source _stx89350_))
                         _expand-internal-special89355_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj89976
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj89976)
                       __obj89976))))
                 (_expand-internal-special89355_
                  (lambda (_hd89512_ _K89513_ _rest89514_ _r89515_)
                    (let* ((_e8951689541_ _hd89512_)
                           (_E8953689545_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e8951689541_)))
                           (_E8953289557_
                            (lambda ()
                              (if (gx#stx-pair? _e8951689541_)
                                  (let ((_e8953789549_
                                         (gx#syntax-e _e8951689541_)))
                                    (let ((_hd8953889552_
                                           (##car _e8953789549_))
                                          (_tl8953989554_
                                           (##cdr _e8953789549_)))
                                      (if (and (gx#identifier? _hd8953889552_)
                                               (gx#core-identifier=?
                                                _hd8953889552_
                                                '%#declare))
                                          (if '#t
                                              (_K89513_
                                               _rest89514_
                                               (cons (gx#core-expand-declare%
                                                      _hd89512_)
                                                     _r89515_))
                                              (_E8953689545_))
                                          (_E8953689545_))))
                                  (_E8953689545_))))
                           (_E8952889569_
                            (lambda ()
                              (if (gx#stx-pair? _e8951689541_)
                                  (let ((_e8953389561_
                                         (gx#syntax-e _e8951689541_)))
                                    (let ((_hd8953489564_
                                           (##car _e8953389561_))
                                          (_tl8953589566_
                                           (##cdr _e8953389561_)))
                                      (if (and (gx#identifier? _hd8953489564_)
                                               (gx#core-identifier=?
                                                _hd8953489564_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd89512_)
                                                (_K89513_
                                                 _rest89514_
                                                 _r89515_))
                                              (_E8953289557_))
                                          (_E8953289557_))))
                                  (_E8953289557_))))
                           (_E8951889581_
                            (lambda ()
                              (if (gx#stx-pair? _e8951689541_)
                                  (let ((_e8952989573_
                                         (gx#syntax-e _e8951689541_)))
                                    (let ((_hd8953089576_
                                           (##car _e8952989573_))
                                          (_tl8953189578_
                                           (##cdr _e8952989573_)))
                                      (if (and (gx#identifier? _hd8953089576_)
                                               (gx#core-identifier=?
                                                _hd8953089576_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd89512_)
                                                (_K89513_
                                                 _rest89514_
                                                 _r89515_))
                                              (_E8952889569_))
                                          (_E8952889569_))))
                                  (_E8952889569_))))
                           (_E8951789613_
                            (lambda ()
                              (if (gx#stx-pair? _e8951689541_)
                                  (let ((_e8951989585_
                                         (gx#syntax-e _e8951689541_)))
                                    (let ((_hd8952089588_
                                           (##car _e8951989585_))
                                          (_tl8952189590_
                                           (##cdr _e8951989585_)))
                                      (if (and (gx#identifier? _hd8952089588_)
                                               (gx#core-identifier=?
                                                _hd8952089588_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl8952189590_)
                                              (let ((_e8952289593_
                                                     (gx#syntax-e
                                                      _tl8952189590_)))
                                                (let ((_hd8952389596_
                                                       (##car _e8952289593_))
                                                      (_tl8952489598_
                                                       (##cdr _e8952289593_)))
                                                  (let ((_hd-bind89601_
                                                         _hd8952389596_))
                                                    (if (gx#stx-pair?
                                                         _tl8952489598_)
                                                        (let ((_e8952589603_
                                                               (gx#syntax-e
                                                                _tl8952489598_)))
                                                          (let ((_hd8952689606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8952589603_))
                        (_tl8952789608_ (##cdr _e8952589603_)))
                    (let ((_expr89611_ _hd8952689606_))
                      (if (gx#stx-null? _tl8952789608_)
                          (if (gx#core-bind-values? _hd-bind89601_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind89601_)
                                (_K89513_
                                 _rest89514_
                                 (cons _hd89512_ _r89515_)))
                              (_E8951889581_))
                          (_E8951889581_)))))
                (_E8951889581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E8951889581_))
                                          (_E8951889581_))))
                                  (_E8951889581_)))))
                      (_E8951789613_))))
                 (_wrap-internal89356_
                  (lambda (_rbody89358_)
                    (let _lp89360_ ((_rest89362_ _rbody89358_)
                                    (_decls89363_ '())
                                    (_bind89364_ '())
                                    (_body89365_ '()))
                      (let* ((_e8936689373_ _rest89362_)
                             (_E8936889422_
                              (lambda ()
                                (let* ((_body89417_
                                        (let* ((_body8937689386_ _body89365_)
                                               (_else8937989394_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body89365_)
                                                   (gx#stx-source
                                                    _stx89350_)))))
                                          (let ((_K8938489414_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx89350_)))
                                                (_K8938189400_
                                                 (lambda (_expr89398_)
                                                   _expr89398_)))
                                            (let ((_try-match8937889410_
                                                   (lambda ()
                                                     (if (##pair? _body8937689386_)
                                                         (let ((_tl8938389405_
                                                                (##cdr _body8937689386_))
                                                               (_hd8938289403_
                                                                (##car _body8937689386_)))
                                                           (if (##null? _tl8938389405_)
                                                               (let ((_expr89408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd8938289403_))
                         (_K8938189400_ _expr89408_))
                       (_else8937989394_)))
                 (_else8937989394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body8937689386_)
                                                  (_K8938489414_)
                                                  (_try-match8937889410_))))))
                                       (_body89419_
                                        (if (null? _bind89364_)
                                            _body89417_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind89364_
                                                         (cons _body89417_
                                                               '())))
                                             (gx#stx-source _stx89350_)))))
                                  (if (null? _decls89363_)
                                      _body89419_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls89363_
                                                   (cons _body89419_ '())))
                                       (gx#stx-source _stx89350_))))))
                             (_E8936789508_
                              (lambda ()
                                (if (gx#stx-pair? _e8936689373_)
                                    (let ((_e8936989426_
                                           (gx#syntax-e _e8936689373_)))
                                      (let ((_hd8937089429_
                                             (##car _e8936989426_))
                                            (_tl8937189431_
                                             (##cdr _e8936989426_)))
                                        (let* ((_hd89434_ _hd8937089429_)
                                               (_rest89436_ _tl8937189431_))
                                          (if '#t
                                              (let* ((_e8943789454_ _hd89434_)
                                                     (_E8944989458_
                                                      (lambda ()
                                                        (if (null? _bind89364_)
                                                            (_lp89360_
                                                             _rest89436_
                                                             _decls89363_
                                                             _bind89364_
                                                             (cons _hd89434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body89365_))
                    (_lp89360_
                     _rest89436_
                     _decls89363_
                     (cons (cons '#f (cons _hd89434_ '())) _bind89364_)
                     _body89365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8943989472_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8943789454_)
                                                            (let ((_e8945089462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8943789454_)))
                      (let ((_hd8945189465_ (##car _e8945089462_))
                            (_tl8945289467_ (##cdr _e8945089462_)))
                        (if (and (gx#identifier? _hd8945189465_)
                                 (gx#core-identifier=?
                                  _hd8945189465_
                                  '%#declare))
                            (let ((_xdecls89470_ _tl8945289467_))
                              (if '#t
                                  (_lp89360_
                                   _rest89436_
                                   (gx#stx-foldr
                                    cons
                                    _decls89363_
                                    _xdecls89470_)
                                   _bind89364_
                                   _body89365_)
                                  (_E8944989458_)))
                            (_E8944989458_))))
                    (_E8944989458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E8943889504_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e8943789454_)
                                                            (let ((_e8944089476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e8943789454_)))
                      (let ((_hd8944189479_ (##car _e8944089476_))
                            (_tl8944289481_ (##cdr _e8944089476_)))
                        (if (and (gx#identifier? _hd8944189479_)
                                 (gx#core-identifier=?
                                  _hd8944189479_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl8944289481_)
                                (let ((_e8944389484_
                                       (gx#syntax-e _tl8944289481_)))
                                  (let ((_hd8944489487_ (##car _e8944389484_))
                                        (_tl8944589489_ (##cdr _e8944389484_)))
                                    (let ((_hd-bind89492_ _hd8944489487_))
                                      (if (gx#stx-pair? _tl8944589489_)
                                          (let ((_e8944689494_
                                                 (gx#syntax-e _tl8944589489_)))
                                            (let ((_hd8944789497_
                                                   (##car _e8944689494_))
                                                  (_tl8944889499_
                                                   (##cdr _e8944689494_)))
                                              (let ((_expr89502_
                                                     _hd8944789497_))
                                                (if (gx#stx-null?
                                                     _tl8944889499_)
                                                    (if '#t
                                                        (_lp89360_
                                                         _rest89436_
                                                         _decls89363_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind89492_)
                             (cons (gx#core-expand-expression _expr89502_)
                                   '()))
                       _bind89364_)
                 _body89365_)
                (_E8943989472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8943989472_)))))
                                          (_E8943989472_)))))
                                (_E8943989472_))
                            (_E8943989472_))))
                    (_E8943989472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8943889504_))
                                              (_E8936889422_)))))
                                    (_E8936889422_)))))
                        (_E8936789508_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body89351_)
            (gx#stx-source _stx89350_))
           _expand-special89353_))))
    (define gx#core-expand-declare%
      (lambda (_stx89288_)
        (let* ((_e8928989296_ _stx89288_)
               (_E8929189300_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8928989296_)))
               (_E8929089346_
                (lambda ()
                  (if (gx#stx-pair? _e8928989296_)
                      (let ((_e8929289304_ (gx#syntax-e _e8928989296_)))
                        (let ((_hd8929389307_ (##car _e8929289304_))
                              (_tl8929489309_ (##cdr _e8929289304_)))
                          (let ((_body89312_ _tl8929489309_))
                            (if (gx#stx-list? _body89312_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl89314_)
                                     (let* ((_e8931589322_ _decl89314_)
                                            (_E8931789326_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e8931589322_)))
                                            (_E8931689342_
                                             (lambda ()
                                               (if (gx#stx-pair? _e8931589322_)
                                                   (let ((_e8931889330_
                                                          (gx#syntax-e
                                                           _e8931589322_)))
                                                     (let ((_hd8931989333_
                                                            (##car _e8931889330_))
                                                           (_tl8932089335_
                                                            (##cdr _e8931889330_)))
                                                       (let* ((_head89338_
                                                               _hd8931989333_)
                                                              (_args89340_
                                                               _tl8932089335_))
                                                         (if (gx#stx-list?
                                                              _args89340_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl89314_)
                                                             (_E8931789326_)))))
                                                   (_E8931789326_)))))
                                       (_E8931689342_)))
                                   _body89312_))
                                 (gx#stx-source _stx89288_))
                                (_E8929189300_)))))
                      (_E8929189300_)))))
          (_E8929089346_))))
    (define gx#core-expand-extern%
      (lambda (_stx89192_)
        (let* ((_e8919389200_ _stx89192_)
               (_E8919589204_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8919389200_)))
               (_E8919489284_
                (lambda ()
                  (if (gx#stx-pair? _e8919389200_)
                      (let ((_e8919689208_ (gx#syntax-e _e8919389200_)))
                        (let ((_hd8919789211_ (##car _e8919689208_))
                              (_tl8919889213_ (##cdr _e8919689208_)))
                          (let ((_body89216_ _tl8919889213_))
                            (if '#t
                                (let _lp89218_ ((_rest89220_ _body89216_)
                                                (_r89221_ '()))
                                  (let* ((_e8922289236_ _rest89220_)
                                         (_E8923489240_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx89192_)))
                                         (_E8922489244_
                                          (lambda ()
                                            (if (gx#stx-null? _e8922289236_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r89221_))
                                                     (gx#stx-source
                                                      _stx89192_))
                                                    (_E8923489240_))
                                                (_E8923489240_))))
                                         (_E8922389280_
                                          (lambda ()
                                            (if (gx#stx-pair? _e8922289236_)
                                                (let ((_e8922589248_
                                                       (gx#syntax-e
                                                        _e8922289236_)))
                                                  (let ((_hd8922689251_
                                                         (##car _e8922589248_))
                                                        (_tl8922789253_
                                                         (##cdr _e8922589248_)))
                                                    (if (gx#stx-pair?
                                                         _hd8922689251_)
                                                        (let ((_e8922889256_
                                                               (gx#syntax-e
                                                                _hd8922689251_)))
                                                          (let ((_hd8922989259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e8922889256_))
                        (_tl8923089261_ (##cdr _e8922889256_)))
                    (let ((_id89264_ _hd8922989259_))
                      (if (gx#stx-pair? _tl8923089261_)
                          (let ((_e8923189266_ (gx#syntax-e _tl8923089261_)))
                            (let ((_hd8923289269_ (##car _e8923189266_))
                                  (_tl8923389271_ (##cdr _e8923189266_)))
                              (let ((_eid89274_ _hd8923289269_))
                                (if (gx#stx-null? _tl8923389271_)
                                    (let ((_rest89276_ _tl8922789253_))
                                      (if (and (gx#identifier? _id89264_)
                                               (gx#identifier? _eid89274_))
                                          (let ((_eid89278_
                                                 (gx#stx-e _eid89274_)))
                                            (gx#core-bind-extern!__0
                                             _id89264_
                                             _eid89278_)
                                            (_lp89218_
                                             _rest89276_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id89264_)
                                                         (cons _eid89278_ '()))
                                                   _r89221_)))
                                          (_E8922489244_)))
                                    (_E8922489244_)))))
                          (_E8922489244_)))))
                (_E8922489244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8922489244_)))))
                                    (_E8922389280_)))
                                (_E8919589204_)))))
                      (_E8919589204_)))))
          (_E8919489284_))))
    (define gx#core-expand-define-values%
      (lambda (_stx89138_)
        (let* ((_e8913989152_ _stx89138_)
               (_E8914189156_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8913989152_)))
               (_E8914089188_
                (lambda ()
                  (if (gx#stx-pair? _e8913989152_)
                      (let ((_e8914289160_ (gx#syntax-e _e8913989152_)))
                        (let ((_hd8914389163_ (##car _e8914289160_))
                              (_tl8914489165_ (##cdr _e8914289160_)))
                          (if (gx#stx-pair? _tl8914489165_)
                              (let ((_e8914589168_
                                     (gx#syntax-e _tl8914489165_)))
                                (let ((_hd8914689171_ (##car _e8914589168_))
                                      (_tl8914789173_ (##cdr _e8914589168_)))
                                  (let ((_hd89176_ _hd8914689171_))
                                    (if (gx#stx-pair? _tl8914789173_)
                                        (let ((_e8914889178_
                                               (gx#syntax-e _tl8914789173_)))
                                          (let ((_hd8914989181_
                                                 (##car _e8914889178_))
                                                (_tl8915089183_
                                                 (##cdr _e8914889178_)))
                                            (let ((_expr89186_ _hd8914989181_))
                                              (if (gx#stx-null? _tl8915089183_)
                                                  (if (gx#core-bind-values?
                                                       _hd89176_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd89176_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd89176_)
                             (cons (gx#core-expand-expression _expr89186_)
                                   '())))
                 (gx#stx-source _stx89138_)))
              (_E8914189156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8914189156_)))))
                                        (_E8914189156_)))))
                              (_E8914189156_))))
                      (_E8914189156_)))))
          (_E8914089188_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx89082_)
        (let* ((_e8908389096_ _stx89082_)
               (_E8908589100_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8908389096_)))
               (_E8908489134_
                (lambda ()
                  (if (gx#stx-pair? _e8908389096_)
                      (let ((_e8908689104_ (gx#syntax-e _e8908389096_)))
                        (let ((_hd8908789107_ (##car _e8908689104_))
                              (_tl8908889109_ (##cdr _e8908689104_)))
                          (if (gx#stx-pair? _tl8908889109_)
                              (let ((_e8908989112_
                                     (gx#syntax-e _tl8908889109_)))
                                (let ((_hd8909089115_ (##car _e8908989112_))
                                      (_tl8909189117_ (##cdr _e8908989112_)))
                                  (let ((_id89120_ _hd8909089115_))
                                    (if (gx#stx-pair? _tl8909189117_)
                                        (let ((_e8909289122_
                                               (gx#syntax-e _tl8909189117_)))
                                          (let ((_hd8909389125_
                                                 (##car _e8909289122_))
                                                (_tl8909489127_
                                                 (##cdr _e8909289122_)))
                                            (let ((_binding-id89130_
                                                   _hd8909389125_))
                                              (if (gx#stx-null? _tl8909489127_)
                                                  (if (and (gx#identifier?
                                                            _id89120_)
                                                           (gx#identifier?
                                                            _binding-id89130_))
                                                      (let ((_eid89132_
                                                             (gx#stx-e
                                                              _binding-id89130_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id89120_
                                                         _eid89132_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89120_)
                             (cons _eid89132_ '())))))
              (_E8908589100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8908589100_)))))
                                        (_E8908589100_)))))
                              (_E8908589100_))))
                      (_E8908589100_)))))
          (_E8908489134_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx89025_)
        (let* ((_e8902689039_ _stx89025_)
               (_E8902889043_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8902689039_)))
               (_E8902789078_
                (lambda ()
                  (if (gx#stx-pair? _e8902689039_)
                      (let ((_e8902989047_ (gx#syntax-e _e8902689039_)))
                        (let ((_hd8903089050_ (##car _e8902989047_))
                              (_tl8903189052_ (##cdr _e8902989047_)))
                          (if (gx#stx-pair? _tl8903189052_)
                              (let ((_e8903289055_
                                     (gx#syntax-e _tl8903189052_)))
                                (let ((_hd8903389058_ (##car _e8903289055_))
                                      (_tl8903489060_ (##cdr _e8903289055_)))
                                  (let ((_id89063_ _hd8903389058_))
                                    (if (gx#stx-pair? _tl8903489060_)
                                        (let ((_e8903589065_
                                               (gx#syntax-e _tl8903489060_)))
                                          (let ((_hd8903689068_
                                                 (##car _e8903589065_))
                                                (_tl8903789070_
                                                 (##cdr _e8903589065_)))
                                            (let ((_expr89073_ _hd8903689068_))
                                              (if (gx#stx-null? _tl8903789070_)
                                                  (if (gx#identifier?
                                                       _id89063_)
                                                      (let ((_g89984_
                                                             (gx#core-expand-expression+1
                                                              _expr89073_)))
                                                        (begin
                                                          (let ((_g89985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g89984_)
                             (##vector-length _g89984_)
                             1)))
                    (if (not (##fx= _g89985_ 2))
                        (error "Context expects 2 values" _g89985_)))
                  (let ((_e-stx89075_ (##vector-ref _g89984_ 0))
                        (_e89076_ (##vector-ref _g89984_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id89063_ _e89076_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id89063_)
                                   (cons _e-stx89075_ '())))
                       (gx#stx-source _stx89025_))))))
              (_E8902889043_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8902889043_)))))
                                        (_E8902889043_)))))
                              (_E8902889043_))))
                      (_E8902889043_)))))
          (_E8902789078_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx88969_)
        (let* ((_e8897088983_ _stx88969_)
               (_E8897288987_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8897088983_)))
               (_E8897189021_
                (lambda ()
                  (if (gx#stx-pair? _e8897088983_)
                      (let ((_e8897388991_ (gx#syntax-e _e8897088983_)))
                        (let ((_hd8897488994_ (##car _e8897388991_))
                              (_tl8897588996_ (##cdr _e8897388991_)))
                          (if (gx#stx-pair? _tl8897588996_)
                              (let ((_e8897688999_
                                     (gx#syntax-e _tl8897588996_)))
                                (let ((_hd8897789002_ (##car _e8897688999_))
                                      (_tl8897889004_ (##cdr _e8897688999_)))
                                  (let ((_id89007_ _hd8897789002_))
                                    (if (gx#stx-pair? _tl8897889004_)
                                        (let ((_e8897989009_
                                               (gx#syntax-e _tl8897889004_)))
                                          (let ((_hd8898089012_
                                                 (##car _e8897989009_))
                                                (_tl8898189014_
                                                 (##cdr _e8897989009_)))
                                            (let ((_alias-id89017_
                                                   _hd8898089012_))
                                              (if (gx#stx-null? _tl8898189014_)
                                                  (if (and (gx#identifier?
                                                            _id89007_)
                                                           (gx#identifier?
                                                            _alias-id89017_))
                                                      (let ((_alias-id89019_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id89017_)))
                                                        (gx#core-bind-alias!__0
                                                         _id89007_
                                                         _alias-id89019_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id89007_)
                             (cons _alias-id89019_ '())))))
              (_E8897288987_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8897288987_)))))
                                        (_E8897288987_)))))
                              (_E8897288987_))))
                      (_E8897288987_)))))
          (_E8897189021_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx88912_ _wrap?88913_)
        (let* ((_e8891488924_ _stx88912_)
               (_E8891688928_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8891488924_)))
               (_E8891588955_
                (lambda ()
                  (if (gx#stx-pair? _e8891488924_)
                      (let ((_e8891788932_ (gx#syntax-e _e8891488924_)))
                        (let ((_hd8891888935_ (##car _e8891788932_))
                              (_tl8891988937_ (##cdr _e8891788932_)))
                          (if (gx#stx-pair? _tl8891988937_)
                              (let ((_e8892088940_
                                     (gx#syntax-e _tl8891988937_)))
                                (let ((_hd8892188943_ (##car _e8892088940_))
                                      (_tl8892288945_ (##cdr _e8892088940_)))
                                  (let* ((_hd88948_ _hd8892188943_)
                                         (_body88950_ _tl8892288945_))
                                    (if (gx#core-bind-values? _hd88948_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd88948_)
                                           (let ((_body88953_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd88948_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx88912_
                                                               _body88950_)
                                                              '()))))
                                             (if _wrap?88913_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body88953_)
                                                  (gx#stx-source _stx88912_))
                                                 _body88953_)))
                                         gx#current-expander-context
                                         (let ((__obj89977
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89977)
                                           __obj89977))
                                        (_E8891688928_)))))
                              (_E8891688928_))))
                      (_E8891688928_)))))
          (_E8891588955_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx88962_)
        (let ((_wrap?88964_ '#t))
          (gx#core-expand-lambda%__% _stx88962_ _wrap?88964_))))
    (define gx#core-expand-lambda%
      (lambda _g89987_
        (let ((_g89986_ (##length _g89987_)))
          (cond ((##fx= _g89986_ 1)
                 (apply (lambda (_stx88962_)
                          (gx#core-expand-lambda%__0 _stx88962_))
                        _g89987_))
                ((##fx= _g89986_ 2)
                 (apply (lambda (_stx88966_ _wrap?88967_)
                          (gx#core-expand-lambda%__% _stx88966_ _wrap?88967_))
                        _g89987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g89987_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx88876_)
        (let* ((_e8887788884_ _stx88876_)
               (_E8887988888_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8887788884_)))
               (_E8887888907_
                (lambda ()
                  (if (gx#stx-pair? _e8887788884_)
                      (let ((_e8888088892_ (gx#syntax-e _e8887788884_)))
                        (let ((_hd8888188895_ (##car _e8888088892_))
                              (_tl8888288897_ (##cdr _e8888088892_)))
                          (let ((_clauses88900_ _tl8888288897_))
                            (if (gx#stx-list? _clauses88900_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause88902_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause88902_)
                                       (let ((_$e88904_
                                              (gx#stx-source _clause88902_)))
                                         (if _$e88904_
                                             _$e88904_
                                             (gx#stx-source _stx88876_))))
                                      '#f))
                                   _clauses88900_))
                                 (gx#stx-source _stx88876_))
                                (_E8887988888_)))))
                      (_E8887988888_)))))
          (_E8887888907_))))
    (define gx#core-expand-let-values%
      (lambda (_stx88830_)
        (let* ((_e8883188841_ _stx88830_)
               (_E8883388845_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8883188841_)))
               (_E8883288872_
                (lambda ()
                  (if (gx#stx-pair? _e8883188841_)
                      (let ((_e8883488849_ (gx#syntax-e _e8883188841_)))
                        (let ((_hd8883588852_ (##car _e8883488849_))
                              (_tl8883688854_ (##cdr _e8883488849_)))
                          (if (gx#stx-pair? _tl8883688854_)
                              (let ((_e8883788857_
                                     (gx#syntax-e _tl8883688854_)))
                                (let ((_hd8883888860_ (##car _e8883788857_))
                                      (_tl8883988862_ (##cdr _e8883788857_)))
                                  (let* ((_hd88865_ _hd8883888860_)
                                         (_body88867_ _tl8883988862_))
                                    (if (gx#core-expand-let-bind? _hd88865_)
                                        (let ((_expressions88869_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd88865_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd88865_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd88865_
                                                           _expressions88869_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx88830_
                         _body88867_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx88830_)))
                                           gx#current-expander-context
                                           (let ((__obj89978
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89978)
                                             __obj89978)))
                                        (_E8883388845_)))))
                              (_E8883388845_))))
                      (_E8883388845_)))))
          (_E8883288872_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx88775_ _form88776_)
        (let* ((_e8877788787_ _stx88775_)
               (_E8877988791_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8877788787_)))
               (_E8877888816_
                (lambda ()
                  (if (gx#stx-pair? _e8877788787_)
                      (let ((_e8878088795_ (gx#syntax-e _e8877788787_)))
                        (let ((_hd8878188798_ (##car _e8878088795_))
                              (_tl8878288800_ (##cdr _e8878088795_)))
                          (if (gx#stx-pair? _tl8878288800_)
                              (let ((_e8878388803_
                                     (gx#syntax-e _tl8878288800_)))
                                (let ((_hd8878488806_ (##car _e8878388803_))
                                      (_tl8878588808_ (##cdr _e8878388803_)))
                                  (let* ((_hd88811_ _hd8878488806_)
                                         (_body88813_ _tl8878588808_))
                                    (if (gx#core-expand-let-bind? _hd88811_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd88811_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form88776_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd88811_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd88811_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx88775_
                                                               _body88813_)
                                                              '())))
                                            (gx#stx-source _stx88775_)))
                                         gx#current-expander-context
                                         (let ((__obj89979
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89979)
                                           __obj89979))
                                        (_E8877988791_)))))
                              (_E8877988791_))))
                      (_E8877988791_)))))
          (_E8877888816_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx88823_)
        (let ((_form88825_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx88823_ _form88825_))))
    (define gx#core-expand-letrec-values%
      (lambda _g89989_
        (let ((_g89988_ (##length _g89989_)))
          (cond ((##fx= _g89988_ 1)
                 (apply (lambda (_stx88823_)
                          (gx#core-expand-letrec-values%__0 _stx88823_))
                        _g89989_))
                ((##fx= _g89988_ 2)
                 (apply (lambda (_stx88827_ _form88828_)
                          (gx#core-expand-letrec-values%__%
                           _stx88827_
                           _form88828_))
                        _g89989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g89989_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx88772_)
        (gx#core-expand-letrec-values%__% _stx88772_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx88729_)
        (if (gx#stx-list? _stx88729_)
            (gx#stx-andmap
             (lambda (_bind88731_)
               (let* ((_e8873288742_ _bind88731_)
                      (_E8873488746_ (lambda () '#f))
                      (_E8873388768_
                       (lambda ()
                         (if (gx#stx-pair? _e8873288742_)
                             (let ((_e8873588750_ (gx#syntax-e _e8873288742_)))
                               (let ((_hd8873688753_ (##car _e8873588750_))
                                     (_tl8873788755_ (##cdr _e8873588750_)))
                                 (let ((_hd88758_ _hd8873688753_))
                                   (if (gx#stx-pair? _tl8873788755_)
                                       (let ((_e8873888760_
                                              (gx#syntax-e _tl8873788755_)))
                                         (let ((_hd8873988763_
                                                (##car _e8873888760_))
                                               (_tl8874088765_
                                                (##cdr _e8873888760_)))
                                           (if (gx#stx-null? _tl8874088765_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd88758_)
                                                   (_E8873488746_))
                                               (_E8873488746_))))
                                       (_E8873488746_)))))
                             (_E8873488746_)))))
                 (_E8873388768_)))
             _stx88729_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind88688_)
        (let* ((_e8868988699_ _bind88688_)
               (_E8869188703_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8868988699_)))
               (_E8869088725_
                (lambda ()
                  (if (gx#stx-pair? _e8868988699_)
                      (let ((_e8869288707_ (gx#syntax-e _e8868988699_)))
                        (let ((_hd8869388710_ (##car _e8869288707_))
                              (_tl8869488712_ (##cdr _e8869288707_)))
                          (if (gx#stx-pair? _tl8869488712_)
                              (let ((_e8869588715_
                                     (gx#syntax-e _tl8869488712_)))
                                (let ((_hd8869688718_ (##car _e8869588715_))
                                      (_tl8869788720_ (##cdr _e8869588715_)))
                                  (let ((_expr88723_ _hd8869688718_))
                                    (if (gx#stx-null? _tl8869788720_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88723_)
                                            (_E8869188703_))
                                        (_E8869188703_)))))
                              (_E8869188703_))))
                      (_E8869188703_)))))
          (_E8869088725_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind88647_)
        (let* ((_e8864888658_ _bind88647_)
               (_E8865088662_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8864888658_)))
               (_E8864988684_
                (lambda ()
                  (if (gx#stx-pair? _e8864888658_)
                      (let ((_e8865188666_ (gx#syntax-e _e8864888658_)))
                        (let ((_hd8865288669_ (##car _e8865188666_))
                              (_tl8865388671_ (##cdr _e8865188666_)))
                          (let ((_hd88674_ _hd8865288669_))
                            (if (gx#stx-pair? _tl8865388671_)
                                (let ((_e8865488676_
                                       (gx#syntax-e _tl8865388671_)))
                                  (let ((_hd8865588679_ (##car _e8865488676_))
                                        (_tl8865688681_ (##cdr _e8865488676_)))
                                    (if (gx#stx-null? _tl8865688681_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd88674_)
                                            (_E8865088662_))
                                        (_E8865088662_))))
                                (_E8865088662_)))))
                      (_E8865088662_)))))
          (_E8864988684_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind88605_ _expr88606_)
        (let* ((_e8860788617_ _bind88605_)
               (_E8860988621_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8860788617_)))
               (_E8860888643_
                (lambda ()
                  (if (gx#stx-pair? _e8860788617_)
                      (let ((_e8861088625_ (gx#syntax-e _e8860788617_)))
                        (let ((_hd8861188628_ (##car _e8861088625_))
                              (_tl8861288630_ (##cdr _e8861088625_)))
                          (let ((_hd88633_ _hd8861188628_))
                            (if (gx#stx-pair? _tl8861288630_)
                                (let ((_e8861388635_
                                       (gx#syntax-e _tl8861288630_)))
                                  (let ((_hd8861488638_ (##car _e8861388635_))
                                        (_tl8861588640_ (##cdr _e8861388635_)))
                                    (if (gx#stx-null? _tl8861588640_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd88633_)
                                                  (cons _expr88606_ '()))
                                            (_E8860988621_))
                                        (_E8860988621_))))
                                (_E8860988621_)))))
                      (_E8860988621_)))))
          (_E8860888643_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx88559_)
        (let* ((_e8856088570_ _stx88559_)
               (_E8856288574_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8856088570_)))
               (_E8856188601_
                (lambda ()
                  (if (gx#stx-pair? _e8856088570_)
                      (let ((_e8856388578_ (gx#syntax-e _e8856088570_)))
                        (let ((_hd8856488581_ (##car _e8856388578_))
                              (_tl8856588583_ (##cdr _e8856388578_)))
                          (if (gx#stx-pair? _tl8856588583_)
                              (let ((_e8856688586_
                                     (gx#syntax-e _tl8856588583_)))
                                (let ((_hd8856788589_ (##car _e8856688586_))
                                      (_tl8856888591_ (##cdr _e8856688586_)))
                                  (let* ((_hd88594_ _hd8856788589_)
                                         (_body88596_ _tl8856888591_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88594_)
                                        (let ((_expanders88598_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd88594_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd88594_
                                              _expanders88598_)
                                             (gx#core-expand-local-block
                                              _stx88559_
                                              _body88596_))
                                           gx#current-expander-context
                                           (let ((__obj89980
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj89980)
                                             __obj89980)))
                                        (_E8856288574_)))))
                              (_E8856288574_))))
                      (_E8856288574_)))))
          (_E8856188601_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx88508_)
        (let* ((_e8850988519_ _stx88508_)
               (_E8851188523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8850988519_)))
               (_E8851088555_
                (lambda ()
                  (if (gx#stx-pair? _e8850988519_)
                      (let ((_e8851288527_ (gx#syntax-e _e8850988519_)))
                        (let ((_hd8851388530_ (##car _e8851288527_))
                              (_tl8851488532_ (##cdr _e8851288527_)))
                          (if (gx#stx-pair? _tl8851488532_)
                              (let ((_e8851588535_
                                     (gx#syntax-e _tl8851488532_)))
                                (let ((_hd8851688538_ (##car _e8851588535_))
                                      (_tl8851788540_ (##cdr _e8851588535_)))
                                  (let* ((_hd88543_ _hd8851688538_)
                                         (_body88545_ _tl8851788540_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd88543_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd88543_
                                            (make-list__%
                                             (gx#stx-length _hd88543_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8854788550_
                                                     _g8854888552_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8854788550_
                                               _g8854888552_
                                               '#t))
                                            _hd88543_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd88543_))
                                           (gx#core-expand-local-block
                                            _stx88508_
                                            _body88545_))
                                         gx#current-expander-context
                                         (let ((__obj89981
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj89981)
                                           __obj89981))
                                        (_E8851188523_)))))
                              (_E8851188523_))))
                      (_E8851188523_)))))
          (_E8851088555_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx88465_)
        (if (gx#stx-list? _stx88465_)
            (gx#stx-andmap
             (lambda (_bind88467_)
               (let* ((_e8846888478_ _bind88467_)
                      (_E8847088482_ (lambda () '#f))
                      (_E8846988504_
                       (lambda ()
                         (if (gx#stx-pair? _e8846888478_)
                             (let ((_e8847188486_ (gx#syntax-e _e8846888478_)))
                               (let ((_hd8847288489_ (##car _e8847188486_))
                                     (_tl8847388491_ (##cdr _e8847188486_)))
                                 (let ((_hd88494_ _hd8847288489_))
                                   (if (gx#stx-pair? _tl8847388491_)
                                       (let ((_e8847488496_
                                              (gx#syntax-e _tl8847388491_)))
                                         (let ((_hd8847588499_
                                                (##car _e8847488496_))
                                               (_tl8847688501_
                                                (##cdr _e8847488496_)))
                                           (if (gx#stx-null? _tl8847688501_)
                                               (if '#t
                                                   (gx#identifier? _hd88494_)
                                                   (_E8847088482_))
                                               (_E8847088482_))))
                                       (_E8847088482_)))))
                             (_E8847088482_)))))
                 (_E8846988504_)))
             _stx88465_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind88422_)
        (let* ((_e8842388433_ _bind88422_)
               (_E8842588437_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8842388433_)))
               (_E8842488461_
                (lambda ()
                  (if (gx#stx-pair? _e8842388433_)
                      (let ((_e8842688441_ (gx#syntax-e _e8842388433_)))
                        (let ((_hd8842788444_ (##car _e8842688441_))
                              (_tl8842888446_ (##cdr _e8842688441_)))
                          (if (gx#stx-pair? _tl8842888446_)
                              (let ((_e8842988449_
                                     (gx#syntax-e _tl8842888446_)))
                                (let ((_hd8843088452_ (##car _e8842988449_))
                                      (_tl8843188454_ (##cdr _e8842988449_)))
                                  (let ((_expr88457_ _hd8843088452_))
                                    (if (gx#stx-null? _tl8843188454_)
                                        (if '#t
                                            (let ((_g89990_
                                                   (gx#core-expand-expression+1
                                                    _expr88457_)))
                                              (begin
                                                (let ((_g89991_
                                                       (if (##values? _g89990_)
                                                           (##vector-length
                                                            _g89990_)
                                                           1)))
                                                  (if (not (##fx= _g89991_ 2))
                                                      (error "Context expects 2 values"
                                                             _g89991_)))
                                                (let ((_e88459_
                                                       (##vector-ref
                                                        _g89990_
                                                        1)))
                                                  _e88459_)))
                                            (_E8842588437_))
                                        (_E8842588437_)))))
                              (_E8842588437_))))
                      (_E8842588437_)))))
          (_E8842488461_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind88367_ _e88368_ _rebind?88369_)
        (let* ((_e8837088380_ _bind88367_)
               (_E8837288384_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8837088380_)))
               (_E8837188406_
                (lambda ()
                  (if (gx#stx-pair? _e8837088380_)
                      (let ((_e8837388388_ (gx#syntax-e _e8837088380_)))
                        (let ((_hd8837488391_ (##car _e8837388388_))
                              (_tl8837588393_ (##cdr _e8837388388_)))
                          (let ((_id88396_ _hd8837488391_))
                            (if (gx#stx-pair? _tl8837588393_)
                                (let ((_e8837688398_
                                       (gx#syntax-e _tl8837588393_)))
                                  (let ((_hd8837788401_ (##car _e8837688398_))
                                        (_tl8837888403_ (##cdr _e8837688398_)))
                                    (if (gx#stx-null? _tl8837888403_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id88396_
                                             _e88368_
                                             _rebind?88369_)
                                            (_E8837288384_))
                                        (_E8837288384_))))
                                (_E8837288384_)))))
                      (_E8837288384_)))))
          (_E8837188406_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind88413_ _e88414_)
        (let ((_rebind?88416_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind88413_
           _e88414_
           _rebind?88416_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g89993_
        (let ((_g89992_ (##length _g89993_)))
          (cond ((##fx= _g89992_ 2)
                 (apply (lambda (_bind88413_ _e88414_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind88413_
                           _e88414_))
                        _g89993_))
                ((##fx= _g89992_ 3)
                 (apply (lambda (_bind88418_ _e88419_ _rebind?88420_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind88418_
                           _e88419_
                           _rebind?88420_))
                        _g89993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g89993_))))))
    (define gx#core-expand-expression%
      (lambda (_stx88325_)
        (let* ((_e8832688336_ _stx88325_)
               (_E8832888340_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8832688336_)))
               (_E8832788362_
                (lambda ()
                  (if (gx#stx-pair? _e8832688336_)
                      (let ((_e8832988344_ (gx#syntax-e _e8832688336_)))
                        (let ((_hd8833088347_ (##car _e8832988344_))
                              (_tl8833188349_ (##cdr _e8832988344_)))
                          (if (gx#stx-pair? _tl8833188349_)
                              (let ((_e8833288352_
                                     (gx#syntax-e _tl8833188349_)))
                                (let ((_hd8833388355_ (##car _e8833288352_))
                                      (_tl8833488357_ (##cdr _e8833288352_)))
                                  (let ((_expr88360_ _hd8833388355_))
                                    (if (gx#stx-null? _tl8833488357_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr88360_)
                                            (_E8832888340_))
                                        (_E8832888340_)))))
                              (_E8832888340_))))
                      (_E8832888340_)))))
          (_E8832788362_))))
    (define gx#core-expand-quote%
      (lambda (_stx88284_)
        (let* ((_e8828588295_ _stx88284_)
               (_E8828788299_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8828588295_)))
               (_E8828688321_
                (lambda ()
                  (if (gx#stx-pair? _e8828588295_)
                      (let ((_e8828888303_ (gx#syntax-e _e8828588295_)))
                        (let ((_hd8828988306_ (##car _e8828888303_))
                              (_tl8829088308_ (##cdr _e8828888303_)))
                          (if (gx#stx-pair? _tl8829088308_)
                              (let ((_e8829188311_
                                     (gx#syntax-e _tl8829088308_)))
                                (let ((_hd8829288314_ (##car _e8829188311_))
                                      (_tl8829388316_ (##cdr _e8829188311_)))
                                  (let ((_e88319_ _hd8829288314_))
                                    (if (gx#stx-null? _tl8829388316_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e88319_)
                                                         '()))
                                             (gx#stx-source _stx88284_))
                                            (_E8828788299_))
                                        (_E8828788299_)))))
                              (_E8828788299_))))
                      (_E8828788299_)))))
          (_E8828688321_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx88243_)
        (let* ((_e8824488254_ _stx88243_)
               (_E8824688258_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8824488254_)))
               (_E8824588280_
                (lambda ()
                  (if (gx#stx-pair? _e8824488254_)
                      (let ((_e8824788262_ (gx#syntax-e _e8824488254_)))
                        (let ((_hd8824888265_ (##car _e8824788262_))
                              (_tl8824988267_ (##cdr _e8824788262_)))
                          (if (gx#stx-pair? _tl8824988267_)
                              (let ((_e8825088270_
                                     (gx#syntax-e _tl8824988267_)))
                                (let ((_hd8825188273_ (##car _e8825088270_))
                                      (_tl8825288275_ (##cdr _e8825088270_)))
                                  (let ((_e88278_ _hd8825188273_))
                                    (if (gx#stx-null? _tl8825288275_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e88278_)
                                                         '()))
                                             (gx#stx-source _stx88243_))
                                            (_E8824688258_))
                                        (_E8824688258_)))))
                              (_E8824688258_))))
                      (_E8824688258_)))))
          (_E8824588280_))))
    (define gx#core-expand-call%
      (lambda (_stx88200_)
        (let* ((_e8820188211_ _stx88200_)
               (_E8820388215_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8820188211_)))
               (_E8820288239_
                (lambda ()
                  (if (gx#stx-pair? _e8820188211_)
                      (let ((_e8820488219_ (gx#syntax-e _e8820188211_)))
                        (let ((_hd8820588222_ (##car _e8820488219_))
                              (_tl8820688224_ (##cdr _e8820488219_)))
                          (if (gx#stx-pair? _tl8820688224_)
                              (let ((_e8820788227_
                                     (gx#syntax-e _tl8820688224_)))
                                (let ((_hd8820888230_ (##car _e8820788227_))
                                      (_tl8820988232_ (##cdr _e8820788227_)))
                                  (let* ((_rator88235_ _hd8820888230_)
                                         (_args88237_ _tl8820988232_))
                                    (if (gx#stx-list? _args88237_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator88235_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args88237_))
                                         (gx#stx-source _stx88200_))
                                        (_E8820388215_)))))
                              (_E8820388215_))))
                      (_E8820388215_)))))
          (_E8820288239_))))
    (define gx#core-expand-if%
      (lambda (_stx88133_)
        (let* ((_e8813488150_ _stx88133_)
               (_E8813688154_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8813488150_)))
               (_E8813588196_
                (lambda ()
                  (if (gx#stx-pair? _e8813488150_)
                      (let ((_e8813788158_ (gx#syntax-e _e8813488150_)))
                        (let ((_hd8813888161_ (##car _e8813788158_))
                              (_tl8813988163_ (##cdr _e8813788158_)))
                          (if (gx#stx-pair? _tl8813988163_)
                              (let ((_e8814088166_
                                     (gx#syntax-e _tl8813988163_)))
                                (let ((_hd8814188169_ (##car _e8814088166_))
                                      (_tl8814288171_ (##cdr _e8814088166_)))
                                  (let ((_test88174_ _hd8814188169_))
                                    (if (gx#stx-pair? _tl8814288171_)
                                        (let ((_e8814388176_
                                               (gx#syntax-e _tl8814288171_)))
                                          (let ((_hd8814488179_
                                                 (##car _e8814388176_))
                                                (_tl8814588181_
                                                 (##cdr _e8814388176_)))
                                            (let ((_K88184_ _hd8814488179_))
                                              (if (gx#stx-pair? _tl8814588181_)
                                                  (let ((_e8814688186_
                                                         (gx#syntax-e
                                                          _tl8814588181_)))
                                                    (let ((_hd8814788189_
                                                           (##car _e8814688186_))
                                                          (_tl8814888191_
                                                           (##cdr _e8814688186_)))
                                                      (let ((_E88194_
                                                             _hd8814788189_))
                                                        (if (gx#stx-null?
                                                             _tl8814888191_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test88174_)
                                     (cons (gx#core-expand-expression _K88184_)
                                           (cons (gx#core-expand-expression
                                                  _E88194_)
                                                 '()))))
                         (gx#stx-source _stx88133_))
                        (_E8813688154_))
                    (_E8813688154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8813688154_)))))
                                        (_E8813688154_)))))
                              (_E8813688154_))))
                      (_E8813688154_)))))
          (_E8813588196_))))
    (define gx#core-expand-ref%
      (lambda (_stx88092_)
        (let* ((_e8809388103_ _stx88092_)
               (_E8809588107_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8809388103_)))
               (_E8809488129_
                (lambda ()
                  (if (gx#stx-pair? _e8809388103_)
                      (let ((_e8809688111_ (gx#syntax-e _e8809388103_)))
                        (let ((_hd8809788114_ (##car _e8809688111_))
                              (_tl8809888116_ (##cdr _e8809688111_)))
                          (if (gx#stx-pair? _tl8809888116_)
                              (let ((_e8809988119_
                                     (gx#syntax-e _tl8809888116_)))
                                (let ((_hd8810088122_ (##car _e8809988119_))
                                      (_tl8810188124_ (##cdr _e8809988119_)))
                                  (let ((_id88127_ _hd8810088122_))
                                    (if (gx#stx-null? _tl8810188124_)
                                        (if (gx#identifier? _id88127_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id88127_
                                                          _stx88092_)
                                                         '()))
                                             (gx#stx-source _stx88092_))
                                            (_E8809588107_))
                                        (_E8809588107_)))))
                              (_E8809588107_))))
                      (_E8809588107_)))))
          (_E8809488129_))))
    (define gx#core-expand-setq%
      (lambda (_stx88038_)
        (let* ((_e8803988052_ _stx88038_)
               (_E8804188056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8803988052_)))
               (_E8804088088_
                (lambda ()
                  (if (gx#stx-pair? _e8803988052_)
                      (let ((_e8804288060_ (gx#syntax-e _e8803988052_)))
                        (let ((_hd8804388063_ (##car _e8804288060_))
                              (_tl8804488065_ (##cdr _e8804288060_)))
                          (if (gx#stx-pair? _tl8804488065_)
                              (let ((_e8804588068_
                                     (gx#syntax-e _tl8804488065_)))
                                (let ((_hd8804688071_ (##car _e8804588068_))
                                      (_tl8804788073_ (##cdr _e8804588068_)))
                                  (let ((_id88076_ _hd8804688071_))
                                    (if (gx#stx-pair? _tl8804788073_)
                                        (let ((_e8804888078_
                                               (gx#syntax-e _tl8804788073_)))
                                          (let ((_hd8804988081_
                                                 (##car _e8804888078_))
                                                (_tl8805088083_
                                                 (##cdr _e8804888078_)))
                                            (let ((_expr88086_ _hd8804988081_))
                                              (if (gx#stx-null? _tl8805088083_)
                                                  (if (gx#identifier?
                                                       _id88076_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id88076_
                            _stx88038_)
                           (cons (gx#core-expand-expression _expr88086_) '())))
               (gx#stx-source _stx88038_))
              (_E8804188056_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8804188056_)))))
                                        (_E8804188056_)))))
                              (_E8804188056_))))
                      (_E8804188056_)))))
          (_E8804088088_))))
    (define gx#macro-expand-extern
      (lambda (_stx87886_)
        (letrec ((_generate87888_
                  (lambda (_body87918_)
                    (let _lp87920_ ((_rest87922_ _body87918_)
                                    (_ns87923_ (gx#core-context-namespace__0))
                                    (_r87924_ '()))
                      (let* ((_e8792587940_ _rest87922_)
                             (_E8793887944_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8792587940_)))
                             (_E8793487948_
                              (lambda ()
                                (if (gx#stx-null? _e8792587940_)
                                    (if '#t (reverse _r87924_) (_E8793887944_))
                                    (_E8793887944_))))
                             (_E8792788005_
                              (lambda ()
                                (if (gx#stx-pair? _e8792587940_)
                                    (let ((_e8793587952_
                                           (gx#syntax-e _e8792587940_)))
                                      (let ((_hd8793687955_
                                             (##car _e8793587952_))
                                            (_tl8793787957_
                                             (##cdr _e8793587952_)))
                                        (let* ((_hd87960_ _hd8793687955_)
                                               (_rest87962_ _tl8793787957_))
                                          (if '#t
                                              (if (gx#identifier? _hd87960_)
                                                  (_lp87920_
                                                   _rest87962_
                                                   _ns87923_
                                                   (cons (cons _hd87960_
                                                               (cons (if _ns87923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd87960_
                                  _ns87923_
                                  '"#"
                                  _hd87960_)
                                 _hd87960_)
                             '()))
                 _r87924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8796387973_
                                                          _hd87960_)
                                                         (_E8796587977_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8796387973_)))
                                                         (_E8796488001_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8796387973_)
                        (let ((_e8796687981_ (gx#syntax-e _e8796387973_)))
                          (let ((_hd8796787984_ (##car _e8796687981_))
                                (_tl8796887986_ (##cdr _e8796687981_)))
                            (let ((_id87989_ _hd8796787984_))
                              (if (gx#stx-pair? _tl8796887986_)
                                  (let ((_e8796987991_
                                         (gx#syntax-e _tl8796887986_)))
                                    (let ((_hd8797087994_
                                           (##car _e8796987991_))
                                          (_tl8797187996_
                                           (##cdr _e8796987991_)))
                                      (let ((_eid87999_ _hd8797087994_))
                                        (if (gx#stx-null? _tl8797187996_)
                                            (if (and (gx#identifier? _id87989_)
                                                     (gx#identifier?
                                                      _eid87999_))
                                                (_lp87920_
                                                 _rest87962_
                                                 _ns87923_
                                                 (cons (cons _id87989_
                                                             (cons _eid87999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r87924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8796587977_))
                                            (_E8796587977_)))))
                                  (_E8796587977_)))))
                        (_E8796587977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8796488001_)))
                                              (_E8793487948_)))))
                                    (_E8793487948_))))
                             (_E8792688034_
                              (lambda ()
                                (if (gx#stx-pair? _e8792587940_)
                                    (let ((_e8792888009_
                                           (gx#syntax-e _e8792587940_)))
                                      (let ((_hd8792988012_
                                             (##car _e8792888009_))
                                            (_tl8793088014_
                                             (##cdr _e8792888009_)))
                                        (if (eq? (gx#stx-e _hd8792988012_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8793088014_)
                                                (let ((_e8793188017_
                                                       (gx#syntax-e
                                                        _tl8793088014_)))
                                                  (let ((_hd8793288020_
                                                         (##car _e8793188017_))
                                                        (_tl8793388022_
                                                         (##cdr _e8793188017_)))
                                                    (let* ((_ns88025_
                                                            _hd8793288020_)
                                                           (_rest88027_
                                                            _tl8793388022_))
                                                      (if '#t
                                                          (let ((_ns88032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns88025_)
                             (symbol->string (gx#stx-e _ns88025_))
                             (if (or (gx#stx-string? _ns88025_)
                                     (gx#stx-false? _ns88025_))
                                 (gx#stx-e _ns88025_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx87886_
                                  _ns88025_)))))
                    (_lp87920_ _rest88027_ _ns88032_ _r87924_))
                  (_E8792788005_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8792788005_))
                                            (_E8792788005_))))
                                    (_E8792788005_)))))
                        (_E8792688034_))))))
          (let* ((_e8788987896_ _stx87886_)
                 (_E8789187900_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8788987896_)))
                 (_E8789087914_
                  (lambda ()
                    (if (gx#stx-pair? _e8788987896_)
                        (let ((_e8789287904_ (gx#syntax-e _e8788987896_)))
                          (let ((_hd8789387907_ (##car _e8789287904_))
                                (_tl8789487909_ (##cdr _e8789287904_)))
                            (let ((_body87912_ _tl8789487909_))
                              (if (gx#stx-list? _body87912_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate87888_ _body87912_))
                                  (_E8789187900_)))))
                        (_E8789187900_)))))
            (_E8789087914_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx87832_)
        (let* ((_e8783387846_ _stx87832_)
               (_E8783587850_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8783387846_)))
               (_E8783487882_
                (lambda ()
                  (if (gx#stx-pair? _e8783387846_)
                      (let ((_e8783687854_ (gx#syntax-e _e8783387846_)))
                        (let ((_hd8783787857_ (##car _e8783687854_))
                              (_tl8783887859_ (##cdr _e8783687854_)))
                          (if (gx#stx-pair? _tl8783887859_)
                              (let ((_e8783987862_
                                     (gx#syntax-e _tl8783887859_)))
                                (let ((_hd8784087865_ (##car _e8783987862_))
                                      (_tl8784187867_ (##cdr _e8783987862_)))
                                  (let ((_hd87870_ _hd8784087865_))
                                    (if (gx#stx-pair? _tl8784187867_)
                                        (let ((_e8784287872_
                                               (gx#syntax-e _tl8784187867_)))
                                          (let ((_hd8784387875_
                                                 (##car _e8784287872_))
                                                (_tl8784487877_
                                                 (##cdr _e8784287872_)))
                                            (let ((_expr87880_ _hd8784387875_))
                                              (if (gx#stx-null? _tl8784487877_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd87870_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd87870_)
                          (cons _expr87880_ '())))
              (_E8783587850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8783587850_)))))
                                        (_E8783587850_)))))
                              (_E8783587850_))))
                      (_E8783587850_)))))
          (_E8783487882_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx87778_)
        (let* ((_e8777987792_ _stx87778_)
               (_E8778187796_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8777987792_)))
               (_E8778087828_
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
                                  (let ((_hd87816_ _hd8778687811_))
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
                                                       _hd87816_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd87816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr87826_ '())))
              (_E8778187796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8778187796_)))))
                                        (_E8778187796_)))))
                              (_E8778187796_))))
                      (_E8778187796_)))))
          (_E8778087828_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx87724_)
        (let* ((_e8772587738_ _stx87724_)
               (_E8772787742_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8772587738_)))
               (_E8772687774_
                (lambda ()
                  (if (gx#stx-pair? _e8772587738_)
                      (let ((_e8772887746_ (gx#syntax-e _e8772587738_)))
                        (let ((_hd8772987749_ (##car _e8772887746_))
                              (_tl8773087751_ (##cdr _e8772887746_)))
                          (if (gx#stx-pair? _tl8773087751_)
                              (let ((_e8773187754_
                                     (gx#syntax-e _tl8773087751_)))
                                (let ((_hd8773287757_ (##car _e8773187754_))
                                      (_tl8773387759_ (##cdr _e8773187754_)))
                                  (let ((_id87762_ _hd8773287757_))
                                    (if (gx#stx-pair? _tl8773387759_)
                                        (let ((_e8773487764_
                                               (gx#syntax-e _tl8773387759_)))
                                          (let ((_hd8773587767_
                                                 (##car _e8773487764_))
                                                (_tl8773687769_
                                                 (##cdr _e8773487764_)))
                                            (let ((_alias-id87772_
                                                   _hd8773587767_))
                                              (if (gx#stx-null? _tl8773687769_)
                                                  (if (and (gx#identifier?
                                                            _id87762_)
                                                           (gx#identifier?
                                                            _alias-id87772_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id87762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id87772_ '())))
              (_E8772787742_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8772787742_)))))
                                        (_E8772787742_)))))
                              (_E8772787742_))))
                      (_E8772787742_)))))
          (_E8772687774_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx87681_)
        (let* ((_e8768287692_ _stx87681_)
               (_E8768487696_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8768287692_)))
               (_E8768387720_
                (lambda ()
                  (if (gx#stx-pair? _e8768287692_)
                      (let ((_e8768587700_ (gx#syntax-e _e8768287692_)))
                        (let ((_hd8768687703_ (##car _e8768587700_))
                              (_tl8768787705_ (##cdr _e8768587700_)))
                          (if (gx#stx-pair? _tl8768787705_)
                              (let ((_e8768887708_
                                     (gx#syntax-e _tl8768787705_)))
                                (let ((_hd8768987711_ (##car _e8768887708_))
                                      (_tl8769087713_ (##cdr _e8768887708_)))
                                  (let* ((_hd87716_ _hd8768987711_)
                                         (_body87718_ _tl8769087713_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd87716_)
                                             (gx#stx-list? _body87718_)
                                             (not (gx#stx-null? _body87718_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd87716_)
                                         _body87718_)
                                        (_E8768487696_)))))
                              (_E8768487696_))))
                      (_E8768487696_)))))
          (_E8768387720_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx87617_)
        (letrec ((_generate87619_
                  (lambda (_clause87649_)
                    (let* ((_e8765087657_ _clause87649_)
                           (_E8765287661_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx87617_
                               _clause87649_)))
                           (_E8765187677_
                            (lambda ()
                              (if (gx#stx-pair? _e8765087657_)
                                  (let ((_e8765387665_
                                         (gx#syntax-e _e8765087657_)))
                                    (let ((_hd8765487668_
                                           (##car _e8765387665_))
                                          (_tl8765587670_
                                           (##cdr _e8765387665_)))
                                      (let* ((_hd87673_ _hd8765487668_)
                                             (_body87675_ _tl8765587670_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd87673_)
                                                 (gx#stx-list? _body87675_)
                                                 (not (gx#stx-null?
                                                       _body87675_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd87673_)
                                                   _body87675_)
                                             (gx#stx-source _clause87649_))
                                            (_E8765287661_)))))
                                  (_E8765287661_)))))
                      (_E8765187677_)))))
          (let* ((_e8762087627_ _stx87617_)
                 (_E8762287631_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8762087627_)))
                 (_E8762187645_
                  (lambda ()
                    (if (gx#stx-pair? _e8762087627_)
                        (let ((_e8762387635_ (gx#syntax-e _e8762087627_)))
                          (let ((_hd8762487638_ (##car _e8762387635_))
                                (_tl8762587640_ (##cdr _e8762387635_)))
                            (let ((_clauses87643_ _tl8762587640_))
                              (if (gx#stx-list? _clauses87643_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate87619_
                                    _clauses87643_))
                                  (_E8762287631_)))))
                        (_E8762287631_)))))
            (_E8762187645_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx87518_ _form87519_)
        (letrec ((_generate87521_
                  (lambda (_bind87564_)
                    (let* ((_e8756587575_ _bind87564_)
                           (_E8756787579_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx87518_
                               _bind87564_)))
                           (_E8756687603_
                            (lambda ()
                              (if (gx#stx-pair? _e8756587575_)
                                  (let ((_e8756887583_
                                         (gx#syntax-e _e8756587575_)))
                                    (let ((_hd8756987586_
                                           (##car _e8756887583_))
                                          (_tl8757087588_
                                           (##cdr _e8756887583_)))
                                      (let ((_ids87591_ _hd8756987586_))
                                        (if (gx#stx-pair? _tl8757087588_)
                                            (let ((_e8757187593_
                                                   (gx#syntax-e
                                                    _tl8757087588_)))
                                              (let ((_hd8757287596_
                                                     (##car _e8757187593_))
                                                    (_tl8757387598_
                                                     (##cdr _e8757187593_)))
                                                (let ((_expr87601_
                                                       _hd8757287596_))
                                                  (if (gx#stx-null?
                                                       _tl8757387598_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids87591_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids87591_)
                        (cons _expr87601_ '()))
                  (_E8756787579_))
              (_E8756787579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8756787579_)))))
                                  (_E8756787579_)))))
                      (_E8756687603_)))))
          (let* ((_e8752287532_ _stx87518_)
                 (_E8752487536_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8752287532_)))
                 (_E8752387560_
                  (lambda ()
                    (if (gx#stx-pair? _e8752287532_)
                        (let ((_e8752587540_ (gx#syntax-e _e8752287532_)))
                          (let ((_hd8752687543_ (##car _e8752587540_))
                                (_tl8752787545_ (##cdr _e8752587540_)))
                            (if (gx#stx-pair? _tl8752787545_)
                                (let ((_e8752887548_
                                       (gx#syntax-e _tl8752787545_)))
                                  (let ((_hd8752987551_ (##car _e8752887548_))
                                        (_tl8753087553_ (##cdr _e8752887548_)))
                                    (let* ((_hd87556_ _hd8752987551_)
                                           (_body87558_ _tl8753087553_))
                                      (if (and (gx#stx-list? _hd87556_)
                                               (gx#stx-list? _body87558_)
                                               (not (gx#stx-null?
                                                     _body87558_)))
                                          (gx#core-cons*
                                           _form87519_
                                           (gx#stx-map1
                                            _generate87521_
                                            _hd87556_)
                                           _body87558_)
                                          (_E8752487536_)))))
                                (_E8752487536_))))
                        (_E8752487536_)))))
            (_E8752387560_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx87610_)
        (let ((_form87612_ '%#let-values))
          (gx#macro-expand-let-values__% _stx87610_ _form87612_))))
    (define gx#macro-expand-let-values
      (lambda _g89995_
        (let ((_g89994_ (##length _g89995_)))
          (cond ((##fx= _g89994_ 1)
                 (apply (lambda (_stx87610_)
                          (gx#macro-expand-let-values__0 _stx87610_))
                        _g89995_))
                ((##fx= _g89994_ 2)
                 (apply (lambda (_stx87614_ _form87615_)
                          (gx#macro-expand-let-values__%
                           _stx87614_
                           _form87615_))
                        _g89995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g89995_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx87515_)
        (gx#macro-expand-let-values__% _stx87515_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx87513_)
        (gx#macro-expand-let-values__% _stx87513_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx87404_)
        (let* ((_e8740587431_ _stx87404_)
               (_E8741787435_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8740587431_)))
               (_E8740787477_
                (lambda ()
                  (if (gx#stx-pair? _e8740587431_)
                      (let ((_e8741887439_ (gx#syntax-e _e8740587431_)))
                        (let ((_hd8741987442_ (##car _e8741887439_))
                              (_tl8742087444_ (##cdr _e8741887439_)))
                          (if (gx#stx-pair? _tl8742087444_)
                              (let ((_e8742187447_
                                     (gx#syntax-e _tl8742087444_)))
                                (let ((_hd8742287450_ (##car _e8742187447_))
                                      (_tl8742387452_ (##cdr _e8742187447_)))
                                  (let ((_test87455_ _hd8742287450_))
                                    (if (gx#stx-pair? _tl8742387452_)
                                        (let ((_e8742487457_
                                               (gx#syntax-e _tl8742387452_)))
                                          (let ((_hd8742587460_
                                                 (##car _e8742487457_))
                                                (_tl8742687462_
                                                 (##cdr _e8742487457_)))
                                            (let ((_K87465_ _hd8742587460_))
                                              (if (gx#stx-pair? _tl8742687462_)
                                                  (let ((_e8742787467_
                                                         (gx#syntax-e
                                                          _tl8742687462_)))
                                                    (let ((_hd8742887470_
                                                           (##car _e8742787467_))
                                                          (_tl8742987472_
                                                           (##cdr _e8742787467_)))
                                                      (let ((_E87475_
                                                             _hd8742887470_))
                                                        (if (gx#stx-null?
                                                             _tl8742987472_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test87455_
                         _K87465_
                         _E87475_)
                        (_E8741787435_))
                    (_E8741787435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8741787435_)))))
                                        (_E8741787435_)))))
                              (_E8741787435_))))
                      (_E8741787435_))))
               (_E8740687509_
                (lambda ()
                  (if (gx#stx-pair? _e8740587431_)
                      (let ((_e8740887481_ (gx#syntax-e _e8740587431_)))
                        (let ((_hd8740987484_ (##car _e8740887481_))
                              (_tl8741087486_ (##cdr _e8740887481_)))
                          (if (gx#stx-pair? _tl8741087486_)
                              (let ((_e8741187489_
                                     (gx#syntax-e _tl8741087486_)))
                                (let ((_hd8741287492_ (##car _e8741187489_))
                                      (_tl8741387494_ (##cdr _e8741187489_)))
                                  (let ((_test87497_ _hd8741287492_))
                                    (if (gx#stx-pair? _tl8741387494_)
                                        (let ((_e8741487499_
                                               (gx#syntax-e _tl8741387494_)))
                                          (let ((_hd8741587502_
                                                 (##car _e8741487499_))
                                                (_tl8741687504_
                                                 (##cdr _e8741487499_)))
                                            (let ((_K87507_ _hd8741587502_))
                                              (if (gx#stx-null? _tl8741687504_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test87497_
                                                       _K87507_
                                                       '#!void)
                                                      (_E8740787477_))
                                                  (_E8740787477_)))))
                                        (_E8740787477_)))))
                              (_E8740787477_))))
                      (_E8740787477_)))))
          (_E8740687509_))))
    (define gx#free-identifier=?
      (lambda (_xid87392_ _yid87393_)
        (let ((_xe87395_ (gx#resolve-identifier__0 _xid87392_))
              (_ye87396_ (gx#resolve-identifier__0 _yid87393_)))
          (if (and _xe87395_ _ye87396_)
              (let ((_$e87398_ (eq? _xe87395_ _ye87396_)))
                (if _$e87398_
                    _$e87398_
                    (if (##structure-instance-of? _xe87395_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye87396_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe87395_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye87396_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe87395_ _ye87396_)
                  '#f
                  (gx#stx-eq? _xid87392_ _yid87393_))))))
    (define gx#bound-identifier=?
      (lambda (_xid87376_ _yid87377_)
        (letrec ((_context87379_
                  (lambda (_e87390_)
                    (if (##structure-direct-instance-of?
                         _e87390_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e87390_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks87380_
                  (lambda (_e87388_)
                    (if (symbol? _e87388_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e87388_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e87388_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e87388_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap87381_
                  (lambda (_e87386_)
                    (if (symbol? _e87386_)
                        _e87386_
                        (gx#syntax-local-unwrap _e87386_)))))
          (let ((_x87383_ (_unwrap87381_ _xid87376_))
                (_y87384_ (_unwrap87381_ _yid87377_)))
            (if (gx#stx-eq? _x87383_ _y87384_)
                (if (eq? (_context87379_ _x87383_) (_context87379_ _y87384_))
                    (equal? (_marks87380_ _x87383_) (_marks87380_ _y87384_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx87374_)
        (if (gx#identifier? _stx87374_)
            (gx#core-identifier=? _stx87374_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx87372_)
        (if (gx#identifier? _stx87372_)
            (gx#core-identifier=? _stx87372_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x87370_)
        (if (gx#identifier? _x87370_)
            (if (not (gx#underscore? _x87370_)) _x87370_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx87316_ _where87317_)
        (let _lp87319_ ((_rest87321_ (gx#syntax->list _stx87316_)))
          (let* ((_rest8732287330_ _rest87321_)
                 (_else8732487338_ (lambda () '#t))
                 (_K8732687348_
                  (lambda (_rest87341_ _hd87342_)
                    (if (not (gx#identifier? _hd87342_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where87317_
                         _hd87342_)
                        (if (find (lambda (_g8734387345_)
                                    (gx#bound-identifier=?
                                     _g8734387345_
                                     _hd87342_))
                                  _rest87341_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where87317_
                             _hd87342_)
                            (_lp87319_ _rest87341_))))))
            (if (##pair? _rest8732287330_)
                (let ((_hd8732787351_ (##car _rest8732287330_))
                      (_tl8732887353_ (##cdr _rest8732287330_)))
                  (let* ((_hd87356_ _hd8732787351_)
                         (_rest87358_ _tl8732887353_))
                    (_K8732687348_ _rest87358_ _hd87356_)))
                (_else8732487338_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx87363_)
        (let ((_where87365_ _stx87363_))
          (gx#check-duplicate-identifiers__% _stx87363_ _where87365_))))
    (define gx#check-duplicate-identifiers
      (lambda _g89997_
        (let ((_g89996_ (##length _g89997_)))
          (cond ((##fx= _g89996_ 1)
                 (apply (lambda (_stx87363_)
                          (gx#check-duplicate-identifiers__0 _stx87363_))
                        _g89997_))
                ((##fx= _g89996_ 2)
                 (apply (lambda (_stx87367_ _where87368_)
                          (gx#check-duplicate-identifiers__%
                           _stx87367_
                           _where87368_))
                        _g89997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g89997_))))))
    (define gx#core-bind-values?
      (lambda (_stx87308_)
        (gx#stx-andmap
         (lambda (_x87310_)
           (let ((_$e87312_ (gx#identifier? _x87310_)))
             (if _$e87312_ _$e87312_ (gx#stx-false? _x87310_))))
         _stx87308_)))
    (define gx#core-bind-values!__%
      (lambda (_stx87272_ _rebind?87273_ _phi87274_ _ctx87275_)
        (gx#stx-for-each1
         (lambda (_id87277_)
           (if (gx#identifier? _id87277_)
               (gx#core-bind-runtime!__%
                _id87277_
                _rebind?87273_
                _phi87274_
                _ctx87275_)
               '#!void))
         _stx87272_)))
    (define gx#core-bind-values!__0
      (lambda (_stx87282_)
        (let* ((_rebind?87284_ '#f)
               (_phi87286_ (gx#current-expander-phi))
               (_ctx87288_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87282_
           _rebind?87284_
           _phi87286_
           _ctx87288_))))
    (define gx#core-bind-values!__1
      (lambda (_stx87290_ _rebind?87291_)
        (let* ((_phi87293_ (gx#current-expander-phi))
               (_ctx87295_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87290_
           _rebind?87291_
           _phi87293_
           _ctx87295_))))
    (define gx#core-bind-values!__2
      (lambda (_stx87297_ _rebind?87298_ _phi87299_)
        (let ((_ctx87301_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx87297_
           _rebind?87298_
           _phi87299_
           _ctx87301_))))
    (define gx#core-bind-values!
      (lambda _g89999_
        (let ((_g89998_ (##length _g89999_)))
          (cond ((##fx= _g89998_ 1)
                 (apply (lambda (_stx87282_)
                          (gx#core-bind-values!__0 _stx87282_))
                        _g89999_))
                ((##fx= _g89998_ 2)
                 (apply (lambda (_stx87290_ _rebind?87291_)
                          (gx#core-bind-values!__1 _stx87290_ _rebind?87291_))
                        _g89999_))
                ((##fx= _g89998_ 3)
                 (apply (lambda (_stx87297_ _rebind?87298_ _phi87299_)
                          (gx#core-bind-values!__2
                           _stx87297_
                           _rebind?87298_
                           _phi87299_))
                        _g89999_))
                ((##fx= _g89998_ 4)
                 (apply (lambda (_stx87303_
                                 _rebind?87304_
                                 _phi87305_
                                 _ctx87306_)
                          (gx#core-bind-values!__%
                           _stx87303_
                           _rebind?87304_
                           _phi87305_
                           _ctx87306_))
                        _g89999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g89999_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx87267_)
        (gx#stx-map1
         (lambda (_x87269_)
           (if (gx#identifier? _x87269_)
               (gx#core-quote-syntax__0 _x87269_)
               '#f))
         _stx87267_)))
    (define gx#core-runtime-ref?
      (lambda (_stx87260_)
        (if (gx#identifier? _stx87260_)
            (let* ((_bind87262_ (gx#resolve-identifier__0 _stx87260_))
                   (_$e87264_ (not _bind87262_)))
              (if _$e87264_
                  _$e87264_
                  (##structure-instance-of?
                   _bind87262_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id87252_ _form87253_)
        (let ((_bind87255_ (gx#resolve-identifier__0 _id87252_)))
          (if (##structure-instance-of? _bind87255_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id87252_)
              (if (not _bind87255_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id87252_)))
                      (gx#core-quote-syntax__0 _id87252_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form87253_
                       _id87252_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form87253_
                   _id87252_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id87211_ _rebind?87212_ _phi87213_ _ctx87214_)
        (let* ((_key87216_ (gx#core-identifier-key _id87211_))
               (_eid87218_
                (gx#make-binding-id__% _key87216_ '#f _phi87213_ _ctx87214_))
               (_bind87220_
                (if (##structure-instance-of? _ctx87214_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87218_
                     _key87216_
                     _phi87213_
                     _ctx87214_)
                    (if (##structure-instance-of?
                         _ctx87214_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87218_
                         _key87216_
                         _phi87213_)
                        (if (##structure-instance-of?
                             _ctx87214_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid87218_
                             _key87216_
                             _phi87213_)
                            (##structure
                             gx#runtime-binding::t
                             _eid87218_
                             _key87216_
                             _phi87213_))))))
          (gx#bind-identifier!__%
           _id87211_
           _bind87220_
           _rebind?87212_
           _phi87213_
           _ctx87214_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id87226_)
        (let* ((_rebind?87228_ '#f)
               (_phi87230_ (gx#current-expander-phi))
               (_ctx87232_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87226_
           _rebind?87228_
           _phi87230_
           _ctx87232_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id87234_ _rebind?87235_)
        (let* ((_phi87237_ (gx#current-expander-phi))
               (_ctx87239_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87234_
           _rebind?87235_
           _phi87237_
           _ctx87239_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id87241_ _rebind?87242_ _phi87243_)
        (let ((_ctx87245_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id87241_
           _rebind?87242_
           _phi87243_
           _ctx87245_))))
    (define gx#core-bind-runtime!
      (lambda _g90001_
        (let ((_g90000_ (##length _g90001_)))
          (cond ((##fx= _g90000_ 1)
                 (apply (lambda (_id87226_)
                          (gx#core-bind-runtime!__0 _id87226_))
                        _g90001_))
                ((##fx= _g90000_ 2)
                 (apply (lambda (_id87234_ _rebind?87235_)
                          (gx#core-bind-runtime!__1 _id87234_ _rebind?87235_))
                        _g90001_))
                ((##fx= _g90000_ 3)
                 (apply (lambda (_id87241_ _rebind?87242_ _phi87243_)
                          (gx#core-bind-runtime!__2
                           _id87241_
                           _rebind?87242_
                           _phi87243_))
                        _g90001_))
                ((##fx= _g90000_ 4)
                 (apply (lambda (_id87247_
                                 _rebind?87248_
                                 _phi87249_
                                 _ctx87250_)
                          (gx#core-bind-runtime!__%
                           _id87247_
                           _rebind?87248_
                           _phi87249_
                           _ctx87250_))
                        _g90001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g90001_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id87166_ _eid87167_ _rebind?87168_ _phi87169_ _ctx87170_)
        (let* ((_key87172_ (gx#core-identifier-key _id87166_))
               (_bind87174_
                (if (##structure-instance-of? _ctx87170_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid87167_
                     _key87172_
                     _phi87169_
                     _ctx87170_)
                    (if (##structure-instance-of?
                         _ctx87170_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid87167_
                         _key87172_
                         _phi87169_)
                        (##structure
                         gx#runtime-binding::t
                         _eid87167_
                         _key87172_
                         _phi87169_)))))
          (gx#bind-identifier!__%
           _id87166_
           _bind87174_
           _rebind?87168_
           _phi87169_
           _ctx87170_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id87180_ _eid87181_)
        (let* ((_rebind?87183_ '#f)
               (_phi87185_ (gx#current-expander-phi))
               (_ctx87187_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87180_
           _eid87181_
           _rebind?87183_
           _phi87185_
           _ctx87187_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id87189_ _eid87190_ _rebind?87191_)
        (let* ((_phi87193_ (gx#current-expander-phi))
               (_ctx87195_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87189_
           _eid87190_
           _rebind?87191_
           _phi87193_
           _ctx87195_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id87197_ _eid87198_ _rebind?87199_ _phi87200_)
        (let ((_ctx87202_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id87197_
           _eid87198_
           _rebind?87199_
           _phi87200_
           _ctx87202_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g90003_
        (let ((_g90002_ (##length _g90003_)))
          (cond ((##fx= _g90002_ 2)
                 (apply (lambda (_id87180_ _eid87181_)
                          (gx#core-bind-runtime-reference!__0
                           _id87180_
                           _eid87181_))
                        _g90003_))
                ((##fx= _g90002_ 3)
                 (apply (lambda (_id87189_ _eid87190_ _rebind?87191_)
                          (gx#core-bind-runtime-reference!__1
                           _id87189_
                           _eid87190_
                           _rebind?87191_))
                        _g90003_))
                ((##fx= _g90002_ 4)
                 (apply (lambda (_id87197_
                                 _eid87198_
                                 _rebind?87199_
                                 _phi87200_)
                          (gx#core-bind-runtime-reference!__2
                           _id87197_
                           _eid87198_
                           _rebind?87199_
                           _phi87200_))
                        _g90003_))
                ((##fx= _g90002_ 5)
                 (apply (lambda (_id87204_
                                 _eid87205_
                                 _rebind?87206_
                                 _phi87207_
                                 _ctx87208_)
                          (gx#core-bind-runtime-reference!__%
                           _id87204_
                           _eid87205_
                           _rebind?87206_
                           _phi87207_
                           _ctx87208_))
                        _g90003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g90003_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id87126_ _eid87127_ _rebind?87128_ _phi87129_ _ctx87130_)
        (gx#bind-identifier!__%
         _id87126_
         (##structure
          gx#extern-binding::t
          _eid87127_
          (gx#core-identifier-key _id87126_)
          _phi87129_)
         _rebind?87128_
         _phi87129_
         _ctx87130_)))
    (define gx#core-bind-extern!__0
      (lambda (_id87135_ _eid87136_)
        (let* ((_rebind?87138_ '#f)
               (_phi87140_ (gx#current-expander-phi))
               (_ctx87142_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87135_
           _eid87136_
           _rebind?87138_
           _phi87140_
           _ctx87142_))))
    (define gx#core-bind-extern!__1
      (lambda (_id87144_ _eid87145_ _rebind?87146_)
        (let* ((_phi87148_ (gx#current-expander-phi))
               (_ctx87150_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87144_
           _eid87145_
           _rebind?87146_
           _phi87148_
           _ctx87150_))))
    (define gx#core-bind-extern!__2
      (lambda (_id87152_ _eid87153_ _rebind?87154_ _phi87155_)
        (let ((_ctx87157_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id87152_
           _eid87153_
           _rebind?87154_
           _phi87155_
           _ctx87157_))))
    (define gx#core-bind-extern!
      (lambda _g90005_
        (let ((_g90004_ (##length _g90005_)))
          (cond ((##fx= _g90004_ 2)
                 (apply (lambda (_id87135_ _eid87136_)
                          (gx#core-bind-extern!__0 _id87135_ _eid87136_))
                        _g90005_))
                ((##fx= _g90004_ 3)
                 (apply (lambda (_id87144_ _eid87145_ _rebind?87146_)
                          (gx#core-bind-extern!__1
                           _id87144_
                           _eid87145_
                           _rebind?87146_))
                        _g90005_))
                ((##fx= _g90004_ 4)
                 (apply (lambda (_id87152_
                                 _eid87153_
                                 _rebind?87154_
                                 _phi87155_)
                          (gx#core-bind-extern!__2
                           _id87152_
                           _eid87153_
                           _rebind?87154_
                           _phi87155_))
                        _g90005_))
                ((##fx= _g90004_ 5)
                 (apply (lambda (_id87159_
                                 _eid87160_
                                 _rebind?87161_
                                 _phi87162_
                                 _ctx87163_)
                          (gx#core-bind-extern!__%
                           _id87159_
                           _eid87160_
                           _rebind?87161_
                           _phi87162_
                           _ctx87163_))
                        _g90005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g90005_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id87080_ _e87081_ _rebind?87082_ _phi87083_ _ctx87084_)
        (gx#bind-identifier!__%
         _id87080_
         (let ((_key87089_ (gx#core-identifier-key _id87080_))
               (_e87090_
                (if (or (##structure-instance-of? _e87081_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e87081_
                         'gx#expander-context::t))
                    _e87081_
                    (##structure
                     gx#user-expander::t
                     _e87081_
                     _ctx87084_
                     _phi87083_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key87089_ '#t _phi87083_ _ctx87084_)
            _key87089_
            _phi87083_
            _e87090_))
         _rebind?87082_
         _phi87083_
         _ctx87084_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id87095_ _e87096_)
        (let* ((_rebind?87098_ '#f)
               (_phi87100_ (gx#current-expander-phi))
               (_ctx87102_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87095_
           _e87096_
           _rebind?87098_
           _phi87100_
           _ctx87102_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id87104_ _e87105_ _rebind?87106_)
        (let* ((_phi87108_ (gx#current-expander-phi))
               (_ctx87110_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87104_
           _e87105_
           _rebind?87106_
           _phi87108_
           _ctx87110_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id87112_ _e87113_ _rebind?87114_ _phi87115_)
        (let ((_ctx87117_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id87112_
           _e87113_
           _rebind?87114_
           _phi87115_
           _ctx87117_))))
    (define gx#core-bind-syntax!
      (lambda _g90007_
        (let ((_g90006_ (##length _g90007_)))
          (cond ((##fx= _g90006_ 2)
                 (apply (lambda (_id87095_ _e87096_)
                          (gx#core-bind-syntax!__0 _id87095_ _e87096_))
                        _g90007_))
                ((##fx= _g90006_ 3)
                 (apply (lambda (_id87104_ _e87105_ _rebind?87106_)
                          (gx#core-bind-syntax!__1
                           _id87104_
                           _e87105_
                           _rebind?87106_))
                        _g90007_))
                ((##fx= _g90006_ 4)
                 (apply (lambda (_id87112_ _e87113_ _rebind?87114_ _phi87115_)
                          (gx#core-bind-syntax!__2
                           _id87112_
                           _e87113_
                           _rebind?87114_
                           _phi87115_))
                        _g90007_))
                ((##fx= _g90006_ 5)
                 (apply (lambda (_id87119_
                                 _e87120_
                                 _rebind?87121_
                                 _phi87122_
                                 _ctx87123_)
                          (gx#core-bind-syntax!__%
                           _id87119_
                           _e87120_
                           _rebind?87121_
                           _phi87122_
                           _ctx87123_))
                        _g90007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g90007_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id87063_ _e87064_ _rebind?87065_)
        (gx#core-bind-syntax!__%
         _id87063_
         _e87064_
         _rebind?87065_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id87070_ _e87071_)
        (let ((_rebind?87073_ '#f))
          (gx#core-bind-root-syntax!__% _id87070_ _e87071_ _rebind?87073_))))
    (define gx#core-bind-root-syntax!
      (lambda _g90009_
        (let ((_g90008_ (##length _g90009_)))
          (cond ((##fx= _g90008_ 2)
                 (apply (lambda (_id87070_ _e87071_)
                          (gx#core-bind-root-syntax!__0 _id87070_ _e87071_))
                        _g90009_))
                ((##fx= _g90008_ 3)
                 (apply (lambda (_id87075_ _e87076_ _rebind?87077_)
                          (gx#core-bind-root-syntax!__%
                           _id87075_
                           _e87076_
                           _rebind?87077_))
                        _g90009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g90009_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id87021_ _alias-id87022_ _rebind?87023_ _phi87024_ _ctx87025_)
        (gx#bind-identifier!__%
         _id87021_
         (let ((_key87027_ (gx#core-identifier-key _id87021_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key87027_ '#t _phi87024_ _ctx87025_)
            _key87027_
            _phi87024_
            _alias-id87022_))
         _rebind?87023_
         _phi87024_
         _ctx87025_)))
    (define gx#core-bind-alias!__0
      (lambda (_id87032_ _alias-id87033_)
        (let* ((_rebind?87035_ '#f)
               (_phi87037_ (gx#current-expander-phi))
               (_ctx87039_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87032_
           _alias-id87033_
           _rebind?87035_
           _phi87037_
           _ctx87039_))))
    (define gx#core-bind-alias!__1
      (lambda (_id87041_ _alias-id87042_ _rebind?87043_)
        (let* ((_phi87045_ (gx#current-expander-phi))
               (_ctx87047_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87041_
           _alias-id87042_
           _rebind?87043_
           _phi87045_
           _ctx87047_))))
    (define gx#core-bind-alias!__2
      (lambda (_id87049_ _alias-id87050_ _rebind?87051_ _phi87052_)
        (let ((_ctx87054_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id87049_
           _alias-id87050_
           _rebind?87051_
           _phi87052_
           _ctx87054_))))
    (define gx#core-bind-alias!
      (lambda _g90011_
        (let ((_g90010_ (##length _g90011_)))
          (cond ((##fx= _g90010_ 2)
                 (apply (lambda (_id87032_ _alias-id87033_)
                          (gx#core-bind-alias!__0 _id87032_ _alias-id87033_))
                        _g90011_))
                ((##fx= _g90010_ 3)
                 (apply (lambda (_id87041_ _alias-id87042_ _rebind?87043_)
                          (gx#core-bind-alias!__1
                           _id87041_
                           _alias-id87042_
                           _rebind?87043_))
                        _g90011_))
                ((##fx= _g90010_ 4)
                 (apply (lambda (_id87049_
                                 _alias-id87050_
                                 _rebind?87051_
                                 _phi87052_)
                          (gx#core-bind-alias!__2
                           _id87049_
                           _alias-id87050_
                           _rebind?87051_
                           _phi87052_))
                        _g90011_))
                ((##fx= _g90010_ 5)
                 (apply (lambda (_id87056_
                                 _alias-id87057_
                                 _rebind?87058_
                                 _phi87059_
                                 _ctx87060_)
                          (gx#core-bind-alias!__%
                           _id87056_
                           _alias-id87057_
                           _rebind?87058_
                           _phi87059_
                           _ctx87060_))
                        _g90011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g90011_))))))
    (define gx#make-binding-id__%
      (lambda (_key86978_ _syntax?86979_ _phi86980_ _ctx86981_)
        (if (uninterned-symbol? _key86978_)
            (gensym 'L)
            (if (pair? _key86978_)
                (gensym (car _key86978_))
                (if (##structure-instance-of? _ctx86981_ 'gx#top-context::t)
                    (let ((_ns86983_
                           (gx#core-context-namespace__% _ctx86981_)))
                      (if (and (fxzero? _phi86980_) (not _syntax?86979_))
                          (if _ns86983_
                              (make-symbol__1 _ns86983_ '"#" _key86978_)
                              _key86978_)
                          (if _syntax?86979_
                              (make-symbol__1
                               (let ((_$e86985_ _ns86983_))
                                 (if _$e86985_ _$e86985_ '""))
                               '"[:"
                               (number->string _phi86980_)
                               '":]#"
                               _key86978_)
                              (make-symbol__1
                               (let ((_$e86988_ _ns86983_))
                                 (if _$e86988_ _$e86988_ '""))
                               '"["
                               (number->string _phi86980_)
                               '"]#"
                               _key86978_))))
                    (gensym _key86978_))))))
    (define gx#make-binding-id__0
      (lambda (_key86994_)
        (let* ((_syntax?86996_ '#f)
               (_phi86998_ (gx#current-expander-phi))
               (_ctx87000_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key86994_
           _syntax?86996_
           _phi86998_
           _ctx87000_))))
    (define gx#make-binding-id__1
      (lambda (_key87002_ _syntax?87003_)
        (let* ((_phi87005_ (gx#current-expander-phi))
               (_ctx87007_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87002_
           _syntax?87003_
           _phi87005_
           _ctx87007_))))
    (define gx#make-binding-id__2
      (lambda (_key87009_ _syntax?87010_ _phi87011_)
        (let ((_ctx87013_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key87009_
           _syntax?87010_
           _phi87011_
           _ctx87013_))))
    (define gx#make-binding-id
      (lambda _g90013_
        (let ((_g90012_ (##length _g90013_)))
          (cond ((##fx= _g90012_ 1)
                 (apply (lambda (_key86994_)
                          (gx#make-binding-id__0 _key86994_))
                        _g90013_))
                ((##fx= _g90012_ 2)
                 (apply (lambda (_key87002_ _syntax?87003_)
                          (gx#make-binding-id__1 _key87002_ _syntax?87003_))
                        _g90013_))
                ((##fx= _g90012_ 3)
                 (apply (lambda (_key87009_ _syntax?87010_ _phi87011_)
                          (gx#make-binding-id__2
                           _key87009_
                           _syntax?87010_
                           _phi87011_))
                        _g90013_))
                ((##fx= _g90012_ 4)
                 (apply (lambda (_key87015_
                                 _syntax?87016_
                                 _phi87017_
                                 _ctx87018_)
                          (gx#make-binding-id__%
                           _key87015_
                           _syntax?87016_
                           _phi87017_
                           _ctx87018_))
                        _g90013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g90013_))))))))
