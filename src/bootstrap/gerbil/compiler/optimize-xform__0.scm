(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1695199291)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl20096_ (make-table 'test: eq?)))
           (table-set! _tbl20096_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl20096_ '%#lambda gxc#xform-identity)
           (table-set! _tbl20096_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl20096_ '%#let-values gxc#xform-identity)
           (table-set! _tbl20096_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl20096_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl20096_ '%#quote gxc#xform-identity)
           (table-set! _tbl20096_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20096_ '%#call gxc#xform-identity)
           (table-set! _tbl20096_ '%#if gxc#xform-identity)
           (table-set! _tbl20096_ '%#ref gxc#xform-identity)
           (table-set! _tbl20096_ '%#set! gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl20096_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl20096_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl20096_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl20092_ (make-table 'test: eq?)))
           (table-set! _tbl20092_ '%#begin gxc#xform-identity)
           (table-set! _tbl20092_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl20092_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl20092_ '%#module gxc#xform-identity)
           (table-set! _tbl20092_ '%#import gxc#xform-identity)
           (table-set! _tbl20092_ '%#export gxc#xform-identity)
           (table-set! _tbl20092_ '%#provide gxc#xform-identity)
           (table-set! _tbl20092_ '%#extern gxc#xform-identity)
           (table-set! _tbl20092_ '%#define-values gxc#xform-identity)
           (table-set! _tbl20092_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl20092_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl20092_ '%#declare gxc#xform-identity)
           _tbl20092_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl20088_ (make-table 'test: eq?)))
           (hash-copy! _tbl20088_ (force gxc#&identity-special-form))
           (hash-copy! _tbl20088_ (force gxc#&identity-expression))
           _tbl20088_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl20084_ (make-table 'test: eq?)))
           (table-set!
            _tbl20084_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl20084_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl20084_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl20084_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl20084_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl20084_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl20084_ '%#quote gxc#xform-identity)
           (table-set! _tbl20084_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl20084_ '%#call gxc#xform-operands)
           (table-set! _tbl20084_ '%#if gxc#xform-operands)
           (table-set! _tbl20084_ '%#ref gxc#xform-identity)
           (table-set! _tbl20084_ '%#set! gxc#xform-setq%)
           (table-set! _tbl20084_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl20084_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl20084_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl20084_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl20084_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl20084_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl20084_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl20084_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl20084_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl20080_ (make-table 'test: eq?)))
           (hash-copy! _tbl20080_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl20080_ (force gxc#&identity))
           (table-set! _tbl20080_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20080_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl20080_ '%#module gxc#xform-module%)
           (table-set! _tbl20080_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl20080_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl20080_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl20076_ (make-table 'test: eq?)))
           (hash-copy! _tbl20076_ (force gxc#&void))
           (table-set! _tbl20076_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20076_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl20076_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl20076_ '%#module gxc#collect-module%)
           (table-set! _tbl20076_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl20076_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl20076_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl20076_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl20076_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl20076_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl20076_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl20076_ '%#call gxc#collect-operands)
           (table-set! _tbl20076_ '%#if gxc#collect-operands)
           (table-set! _tbl20076_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl20076_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl20076_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl20076_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl20076_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl20076_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl20076_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl20076_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl20076_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl20076_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx20069_ . _args20071_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20069_ _args20071_))
         gxc#current-compile-methods
         (force gxc#&collect-mutators))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl20066_ (make-table 'test: eq?)))
           (hash-copy! _tbl20066_ (force gxc#&void))
           (table-set! _tbl20066_ '%#begin gxc#collect-begin%)
           (table-set! _tbl20066_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl20066_ '%#module gxc#collect-module%)
           (table-set! _tbl20066_ '%#call gxc#collect-methods-call%)
           _tbl20066_))))
    (define gxc#apply-collect-methods
      (lambda (_stx20059_ . _args20061_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20059_ _args20061_))
         gxc#current-compile-methods
         (force gxc#&collect-methods))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl20056_ (make-table 'test: eq?)))
           (hash-copy! _tbl20056_ (force gxc#&basic-xform-expression))
           (table-set! _tbl20056_ '%#begin gxc#xform-begin%)
           (table-set! _tbl20056_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl20056_ '%#set! gxc#expression-subst-setq%)
           _tbl20056_))))
    (define gxc#apply-expression-subst
      (lambda (_stx20049_ . _args20051_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20049_ _args20051_))
         gxc#current-compile-methods
         (force gxc#&expression-subst))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl20046_ (make-table 'test: eq?)))
           (hash-copy! _tbl20046_ (force gxc#&expression-subst))
           (table-set! _tbl20046_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl20046_ '%#set! gxc#expression-subst*-setq%)
           _tbl20046_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx20039_ . _args20041_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20039_ _args20041_))
         gxc#current-compile-methods
         (force gxc#&expression-subst*))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl20036_ (make-table 'test: eq?)))
           (hash-copy! _tbl20036_ (force gxc#&false-expression))
           (table-set! _tbl20036_ '%#begin gxc#find-body%)
           (table-set!
            _tbl20036_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl20036_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl20036_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl20036_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl20036_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl20036_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl20036_ '%#call gxc#find-body%)
           (table-set! _tbl20036_ '%#if gxc#find-body%)
           (table-set! _tbl20036_ '%#set! gxc#find-setq%)
           (table-set! _tbl20036_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl20036_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl20036_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl20032_ (make-table 'test: eq?)))
           (hash-copy! _tbl20032_ (force gxc#&find-expression))
           (table-set! _tbl20032_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl20032_ '%#set! gxc#find-var-refs-setq%)
           _tbl20032_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx20025_ . _args20027_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20025_ _args20027_))
         gxc#current-compile-methods
         (force gxc#&find-var-refs))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl20022_ (make-table 'test: eq?)))
           (hash-copy! _tbl20022_ (force gxc#&collect-expression-refs))
           (table-set! _tbl20022_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl20022_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl20022_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx20015_ . _args20017_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx20015_ _args20017_))
         gxc#current-compile-methods
         (force gxc#&collect-runtime-refs))))
    (define gxc#xform-identity (lambda (_stx20012_ . _args20013_) _stx20012_))
    (define gxc#xform-wrap-source
      (lambda (_stx20009_ _src-stx20010_)
        (gx#stx-wrap-source _stx20009_ (gx#stx-source _src-stx20010_))))
    (define gxc#xform-apply-compile-e
      (lambda (_args20003_)
        (lambda (_g2000420006_)
          (apply gxc#compile-e _g2000420006_ _args20003_))))
    (define gxc#xform-begin%
      (lambda (_stx19962_ . _args19963_)
        (let* ((_g1996519975_
                (lambda (_g1996619972_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1996619972_)))
               (_g1996420000_
                (lambda (_g1996619978_)
                  (if (gx#stx-pair? _g1996619978_)
                      (let ((_e1996819980_ (gx#stx-e _g1996619978_)))
                        (let ((_hd1996919983_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1996819980_)))
                              (_tl1997019985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1996819980_))))
                          ((lambda (_L19988_)
                             (let ((_forms19998_
                                    (map (gxc#xform-apply-compile-e
                                          _args19963_)
                                         _L19988_)))
                               (gxc#xform-wrap-source
                                (cons '%#begin _forms19998_)
                                _stx19962_)))
                           _tl1997019985_)))
                      (_g1996519975_ _g1996619978_)))))
          (_g1996420000_ _stx19962_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx19920_ . _args19921_)
        (let* ((_g1992319933_
                (lambda (_g1992419930_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1992419930_)))
               (_g1992219959_
                (lambda (_g1992419936_)
                  (if (gx#stx-pair? _g1992419936_)
                      (let ((_e1992619938_ (gx#stx-e _g1992419936_)))
                        (let ((_hd1992719941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1992619938_)))
                              (_tl1992819943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1992619938_))))
                          ((lambda (_L19946_)
                             (call-with-parameters
                              (lambda ()
                                (let ((_forms19957_
                                       (map (gxc#xform-apply-compile-e
                                             _args19921_)
                                            _L19946_)))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin-syntax _forms19957_)
                                   _stx19920_)))
                              gx#current-expander-phi
                              (fx+ (gx#current-expander-phi) '1)))
                           _tl1992819943_)))
                      (_g1992319933_ _g1992419936_)))))
          (_g1992219959_ _stx19920_))))
    (define gxc#xform-module%
      (lambda (_stx19857_ . _args19858_)
        (let* ((_g1986019874_
                (lambda (_g1986119871_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1986119871_)))
               (_g1985919917_
                (lambda (_g1986119877_)
                  (if (gx#stx-pair? _g1986119877_)
                      (let ((_e1986419879_ (gx#stx-e _g1986119877_)))
                        (let ((_hd1986519882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1986419879_)))
                              (_tl1986619884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1986419879_))))
                          (if (gx#stx-pair? _tl1986619884_)
                              (let ((_e1986719887_ (gx#stx-e _tl1986619884_)))
                                (let ((_hd1986819890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1986719887_)))
                                      (_tl1986919892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1986719887_))))
                                  ((lambda (_L19895_ _L19896_)
                                     (let* ((_ctx19909_
                                             (gx#syntax-local-e__0 _L19896_))
                                            (_code19911_
                                             (##structure-ref
                                              _ctx19909_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code19914_
                                             (call-with-parameters
                                              (lambda ()
                                                (apply gxc#compile-e
                                                       _code19911_
                                                       _args19858_))
                                              gx#current-expander-context
                                              _ctx19909_)))
                                       (##structure-set!
                                        _ctx19909_
                                        _code19914_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L19896_
                                                    (cons _code19914_ '())))
                                        _stx19857_)))
                                   _tl1986919892_
                                   _hd1986819890_)))
                              (_g1986019874_ _g1986119877_))))
                      (_g1986019874_ _g1986119877_)))))
          (_g1985919917_ _stx19857_))))
    (define gxc#xform-define-values%
      (lambda (_stx19787_ . _args19788_)
        (let* ((_g1979019807_
                (lambda (_g1979119804_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1979119804_)))
               (_g1978919854_
                (lambda (_g1979119810_)
                  (if (gx#stx-pair? _g1979119810_)
                      (let ((_e1979419812_ (gx#stx-e _g1979119810_)))
                        (let ((_hd1979519815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1979419812_)))
                              (_tl1979619817_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1979419812_))))
                          (if (gx#stx-pair? _tl1979619817_)
                              (let ((_e1979719820_ (gx#stx-e _tl1979619817_)))
                                (let ((_hd1979819823_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1979719820_)))
                                      (_tl1979919825_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1979719820_))))
                                  (if (gx#stx-pair? _tl1979919825_)
                                      (let ((_e1980019828_
                                             (gx#stx-e _tl1979919825_)))
                                        (let ((_hd1980119831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1980019828_)))
                                              (_tl1980219833_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1980019828_))))
                                          (if (gx#stx-null? _tl1980219833_)
                                              ((lambda (_L19836_ _L19837_)
                                                 (let ((_expr19852_
                                                        (apply gxc#compile-e
                                                               _L19836_
                                                               _args19788_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons _L19837_
                                                                (cons _expr19852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx19787_)))
                                               _hd1980119831_
                                               _hd1979819823_)
                                              (_g1979019807_ _g1979119810_))))
                                      (_g1979019807_ _g1979119810_))))
                              (_g1979019807_ _g1979119810_))))
                      (_g1979019807_ _g1979119810_)))))
          (_g1978919854_ _stx19787_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx19716_ . _args19717_)
        (let* ((_g1971919736_
                (lambda (_g1972019733_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1972019733_)))
               (_g1971819784_
                (lambda (_g1972019739_)
                  (if (gx#stx-pair? _g1972019739_)
                      (let ((_e1972319741_ (gx#stx-e _g1972019739_)))
                        (let ((_hd1972419744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1972319741_)))
                              (_tl1972519746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1972319741_))))
                          (if (gx#stx-pair? _tl1972519746_)
                              (let ((_e1972619749_ (gx#stx-e _tl1972519746_)))
                                (let ((_hd1972719752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1972619749_)))
                                      (_tl1972819754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1972619749_))))
                                  (if (gx#stx-pair? _tl1972819754_)
                                      (let ((_e1972919757_
                                             (gx#stx-e _tl1972819754_)))
                                        (let ((_hd1973019760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1972919757_)))
                                              (_tl1973119762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1972919757_))))
                                          (if (gx#stx-null? _tl1973119762_)
                                              ((lambda (_L19765_ _L19766_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_expr19782_
                                                           (apply gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19765_
                          _args19717_)))
              (gxc#xform-wrap-source
               (cons '%#define-syntax (cons _L19766_ (cons _expr19782_ '())))
               _stx19716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-phi
                                                  (fx+ (gx#current-expander-phi)
                                                       '1)))
                                               _hd1973019760_
                                               _hd1972719752_)
                                              (_g1971919736_ _g1972019739_))))
                                      (_g1971919736_ _g1972019739_))))
                              (_g1971919736_ _g1972019739_))))
                      (_g1971919736_ _g1972019739_)))))
          (_g1971819784_ _stx19716_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx19646_ . _args19647_)
        (let* ((_g1964919666_
                (lambda (_g1965019663_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1965019663_)))
               (_g1964819713_
                (lambda (_g1965019669_)
                  (if (gx#stx-pair? _g1965019669_)
                      (let ((_e1965319671_ (gx#stx-e _g1965019669_)))
                        (let ((_hd1965419674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1965319671_)))
                              (_tl1965519676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1965319671_))))
                          (if (gx#stx-pair? _tl1965519676_)
                              (let ((_e1965619679_ (gx#stx-e _tl1965519676_)))
                                (let ((_hd1965719682_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1965619679_)))
                                      (_tl1965819684_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1965619679_))))
                                  (if (gx#stx-pair? _tl1965819684_)
                                      (let ((_e1965919687_
                                             (gx#stx-e _tl1965819684_)))
                                        (let ((_hd1966019690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1965919687_)))
                                              (_tl1966119692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1965919687_))))
                                          (if (gx#stx-null? _tl1966119692_)
                                              ((lambda (_L19695_ _L19696_)
                                                 (let ((_expr19711_
                                                        (apply gxc#compile-e
                                                               _L19695_
                                                               _args19647_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#begin-annotation
                                                          (cons _L19696_
                                                                (cons _expr19711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx19646_)))
                                               _hd1966019690_
                                               _hd1965719682_)
                                              (_g1964919666_ _g1965019669_))))
                                      (_g1964919666_ _g1965019669_))))
                              (_g1964919666_ _g1965019669_))))
                      (_g1964919666_ _g1965019669_)))))
          (_g1964819713_ _stx19646_))))
    (define gxc#xform-lambda%
      (lambda (_stx19589_ . _args19590_)
        (let* ((_g1959219606_
                (lambda (_g1959319603_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1959319603_)))
               (_g1959119643_
                (lambda (_g1959319609_)
                  (if (gx#stx-pair? _g1959319609_)
                      (let ((_e1959619611_ (gx#stx-e _g1959319609_)))
                        (let ((_hd1959719614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1959619611_)))
                              (_tl1959819616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1959619611_))))
                          (if (gx#stx-pair? _tl1959819616_)
                              (let ((_e1959919619_ (gx#stx-e _tl1959819616_)))
                                (let ((_hd1960019622_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1959919619_)))
                                      (_tl1960119624_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1959919619_))))
                                  ((lambda (_L19627_ _L19628_)
                                     (let ((_body19641_
                                            (map (gxc#xform-apply-compile-e
                                                  _args19590_)
                                                 _L19627_)))
                                       (gxc#xform-wrap-source
                                        (cons '%#lambda
                                              (cons _L19628_ _body19641_))
                                        _stx19589_)))
                                   _tl1960119624_
                                   _hd1960019622_)))
                              (_g1959219606_ _g1959319609_))))
                      (_g1959219606_ _g1959319609_)))))
          (_g1959119643_ _stx19589_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx19502_ . _args19503_)
        (letrec ((_clause-e19505_
                  (lambda (_clause19546_)
                    (let* ((_g1954819559_
                            (lambda (_g1954919556_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1954919556_)))
                           (_g1954719586_
                            (lambda (_g1954919562_)
                              (if (gx#stx-pair? _g1954919562_)
                                  (let ((_e1955219564_
                                         (gx#stx-e _g1954919562_)))
                                    (let ((_hd1955319567_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1955219564_)))
                                          (_tl1955419569_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1955219564_))))
                                      ((lambda (_L19572_ _L19573_)
                                         (let ((_body19584_
                                                (map (gxc#xform-apply-compile-e
                                                      _args19503_)
                                                     _L19572_)))
                                           (cons _L19573_ _body19584_)))
                                       _tl1955419569_
                                       _hd1955319567_)))
                                  (_g1954819559_ _g1954919562_)))))
                      (_g1954719586_ _clause19546_)))))
          (let* ((_g1950719517_
                  (lambda (_g1950819514_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1950819514_)))
                 (_g1950619543_
                  (lambda (_g1950819520_)
                    (if (gx#stx-pair? _g1950819520_)
                        (let ((_e1951019522_ (gx#stx-e _g1950819520_)))
                          (let ((_hd1951119525_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1951019522_)))
                                (_tl1951219527_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1951019522_))))
                            ((lambda (_L19530_)
                               (let ((_clauses19541_
                                      (map _clause-e19505_ _L19530_)))
                                 (gxc#xform-wrap-source
                                  (cons '%#case-lambda _clauses19541_)
                                  _stx19502_)))
                             _tl1951219527_)))
                        (_g1950719517_ _g1950819520_)))))
            (_g1950619543_ _stx19502_)))))
    (define gxc#xform-let-values%
      (lambda (_stx19296_ . _args19297_)
        (let* ((_g1929919332_
                (lambda (_g1930019329_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1930019329_)))
               (_g1929819499_
                (lambda (_g1930019335_)
                  (if (gx#stx-pair? _g1930019335_)
                      (let ((_e1930519337_ (gx#stx-e _g1930019335_)))
                        (let ((_hd1930619340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1930519337_)))
                              (_tl1930719342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1930519337_))))
                          (if (gx#stx-pair? _tl1930719342_)
                              (let ((_e1930819345_ (gx#stx-e _tl1930719342_)))
                                (let ((_hd1930919348_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1930819345_)))
                                      (_tl1931019350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1930819345_))))
                                  (if (gx#stx-pair/null? _hd1930919348_)
                                      (let ((_g20342_
                                             (gx#syntax-split-splice
                                              _hd1930919348_
                                              '0)))
                                        (begin
                                          (let ((_g20343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20342_)
                                                       (##vector-length
                                                        _g20342_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20343_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20343_)))
                                          (let ((_target1931119353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20342_ 0)))
                                                (_tl1931319355_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20342_ 1))))
                                            (if (gx#stx-null? _tl1931319355_)
                                                (letrec ((_loop1931419358_
                                                          (lambda (_hd1931219361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1931819363_
                           _hd1931919365_)
                    (if (gx#stx-pair? _hd1931219361_)
                        (let ((_e1931519368_ (gx#stx-e _hd1931219361_)))
                          (let ((_lp-hd1931619371_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1931519368_)))
                                (_lp-tl1931719373_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1931519368_))))
                            (if (gx#stx-pair? _lp-hd1931619371_)
                                (let ((_e1932219376_
                                       (gx#stx-e _lp-hd1931619371_)))
                                  (let ((_hd1932319379_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1932219376_)))
                                        (_tl1932419381_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1932219376_))))
                                    (if (gx#stx-pair? _tl1932419381_)
                                        (let ((_e1932519384_
                                               (gx#stx-e _tl1932419381_)))
                                          (let ((_hd1932619387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1932519384_)))
                                                (_tl1932719389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1932519384_))))
                                            (if (gx#stx-null? _tl1932719389_)
                                                (_loop1931419358_
                                                 _lp-tl1931719373_
                                                 (cons _hd1932619387_
                                                       _expr1931819363_)
                                                 (cons _hd1932319379_
                                                       _hd1931919365_))
                                                (_g1929919332_
                                                 _g1930019335_))))
                                        (_g1929919332_ _g1930019335_))))
                                (_g1929919332_ _g1930019335_))))
                        (let ((_expr1932019392_ (reverse _expr1931819363_))
                              (_hd1932119394_ (reverse _hd1931919365_)))
                          ((lambda (_L19397_ _L19398_ _L19399_ _L19400_)
                             (let* ((_g1941919435_
                                     (lambda (_g1942019432_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1942019432_)))
                                    (_g1941819489_
                                     (lambda (_g1942019438_)
                                       (if (gx#stx-pair/null? _g1942019438_)
                                           (let ((_g20344_
                                                  (gx#syntax-split-splice
                                                   _g1942019438_
                                                   '0)))
                                             (begin
                                               (let ((_g20345_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g20344_)
                                                            (##vector-length
                                                             _g20344_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g20345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g20345_)))
                                               (let ((_target1942219440_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g20344_
                                                         0)))
                                                     (_tl1942419442_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g20344_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _tl1942419442_)
                                                     (letrec ((_loop1942519445_
                                                               (lambda (_hd1942319448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr1942919450_)
                         (if (gx#stx-pair? _hd1942319448_)
                             (let ((_e1942619453_
                                    (gx#syntax-e _hd1942319448_)))
                               (let ((_lp-hd1942719456_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1942619453_)))
                                     (_lp-tl1942819458_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1942619453_))))
                                 (_loop1942519445_
                                  _lp-tl1942819458_
                                  (cons _lp-hd1942719456_ _expr1942919450_))))
                             (let ((_expr1943019461_
                                    (reverse _expr1942919450_)))
                               ((lambda (_L19464_)
                                  (let ()
                                    (let ((_body19477_
                                           (map (gxc#xform-apply-compile-e
                                                 _args19297_)
                                                _L19397_)))
                                      (gxc#xform-wrap-source
                                       (cons _L19400_
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L19464_
                                                      _L19399_)
                                                     (foldr2 (lambda (_g1947819482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1947919484_
                              _g1948019486_)
                       (cons (cons _g1947919484_ (cons _g1947819482_ '()))
                             _g1948019486_))
                     '()
                     _L19464_
                     _L19399_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body19477_))
                                       _stx19296_))))
                                _expr1943019461_))))))
               (_loop1942519445_ _target1942219440_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1941919435_
                                                      _g1942019438_)))))
                                           (_g1941919435_ _g1942019438_)))))
                               (_g1941819489_
                                (map (gxc#xform-apply-compile-e _args19297_)
                                     (foldr1 (lambda (_g1949119494_
                                                      _g1949219496_)
                                               (cons _g1949119494_
                                                     _g1949219496_))
                                             '()
                                             _L19398_)))))
                           _tl1931019350_
                           _expr1932019392_
                           _hd1932119394_
                           _hd1930619340_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1931419358_
                                                   _target1931119353_
                                                   '()
                                                   '()))
                                                (_g1929919332_
                                                 _g1930019335_)))))
                                      (_g1929919332_ _g1930019335_))))
                              (_g1929919332_ _g1930019335_))))
                      (_g1929919332_ _g1930019335_)))))
          (_g1929819499_ _stx19296_))))
    (define gxc#xform-operands
      (lambda (_stx19252_ . _args19253_)
        (let* ((_g1925519266_
                (lambda (_g1925619263_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1925619263_)))
               (_g1925419293_
                (lambda (_g1925619269_)
                  (if (gx#stx-pair? _g1925619269_)
                      (let ((_e1925919271_ (gx#stx-e _g1925619269_)))
                        (let ((_hd1926019274_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1925919271_)))
                              (_tl1926119276_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1925919271_))))
                          ((lambda (_L19279_ _L19280_)
                             (let ((_rands19291_
                                    (map (gxc#xform-apply-compile-e
                                          _args19253_)
                                         _L19279_)))
                               (gxc#xform-wrap-source
                                (cons _L19280_ _rands19291_)
                                _stx19252_)))
                           _tl1926119276_
                           _hd1926019274_)))
                      (_g1925519266_ _g1925619269_)))))
          (_g1925419293_ _stx19252_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx19182_ . _args19183_)
        (let* ((_g1918519202_
                (lambda (_g1918619199_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1918619199_)))
               (_g1918419249_
                (lambda (_g1918619205_)
                  (if (gx#stx-pair? _g1918619205_)
                      (let ((_e1918919207_ (gx#stx-e _g1918619205_)))
                        (let ((_hd1919019210_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1918919207_)))
                              (_tl1919119212_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1918919207_))))
                          (if (gx#stx-pair? _tl1919119212_)
                              (let ((_e1919219215_ (gx#stx-e _tl1919119212_)))
                                (let ((_hd1919319218_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1919219215_)))
                                      (_tl1919419220_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1919219215_))))
                                  (if (gx#stx-pair? _tl1919419220_)
                                      (let ((_e1919519223_
                                             (gx#stx-e _tl1919419220_)))
                                        (let ((_hd1919619226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1919519223_)))
                                              (_tl1919719228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1919519223_))))
                                          (if (gx#stx-null? _tl1919719228_)
                                              ((lambda (_L19231_ _L19232_)
                                                 (let ((_expr19247_
                                                        (apply gxc#compile-e
                                                               _L19231_
                                                               _args19183_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _L19232_
                                                                (cons _expr19247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx19182_)))
                                               _hd1919619226_
                                               _hd1919319218_)
                                              (_g1918519202_ _g1918619205_))))
                                      (_g1918519202_ _g1918619205_))))
                              (_g1918519202_ _g1918619205_))))
                      (_g1918519202_ _g1918619205_)))))
          (_g1918419249_ _stx19182_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx19113_)
        (let* ((_g1911519132_
                (lambda (_g1911619129_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1911619129_)))
               (_g1911419179_
                (lambda (_g1911619135_)
                  (if (gx#stx-pair? _g1911619135_)
                      (let ((_e1911919137_ (gx#stx-e _g1911619135_)))
                        (let ((_hd1912019140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1911919137_)))
                              (_tl1912119142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1911919137_))))
                          (if (gx#stx-pair? _tl1912119142_)
                              (let ((_e1912219145_ (gx#stx-e _tl1912119142_)))
                                (let ((_hd1912319148_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1912219145_)))
                                      (_tl1912419150_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1912219145_))))
                                  (if (gx#stx-pair? _tl1912419150_)
                                      (let ((_e1912519153_
                                             (gx#stx-e _tl1912419150_)))
                                        (let ((_hd1912619156_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1912519153_)))
                                              (_tl1912719158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1912519153_))))
                                          (if (gx#stx-null? _tl1912719158_)
                                              ((lambda (_L19161_ _L19162_)
                                                 (let ((_sym19177_
                                                        (gxc#identifier-symbol
                                                         _L19162_)))
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym19177_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym19177_
                                                    '#t)
                                                   (gxc#compile-e _L19161_)))
                                               _hd1912619156_
                                               _hd1912319148_)
                                              (_g1911519132_ _g1911619135_))))
                                      (_g1911519132_ _g1911619135_))))
                              (_g1911519132_ _g1911619135_))))
                      (_g1911519132_ _g1911619135_)))))
          (_g1911419179_ _stx19113_))))
    (define gxc#collect-methods-call%
      (lambda (_stx18667_)
        (let* ((___stx2009920100_ _stx18667_)
               (_g1867118773_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2009920100_))))
          (let ((___kont2010120102_
                 (lambda (_L19063_ _L19064_ _L19065_ _L19066_ _L19067_)
                   (gxc#optimizer-top-level-method!
                    (gxc#identifier-symbol _L19064_))))
                (___kont2010320104_
                 (lambda (_L18889_ _L18890_ _L18891_ _L18892_)
                   (gxc#optimizer-top-level-method!
                    (gxc#identifier-symbol _L18889_))))
                (___kont2010520106_ (lambda () '#!void)))
            (let ((___match2023420235_
                   (lambda (_e1867818935_
                            _hd1867918938_
                            _tl1868018940_
                            _e1868118943_
                            _hd1868218946_
                            _tl1868318948_
                            _e1868418951_
                            _hd1868518954_
                            _tl1868618956_
                            _e1868718959_
                            _hd1868818962_
                            _tl1868918964_
                            _e1869018967_
                            _hd1869118970_
                            _tl1869218972_
                            _e1869318975_
                            _hd1869418978_
                            _tl1869518980_
                            _e1869618983_
                            _hd1869718986_
                            _tl1869818988_
                            _e1869918991_
                            _hd1870018994_
                            _tl1870118996_
                            _e1870218999_
                            _hd1870319002_
                            _tl1870419004_
                            _e1870519007_
                            _hd1870619010_
                            _tl1870719012_
                            _e1870819015_
                            _hd1870919018_
                            _tl1871019020_
                            _e1871119023_
                            _hd1871219026_
                            _tl1871319028_
                            _e1871419031_
                            _hd1871519034_
                            _tl1871619036_
                            _e1871719039_
                            _hd1871819042_
                            _tl1871919044_
                            _e1872019047_
                            _hd1872119050_
                            _tl1872219052_
                            _e1872319055_
                            _hd1872419058_
                            _tl1872519060_)
                     (let ((_L19063_ _hd1872419058_)
                           (_L19064_ _hd1871519034_)
                           (_L19065_ _hd1870619010_)
                           (_L19066_ _hd1869718986_)
                           (_L19067_ _hd1868818962_))
                       (if (gxc#runtime-identifier=? _L19067_ 'bind-method!)
                           (___kont2010120102_
                            _L19063_
                            _L19064_
                            _L19065_
                            _L19066_
                            _L19067_)
                           (___kont2010520106_))))))
              (if (gx#stx-pair? ___stx2009920100_)
                  (let ((_e1867818935_ (gx#stx-e ___stx2009920100_)))
                    (let ((_tl1868018940_
                           (let () (declare (not safe)) (##cdr _e1867818935_)))
                          (_hd1867918938_
                           (let ()
                             (declare (not safe))
                             (##car _e1867818935_))))
                      (if (gx#stx-pair? _tl1868018940_)
                          (let ((_e1868118943_ (gx#stx-e _tl1868018940_)))
                            (let ((_tl1868318948_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1868118943_)))
                                  (_hd1868218946_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1868118943_))))
                              (if (gx#stx-pair? _hd1868218946_)
                                  (let ((_e1868418951_
                                         (gx#stx-e _hd1868218946_)))
                                    (let ((_tl1868618956_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1868418951_)))
                                          (_hd1868518954_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1868418951_))))
                                      (if (gx#identifier? _hd1868518954_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1868518954_)
                                              (if (gx#stx-pair? _tl1868618956_)
                                                  (let ((_e1868718959_
                                                         (gx#stx-e
                                                          _tl1868618956_)))
                                                    (let ((_tl1868918964_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1868718959_)))
                                                          (_hd1868818962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1868718959_))))
                                                      (if (gx#stx-null?
                                                           _tl1868918964_)
                                                          (if (gx#stx-pair?
                                                               _tl1868318948_)
                                                              (let ((_e1869018967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1868318948_)))
                        (let ((_tl1869218972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1869018967_)))
                              (_hd1869118970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1869018967_))))
                          (if (gx#stx-pair? _hd1869118970_)
                              (let ((_e1869318975_ (gx#stx-e _hd1869118970_)))
                                (let ((_tl1869518980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1869318975_)))
                                      (_hd1869418978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1869318975_))))
                                  (if (gx#identifier? _hd1869418978_)
                                      (if (gx#stx-eq? '%#ref _hd1869418978_)
                                          (if (gx#stx-pair? _tl1869518980_)
                                              (let ((_e1869618983_
                                                     (gx#stx-e
                                                      _tl1869518980_)))
                                                (let ((_tl1869818988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1869618983_)))
                                                      (_hd1869718986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1869618983_))))
                                                  (if (gx#stx-null?
                                                       _tl1869818988_)
                                                      (if (gx#stx-pair?
                                                           _tl1869218972_)
                                                          (let ((_e1869918991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1869218972_)))
                    (let ((_tl1870118996_
                           (let () (declare (not safe)) (##cdr _e1869918991_)))
                          (_hd1870018994_
                           (let ()
                             (declare (not safe))
                             (##car _e1869918991_))))
                      (if (gx#stx-pair? _hd1870018994_)
                          (let ((_e1870218999_ (gx#stx-e _hd1870018994_)))
                            (let ((_tl1870419004_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1870218999_)))
                                  (_hd1870319002_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1870218999_))))
                              (if (gx#identifier? _hd1870319002_)
                                  (if (gx#stx-eq? '%#quote _hd1870319002_)
                                      (if (gx#stx-pair? _tl1870419004_)
                                          (let ((_e1870519007_
                                                 (gx#stx-e _tl1870419004_)))
                                            (let ((_tl1870719012_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1870519007_)))
                                                  (_hd1870619010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1870519007_))))
                                              (if (gx#stx-null? _tl1870719012_)
                                                  (if (gx#stx-pair?
                                                       _tl1870118996_)
                                                      (let ((_e1870819015_
                                                             (gx#stx-e
                                                              _tl1870118996_)))
                                                        (let ((_tl1871019020_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1870819015_)))
                      (_hd1870919018_
                       (let () (declare (not safe)) (##car _e1870819015_))))
                  (if (gx#stx-pair? _hd1870919018_)
                      (let ((_e1871119023_ (gx#stx-e _hd1870919018_)))
                        (let ((_tl1871319028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1871119023_)))
                              (_hd1871219026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1871119023_))))
                          (if (gx#identifier? _hd1871219026_)
                              (if (gx#stx-eq? '%#ref _hd1871219026_)
                                  (if (gx#stx-pair? _tl1871319028_)
                                      (let ((_e1871419031_
                                             (gx#stx-e _tl1871319028_)))
                                        (let ((_tl1871619036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1871419031_)))
                                              (_hd1871519034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1871419031_))))
                                          (if (gx#stx-null? _tl1871619036_)
                                              (if (gx#stx-pair? _tl1871019020_)
                                                  (let ((_e1871719039_
                                                         (gx#stx-e
                                                          _tl1871019020_)))
                                                    (let ((_tl1871919044_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1871719039_)))
                                                          (_hd1871819042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1871719039_))))
                                                      (if (gx#stx-pair?
                                                           _hd1871819042_)
                                                          (let ((_e1872019047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1871819042_)))
                    (let ((_tl1872219052_
                           (let () (declare (not safe)) (##cdr _e1872019047_)))
                          (_hd1872119050_
                           (let ()
                             (declare (not safe))
                             (##car _e1872019047_))))
                      (if (gx#identifier? _hd1872119050_)
                          (if (gx#stx-eq? '%#quote _hd1872119050_)
                              (if (gx#stx-pair? _tl1872219052_)
                                  (let ((_e1872319055_
                                         (gx#stx-e _tl1872219052_)))
                                    (let ((_tl1872519060_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1872319055_)))
                                          (_hd1872419058_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1872319055_))))
                                      (if (gx#stx-null? _tl1872519060_)
                                          (if (gx#stx-null? _tl1871919044_)
                                              (___match2023420235_
                                               _e1867818935_
                                               _hd1867918938_
                                               _tl1868018940_
                                               _e1868118943_
                                               _hd1868218946_
                                               _tl1868318948_
                                               _e1868418951_
                                               _hd1868518954_
                                               _tl1868618956_
                                               _e1868718959_
                                               _hd1868818962_
                                               _tl1868918964_
                                               _e1869018967_
                                               _hd1869118970_
                                               _tl1869218972_
                                               _e1869318975_
                                               _hd1869418978_
                                               _tl1869518980_
                                               _e1869618983_
                                               _hd1869718986_
                                               _tl1869818988_
                                               _e1869918991_
                                               _hd1870018994_
                                               _tl1870118996_
                                               _e1870218999_
                                               _hd1870319002_
                                               _tl1870419004_
                                               _e1870519007_
                                               _hd1870619010_
                                               _tl1870719012_
                                               _e1870819015_
                                               _hd1870919018_
                                               _tl1871019020_
                                               _e1871119023_
                                               _hd1871219026_
                                               _tl1871319028_
                                               _e1871419031_
                                               _hd1871519034_
                                               _tl1871619036_
                                               _e1871719039_
                                               _hd1871819042_
                                               _tl1871919044_
                                               _e1872019047_
                                               _hd1872119050_
                                               _tl1872219052_
                                               _e1872319055_
                                               _hd1872419058_
                                               _tl1872519060_)
                                              (___kont2010520106_))
                                          (___kont2010520106_))))
                                  (___kont2010520106_))
                              (___kont2010520106_))
                          (___kont2010520106_))))
                  (___kont2010520106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl1871019020_)
                                                      (if (gxc#runtime-identifier=?
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '-bind-method)
                                                           'bind-method!)
                                                          (let ((_L18889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1871519034_)
                        (_L18890_ _hd1870619010_)
                        (_L18891_ _hd1869718986_)
                        (_L18892_ _hd1868818962_))
                    (___kont2010320104_ _L18889_ _L18890_ _L18891_ _L18892_))
                  (___kont2010520106_))
              (___kont2010520106_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2010520106_))))
                                      (___kont2010520106_))
                                  (___kont2010520106_))
                              (___kont2010520106_))))
                      (___kont2010520106_))))
              (___kont2010520106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2010520106_))))
                                          (___kont2010520106_))
                                      (___kont2010520106_))
                                  (___kont2010520106_))))
                          (___kont2010520106_))))
                  (___kont2010520106_))
              (___kont2010520106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2010520106_))
                                          (___kont2010520106_))
                                      (___kont2010520106_))))
                              (___kont2010520106_))))
                      (___kont2010520106_))
                  (___kont2010520106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2010520106_))
                                              (___kont2010520106_))
                                          (___kont2010520106_))))
                                  (___kont2010520106_))))
                          (___kont2010520106_))))
                  (___kont2010520106_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx18614_ _id18615_ _new-id18616_)
        (let* ((_g1861818631_
                (lambda (_g1861918628_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1861918628_)))
               (_g1861718664_
                (lambda (_g1861918634_)
                  (if (gx#stx-pair? _g1861918634_)
                      (let ((_e1862118636_ (gx#stx-e _g1861918634_)))
                        (let ((_hd1862218639_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1862118636_)))
                              (_tl1862318641_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1862118636_))))
                          (if (gx#stx-pair? _tl1862318641_)
                              (let ((_e1862418644_ (gx#stx-e _tl1862318641_)))
                                (let ((_hd1862518647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1862418644_)))
                                      (_tl1862618649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1862418644_))))
                                  (if (gx#stx-null? _tl1862618649_)
                                      ((lambda (_L18652_)
                                         (if (gx#free-identifier=?
                                              _L18652_
                                              _id18615_)
                                             (gxc#xform-wrap-source
                                              (cons '%#ref
                                                    (cons _new-id18616_ '()))
                                              _stx18614_)
                                             _stx18614_))
                                       _hd1862518647_)
                                      (_g1861818631_ _g1861918634_))))
                              (_g1861818631_ _g1861918634_))))
                      (_g1861818631_ _g1861918634_)))))
          (_g1861718664_ _stx18614_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx18555_ _subst18556_)
        (let* ((_g1855818571_
                (lambda (_g1855918568_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1855918568_)))
               (_g1855718611_
                (lambda (_g1855918574_)
                  (if (gx#stx-pair? _g1855918574_)
                      (let ((_e1856118576_ (gx#stx-e _g1855918574_)))
                        (let ((_hd1856218579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1856118576_)))
                              (_tl1856318581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1856118576_))))
                          (if (gx#stx-pair? _tl1856318581_)
                              (let ((_e1856418584_ (gx#stx-e _tl1856318581_)))
                                (let ((_hd1856518587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1856418584_)))
                                      (_tl1856618589_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1856418584_))))
                                  (if (gx#stx-null? _tl1856618589_)
                                      ((lambda (_L18592_)
                                         (let ((_$e18606_
                                                (find (lambda (_sub18604_)
                                                        (gx#free-identifier=?
                                                         _L18592_
                                                         (car _sub18604_)))
                                                      _subst18556_)))
                                           (if _$e18606_
                                               ((lambda (_sub18609_)
                                                  (gxc#xform-wrap-source
                                                   (cons '%#ref
                                                         (cons (cdr _sub18609_)
                                                               '()))
                                                   _stx18555_))
                                                _$e18606_)
                                               _stx18555_)))
                                       _hd1856518587_)
                                      (_g1855818571_ _g1855918574_))))
                              (_g1855818571_ _g1855918574_))))
                      (_g1855818571_ _g1855918574_)))))
          (_g1855718611_ _stx18555_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx18483_ _id18484_ _new-id18485_)
        (let* ((_g1848718504_
                (lambda (_g1848818501_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1848818501_)))
               (_g1848618552_
                (lambda (_g1848818507_)
                  (if (gx#stx-pair? _g1848818507_)
                      (let ((_e1849118509_ (gx#stx-e _g1848818507_)))
                        (let ((_hd1849218512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1849118509_)))
                              (_tl1849318514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1849118509_))))
                          (if (gx#stx-pair? _tl1849318514_)
                              (let ((_e1849418517_ (gx#stx-e _tl1849318514_)))
                                (let ((_hd1849518520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1849418517_)))
                                      (_tl1849618522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1849418517_))))
                                  (if (gx#stx-pair? _tl1849618522_)
                                      (let ((_e1849718525_
                                             (gx#stx-e _tl1849618522_)))
                                        (let ((_hd1849818528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1849718525_)))
                                              (_tl1849918530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1849718525_))))
                                          (if (gx#stx-null? _tl1849918530_)
                                              ((lambda (_L18533_ _L18534_)
                                                 (let ((_new-expr18549_
                                                        (gxc#compile-e
                                                         _L18533_
                                                         _id18484_
                                                         _new-id18485_))
                                                       (_new-xid18550_
                                                        (if (gx#free-identifier=?
                                                             _L18534_
                                                             _id18484_)
                                                            _new-id18485_
                                                            _L18534_)))
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _new-xid18550_
                                                                (cons _new-expr18549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx18483_)))
                                               _hd1849818528_
                                               _hd1849518520_)
                                              (_g1848718504_ _g1848818507_))))
                                      (_g1848718504_ _g1848818507_))))
                              (_g1848718504_ _g1848818507_))))
                      (_g1848718504_ _g1848818507_)))))
          (_g1848618552_ _stx18483_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx18407_ _subst18408_)
        (let* ((_g1841018427_
                (lambda (_g1841118424_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1841118424_)))
               (_g1840918480_
                (lambda (_g1841118430_)
                  (if (gx#stx-pair? _g1841118430_)
                      (let ((_e1841418432_ (gx#stx-e _g1841118430_)))
                        (let ((_hd1841518435_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1841418432_)))
                              (_tl1841618437_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1841418432_))))
                          (if (gx#stx-pair? _tl1841618437_)
                              (let ((_e1841718440_ (gx#stx-e _tl1841618437_)))
                                (let ((_hd1841818443_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1841718440_)))
                                      (_tl1841918445_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1841718440_))))
                                  (if (gx#stx-pair? _tl1841918445_)
                                      (let ((_e1842018448_
                                             (gx#stx-e _tl1841918445_)))
                                        (let ((_hd1842118451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1842018448_)))
                                              (_tl1842218453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1842018448_))))
                                          (if (gx#stx-null? _tl1842218453_)
                                              ((lambda (_L18456_ _L18457_)
                                                 (let ((_new-expr18477_
                                                        (gxc#compile-e
                                                         _L18456_
                                                         _subst18408_))
                                                       (_new-xid18478_
                                                        (let ((_$e18474_
                                                               (find (lambda (_sub18472_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#free-identifier=?
                                _L18457_
                                (car _sub18472_)))
                             _subst18408_)))
                  (if _$e18474_ (cdr _$e18474_) _L18457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gxc#xform-wrap-source
                                                    (cons '%#set!
                                                          (cons _new-xid18478_
                                                                (cons _new-expr18477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx18407_)))
                                               _hd1842118451_
                                               _hd1841818443_)
                                              (_g1841018427_ _g1841118430_))))
                                      (_g1841018427_ _g1841118430_))))
                              (_g1841018427_ _g1841118430_))))
                      (_g1841018427_ _g1841118430_)))))
          (_g1840918480_ _stx18407_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx18353_ _ht18354_)
        (let* ((_g1835618369_
                (lambda (_g1835718366_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1835718366_)))
               (_g1835518404_
                (lambda (_g1835718372_)
                  (if (gx#stx-pair? _g1835718372_)
                      (let ((_e1835918374_ (gx#stx-e _g1835718372_)))
                        (let ((_hd1836018377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1835918374_)))
                              (_tl1836118379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1835918374_))))
                          (if (gx#stx-pair? _tl1836118379_)
                              (let ((_e1836218382_ (gx#stx-e _tl1836118379_)))
                                (let ((_hd1836318385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1836218382_)))
                                      (_tl1836418387_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1836218382_))))
                                  (if (gx#stx-null? _tl1836418387_)
                                      ((lambda (_L18390_)
                                         (let ((_eid18402_
                                                (gxc#identifier-symbol
                                                 _L18390_)))
                                           (hash-update!
                                            _ht18354_
                                            _eid18402_
                                            1+
                                            '0)))
                                       _hd1836318385_)
                                      (_g1835618369_ _g1835718372_))))
                              (_g1835618369_ _g1835718372_))))
                      (_g1835618369_ _g1835718372_)))))
          (_g1835518404_ _stx18353_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx18283_ _ht18284_)
        (let* ((_g1828618303_
                (lambda (_g1828718300_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1828718300_)))
               (_g1828518350_
                (lambda (_g1828718306_)
                  (if (gx#stx-pair? _g1828718306_)
                      (let ((_e1829018308_ (gx#stx-e _g1828718306_)))
                        (let ((_hd1829118311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1829018308_)))
                              (_tl1829218313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1829018308_))))
                          (if (gx#stx-pair? _tl1829218313_)
                              (let ((_e1829318316_ (gx#stx-e _tl1829218313_)))
                                (let ((_hd1829418319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1829318316_)))
                                      (_tl1829518321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1829318316_))))
                                  (if (gx#stx-pair? _tl1829518321_)
                                      (let ((_e1829618324_
                                             (gx#stx-e _tl1829518321_)))
                                        (let ((_hd1829718327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1829618324_)))
                                              (_tl1829818329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1829618324_))))
                                          (if (gx#stx-null? _tl1829818329_)
                                              ((lambda (_L18332_ _L18333_)
                                                 (let ((_eid18348_
                                                        (gxc#identifier-symbol
                                                         _L18333_)))
                                                   (hash-update!
                                                    _ht18284_
                                                    _eid18348_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L18332_
                                                    _ht18284_)))
                                               _hd1829718327_
                                               _hd1829418319_)
                                              (_g1828618303_ _g1828718306_))))
                                      (_g1828618303_ _g1828718306_))))
                              (_g1828618303_ _g1828718306_))))
                      (_g1828618303_ _g1828718306_)))))
          (_g1828518350_ _stx18283_))))
    (define gxc#find-body%
      (lambda (_stx18196_ _arg18197_)
        (let* ((_g1819918218_
                (lambda (_g1820018215_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1820018215_)))
               (_g1819818280_
                (lambda (_g1820018221_)
                  (if (gx#stx-pair? _g1820018221_)
                      (let ((_e1820218223_ (gx#stx-e _g1820018221_)))
                        (let ((_hd1820318226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1820218223_)))
                              (_tl1820418228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1820218223_))))
                          (if (gx#stx-pair/null? _tl1820418228_)
                              (let ((_g20346_
                                     (gx#syntax-split-splice
                                      _tl1820418228_
                                      '0)))
                                (begin
                                  (let ((_g20347_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20346_)
                                               (##vector-length _g20346_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20347_ 2)))
                                        (error "Context expects 2 values"
                                               _g20347_)))
                                  (let ((_target1820518231_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20346_ 0)))
                                        (_tl1820718233_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20346_ 1))))
                                    (if (gx#stx-null? _tl1820718233_)
                                        (letrec ((_loop1820818236_
                                                  (lambda (_hd1820618239_
                                                           _expr1821218241_)
                                                    (if (gx#stx-pair?
                                                         _hd1820618239_)
                                                        (let ((_e1820918244_
                                                               (gx#stx-e
                                                                _hd1820618239_)))
                                                          (let ((_lp-hd1821018247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1820918244_)))
                        (_lp-tl1821118249_
                         (let () (declare (not safe)) (##cdr _e1820918244_))))
                    (_loop1820818236_
                     _lp-tl1821118249_
                     (cons _lp-hd1821018247_ _expr1821218241_))))
                (let ((_expr1821318252_ (reverse _expr1821218241_)))
                  ((lambda (_L18255_)
                     (ormap1 (lambda (_g1826818270_)
                               (gxc#compile-e _g1826818270_ _arg18197_))
                             (foldr1 (lambda (_g1827218275_ _g1827318277_)
                                       (cons _g1827218275_ _g1827318277_))
                                     '()
                                     _L18255_)))
                   _expr1821318252_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1820818236_
                                           _target1820518231_
                                           '()))
                                        (_g1819918218_ _g1820018221_)))))
                              (_g1819918218_ _g1820018221_))))
                      (_g1819918218_ _g1820018221_)))))
          (_g1819818280_ _stx18196_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx18128_ _arg18129_)
        (let* ((_g1813118148_
                (lambda (_g1813218145_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1813218145_)))
               (_g1813018193_
                (lambda (_g1813218151_)
                  (if (gx#stx-pair? _g1813218151_)
                      (let ((_e1813518153_ (gx#stx-e _g1813218151_)))
                        (let ((_hd1813618156_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1813518153_)))
                              (_tl1813718158_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1813518153_))))
                          (if (gx#stx-pair? _tl1813718158_)
                              (let ((_e1813818161_ (gx#stx-e _tl1813718158_)))
                                (let ((_hd1813918164_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1813818161_)))
                                      (_tl1814018166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1813818161_))))
                                  (if (gx#stx-pair? _tl1814018166_)
                                      (let ((_e1814118169_
                                             (gx#stx-e _tl1814018166_)))
                                        (let ((_hd1814218172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1814118169_)))
                                              (_tl1814318174_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1814118169_))))
                                          (if (gx#stx-null? _tl1814318174_)
                                              ((lambda (_L18177_ _L18178_)
                                                 (gxc#compile-e
                                                  _L18177_
                                                  _arg18129_))
                                               _hd1814218172_
                                               _hd1813918164_)
                                              (_g1813118148_ _g1813218151_))))
                                      (_g1813118148_ _g1813218151_))))
                              (_g1813118148_ _g1813218151_))))
                      (_g1813118148_ _g1813218151_)))))
          (_g1813018193_ _stx18128_))))
    (define gxc#find-lambda%
      (lambda (_stx18060_ _arg18061_)
        (let* ((_g1806318080_
                (lambda (_g1806418077_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1806418077_)))
               (_g1806218125_
                (lambda (_g1806418083_)
                  (if (gx#stx-pair? _g1806418083_)
                      (let ((_e1806718085_ (gx#stx-e _g1806418083_)))
                        (let ((_hd1806818088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1806718085_)))
                              (_tl1806918090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1806718085_))))
                          (if (gx#stx-pair? _tl1806918090_)
                              (let ((_e1807018093_ (gx#stx-e _tl1806918090_)))
                                (let ((_hd1807118096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1807018093_)))
                                      (_tl1807218098_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1807018093_))))
                                  (if (gx#stx-pair? _tl1807218098_)
                                      (let ((_e1807318101_
                                             (gx#stx-e _tl1807218098_)))
                                        (let ((_hd1807418104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1807318101_)))
                                              (_tl1807518106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1807318101_))))
                                          (if (gx#stx-null? _tl1807518106_)
                                              ((lambda (_L18109_ _L18110_)
                                                 (gxc#compile-e
                                                  _L18109_
                                                  _arg18061_))
                                               _hd1807418104_
                                               _hd1807118096_)
                                              (_g1806318080_ _g1806418083_))))
                                      (_g1806318080_ _g1806418083_))))
                              (_g1806318080_ _g1806418083_))))
                      (_g1806318080_ _g1806418083_)))))
          (_g1806218125_ _stx18060_))))
    (define gxc#find-case-lambda%
      (lambda (_stx17942_ _arg17943_)
        (let* ((_g1794517973_
                (lambda (_g1794617970_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1794617970_)))
               (_g1794418057_
                (lambda (_g1794617976_)
                  (if (gx#stx-pair? _g1794617976_)
                      (let ((_e1794917978_ (gx#stx-e _g1794617976_)))
                        (let ((_hd1795017981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1794917978_)))
                              (_tl1795117983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1794917978_))))
                          (if (gx#stx-pair/null? _tl1795117983_)
                              (let ((_g20348_
                                     (gx#syntax-split-splice
                                      _tl1795117983_
                                      '0)))
                                (begin
                                  (let ((_g20349_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20348_)
                                               (##vector-length _g20348_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20349_ 2)))
                                        (error "Context expects 2 values"
                                               _g20349_)))
                                  (let ((_target1795217986_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20348_ 0)))
                                        (_tl1795417988_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20348_ 1))))
                                    (if (gx#stx-null? _tl1795417988_)
                                        (letrec ((_loop1795517991_
                                                  (lambda (_hd1795317994_
                                                           _body1795917996_
                                                           _hd1796017998_)
                                                    (if (gx#stx-pair?
                                                         _hd1795317994_)
                                                        (let ((_e1795618001_
                                                               (gx#stx-e
                                                                _hd1795317994_)))
                                                          (let ((_lp-hd1795718004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1795618001_)))
                        (_lp-tl1795818006_
                         (let () (declare (not safe)) (##cdr _e1795618001_))))
                    (if (gx#stx-pair? _lp-hd1795718004_)
                        (let ((_e1796318009_ (gx#stx-e _lp-hd1795718004_)))
                          (let ((_hd1796418012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1796318009_)))
                                (_tl1796518014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1796318009_))))
                            (if (gx#stx-pair? _tl1796518014_)
                                (let ((_e1796618017_
                                       (gx#stx-e _tl1796518014_)))
                                  (let ((_hd1796718020_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1796618017_)))
                                        (_tl1796818022_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1796618017_))))
                                    (if (gx#stx-null? _tl1796818022_)
                                        (_loop1795517991_
                                         _lp-tl1795818006_
                                         (cons _hd1796718020_ _body1795917996_)
                                         (cons _hd1796418012_ _hd1796017998_))
                                        (_g1794517973_ _g1794617976_))))
                                (_g1794517973_ _g1794617976_))))
                        (_g1794517973_ _g1794617976_))))
                (let ((_body1796118025_ (reverse _body1795917996_))
                      (_hd1796218027_ (reverse _hd1796017998_)))
                  ((lambda (_L18030_ _L18031_)
                     (ormap1 (lambda (_g1804518047_)
                               (gxc#compile-e _g1804518047_ _arg17943_))
                             (foldr1 (lambda (_g1804918052_ _g1805018054_)
                                       (cons _g1804918052_ _g1805018054_))
                                     '()
                                     _L18030_)))
                   _body1796118025_
                   _hd1796218027_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1795517991_
                                           _target1795217986_
                                           '()
                                           '()))
                                        (_g1794517973_ _g1794617976_)))))
                              (_g1794517973_ _g1794617976_))))
                      (_g1794517973_ _g1794617976_)))))
          (_g1794418057_ _stx17942_))))
    (define gxc#find-let-values%
      (lambda (_stx17792_ _arg17793_)
        (let* ((_g1779517830_
                (lambda (_g1779617827_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1779617827_)))
               (_g1779417939_
                (lambda (_g1779617833_)
                  (if (gx#stx-pair? _g1779617833_)
                      (let ((_e1780017835_ (gx#stx-e _g1779617833_)))
                        (let ((_hd1780117838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1780017835_)))
                              (_tl1780217840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1780017835_))))
                          (if (gx#stx-pair? _tl1780217840_)
                              (let ((_e1780317843_ (gx#stx-e _tl1780217840_)))
                                (let ((_hd1780417846_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1780317843_)))
                                      (_tl1780517848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1780317843_))))
                                  (if (gx#stx-pair/null? _hd1780417846_)
                                      (let ((_g20350_
                                             (gx#syntax-split-splice
                                              _hd1780417846_
                                              '0)))
                                        (begin
                                          (let ((_g20351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20350_)
                                                       (##vector-length
                                                        _g20350_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20351_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20351_)))
                                          (let ((_target1780617851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20350_ 0)))
                                                (_tl1780817853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20350_ 1))))
                                            (if (gx#stx-null? _tl1780817853_)
                                                (letrec ((_loop1780917856_
                                                          (lambda (_hd1780717859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1781317861_
                           _bind1781417863_)
                    (if (gx#stx-pair? _hd1780717859_)
                        (let ((_e1781017866_ (gx#stx-e _hd1780717859_)))
                          (let ((_lp-hd1781117869_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1781017866_)))
                                (_lp-tl1781217871_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1781017866_))))
                            (if (gx#stx-pair? _lp-hd1781117869_)
                                (let ((_e1781717874_
                                       (gx#stx-e _lp-hd1781117869_)))
                                  (let ((_hd1781817877_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1781717874_)))
                                        (_tl1781917879_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1781717874_))))
                                    (if (gx#stx-pair? _tl1781917879_)
                                        (let ((_e1782017882_
                                               (gx#stx-e _tl1781917879_)))
                                          (let ((_hd1782117885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1782017882_)))
                                                (_tl1782217887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1782017882_))))
                                            (if (gx#stx-null? _tl1782217887_)
                                                (_loop1780917856_
                                                 _lp-tl1781217871_
                                                 (cons _hd1782117885_
                                                       _expr1781317861_)
                                                 (cons _hd1781817877_
                                                       _bind1781417863_))
                                                (_g1779517830_
                                                 _g1779617833_))))
                                        (_g1779517830_ _g1779617833_))))
                                (_g1779517830_ _g1779617833_))))
                        (let ((_expr1781517890_ (reverse _expr1781317861_))
                              (_bind1781617892_ (reverse _bind1781417863_)))
                          (if (gx#stx-pair? _tl1780517848_)
                              (let ((_e1782317895_ (gx#stx-e _tl1780517848_)))
                                (let ((_hd1782417898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1782317895_)))
                                      (_tl1782517900_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1782317895_))))
                                  (if (gx#stx-null? _tl1782517900_)
                                      ((lambda (_L17903_ _L17904_ _L17905_)
                                         (let ((_$e17936_
                                                (ormap1 (lambda (_g1792417926_)
                                                          (gxc#compile-e
                                                           _g1792417926_
                                                           _arg17793_))
                                                        (foldr1 (lambda (_g1792817931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1792917933_)
                          (cons _g1792817931_ _g1792917933_))
                        '()
                        _L17904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if _$e17936_
                                               _$e17936_
                                               (gxc#compile-e
                                                _L17903_
                                                _arg17793_))))
                                       _hd1782417898_
                                       _expr1781517890_
                                       _bind1781617892_)
                                      (_g1779517830_ _g1779617833_))))
                              (_g1779517830_ _g1779617833_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1780917856_
                                                   _target1780617851_
                                                   '()
                                                   '()))
                                                (_g1779517830_
                                                 _g1779617833_)))))
                                      (_g1779517830_ _g1779617833_))))
                              (_g1779517830_ _g1779617833_))))
                      (_g1779517830_ _g1779617833_)))))
          (_g1779417939_ _stx17792_))))
    (define gxc#find-setq%
      (lambda (_stx17724_ _arg17725_)
        (let* ((_g1772717744_
                (lambda (_g1772817741_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1772817741_)))
               (_g1772617789_
                (lambda (_g1772817747_)
                  (if (gx#stx-pair? _g1772817747_)
                      (let ((_e1773117749_ (gx#stx-e _g1772817747_)))
                        (let ((_hd1773217752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1773117749_)))
                              (_tl1773317754_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1773117749_))))
                          (if (gx#stx-pair? _tl1773317754_)
                              (let ((_e1773417757_ (gx#stx-e _tl1773317754_)))
                                (let ((_hd1773517760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1773417757_)))
                                      (_tl1773617762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1773417757_))))
                                  (if (gx#stx-pair? _tl1773617762_)
                                      (let ((_e1773717765_
                                             (gx#stx-e _tl1773617762_)))
                                        (let ((_hd1773817768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1773717765_)))
                                              (_tl1773917770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1773717765_))))
                                          (if (gx#stx-null? _tl1773917770_)
                                              ((lambda (_L17773_ _L17774_)
                                                 (gxc#compile-e
                                                  _L17773_
                                                  _arg17725_))
                                               _hd1773817768_
                                               _hd1773517760_)
                                              (_g1772717744_ _g1772817747_))))
                                      (_g1772717744_ _g1772817747_))))
                              (_g1772717744_ _g1772817747_))))
                      (_g1772717744_ _g1772817747_)))))
          (_g1772617789_ _stx17724_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx17668_ _ids17669_)
        (let* ((_g1767117684_
                (lambda (_g1767217681_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1767217681_)))
               (_g1767017721_
                (lambda (_g1767217687_)
                  (if (gx#stx-pair? _g1767217687_)
                      (let ((_e1767417689_ (gx#stx-e _g1767217687_)))
                        (let ((_hd1767517692_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1767417689_)))
                              (_tl1767617694_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1767417689_))))
                          (if (gx#stx-pair? _tl1767617694_)
                              (let ((_e1767717697_ (gx#stx-e _tl1767617694_)))
                                (let ((_hd1767817700_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1767717697_)))
                                      (_tl1767917702_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1767717697_))))
                                  (if (gx#stx-null? _tl1767917702_)
                                      ((lambda (_L17705_)
                                         (find (lambda (_g1771617718_)
                                                 (gx#free-identifier=?
                                                  _L17705_
                                                  _g1771617718_))
                                               _ids17669_))
                                       _hd1767817700_)
                                      (_g1767117684_ _g1767217687_))))
                              (_g1767117684_ _g1767217687_))))
                      (_g1767117684_ _g1767217687_)))))
          (_g1767017721_ _stx17668_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx17592_ _ids17593_)
        (let* ((_g1759517612_
                (lambda (_g1759617609_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1759617609_)))
               (_g1759417665_
                (lambda (_g1759617615_)
                  (if (gx#stx-pair? _g1759617615_)
                      (let ((_e1759917617_ (gx#stx-e _g1759617615_)))
                        (let ((_hd1760017620_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1759917617_)))
                              (_tl1760117622_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1759917617_))))
                          (if (gx#stx-pair? _tl1760117622_)
                              (let ((_e1760217625_ (gx#stx-e _tl1760117622_)))
                                (let ((_hd1760317628_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1760217625_)))
                                      (_tl1760417630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1760217625_))))
                                  (if (gx#stx-pair? _tl1760417630_)
                                      (let ((_e1760517633_
                                             (gx#stx-e _tl1760417630_)))
                                        (let ((_hd1760617636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1760517633_)))
                                              (_tl1760717638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1760517633_))))
                                          (if (gx#stx-null? _tl1760717638_)
                                              ((lambda (_L17641_ _L17642_)
                                                 (let ((_$e17662_
                                                        (find (lambda (_g1765717659_)
                                                                (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17642_
                         _g1765717659_))
                      _ids17593_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e17662_
                                                       _$e17662_
                                                       (gxc#compile-e
                                                        _L17641_
                                                        _ids17593_))))
                                               _hd1760617636_
                                               _hd1760317628_)
                                              (_g1759517612_ _g1759617615_))))
                                      (_g1759517612_ _g1759617615_))))
                              (_g1759517612_ _g1759617615_))))
                      (_g1759517612_ _g1759617615_)))))
          (_g1759417665_ _stx17592_))))))
