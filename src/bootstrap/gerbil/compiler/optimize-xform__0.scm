(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl18216_ (make-table 'test: eq?)))
         (table-set! _tbl18216_ '%#begin-annotation gxc#xform-identity)
         (table-set! _tbl18216_ '%#lambda gxc#xform-identity)
         (table-set! _tbl18216_ '%#case-lambda gxc#xform-identity)
         (table-set! _tbl18216_ '%#let-values gxc#xform-identity)
         (table-set! _tbl18216_ '%#letrec-values gxc#xform-identity)
         (table-set! _tbl18216_ '%#letrec*-values gxc#xform-identity)
         (table-set! _tbl18216_ '%#quote gxc#xform-identity)
         (table-set! _tbl18216_ '%#quote-syntax gxc#xform-identity)
         (table-set! _tbl18216_ '%#call gxc#xform-identity)
         (table-set! _tbl18216_ '%#if gxc#xform-identity)
         (table-set! _tbl18216_ '%#ref gxc#xform-identity)
         (table-set! _tbl18216_ '%#set! gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-instance? gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-direct-instance? gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-ref gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-set! gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-direct-ref gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-direct-set! gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-unchecked-ref gxc#xform-identity)
         (table-set! _tbl18216_ '%#struct-unchecked-set! gxc#xform-identity)
         _tbl18216_))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl18212_ (make-table 'test: eq?)))
         (table-set! _tbl18212_ '%#begin gxc#xform-identity)
         (table-set! _tbl18212_ '%#begin-syntax gxc#xform-identity)
         (table-set! _tbl18212_ '%#begin-foreign gxc#xform-identity)
         (table-set! _tbl18212_ '%#module gxc#xform-identity)
         (table-set! _tbl18212_ '%#import gxc#xform-identity)
         (table-set! _tbl18212_ '%#export gxc#xform-identity)
         (table-set! _tbl18212_ '%#provide gxc#xform-identity)
         (table-set! _tbl18212_ '%#extern gxc#xform-identity)
         (table-set! _tbl18212_ '%#define-values gxc#xform-identity)
         (table-set! _tbl18212_ '%#define-syntax gxc#xform-identity)
         (table-set! _tbl18212_ '%#define-alias gxc#xform-identity)
         (table-set! _tbl18212_ '%#declare gxc#xform-identity)
         _tbl18212_))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl18208_ (make-table 'test: eq?)))
         (hash-copy! _tbl18208_ (force gxc#&identity-special-form))
         (hash-copy! _tbl18208_ (force gxc#&identity-expression))
         _tbl18208_))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl18204_ (make-table 'test: eq?)))
         (table-set!
          _tbl18204_
          '%#begin-annotation
          gxc#xform-begin-annotation%)
         (table-set! _tbl18204_ '%#lambda gxc#xform-lambda%)
         (table-set! _tbl18204_ '%#case-lambda gxc#xform-case-lambda%)
         (table-set! _tbl18204_ '%#let-values gxc#xform-let-values%)
         (table-set! _tbl18204_ '%#letrec-values gxc#xform-let-values%)
         (table-set! _tbl18204_ '%#letrec*-values gxc#xform-let-values%)
         (table-set! _tbl18204_ '%#quote gxc#xform-identity)
         (table-set! _tbl18204_ '%#quote-syntax gxc#xform-identity)
         (table-set! _tbl18204_ '%#call gxc#xform-operands)
         (table-set! _tbl18204_ '%#if gxc#xform-operands)
         (table-set! _tbl18204_ '%#ref gxc#xform-identity)
         (table-set! _tbl18204_ '%#set! gxc#xform-setq%)
         (table-set! _tbl18204_ '%#struct-instance? gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-direct-instance? gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-ref gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-set! gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-direct-ref gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-direct-set! gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-unchecked-ref gxc#xform-operands)
         (table-set! _tbl18204_ '%#struct-unchecked-set! gxc#xform-operands)
         _tbl18204_))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl18200_ (make-table 'test: eq?)))
         (hash-copy! _tbl18200_ (force gxc#&basic-xform-expression))
         (hash-copy! _tbl18200_ (force gxc#&identity))
         (table-set! _tbl18200_ '%#begin gxc#xform-begin%)
         (table-set! _tbl18200_ '%#begin-syntax gxc#xform-begin-syntax%)
         (table-set! _tbl18200_ '%#module gxc#xform-module%)
         (table-set! _tbl18200_ '%#define-values gxc#xform-define-values%)
         (table-set! _tbl18200_ '%#define-syntax gxc#xform-define-syntax%)
         _tbl18200_))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl18196_ (make-table 'test: eq?)))
         (hash-copy! _tbl18196_ (force gxc#&void))
         (table-set! _tbl18196_ '%#begin gxc#collect-begin%)
         (table-set! _tbl18196_ '%#begin-syntax gxc#collect-begin-syntax%)
         (table-set!
          _tbl18196_
          '%#begin-annotation
          gxc#collect-begin-annotation%)
         (table-set! _tbl18196_ '%#module gxc#collect-module%)
         (table-set! _tbl18196_ '%#define-values gxc#collect-define-values%)
         (table-set! _tbl18196_ '%#define-syntax gxc#collect-define-syntax%)
         (table-set! _tbl18196_ '%#lambda gxc#collect-body-lambda%)
         (table-set! _tbl18196_ '%#case-lambda gxc#collect-body-case-lambda%)
         (table-set! _tbl18196_ '%#let-values gxc#collect-body-let-values%)
         (table-set! _tbl18196_ '%#letrec-values gxc#collect-body-let-values%)
         (table-set! _tbl18196_ '%#letrec*-values gxc#collect-body-let-values%)
         (table-set! _tbl18196_ '%#call gxc#collect-operands)
         (table-set! _tbl18196_ '%#if gxc#collect-operands)
         (table-set! _tbl18196_ '%#set! gxc#collect-mutators-setq%)
         (table-set! _tbl18196_ '%#struct-instance? gxc#collect-operands)
         (table-set!
          _tbl18196_
          '%#struct-direct-instance?
          gxc#collect-operands)
         (table-set! _tbl18196_ '%#struct-ref gxc#collect-operands)
         (table-set! _tbl18196_ '%#struct-set! gxc#collect-operands)
         (table-set! _tbl18196_ '%#struct-direct-ref gxc#collect-operands)
         (table-set! _tbl18196_ '%#struct-direct-set! gxc#collect-operands)
         (table-set! _tbl18196_ '%#struct-unchecked-ref gxc#collect-operands)
         (table-set! _tbl18196_ '%#struct-unchecked-set! gxc#collect-operands)
         _tbl18196_))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18189_ . _args18191_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18189_ _args18191_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl18186_ (make-table 'test: eq?)))
         (hash-copy! _tbl18186_ (force gxc#&basic-xform-expression))
         (table-set! _tbl18186_ '%#begin gxc#xform-begin%)
         (table-set! _tbl18186_ '%#ref gxc#expression-subst-ref%)
         (table-set! _tbl18186_ '%#set! gxc#expression-subst-setq%)
         _tbl18186_))))
  (define gxc#apply-expression-subst
    (lambda (_stx18179_ . _args18181_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18179_ _args18181_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (make-promise
     (lambda ()
       (let ((_tbl18176_ (make-table 'test: eq?)))
         (hash-copy! _tbl18176_ (force gxc#&expression-subst))
         (table-set! _tbl18176_ '%#ref gxc#expression-subst*-ref%)
         (table-set! _tbl18176_ '%#set! gxc#expression-subst*-setq%)
         _tbl18176_))))
  (define gxc#apply-expression-subst*
    (lambda (_stx18169_ . _args18171_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18169_ _args18171_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (make-promise
     (lambda ()
       (let ((_tbl18166_ (make-table 'test: eq?)))
         (hash-copy! _tbl18166_ (force gxc#&false-expression))
         (table-set! _tbl18166_ '%#begin gxc#find-body%)
         (table-set! _tbl18166_ '%#begin-annotation gxc#find-begin-annotation%)
         (table-set! _tbl18166_ '%#lambda gxc#find-lambda%)
         (table-set! _tbl18166_ '%#case-lambda gxc#find-case-lambda%)
         (table-set! _tbl18166_ '%#let-values gxc#find-let-values%)
         (table-set! _tbl18166_ '%#letrec-values gxc#find-let-values%)
         (table-set! _tbl18166_ '%#letrec*-values gxc#find-let-values%)
         (table-set! _tbl18166_ '%#call gxc#find-body%)
         (table-set! _tbl18166_ '%#if gxc#find-body%)
         (table-set! _tbl18166_ '%#set! gxc#find-setq%)
         (table-set! _tbl18166_ '%#struct-instance? gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-direct-instance? gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-ref gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-set! gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-direct-ref gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-direct-set! gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-unchecked-ref gxc#find-body%)
         (table-set! _tbl18166_ '%#struct-unchecked-set! gxc#find-body%)
         _tbl18166_))))
  (define gxc#&find-var-refs
    (make-promise
     (lambda ()
       (let ((_tbl18162_ (make-table 'test: eq?)))
         (hash-copy! _tbl18162_ (force gxc#&find-expression))
         (table-set! _tbl18162_ '%#ref gxc#find-var-refs-ref%)
         (table-set! _tbl18162_ '%#set! gxc#find-var-refs-setq%)
         _tbl18162_))))
  (define gxc#apply-find-var-refs
    (lambda (_stx18155_ . _args18157_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18155_ _args18157_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (make-promise
     (lambda ()
       (let ((_tbl18152_ (make-table 'test: eq?)))
         (hash-copy! _tbl18152_ (force gxc#&collect-expression-refs))
         (table-set! _tbl18152_ '%#ref gxc#collect-runtime-refs-ref%)
         (table-set! _tbl18152_ '%#set! gxc#collect-runtime-refs-setq%)
         _tbl18152_))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx18145_ . _args18147_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18145_ _args18147_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx18142_ . _args18143_) _stx18142_))
  (define gxc#xform-wrap-source
    (lambda (_stx18139_ _src-stx18140_)
      (gx#stx-wrap-source _stx18139_ (gx#stx-source _src-stx18140_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18133_)
      (lambda (_g1813418136_)
        (apply gxc#compile-e _g1813418136_ _args18133_))))
  (define gxc#xform-begin%
    (lambda (_stx18092_ . _args18093_)
      (let* ((_g1809518105_
              (lambda (_g1809618102_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1809618102_)))
             (_g1809418130_
              (lambda (_g1809618108_)
                (if (gx#stx-pair? _g1809618108_)
                    (let ((_e1809818110_ (gx#stx-e _g1809618108_)))
                      (let ((_hd1809918113_ (##car _e1809818110_))
                            (_tl1810018115_ (##cdr _e1809818110_)))
                        ((lambda (_L18118_)
                           (let ((_forms18128_
                                  (map (gxc#xform-apply-compile-e _args18093_)
                                       _L18118_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms18128_)
                              _stx18092_)))
                         _tl1810018115_)))
                    (_g1809518105_ _g1809618108_)))))
        (_g1809418130_ _stx18092_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx18050_ . _args18051_)
      (let* ((_g1805318063_
              (lambda (_g1805418060_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1805418060_)))
             (_g1805218089_
              (lambda (_g1805418066_)
                (if (gx#stx-pair? _g1805418066_)
                    (let ((_e1805618068_ (gx#stx-e _g1805418066_)))
                      (let ((_hd1805718071_ (##car _e1805618068_))
                            (_tl1805818073_ (##cdr _e1805618068_)))
                        ((lambda (_L18076_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms18087_
                                     (map (gxc#xform-apply-compile-e
                                           _args18051_)
                                          _L18076_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms18087_)
                                 _stx18050_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1805818073_)))
                    (_g1805318063_ _g1805418066_)))))
        (_g1805218089_ _stx18050_))))
  (define gxc#xform-module%
    (lambda (_stx17987_ . _args17988_)
      (let* ((_g1799018004_
              (lambda (_g1799118001_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1799118001_)))
             (_g1798918047_
              (lambda (_g1799118007_)
                (if (gx#stx-pair? _g1799118007_)
                    (let ((_e1799418009_ (gx#stx-e _g1799118007_)))
                      (let ((_hd1799518012_ (##car _e1799418009_))
                            (_tl1799618014_ (##cdr _e1799418009_)))
                        (if (gx#stx-pair? _tl1799618014_)
                            (let ((_e1799718017_ (gx#stx-e _tl1799618014_)))
                              (let ((_hd1799818020_ (##car _e1799718017_))
                                    (_tl1799918022_ (##cdr _e1799718017_)))
                                ((lambda (_L18025_ _L18026_)
                                   (let* ((_ctx18039_
                                           (gx#syntax-local-e__0 _L18026_))
                                          (_code18041_
                                           (##structure-ref
                                            _ctx18039_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code18044_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code18041_
                                                     _args17988_))
                                            gx#current-expander-context
                                            _ctx18039_)))
                                     (##structure-set!
                                      _ctx18039_
                                      _code18044_
                                      '11
                                      gx#module-context::t
                                      '#f)
                                     (gxc#xform-wrap-source
                                      (cons '%#module
                                            (cons _L18026_
                                                  (cons _code18044_ '())))
                                      _stx17987_)))
                                 _tl1799918022_
                                 _hd1799818020_)))
                            (_g1799018004_ _g1799118007_))))
                    (_g1799018004_ _g1799118007_)))))
        (_g1798918047_ _stx17987_))))
  (define gxc#xform-define-values%
    (lambda (_stx17917_ . _args17918_)
      (let* ((_g1792017937_
              (lambda (_g1792117934_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1792117934_)))
             (_g1791917984_
              (lambda (_g1792117940_)
                (if (gx#stx-pair? _g1792117940_)
                    (let ((_e1792417942_ (gx#stx-e _g1792117940_)))
                      (let ((_hd1792517945_ (##car _e1792417942_))
                            (_tl1792617947_ (##cdr _e1792417942_)))
                        (if (gx#stx-pair? _tl1792617947_)
                            (let ((_e1792717950_ (gx#stx-e _tl1792617947_)))
                              (let ((_hd1792817953_ (##car _e1792717950_))
                                    (_tl1792917955_ (##cdr _e1792717950_)))
                                (if (gx#stx-pair? _tl1792917955_)
                                    (let ((_e1793017958_
                                           (gx#stx-e _tl1792917955_)))
                                      (let ((_hd1793117961_
                                             (##car _e1793017958_))
                                            (_tl1793217963_
                                             (##cdr _e1793017958_)))
                                        (if (gx#stx-null? _tl1793217963_)
                                            ((lambda (_L17966_ _L17967_)
                                               (let ((_expr17982_
                                                      (apply gxc#compile-e
                                                             _L17966_
                                                             _args17918_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17967_
                                                              (cons _expr17982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17917_)))
                                             _hd1793117961_
                                             _hd1792817953_)
                                            (_g1792017937_ _g1792117940_))))
                                    (_g1792017937_ _g1792117940_))))
                            (_g1792017937_ _g1792117940_))))
                    (_g1792017937_ _g1792117940_)))))
        (_g1791917984_ _stx17917_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx17846_ . _args17847_)
      (let* ((_g1784917866_
              (lambda (_g1785017863_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1785017863_)))
             (_g1784817914_
              (lambda (_g1785017869_)
                (if (gx#stx-pair? _g1785017869_)
                    (let ((_e1785317871_ (gx#stx-e _g1785017869_)))
                      (let ((_hd1785417874_ (##car _e1785317871_))
                            (_tl1785517876_ (##cdr _e1785317871_)))
                        (if (gx#stx-pair? _tl1785517876_)
                            (let ((_e1785617879_ (gx#stx-e _tl1785517876_)))
                              (let ((_hd1785717882_ (##car _e1785617879_))
                                    (_tl1785817884_ (##cdr _e1785617879_)))
                                (if (gx#stx-pair? _tl1785817884_)
                                    (let ((_e1785917887_
                                           (gx#stx-e _tl1785817884_)))
                                      (let ((_hd1786017890_
                                             (##car _e1785917887_))
                                            (_tl1786117892_
                                             (##cdr _e1785917887_)))
                                        (if (gx#stx-null? _tl1786117892_)
                                            ((lambda (_L17895_ _L17896_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr17912_
                                                         (apply gxc#compile-e
                                                                _L17895_
                                                                _args17847_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L17896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr17912_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx17846_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1786017890_
                                             _hd1785717882_)
                                            (_g1784917866_ _g1785017869_))))
                                    (_g1784917866_ _g1785017869_))))
                            (_g1784917866_ _g1785017869_))))
                    (_g1784917866_ _g1785017869_)))))
        (_g1784817914_ _stx17846_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx17776_ . _args17777_)
      (let* ((_g1777917796_
              (lambda (_g1778017793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1778017793_)))
             (_g1777817843_
              (lambda (_g1778017799_)
                (if (gx#stx-pair? _g1778017799_)
                    (let ((_e1778317801_ (gx#stx-e _g1778017799_)))
                      (let ((_hd1778417804_ (##car _e1778317801_))
                            (_tl1778517806_ (##cdr _e1778317801_)))
                        (if (gx#stx-pair? _tl1778517806_)
                            (let ((_e1778617809_ (gx#stx-e _tl1778517806_)))
                              (let ((_hd1778717812_ (##car _e1778617809_))
                                    (_tl1778817814_ (##cdr _e1778617809_)))
                                (if (gx#stx-pair? _tl1778817814_)
                                    (let ((_e1778917817_
                                           (gx#stx-e _tl1778817814_)))
                                      (let ((_hd1779017820_
                                             (##car _e1778917817_))
                                            (_tl1779117822_
                                             (##cdr _e1778917817_)))
                                        (if (gx#stx-null? _tl1779117822_)
                                            ((lambda (_L17825_ _L17826_)
                                               (let ((_expr17841_
                                                      (apply gxc#compile-e
                                                             _L17825_
                                                             _args17777_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L17826_
                                                              (cons _expr17841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17776_)))
                                             _hd1779017820_
                                             _hd1778717812_)
                                            (_g1777917796_ _g1778017799_))))
                                    (_g1777917796_ _g1778017799_))))
                            (_g1777917796_ _g1778017799_))))
                    (_g1777917796_ _g1778017799_)))))
        (_g1777817843_ _stx17776_))))
  (define gxc#xform-lambda%
    (lambda (_stx17719_ . _args17720_)
      (let* ((_g1772217736_
              (lambda (_g1772317733_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1772317733_)))
             (_g1772117773_
              (lambda (_g1772317739_)
                (if (gx#stx-pair? _g1772317739_)
                    (let ((_e1772617741_ (gx#stx-e _g1772317739_)))
                      (let ((_hd1772717744_ (##car _e1772617741_))
                            (_tl1772817746_ (##cdr _e1772617741_)))
                        (if (gx#stx-pair? _tl1772817746_)
                            (let ((_e1772917749_ (gx#stx-e _tl1772817746_)))
                              (let ((_hd1773017752_ (##car _e1772917749_))
                                    (_tl1773117754_ (##cdr _e1772917749_)))
                                ((lambda (_L17757_ _L17758_)
                                   (let ((_body17771_
                                          (map (gxc#xform-apply-compile-e
                                                _args17720_)
                                               _L17757_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L17758_ _body17771_))
                                      _stx17719_)))
                                 _tl1773117754_
                                 _hd1773017752_)))
                            (_g1772217736_ _g1772317739_))))
                    (_g1772217736_ _g1772317739_)))))
        (_g1772117773_ _stx17719_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17632_ . _args17633_)
      (letrec ((_clause-e17635_
                (lambda (_clause17676_)
                  (let* ((_g1767817689_
                          (lambda (_g1767917686_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1767917686_)))
                         (_g1767717716_
                          (lambda (_g1767917692_)
                            (if (gx#stx-pair? _g1767917692_)
                                (let ((_e1768217694_ (gx#stx-e _g1767917692_)))
                                  (let ((_hd1768317697_ (##car _e1768217694_))
                                        (_tl1768417699_ (##cdr _e1768217694_)))
                                    ((lambda (_L17702_ _L17703_)
                                       (let ((_body17714_
                                              (map (gxc#xform-apply-compile-e
                                                    _args17633_)
                                                   _L17702_)))
                                         (cons _L17703_ _body17714_)))
                                     _tl1768417699_
                                     _hd1768317697_)))
                                (_g1767817689_ _g1767917692_)))))
                    (_g1767717716_ _clause17676_)))))
        (let* ((_g1763717647_
                (lambda (_g1763817644_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1763817644_)))
               (_g1763617673_
                (lambda (_g1763817650_)
                  (if (gx#stx-pair? _g1763817650_)
                      (let ((_e1764017652_ (gx#stx-e _g1763817650_)))
                        (let ((_hd1764117655_ (##car _e1764017652_))
                              (_tl1764217657_ (##cdr _e1764017652_)))
                          ((lambda (_L17660_)
                             (let ((_clauses17671_
                                    (map _clause-e17635_ _L17660_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses17671_)
                                _stx17632_)))
                           _tl1764217657_)))
                      (_g1763717647_ _g1763817650_)))))
          (_g1763617673_ _stx17632_)))))
  (define gxc#xform-let-values%
    (lambda (_stx17426_ . _args17427_)
      (let* ((_g1742917462_
              (lambda (_g1743017459_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1743017459_)))
             (_g1742817629_
              (lambda (_g1743017465_)
                (if (gx#stx-pair? _g1743017465_)
                    (let ((_e1743517467_ (gx#stx-e _g1743017465_)))
                      (let ((_hd1743617470_ (##car _e1743517467_))
                            (_tl1743717472_ (##cdr _e1743517467_)))
                        (if (gx#stx-pair? _tl1743717472_)
                            (let ((_e1743817475_ (gx#stx-e _tl1743717472_)))
                              (let ((_hd1743917478_ (##car _e1743817475_))
                                    (_tl1744017480_ (##cdr _e1743817475_)))
                                (if (gx#stx-pair/null? _hd1743917478_)
                                    (let ((_g18218_
                                           (gx#syntax-split-splice
                                            _hd1743917478_
                                            '0)))
                                      (begin
                                        (let ((_g18219_
                                               (if (##values? _g18218_)
                                                   (##vector-length _g18218_)
                                                   1)))
                                          (if (not (##fx= _g18219_ 2))
                                              (error "Context expects 2 values"
                                                     _g18219_)))
                                        (let ((_target1744117483_
                                               (##vector-ref _g18218_ 0))
                                              (_tl1744317485_
                                               (##vector-ref _g18218_ 1)))
                                          (if (gx#stx-null? _tl1744317485_)
                                              (letrec ((_loop1744417488_
                                                        (lambda (_hd1744217491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1744817493_
                         _hd1744917495_)
                  (if (gx#stx-pair? _hd1744217491_)
                      (let ((_e1744517498_ (gx#stx-e _hd1744217491_)))
                        (let ((_lp-hd1744617501_ (##car _e1744517498_))
                              (_lp-tl1744717503_ (##cdr _e1744517498_)))
                          (if (gx#stx-pair? _lp-hd1744617501_)
                              (let ((_e1745217506_
                                     (gx#stx-e _lp-hd1744617501_)))
                                (let ((_hd1745317509_ (##car _e1745217506_))
                                      (_tl1745417511_ (##cdr _e1745217506_)))
                                  (if (gx#stx-pair? _tl1745417511_)
                                      (let ((_e1745517514_
                                             (gx#stx-e _tl1745417511_)))
                                        (let ((_hd1745617517_
                                               (##car _e1745517514_))
                                              (_tl1745717519_
                                               (##cdr _e1745517514_)))
                                          (if (gx#stx-null? _tl1745717519_)
                                              (_loop1744417488_
                                               _lp-tl1744717503_
                                               (cons _hd1745617517_
                                                     _expr1744817493_)
                                               (cons _hd1745317509_
                                                     _hd1744917495_))
                                              (_g1742917462_ _g1743017465_))))
                                      (_g1742917462_ _g1743017465_))))
                              (_g1742917462_ _g1743017465_))))
                      (let ((_expr1745017522_ (reverse _expr1744817493_))
                            (_hd1745117524_ (reverse _hd1744917495_)))
                        ((lambda (_L17527_ _L17528_ _L17529_ _L17530_)
                           (let* ((_g1754917565_
                                   (lambda (_g1755017562_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1755017562_)))
                                  (_g1754817619_
                                   (lambda (_g1755017568_)
                                     (if (gx#stx-pair/null? _g1755017568_)
                                         (let ((_g18220_
                                                (gx#syntax-split-splice
                                                 _g1755017568_
                                                 '0)))
                                           (begin
                                             (let ((_g18221_
                                                    (if (##values? _g18220_)
                                                        (##vector-length
                                                         _g18220_)
                                                        1)))
                                               (if (not (##fx= _g18221_ 2))
                                                   (error "Context expects 2 values"
                                                          _g18221_)))
                                             (let ((_target1755217570_
                                                    (##vector-ref _g18220_ 0))
                                                   (_tl1755417572_
                                                    (##vector-ref _g18220_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1755417572_)
                                                   (letrec ((_loop1755517575_
                                                             (lambda (_hd1755317578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1755917580_)
                       (if (gx#stx-pair? _hd1755317578_)
                           (let ((_e1755617583_ (gx#syntax-e _hd1755317578_)))
                             (let ((_lp-hd1755717586_ (##car _e1755617583_))
                                   (_lp-tl1755817588_ (##cdr _e1755617583_)))
                               (_loop1755517575_
                                _lp-tl1755817588_
                                (cons _lp-hd1755717586_ _expr1755917580_))))
                           (let ((_expr1756017591_ (reverse _expr1755917580_)))
                             ((lambda (_L17594_)
                                (let ()
                                  (let ((_body17607_
                                         (map (gxc#xform-apply-compile-e
                                               _args17427_)
                                              _L17527_)))
                                    (gxc#xform-wrap-source
                                     (cons _L17530_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L17594_
                                                    _L17529_)
                                                   (foldr2 (lambda (_g1760817612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1760917614_
                            _g1761017616_)
                     (cons (cons _g1760917614_ (cons _g1760817612_ '()))
                           _g1761017616_))
                   '()
                   _L17594_
                   _L17529_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body17607_))
                                     _stx17426_))))
                              _expr1756017591_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1755517575_
                                                      _target1755217570_
                                                      '()))
                                                   (_g1754917565_
                                                    _g1755017568_)))))
                                         (_g1754917565_ _g1755017568_)))))
                             (_g1754817619_
                              (map (gxc#xform-apply-compile-e _args17427_)
                                   (foldr1 (lambda (_g1762117624_
                                                    _g1762217626_)
                                             (cons _g1762117624_
                                                   _g1762217626_))
                                           '()
                                           _L17528_)))))
                         _tl1744017480_
                         _expr1745017522_
                         _hd1745117524_
                         _hd1743617470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1744417488_
                                                 _target1744117483_
                                                 '()
                                                 '()))
                                              (_g1742917462_ _g1743017465_)))))
                                    (_g1742917462_ _g1743017465_))))
                            (_g1742917462_ _g1743017465_))))
                    (_g1742917462_ _g1743017465_)))))
        (_g1742817629_ _stx17426_))))
  (define gxc#xform-operands
    (lambda (_stx17382_ . _args17383_)
      (let* ((_g1738517396_
              (lambda (_g1738617393_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1738617393_)))
             (_g1738417423_
              (lambda (_g1738617399_)
                (if (gx#stx-pair? _g1738617399_)
                    (let ((_e1738917401_ (gx#stx-e _g1738617399_)))
                      (let ((_hd1739017404_ (##car _e1738917401_))
                            (_tl1739117406_ (##cdr _e1738917401_)))
                        ((lambda (_L17409_ _L17410_)
                           (let ((_rands17421_
                                  (map (gxc#xform-apply-compile-e _args17383_)
                                       _L17409_)))
                             (gxc#xform-wrap-source
                              (cons _L17410_ _rands17421_)
                              _stx17382_)))
                         _tl1739117406_
                         _hd1739017404_)))
                    (_g1738517396_ _g1738617399_)))))
        (_g1738417423_ _stx17382_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx17312_ . _args17313_)
      (let* ((_g1731517332_
              (lambda (_g1731617329_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1731617329_)))
             (_g1731417379_
              (lambda (_g1731617335_)
                (if (gx#stx-pair? _g1731617335_)
                    (let ((_e1731917337_ (gx#stx-e _g1731617335_)))
                      (let ((_hd1732017340_ (##car _e1731917337_))
                            (_tl1732117342_ (##cdr _e1731917337_)))
                        (if (gx#stx-pair? _tl1732117342_)
                            (let ((_e1732217345_ (gx#stx-e _tl1732117342_)))
                              (let ((_hd1732317348_ (##car _e1732217345_))
                                    (_tl1732417350_ (##cdr _e1732217345_)))
                                (if (gx#stx-pair? _tl1732417350_)
                                    (let ((_e1732517353_
                                           (gx#stx-e _tl1732417350_)))
                                      (let ((_hd1732617356_
                                             (##car _e1732517353_))
                                            (_tl1732717358_
                                             (##cdr _e1732517353_)))
                                        (if (gx#stx-null? _tl1732717358_)
                                            ((lambda (_L17361_ _L17362_)
                                               (let ((_expr17377_
                                                      (apply gxc#compile-e
                                                             _L17361_
                                                             _args17313_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L17362_
                                                              (cons _expr17377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17312_)))
                                             _hd1732617356_
                                             _hd1732317348_)
                                            (_g1731517332_ _g1731617335_))))
                                    (_g1731517332_ _g1731617335_))))
                            (_g1731517332_ _g1731617335_))))
                    (_g1731517332_ _g1731617335_)))))
        (_g1731417379_ _stx17312_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx17243_)
      (let* ((_g1724517262_
              (lambda (_g1724617259_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1724617259_)))
             (_g1724417309_
              (lambda (_g1724617265_)
                (if (gx#stx-pair? _g1724617265_)
                    (let ((_e1724917267_ (gx#stx-e _g1724617265_)))
                      (let ((_hd1725017270_ (##car _e1724917267_))
                            (_tl1725117272_ (##cdr _e1724917267_)))
                        (if (gx#stx-pair? _tl1725117272_)
                            (let ((_e1725217275_ (gx#stx-e _tl1725117272_)))
                              (let ((_hd1725317278_ (##car _e1725217275_))
                                    (_tl1725417280_ (##cdr _e1725217275_)))
                                (if (gx#stx-pair? _tl1725417280_)
                                    (let ((_e1725517283_
                                           (gx#stx-e _tl1725417280_)))
                                      (let ((_hd1725617286_
                                             (##car _e1725517283_))
                                            (_tl1725717288_
                                             (##cdr _e1725517283_)))
                                        (if (gx#stx-null? _tl1725717288_)
                                            ((lambda (_L17291_ _L17292_)
                                               (let ((_sym17307_
                                                      (gxc#identifier-symbol
                                                       _L17292_)))
                                                 (gxc#verbose
                                                  '"collect mutator "
                                                  _sym17307_)
                                                 (table-set!
                                                  (gxc#current-compile-mutators)
                                                  _sym17307_
                                                  '#t)
                                                 (gxc#compile-e _L17291_)))
                                             _hd1725617286_
                                             _hd1725317278_)
                                            (_g1724517262_ _g1724617265_))))
                                    (_g1724517262_ _g1724617265_))))
                            (_g1724517262_ _g1724617265_))))
                    (_g1724517262_ _g1724617265_)))))
        (_g1724417309_ _stx17243_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx17190_ _id17191_ _new-id17192_)
      (let* ((_g1719417207_
              (lambda (_g1719517204_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1719517204_)))
             (_g1719317240_
              (lambda (_g1719517210_)
                (if (gx#stx-pair? _g1719517210_)
                    (let ((_e1719717212_ (gx#stx-e _g1719517210_)))
                      (let ((_hd1719817215_ (##car _e1719717212_))
                            (_tl1719917217_ (##cdr _e1719717212_)))
                        (if (gx#stx-pair? _tl1719917217_)
                            (let ((_e1720017220_ (gx#stx-e _tl1719917217_)))
                              (let ((_hd1720117223_ (##car _e1720017220_))
                                    (_tl1720217225_ (##cdr _e1720017220_)))
                                (if (gx#stx-null? _tl1720217225_)
                                    ((lambda (_L17228_)
                                       (if (gx#free-identifier=?
                                            _L17228_
                                            _id17191_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id17192_ '()))
                                            _stx17190_)
                                           _stx17190_))
                                     _hd1720117223_)
                                    (_g1719417207_ _g1719517210_))))
                            (_g1719417207_ _g1719517210_))))
                    (_g1719417207_ _g1719517210_)))))
        (_g1719317240_ _stx17190_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx17131_ _subst17132_)
      (let* ((_g1713417147_
              (lambda (_g1713517144_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1713517144_)))
             (_g1713317187_
              (lambda (_g1713517150_)
                (if (gx#stx-pair? _g1713517150_)
                    (let ((_e1713717152_ (gx#stx-e _g1713517150_)))
                      (let ((_hd1713817155_ (##car _e1713717152_))
                            (_tl1713917157_ (##cdr _e1713717152_)))
                        (if (gx#stx-pair? _tl1713917157_)
                            (let ((_e1714017160_ (gx#stx-e _tl1713917157_)))
                              (let ((_hd1714117163_ (##car _e1714017160_))
                                    (_tl1714217165_ (##cdr _e1714017160_)))
                                (if (gx#stx-null? _tl1714217165_)
                                    ((lambda (_L17168_)
                                       (let ((_$e17182_
                                              (find (lambda (_sub17180_)
                                                      (gx#free-identifier=?
                                                       _L17168_
                                                       (car _sub17180_)))
                                                    _subst17132_)))
                                         (if _$e17182_
                                             ((lambda (_sub17185_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub17185_)
                                                             '()))
                                                 _stx17131_))
                                              _$e17182_)
                                             _stx17131_)))
                                     _hd1714117163_)
                                    (_g1713417147_ _g1713517150_))))
                            (_g1713417147_ _g1713517150_))))
                    (_g1713417147_ _g1713517150_)))))
        (_g1713317187_ _stx17131_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx17059_ _id17060_ _new-id17061_)
      (let* ((_g1706317080_
              (lambda (_g1706417077_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1706417077_)))
             (_g1706217128_
              (lambda (_g1706417083_)
                (if (gx#stx-pair? _g1706417083_)
                    (let ((_e1706717085_ (gx#stx-e _g1706417083_)))
                      (let ((_hd1706817088_ (##car _e1706717085_))
                            (_tl1706917090_ (##cdr _e1706717085_)))
                        (if (gx#stx-pair? _tl1706917090_)
                            (let ((_e1707017093_ (gx#stx-e _tl1706917090_)))
                              (let ((_hd1707117096_ (##car _e1707017093_))
                                    (_tl1707217098_ (##cdr _e1707017093_)))
                                (if (gx#stx-pair? _tl1707217098_)
                                    (let ((_e1707317101_
                                           (gx#stx-e _tl1707217098_)))
                                      (let ((_hd1707417104_
                                             (##car _e1707317101_))
                                            (_tl1707517106_
                                             (##cdr _e1707317101_)))
                                        (if (gx#stx-null? _tl1707517106_)
                                            ((lambda (_L17109_ _L17110_)
                                               (let ((_new-expr17125_
                                                      (gxc#compile-e
                                                       _L17109_
                                                       _id17060_
                                                       _new-id17061_))
                                                     (_new-xid17126_
                                                      (if (gx#free-identifier=?
                                                           _L17110_
                                                           _id17060_)
                                                          _new-id17061_
                                                          _L17110_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17126_
                                                              (cons _new-expr17125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17059_)))
                                             _hd1707417104_
                                             _hd1707117096_)
                                            (_g1706317080_ _g1706417083_))))
                                    (_g1706317080_ _g1706417083_))))
                            (_g1706317080_ _g1706417083_))))
                    (_g1706317080_ _g1706417083_)))))
        (_g1706217128_ _stx17059_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx16983_ _subst16984_)
      (let* ((_g1698617003_
              (lambda (_g1698717000_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1698717000_)))
             (_g1698517056_
              (lambda (_g1698717006_)
                (if (gx#stx-pair? _g1698717006_)
                    (let ((_e1699017008_ (gx#stx-e _g1698717006_)))
                      (let ((_hd1699117011_ (##car _e1699017008_))
                            (_tl1699217013_ (##cdr _e1699017008_)))
                        (if (gx#stx-pair? _tl1699217013_)
                            (let ((_e1699317016_ (gx#stx-e _tl1699217013_)))
                              (let ((_hd1699417019_ (##car _e1699317016_))
                                    (_tl1699517021_ (##cdr _e1699317016_)))
                                (if (gx#stx-pair? _tl1699517021_)
                                    (let ((_e1699617024_
                                           (gx#stx-e _tl1699517021_)))
                                      (let ((_hd1699717027_
                                             (##car _e1699617024_))
                                            (_tl1699817029_
                                             (##cdr _e1699617024_)))
                                        (if (gx#stx-null? _tl1699817029_)
                                            ((lambda (_L17032_ _L17033_)
                                               (let ((_new-expr17053_
                                                      (gxc#compile-e
                                                       _L17032_
                                                       _subst16984_))
                                                     (_new-xid17054_
                                                      (let ((_$e17050_
                                                             (find (lambda (_sub17048_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L17033_ (car _sub17048_)))
                           _subst16984_)))
                (if _$e17050_ (cdr _$e17050_) _L17033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17054_
                                                              (cons _new-expr17053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx16983_)))
                                             _hd1699717027_
                                             _hd1699417019_)
                                            (_g1698617003_ _g1698717006_))))
                                    (_g1698617003_ _g1698717006_))))
                            (_g1698617003_ _g1698717006_))))
                    (_g1698617003_ _g1698717006_)))))
        (_g1698517056_ _stx16983_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx16929_ _ht16930_)
      (let* ((_g1693216945_
              (lambda (_g1693316942_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1693316942_)))
             (_g1693116980_
              (lambda (_g1693316948_)
                (if (gx#stx-pair? _g1693316948_)
                    (let ((_e1693516950_ (gx#stx-e _g1693316948_)))
                      (let ((_hd1693616953_ (##car _e1693516950_))
                            (_tl1693716955_ (##cdr _e1693516950_)))
                        (if (gx#stx-pair? _tl1693716955_)
                            (let ((_e1693816958_ (gx#stx-e _tl1693716955_)))
                              (let ((_hd1693916961_ (##car _e1693816958_))
                                    (_tl1694016963_ (##cdr _e1693816958_)))
                                (if (gx#stx-null? _tl1694016963_)
                                    ((lambda (_L16966_)
                                       (let ((_eid16978_
                                              (gxc#identifier-symbol
                                               _L16966_)))
                                         (hash-update!
                                          _ht16930_
                                          _eid16978_
                                          1+
                                          '0)))
                                     _hd1693916961_)
                                    (_g1693216945_ _g1693316948_))))
                            (_g1693216945_ _g1693316948_))))
                    (_g1693216945_ _g1693316948_)))))
        (_g1693116980_ _stx16929_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx16859_ _ht16860_)
      (let* ((_g1686216879_
              (lambda (_g1686316876_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1686316876_)))
             (_g1686116926_
              (lambda (_g1686316882_)
                (if (gx#stx-pair? _g1686316882_)
                    (let ((_e1686616884_ (gx#stx-e _g1686316882_)))
                      (let ((_hd1686716887_ (##car _e1686616884_))
                            (_tl1686816889_ (##cdr _e1686616884_)))
                        (if (gx#stx-pair? _tl1686816889_)
                            (let ((_e1686916892_ (gx#stx-e _tl1686816889_)))
                              (let ((_hd1687016895_ (##car _e1686916892_))
                                    (_tl1687116897_ (##cdr _e1686916892_)))
                                (if (gx#stx-pair? _tl1687116897_)
                                    (let ((_e1687216900_
                                           (gx#stx-e _tl1687116897_)))
                                      (let ((_hd1687316903_
                                             (##car _e1687216900_))
                                            (_tl1687416905_
                                             (##cdr _e1687216900_)))
                                        (if (gx#stx-null? _tl1687416905_)
                                            ((lambda (_L16908_ _L16909_)
                                               (let ((_eid16924_
                                                      (gxc#identifier-symbol
                                                       _L16909_)))
                                                 (hash-update!
                                                  _ht16860_
                                                  _eid16924_
                                                  1+
                                                  '0)
                                                 (gxc#compile-e
                                                  _L16908_
                                                  _ht16860_)))
                                             _hd1687316903_
                                             _hd1687016895_)
                                            (_g1686216879_ _g1686316882_))))
                                    (_g1686216879_ _g1686316882_))))
                            (_g1686216879_ _g1686316882_))))
                    (_g1686216879_ _g1686316882_)))))
        (_g1686116926_ _stx16859_))))
  (define gxc#find-body%
    (lambda (_stx16772_ _arg16773_)
      (let* ((_g1677516794_
              (lambda (_g1677616791_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1677616791_)))
             (_g1677416856_
              (lambda (_g1677616797_)
                (if (gx#stx-pair? _g1677616797_)
                    (let ((_e1677816799_ (gx#stx-e _g1677616797_)))
                      (let ((_hd1677916802_ (##car _e1677816799_))
                            (_tl1678016804_ (##cdr _e1677816799_)))
                        (if (gx#stx-pair/null? _tl1678016804_)
                            (let ((_g18222_
                                   (gx#syntax-split-splice _tl1678016804_ '0)))
                              (begin
                                (let ((_g18223_
                                       (if (##values? _g18222_)
                                           (##vector-length _g18222_)
                                           1)))
                                  (if (not (##fx= _g18223_ 2))
                                      (error "Context expects 2 values"
                                             _g18223_)))
                                (let ((_target1678116807_
                                       (##vector-ref _g18222_ 0))
                                      (_tl1678316809_
                                       (##vector-ref _g18222_ 1)))
                                  (if (gx#stx-null? _tl1678316809_)
                                      (letrec ((_loop1678416812_
                                                (lambda (_hd1678216815_
                                                         _expr1678816817_)
                                                  (if (gx#stx-pair?
                                                       _hd1678216815_)
                                                      (let ((_e1678516820_
                                                             (gx#stx-e
                                                              _hd1678216815_)))
                                                        (let ((_lp-hd1678616823_
                                                               (##car _e1678516820_))
                                                              (_lp-tl1678716825_
                                                               (##cdr _e1678516820_)))
                                                          (_loop1678416812_
                                                           _lp-tl1678716825_
                                                           (cons _lp-hd1678616823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1678816817_))))
              (let ((_expr1678916828_ (reverse _expr1678816817_)))
                ((lambda (_L16831_)
                   (ormap1 (lambda (_g1684416846_)
                             (gxc#compile-e _g1684416846_ _arg16773_))
                           (foldr1 (lambda (_g1684816851_ _g1684916853_)
                                     (cons _g1684816851_ _g1684916853_))
                                   '()
                                   _L16831_)))
                 _expr1678916828_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1678416812_
                                         _target1678116807_
                                         '()))
                                      (_g1677516794_ _g1677616797_)))))
                            (_g1677516794_ _g1677616797_))))
                    (_g1677516794_ _g1677616797_)))))
        (_g1677416856_ _stx16772_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx16704_ _arg16705_)
      (let* ((_g1670716724_
              (lambda (_g1670816721_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1670816721_)))
             (_g1670616769_
              (lambda (_g1670816727_)
                (if (gx#stx-pair? _g1670816727_)
                    (let ((_e1671116729_ (gx#stx-e _g1670816727_)))
                      (let ((_hd1671216732_ (##car _e1671116729_))
                            (_tl1671316734_ (##cdr _e1671116729_)))
                        (if (gx#stx-pair? _tl1671316734_)
                            (let ((_e1671416737_ (gx#stx-e _tl1671316734_)))
                              (let ((_hd1671516740_ (##car _e1671416737_))
                                    (_tl1671616742_ (##cdr _e1671416737_)))
                                (if (gx#stx-pair? _tl1671616742_)
                                    (let ((_e1671716745_
                                           (gx#stx-e _tl1671616742_)))
                                      (let ((_hd1671816748_
                                             (##car _e1671716745_))
                                            (_tl1671916750_
                                             (##cdr _e1671716745_)))
                                        (if (gx#stx-null? _tl1671916750_)
                                            ((lambda (_L16753_ _L16754_)
                                               (gxc#compile-e
                                                _L16753_
                                                _arg16705_))
                                             _hd1671816748_
                                             _hd1671516740_)
                                            (_g1670716724_ _g1670816727_))))
                                    (_g1670716724_ _g1670816727_))))
                            (_g1670716724_ _g1670816727_))))
                    (_g1670716724_ _g1670816727_)))))
        (_g1670616769_ _stx16704_))))
  (define gxc#find-lambda%
    (lambda (_stx16636_ _arg16637_)
      (let* ((_g1663916656_
              (lambda (_g1664016653_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1664016653_)))
             (_g1663816701_
              (lambda (_g1664016659_)
                (if (gx#stx-pair? _g1664016659_)
                    (let ((_e1664316661_ (gx#stx-e _g1664016659_)))
                      (let ((_hd1664416664_ (##car _e1664316661_))
                            (_tl1664516666_ (##cdr _e1664316661_)))
                        (if (gx#stx-pair? _tl1664516666_)
                            (let ((_e1664616669_ (gx#stx-e _tl1664516666_)))
                              (let ((_hd1664716672_ (##car _e1664616669_))
                                    (_tl1664816674_ (##cdr _e1664616669_)))
                                (if (gx#stx-pair? _tl1664816674_)
                                    (let ((_e1664916677_
                                           (gx#stx-e _tl1664816674_)))
                                      (let ((_hd1665016680_
                                             (##car _e1664916677_))
                                            (_tl1665116682_
                                             (##cdr _e1664916677_)))
                                        (if (gx#stx-null? _tl1665116682_)
                                            ((lambda (_L16685_ _L16686_)
                                               (gxc#compile-e
                                                _L16685_
                                                _arg16637_))
                                             _hd1665016680_
                                             _hd1664716672_)
                                            (_g1663916656_ _g1664016659_))))
                                    (_g1663916656_ _g1664016659_))))
                            (_g1663916656_ _g1664016659_))))
                    (_g1663916656_ _g1664016659_)))))
        (_g1663816701_ _stx16636_))))
  (define gxc#find-case-lambda%
    (lambda (_stx16518_ _arg16519_)
      (let* ((_g1652116549_
              (lambda (_g1652216546_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1652216546_)))
             (_g1652016633_
              (lambda (_g1652216552_)
                (if (gx#stx-pair? _g1652216552_)
                    (let ((_e1652516554_ (gx#stx-e _g1652216552_)))
                      (let ((_hd1652616557_ (##car _e1652516554_))
                            (_tl1652716559_ (##cdr _e1652516554_)))
                        (if (gx#stx-pair/null? _tl1652716559_)
                            (let ((_g18224_
                                   (gx#syntax-split-splice _tl1652716559_ '0)))
                              (begin
                                (let ((_g18225_
                                       (if (##values? _g18224_)
                                           (##vector-length _g18224_)
                                           1)))
                                  (if (not (##fx= _g18225_ 2))
                                      (error "Context expects 2 values"
                                             _g18225_)))
                                (let ((_target1652816562_
                                       (##vector-ref _g18224_ 0))
                                      (_tl1653016564_
                                       (##vector-ref _g18224_ 1)))
                                  (if (gx#stx-null? _tl1653016564_)
                                      (letrec ((_loop1653116567_
                                                (lambda (_hd1652916570_
                                                         _body1653516572_
                                                         _hd1653616574_)
                                                  (if (gx#stx-pair?
                                                       _hd1652916570_)
                                                      (let ((_e1653216577_
                                                             (gx#stx-e
                                                              _hd1652916570_)))
                                                        (let ((_lp-hd1653316580_
                                                               (##car _e1653216577_))
                                                              (_lp-tl1653416582_
                                                               (##cdr _e1653216577_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1653316580_)
                                                              (let ((_e1653916585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1653316580_)))
                        (let ((_hd1654016588_ (##car _e1653916585_))
                              (_tl1654116590_ (##cdr _e1653916585_)))
                          (if (gx#stx-pair? _tl1654116590_)
                              (let ((_e1654216593_ (gx#stx-e _tl1654116590_)))
                                (let ((_hd1654316596_ (##car _e1654216593_))
                                      (_tl1654416598_ (##cdr _e1654216593_)))
                                  (if (gx#stx-null? _tl1654416598_)
                                      (_loop1653116567_
                                       _lp-tl1653416582_
                                       (cons _hd1654316596_ _body1653516572_)
                                       (cons _hd1654016588_ _hd1653616574_))
                                      (_g1652116549_ _g1652216552_))))
                              (_g1652116549_ _g1652216552_))))
                      (_g1652116549_ _g1652216552_))))
              (let ((_body1653716601_ (reverse _body1653516572_))
                    (_hd1653816603_ (reverse _hd1653616574_)))
                ((lambda (_L16606_ _L16607_)
                   (ormap1 (lambda (_g1662116623_)
                             (gxc#compile-e _g1662116623_ _arg16519_))
                           (foldr1 (lambda (_g1662516628_ _g1662616630_)
                                     (cons _g1662516628_ _g1662616630_))
                                   '()
                                   _L16606_)))
                 _body1653716601_
                 _hd1653816603_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1653116567_
                                         _target1652816562_
                                         '()
                                         '()))
                                      (_g1652116549_ _g1652216552_)))))
                            (_g1652116549_ _g1652216552_))))
                    (_g1652116549_ _g1652216552_)))))
        (_g1652016633_ _stx16518_))))
  (define gxc#find-let-values%
    (lambda (_stx16368_ _arg16369_)
      (let* ((_g1637116406_
              (lambda (_g1637216403_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1637216403_)))
             (_g1637016515_
              (lambda (_g1637216409_)
                (if (gx#stx-pair? _g1637216409_)
                    (let ((_e1637616411_ (gx#stx-e _g1637216409_)))
                      (let ((_hd1637716414_ (##car _e1637616411_))
                            (_tl1637816416_ (##cdr _e1637616411_)))
                        (if (gx#stx-pair? _tl1637816416_)
                            (let ((_e1637916419_ (gx#stx-e _tl1637816416_)))
                              (let ((_hd1638016422_ (##car _e1637916419_))
                                    (_tl1638116424_ (##cdr _e1637916419_)))
                                (if (gx#stx-pair/null? _hd1638016422_)
                                    (let ((_g18226_
                                           (gx#syntax-split-splice
                                            _hd1638016422_
                                            '0)))
                                      (begin
                                        (let ((_g18227_
                                               (if (##values? _g18226_)
                                                   (##vector-length _g18226_)
                                                   1)))
                                          (if (not (##fx= _g18227_ 2))
                                              (error "Context expects 2 values"
                                                     _g18227_)))
                                        (let ((_target1638216427_
                                               (##vector-ref _g18226_ 0))
                                              (_tl1638416429_
                                               (##vector-ref _g18226_ 1)))
                                          (if (gx#stx-null? _tl1638416429_)
                                              (letrec ((_loop1638516432_
                                                        (lambda (_hd1638316435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1638916437_
                         _bind1639016439_)
                  (if (gx#stx-pair? _hd1638316435_)
                      (let ((_e1638616442_ (gx#stx-e _hd1638316435_)))
                        (let ((_lp-hd1638716445_ (##car _e1638616442_))
                              (_lp-tl1638816447_ (##cdr _e1638616442_)))
                          (if (gx#stx-pair? _lp-hd1638716445_)
                              (let ((_e1639316450_
                                     (gx#stx-e _lp-hd1638716445_)))
                                (let ((_hd1639416453_ (##car _e1639316450_))
                                      (_tl1639516455_ (##cdr _e1639316450_)))
                                  (if (gx#stx-pair? _tl1639516455_)
                                      (let ((_e1639616458_
                                             (gx#stx-e _tl1639516455_)))
                                        (let ((_hd1639716461_
                                               (##car _e1639616458_))
                                              (_tl1639816463_
                                               (##cdr _e1639616458_)))
                                          (if (gx#stx-null? _tl1639816463_)
                                              (_loop1638516432_
                                               _lp-tl1638816447_
                                               (cons _hd1639716461_
                                                     _expr1638916437_)
                                               (cons _hd1639416453_
                                                     _bind1639016439_))
                                              (_g1637116406_ _g1637216409_))))
                                      (_g1637116406_ _g1637216409_))))
                              (_g1637116406_ _g1637216409_))))
                      (let ((_expr1639116466_ (reverse _expr1638916437_))
                            (_bind1639216468_ (reverse _bind1639016439_)))
                        (if (gx#stx-pair? _tl1638116424_)
                            (let ((_e1639916471_ (gx#stx-e _tl1638116424_)))
                              (let ((_hd1640016474_ (##car _e1639916471_))
                                    (_tl1640116476_ (##cdr _e1639916471_)))
                                (if (gx#stx-null? _tl1640116476_)
                                    ((lambda (_L16479_ _L16480_ _L16481_)
                                       (let ((_$e16512_
                                              (ormap1 (lambda (_g1650016502_)
                                                        (gxc#compile-e
                                                         _g1650016502_
                                                         _arg16369_))
                                                      (foldr1 (lambda (_g1650416507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1650516509_)
                        (cons _g1650416507_ _g1650516509_))
                      '()
                      _L16480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e16512_
                                             _$e16512_
                                             (gxc#compile-e
                                              _L16479_
                                              _arg16369_))))
                                     _hd1640016474_
                                     _expr1639116466_
                                     _bind1639216468_)
                                    (_g1637116406_ _g1637216409_))))
                            (_g1637116406_ _g1637216409_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1638516432_
                                                 _target1638216427_
                                                 '()
                                                 '()))
                                              (_g1637116406_ _g1637216409_)))))
                                    (_g1637116406_ _g1637216409_))))
                            (_g1637116406_ _g1637216409_))))
                    (_g1637116406_ _g1637216409_)))))
        (_g1637016515_ _stx16368_))))
  (define gxc#find-setq%
    (lambda (_stx16300_ _arg16301_)
      (let* ((_g1630316320_
              (lambda (_g1630416317_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1630416317_)))
             (_g1630216365_
              (lambda (_g1630416323_)
                (if (gx#stx-pair? _g1630416323_)
                    (let ((_e1630716325_ (gx#stx-e _g1630416323_)))
                      (let ((_hd1630816328_ (##car _e1630716325_))
                            (_tl1630916330_ (##cdr _e1630716325_)))
                        (if (gx#stx-pair? _tl1630916330_)
                            (let ((_e1631016333_ (gx#stx-e _tl1630916330_)))
                              (let ((_hd1631116336_ (##car _e1631016333_))
                                    (_tl1631216338_ (##cdr _e1631016333_)))
                                (if (gx#stx-pair? _tl1631216338_)
                                    (let ((_e1631316341_
                                           (gx#stx-e _tl1631216338_)))
                                      (let ((_hd1631416344_
                                             (##car _e1631316341_))
                                            (_tl1631516346_
                                             (##cdr _e1631316341_)))
                                        (if (gx#stx-null? _tl1631516346_)
                                            ((lambda (_L16349_ _L16350_)
                                               (gxc#compile-e
                                                _L16349_
                                                _arg16301_))
                                             _hd1631416344_
                                             _hd1631116336_)
                                            (_g1630316320_ _g1630416323_))))
                                    (_g1630316320_ _g1630416323_))))
                            (_g1630316320_ _g1630416323_))))
                    (_g1630316320_ _g1630416323_)))))
        (_g1630216365_ _stx16300_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx16244_ _ids16245_)
      (let* ((_g1624716260_
              (lambda (_g1624816257_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1624816257_)))
             (_g1624616297_
              (lambda (_g1624816263_)
                (if (gx#stx-pair? _g1624816263_)
                    (let ((_e1625016265_ (gx#stx-e _g1624816263_)))
                      (let ((_hd1625116268_ (##car _e1625016265_))
                            (_tl1625216270_ (##cdr _e1625016265_)))
                        (if (gx#stx-pair? _tl1625216270_)
                            (let ((_e1625316273_ (gx#stx-e _tl1625216270_)))
                              (let ((_hd1625416276_ (##car _e1625316273_))
                                    (_tl1625516278_ (##cdr _e1625316273_)))
                                (if (gx#stx-null? _tl1625516278_)
                                    ((lambda (_L16281_)
                                       (find (lambda (_g1629216294_)
                                               (gx#free-identifier=?
                                                _L16281_
                                                _g1629216294_))
                                             _ids16245_))
                                     _hd1625416276_)
                                    (_g1624716260_ _g1624816263_))))
                            (_g1624716260_ _g1624816263_))))
                    (_g1624716260_ _g1624816263_)))))
        (_g1624616297_ _stx16244_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx16168_ _ids16169_)
      (let* ((_g1617116188_
              (lambda (_g1617216185_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1617216185_)))
             (_g1617016241_
              (lambda (_g1617216191_)
                (if (gx#stx-pair? _g1617216191_)
                    (let ((_e1617516193_ (gx#stx-e _g1617216191_)))
                      (let ((_hd1617616196_ (##car _e1617516193_))
                            (_tl1617716198_ (##cdr _e1617516193_)))
                        (if (gx#stx-pair? _tl1617716198_)
                            (let ((_e1617816201_ (gx#stx-e _tl1617716198_)))
                              (let ((_hd1617916204_ (##car _e1617816201_))
                                    (_tl1618016206_ (##cdr _e1617816201_)))
                                (if (gx#stx-pair? _tl1618016206_)
                                    (let ((_e1618116209_
                                           (gx#stx-e _tl1618016206_)))
                                      (let ((_hd1618216212_
                                             (##car _e1618116209_))
                                            (_tl1618316214_
                                             (##cdr _e1618116209_)))
                                        (if (gx#stx-null? _tl1618316214_)
                                            ((lambda (_L16217_ _L16218_)
                                               (let ((_$e16238_
                                                      (find (lambda (_g1623316235_)
                                                              (gx#free-identifier=?
                                                               _L16218_
                                                               _g1623316235_))
                                                            _ids16169_)))
                                                 (if _$e16238_
                                                     _$e16238_
                                                     (gxc#compile-e
                                                      _L16217_
                                                      _ids16169_))))
                                             _hd1618216212_
                                             _hd1617916204_)
                                            (_g1617116188_ _g1617216191_))))
                                    (_g1617116188_ _g1617216191_))))
                            (_g1617116188_ _g1617216191_))))
                    (_g1617116188_ _g1617216191_)))))
        (_g1617016241_ _stx16168_)))))
