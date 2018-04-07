(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18364_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl18364_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl18364_ '%#lambda gxc#xform-identity)
           (table-set! _tbl18364_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl18364_ '%#let-values gxc#xform-identity)
           (table-set! _tbl18364_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl18364_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl18364_ '%#quote gxc#xform-identity)
           (table-set! _tbl18364_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18364_ '%#call gxc#xform-identity)
           (table-set! _tbl18364_ '%#if gxc#xform-identity)
           (table-set! _tbl18364_ '%#ref gxc#xform-identity)
           (table-set! _tbl18364_ '%#set! gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl18364_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl18364_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl18364_)))))
  (define gxc#&identity-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl18360_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl18360_ '%#begin gxc#xform-identity)
           (table-set! _tbl18360_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl18360_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl18360_ '%#module gxc#xform-identity)
           (table-set! _tbl18360_ '%#import gxc#xform-identity)
           (table-set! _tbl18360_ '%#export gxc#xform-identity)
           (table-set! _tbl18360_ '%#provide gxc#xform-identity)
           (table-set! _tbl18360_ '%#extern gxc#xform-identity)
           (table-set! _tbl18360_ '%#define-values gxc#xform-identity)
           (table-set! _tbl18360_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl18360_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl18360_ '%#declare gxc#xform-identity)
           _tbl18360_)))))
  (define gxc#&identity
    (##make-promise
     (lambda ()
       (let ((_tbl18356_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18356_ (force gxc#&identity-special-form))
           (hash-copy! _tbl18356_ (force gxc#&identity-expression))
           _tbl18356_)))))
  (define gxc#&basic-xform-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18352_ (make-table 'test: eq?)))
         (begin
           (table-set!
            _tbl18352_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl18352_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl18352_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl18352_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl18352_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl18352_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl18352_ '%#quote gxc#xform-identity)
           (table-set! _tbl18352_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl18352_ '%#call gxc#xform-operands)
           (table-set! _tbl18352_ '%#if gxc#xform-operands)
           (table-set! _tbl18352_ '%#ref gxc#xform-identity)
           (table-set! _tbl18352_ '%#set! gxc#xform-setq%)
           (table-set! _tbl18352_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl18352_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl18352_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl18352_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl18352_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl18352_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl18352_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl18352_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl18352_)))))
  (define gxc#&basic-xform
    (##make-promise
     (lambda ()
       (let ((_tbl18348_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18348_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl18348_ (force gxc#&identity))
           (table-set! _tbl18348_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18348_ '%#begin-syntax gxc#xform-begin-syntax%)
           (table-set! _tbl18348_ '%#module gxc#xform-module%)
           (table-set! _tbl18348_ '%#define-values gxc#xform-define-values%)
           (table-set! _tbl18348_ '%#define-syntax gxc#xform-define-syntax%)
           _tbl18348_)))))
  (define gxc#&collect-mutators
    (##make-promise
     (lambda ()
       (let ((_tbl18344_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18344_ (force gxc#&void))
           (table-set! _tbl18344_ '%#begin gxc#collect-begin%)
           (table-set! _tbl18344_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set!
            _tbl18344_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl18344_ '%#module gxc#collect-module%)
           (table-set! _tbl18344_ '%#define-values gxc#collect-define-values%)
           (table-set! _tbl18344_ '%#define-syntax gxc#collect-define-syntax%)
           (table-set! _tbl18344_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl18344_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl18344_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl18344_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl18344_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl18344_ '%#call gxc#collect-operands)
           (table-set! _tbl18344_ '%#if gxc#collect-operands)
           (table-set! _tbl18344_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl18344_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl18344_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl18344_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl18344_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl18344_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl18344_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl18344_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl18344_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl18344_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx18337_ . _args18339_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18337_ _args18339_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (##make-promise
     (lambda ()
       (let ((_tbl18334_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18334_ (force gxc#&basic-xform-expression))
           (table-set! _tbl18334_ '%#begin gxc#xform-begin%)
           (table-set! _tbl18334_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl18334_ '%#set! gxc#expression-subst-setq%)
           _tbl18334_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx18327_ . _args18329_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18327_ _args18329_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (##make-promise
     (lambda ()
       (let ((_tbl18324_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18324_ (force gxc#&expression-subst))
           (table-set! _tbl18324_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl18324_ '%#set! gxc#expression-subst*-setq%)
           _tbl18324_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx18317_ . _args18319_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18317_ _args18319_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (##make-promise
     (lambda ()
       (let ((_tbl18314_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18314_ (force gxc#&false-expression))
           (table-set! _tbl18314_ '%#begin gxc#find-body%)
           (table-set!
            _tbl18314_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl18314_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl18314_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl18314_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl18314_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl18314_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl18314_ '%#call gxc#find-body%)
           (table-set! _tbl18314_ '%#if gxc#find-body%)
           (table-set! _tbl18314_ '%#set! gxc#find-setq%)
           (table-set! _tbl18314_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl18314_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl18314_)))))
  (define gxc#&find-var-refs
    (##make-promise
     (lambda ()
       (let ((_tbl18310_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18310_ (force gxc#&find-expression))
           (table-set! _tbl18310_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl18310_ '%#set! gxc#find-var-refs-setq%)
           _tbl18310_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx18303_ . _args18305_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18303_ _args18305_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (##make-promise
     (lambda ()
       (let ((_tbl18300_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl18300_ (force gxc#&collect-expression-refs))
           (table-set! _tbl18300_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl18300_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl18300_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx18293_ . _args18295_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx18293_ _args18295_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx18290_ . _args18291_) _stx18290_))
  (define gxc#xform-wrap-source
    (lambda (_stx18287_ _src-stx18288_)
      (gx#stx-wrap-source _stx18287_ (gx#stx-source _src-stx18288_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args18281_)
      (lambda (_g1828218284_)
        (apply gxc#compile-e _g1828218284_ _args18281_))))
  (define gxc#xform-begin%
    (lambda (_stx18240_ . _args18241_)
      (let* ((_g1824318253_
              (lambda (_g1824418250_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1824418250_)))
             (_g1824218278_
              (lambda (_g1824418256_)
                (if (gx#stx-pair? _g1824418256_)
                    (let ((_e1824618258_ (gx#stx-e _g1824418256_)))
                      (let ((_hd1824718261_ (##car _e1824618258_))
                            (_tl1824818263_ (##cdr _e1824618258_)))
                        ((lambda (_L18266_)
                           (let ((_forms18276_
                                  (map (gxc#xform-apply-compile-e _args18241_)
                                       _L18266_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms18276_)
                              _stx18240_)))
                         _tl1824818263_)))
                    (_g1824318253_ _g1824418256_)))))
        (_g1824218278_ _stx18240_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx18198_ . _args18199_)
      (let* ((_g1820118211_
              (lambda (_g1820218208_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1820218208_)))
             (_g1820018237_
              (lambda (_g1820218214_)
                (if (gx#stx-pair? _g1820218214_)
                    (let ((_e1820418216_ (gx#stx-e _g1820218214_)))
                      (let ((_hd1820518219_ (##car _e1820418216_))
                            (_tl1820618221_ (##cdr _e1820418216_)))
                        ((lambda (_L18224_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms18235_
                                     (map (gxc#xform-apply-compile-e
                                           _args18199_)
                                          _L18224_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms18235_)
                                 _stx18198_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1820618221_)))
                    (_g1820118211_ _g1820218214_)))))
        (_g1820018237_ _stx18198_))))
  (define gxc#xform-module%
    (lambda (_stx18135_ . _args18136_)
      (let* ((_g1813818152_
              (lambda (_g1813918149_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1813918149_)))
             (_g1813718195_
              (lambda (_g1813918155_)
                (if (gx#stx-pair? _g1813918155_)
                    (let ((_e1814218157_ (gx#stx-e _g1813918155_)))
                      (let ((_hd1814318160_ (##car _e1814218157_))
                            (_tl1814418162_ (##cdr _e1814218157_)))
                        (if (gx#stx-pair? _tl1814418162_)
                            (let ((_e1814518165_ (gx#stx-e _tl1814418162_)))
                              (let ((_hd1814618168_ (##car _e1814518165_))
                                    (_tl1814718170_ (##cdr _e1814518165_)))
                                ((lambda (_L18173_ _L18174_)
                                   (let* ((_ctx18187_
                                           (gx#syntax-local-e__0 _L18174_))
                                          (_code18189_
                                           (##structure-ref
                                            _ctx18187_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code18192_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code18189_
                                                     _args18136_))
                                            gx#current-expander-context
                                            _ctx18187_)))
                                     (begin
                                       (##structure-set!
                                        _ctx18187_
                                        _code18192_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L18174_
                                                    (cons _code18192_ '())))
                                        _stx18135_))))
                                 _tl1814718170_
                                 _hd1814618168_)))
                            (_g1813818152_ _g1813918155_))))
                    (_g1813818152_ _g1813918155_)))))
        (_g1813718195_ _stx18135_))))
  (define gxc#xform-define-values%
    (lambda (_stx18065_ . _args18066_)
      (let* ((_g1806818085_
              (lambda (_g1806918082_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1806918082_)))
             (_g1806718132_
              (lambda (_g1806918088_)
                (if (gx#stx-pair? _g1806918088_)
                    (let ((_e1807218090_ (gx#stx-e _g1806918088_)))
                      (let ((_hd1807318093_ (##car _e1807218090_))
                            (_tl1807418095_ (##cdr _e1807218090_)))
                        (if (gx#stx-pair? _tl1807418095_)
                            (let ((_e1807518098_ (gx#stx-e _tl1807418095_)))
                              (let ((_hd1807618101_ (##car _e1807518098_))
                                    (_tl1807718103_ (##cdr _e1807518098_)))
                                (if (gx#stx-pair? _tl1807718103_)
                                    (let ((_e1807818106_
                                           (gx#stx-e _tl1807718103_)))
                                      (let ((_hd1807918109_
                                             (##car _e1807818106_))
                                            (_tl1808018111_
                                             (##cdr _e1807818106_)))
                                        (if (gx#stx-null? _tl1808018111_)
                                            ((lambda (_L18114_ _L18115_)
                                               (let ((_expr18130_
                                                      (apply gxc#compile-e
                                                             _L18114_
                                                             _args18066_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L18115_
                                                              (cons _expr18130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx18065_)))
                                             _hd1807918109_
                                             _hd1807618101_)
                                            (_g1806818085_ _g1806918088_))))
                                    (_g1806818085_ _g1806918088_))))
                            (_g1806818085_ _g1806918088_))))
                    (_g1806818085_ _g1806918088_)))))
        (_g1806718132_ _stx18065_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx17994_ . _args17995_)
      (let* ((_g1799718014_
              (lambda (_g1799818011_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1799818011_)))
             (_g1799618062_
              (lambda (_g1799818017_)
                (if (gx#stx-pair? _g1799818017_)
                    (let ((_e1800118019_ (gx#stx-e _g1799818017_)))
                      (let ((_hd1800218022_ (##car _e1800118019_))
                            (_tl1800318024_ (##cdr _e1800118019_)))
                        (if (gx#stx-pair? _tl1800318024_)
                            (let ((_e1800418027_ (gx#stx-e _tl1800318024_)))
                              (let ((_hd1800518030_ (##car _e1800418027_))
                                    (_tl1800618032_ (##cdr _e1800418027_)))
                                (if (gx#stx-pair? _tl1800618032_)
                                    (let ((_e1800718035_
                                           (gx#stx-e _tl1800618032_)))
                                      (let ((_hd1800818038_
                                             (##car _e1800718035_))
                                            (_tl1800918040_
                                             (##cdr _e1800718035_)))
                                        (if (gx#stx-null? _tl1800918040_)
                                            ((lambda (_L18043_ _L18044_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr18060_
                                                         (apply gxc#compile-e
                                                                _L18043_
                                                                _args17995_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L18044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr18060_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx17994_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1800818038_
                                             _hd1800518030_)
                                            (_g1799718014_ _g1799818017_))))
                                    (_g1799718014_ _g1799818017_))))
                            (_g1799718014_ _g1799818017_))))
                    (_g1799718014_ _g1799818017_)))))
        (_g1799618062_ _stx17994_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx17924_ . _args17925_)
      (let* ((_g1792717944_
              (lambda (_g1792817941_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1792817941_)))
             (_g1792617991_
              (lambda (_g1792817947_)
                (if (gx#stx-pair? _g1792817947_)
                    (let ((_e1793117949_ (gx#stx-e _g1792817947_)))
                      (let ((_hd1793217952_ (##car _e1793117949_))
                            (_tl1793317954_ (##cdr _e1793117949_)))
                        (if (gx#stx-pair? _tl1793317954_)
                            (let ((_e1793417957_ (gx#stx-e _tl1793317954_)))
                              (let ((_hd1793517960_ (##car _e1793417957_))
                                    (_tl1793617962_ (##cdr _e1793417957_)))
                                (if (gx#stx-pair? _tl1793617962_)
                                    (let ((_e1793717965_
                                           (gx#stx-e _tl1793617962_)))
                                      (let ((_hd1793817968_
                                             (##car _e1793717965_))
                                            (_tl1793917970_
                                             (##cdr _e1793717965_)))
                                        (if (gx#stx-null? _tl1793917970_)
                                            ((lambda (_L17973_ _L17974_)
                                               (let ((_expr17989_
                                                      (apply gxc#compile-e
                                                             _L17973_
                                                             _args17925_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L17974_
                                                              (cons _expr17989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17924_)))
                                             _hd1793817968_
                                             _hd1793517960_)
                                            (_g1792717944_ _g1792817947_))))
                                    (_g1792717944_ _g1792817947_))))
                            (_g1792717944_ _g1792817947_))))
                    (_g1792717944_ _g1792817947_)))))
        (_g1792617991_ _stx17924_))))
  (define gxc#xform-lambda%
    (lambda (_stx17867_ . _args17868_)
      (let* ((_g1787017884_
              (lambda (_g1787117881_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1787117881_)))
             (_g1786917921_
              (lambda (_g1787117887_)
                (if (gx#stx-pair? _g1787117887_)
                    (let ((_e1787417889_ (gx#stx-e _g1787117887_)))
                      (let ((_hd1787517892_ (##car _e1787417889_))
                            (_tl1787617894_ (##cdr _e1787417889_)))
                        (if (gx#stx-pair? _tl1787617894_)
                            (let ((_e1787717897_ (gx#stx-e _tl1787617894_)))
                              (let ((_hd1787817900_ (##car _e1787717897_))
                                    (_tl1787917902_ (##cdr _e1787717897_)))
                                ((lambda (_L17905_ _L17906_)
                                   (let ((_body17919_
                                          (map (gxc#xform-apply-compile-e
                                                _args17868_)
                                               _L17905_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L17906_ _body17919_))
                                      _stx17867_)))
                                 _tl1787917902_
                                 _hd1787817900_)))
                            (_g1787017884_ _g1787117887_))))
                    (_g1787017884_ _g1787117887_)))))
        (_g1786917921_ _stx17867_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx17780_ . _args17781_)
      (letrec ((_clause-e17783_
                (lambda (_clause17824_)
                  (let* ((_g1782617837_
                          (lambda (_g1782717834_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1782717834_)))
                         (_g1782517864_
                          (lambda (_g1782717840_)
                            (if (gx#stx-pair? _g1782717840_)
                                (let ((_e1783017842_ (gx#stx-e _g1782717840_)))
                                  (let ((_hd1783117845_ (##car _e1783017842_))
                                        (_tl1783217847_ (##cdr _e1783017842_)))
                                    ((lambda (_L17850_ _L17851_)
                                       (let ((_body17862_
                                              (map (gxc#xform-apply-compile-e
                                                    _args17781_)
                                                   _L17850_)))
                                         (cons _L17851_ _body17862_)))
                                     _tl1783217847_
                                     _hd1783117845_)))
                                (_g1782617837_ _g1782717840_)))))
                    (_g1782517864_ _clause17824_)))))
        (let* ((_g1778517795_
                (lambda (_g1778617792_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1778617792_)))
               (_g1778417821_
                (lambda (_g1778617798_)
                  (if (gx#stx-pair? _g1778617798_)
                      (let ((_e1778817800_ (gx#stx-e _g1778617798_)))
                        (let ((_hd1778917803_ (##car _e1778817800_))
                              (_tl1779017805_ (##cdr _e1778817800_)))
                          ((lambda (_L17808_)
                             (let ((_clauses17819_
                                    (map _clause-e17783_ _L17808_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses17819_)
                                _stx17780_)))
                           _tl1779017805_)))
                      (_g1778517795_ _g1778617798_)))))
          (_g1778417821_ _stx17780_)))))
  (define gxc#xform-let-values%
    (lambda (_stx17574_ . _args17575_)
      (let* ((_g1757717610_
              (lambda (_g1757817607_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1757817607_)))
             (_g1757617777_
              (lambda (_g1757817613_)
                (if (gx#stx-pair? _g1757817613_)
                    (let ((_e1758317615_ (gx#stx-e _g1757817613_)))
                      (let ((_hd1758417618_ (##car _e1758317615_))
                            (_tl1758517620_ (##cdr _e1758317615_)))
                        (if (gx#stx-pair? _tl1758517620_)
                            (let ((_e1758617623_ (gx#stx-e _tl1758517620_)))
                              (let ((_hd1758717626_ (##car _e1758617623_))
                                    (_tl1758817628_ (##cdr _e1758617623_)))
                                (if (gx#stx-pair/null? _hd1758717626_)
                                    (let ((_g18366_
                                           (gx#syntax-split-splice
                                            _hd1758717626_
                                            '0)))
                                      (begin
                                        (let ((_g18367_
                                               (if (##values? _g18366_)
                                                   (##vector-length _g18366_)
                                                   1)))
                                          (if (not (##fx= _g18367_ 2))
                                              (error "Context expects 2 values"
                                                     _g18367_)))
                                        (let ((_target1758917631_
                                               (##vector-ref _g18366_ 0))
                                              (_tl1759117633_
                                               (##vector-ref _g18366_ 1)))
                                          (if (gx#stx-null? _tl1759117633_)
                                              (letrec ((_loop1759217636_
                                                        (lambda (_hd1759017639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1759617641_
                         _hd1759717643_)
                  (if (gx#stx-pair? _hd1759017639_)
                      (let ((_e1759317646_ (gx#stx-e _hd1759017639_)))
                        (let ((_lp-hd1759417649_ (##car _e1759317646_))
                              (_lp-tl1759517651_ (##cdr _e1759317646_)))
                          (if (gx#stx-pair? _lp-hd1759417649_)
                              (let ((_e1760017654_
                                     (gx#stx-e _lp-hd1759417649_)))
                                (let ((_hd1760117657_ (##car _e1760017654_))
                                      (_tl1760217659_ (##cdr _e1760017654_)))
                                  (if (gx#stx-pair? _tl1760217659_)
                                      (let ((_e1760317662_
                                             (gx#stx-e _tl1760217659_)))
                                        (let ((_hd1760417665_
                                               (##car _e1760317662_))
                                              (_tl1760517667_
                                               (##cdr _e1760317662_)))
                                          (if (gx#stx-null? _tl1760517667_)
                                              (_loop1759217636_
                                               _lp-tl1759517651_
                                               (cons _hd1760417665_
                                                     _expr1759617641_)
                                               (cons _hd1760117657_
                                                     _hd1759717643_))
                                              (_g1757717610_ _g1757817613_))))
                                      (_g1757717610_ _g1757817613_))))
                              (_g1757717610_ _g1757817613_))))
                      (let ((_expr1759817670_ (reverse _expr1759617641_))
                            (_hd1759917672_ (reverse _hd1759717643_)))
                        ((lambda (_L17675_ _L17676_ _L17677_ _L17678_)
                           (let* ((_g1769717713_
                                   (lambda (_g1769817710_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1769817710_)))
                                  (_g1769617767_
                                   (lambda (_g1769817716_)
                                     (if (gx#stx-pair/null? _g1769817716_)
                                         (let ((_g18368_
                                                (gx#syntax-split-splice
                                                 _g1769817716_
                                                 '0)))
                                           (begin
                                             (let ((_g18369_
                                                    (if (##values? _g18368_)
                                                        (##vector-length
                                                         _g18368_)
                                                        1)))
                                               (if (not (##fx= _g18369_ 2))
                                                   (error "Context expects 2 values"
                                                          _g18369_)))
                                             (let ((_target1770017718_
                                                    (##vector-ref _g18368_ 0))
                                                   (_tl1770217720_
                                                    (##vector-ref _g18368_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1770217720_)
                                                   (letrec ((_loop1770317723_
                                                             (lambda (_hd1770117726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1770717728_)
                       (if (gx#stx-pair? _hd1770117726_)
                           (let ((_e1770417731_ (gx#syntax-e _hd1770117726_)))
                             (let ((_lp-hd1770517734_ (##car _e1770417731_))
                                   (_lp-tl1770617736_ (##cdr _e1770417731_)))
                               (_loop1770317723_
                                _lp-tl1770617736_
                                (cons _lp-hd1770517734_ _expr1770717728_))))
                           (let ((_expr1770817739_ (reverse _expr1770717728_)))
                             ((lambda (_L17742_)
                                (let ()
                                  (let ((_body17755_
                                         (map (gxc#xform-apply-compile-e
                                               _args17575_)
                                              _L17675_)))
                                    (gxc#xform-wrap-source
                                     (cons _L17678_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L17742_
                                                    _L17677_)
                                                   (foldr2 (lambda (_g1775617760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1775717762_
                            _g1775817764_)
                     (cons (cons _g1775717762_ (cons _g1775617760_ '()))
                           _g1775817764_))
                   '()
                   _L17742_
                   _L17677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body17755_))
                                     _stx17574_))))
                              _expr1770817739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1770317723_
                                                      _target1770017718_
                                                      '()))
                                                   (_g1769717713_
                                                    _g1769817716_)))))
                                         (_g1769717713_ _g1769817716_)))))
                             (_g1769617767_
                              (map (gxc#xform-apply-compile-e _args17575_)
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1776917772_
                                                      _g1777017774_)
                                               (cons _g1776917772_
                                                     _g1777017774_))
                                             '()
                                             _L17676_))))))
                         _tl1758817628_
                         _expr1759817670_
                         _hd1759917672_
                         _hd1758417618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1759217636_
                                                 _target1758917631_
                                                 '()
                                                 '()))
                                              (_g1757717610_ _g1757817613_)))))
                                    (_g1757717610_ _g1757817613_))))
                            (_g1757717610_ _g1757817613_))))
                    (_g1757717610_ _g1757817613_)))))
        (_g1757617777_ _stx17574_))))
  (define gxc#xform-operands
    (lambda (_stx17530_ . _args17531_)
      (let* ((_g1753317544_
              (lambda (_g1753417541_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1753417541_)))
             (_g1753217571_
              (lambda (_g1753417547_)
                (if (gx#stx-pair? _g1753417547_)
                    (let ((_e1753717549_ (gx#stx-e _g1753417547_)))
                      (let ((_hd1753817552_ (##car _e1753717549_))
                            (_tl1753917554_ (##cdr _e1753717549_)))
                        ((lambda (_L17557_ _L17558_)
                           (let ((_rands17569_
                                  (map (gxc#xform-apply-compile-e _args17531_)
                                       _L17557_)))
                             (gxc#xform-wrap-source
                              (cons _L17558_ _rands17569_)
                              _stx17530_)))
                         _tl1753917554_
                         _hd1753817552_)))
                    (_g1753317544_ _g1753417547_)))))
        (_g1753217571_ _stx17530_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx17460_ . _args17461_)
      (let* ((_g1746317480_
              (lambda (_g1746417477_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1746417477_)))
             (_g1746217527_
              (lambda (_g1746417483_)
                (if (gx#stx-pair? _g1746417483_)
                    (let ((_e1746717485_ (gx#stx-e _g1746417483_)))
                      (let ((_hd1746817488_ (##car _e1746717485_))
                            (_tl1746917490_ (##cdr _e1746717485_)))
                        (if (gx#stx-pair? _tl1746917490_)
                            (let ((_e1747017493_ (gx#stx-e _tl1746917490_)))
                              (let ((_hd1747117496_ (##car _e1747017493_))
                                    (_tl1747217498_ (##cdr _e1747017493_)))
                                (if (gx#stx-pair? _tl1747217498_)
                                    (let ((_e1747317501_
                                           (gx#stx-e _tl1747217498_)))
                                      (let ((_hd1747417504_
                                             (##car _e1747317501_))
                                            (_tl1747517506_
                                             (##cdr _e1747317501_)))
                                        (if (gx#stx-null? _tl1747517506_)
                                            ((lambda (_L17509_ _L17510_)
                                               (let ((_expr17525_
                                                      (apply gxc#compile-e
                                                             _L17509_
                                                             _args17461_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L17510_
                                                              (cons _expr17525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17460_)))
                                             _hd1747417504_
                                             _hd1747117496_)
                                            (_g1746317480_ _g1746417483_))))
                                    (_g1746317480_ _g1746417483_))))
                            (_g1746317480_ _g1746417483_))))
                    (_g1746317480_ _g1746417483_)))))
        (_g1746217527_ _stx17460_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx17391_)
      (let* ((_g1739317410_
              (lambda (_g1739417407_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1739417407_)))
             (_g1739217457_
              (lambda (_g1739417413_)
                (if (gx#stx-pair? _g1739417413_)
                    (let ((_e1739717415_ (gx#stx-e _g1739417413_)))
                      (let ((_hd1739817418_ (##car _e1739717415_))
                            (_tl1739917420_ (##cdr _e1739717415_)))
                        (if (gx#stx-pair? _tl1739917420_)
                            (let ((_e1740017423_ (gx#stx-e _tl1739917420_)))
                              (let ((_hd1740117426_ (##car _e1740017423_))
                                    (_tl1740217428_ (##cdr _e1740017423_)))
                                (if (gx#stx-pair? _tl1740217428_)
                                    (let ((_e1740317431_
                                           (gx#stx-e _tl1740217428_)))
                                      (let ((_hd1740417434_
                                             (##car _e1740317431_))
                                            (_tl1740517436_
                                             (##cdr _e1740317431_)))
                                        (if (gx#stx-null? _tl1740517436_)
                                            ((lambda (_L17439_ _L17440_)
                                               (let ((_sym17455_
                                                      (gxc#identifier-symbol
                                                       _L17440_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym17455_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym17455_
                                                    '#t)
                                                   (gxc#compile-e _L17439_))))
                                             _hd1740417434_
                                             _hd1740117426_)
                                            (_g1739317410_ _g1739417413_))))
                                    (_g1739317410_ _g1739417413_))))
                            (_g1739317410_ _g1739417413_))))
                    (_g1739317410_ _g1739417413_)))))
        (_g1739217457_ _stx17391_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx17338_ _id17339_ _new-id17340_)
      (let* ((_g1734217355_
              (lambda (_g1734317352_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1734317352_)))
             (_g1734117388_
              (lambda (_g1734317358_)
                (if (gx#stx-pair? _g1734317358_)
                    (let ((_e1734517360_ (gx#stx-e _g1734317358_)))
                      (let ((_hd1734617363_ (##car _e1734517360_))
                            (_tl1734717365_ (##cdr _e1734517360_)))
                        (if (gx#stx-pair? _tl1734717365_)
                            (let ((_e1734817368_ (gx#stx-e _tl1734717365_)))
                              (let ((_hd1734917371_ (##car _e1734817368_))
                                    (_tl1735017373_ (##cdr _e1734817368_)))
                                (if (gx#stx-null? _tl1735017373_)
                                    ((lambda (_L17376_)
                                       (if (gx#free-identifier=?
                                            _L17376_
                                            _id17339_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id17340_ '()))
                                            _stx17338_)
                                           _stx17338_))
                                     _hd1734917371_)
                                    (_g1734217355_ _g1734317358_))))
                            (_g1734217355_ _g1734317358_))))
                    (_g1734217355_ _g1734317358_)))))
        (_g1734117388_ _stx17338_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx17279_ _subst17280_)
      (let* ((_g1728217295_
              (lambda (_g1728317292_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1728317292_)))
             (_g1728117335_
              (lambda (_g1728317298_)
                (if (gx#stx-pair? _g1728317298_)
                    (let ((_e1728517300_ (gx#stx-e _g1728317298_)))
                      (let ((_hd1728617303_ (##car _e1728517300_))
                            (_tl1728717305_ (##cdr _e1728517300_)))
                        (if (gx#stx-pair? _tl1728717305_)
                            (let ((_e1728817308_ (gx#stx-e _tl1728717305_)))
                              (let ((_hd1728917311_ (##car _e1728817308_))
                                    (_tl1729017313_ (##cdr _e1728817308_)))
                                (if (gx#stx-null? _tl1729017313_)
                                    ((lambda (_L17316_)
                                       (let ((_$e17330_
                                              (find (lambda (_sub17328_)
                                                      (gx#free-identifier=?
                                                       _L17316_
                                                       (car _sub17328_)))
                                                    _subst17280_)))
                                         (if _$e17330_
                                             ((lambda (_sub17333_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub17333_)
                                                             '()))
                                                 _stx17279_))
                                              _$e17330_)
                                             _stx17279_)))
                                     _hd1728917311_)
                                    (_g1728217295_ _g1728317298_))))
                            (_g1728217295_ _g1728317298_))))
                    (_g1728217295_ _g1728317298_)))))
        (_g1728117335_ _stx17279_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx17207_ _id17208_ _new-id17209_)
      (let* ((_g1721117228_
              (lambda (_g1721217225_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1721217225_)))
             (_g1721017276_
              (lambda (_g1721217231_)
                (if (gx#stx-pair? _g1721217231_)
                    (let ((_e1721517233_ (gx#stx-e _g1721217231_)))
                      (let ((_hd1721617236_ (##car _e1721517233_))
                            (_tl1721717238_ (##cdr _e1721517233_)))
                        (if (gx#stx-pair? _tl1721717238_)
                            (let ((_e1721817241_ (gx#stx-e _tl1721717238_)))
                              (let ((_hd1721917244_ (##car _e1721817241_))
                                    (_tl1722017246_ (##cdr _e1721817241_)))
                                (if (gx#stx-pair? _tl1722017246_)
                                    (let ((_e1722117249_
                                           (gx#stx-e _tl1722017246_)))
                                      (let ((_hd1722217252_
                                             (##car _e1722117249_))
                                            (_tl1722317254_
                                             (##cdr _e1722117249_)))
                                        (if (gx#stx-null? _tl1722317254_)
                                            ((lambda (_L17257_ _L17258_)
                                               (let ((_new-expr17273_
                                                      (gxc#compile-e
                                                       _L17257_
                                                       _id17208_
                                                       _new-id17209_))
                                                     (_new-xid17274_
                                                      (if (gx#free-identifier=?
                                                           _L17258_
                                                           _id17208_)
                                                          _new-id17209_
                                                          _L17258_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17274_
                                                              (cons _new-expr17273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17207_)))
                                             _hd1722217252_
                                             _hd1721917244_)
                                            (_g1721117228_ _g1721217231_))))
                                    (_g1721117228_ _g1721217231_))))
                            (_g1721117228_ _g1721217231_))))
                    (_g1721117228_ _g1721217231_)))))
        (_g1721017276_ _stx17207_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx17131_ _subst17132_)
      (let* ((_g1713417151_
              (lambda (_g1713517148_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1713517148_)))
             (_g1713317204_
              (lambda (_g1713517154_)
                (if (gx#stx-pair? _g1713517154_)
                    (let ((_e1713817156_ (gx#stx-e _g1713517154_)))
                      (let ((_hd1713917159_ (##car _e1713817156_))
                            (_tl1714017161_ (##cdr _e1713817156_)))
                        (if (gx#stx-pair? _tl1714017161_)
                            (let ((_e1714117164_ (gx#stx-e _tl1714017161_)))
                              (let ((_hd1714217167_ (##car _e1714117164_))
                                    (_tl1714317169_ (##cdr _e1714117164_)))
                                (if (gx#stx-pair? _tl1714317169_)
                                    (let ((_e1714417172_
                                           (gx#stx-e _tl1714317169_)))
                                      (let ((_hd1714517175_
                                             (##car _e1714417172_))
                                            (_tl1714617177_
                                             (##cdr _e1714417172_)))
                                        (if (gx#stx-null? _tl1714617177_)
                                            ((lambda (_L17180_ _L17181_)
                                               (let ((_new-expr17201_
                                                      (gxc#compile-e
                                                       _L17180_
                                                       _subst17132_))
                                                     (_new-xid17202_
                                                      (let ((_$e17198_
                                                             (find (lambda (_sub17196_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L17181_ (car _sub17196_)))
                           _subst17132_)))
                (if _$e17198_ (cdr _$e17198_) _L17181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17202_
                                                              (cons _new-expr17201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17131_)))
                                             _hd1714517175_
                                             _hd1714217167_)
                                            (_g1713417151_ _g1713517154_))))
                                    (_g1713417151_ _g1713517154_))))
                            (_g1713417151_ _g1713517154_))))
                    (_g1713417151_ _g1713517154_)))))
        (_g1713317204_ _stx17131_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx17077_ _ht17078_)
      (let* ((_g1708017093_
              (lambda (_g1708117090_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1708117090_)))
             (_g1707917128_
              (lambda (_g1708117096_)
                (if (gx#stx-pair? _g1708117096_)
                    (let ((_e1708317098_ (gx#stx-e _g1708117096_)))
                      (let ((_hd1708417101_ (##car _e1708317098_))
                            (_tl1708517103_ (##cdr _e1708317098_)))
                        (if (gx#stx-pair? _tl1708517103_)
                            (let ((_e1708617106_ (gx#stx-e _tl1708517103_)))
                              (let ((_hd1708717109_ (##car _e1708617106_))
                                    (_tl1708817111_ (##cdr _e1708617106_)))
                                (if (gx#stx-null? _tl1708817111_)
                                    ((lambda (_L17114_)
                                       (let ((_eid17126_
                                              (gxc#identifier-symbol
                                               _L17114_)))
                                         (hash-update!
                                          _ht17078_
                                          _eid17126_
                                          1+
                                          '0)))
                                     _hd1708717109_)
                                    (_g1708017093_ _g1708117096_))))
                            (_g1708017093_ _g1708117096_))))
                    (_g1708017093_ _g1708117096_)))))
        (_g1707917128_ _stx17077_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx17007_ _ht17008_)
      (let* ((_g1701017027_
              (lambda (_g1701117024_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1701117024_)))
             (_g1700917074_
              (lambda (_g1701117030_)
                (if (gx#stx-pair? _g1701117030_)
                    (let ((_e1701417032_ (gx#stx-e _g1701117030_)))
                      (let ((_hd1701517035_ (##car _e1701417032_))
                            (_tl1701617037_ (##cdr _e1701417032_)))
                        (if (gx#stx-pair? _tl1701617037_)
                            (let ((_e1701717040_ (gx#stx-e _tl1701617037_)))
                              (let ((_hd1701817043_ (##car _e1701717040_))
                                    (_tl1701917045_ (##cdr _e1701717040_)))
                                (if (gx#stx-pair? _tl1701917045_)
                                    (let ((_e1702017048_
                                           (gx#stx-e _tl1701917045_)))
                                      (let ((_hd1702117051_
                                             (##car _e1702017048_))
                                            (_tl1702217053_
                                             (##cdr _e1702017048_)))
                                        (if (gx#stx-null? _tl1702217053_)
                                            ((lambda (_L17056_ _L17057_)
                                               (let ((_eid17072_
                                                      (gxc#identifier-symbol
                                                       _L17057_)))
                                                 (begin
                                                   (hash-update!
                                                    _ht17008_
                                                    _eid17072_
                                                    1+
                                                    '0)
                                                   (gxc#compile-e
                                                    _L17056_
                                                    _ht17008_))))
                                             _hd1702117051_
                                             _hd1701817043_)
                                            (_g1701017027_ _g1701117030_))))
                                    (_g1701017027_ _g1701117030_))))
                            (_g1701017027_ _g1701117030_))))
                    (_g1701017027_ _g1701117030_)))))
        (_g1700917074_ _stx17007_))))
  (define gxc#find-body%
    (lambda (_stx16920_ _arg16921_)
      (let* ((_g1692316942_
              (lambda (_g1692416939_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1692416939_)))
             (_g1692217004_
              (lambda (_g1692416945_)
                (if (gx#stx-pair? _g1692416945_)
                    (let ((_e1692616947_ (gx#stx-e _g1692416945_)))
                      (let ((_hd1692716950_ (##car _e1692616947_))
                            (_tl1692816952_ (##cdr _e1692616947_)))
                        (if (gx#stx-pair/null? _tl1692816952_)
                            (let ((_g18370_
                                   (gx#syntax-split-splice _tl1692816952_ '0)))
                              (begin
                                (let ((_g18371_
                                       (if (##values? _g18370_)
                                           (##vector-length _g18370_)
                                           1)))
                                  (if (not (##fx= _g18371_ 2))
                                      (error "Context expects 2 values"
                                             _g18371_)))
                                (let ((_target1692916955_
                                       (##vector-ref _g18370_ 0))
                                      (_tl1693116957_
                                       (##vector-ref _g18370_ 1)))
                                  (if (gx#stx-null? _tl1693116957_)
                                      (letrec ((_loop1693216960_
                                                (lambda (_hd1693016963_
                                                         _expr1693616965_)
                                                  (if (gx#stx-pair?
                                                       _hd1693016963_)
                                                      (let ((_e1693316968_
                                                             (gx#stx-e
                                                              _hd1693016963_)))
                                                        (let ((_lp-hd1693416971_
                                                               (##car _e1693316968_))
                                                              (_lp-tl1693516973_
                                                               (##cdr _e1693316968_)))
                                                          (_loop1693216960_
                                                           _lp-tl1693516973_
                                                           (cons _lp-hd1693416971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1693616965_))))
              (let ((_expr1693716976_ (reverse _expr1693616965_)))
                ((lambda (_L16979_)
                   (ormap1 (lambda (_g1699216994_)
                             (gxc#compile-e _g1699216994_ _arg16921_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1699616999_ _g1699717001_)
                                       (cons _g1699616999_ _g1699717001_))
                                     '()
                                     _L16979_))))
                 _expr1693716976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1693216960_
                                         _target1692916955_
                                         '()))
                                      (_g1692316942_ _g1692416945_)))))
                            (_g1692316942_ _g1692416945_))))
                    (_g1692316942_ _g1692416945_)))))
        (_g1692217004_ _stx16920_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx16852_ _arg16853_)
      (let* ((_g1685516872_
              (lambda (_g1685616869_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1685616869_)))
             (_g1685416917_
              (lambda (_g1685616875_)
                (if (gx#stx-pair? _g1685616875_)
                    (let ((_e1685916877_ (gx#stx-e _g1685616875_)))
                      (let ((_hd1686016880_ (##car _e1685916877_))
                            (_tl1686116882_ (##cdr _e1685916877_)))
                        (if (gx#stx-pair? _tl1686116882_)
                            (let ((_e1686216885_ (gx#stx-e _tl1686116882_)))
                              (let ((_hd1686316888_ (##car _e1686216885_))
                                    (_tl1686416890_ (##cdr _e1686216885_)))
                                (if (gx#stx-pair? _tl1686416890_)
                                    (let ((_e1686516893_
                                           (gx#stx-e _tl1686416890_)))
                                      (let ((_hd1686616896_
                                             (##car _e1686516893_))
                                            (_tl1686716898_
                                             (##cdr _e1686516893_)))
                                        (if (gx#stx-null? _tl1686716898_)
                                            ((lambda (_L16901_ _L16902_)
                                               (gxc#compile-e
                                                _L16901_
                                                _arg16853_))
                                             _hd1686616896_
                                             _hd1686316888_)
                                            (_g1685516872_ _g1685616875_))))
                                    (_g1685516872_ _g1685616875_))))
                            (_g1685516872_ _g1685616875_))))
                    (_g1685516872_ _g1685616875_)))))
        (_g1685416917_ _stx16852_))))
  (define gxc#find-lambda%
    (lambda (_stx16784_ _arg16785_)
      (let* ((_g1678716804_
              (lambda (_g1678816801_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1678816801_)))
             (_g1678616849_
              (lambda (_g1678816807_)
                (if (gx#stx-pair? _g1678816807_)
                    (let ((_e1679116809_ (gx#stx-e _g1678816807_)))
                      (let ((_hd1679216812_ (##car _e1679116809_))
                            (_tl1679316814_ (##cdr _e1679116809_)))
                        (if (gx#stx-pair? _tl1679316814_)
                            (let ((_e1679416817_ (gx#stx-e _tl1679316814_)))
                              (let ((_hd1679516820_ (##car _e1679416817_))
                                    (_tl1679616822_ (##cdr _e1679416817_)))
                                (if (gx#stx-pair? _tl1679616822_)
                                    (let ((_e1679716825_
                                           (gx#stx-e _tl1679616822_)))
                                      (let ((_hd1679816828_
                                             (##car _e1679716825_))
                                            (_tl1679916830_
                                             (##cdr _e1679716825_)))
                                        (if (gx#stx-null? _tl1679916830_)
                                            ((lambda (_L16833_ _L16834_)
                                               (gxc#compile-e
                                                _L16833_
                                                _arg16785_))
                                             _hd1679816828_
                                             _hd1679516820_)
                                            (_g1678716804_ _g1678816807_))))
                                    (_g1678716804_ _g1678816807_))))
                            (_g1678716804_ _g1678816807_))))
                    (_g1678716804_ _g1678816807_)))))
        (_g1678616849_ _stx16784_))))
  (define gxc#find-case-lambda%
    (lambda (_stx16666_ _arg16667_)
      (let* ((_g1666916697_
              (lambda (_g1667016694_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1667016694_)))
             (_g1666816781_
              (lambda (_g1667016700_)
                (if (gx#stx-pair? _g1667016700_)
                    (let ((_e1667316702_ (gx#stx-e _g1667016700_)))
                      (let ((_hd1667416705_ (##car _e1667316702_))
                            (_tl1667516707_ (##cdr _e1667316702_)))
                        (if (gx#stx-pair/null? _tl1667516707_)
                            (let ((_g18372_
                                   (gx#syntax-split-splice _tl1667516707_ '0)))
                              (begin
                                (let ((_g18373_
                                       (if (##values? _g18372_)
                                           (##vector-length _g18372_)
                                           1)))
                                  (if (not (##fx= _g18373_ 2))
                                      (error "Context expects 2 values"
                                             _g18373_)))
                                (let ((_target1667616710_
                                       (##vector-ref _g18372_ 0))
                                      (_tl1667816712_
                                       (##vector-ref _g18372_ 1)))
                                  (if (gx#stx-null? _tl1667816712_)
                                      (letrec ((_loop1667916715_
                                                (lambda (_hd1667716718_
                                                         _body1668316720_
                                                         _hd1668416722_)
                                                  (if (gx#stx-pair?
                                                       _hd1667716718_)
                                                      (let ((_e1668016725_
                                                             (gx#stx-e
                                                              _hd1667716718_)))
                                                        (let ((_lp-hd1668116728_
                                                               (##car _e1668016725_))
                                                              (_lp-tl1668216730_
                                                               (##cdr _e1668016725_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1668116728_)
                                                              (let ((_e1668716733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1668116728_)))
                        (let ((_hd1668816736_ (##car _e1668716733_))
                              (_tl1668916738_ (##cdr _e1668716733_)))
                          (if (gx#stx-pair? _tl1668916738_)
                              (let ((_e1669016741_ (gx#stx-e _tl1668916738_)))
                                (let ((_hd1669116744_ (##car _e1669016741_))
                                      (_tl1669216746_ (##cdr _e1669016741_)))
                                  (if (gx#stx-null? _tl1669216746_)
                                      (_loop1667916715_
                                       _lp-tl1668216730_
                                       (cons _hd1669116744_ _body1668316720_)
                                       (cons _hd1668816736_ _hd1668416722_))
                                      (_g1666916697_ _g1667016700_))))
                              (_g1666916697_ _g1667016700_))))
                      (_g1666916697_ _g1667016700_))))
              (let ((_body1668516749_ (reverse _body1668316720_))
                    (_hd1668616751_ (reverse _hd1668416722_)))
                ((lambda (_L16754_ _L16755_)
                   (ormap1 (lambda (_g1676916771_)
                             (gxc#compile-e _g1676916771_ _arg16667_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1677316776_ _g1677416778_)
                                       (cons _g1677316776_ _g1677416778_))
                                     '()
                                     _L16754_))))
                 _body1668516749_
                 _hd1668616751_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1667916715_
                                         _target1667616710_
                                         '()
                                         '()))
                                      (_g1666916697_ _g1667016700_)))))
                            (_g1666916697_ _g1667016700_))))
                    (_g1666916697_ _g1667016700_)))))
        (_g1666816781_ _stx16666_))))
  (define gxc#find-let-values%
    (lambda (_stx16516_ _arg16517_)
      (let* ((_g1651916554_
              (lambda (_g1652016551_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1652016551_)))
             (_g1651816663_
              (lambda (_g1652016557_)
                (if (gx#stx-pair? _g1652016557_)
                    (let ((_e1652416559_ (gx#stx-e _g1652016557_)))
                      (let ((_hd1652516562_ (##car _e1652416559_))
                            (_tl1652616564_ (##cdr _e1652416559_)))
                        (if (gx#stx-pair? _tl1652616564_)
                            (let ((_e1652716567_ (gx#stx-e _tl1652616564_)))
                              (let ((_hd1652816570_ (##car _e1652716567_))
                                    (_tl1652916572_ (##cdr _e1652716567_)))
                                (if (gx#stx-pair/null? _hd1652816570_)
                                    (let ((_g18374_
                                           (gx#syntax-split-splice
                                            _hd1652816570_
                                            '0)))
                                      (begin
                                        (let ((_g18375_
                                               (if (##values? _g18374_)
                                                   (##vector-length _g18374_)
                                                   1)))
                                          (if (not (##fx= _g18375_ 2))
                                              (error "Context expects 2 values"
                                                     _g18375_)))
                                        (let ((_target1653016575_
                                               (##vector-ref _g18374_ 0))
                                              (_tl1653216577_
                                               (##vector-ref _g18374_ 1)))
                                          (if (gx#stx-null? _tl1653216577_)
                                              (letrec ((_loop1653316580_
                                                        (lambda (_hd1653116583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1653716585_
                         _bind1653816587_)
                  (if (gx#stx-pair? _hd1653116583_)
                      (let ((_e1653416590_ (gx#stx-e _hd1653116583_)))
                        (let ((_lp-hd1653516593_ (##car _e1653416590_))
                              (_lp-tl1653616595_ (##cdr _e1653416590_)))
                          (if (gx#stx-pair? _lp-hd1653516593_)
                              (let ((_e1654116598_
                                     (gx#stx-e _lp-hd1653516593_)))
                                (let ((_hd1654216601_ (##car _e1654116598_))
                                      (_tl1654316603_ (##cdr _e1654116598_)))
                                  (if (gx#stx-pair? _tl1654316603_)
                                      (let ((_e1654416606_
                                             (gx#stx-e _tl1654316603_)))
                                        (let ((_hd1654516609_
                                               (##car _e1654416606_))
                                              (_tl1654616611_
                                               (##cdr _e1654416606_)))
                                          (if (gx#stx-null? _tl1654616611_)
                                              (_loop1653316580_
                                               _lp-tl1653616595_
                                               (cons _hd1654516609_
                                                     _expr1653716585_)
                                               (cons _hd1654216601_
                                                     _bind1653816587_))
                                              (_g1651916554_ _g1652016557_))))
                                      (_g1651916554_ _g1652016557_))))
                              (_g1651916554_ _g1652016557_))))
                      (let ((_expr1653916614_ (reverse _expr1653716585_))
                            (_bind1654016616_ (reverse _bind1653816587_)))
                        (if (gx#stx-pair? _tl1652916572_)
                            (let ((_e1654716619_ (gx#stx-e _tl1652916572_)))
                              (let ((_hd1654816622_ (##car _e1654716619_))
                                    (_tl1654916624_ (##cdr _e1654716619_)))
                                (if (gx#stx-null? _tl1654916624_)
                                    ((lambda (_L16627_ _L16628_ _L16629_)
                                       (let ((_$e16660_
                                              (ormap1 (lambda (_g1664816650_)
                                                        (gxc#compile-e
                                                         _g1664816650_
                                                         _arg16517_))
                                                      (begin
                                                        '#!void
                                                        (foldr1 (lambda (_g1665216655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1665316657_)
                          (cons _g1665216655_ _g1665316657_))
                        '()
                        _L16628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e16660_
                                             _$e16660_
                                             (gxc#compile-e
                                              _L16627_
                                              _arg16517_))))
                                     _hd1654816622_
                                     _expr1653916614_
                                     _bind1654016616_)
                                    (_g1651916554_ _g1652016557_))))
                            (_g1651916554_ _g1652016557_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1653316580_
                                                 _target1653016575_
                                                 '()
                                                 '()))
                                              (_g1651916554_ _g1652016557_)))))
                                    (_g1651916554_ _g1652016557_))))
                            (_g1651916554_ _g1652016557_))))
                    (_g1651916554_ _g1652016557_)))))
        (_g1651816663_ _stx16516_))))
  (define gxc#find-setq%
    (lambda (_stx16448_ _arg16449_)
      (let* ((_g1645116468_
              (lambda (_g1645216465_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1645216465_)))
             (_g1645016513_
              (lambda (_g1645216471_)
                (if (gx#stx-pair? _g1645216471_)
                    (let ((_e1645516473_ (gx#stx-e _g1645216471_)))
                      (let ((_hd1645616476_ (##car _e1645516473_))
                            (_tl1645716478_ (##cdr _e1645516473_)))
                        (if (gx#stx-pair? _tl1645716478_)
                            (let ((_e1645816481_ (gx#stx-e _tl1645716478_)))
                              (let ((_hd1645916484_ (##car _e1645816481_))
                                    (_tl1646016486_ (##cdr _e1645816481_)))
                                (if (gx#stx-pair? _tl1646016486_)
                                    (let ((_e1646116489_
                                           (gx#stx-e _tl1646016486_)))
                                      (let ((_hd1646216492_
                                             (##car _e1646116489_))
                                            (_tl1646316494_
                                             (##cdr _e1646116489_)))
                                        (if (gx#stx-null? _tl1646316494_)
                                            ((lambda (_L16497_ _L16498_)
                                               (gxc#compile-e
                                                _L16497_
                                                _arg16449_))
                                             _hd1646216492_
                                             _hd1645916484_)
                                            (_g1645116468_ _g1645216471_))))
                                    (_g1645116468_ _g1645216471_))))
                            (_g1645116468_ _g1645216471_))))
                    (_g1645116468_ _g1645216471_)))))
        (_g1645016513_ _stx16448_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx16392_ _ids16393_)
      (let* ((_g1639516408_
              (lambda (_g1639616405_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1639616405_)))
             (_g1639416445_
              (lambda (_g1639616411_)
                (if (gx#stx-pair? _g1639616411_)
                    (let ((_e1639816413_ (gx#stx-e _g1639616411_)))
                      (let ((_hd1639916416_ (##car _e1639816413_))
                            (_tl1640016418_ (##cdr _e1639816413_)))
                        (if (gx#stx-pair? _tl1640016418_)
                            (let ((_e1640116421_ (gx#stx-e _tl1640016418_)))
                              (let ((_hd1640216424_ (##car _e1640116421_))
                                    (_tl1640316426_ (##cdr _e1640116421_)))
                                (if (gx#stx-null? _tl1640316426_)
                                    ((lambda (_L16429_)
                                       (find (lambda (_g1644016442_)
                                               (gx#free-identifier=?
                                                _L16429_
                                                _g1644016442_))
                                             _ids16393_))
                                     _hd1640216424_)
                                    (_g1639516408_ _g1639616411_))))
                            (_g1639516408_ _g1639616411_))))
                    (_g1639516408_ _g1639616411_)))))
        (_g1639416445_ _stx16392_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx16316_ _ids16317_)
      (let* ((_g1631916336_
              (lambda (_g1632016333_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1632016333_)))
             (_g1631816389_
              (lambda (_g1632016339_)
                (if (gx#stx-pair? _g1632016339_)
                    (let ((_e1632316341_ (gx#stx-e _g1632016339_)))
                      (let ((_hd1632416344_ (##car _e1632316341_))
                            (_tl1632516346_ (##cdr _e1632316341_)))
                        (if (gx#stx-pair? _tl1632516346_)
                            (let ((_e1632616349_ (gx#stx-e _tl1632516346_)))
                              (let ((_hd1632716352_ (##car _e1632616349_))
                                    (_tl1632816354_ (##cdr _e1632616349_)))
                                (if (gx#stx-pair? _tl1632816354_)
                                    (let ((_e1632916357_
                                           (gx#stx-e _tl1632816354_)))
                                      (let ((_hd1633016360_
                                             (##car _e1632916357_))
                                            (_tl1633116362_
                                             (##cdr _e1632916357_)))
                                        (if (gx#stx-null? _tl1633116362_)
                                            ((lambda (_L16365_ _L16366_)
                                               (let ((_$e16386_
                                                      (find (lambda (_g1638116383_)
                                                              (gx#free-identifier=?
                                                               _L16366_
                                                               _g1638116383_))
                                                            _ids16317_)))
                                                 (if _$e16386_
                                                     _$e16386_
                                                     (gxc#compile-e
                                                      _L16365_
                                                      _ids16317_))))
                                             _hd1633016360_
                                             _hd1632716352_)
                                            (_g1631916336_ _g1632016339_))))
                                    (_g1631916336_ _g1632016339_))))
                            (_g1631916336_ _g1632016339_))))
                    (_g1631916336_ _g1632016339_)))))
        (_g1631816389_ _stx16316_)))))
