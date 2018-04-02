(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (##make-promise
     (lambda ()
       (let ((_tbl17001_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl17001_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl17001_ '%#lambda gxc#xform-identity)
           (table-set! _tbl17001_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl17001_ '%#let-values gxc#xform-identity)
           (table-set! _tbl17001_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl17001_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl17001_ '%#quote gxc#xform-identity)
           (table-set! _tbl17001_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl17001_ '%#call gxc#xform-identity)
           (table-set! _tbl17001_ '%#if gxc#xform-identity)
           (table-set! _tbl17001_ '%#ref gxc#xform-identity)
           (table-set! _tbl17001_ '%#set! gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl17001_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl17001_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl17001_)))))
  (define gxc#&identity-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl16997_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl16997_ '%#begin gxc#xform-identity)
           (table-set! _tbl16997_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl16997_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl16997_ '%#module gxc#xform-identity)
           (table-set! _tbl16997_ '%#import gxc#xform-identity)
           (table-set! _tbl16997_ '%#export gxc#xform-identity)
           (table-set! _tbl16997_ '%#provide gxc#xform-identity)
           (table-set! _tbl16997_ '%#extern gxc#xform-identity)
           (table-set! _tbl16997_ '%#define-values gxc#xform-identity)
           (table-set! _tbl16997_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl16997_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl16997_ '%#declare gxc#xform-identity)
           _tbl16997_)))))
  (define gxc#&identity
    (##make-promise
     (lambda ()
       (let ((_tbl16993_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16993_ (force gxc#&identity-special-form))
           (hash-copy! _tbl16993_ (force gxc#&identity-expression))
           _tbl16993_)))))
  (define gxc#&basic-xform-expression
    (##make-promise
     (lambda ()
       (let ((_tbl16989_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl16989_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl16989_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl16989_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl16989_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl16989_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl16989_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl16989_ '%#quote gxc#xform-identity)
           (table-set! _tbl16989_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl16989_ '%#call gxc#xform-operands)
           (table-set! _tbl16989_ '%#if gxc#xform-operands)
           (table-set! _tbl16989_ '%#ref gxc#xform-identity)
           (table-set! _tbl16989_ '%#set! gxc#xform-setq%)
           (table-set! _tbl16989_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl16989_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl16989_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl16989_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl16989_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl16989_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl16989_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl16989_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl16989_)))))
  (define gxc#&basic-xform
    (##make-promise
     (lambda ()
       (let ((_tbl16985_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16985_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl16985_ (force gxc#&identity))
           (table-set! _tbl16985_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16985_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl16985_ '%#module gxc#xform-module%)
           (table-set! _tbl16985_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl16985_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl16985_)))))
  (define gxc#&collect-mutators
    (##make-promise
     (lambda ()
       (let ((_tbl16981_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16981_ (force gxc#&void))
           (table-set! _tbl16981_ '%#begin gxc#collect-begin%)
           (table-set! _tbl16981_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl16981_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl16981_ '%#module gxc#collect-module%)
           (table-set! _tbl16981_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl16981_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl16981_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl16981_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl16981_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl16981_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl16981_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl16981_ '%#call gxc#collect-operands)
           (table-set! _tbl16981_ '%#if gxc#collect-operands)
           (table-set! _tbl16981_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl16981_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl16981_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl16981_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl16981_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl16981_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl16981_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl16981_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl16981_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl16981_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx16974_ . _args16976_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16974_ _args16976_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (##make-promise
     (lambda ()
       (let ((_tbl16971_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16971_ (force gxc#&basic-xform-expression))
           (table-set! _tbl16971_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16971_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl16971_ '%#set! gxc#expression-subst-setq%)
           _tbl16971_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx16964_ . _args16966_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16964_ _args16966_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (##make-promise
     (lambda ()
       (let ((_tbl16961_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16961_ (force gxc#&expression-subst))
           (table-set! _tbl16961_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl16961_ '%#set! gxc#expression-subst*-setq%)
           _tbl16961_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx16954_ . _args16956_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16954_ _args16956_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (##make-promise
     (lambda ()
       (let ((_tbl16951_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16951_ (force gxc#&false-expression))
           (table-set! _tbl16951_ '%#begin gxc#find-body%)
           (table-set!
            _tbl16951_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl16951_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl16951_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl16951_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl16951_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl16951_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl16951_ '%#call gxc#find-body%)
           (table-set! _tbl16951_ '%#if gxc#find-body%)
           (table-set! _tbl16951_ '%#set! gxc#find-setq%)
           (table-set! _tbl16951_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl16951_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl16951_)))))
  (define gxc#&find-var-refs
    (##make-promise
     (lambda ()
       (let ((_tbl16947_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16947_ (force gxc#&find-expression))
           (table-set! _tbl16947_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl16947_ '%#set! gxc#find-var-refs-setq%)
           _tbl16947_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx16940_ . _args16942_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16940_ _args16942_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (##make-promise
     (lambda ()
       (let ((_tbl16937_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16937_ (force gxc#&collect-expression-refs))
           (table-set! _tbl16937_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl16937_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl16937_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx16930_ . _args16932_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16930_ _args16932_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx16927_ . _args16928_) _stx16927_))
  (define gxc#xform-wrap-source
    (lambda (_stx16924_ _src-stx16925_)
      (gx#stx-wrap-source _stx16924_ (gx#stx-source _src-stx16925_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args16918_)
      (lambda (_g1691916921_)
        (apply gxc#compile-e _g1691916921_ _args16918_))))
  (define gxc#xform-begin%
    (lambda (_stx16877_ . _args16878_)
      (let* ((_g1688016890_
              (lambda (_g1688116887_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1688116887_)))
             (_g1687916915_
              (lambda (_g1688116893_)
                (if (gx#stx-pair? _g1688116893_)
                    (let ((_e1688316895_ (gx#stx-e _g1688116893_)))
                      (let ((_hd1688416898_ (##car _e1688316895_))
                            (_tl1688516900_ (##cdr _e1688316895_)))
                        ((lambda (_L16903_)
                           (let ((_forms16913_
                                  (map (gxc#xform-apply-compile-e _args16878_)
                                       _L16903_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms16913_)
                              _stx16877_)))
                         _tl1688516900_)))
                    (_g1688016890_ _g1688116893_)))))
        (_g1687916915_ _stx16877_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx16835_ . _args16836_)
      (let* ((_g1683816848_
              (lambda (_g1683916845_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1683916845_)))
             (_g1683716874_
              (lambda (_g1683916851_)
                (if (gx#stx-pair? _g1683916851_)
                    (let ((_e1684116853_ (gx#stx-e _g1683916851_)))
                      (let ((_hd1684216856_ (##car _e1684116853_))
                            (_tl1684316858_ (##cdr _e1684116853_)))
                        ((lambda (_L16861_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms16872_
                                     (map (gxc#xform-apply-compile-e
                                           _args16836_)
                                          _L16861_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms16872_)
                                 _stx16835_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1684316858_)))
                    (_g1683816848_ _g1683916851_)))))
        (_g1683716874_ _stx16835_))))
  (define gxc#xform-module%
    (lambda (_stx16772_ . _args16773_)
      (let* ((_g1677516789_
              (lambda (_g1677616786_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1677616786_)))
             (_g1677416832_
              (lambda (_g1677616792_)
                (if (gx#stx-pair? _g1677616792_)
                    (let ((_e1677916794_ (gx#stx-e _g1677616792_)))
                      (let ((_hd1678016797_ (##car _e1677916794_))
                            (_tl1678116799_ (##cdr _e1677916794_)))
                        (if (gx#stx-pair? _tl1678116799_)
                            (let ((_e1678216802_ (gx#stx-e _tl1678116799_)))
                              (let ((_hd1678316805_ (##car _e1678216802_))
                                    (_tl1678416807_ (##cdr _e1678216802_)))
                                ((lambda (_L16810_ _L16811_)
                                   (let* ((_ctx16824_
                                           (gx#syntax-local-e__0 _L16811_))
                                          (_code16826_
                                           (##structure-ref
                                            _ctx16824_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code16829_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code16826_
                                                     _args16773_))
                                            gx#current-expander-context
                                            _ctx16824_)))
                                     (begin
                                       (##structure-set!
                                        _ctx16824_
                                        _code16829_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L16811_
                                                    (cons _code16829_ '())))
                                        _stx16772_))))
                                 _tl1678416807_
                                 _hd1678316805_)))
                            (_g1677516789_ _g1677616792_))))
                    (_g1677516789_ _g1677616792_)))))
        (_g1677416832_ _stx16772_))))
  (define gxc#xform-define-values%
    (lambda (_stx16702_ . _args16703_)
      (let* ((_g1670516722_
              (lambda (_g1670616719_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1670616719_)))
             (_g1670416769_
              (lambda (_g1670616725_)
                (if (gx#stx-pair? _g1670616725_)
                    (let ((_e1670916727_ (gx#stx-e _g1670616725_)))
                      (let ((_hd1671016730_ (##car _e1670916727_))
                            (_tl1671116732_ (##cdr _e1670916727_)))
                        (if (gx#stx-pair? _tl1671116732_)
                            (let ((_e1671216735_ (gx#stx-e _tl1671116732_)))
                              (let ((_hd1671316738_ (##car _e1671216735_))
                                    (_tl1671416740_ (##cdr _e1671216735_)))
                                (if (gx#stx-pair? _tl1671416740_)
                                    (let ((_e1671516743_
                                           (gx#stx-e _tl1671416740_)))
                                      (let ((_hd1671616746_
                                             (##car _e1671516743_))
                                            (_tl1671716748_
                                             (##cdr _e1671516743_)))
                                        (if (gx#stx-null? _tl1671716748_)
                                            ((lambda (_L16751_ _L16752_)
                                               (let ((_expr16767_
                                                      (apply gxc#compile-e
                                                             _L16751_
                                                             _args16703_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L16752_
                                                              (cons _expr16767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16702_)))
                                             _hd1671616746_
                                             _hd1671316738_)
                                            (_g1670516722_ _g1670616725_))))
                                    (_g1670516722_ _g1670616725_))))
                            (_g1670516722_ _g1670616725_))))
                    (_g1670516722_ _g1670616725_)))))
        (_g1670416769_ _stx16702_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx16631_ . _args16632_)
      (let* ((_g1663416651_
              (lambda (_g1663516648_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1663516648_)))
             (_g1663316699_
              (lambda (_g1663516654_)
                (if (gx#stx-pair? _g1663516654_)
                    (let ((_e1663816656_ (gx#stx-e _g1663516654_)))
                      (let ((_hd1663916659_ (##car _e1663816656_))
                            (_tl1664016661_ (##cdr _e1663816656_)))
                        (if (gx#stx-pair? _tl1664016661_)
                            (let ((_e1664116664_ (gx#stx-e _tl1664016661_)))
                              (let ((_hd1664216667_ (##car _e1664116664_))
                                    (_tl1664316669_ (##cdr _e1664116664_)))
                                (if (gx#stx-pair? _tl1664316669_)
                                    (let ((_e1664416672_
                                           (gx#stx-e _tl1664316669_)))
                                      (let ((_hd1664516675_
                                             (##car _e1664416672_))
                                            (_tl1664616677_
                                             (##cdr _e1664416672_)))
                                        (if (gx#stx-null? _tl1664616677_)
                                            ((lambda (_L16680_ _L16681_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr16697_
                                                         (apply gxc#compile-e
                                                                _L16680_
                                                                _args16632_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L16681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr16697_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx16631_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1664516675_
                                             _hd1664216667_)
                                            (_g1663416651_ _g1663516654_))))
                                    (_g1663416651_ _g1663516654_))))
                            (_g1663416651_ _g1663516654_))))
                    (_g1663416651_ _g1663516654_)))))
        (_g1663316699_ _stx16631_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx16561_ . _args16562_)
      (let* ((_g1656416581_
              (lambda (_g1656516578_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1656516578_)))
             (_g1656316628_
              (lambda (_g1656516584_)
                (if (gx#stx-pair? _g1656516584_)
                    (let ((_e1656816586_ (gx#stx-e _g1656516584_)))
                      (let ((_hd1656916589_ (##car _e1656816586_))
                            (_tl1657016591_ (##cdr _e1656816586_)))
                        (if (gx#stx-pair? _tl1657016591_)
                            (let ((_e1657116594_ (gx#stx-e _tl1657016591_)))
                              (let ((_hd1657216597_ (##car _e1657116594_))
                                    (_tl1657316599_ (##cdr _e1657116594_)))
                                (if (gx#stx-pair? _tl1657316599_)
                                    (let ((_e1657416602_
                                           (gx#stx-e _tl1657316599_)))
                                      (let ((_hd1657516605_
                                             (##car _e1657416602_))
                                            (_tl1657616607_
                                             (##cdr _e1657416602_)))
                                        (if (gx#stx-null? _tl1657616607_)
                                            ((lambda (_L16610_ _L16611_)
                                               (let ((_expr16626_
                                                      (apply gxc#compile-e
                                                             _L16610_
                                                             _args16562_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L16611_
                                                              (cons _expr16626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16561_)))
                                             _hd1657516605_
                                             _hd1657216597_)
                                            (_g1656416581_ _g1656516584_))))
                                    (_g1656416581_ _g1656516584_))))
                            (_g1656416581_ _g1656516584_))))
                    (_g1656416581_ _g1656516584_)))))
        (_g1656316628_ _stx16561_))))
  (define gxc#xform-lambda%
    (lambda (_stx16504_ . _args16505_)
      (let* ((_g1650716521_
              (lambda (_g1650816518_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1650816518_)))
             (_g1650616558_
              (lambda (_g1650816524_)
                (if (gx#stx-pair? _g1650816524_)
                    (let ((_e1651116526_ (gx#stx-e _g1650816524_)))
                      (let ((_hd1651216529_ (##car _e1651116526_))
                            (_tl1651316531_ (##cdr _e1651116526_)))
                        (if (gx#stx-pair? _tl1651316531_)
                            (let ((_e1651416534_ (gx#stx-e _tl1651316531_)))
                              (let ((_hd1651516537_ (##car _e1651416534_))
                                    (_tl1651616539_ (##cdr _e1651416534_)))
                                ((lambda (_L16542_ _L16543_)
                                   (let ((_body16556_
                                          (map (gxc#xform-apply-compile-e
                                                _args16505_)
                                               _L16542_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L16543_ _body16556_))
                                      _stx16504_)))
                                 _tl1651616539_
                                 _hd1651516537_)))
                            (_g1650716521_ _g1650816524_))))
                    (_g1650716521_ _g1650816524_)))))
        (_g1650616558_ _stx16504_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16417_ . _args16418_)
      (letrec ((_clause-e16420_
                (lambda (_clause16461_)
                  (let* ((_g1646316474_
                          (lambda (_g1646416471_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1646416471_)))
                         (_g1646216501_
                          (lambda (_g1646416477_)
                            (if (gx#stx-pair? _g1646416477_)
                                (let ((_e1646716479_ (gx#stx-e _g1646416477_)))
                                  (let ((_hd1646816482_ (##car _e1646716479_))
                                        (_tl1646916484_ (##cdr _e1646716479_)))
                                    ((lambda (_L16487_ _L16488_)
                                       (let ((_body16499_
                                              (map (gxc#xform-apply-compile-e
                                                    _args16418_)
                                                   _L16487_)))
                                         (cons _L16488_ _body16499_)))
                                     _tl1646916484_
                                     _hd1646816482_)))
                                (_g1646316474_ _g1646416477_)))))
                    (_g1646216501_ _clause16461_)))))
        (let* ((_g1642216432_
                (lambda (_g1642316429_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1642316429_)))
               (_g1642116458_
                (lambda (_g1642316435_)
                  (if (gx#stx-pair? _g1642316435_)
                      (let ((_e1642516437_ (gx#stx-e _g1642316435_)))
                        (let ((_hd1642616440_ (##car _e1642516437_))
                              (_tl1642716442_ (##cdr _e1642516437_)))
                          ((lambda (_L16445_)
                             (let ((_clauses16456_
                                    (map _clause-e16420_ _L16445_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses16456_)
                                _stx16417_)))
                           _tl1642716442_)))
                      (_g1642216432_ _g1642316435_)))))
          (_g1642116458_ _stx16417_)))))
  (define gxc#xform-let-values%
    (lambda (_stx16211_ . _args16212_)
      (let* ((_g1621416247_
              (lambda (_g1621516244_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1621516244_)))
             (_g1621316414_
              (lambda (_g1621516250_)
                (if (gx#stx-pair? _g1621516250_)
                    (let ((_e1622016252_ (gx#stx-e _g1621516250_)))
                      (let ((_hd1622116255_ (##car _e1622016252_))
                            (_tl1622216257_ (##cdr _e1622016252_)))
                        (if (gx#stx-pair? _tl1622216257_)
                            (let ((_e1622316260_ (gx#stx-e _tl1622216257_)))
                              (let ((_hd1622416263_ (##car _e1622316260_))
                                    (_tl1622516265_ (##cdr _e1622316260_)))
                                (if (gx#stx-pair/null? _hd1622416263_)
                                    (let ((_g17003_
                                           (gx#syntax-split-splice
                                            _hd1622416263_
                                            '0)))
                                      (begin
                                        (let ((_g17004_
                                               (if (##values? _g17003_)
                                                   (##vector-length _g17003_)
                                                   1)))
                                          (if (not (##fx= _g17004_ 2))
                                              (error "Context expects 2 values"
                                                     _g17004_)))
                                        (let ((_target1622616268_
                                               (##vector-ref _g17003_ 0))
                                              (_tl1622816270_
                                               (##vector-ref _g17003_ 1)))
                                          (if (gx#stx-null? _tl1622816270_)
                                              (letrec ((_loop1622916273_
                                                        (lambda (_hd1622716276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1623316278_
                         _hd1623416280_)
                  (if (gx#stx-pair? _hd1622716276_)
                      (let ((_e1623016283_ (gx#stx-e _hd1622716276_)))
                        (let ((_lp-hd1623116286_ (##car _e1623016283_))
                              (_lp-tl1623216288_ (##cdr _e1623016283_)))
                          (if (gx#stx-pair? _lp-hd1623116286_)
                              (let ((_e1623716291_
                                     (gx#stx-e _lp-hd1623116286_)))
                                (let ((_hd1623816294_ (##car _e1623716291_))
                                      (_tl1623916296_ (##cdr _e1623716291_)))
                                  (if (gx#stx-pair? _tl1623916296_)
                                      (let ((_e1624016299_
                                             (gx#stx-e _tl1623916296_)))
                                        (let ((_hd1624116302_
                                               (##car _e1624016299_))
                                              (_tl1624216304_
                                               (##cdr _e1624016299_)))
                                          (if (gx#stx-null? _tl1624216304_)
                                              (_loop1622916273_
                                               _lp-tl1623216288_
                                               (cons _hd1624116302_
                                                     _expr1623316278_)
                                               (cons _hd1623816294_
                                                     _hd1623416280_))
                                              (_g1621416247_ _g1621516250_))))
                                      (_g1621416247_ _g1621516250_))))
                              (_g1621416247_ _g1621516250_))))
                      (let ((_expr1623516307_ (reverse _expr1623316278_))
                            (_hd1623616309_ (reverse _hd1623416280_)))
                        ((lambda (_L16312_ _L16313_ _L16314_ _L16315_)
                           (let* ((_g1633416350_
                                   (lambda (_g1633516347_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1633516347_)))
                                  (_g1633316404_
                                   (lambda (_g1633516353_)
                                     (if (gx#stx-pair/null? _g1633516353_)
                                         (let ((_g17005_
                                                (gx#syntax-split-splice
                                                 _g1633516353_
                                                 '0)))
                                           (begin
                                             (let ((_g17006_
                                                    (if (##values? _g17005_)
                                                        (##vector-length
                                                         _g17005_)
                                                        1)))
                                               (if (not (##fx= _g17006_ 2))
                                                   (error "Context expects 2 values"
                                                          _g17006_)))
                                             (let ((_target1633716355_
                                                    (##vector-ref _g17005_ 0))
                                                   (_tl1633916357_
                                                    (##vector-ref _g17005_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1633916357_)
                                                   (letrec ((_loop1634016360_
                                                             (lambda (_hd1633816363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1634416365_)
                       (if (gx#stx-pair? _hd1633816363_)
                           (let ((_e1634116368_ (gx#syntax-e _hd1633816363_)))
                             (let ((_lp-hd1634216371_ (##car _e1634116368_))
                                   (_lp-tl1634316373_ (##cdr _e1634116368_)))
                               (_loop1634016360_
                                _lp-tl1634316373_
                                (cons _lp-hd1634216371_ _expr1634416365_))))
                           (let ((_expr1634516376_ (reverse _expr1634416365_)))
                             ((lambda (_L16379_)
                                (let ()
                                  (let ((_body16392_
                                         (map (gxc#xform-apply-compile-e
                                               _args16212_)
                                              _L16312_)))
                                    (gxc#xform-wrap-source
                                     (cons _L16315_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L16379_
                                                    _L16314_)
                                                   (foldr2 (lambda (_g1639316397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1639416399_
                            _g1639516401_)
                     (cons (cons _g1639416399_ (cons _g1639316397_ '()))
                           _g1639516401_))
                   '()
                   _L16379_
                   _L16314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body16392_))
                                     _stx16211_))))
                              _expr1634516376_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1634016360_
                                                      _target1633716355_
                                                      '()))
                                                   (_g1633416350_
                                                    _g1633516353_)))))
                                         (_g1633416350_ _g1633516353_)))))
                             (_g1633316404_
                              (map (gxc#xform-apply-compile-e _args16212_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1640616409_
                                                      _g1640716411_)
                                               (cons _g1640616409_
                                                     _g1640716411_))
                                             '()
                                             _L16313_))))))
                         _tl1622516265_
                         _expr1623516307_
                         _hd1623616309_
                         _hd1622116255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1622916273_
                                                 _target1622616268_
                                                 '()
                                                 '()))
                                              (_g1621416247_ _g1621516250_)))))
                                    (_g1621416247_ _g1621516250_))))
                            (_g1621416247_ _g1621516250_))))
                    (_g1621416247_ _g1621516250_)))))
        (_g1621316414_ _stx16211_))))
  (define gxc#xform-operands
    (lambda (_stx16167_ . _args16168_)
      (let* ((_g1617016181_
              (lambda (_g1617116178_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1617116178_)))
             (_g1616916208_
              (lambda (_g1617116184_)
                (if (gx#stx-pair? _g1617116184_)
                    (let ((_e1617416186_ (gx#stx-e _g1617116184_)))
                      (let ((_hd1617516189_ (##car _e1617416186_))
                            (_tl1617616191_ (##cdr _e1617416186_)))
                        ((lambda (_L16194_ _L16195_)
                           (let ((_rands16206_
                                  (map (gxc#xform-apply-compile-e _args16168_)
                                       _L16194_)))
                             (gxc#xform-wrap-source
                              (cons _L16195_ _rands16206_)
                              _stx16167_)))
                         _tl1617616191_
                         _hd1617516189_)))
                    (_g1617016181_ _g1617116184_)))))
        (_g1616916208_ _stx16167_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx16097_ . _args16098_)
      (let* ((_g1610016117_
              (lambda (_g1610116114_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1610116114_)))
             (_g1609916164_
              (lambda (_g1610116120_)
                (if (gx#stx-pair? _g1610116120_)
                    (let ((_e1610416122_ (gx#stx-e _g1610116120_)))
                      (let ((_hd1610516125_ (##car _e1610416122_))
                            (_tl1610616127_ (##cdr _e1610416122_)))
                        (if (gx#stx-pair? _tl1610616127_)
                            (let ((_e1610716130_ (gx#stx-e _tl1610616127_)))
                              (let ((_hd1610816133_ (##car _e1610716130_))
                                    (_tl1610916135_ (##cdr _e1610716130_)))
                                (if (gx#stx-pair? _tl1610916135_)
                                    (let ((_e1611016138_
                                           (gx#stx-e _tl1610916135_)))
                                      (let ((_hd1611116141_
                                             (##car _e1611016138_))
                                            (_tl1611216143_
                                             (##cdr _e1611016138_)))
                                        (if (gx#stx-null? _tl1611216143_)
                                            ((lambda (_L16146_ _L16147_)
                                               (let ((_expr16162_
                                                      (apply gxc#compile-e
                                                             _L16146_
                                                             _args16098_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L16147_
                                                              (cons _expr16162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16097_)))
                                             _hd1611116141_
                                             _hd1610816133_)
                                            (_g1610016117_ _g1610116120_))))
                                    (_g1610016117_ _g1610116120_))))
                            (_g1610016117_ _g1610116120_))))
                    (_g1610016117_ _g1610116120_)))))
        (_g1609916164_ _stx16097_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16028_)
      (let* ((_g1603016047_
              (lambda (_g1603116044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1603116044_)))
             (_g1602916094_
              (lambda (_g1603116050_)
                (if (gx#stx-pair? _g1603116050_)
                    (let ((_e1603416052_ (gx#stx-e _g1603116050_)))
                      (let ((_hd1603516055_ (##car _e1603416052_))
                            (_tl1603616057_ (##cdr _e1603416052_)))
                        (if (gx#stx-pair? _tl1603616057_)
                            (let ((_e1603716060_ (gx#stx-e _tl1603616057_)))
                              (let ((_hd1603816063_ (##car _e1603716060_))
                                    (_tl1603916065_ (##cdr _e1603716060_)))
                                (if (gx#stx-pair? _tl1603916065_)
                                    (let ((_e1604016068_
                                           (gx#stx-e _tl1603916065_)))
                                      (let ((_hd1604116071_
                                             (##car _e1604016068_))
                                            (_tl1604216073_
                                             (##cdr _e1604016068_)))
                                        (if (gx#stx-null? _tl1604216073_)
                                            ((lambda (_L16076_ _L16077_)
                                               (let ((_sym16092_
                                                      (gxc#identifier-symbol
                                                       _L16077_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym16092_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym16092_
                                                    '#t)
                                                   (gxc#compile-e _L16076_))))
                                             _hd1604116071_
                                             _hd1603816063_)
                                            (_g1603016047_ _g1603116050_))))
                                    (_g1603016047_ _g1603116050_))))
                            (_g1603016047_ _g1603116050_))))
                    (_g1603016047_ _g1603116050_)))))
        (_g1602916094_ _stx16028_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15975_ _id15976_ _new-id15977_)
      (let* ((_g1597915992_
              (lambda (_g1598015989_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1598015989_)))
             (_g1597816025_
              (lambda (_g1598015995_)
                (if (gx#stx-pair? _g1598015995_)
                    (let ((_e1598215997_ (gx#stx-e _g1598015995_)))
                      (let ((_hd1598316000_ (##car _e1598215997_))
                            (_tl1598416002_ (##cdr _e1598215997_)))
                        (if (gx#stx-pair? _tl1598416002_)
                            (let ((_e1598516005_ (gx#stx-e _tl1598416002_)))
                              (let ((_hd1598616008_ (##car _e1598516005_))
                                    (_tl1598716010_ (##cdr _e1598516005_)))
                                (if (gx#stx-null? _tl1598716010_)
                                    ((lambda (_L16013_)
                                       (if (gx#free-identifier=?
                                            _L16013_
                                            _id15976_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id15977_ '()))
                                            _stx15975_)
                                           _stx15975_))
                                     _hd1598616008_)
                                    (_g1597915992_ _g1598015995_))))
                            (_g1597915992_ _g1598015995_))))
                    (_g1597915992_ _g1598015995_)))))
        (_g1597816025_ _stx15975_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx15916_ _subst15917_)
      (let* ((_g1591915932_
              (lambda (_g1592015929_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1592015929_)))
             (_g1591815972_
              (lambda (_g1592015935_)
                (if (gx#stx-pair? _g1592015935_)
                    (let ((_e1592215937_ (gx#stx-e _g1592015935_)))
                      (let ((_hd1592315940_ (##car _e1592215937_))
                            (_tl1592415942_ (##cdr _e1592215937_)))
                        (if (gx#stx-pair? _tl1592415942_)
                            (let ((_e1592515945_ (gx#stx-e _tl1592415942_)))
                              (let ((_hd1592615948_ (##car _e1592515945_))
                                    (_tl1592715950_ (##cdr _e1592515945_)))
                                (if (gx#stx-null? _tl1592715950_)
                                    ((lambda (_L15953_)
                                       (let ((_$e15967_
                                              (find (lambda (_sub15965_)
                                                      (gx#free-identifier=?
                                                       _L15953_
                                                       (car _sub15965_)))
                                                    _subst15917_)))
                                         (if _$e15967_
                                             ((lambda (_sub15970_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub15970_)
                                                             '()))
                                                 _stx15916_))
                                              _$e15967_)
                                             _stx15916_)))
                                     _hd1592615948_)
                                    (_g1591915932_ _g1592015935_))))
                            (_g1591915932_ _g1592015935_))))
                    (_g1591915932_ _g1592015935_)))))
        (_g1591815972_ _stx15916_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx15844_ _id15845_ _new-id15846_)
      (let* ((_g1584815865_
              (lambda (_g1584915862_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1584915862_)))
             (_g1584715913_
              (lambda (_g1584915868_)
                (if (gx#stx-pair? _g1584915868_)
                    (let ((_e1585215870_ (gx#stx-e _g1584915868_)))
                      (let ((_hd1585315873_ (##car _e1585215870_))
                            (_tl1585415875_ (##cdr _e1585215870_)))
                        (if (gx#stx-pair? _tl1585415875_)
                            (let ((_e1585515878_ (gx#stx-e _tl1585415875_)))
                              (let ((_hd1585615881_ (##car _e1585515878_))
                                    (_tl1585715883_ (##cdr _e1585515878_)))
                                (if (gx#stx-pair? _tl1585715883_)
                                    (let ((_e1585815886_
                                           (gx#stx-e _tl1585715883_)))
                                      (let ((_hd1585915889_
                                             (##car _e1585815886_))
                                            (_tl1586015891_
                                             (##cdr _e1585815886_)))
                                        (if (gx#stx-null? _tl1586015891_)
                                            ((lambda (_L15894_ _L15895_)
                                               (let ((_new-expr15910_
                                                      (gxc#compile-e
                                                       _L15894_
                                                       _id15845_
                                                       _new-id15846_))
                                                     (_new-xid15911_
                                                      (if (gx#free-identifier=?
                                                           _L15895_
                                                           _id15845_)
                                                          _new-id15846_
                                                          _L15895_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15911_
                                                              (cons _new-expr15910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15844_)))
                                             _hd1585915889_
                                             _hd1585615881_)
                                            (_g1584815865_ _g1584915868_))))
                                    (_g1584815865_ _g1584915868_))))
                            (_g1584815865_ _g1584915868_))))
                    (_g1584815865_ _g1584915868_)))))
        (_g1584715913_ _stx15844_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx15768_ _subst15769_)
      (let* ((_g1577115788_
              (lambda (_g1577215785_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1577215785_)))
             (_g1577015841_
              (lambda (_g1577215791_)
                (if (gx#stx-pair? _g1577215791_)
                    (let ((_e1577515793_ (gx#stx-e _g1577215791_)))
                      (let ((_hd1577615796_ (##car _e1577515793_))
                            (_tl1577715798_ (##cdr _e1577515793_)))
                        (if (gx#stx-pair? _tl1577715798_)
                            (let ((_e1577815801_ (gx#stx-e _tl1577715798_)))
                              (let ((_hd1577915804_ (##car _e1577815801_))
                                    (_tl1578015806_ (##cdr _e1577815801_)))
                                (if (gx#stx-pair? _tl1578015806_)
                                    (let ((_e1578115809_
                                           (gx#stx-e _tl1578015806_)))
                                      (let ((_hd1578215812_
                                             (##car _e1578115809_))
                                            (_tl1578315814_
                                             (##cdr _e1578115809_)))
                                        (if (gx#stx-null? _tl1578315814_)
                                            ((lambda (_L15817_ _L15818_)
                                               (let ((_new-expr15838_
                                                      (gxc#compile-e
                                                       _L15817_
                                                       _subst15769_))
                                                     (_new-xid15839_
                                                      (let ((_$e15835_
                                                             (find (lambda (_sub15833_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L15818_ (car _sub15833_)))
                           _subst15769_)))
                (if _$e15835_ (cdr _$e15835_) _L15818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15839_
                                                              (cons _new-expr15838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15768_)))
                                             _hd1578215812_
                                             _hd1577915804_)
                                            (_g1577115788_ _g1577215791_))))
                                    (_g1577115788_ _g1577215791_))))
                            (_g1577115788_ _g1577215791_))))
                    (_g1577115788_ _g1577215791_)))))
        (_g1577015841_ _stx15768_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx15714_ _ht15715_)
      (let* ((_g1571715730_
              (lambda (_g1571815727_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1571815727_)))
             (_g1571615765_
              (lambda (_g1571815733_)
                (if (gx#stx-pair? _g1571815733_)
                    (let ((_e1572015735_ (gx#stx-e _g1571815733_)))
                      (let ((_hd1572115738_ (##car _e1572015735_))
                            (_tl1572215740_ (##cdr _e1572015735_)))
                        (if (gx#stx-pair? _tl1572215740_)
                            (let ((_e1572315743_ (gx#stx-e _tl1572215740_)))
                              (let ((_hd1572415746_ (##car _e1572315743_))
                                    (_tl1572515748_ (##cdr _e1572315743_)))
                                (if (gx#stx-null? _tl1572515748_)
                                    ((lambda (_L15751_)
                                       (let ((_eid15763_
                                              (gxc#identifier-symbol
                                               _L15751_)))
                                         (hash-update!
                                          _ht15715_
                                          _eid15763_
                                          1+
                                          '0)))
                                     _hd1572415746_)
                                    (_g1571715730_ _g1571815733_))))
                            (_g1571715730_ _g1571815733_))))
                    (_g1571715730_ _g1571815733_)))))
        (_g1571615765_ _stx15714_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx15644_ _ht15645_)
      (let* ((_g1564715664_
              (lambda (_g1564815661_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1564815661_)))
             (_g1564615711_
              (lambda (_g1564815667_)
                (if (gx#stx-pair? _g1564815667_)
                    (let ((_e1565115669_ (gx#stx-e _g1564815667_)))
                      (let ((_hd1565215672_ (##car _e1565115669_))
                            (_tl1565315674_ (##cdr _e1565115669_)))
                        (if (gx#stx-pair? _tl1565315674_)
                            (let ((_e1565415677_ (gx#stx-e _tl1565315674_)))
                              (let ((_hd1565515680_ (##car _e1565415677_))
                                    (_tl1565615682_ (##cdr _e1565415677_)))
                                (if (gx#stx-pair? _tl1565615682_)
                                    (let ((_e1565715685_
                                           (gx#stx-e _tl1565615682_)))
                                      (let ((_hd1565815688_
                                             (##car _e1565715685_))
                                            (_tl1565915690_
                                             (##cdr _e1565715685_)))
                                        (if (gx#stx-null? _tl1565915690_)
                                            ((lambda (_L15693_ _L15694_)
                                               (let ((_eid15709_
                                                      (gxc#identifier-symbol
                                                       _L15694_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht15645_
                                                    _eid15709_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L15693_
                                                    _ht15645_))))
                                             _hd1565815688_
                                             _hd1565515680_)
                                            (_g1564715664_ _g1564815667_))))
                                    (_g1564715664_ _g1564815667_))))
                            (_g1564715664_ _g1564815667_))))
                    (_g1564715664_ _g1564815667_)))))
        (_g1564615711_ _stx15644_))))
  (define gxc#find-body%
    (lambda (_stx15557_ _arg15558_)
      (let* ((_g1556015579_
              (lambda (_g1556115576_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1556115576_)))
             (_g1555915641_
              (lambda (_g1556115582_)
                (if (gx#stx-pair? _g1556115582_)
                    (let ((_e1556315584_ (gx#stx-e _g1556115582_)))
                      (let ((_hd1556415587_ (##car _e1556315584_))
                            (_tl1556515589_ (##cdr _e1556315584_)))
                        (if (gx#stx-pair/null? _tl1556515589_)
                            (let ((_g17007_
                                   (gx#syntax-split-splice _tl1556515589_ '0)))
                              (begin
                                (let ((_g17008_
                                       (if (##values? _g17007_)
                                           (##vector-length _g17007_)
                                           1)))
                                  (if (not (##fx= _g17008_ 2))
                                      (error "Context expects 2 values"
                                             _g17008_)))
                                (let ((_target1556615592_
                                       (##vector-ref _g17007_ 0))
                                      (_tl1556815594_
                                       (##vector-ref _g17007_ 1)))
                                  (if (gx#stx-null? _tl1556815594_)
                                      (letrec ((_loop1556915597_
                                                (lambda (_hd1556715600_
                                                         _expr1557315602_)
                                                  (if (gx#stx-pair?
                                                       _hd1556715600_)
                                                      (let ((_e1557015605_
                                                             (gx#stx-e
                                                              _hd1556715600_)))
                                                        (let ((_lp-hd1557115608_
                                                               (##car _e1557015605_))
                                                              (_lp-tl1557215610_
                                                               (##cdr _e1557015605_)))
                                                          (_loop1556915597_
                                                           _lp-tl1557215610_
                                                           (cons _lp-hd1557115608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1557315602_))))
              (let ((_expr1557415613_ (reverse _expr1557315602_)))
                ((lambda (_L15616_)
                   (ormap1 (lambda (_g1562915631_)
                             (gxc#compile-e _g1562915631_ _arg15558_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1563315636_ _g1563415638_)
                                       (cons _g1563315636_ _g1563415638_))
                                     '()
                                     _L15616_))))
                 _expr1557415613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1556915597_
                                         _target1556615592_
                                         '()))
                                      (_g1556015579_ _g1556115582_)))))
                            (_g1556015579_ _g1556115582_))))
                    (_g1556015579_ _g1556115582_)))))
        (_g1555915641_ _stx15557_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx15489_ _arg15490_)
      (let* ((_g1549215509_
              (lambda (_g1549315506_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1549315506_)))
             (_g1549115554_
              (lambda (_g1549315512_)
                (if (gx#stx-pair? _g1549315512_)
                    (let ((_e1549615514_ (gx#stx-e _g1549315512_)))
                      (let ((_hd1549715517_ (##car _e1549615514_))
                            (_tl1549815519_ (##cdr _e1549615514_)))
                        (if (gx#stx-pair? _tl1549815519_)
                            (let ((_e1549915522_ (gx#stx-e _tl1549815519_)))
                              (let ((_hd1550015525_ (##car _e1549915522_))
                                    (_tl1550115527_ (##cdr _e1549915522_)))
                                (if (gx#stx-pair? _tl1550115527_)
                                    (let ((_e1550215530_
                                           (gx#stx-e _tl1550115527_)))
                                      (let ((_hd1550315533_
                                             (##car _e1550215530_))
                                            (_tl1550415535_
                                             (##cdr _e1550215530_)))
                                        (if (gx#stx-null? _tl1550415535_)
                                            ((lambda (_L15538_ _L15539_)
                                               (gxc#compile-e
                                                _L15538_
                                                _arg15490_))
                                             _hd1550315533_
                                             _hd1550015525_)
                                            (_g1549215509_ _g1549315512_))))
                                    (_g1549215509_ _g1549315512_))))
                            (_g1549215509_ _g1549315512_))))
                    (_g1549215509_ _g1549315512_)))))
        (_g1549115554_ _stx15489_))))
  (define gxc#find-lambda%
    (lambda (_stx15421_ _arg15422_)
      (let* ((_g1542415441_
              (lambda (_g1542515438_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1542515438_)))
             (_g1542315486_
              (lambda (_g1542515444_)
                (if (gx#stx-pair? _g1542515444_)
                    (let ((_e1542815446_ (gx#stx-e _g1542515444_)))
                      (let ((_hd1542915449_ (##car _e1542815446_))
                            (_tl1543015451_ (##cdr _e1542815446_)))
                        (if (gx#stx-pair? _tl1543015451_)
                            (let ((_e1543115454_ (gx#stx-e _tl1543015451_)))
                              (let ((_hd1543215457_ (##car _e1543115454_))
                                    (_tl1543315459_ (##cdr _e1543115454_)))
                                (if (gx#stx-pair? _tl1543315459_)
                                    (let ((_e1543415462_
                                           (gx#stx-e _tl1543315459_)))
                                      (let ((_hd1543515465_
                                             (##car _e1543415462_))
                                            (_tl1543615467_
                                             (##cdr _e1543415462_)))
                                        (if (gx#stx-null? _tl1543615467_)
                                            ((lambda (_L15470_ _L15471_)
                                               (gxc#compile-e
                                                _L15470_
                                                _arg15422_))
                                             _hd1543515465_
                                             _hd1543215457_)
                                            (_g1542415441_ _g1542515444_))))
                                    (_g1542415441_ _g1542515444_))))
                            (_g1542415441_ _g1542515444_))))
                    (_g1542415441_ _g1542515444_)))))
        (_g1542315486_ _stx15421_))))
  (define gxc#find-case-lambda%
    (lambda (_stx15303_ _arg15304_)
      (let* ((_g1530615334_
              (lambda (_g1530715331_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1530715331_)))
             (_g1530515418_
              (lambda (_g1530715337_)
                (if (gx#stx-pair? _g1530715337_)
                    (let ((_e1531015339_ (gx#stx-e _g1530715337_)))
                      (let ((_hd1531115342_ (##car _e1531015339_))
                            (_tl1531215344_ (##cdr _e1531015339_)))
                        (if (gx#stx-pair/null? _tl1531215344_)
                            (let ((_g17009_
                                   (gx#syntax-split-splice _tl1531215344_ '0)))
                              (begin
                                (let ((_g17010_
                                       (if (##values? _g17009_)
                                           (##vector-length _g17009_)
                                           1)))
                                  (if (not (##fx= _g17010_ 2))
                                      (error "Context expects 2 values"
                                             _g17010_)))
                                (let ((_target1531315347_
                                       (##vector-ref _g17009_ 0))
                                      (_tl1531515349_
                                       (##vector-ref _g17009_ 1)))
                                  (if (gx#stx-null? _tl1531515349_)
                                      (letrec ((_loop1531615352_
                                                (lambda (_hd1531415355_
                                                         _body1532015357_
                                                         _hd1532115359_)
                                                  (if (gx#stx-pair?
                                                       _hd1531415355_)
                                                      (let ((_e1531715362_
                                                             (gx#stx-e
                                                              _hd1531415355_)))
                                                        (let ((_lp-hd1531815365_
                                                               (##car _e1531715362_))
                                                              (_lp-tl1531915367_
                                                               (##cdr _e1531715362_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1531815365_)
                                                              (let ((_e1532415370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1531815365_)))
                        (let ((_hd1532515373_ (##car _e1532415370_))
                              (_tl1532615375_ (##cdr _e1532415370_)))
                          (if (gx#stx-pair? _tl1532615375_)
                              (let ((_e1532715378_ (gx#stx-e _tl1532615375_)))
                                (let ((_hd1532815381_ (##car _e1532715378_))
                                      (_tl1532915383_ (##cdr _e1532715378_)))
                                  (if (gx#stx-null? _tl1532915383_)
                                      (_loop1531615352_
                                       _lp-tl1531915367_
                                       (cons _hd1532815381_ _body1532015357_)
                                       (cons _hd1532515373_ _hd1532115359_))
                                      (_g1530615334_ _g1530715337_))))
                              (_g1530615334_ _g1530715337_))))
                      (_g1530615334_ _g1530715337_))))
              (let ((_body1532215386_ (reverse _body1532015357_))
                    (_hd1532315388_ (reverse _hd1532115359_)))
                ((lambda (_L15391_ _L15392_)
                   (ormap1 (lambda (_g1540615408_)
                             (gxc#compile-e _g1540615408_ _arg15304_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1541015413_ _g1541115415_)
                                       (cons _g1541015413_ _g1541115415_))
                                     '()
                                     _L15391_))))
                 _body1532215386_
                 _hd1532315388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1531615352_
                                         _target1531315347_
                                         '()
                                         '()))
                                      (_g1530615334_ _g1530715337_)))))
                            (_g1530615334_ _g1530715337_))))
                    (_g1530615334_ _g1530715337_)))))
        (_g1530515418_ _stx15303_))))
  (define gxc#find-let-values%
    (lambda (_stx15153_ _arg15154_)
      (let* ((_g1515615191_
              (lambda (_g1515715188_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1515715188_)))
             (_g1515515300_
              (lambda (_g1515715194_)
                (if (gx#stx-pair? _g1515715194_)
                    (let ((_e1516115196_ (gx#stx-e _g1515715194_)))
                      (let ((_hd1516215199_ (##car _e1516115196_))
                            (_tl1516315201_ (##cdr _e1516115196_)))
                        (if (gx#stx-pair? _tl1516315201_)
                            (let ((_e1516415204_ (gx#stx-e _tl1516315201_)))
                              (let ((_hd1516515207_ (##car _e1516415204_))
                                    (_tl1516615209_ (##cdr _e1516415204_)))
                                (if (gx#stx-pair/null? _hd1516515207_)
                                    (let ((_g17011_
                                           (gx#syntax-split-splice
                                            _hd1516515207_
                                            '0)))
                                      (begin
                                        (let ((_g17012_
                                               (if (##values? _g17011_)
                                                   (##vector-length _g17011_)
                                                   1)))
                                          (if (not (##fx= _g17012_ 2))
                                              (error "Context expects 2 values"
                                                     _g17012_)))
                                        (let ((_target1516715212_
                                               (##vector-ref _g17011_ 0))
                                              (_tl1516915214_
                                               (##vector-ref _g17011_ 1)))
                                          (if (gx#stx-null? _tl1516915214_)
                                              (letrec ((_loop1517015217_
                                                        (lambda (_hd1516815220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1517415222_
                         _bind1517515224_)
                  (if (gx#stx-pair? _hd1516815220_)
                      (let ((_e1517115227_ (gx#stx-e _hd1516815220_)))
                        (let ((_lp-hd1517215230_ (##car _e1517115227_))
                              (_lp-tl1517315232_ (##cdr _e1517115227_)))
                          (if (gx#stx-pair? _lp-hd1517215230_)
                              (let ((_e1517815235_
                                     (gx#stx-e _lp-hd1517215230_)))
                                (let ((_hd1517915238_ (##car _e1517815235_))
                                      (_tl1518015240_ (##cdr _e1517815235_)))
                                  (if (gx#stx-pair? _tl1518015240_)
                                      (let ((_e1518115243_
                                             (gx#stx-e _tl1518015240_)))
                                        (let ((_hd1518215246_
                                               (##car _e1518115243_))
                                              (_tl1518315248_
                                               (##cdr _e1518115243_)))
                                          (if (gx#stx-null? _tl1518315248_)
                                              (_loop1517015217_
                                               _lp-tl1517315232_
                                               (cons _hd1518215246_
                                                     _expr1517415222_)
                                               (cons _hd1517915238_
                                                     _bind1517515224_))
                                              (_g1515615191_ _g1515715194_))))
                                      (_g1515615191_ _g1515715194_))))
                              (_g1515615191_ _g1515715194_))))
                      (let ((_expr1517615251_ (reverse _expr1517415222_))
                            (_bind1517715253_ (reverse _bind1517515224_)))
                        (if (gx#stx-pair? _tl1516615209_)
                            (let ((_e1518415256_ (gx#stx-e _tl1516615209_)))
                              (let ((_hd1518515259_ (##car _e1518415256_))
                                    (_tl1518615261_ (##cdr _e1518415256_)))
                                (if (gx#stx-null? _tl1518615261_)
                                    ((lambda (_L15264_ _L15265_ _L15266_)
                                       (let ((_$e15297_
                                              (ormap1 (lambda (_g1528515287_)
                                                        (gxc#compile-e
                                                         _g1528515287_
                                                         _arg15154_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1528915292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1529015294_)
                          (cons _g1528915292_ _g1529015294_))
                        '()
                        _L15265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e15297_
                                             _$e15297_
                                             (gxc#compile-e
                                              _L15264_
                                              _arg15154_))))
                                     _hd1518515259_
                                     _expr1517615251_
                                     _bind1517715253_)
                                    (_g1515615191_ _g1515715194_))))
                            (_g1515615191_ _g1515715194_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1517015217_
                                                 _target1516715212_
                                                 '()
                                                 '()))
                                              (_g1515615191_ _g1515715194_)))))
                                    (_g1515615191_ _g1515715194_))))
                            (_g1515615191_ _g1515715194_))))
                    (_g1515615191_ _g1515715194_)))))
        (_g1515515300_ _stx15153_))))
  (define gxc#find-setq%
    (lambda (_stx15085_ _arg15086_)
      (let* ((_g1508815105_
              (lambda (_g1508915102_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1508915102_)))
             (_g1508715150_
              (lambda (_g1508915108_)
                (if (gx#stx-pair? _g1508915108_)
                    (let ((_e1509215110_ (gx#stx-e _g1508915108_)))
                      (let ((_hd1509315113_ (##car _e1509215110_))
                            (_tl1509415115_ (##cdr _e1509215110_)))
                        (if (gx#stx-pair? _tl1509415115_)
                            (let ((_e1509515118_ (gx#stx-e _tl1509415115_)))
                              (let ((_hd1509615121_ (##car _e1509515118_))
                                    (_tl1509715123_ (##cdr _e1509515118_)))
                                (if (gx#stx-pair? _tl1509715123_)
                                    (let ((_e1509815126_
                                           (gx#stx-e _tl1509715123_)))
                                      (let ((_hd1509915129_
                                             (##car _e1509815126_))
                                            (_tl1510015131_
                                             (##cdr _e1509815126_)))
                                        (if (gx#stx-null? _tl1510015131_)
                                            ((lambda (_L15134_ _L15135_)
                                               (gxc#compile-e
                                                _L15134_
                                                _arg15086_))
                                             _hd1509915129_
                                             _hd1509615121_)
                                            (_g1508815105_ _g1508915108_))))
                                    (_g1508815105_ _g1508915108_))))
                            (_g1508815105_ _g1508915108_))))
                    (_g1508815105_ _g1508915108_)))))
        (_g1508715150_ _stx15085_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx15029_ _ids15030_)
      (let* ((_g1503215045_
              (lambda (_g1503315042_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1503315042_)))
             (_g1503115082_
              (lambda (_g1503315048_)
                (if (gx#stx-pair? _g1503315048_)
                    (let ((_e1503515050_ (gx#stx-e _g1503315048_)))
                      (let ((_hd1503615053_ (##car _e1503515050_))
                            (_tl1503715055_ (##cdr _e1503515050_)))
                        (if (gx#stx-pair? _tl1503715055_)
                            (let ((_e1503815058_ (gx#stx-e _tl1503715055_)))
                              (let ((_hd1503915061_ (##car _e1503815058_))
                                    (_tl1504015063_ (##cdr _e1503815058_)))
                                (if (gx#stx-null? _tl1504015063_)
                                    ((lambda (_L15066_)
                                       (find (lambda (_g1507715079_)
                                               (gx#free-identifier=?
                                                _L15066_
                                                _g1507715079_))
                                             _ids15030_))
                                     _hd1503915061_)
                                    (_g1503215045_ _g1503315048_))))
                            (_g1503215045_ _g1503315048_))))
                    (_g1503215045_ _g1503315048_)))))
        (_g1503115082_ _stx15029_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx14953_ _ids14954_)
      (let* ((_g1495614973_
              (lambda (_g1495714970_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1495714970_)))
             (_g1495515026_
              (lambda (_g1495714976_)
                (if (gx#stx-pair? _g1495714976_)
                    (let ((_e1496014978_ (gx#stx-e _g1495714976_)))
                      (let ((_hd1496114981_ (##car _e1496014978_))
                            (_tl1496214983_ (##cdr _e1496014978_)))
                        (if (gx#stx-pair? _tl1496214983_)
                            (let ((_e1496314986_ (gx#stx-e _tl1496214983_)))
                              (let ((_hd1496414989_ (##car _e1496314986_))
                                    (_tl1496514991_ (##cdr _e1496314986_)))
                                (if (gx#stx-pair? _tl1496514991_)
                                    (let ((_e1496614994_
                                           (gx#stx-e _tl1496514991_)))
                                      (let ((_hd1496714997_
                                             (##car _e1496614994_))
                                            (_tl1496814999_
                                             (##cdr _e1496614994_)))
                                        (if (gx#stx-null? _tl1496814999_)
                                            ((lambda (_L15002_ _L15003_)
                                               (let ((_$e15023_
                                                      (find (lambda (_g1501815020_)
                                                              (gx#free-identifier=?
                                                               _L15003_
                                                               _g1501815020_))
                                                            _ids14954_)))
                                                 (if _$e15023_
                                                     _$e15023_
                                                     (gxc#compile-e
                                                      _L15002_
                                                      _ids14954_))))
                                             _hd1496714997_
                                             _hd1496414989_)
                                            (_g1495614973_ _g1495714976_))))
                                    (_g1495614973_ _g1495714976_))))
                            (_g1495614973_ _g1495714976_))))
                    (_g1495614973_ _g1495714976_)))))
        (_g1495515026_ _stx14953_)))))
