(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (##make-promise
     (lambda ()
       (let ((_tbl16985_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl16985_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl16985_ '%#lambda gxc#xform-identity)
           (table-set! _tbl16985_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl16985_ '%#let-values gxc#xform-identity)
           (table-set! _tbl16985_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl16985_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl16985_ '%#quote gxc#xform-identity)
           (table-set! _tbl16985_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl16985_ '%#call gxc#xform-identity)
           (table-set! _tbl16985_ '%#if gxc#xform-identity)
           (table-set! _tbl16985_ '%#ref gxc#xform-identity)
           (table-set! _tbl16985_ '%#set! gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl16985_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl16985_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl16985_)))))
  (define gxc#&identity-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl16981_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl16981_ '%#begin gxc#xform-identity)
           (table-set! _tbl16981_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl16981_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl16981_ '%#module gxc#xform-identity)
           (table-set! _tbl16981_ '%#import gxc#xform-identity)
           (table-set! _tbl16981_ '%#export gxc#xform-identity)
           (table-set! _tbl16981_ '%#provide gxc#xform-identity)
           (table-set! _tbl16981_ '%#extern gxc#xform-identity)
           (table-set! _tbl16981_ '%#define-values gxc#xform-identity)
           (table-set! _tbl16981_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl16981_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl16981_ '%#declare gxc#xform-identity)
           _tbl16981_)))))
  (define gxc#&identity
    (##make-promise
     (lambda ()
       (let ((_tbl16977_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16977_ (force gxc#&identity-special-form))
           (hash-copy! _tbl16977_ (force gxc#&identity-expression))
           _tbl16977_)))))
  (define gxc#&basic-xform-expression
    (##make-promise
     (lambda ()
       (let ((_tbl16973_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl16973_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl16973_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl16973_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl16973_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl16973_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl16973_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl16973_ '%#quote gxc#xform-identity)
           (table-set! _tbl16973_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl16973_ '%#call gxc#xform-operands)
           (table-set! _tbl16973_ '%#if gxc#xform-operands)
           (table-set! _tbl16973_ '%#ref gxc#xform-identity)
           (table-set! _tbl16973_ '%#set! gxc#xform-setq%)
           (table-set! _tbl16973_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl16973_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl16973_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl16973_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl16973_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl16973_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl16973_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl16973_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl16973_)))))
  (define gxc#&basic-xform
    (##make-promise
     (lambda ()
       (let ((_tbl16969_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16969_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl16969_ (force gxc#&identity))
           (table-set! _tbl16969_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16969_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl16969_ '%#module gxc#xform-module%)
           (table-set! _tbl16969_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl16969_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl16969_)))))
  (define gxc#&collect-mutators
    (##make-promise
     (lambda ()
       (let ((_tbl16965_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16965_ (force gxc#&void))
           (table-set! _tbl16965_ '%#begin gxc#collect-begin%)
           (table-set! _tbl16965_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl16965_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl16965_ '%#module gxc#collect-module%)
           (table-set! _tbl16965_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl16965_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl16965_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl16965_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl16965_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl16965_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl16965_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl16965_ '%#call gxc#collect-operands)
           (table-set! _tbl16965_ '%#if gxc#collect-operands)
           (table-set! _tbl16965_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl16965_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl16965_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl16965_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl16965_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl16965_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl16965_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl16965_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl16965_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl16965_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx16958_ . _args16960_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16958_ _args16960_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (##make-promise
     (lambda ()
       (let ((_tbl16955_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16955_ (force gxc#&basic-xform-expression))
           (table-set! _tbl16955_ '%#begin gxc#xform-begin%)
           (table-set! _tbl16955_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl16955_ '%#set! gxc#expression-subst-setq%)
           _tbl16955_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx16948_ . _args16950_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16948_ _args16950_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (##make-promise
     (lambda ()
       (let ((_tbl16945_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16945_ (force gxc#&expression-subst))
           (table-set! _tbl16945_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl16945_ '%#set! gxc#expression-subst*-setq%)
           _tbl16945_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx16938_ . _args16940_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16938_ _args16940_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (##make-promise
     (lambda ()
       (let ((_tbl16935_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16935_ (force gxc#&false-expression))
           (table-set! _tbl16935_ '%#begin gxc#find-body%)
           (table-set!
            _tbl16935_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl16935_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl16935_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl16935_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl16935_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl16935_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl16935_ '%#call gxc#find-body%)
           (table-set! _tbl16935_ '%#if gxc#find-body%)
           (table-set! _tbl16935_ '%#set! gxc#find-setq%)
           (table-set! _tbl16935_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl16935_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl16935_)))))
  (define gxc#&find-var-refs
    (##make-promise
     (lambda ()
       (let ((_tbl16931_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16931_ (force gxc#&find-expression))
           (table-set! _tbl16931_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl16931_ '%#set! gxc#find-var-refs-setq%)
           _tbl16931_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx16924_ . _args16926_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16924_ _args16926_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (##make-promise
     (lambda ()
       (let ((_tbl16921_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl16921_ (force gxc#&collect-expression-refs))
           (table-set! _tbl16921_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl16921_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl16921_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx16914_ . _args16916_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx16914_ _args16916_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx16911_ . _args16912_) _stx16911_))
  (define gxc#xform-wrap-source
    (lambda (_stx16908_ _src-stx16909_)
      (gx#stx-wrap-source _stx16908_ (gx#stx-source _src-stx16909_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args16902_)
      (lambda (_g1690316905_)
        (apply gxc#compile-e _g1690316905_ _args16902_))))
  (define gxc#xform-begin%
    (lambda (_stx16861_ . _args16862_)
      (let* ((_g1686416874_
              (lambda (_g1686516871_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1686516871_)))
             (_g1686316899_
              (lambda (_g1686516877_)
                (if (gx#stx-pair? _g1686516877_)
                    (let ((_e1686716879_ (gx#stx-e _g1686516877_)))
                      (let ((_hd1686816882_ (##car _e1686716879_))
                            (_tl1686916884_ (##cdr _e1686716879_)))
                        ((lambda (_L16887_)
                           (let ((_forms16897_
                                  (map (gxc#xform-apply-compile-e _args16862_)
                                       _L16887_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms16897_)
                              _stx16861_)))
                         _tl1686916884_)))
                    (_g1686416874_ _g1686516877_)))))
        (_g1686316899_ _stx16861_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx16819_ . _args16820_)
      (let* ((_g1682216832_
              (lambda (_g1682316829_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1682316829_)))
             (_g1682116858_
              (lambda (_g1682316835_)
                (if (gx#stx-pair? _g1682316835_)
                    (let ((_e1682516837_ (gx#stx-e _g1682316835_)))
                      (let ((_hd1682616840_ (##car _e1682516837_))
                            (_tl1682716842_ (##cdr _e1682516837_)))
                        ((lambda (_L16845_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms16856_
                                     (map (gxc#xform-apply-compile-e
                                           _args16820_)
                                          _L16845_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms16856_)
                                 _stx16819_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1682716842_)))
                    (_g1682216832_ _g1682316835_)))))
        (_g1682116858_ _stx16819_))))
  (define gxc#xform-module%
    (lambda (_stx16756_ . _args16757_)
      (let* ((_g1675916773_
              (lambda (_g1676016770_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1676016770_)))
             (_g1675816816_
              (lambda (_g1676016776_)
                (if (gx#stx-pair? _g1676016776_)
                    (let ((_e1676316778_ (gx#stx-e _g1676016776_)))
                      (let ((_hd1676416781_ (##car _e1676316778_))
                            (_tl1676516783_ (##cdr _e1676316778_)))
                        (if (gx#stx-pair? _tl1676516783_)
                            (let ((_e1676616786_ (gx#stx-e _tl1676516783_)))
                              (let ((_hd1676716789_ (##car _e1676616786_))
                                    (_tl1676816791_ (##cdr _e1676616786_)))
                                ((lambda (_L16794_ _L16795_)
                                   (let* ((_ctx16808_
                                           (gx#syntax-local-e__0 _L16795_))
                                          (_code16810_
                                           (##structure-ref
                                            _ctx16808_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code16813_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code16810_
                                                     _args16757_))
                                            gx#current-expander-context
                                            _ctx16808_)))
                                     (begin
                                       (##structure-set!
                                        _ctx16808_
                                        _code16813_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L16795_
                                                    (cons _code16813_ '())))
                                        _stx16756_))))
                                 _tl1676816791_
                                 _hd1676716789_)))
                            (_g1675916773_ _g1676016776_))))
                    (_g1675916773_ _g1676016776_)))))
        (_g1675816816_ _stx16756_))))
  (define gxc#xform-define-values%
    (lambda (_stx16686_ . _args16687_)
      (let* ((_g1668916706_
              (lambda (_g1669016703_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1669016703_)))
             (_g1668816753_
              (lambda (_g1669016709_)
                (if (gx#stx-pair? _g1669016709_)
                    (let ((_e1669316711_ (gx#stx-e _g1669016709_)))
                      (let ((_hd1669416714_ (##car _e1669316711_))
                            (_tl1669516716_ (##cdr _e1669316711_)))
                        (if (gx#stx-pair? _tl1669516716_)
                            (let ((_e1669616719_ (gx#stx-e _tl1669516716_)))
                              (let ((_hd1669716722_ (##car _e1669616719_))
                                    (_tl1669816724_ (##cdr _e1669616719_)))
                                (if (gx#stx-pair? _tl1669816724_)
                                    (let ((_e1669916727_
                                           (gx#stx-e _tl1669816724_)))
                                      (let ((_hd1670016730_
                                             (##car _e1669916727_))
                                            (_tl1670116732_
                                             (##cdr _e1669916727_)))
                                        (if (gx#stx-null? _tl1670116732_)
                                            ((lambda (_L16735_ _L16736_)
                                               (let ((_expr16751_
                                                      (apply gxc#compile-e
                                                             _L16735_
                                                             _args16687_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L16736_
                                                              (cons _expr16751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16686_)))
                                             _hd1670016730_
                                             _hd1669716722_)
                                            (_g1668916706_ _g1669016709_))))
                                    (_g1668916706_ _g1669016709_))))
                            (_g1668916706_ _g1669016709_))))
                    (_g1668916706_ _g1669016709_)))))
        (_g1668816753_ _stx16686_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx16615_ . _args16616_)
      (let* ((_g1661816635_
              (lambda (_g1661916632_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1661916632_)))
             (_g1661716683_
              (lambda (_g1661916638_)
                (if (gx#stx-pair? _g1661916638_)
                    (let ((_e1662216640_ (gx#stx-e _g1661916638_)))
                      (let ((_hd1662316643_ (##car _e1662216640_))
                            (_tl1662416645_ (##cdr _e1662216640_)))
                        (if (gx#stx-pair? _tl1662416645_)
                            (let ((_e1662516648_ (gx#stx-e _tl1662416645_)))
                              (let ((_hd1662616651_ (##car _e1662516648_))
                                    (_tl1662716653_ (##cdr _e1662516648_)))
                                (if (gx#stx-pair? _tl1662716653_)
                                    (let ((_e1662816656_
                                           (gx#stx-e _tl1662716653_)))
                                      (let ((_hd1662916659_
                                             (##car _e1662816656_))
                                            (_tl1663016661_
                                             (##cdr _e1662816656_)))
                                        (if (gx#stx-null? _tl1663016661_)
                                            ((lambda (_L16664_ _L16665_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr16681_
                                                         (apply gxc#compile-e
                                                                _L16664_
                                                                _args16616_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L16665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr16681_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx16615_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1662916659_
                                             _hd1662616651_)
                                            (_g1661816635_ _g1661916638_))))
                                    (_g1661816635_ _g1661916638_))))
                            (_g1661816635_ _g1661916638_))))
                    (_g1661816635_ _g1661916638_)))))
        (_g1661716683_ _stx16615_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx16545_ . _args16546_)
      (let* ((_g1654816565_
              (lambda (_g1654916562_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1654916562_)))
             (_g1654716612_
              (lambda (_g1654916568_)
                (if (gx#stx-pair? _g1654916568_)
                    (let ((_e1655216570_ (gx#stx-e _g1654916568_)))
                      (let ((_hd1655316573_ (##car _e1655216570_))
                            (_tl1655416575_ (##cdr _e1655216570_)))
                        (if (gx#stx-pair? _tl1655416575_)
                            (let ((_e1655516578_ (gx#stx-e _tl1655416575_)))
                              (let ((_hd1655616581_ (##car _e1655516578_))
                                    (_tl1655716583_ (##cdr _e1655516578_)))
                                (if (gx#stx-pair? _tl1655716583_)
                                    (let ((_e1655816586_
                                           (gx#stx-e _tl1655716583_)))
                                      (let ((_hd1655916589_
                                             (##car _e1655816586_))
                                            (_tl1656016591_
                                             (##cdr _e1655816586_)))
                                        (if (gx#stx-null? _tl1656016591_)
                                            ((lambda (_L16594_ _L16595_)
                                               (let ((_expr16610_
                                                      (apply gxc#compile-e
                                                             _L16594_
                                                             _args16546_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L16595_
                                                              (cons _expr16610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16545_)))
                                             _hd1655916589_
                                             _hd1655616581_)
                                            (_g1654816565_ _g1654916568_))))
                                    (_g1654816565_ _g1654916568_))))
                            (_g1654816565_ _g1654916568_))))
                    (_g1654816565_ _g1654916568_)))))
        (_g1654716612_ _stx16545_))))
  (define gxc#xform-lambda%
    (lambda (_stx16488_ . _args16489_)
      (let* ((_g1649116505_
              (lambda (_g1649216502_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1649216502_)))
             (_g1649016542_
              (lambda (_g1649216508_)
                (if (gx#stx-pair? _g1649216508_)
                    (let ((_e1649516510_ (gx#stx-e _g1649216508_)))
                      (let ((_hd1649616513_ (##car _e1649516510_))
                            (_tl1649716515_ (##cdr _e1649516510_)))
                        (if (gx#stx-pair? _tl1649716515_)
                            (let ((_e1649816518_ (gx#stx-e _tl1649716515_)))
                              (let ((_hd1649916521_ (##car _e1649816518_))
                                    (_tl1650016523_ (##cdr _e1649816518_)))
                                ((lambda (_L16526_ _L16527_)
                                   (let ((_body16540_
                                          (map (gxc#xform-apply-compile-e
                                                _args16489_)
                                               _L16526_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L16527_ _body16540_))
                                      _stx16488_)))
                                 _tl1650016523_
                                 _hd1649916521_)))
                            (_g1649116505_ _g1649216508_))))
                    (_g1649116505_ _g1649216508_)))))
        (_g1649016542_ _stx16488_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx16401_ . _args16402_)
      (letrec ((_clause-e16404_
                (lambda (_clause16445_)
                  (let* ((_g1644716458_
                          (lambda (_g1644816455_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1644816455_)))
                         (_g1644616485_
                          (lambda (_g1644816461_)
                            (if (gx#stx-pair? _g1644816461_)
                                (let ((_e1645116463_ (gx#stx-e _g1644816461_)))
                                  (let ((_hd1645216466_ (##car _e1645116463_))
                                        (_tl1645316468_ (##cdr _e1645116463_)))
                                    ((lambda (_L16471_ _L16472_)
                                       (let ((_body16483_
                                              (map (gxc#xform-apply-compile-e
                                                    _args16402_)
                                                   _L16471_)))
                                         (cons _L16472_ _body16483_)))
                                     _tl1645316468_
                                     _hd1645216466_)))
                                (_g1644716458_ _g1644816461_)))))
                    (_g1644616485_ _clause16445_)))))
        (let* ((_g1640616416_
                (lambda (_g1640716413_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1640716413_)))
               (_g1640516442_
                (lambda (_g1640716419_)
                  (if (gx#stx-pair? _g1640716419_)
                      (let ((_e1640916421_ (gx#stx-e _g1640716419_)))
                        (let ((_hd1641016424_ (##car _e1640916421_))
                              (_tl1641116426_ (##cdr _e1640916421_)))
                          ((lambda (_L16429_)
                             (let ((_clauses16440_
                                    (map _clause-e16404_ _L16429_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses16440_)
                                _stx16401_)))
                           _tl1641116426_)))
                      (_g1640616416_ _g1640716419_)))))
          (_g1640516442_ _stx16401_)))))
  (define gxc#xform-let-values%
    (lambda (_stx16195_ . _args16196_)
      (let* ((_g1619816231_
              (lambda (_g1619916228_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1619916228_)))
             (_g1619716398_
              (lambda (_g1619916234_)
                (if (gx#stx-pair? _g1619916234_)
                    (let ((_e1620416236_ (gx#stx-e _g1619916234_)))
                      (let ((_hd1620516239_ (##car _e1620416236_))
                            (_tl1620616241_ (##cdr _e1620416236_)))
                        (if (gx#stx-pair? _tl1620616241_)
                            (let ((_e1620716244_ (gx#stx-e _tl1620616241_)))
                              (let ((_hd1620816247_ (##car _e1620716244_))
                                    (_tl1620916249_ (##cdr _e1620716244_)))
                                (if (gx#stx-pair/null? _hd1620816247_)
                                    (let ((_g16987_
                                           (gx#syntax-split-splice
                                            _hd1620816247_
                                            '0)))
                                      (begin
                                        (let ((_g16988_
                                               (if (##values? _g16987_)
                                                   (##vector-length _g16987_)
                                                   1)))
                                          (if (not (##fx= _g16988_ 2))
                                              (error "Context expects 2 values"
                                                     _g16988_)))
                                        (let ((_target1621016252_
                                               (##vector-ref _g16987_ 0))
                                              (_tl1621216254_
                                               (##vector-ref _g16987_ 1)))
                                          (if (gx#stx-null? _tl1621216254_)
                                              (letrec ((_loop1621316257_
                                                        (lambda (_hd1621116260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1621716262_
                         _hd1621816264_)
                  (if (gx#stx-pair? _hd1621116260_)
                      (let ((_e1621416267_ (gx#stx-e _hd1621116260_)))
                        (let ((_lp-hd1621516270_ (##car _e1621416267_))
                              (_lp-tl1621616272_ (##cdr _e1621416267_)))
                          (if (gx#stx-pair? _lp-hd1621516270_)
                              (let ((_e1622116275_
                                     (gx#stx-e _lp-hd1621516270_)))
                                (let ((_hd1622216278_ (##car _e1622116275_))
                                      (_tl1622316280_ (##cdr _e1622116275_)))
                                  (if (gx#stx-pair? _tl1622316280_)
                                      (let ((_e1622416283_
                                             (gx#stx-e _tl1622316280_)))
                                        (let ((_hd1622516286_
                                               (##car _e1622416283_))
                                              (_tl1622616288_
                                               (##cdr _e1622416283_)))
                                          (if (gx#stx-null? _tl1622616288_)
                                              (_loop1621316257_
                                               _lp-tl1621616272_
                                               (cons _hd1622516286_
                                                     _expr1621716262_)
                                               (cons _hd1622216278_
                                                     _hd1621816264_))
                                              (_g1619816231_ _g1619916234_))))
                                      (_g1619816231_ _g1619916234_))))
                              (_g1619816231_ _g1619916234_))))
                      (let ((_expr1621916291_ (reverse _expr1621716262_))
                            (_hd1622016293_ (reverse _hd1621816264_)))
                        ((lambda (_L16296_ _L16297_ _L16298_ _L16299_)
                           (let* ((_g1631816334_
                                   (lambda (_g1631916331_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1631916331_)))
                                  (_g1631716388_
                                   (lambda (_g1631916337_)
                                     (if (gx#stx-pair/null? _g1631916337_)
                                         (let ((_g16989_
                                                (gx#syntax-split-splice
                                                 _g1631916337_
                                                 '0)))
                                           (begin
                                             (let ((_g16990_
                                                    (if (##values? _g16989_)
                                                        (##vector-length
                                                         _g16989_)
                                                        1)))
                                               (if (not (##fx= _g16990_ 2))
                                                   (error "Context expects 2 values"
                                                          _g16990_)))
                                             (let ((_target1632116339_
                                                    (##vector-ref _g16989_ 0))
                                                   (_tl1632316341_
                                                    (##vector-ref _g16989_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1632316341_)
                                                   (letrec ((_loop1632416344_
                                                             (lambda (_hd1632216347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1632816349_)
                       (if (gx#stx-pair? _hd1632216347_)
                           (let ((_e1632516352_ (gx#syntax-e _hd1632216347_)))
                             (let ((_lp-hd1632616355_ (##car _e1632516352_))
                                   (_lp-tl1632716357_ (##cdr _e1632516352_)))
                               (_loop1632416344_
                                _lp-tl1632716357_
                                (cons _lp-hd1632616355_ _expr1632816349_))))
                           (let ((_expr1632916360_ (reverse _expr1632816349_)))
                             ((lambda (_L16363_)
                                (let ()
                                  (let ((_body16376_
                                         (map (gxc#xform-apply-compile-e
                                               _args16196_)
                                              _L16296_)))
                                    (gxc#xform-wrap-source
                                     (cons _L16299_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L16363_
                                                    _L16298_)
                                                   (foldr2 (lambda (_g1637716381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1637816383_
                            _g1637916385_)
                     (cons (cons _g1637816383_ (cons _g1637716381_ '()))
                           _g1637916385_))
                   '()
                   _L16363_
                   _L16298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body16376_))
                                     _stx16195_))))
                              _expr1632916360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1632416344_
                                                      _target1632116339_
                                                      '()))
                                                   (_g1631816334_
                                                    _g1631916337_)))))
                                         (_g1631816334_ _g1631916337_)))))
                             (_g1631716388_
                              (map (gxc#xform-apply-compile-e _args16196_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1639016393_
                                                      _g1639116395_)
                                               (cons _g1639016393_
                                                     _g1639116395_))
                                             '()
                                             _L16297_))))))
                         _tl1620916249_
                         _expr1621916291_
                         _hd1622016293_
                         _hd1620516239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1621316257_
                                                 _target1621016252_
                                                 '()
                                                 '()))
                                              (_g1619816231_ _g1619916234_)))))
                                    (_g1619816231_ _g1619916234_))))
                            (_g1619816231_ _g1619916234_))))
                    (_g1619816231_ _g1619916234_)))))
        (_g1619716398_ _stx16195_))))
  (define gxc#xform-operands
    (lambda (_stx16151_ . _args16152_)
      (let* ((_g1615416165_
              (lambda (_g1615516162_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1615516162_)))
             (_g1615316192_
              (lambda (_g1615516168_)
                (if (gx#stx-pair? _g1615516168_)
                    (let ((_e1615816170_ (gx#stx-e _g1615516168_)))
                      (let ((_hd1615916173_ (##car _e1615816170_))
                            (_tl1616016175_ (##cdr _e1615816170_)))
                        ((lambda (_L16178_ _L16179_)
                           (let ((_rands16190_
                                  (map (gxc#xform-apply-compile-e _args16152_)
                                       _L16178_)))
                             (gxc#xform-wrap-source
                              (cons _L16179_ _rands16190_)
                              _stx16151_)))
                         _tl1616016175_
                         _hd1615916173_)))
                    (_g1615416165_ _g1615516168_)))))
        (_g1615316192_ _stx16151_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx16081_ . _args16082_)
      (let* ((_g1608416101_
              (lambda (_g1608516098_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1608516098_)))
             (_g1608316148_
              (lambda (_g1608516104_)
                (if (gx#stx-pair? _g1608516104_)
                    (let ((_e1608816106_ (gx#stx-e _g1608516104_)))
                      (let ((_hd1608916109_ (##car _e1608816106_))
                            (_tl1609016111_ (##cdr _e1608816106_)))
                        (if (gx#stx-pair? _tl1609016111_)
                            (let ((_e1609116114_ (gx#stx-e _tl1609016111_)))
                              (let ((_hd1609216117_ (##car _e1609116114_))
                                    (_tl1609316119_ (##cdr _e1609116114_)))
                                (if (gx#stx-pair? _tl1609316119_)
                                    (let ((_e1609416122_
                                           (gx#stx-e _tl1609316119_)))
                                      (let ((_hd1609516125_
                                             (##car _e1609416122_))
                                            (_tl1609616127_
                                             (##cdr _e1609416122_)))
                                        (if (gx#stx-null? _tl1609616127_)
                                            ((lambda (_L16130_ _L16131_)
                                               (let ((_expr16146_
                                                      (apply gxc#compile-e
                                                             _L16130_
                                                             _args16082_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L16131_
                                                              (cons _expr16146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16081_)))
                                             _hd1609516125_
                                             _hd1609216117_)
                                            (_g1608416101_ _g1608516104_))))
                                    (_g1608416101_ _g1608516104_))))
                            (_g1608416101_ _g1608516104_))))
                    (_g1608416101_ _g1608516104_)))))
        (_g1608316148_ _stx16081_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx16012_)
      (let* ((_g1601416031_
              (lambda (_g1601516028_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1601516028_)))
             (_g1601316078_
              (lambda (_g1601516034_)
                (if (gx#stx-pair? _g1601516034_)
                    (let ((_e1601816036_ (gx#stx-e _g1601516034_)))
                      (let ((_hd1601916039_ (##car _e1601816036_))
                            (_tl1602016041_ (##cdr _e1601816036_)))
                        (if (gx#stx-pair? _tl1602016041_)
                            (let ((_e1602116044_ (gx#stx-e _tl1602016041_)))
                              (let ((_hd1602216047_ (##car _e1602116044_))
                                    (_tl1602316049_ (##cdr _e1602116044_)))
                                (if (gx#stx-pair? _tl1602316049_)
                                    (let ((_e1602416052_
                                           (gx#stx-e _tl1602316049_)))
                                      (let ((_hd1602516055_
                                             (##car _e1602416052_))
                                            (_tl1602616057_
                                             (##cdr _e1602416052_)))
                                        (if (gx#stx-null? _tl1602616057_)
                                            ((lambda (_L16060_ _L16061_)
                                               (let ((_sym16076_
                                                      (gxc#identifier-symbol
                                                       _L16061_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym16076_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym16076_
                                                    '#t)
                                                   (gxc#compile-e _L16060_))))
                                             _hd1602516055_
                                             _hd1602216047_)
                                            (_g1601416031_ _g1601516034_))))
                                    (_g1601416031_ _g1601516034_))))
                            (_g1601416031_ _g1601516034_))))
                    (_g1601416031_ _g1601516034_)))))
        (_g1601316078_ _stx16012_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx15959_ _id15960_ _new-id15961_)
      (let* ((_g1596315976_
              (lambda (_g1596415973_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1596415973_)))
             (_g1596216009_
              (lambda (_g1596415979_)
                (if (gx#stx-pair? _g1596415979_)
                    (let ((_e1596615981_ (gx#stx-e _g1596415979_)))
                      (let ((_hd1596715984_ (##car _e1596615981_))
                            (_tl1596815986_ (##cdr _e1596615981_)))
                        (if (gx#stx-pair? _tl1596815986_)
                            (let ((_e1596915989_ (gx#stx-e _tl1596815986_)))
                              (let ((_hd1597015992_ (##car _e1596915989_))
                                    (_tl1597115994_ (##cdr _e1596915989_)))
                                (if (gx#stx-null? _tl1597115994_)
                                    ((lambda (_L15997_)
                                       (if (gx#free-identifier=?
                                            _L15997_
                                            _id15960_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id15961_ '()))
                                            _stx15959_)
                                           _stx15959_))
                                     _hd1597015992_)
                                    (_g1596315976_ _g1596415979_))))
                            (_g1596315976_ _g1596415979_))))
                    (_g1596315976_ _g1596415979_)))))
        (_g1596216009_ _stx15959_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx15900_ _subst15901_)
      (let* ((_g1590315916_
              (lambda (_g1590415913_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1590415913_)))
             (_g1590215956_
              (lambda (_g1590415919_)
                (if (gx#stx-pair? _g1590415919_)
                    (let ((_e1590615921_ (gx#stx-e _g1590415919_)))
                      (let ((_hd1590715924_ (##car _e1590615921_))
                            (_tl1590815926_ (##cdr _e1590615921_)))
                        (if (gx#stx-pair? _tl1590815926_)
                            (let ((_e1590915929_ (gx#stx-e _tl1590815926_)))
                              (let ((_hd1591015932_ (##car _e1590915929_))
                                    (_tl1591115934_ (##cdr _e1590915929_)))
                                (if (gx#stx-null? _tl1591115934_)
                                    ((lambda (_L15937_)
                                       (let ((_$e15951_
                                              (find (lambda (_sub15949_)
                                                      (gx#free-identifier=?
                                                       _L15937_
                                                       (car _sub15949_)))
                                                    _subst15901_)))
                                         (if _$e15951_
                                             ((lambda (_sub15954_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub15954_)
                                                             '()))
                                                 _stx15900_))
                                              _$e15951_)
                                             _stx15900_)))
                                     _hd1591015932_)
                                    (_g1590315916_ _g1590415919_))))
                            (_g1590315916_ _g1590415919_))))
                    (_g1590315916_ _g1590415919_)))))
        (_g1590215956_ _stx15900_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx15828_ _id15829_ _new-id15830_)
      (let* ((_g1583215849_
              (lambda (_g1583315846_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1583315846_)))
             (_g1583115897_
              (lambda (_g1583315852_)
                (if (gx#stx-pair? _g1583315852_)
                    (let ((_e1583615854_ (gx#stx-e _g1583315852_)))
                      (let ((_hd1583715857_ (##car _e1583615854_))
                            (_tl1583815859_ (##cdr _e1583615854_)))
                        (if (gx#stx-pair? _tl1583815859_)
                            (let ((_e1583915862_ (gx#stx-e _tl1583815859_)))
                              (let ((_hd1584015865_ (##car _e1583915862_))
                                    (_tl1584115867_ (##cdr _e1583915862_)))
                                (if (gx#stx-pair? _tl1584115867_)
                                    (let ((_e1584215870_
                                           (gx#stx-e _tl1584115867_)))
                                      (let ((_hd1584315873_
                                             (##car _e1584215870_))
                                            (_tl1584415875_
                                             (##cdr _e1584215870_)))
                                        (if (gx#stx-null? _tl1584415875_)
                                            ((lambda (_L15878_ _L15879_)
                                               (let ((_new-expr15894_
                                                      (gxc#compile-e
                                                       _L15878_
                                                       _id15829_
                                                       _new-id15830_))
                                                     (_new-xid15895_
                                                      (if (gx#free-identifier=?
                                                           _L15879_
                                                           _id15829_)
                                                          _new-id15830_
                                                          _L15879_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15895_
                                                              (cons _new-expr15894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15828_)))
                                             _hd1584315873_
                                             _hd1584015865_)
                                            (_g1583215849_ _g1583315852_))))
                                    (_g1583215849_ _g1583315852_))))
                            (_g1583215849_ _g1583315852_))))
                    (_g1583215849_ _g1583315852_)))))
        (_g1583115897_ _stx15828_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx15752_ _subst15753_)
      (let* ((_g1575515772_
              (lambda (_g1575615769_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1575615769_)))
             (_g1575415825_
              (lambda (_g1575615775_)
                (if (gx#stx-pair? _g1575615775_)
                    (let ((_e1575915777_ (gx#stx-e _g1575615775_)))
                      (let ((_hd1576015780_ (##car _e1575915777_))
                            (_tl1576115782_ (##cdr _e1575915777_)))
                        (if (gx#stx-pair? _tl1576115782_)
                            (let ((_e1576215785_ (gx#stx-e _tl1576115782_)))
                              (let ((_hd1576315788_ (##car _e1576215785_))
                                    (_tl1576415790_ (##cdr _e1576215785_)))
                                (if (gx#stx-pair? _tl1576415790_)
                                    (let ((_e1576515793_
                                           (gx#stx-e _tl1576415790_)))
                                      (let ((_hd1576615796_
                                             (##car _e1576515793_))
                                            (_tl1576715798_
                                             (##cdr _e1576515793_)))
                                        (if (gx#stx-null? _tl1576715798_)
                                            ((lambda (_L15801_ _L15802_)
                                               (let ((_new-expr15822_
                                                      (gxc#compile-e
                                                       _L15801_
                                                       _subst15753_))
                                                     (_new-xid15823_
                                                      (let ((_$e15819_
                                                             (find (lambda (_sub15817_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L15802_ (car _sub15817_)))
                           _subst15753_)))
                (if _$e15819_ (cdr _$e15819_) _L15802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid15823_
                                                              (cons _new-expr15822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx15752_)))
                                             _hd1576615796_
                                             _hd1576315788_)
                                            (_g1575515772_ _g1575615775_))))
                                    (_g1575515772_ _g1575615775_))))
                            (_g1575515772_ _g1575615775_))))
                    (_g1575515772_ _g1575615775_)))))
        (_g1575415825_ _stx15752_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx15698_ _ht15699_)
      (let* ((_g1570115714_
              (lambda (_g1570215711_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1570215711_)))
             (_g1570015749_
              (lambda (_g1570215717_)
                (if (gx#stx-pair? _g1570215717_)
                    (let ((_e1570415719_ (gx#stx-e _g1570215717_)))
                      (let ((_hd1570515722_ (##car _e1570415719_))
                            (_tl1570615724_ (##cdr _e1570415719_)))
                        (if (gx#stx-pair? _tl1570615724_)
                            (let ((_e1570715727_ (gx#stx-e _tl1570615724_)))
                              (let ((_hd1570815730_ (##car _e1570715727_))
                                    (_tl1570915732_ (##cdr _e1570715727_)))
                                (if (gx#stx-null? _tl1570915732_)
                                    ((lambda (_L15735_)
                                       (let ((_eid15747_
                                              (gxc#identifier-symbol
                                               _L15735_)))
                                         (hash-update!
                                          _ht15699_
                                          _eid15747_
                                          1+
                                          '0)))
                                     _hd1570815730_)
                                    (_g1570115714_ _g1570215717_))))
                            (_g1570115714_ _g1570215717_))))
                    (_g1570115714_ _g1570215717_)))))
        (_g1570015749_ _stx15698_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx15628_ _ht15629_)
      (let* ((_g1563115648_
              (lambda (_g1563215645_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1563215645_)))
             (_g1563015695_
              (lambda (_g1563215651_)
                (if (gx#stx-pair? _g1563215651_)
                    (let ((_e1563515653_ (gx#stx-e _g1563215651_)))
                      (let ((_hd1563615656_ (##car _e1563515653_))
                            (_tl1563715658_ (##cdr _e1563515653_)))
                        (if (gx#stx-pair? _tl1563715658_)
                            (let ((_e1563815661_ (gx#stx-e _tl1563715658_)))
                              (let ((_hd1563915664_ (##car _e1563815661_))
                                    (_tl1564015666_ (##cdr _e1563815661_)))
                                (if (gx#stx-pair? _tl1564015666_)
                                    (let ((_e1564115669_
                                           (gx#stx-e _tl1564015666_)))
                                      (let ((_hd1564215672_
                                             (##car _e1564115669_))
                                            (_tl1564315674_
                                             (##cdr _e1564115669_)))
                                        (if (gx#stx-null? _tl1564315674_)
                                            ((lambda (_L15677_ _L15678_)
                                               (let ((_eid15693_
                                                      (gxc#identifier-symbol
                                                       _L15678_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht15629_
                                                    _eid15693_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L15677_
                                                    _ht15629_))))
                                             _hd1564215672_
                                             _hd1563915664_)
                                            (_g1563115648_ _g1563215651_))))
                                    (_g1563115648_ _g1563215651_))))
                            (_g1563115648_ _g1563215651_))))
                    (_g1563115648_ _g1563215651_)))))
        (_g1563015695_ _stx15628_))))
  (define gxc#find-body%
    (lambda (_stx15541_ _arg15542_)
      (let* ((_g1554415563_
              (lambda (_g1554515560_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1554515560_)))
             (_g1554315625_
              (lambda (_g1554515566_)
                (if (gx#stx-pair? _g1554515566_)
                    (let ((_e1554715568_ (gx#stx-e _g1554515566_)))
                      (let ((_hd1554815571_ (##car _e1554715568_))
                            (_tl1554915573_ (##cdr _e1554715568_)))
                        (if (gx#stx-pair/null? _tl1554915573_)
                            (let ((_g16991_
                                   (gx#syntax-split-splice _tl1554915573_ '0)))
                              (begin
                                (let ((_g16992_
                                       (if (##values? _g16991_)
                                           (##vector-length _g16991_)
                                           1)))
                                  (if (not (##fx= _g16992_ 2))
                                      (error "Context expects 2 values"
                                             _g16992_)))
                                (let ((_target1555015576_
                                       (##vector-ref _g16991_ 0))
                                      (_tl1555215578_
                                       (##vector-ref _g16991_ 1)))
                                  (if (gx#stx-null? _tl1555215578_)
                                      (letrec ((_loop1555315581_
                                                (lambda (_hd1555115584_
                                                         _expr1555715586_)
                                                  (if (gx#stx-pair?
                                                       _hd1555115584_)
                                                      (let ((_e1555415589_
                                                             (gx#stx-e
                                                              _hd1555115584_)))
                                                        (let ((_lp-hd1555515592_
                                                               (##car _e1555415589_))
                                                              (_lp-tl1555615594_
                                                               (##cdr _e1555415589_)))
                                                          (_loop1555315581_
                                                           _lp-tl1555615594_
                                                           (cons _lp-hd1555515592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1555715586_))))
              (let ((_expr1555815597_ (reverse _expr1555715586_)))
                ((lambda (_L15600_)
                   (ormap1 (lambda (_g1561315615_)
                             (gxc#compile-e _g1561315615_ _arg15542_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1561715620_ _g1561815622_)
                                       (cons _g1561715620_ _g1561815622_))
                                     '()
                                     _L15600_))))
                 _expr1555815597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1555315581_
                                         _target1555015576_
                                         '()))
                                      (_g1554415563_ _g1554515566_)))))
                            (_g1554415563_ _g1554515566_))))
                    (_g1554415563_ _g1554515566_)))))
        (_g1554315625_ _stx15541_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx15473_ _arg15474_)
      (let* ((_g1547615493_
              (lambda (_g1547715490_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1547715490_)))
             (_g1547515538_
              (lambda (_g1547715496_)
                (if (gx#stx-pair? _g1547715496_)
                    (let ((_e1548015498_ (gx#stx-e _g1547715496_)))
                      (let ((_hd1548115501_ (##car _e1548015498_))
                            (_tl1548215503_ (##cdr _e1548015498_)))
                        (if (gx#stx-pair? _tl1548215503_)
                            (let ((_e1548315506_ (gx#stx-e _tl1548215503_)))
                              (let ((_hd1548415509_ (##car _e1548315506_))
                                    (_tl1548515511_ (##cdr _e1548315506_)))
                                (if (gx#stx-pair? _tl1548515511_)
                                    (let ((_e1548615514_
                                           (gx#stx-e _tl1548515511_)))
                                      (let ((_hd1548715517_
                                             (##car _e1548615514_))
                                            (_tl1548815519_
                                             (##cdr _e1548615514_)))
                                        (if (gx#stx-null? _tl1548815519_)
                                            ((lambda (_L15522_ _L15523_)
                                               (gxc#compile-e
                                                _L15522_
                                                _arg15474_))
                                             _hd1548715517_
                                             _hd1548415509_)
                                            (_g1547615493_ _g1547715496_))))
                                    (_g1547615493_ _g1547715496_))))
                            (_g1547615493_ _g1547715496_))))
                    (_g1547615493_ _g1547715496_)))))
        (_g1547515538_ _stx15473_))))
  (define gxc#find-lambda%
    (lambda (_stx15405_ _arg15406_)
      (let* ((_g1540815425_
              (lambda (_g1540915422_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1540915422_)))
             (_g1540715470_
              (lambda (_g1540915428_)
                (if (gx#stx-pair? _g1540915428_)
                    (let ((_e1541215430_ (gx#stx-e _g1540915428_)))
                      (let ((_hd1541315433_ (##car _e1541215430_))
                            (_tl1541415435_ (##cdr _e1541215430_)))
                        (if (gx#stx-pair? _tl1541415435_)
                            (let ((_e1541515438_ (gx#stx-e _tl1541415435_)))
                              (let ((_hd1541615441_ (##car _e1541515438_))
                                    (_tl1541715443_ (##cdr _e1541515438_)))
                                (if (gx#stx-pair? _tl1541715443_)
                                    (let ((_e1541815446_
                                           (gx#stx-e _tl1541715443_)))
                                      (let ((_hd1541915449_
                                             (##car _e1541815446_))
                                            (_tl1542015451_
                                             (##cdr _e1541815446_)))
                                        (if (gx#stx-null? _tl1542015451_)
                                            ((lambda (_L15454_ _L15455_)
                                               (gxc#compile-e
                                                _L15454_
                                                _arg15406_))
                                             _hd1541915449_
                                             _hd1541615441_)
                                            (_g1540815425_ _g1540915428_))))
                                    (_g1540815425_ _g1540915428_))))
                            (_g1540815425_ _g1540915428_))))
                    (_g1540815425_ _g1540915428_)))))
        (_g1540715470_ _stx15405_))))
  (define gxc#find-case-lambda%
    (lambda (_stx15287_ _arg15288_)
      (let* ((_g1529015318_
              (lambda (_g1529115315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1529115315_)))
             (_g1528915402_
              (lambda (_g1529115321_)
                (if (gx#stx-pair? _g1529115321_)
                    (let ((_e1529415323_ (gx#stx-e _g1529115321_)))
                      (let ((_hd1529515326_ (##car _e1529415323_))
                            (_tl1529615328_ (##cdr _e1529415323_)))
                        (if (gx#stx-pair/null? _tl1529615328_)
                            (let ((_g16993_
                                   (gx#syntax-split-splice _tl1529615328_ '0)))
                              (begin
                                (let ((_g16994_
                                       (if (##values? _g16993_)
                                           (##vector-length _g16993_)
                                           1)))
                                  (if (not (##fx= _g16994_ 2))
                                      (error "Context expects 2 values"
                                             _g16994_)))
                                (let ((_target1529715331_
                                       (##vector-ref _g16993_ 0))
                                      (_tl1529915333_
                                       (##vector-ref _g16993_ 1)))
                                  (if (gx#stx-null? _tl1529915333_)
                                      (letrec ((_loop1530015336_
                                                (lambda (_hd1529815339_
                                                         _body1530415341_
                                                         _hd1530515343_)
                                                  (if (gx#stx-pair?
                                                       _hd1529815339_)
                                                      (let ((_e1530115346_
                                                             (gx#stx-e
                                                              _hd1529815339_)))
                                                        (let ((_lp-hd1530215349_
                                                               (##car _e1530115346_))
                                                              (_lp-tl1530315351_
                                                               (##cdr _e1530115346_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1530215349_)
                                                              (let ((_e1530815354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1530215349_)))
                        (let ((_hd1530915357_ (##car _e1530815354_))
                              (_tl1531015359_ (##cdr _e1530815354_)))
                          (if (gx#stx-pair? _tl1531015359_)
                              (let ((_e1531115362_ (gx#stx-e _tl1531015359_)))
                                (let ((_hd1531215365_ (##car _e1531115362_))
                                      (_tl1531315367_ (##cdr _e1531115362_)))
                                  (if (gx#stx-null? _tl1531315367_)
                                      (_loop1530015336_
                                       _lp-tl1530315351_
                                       (cons _hd1531215365_ _body1530415341_)
                                       (cons _hd1530915357_ _hd1530515343_))
                                      (_g1529015318_ _g1529115321_))))
                              (_g1529015318_ _g1529115321_))))
                      (_g1529015318_ _g1529115321_))))
              (let ((_body1530615370_ (reverse _body1530415341_))
                    (_hd1530715372_ (reverse _hd1530515343_)))
                ((lambda (_L15375_ _L15376_)
                   (ormap1 (lambda (_g1539015392_)
                             (gxc#compile-e _g1539015392_ _arg15288_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1539415397_ _g1539515399_)
                                       (cons _g1539415397_ _g1539515399_))
                                     '()
                                     _L15375_))))
                 _body1530615370_
                 _hd1530715372_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1530015336_
                                         _target1529715331_
                                         '()
                                         '()))
                                      (_g1529015318_ _g1529115321_)))))
                            (_g1529015318_ _g1529115321_))))
                    (_g1529015318_ _g1529115321_)))))
        (_g1528915402_ _stx15287_))))
  (define gxc#find-let-values%
    (lambda (_stx15137_ _arg15138_)
      (let* ((_g1514015175_
              (lambda (_g1514115172_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1514115172_)))
             (_g1513915284_
              (lambda (_g1514115178_)
                (if (gx#stx-pair? _g1514115178_)
                    (let ((_e1514515180_ (gx#stx-e _g1514115178_)))
                      (let ((_hd1514615183_ (##car _e1514515180_))
                            (_tl1514715185_ (##cdr _e1514515180_)))
                        (if (gx#stx-pair? _tl1514715185_)
                            (let ((_e1514815188_ (gx#stx-e _tl1514715185_)))
                              (let ((_hd1514915191_ (##car _e1514815188_))
                                    (_tl1515015193_ (##cdr _e1514815188_)))
                                (if (gx#stx-pair/null? _hd1514915191_)
                                    (let ((_g16995_
                                           (gx#syntax-split-splice
                                            _hd1514915191_
                                            '0)))
                                      (begin
                                        (let ((_g16996_
                                               (if (##values? _g16995_)
                                                   (##vector-length _g16995_)
                                                   1)))
                                          (if (not (##fx= _g16996_ 2))
                                              (error "Context expects 2 values"
                                                     _g16996_)))
                                        (let ((_target1515115196_
                                               (##vector-ref _g16995_ 0))
                                              (_tl1515315198_
                                               (##vector-ref _g16995_ 1)))
                                          (if (gx#stx-null? _tl1515315198_)
                                              (letrec ((_loop1515415201_
                                                        (lambda (_hd1515215204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1515815206_
                         _bind1515915208_)
                  (if (gx#stx-pair? _hd1515215204_)
                      (let ((_e1515515211_ (gx#stx-e _hd1515215204_)))
                        (let ((_lp-hd1515615214_ (##car _e1515515211_))
                              (_lp-tl1515715216_ (##cdr _e1515515211_)))
                          (if (gx#stx-pair? _lp-hd1515615214_)
                              (let ((_e1516215219_
                                     (gx#stx-e _lp-hd1515615214_)))
                                (let ((_hd1516315222_ (##car _e1516215219_))
                                      (_tl1516415224_ (##cdr _e1516215219_)))
                                  (if (gx#stx-pair? _tl1516415224_)
                                      (let ((_e1516515227_
                                             (gx#stx-e _tl1516415224_)))
                                        (let ((_hd1516615230_
                                               (##car _e1516515227_))
                                              (_tl1516715232_
                                               (##cdr _e1516515227_)))
                                          (if (gx#stx-null? _tl1516715232_)
                                              (_loop1515415201_
                                               _lp-tl1515715216_
                                               (cons _hd1516615230_
                                                     _expr1515815206_)
                                               (cons _hd1516315222_
                                                     _bind1515915208_))
                                              (_g1514015175_ _g1514115178_))))
                                      (_g1514015175_ _g1514115178_))))
                              (_g1514015175_ _g1514115178_))))
                      (let ((_expr1516015235_ (reverse _expr1515815206_))
                            (_bind1516115237_ (reverse _bind1515915208_)))
                        (if (gx#stx-pair? _tl1515015193_)
                            (let ((_e1516815240_ (gx#stx-e _tl1515015193_)))
                              (let ((_hd1516915243_ (##car _e1516815240_))
                                    (_tl1517015245_ (##cdr _e1516815240_)))
                                (if (gx#stx-null? _tl1517015245_)
                                    ((lambda (_L15248_ _L15249_ _L15250_)
                                       (let ((_$e15281_
                                              (ormap1 (lambda (_g1526915271_)
                                                        (gxc#compile-e
                                                         _g1526915271_
                                                         _arg15138_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1527315276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1527415278_)
                          (cons _g1527315276_ _g1527415278_))
                        '()
                        _L15249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e15281_
                                             _$e15281_
                                             (gxc#compile-e
                                              _L15248_
                                              _arg15138_))))
                                     _hd1516915243_
                                     _expr1516015235_
                                     _bind1516115237_)
                                    (_g1514015175_ _g1514115178_))))
                            (_g1514015175_ _g1514115178_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1515415201_
                                                 _target1515115196_
                                                 '()
                                                 '()))
                                              (_g1514015175_ _g1514115178_)))))
                                    (_g1514015175_ _g1514115178_))))
                            (_g1514015175_ _g1514115178_))))
                    (_g1514015175_ _g1514115178_)))))
        (_g1513915284_ _stx15137_))))
  (define gxc#find-setq%
    (lambda (_stx15069_ _arg15070_)
      (let* ((_g1507215089_
              (lambda (_g1507315086_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1507315086_)))
             (_g1507115134_
              (lambda (_g1507315092_)
                (if (gx#stx-pair? _g1507315092_)
                    (let ((_e1507615094_ (gx#stx-e _g1507315092_)))
                      (let ((_hd1507715097_ (##car _e1507615094_))
                            (_tl1507815099_ (##cdr _e1507615094_)))
                        (if (gx#stx-pair? _tl1507815099_)
                            (let ((_e1507915102_ (gx#stx-e _tl1507815099_)))
                              (let ((_hd1508015105_ (##car _e1507915102_))
                                    (_tl1508115107_ (##cdr _e1507915102_)))
                                (if (gx#stx-pair? _tl1508115107_)
                                    (let ((_e1508215110_
                                           (gx#stx-e _tl1508115107_)))
                                      (let ((_hd1508315113_
                                             (##car _e1508215110_))
                                            (_tl1508415115_
                                             (##cdr _e1508215110_)))
                                        (if (gx#stx-null? _tl1508415115_)
                                            ((lambda (_L15118_ _L15119_)
                                               (gxc#compile-e
                                                _L15118_
                                                _arg15070_))
                                             _hd1508315113_
                                             _hd1508015105_)
                                            (_g1507215089_ _g1507315092_))))
                                    (_g1507215089_ _g1507315092_))))
                            (_g1507215089_ _g1507315092_))))
                    (_g1507215089_ _g1507315092_)))))
        (_g1507115134_ _stx15069_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx15013_ _ids15014_)
      (let* ((_g1501615029_
              (lambda (_g1501715026_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1501715026_)))
             (_g1501515066_
              (lambda (_g1501715032_)
                (if (gx#stx-pair? _g1501715032_)
                    (let ((_e1501915034_ (gx#stx-e _g1501715032_)))
                      (let ((_hd1502015037_ (##car _e1501915034_))
                            (_tl1502115039_ (##cdr _e1501915034_)))
                        (if (gx#stx-pair? _tl1502115039_)
                            (let ((_e1502215042_ (gx#stx-e _tl1502115039_)))
                              (let ((_hd1502315045_ (##car _e1502215042_))
                                    (_tl1502415047_ (##cdr _e1502215042_)))
                                (if (gx#stx-null? _tl1502415047_)
                                    ((lambda (_L15050_)
                                       (find (lambda (_g1506115063_)
                                               (gx#free-identifier=?
                                                _L15050_
                                                _g1506115063_))
                                             _ids15014_))
                                     _hd1502315045_)
                                    (_g1501615029_ _g1501715032_))))
                            (_g1501615029_ _g1501715032_))))
                    (_g1501615029_ _g1501715032_)))))
        (_g1501515066_ _stx15013_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx14937_ _ids14938_)
      (let* ((_g1494014957_
              (lambda (_g1494114954_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1494114954_)))
             (_g1493915010_
              (lambda (_g1494114960_)
                (if (gx#stx-pair? _g1494114960_)
                    (let ((_e1494414962_ (gx#stx-e _g1494114960_)))
                      (let ((_hd1494514965_ (##car _e1494414962_))
                            (_tl1494614967_ (##cdr _e1494414962_)))
                        (if (gx#stx-pair? _tl1494614967_)
                            (let ((_e1494714970_ (gx#stx-e _tl1494614967_)))
                              (let ((_hd1494814973_ (##car _e1494714970_))
                                    (_tl1494914975_ (##cdr _e1494714970_)))
                                (if (gx#stx-pair? _tl1494914975_)
                                    (let ((_e1495014978_
                                           (gx#stx-e _tl1494914975_)))
                                      (let ((_hd1495114981_
                                             (##car _e1495014978_))
                                            (_tl1495214983_
                                             (##cdr _e1495014978_)))
                                        (if (gx#stx-null? _tl1495214983_)
                                            ((lambda (_L14986_ _L14987_)
                                               (let ((_$e15007_
                                                      (find (lambda (_g1500215004_)
                                                              (gx#free-identifier=?
                                                               _L14987_
                                                               _g1500215004_))
                                                            _ids14938_)))
                                                 (if _$e15007_
                                                     _$e15007_
                                                     (gxc#compile-e
                                                      _L14986_
                                                      _ids14938_))))
                                             _hd1495114981_
                                             _hd1494814973_)
                                            (_g1494014957_ _g1494114960_))))
                                    (_g1494014957_ _g1494114960_))))
                            (_g1494014957_ _g1494114960_))))
                    (_g1494014957_ _g1494114960_)))))
        (_g1493915010_ _stx14937_)))))
