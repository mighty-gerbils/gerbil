(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx9422_ . _args9423_)
      (let ((_g94259435_
             (lambda (_g94269432_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94269432_))))
        (let ((_g94249463_
               (lambda (_g94269438_)
                 (if (gx#stx-pair? _g94269438_)
                     (let ((_e94289440_ (gx#stx-e _g94269438_)))
                       (let ((_hd94299443_ (##car _e94289440_))
                             (_tl94309445_ (##cdr _e94289440_)))
                         ((lambda (_L9448_)
                            (let ((_$e9458_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L9448_)
                                    '#f)))
                              (if _$e9458_
                                  ((lambda (_method9461_)
                                     (apply _method9461_ _stx9422_ _args9423_))
                                   _$e9458_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx9422_
                                   _L9448_))))
                          _hd94299443_)))
                     (_g94259435_ _g94269438_)))))
          (_g94249463_ _stx9422_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl9419_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9419_ '%#lambda void)
           (hash-put! _tbl9419_ '%#case-lambda void)
           (hash-put! _tbl9419_ '%#let-values void)
           (hash-put! _tbl9419_ '%#letrec-values void)
           (hash-put! _tbl9419_ '%#letrec*-values void)
           (hash-put! _tbl9419_ '%#quote void)
           (hash-put! _tbl9419_ '%#quote-syntax void)
           (hash-put! _tbl9419_ '%#call void)
           (hash-put! _tbl9419_ '%#if void)
           (hash-put! _tbl9419_ '%#ref void)
           (hash-put! _tbl9419_ '%#set! void)
           (hash-put! _tbl9419_ '%#struct-instance? void)
           (hash-put! _tbl9419_ '%#struct-direct-instance? void)
           (hash-put! _tbl9419_ '%#struct-ref void)
           (hash-put! _tbl9419_ '%#struct-set! void)
           _tbl9419_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9415_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9415_ '%#begin void)
           (hash-put! _tbl9415_ '%#begin-syntax void)
           (hash-put! _tbl9415_ '%#begin-foreign void)
           (hash-put! _tbl9415_ '%#module void)
           (hash-put! _tbl9415_ '%#import void)
           (hash-put! _tbl9415_ '%#export void)
           (hash-put! _tbl9415_ '%#provide void)
           (hash-put! _tbl9415_ '%#extern void)
           (hash-put! _tbl9415_ '%#define-values void)
           (hash-put! _tbl9415_ '%#define-syntax void)
           (hash-put! _tbl9415_ '%#define-alias void)
           (hash-put! _tbl9415_ '%#declare void)
           _tbl9415_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl9411_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9411_ (force gxc#&void-special-form))
           (hash-copy! _tbl9411_ (force gxc#&void-expression))
           _tbl9411_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl9407_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9407_ (force gxc#&void-expression))
           (hash-copy! _tbl9407_ (force gxc#&void-special-form))
           (hash-put! _tbl9407_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9407_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl9407_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl9407_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl9407_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl9407_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx9400_ . _args9402_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9400_ _args9402_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl9397_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9397_ (force gxc#&void))
           (hash-put! _tbl9397_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9397_ '%#module gxc#lift-modules-module%)
           _tbl9397_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx9390_ . _args9392_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9390_ _args9392_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl9387_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9387_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl9387_ '%#begin-syntax false)
           (hash-put! _tbl9387_ '%#begin-foreign true)
           (hash-put! _tbl9387_ '%#module false)
           (hash-put! _tbl9387_ '%#import false)
           (hash-put! _tbl9387_ '%#export false)
           (hash-put! _tbl9387_ '%#provide false)
           (hash-put! _tbl9387_ '%#extern false)
           (hash-put! _tbl9387_ '%#define-values true)
           (hash-put! _tbl9387_ '%#define-syntax false)
           (hash-put! _tbl9387_ '%#define-alias false)
           (hash-put! _tbl9387_ '%#declare false)
           (hash-put! _tbl9387_ '%#lambda true)
           (hash-put! _tbl9387_ '%#case-lambda true)
           (hash-put! _tbl9387_ '%#let-values true)
           (hash-put! _tbl9387_ '%#letrec-values true)
           (hash-put! _tbl9387_ '%#letrec*-values true)
           (hash-put! _tbl9387_ '%#quote true)
           (hash-put! _tbl9387_ '%#call true)
           (hash-put! _tbl9387_ '%#if true)
           (hash-put! _tbl9387_ '%#ref true)
           (hash-put! _tbl9387_ '%#set! true)
           (hash-put! _tbl9387_ '%#struct-instance? true)
           (hash-put! _tbl9387_ '%#struct-direct-instance? true)
           (hash-put! _tbl9387_ '%#struct-ref true)
           (hash-put! _tbl9387_ '%#struct-set! true)
           _tbl9387_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx9380_ . _args9382_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9380_ _args9382_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl9377_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9377_ '%#begin gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#set! gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#struct-instance? gxc#generate-runtime-empty)
           (hash-put!
            _tbl9377_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#struct-ref gxc#generate-runtime-empty)
           (hash-put! _tbl9377_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl9377_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl9373_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9373_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl9373_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl9373_ '%#import gxc#generate-runtime-loader-import%)
           _tbl9373_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx9366_ . _args9368_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9366_ _args9368_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl9363_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9363_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl9363_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl9363_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put!
            _tbl9363_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl9363_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl9363_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl9363_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl9363_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl9363_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl9363_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl9363_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl9363_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl9363_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl9363_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl9363_ '%#set! gxc#generate-runtime-setq%)
           (hash-put!
            _tbl9363_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (hash-put!
            _tbl9363_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (hash-put! _tbl9363_ '%#struct-ref gxc#generate-runtime-struct-ref%)
           (hash-put!
            _tbl9363_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl9363_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx9356_ . _args9358_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9356_ _args9358_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl9353_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9353_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl9353_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl9353_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl9353_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx9346_ . _args9348_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9346_ _args9348_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl9343_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9343_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl9343_ '%#lambda gxc#collect-body-lambda%)
           (hash-put! _tbl9343_ '%#case-lambda gxc#collect-body-case-lambda%)
           (hash-put! _tbl9343_ '%#let-values gxc#collect-body-let-values%)
           (hash-put! _tbl9343_ '%#letrec-values gxc#collect-body-let-values%)
           (hash-put! _tbl9343_ '%#letrec*-values gxc#collect-body-let-values%)
           (hash-put! _tbl9343_ '%#quote void)
           (hash-put! _tbl9343_ '%#quote-syntax void)
           (hash-put! _tbl9343_ '%#call gxc#collect-begin%)
           (hash-put! _tbl9343_ '%#if gxc#collect-begin%)
           (hash-put! _tbl9343_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl9343_ '%#set! gxc#collect-refs-setq%)
           (hash-put! _tbl9343_ '%#struct-instance? gxc#collect-operands)
           (hash-put!
            _tbl9343_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (hash-put! _tbl9343_ '%#struct-ref gxc#collect-operands)
           (hash-put! _tbl9343_ '%#struct-set! gxc#collect-operands)
           _tbl9343_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx9336_ . _args9338_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9336_ _args9338_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl9333_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9333_ (force gxc#&void-expression))
           (hash-put! _tbl9333_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl9333_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl9333_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl9333_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl9333_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl9333_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl9333_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl9333_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl9333_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl9333_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl9333_ '%#begin-foreign void)
           (hash-put! _tbl9333_ '%#declare void)
           _tbl9333_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9326_ . _args9328_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9326_ _args9328_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9323_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl9323_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl9323_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl9323_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl9323_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl9323_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl9323_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#struct-instance? gxc#generate-meta-phi-expr)
           (hash-put!
            _tbl9323_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#struct-ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#struct-set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl9323_ '%#declare void)
           _tbl9323_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9316_ . _args9318_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9316_ _args9318_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9273_ . _args9274_)
      (let ((_g92769286_
             (lambda (_g92779283_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92779283_))))
        (let ((_g92759313_
               (lambda (_g92779289_)
                 (if (gx#stx-pair? _g92779289_)
                     (let ((_e92799291_ (gx#stx-e _g92779289_)))
                       (let ((_hd92809294_ (##car _e92799291_))
                             (_tl92819296_ (##cdr _e92799291_)))
                         ((lambda (_L9299_)
                            (for-each
                             (lambda (_g93089310_)
                               (apply gxc#compile-e _g93089310_ _args9274_))
                             (gx#stx-e _L9299_)))
                          _tl92819296_)))
                     (_g92769286_ _g92779289_)))))
          (_g92759313_ _stx9273_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9229_ . _args9230_)
      (let ((_g92329242_
             (lambda (_g92339239_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92339239_))))
        (let ((_g92319270_
               (lambda (_g92339245_)
                 (if (gx#stx-pair? _g92339245_)
                     (let ((_e92359247_ (gx#stx-e _g92339245_)))
                       (let ((_hd92369250_ (##car _e92359247_))
                             (_tl92379252_ (##cdr _e92359247_)))
                         ((lambda (_L9255_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g92659267_)
                                  (apply gxc#compile-e _g92659267_ _args9230_))
                                (gx#stx-e _L9255_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl92379252_)))
                     (_g92329242_ _g92339245_)))))
          (_g92319270_ _stx9229_)))))
  (define gxc#collect-module%
    (lambda (_stx9171_ . _args9172_)
      (let ((_g91749188_
             (lambda (_g91759185_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91759185_))))
        (let ((_g91739226_
               (lambda (_g91759191_)
                 (if (gx#stx-pair? _g91759191_)
                     (let ((_e91789193_ (gx#stx-e _g91759191_)))
                       (let ((_hd91799196_ (##car _e91789193_))
                             (_tl91809198_ (##cdr _e91789193_)))
                         (if (gx#stx-pair? _tl91809198_)
                             (let ((_e91819201_ (gx#stx-e _tl91809198_)))
                               (let ((_hd91829204_ (##car _e91819201_))
                                     (_tl91839206_ (##cdr _e91819201_)))
                                 ((lambda (_L9209_ _L9210_)
                                    (let ((_ctx9223_
                                           (gx#syntax-local-e__0 _L9210_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9223_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9172_))
                                       gx#current-expander-context
                                       _ctx9223_)))
                                  _tl91839206_
                                  _hd91829204_)))
                             (_g91749188_ _g91759191_))))
                     (_g91749188_ _g91759191_)))))
          (_g91739226_ _stx9171_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9103_ . _args9104_)
      (let ((_g91069123_
             (lambda (_g91079120_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91079120_))))
        (let ((_g91059168_
               (lambda (_g91079126_)
                 (if (gx#stx-pair? _g91079126_)
                     (let ((_e91109128_ (gx#stx-e _g91079126_)))
                       (let ((_hd91119131_ (##car _e91109128_))
                             (_tl91129133_ (##cdr _e91109128_)))
                         (if (gx#stx-pair? _tl91129133_)
                             (let ((_e91139136_ (gx#stx-e _tl91129133_)))
                               (let ((_hd91149139_ (##car _e91139136_))
                                     (_tl91159141_ (##cdr _e91139136_)))
                                 (if (gx#stx-pair? _tl91159141_)
                                     (let ((_e91169144_
                                            (gx#stx-e _tl91159141_)))
                                       (let ((_hd91179147_ (##car _e91169144_))
                                             (_tl91189149_
                                              (##cdr _e91169144_)))
                                         (if (gx#stx-null? _tl91189149_)
                                             ((lambda (_L9152_ _L9153_)
                                                (apply gxc#compile-e
                                                       _L9152_
                                                       _args9104_))
                                              _hd91179147_
                                              _hd91149139_)
                                             (_g91069123_ _g91079126_))))
                                     (_g91069123_ _g91079126_))))
                             (_g91069123_ _g91079126_))))
                     (_g91069123_ _g91079126_)))))
          (_g91059168_ _stx9103_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx8985_ . _args8986_)
      (let ((_g89889016_
             (lambda (_g89899013_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89899013_))))
        (let ((_g89879100_
               (lambda (_g89899019_)
                 (if (gx#stx-pair? _g89899019_)
                     (let ((_e89929021_ (gx#stx-e _g89899019_)))
                       (let ((_hd89939024_ (##car _e89929021_))
                             (_tl89949026_ (##cdr _e89929021_)))
                         (if (gx#stx-pair/null? _tl89949026_)
                             (if (fx>= (gx#stx-length _tl89949026_) '0)
                                 (let ((_g9465_ (gx#syntax-split-splice
                                                 _tl89949026_
                                                 '0)))
                                   (begin
                                     (let ((_g9466_ (values-count _g9465_)))
                                       (if (not (fx= _g9466_ 2))
                                           (error "Context expects 2 values"
                                                  _g9466_)))
                                     (let ((_target89959029_
                                            (values-ref _g9465_ 0))
                                           (_tl89979031_
                                            (values-ref _g9465_ 1)))
                                       (if (gx#stx-null? _tl89979031_)
                                           (letrec ((_loop89989034_
                                                     (lambda (_hd89969037_
                                                              _body90029039_
                                                              _hd90039041_)
                                                       (if (gx#stx-pair?
                                                            _hd89969037_)
                                                           (let ((_e89999044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd89969037_)))
                     (let ((_lp-hd90009047_ (##car _e89999044_))
                           (_lp-tl90019049_ (##cdr _e89999044_)))
                       (if (gx#stx-pair? _lp-hd90009047_)
                           (let ((_e90069052_ (gx#stx-e _lp-hd90009047_)))
                             (let ((_hd90079055_ (##car _e90069052_))
                                   (_tl90089057_ (##cdr _e90069052_)))
                               (if (gx#stx-pair? _tl90089057_)
                                   (let ((_e90099060_ (gx#stx-e _tl90089057_)))
                                     (let ((_hd90109063_ (##car _e90099060_))
                                           (_tl90119065_ (##cdr _e90099060_)))
                                       (if (gx#stx-null? _tl90119065_)
                                           (_loop89989034_
                                            _lp-tl90019049_
                                            (cons _hd90109063_ _body90029039_)
                                            (cons _hd90079055_ _hd90039041_))
                                           (_g89889016_ _g89899019_))))
                                   (_g89889016_ _g89899019_))))
                           (_g89889016_ _g89899019_))))
                   (let ((_body90049068_ (reverse _body90029039_))
                         (_hd90059070_ (reverse _hd90039041_)))
                     ((lambda (_L9073_ _L9074_)
                        (for-each
                         (lambda (_g90889090_)
                           (apply gxc#compile-e _g90889090_ _args8986_))
                         (begin
                           '#!void
                           (foldr (lambda (_g90929095_ _g90939097_)
                                    (cons _g90929095_ _g90939097_))
                                  '()
                                  _L9073_))))
                      _body90049068_
                      _hd90059070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop89989034_
                                              _target89959029_
                                              '()
                                              '()))
                                           (_g89889016_ _g89899019_)))))
                                 (_g89889016_ _g89899019_))
                             (_g89889016_ _g89899019_))))
                     (_g89889016_ _g89899019_)))))
          (_g89879100_ _stx8985_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx8838_ . _args8839_)
      (let ((_g88418876_
             (lambda (_g88428873_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88428873_))))
        (let ((_g88408982_
               (lambda (_g88428879_)
                 (if (gx#stx-pair? _g88428879_)
                     (let ((_e88468881_ (gx#stx-e _g88428879_)))
                       (let ((_hd88478884_ (##car _e88468881_))
                             (_tl88488886_ (##cdr _e88468881_)))
                         (if (gx#stx-pair? _tl88488886_)
                             (let ((_e88498889_ (gx#stx-e _tl88488886_)))
                               (let ((_hd88508892_ (##car _e88498889_))
                                     (_tl88518894_ (##cdr _e88498889_)))
                                 (if (gx#stx-pair/null? _hd88508892_)
                                     (if (fx>= (gx#stx-length _hd88508892_) '0)
                                         (let ((_g9467_ (gx#syntax-split-splice
                                                         _hd88508892_
                                                         '0)))
                                           (begin
                                             (let ((_g9468_ (values-count
                                                             _g9467_)))
                                               (if (not (fx= _g9468_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9468_)))
                                             (let ((_target88528897_
                                                    (values-ref _g9467_ 0))
                                                   (_tl88548899_
                                                    (values-ref _g9467_ 1)))
                                               (if (gx#stx-null? _tl88548899_)
                                                   (letrec ((_loop88558902_
                                                             (lambda (_hd88538905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr88598907_
                              _hd88608909_)
                       (if (gx#stx-pair? _hd88538905_)
                           (let ((_e88568912_ (gx#stx-e _hd88538905_)))
                             (let ((_lp-hd88578915_ (##car _e88568912_))
                                   (_lp-tl88588917_ (##cdr _e88568912_)))
                               (if (gx#stx-pair? _lp-hd88578915_)
                                   (let ((_e88638920_
                                          (gx#stx-e _lp-hd88578915_)))
                                     (let ((_hd88648923_ (##car _e88638920_))
                                           (_tl88658925_ (##cdr _e88638920_)))
                                       (if (gx#stx-pair? _tl88658925_)
                                           (let ((_e88668928_
                                                  (gx#stx-e _tl88658925_)))
                                             (let ((_hd88678931_
                                                    (##car _e88668928_))
                                                   (_tl88688933_
                                                    (##cdr _e88668928_)))
                                               (if (gx#stx-null? _tl88688933_)
                                                   (_loop88558902_
                                                    _lp-tl88588917_
                                                    (cons _hd88678931_
                                                          _expr88598907_)
                                                    (cons _hd88648923_
                                                          _hd88608909_))
                                                   (_g88418876_ _g88428879_))))
                                           (_g88418876_ _g88428879_))))
                                   (_g88418876_ _g88428879_))))
                           (let ((_expr88618936_ (reverse _expr88598907_))
                                 (_hd88628938_ (reverse _hd88608909_)))
                             (if (gx#stx-pair? _tl88518894_)
                                 (let ((_e88698941_ (gx#stx-e _tl88518894_)))
                                   (let ((_hd88708944_ (##car _e88698941_))
                                         (_tl88718946_ (##cdr _e88698941_)))
                                     (if (gx#stx-null? _tl88718946_)
                                         ((lambda (_L8949_ _L8950_ _L8951_)
                                            (for-each
                                             (lambda (_g89708972_)
                                               (apply gxc#compile-e
                                                      _g89708972_
                                                      _args8839_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g89748977_
                                                               _g89758979_)
                                                        (cons _g89748977_
                                                              _g89758979_))
                                                      (cons _L8949_ '())
                                                      _L8950_))))
                                          _hd88708944_
                                          _expr88618936_
                                          _hd88628938_)
                                         (_g88418876_ _g88428879_))))
                                 (_g88418876_ _g88428879_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop88558902_
                                                      _target88528897_
                                                      '()
                                                      '()))
                                                   (_g88418876_
                                                    _g88428879_)))))
                                         (_g88418876_ _g88428879_))
                                     (_g88418876_ _g88428879_))))
                             (_g88418876_ _g88428879_))))
                     (_g88418876_ _g88428879_)))))
          (_g88408982_ _stx8838_)))))
  (define gxc#collect-operands
    (lambda (_stx8751_ . _args8752_)
      (let ((_g87548773_
             (lambda (_g87558770_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87558770_))))
        (let ((_g87538835_
               (lambda (_g87558776_)
                 (if (gx#stx-pair? _g87558776_)
                     (let ((_e87578778_ (gx#stx-e _g87558776_)))
                       (let ((_hd87588781_ (##car _e87578778_))
                             (_tl87598783_ (##cdr _e87578778_)))
                         (if (gx#stx-pair/null? _tl87598783_)
                             (if (fx>= (gx#stx-length _tl87598783_) '0)
                                 (let ((_g9469_ (gx#syntax-split-splice
                                                 _tl87598783_
                                                 '0)))
                                   (begin
                                     (let ((_g9470_ (values-count _g9469_)))
                                       (if (not (fx= _g9470_ 2))
                                           (error "Context expects 2 values"
                                                  _g9470_)))
                                     (let ((_target87608786_
                                            (values-ref _g9469_ 0))
                                           (_tl87628788_
                                            (values-ref _g9469_ 1)))
                                       (if (gx#stx-null? _tl87628788_)
                                           (letrec ((_loop87638791_
                                                     (lambda (_hd87618794_
                                                              _rands87678796_)
                                                       (if (gx#stx-pair?
                                                            _hd87618794_)
                                                           (let ((_e87648799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd87618794_)))
                     (let ((_lp-hd87658802_ (##car _e87648799_))
                           (_lp-tl87668804_ (##cdr _e87648799_)))
                       (_loop87638791_
                        _lp-tl87668804_
                        (cons _lp-hd87658802_ _rands87678796_))))
                   (let ((_rands87688807_ (reverse _rands87678796_)))
                     ((lambda (_L8810_)
                        (for-each
                         (lambda (_g88238825_)
                           (apply gxc#compile-e _g88238825_ _args8752_))
                         (begin
                           '#!void
                           (foldr (lambda (_g88278830_ _g88288832_)
                                    (cons _g88278830_ _g88288832_))
                                  '()
                                  _L8810_))))
                      _rands87688807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop87638791_
                                              _target87608786_
                                              '()))
                                           (_g87548773_ _g87558776_)))))
                                 (_g87548773_ _g87558776_))
                             (_g87548773_ _g87558776_))))
                     (_g87548773_ _g87558776_)))))
          (_g87538835_ _stx8751_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx8682_)
      (let ((_g86848701_
             (lambda (_g86858698_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86858698_))))
        (let ((_g86838748_
               (lambda (_g86858704_)
                 (if (gx#stx-pair? _g86858704_)
                     (let ((_e86888706_ (gx#stx-e _g86858704_)))
                       (let ((_hd86898709_ (##car _e86888706_))
                             (_tl86908711_ (##cdr _e86888706_)))
                         (if (gx#stx-pair? _tl86908711_)
                             (let ((_e86918714_ (gx#stx-e _tl86908711_)))
                               (let ((_hd86928717_ (##car _e86918714_))
                                     (_tl86938719_ (##cdr _e86918714_)))
                                 (if (gx#stx-pair? _tl86938719_)
                                     (let ((_e86948722_
                                            (gx#stx-e _tl86938719_)))
                                       (let ((_hd86958725_ (##car _e86948722_))
                                             (_tl86968727_
                                              (##cdr _e86948722_)))
                                         (if (gx#stx-null? _tl86968727_)
                                             ((lambda (_L8730_ _L8731_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind8746_)
                                                   (if (gx#identifier?
                                                        _bind8746_)
                                                       (gxc#add-module-binding!
                                                        _bind8746_
                                                        '#f)
                                                       '#!void))
                                                 _L8731_))
                                              _hd86958725_
                                              _hd86928717_)
                                             (_g86848701_ _g86858704_))))
                                     (_g86848701_ _g86858704_))))
                             (_g86848701_ _g86858704_))))
                     (_g86848701_ _g86858704_)))))
          (_g86838748_ _stx8682_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx8615_)
      (let ((_g86178634_
             (lambda (_g86188631_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86188631_))))
        (let ((_g86168679_
               (lambda (_g86188637_)
                 (if (gx#stx-pair? _g86188637_)
                     (let ((_e86218639_ (gx#stx-e _g86188637_)))
                       (let ((_hd86228642_ (##car _e86218639_))
                             (_tl86238644_ (##cdr _e86218639_)))
                         (if (gx#stx-pair? _tl86238644_)
                             (let ((_e86248647_ (gx#stx-e _tl86238644_)))
                               (let ((_hd86258650_ (##car _e86248647_))
                                     (_tl86268652_ (##cdr _e86248647_)))
                                 (if (gx#stx-pair? _tl86268652_)
                                     (let ((_e86278655_
                                            (gx#stx-e _tl86268652_)))
                                       (let ((_hd86288658_ (##car _e86278655_))
                                             (_tl86298660_
                                              (##cdr _e86278655_)))
                                         (if (gx#stx-null? _tl86298660_)
                                             ((lambda (_L8663_ _L8664_)
                                                (gxc#add-module-binding!
                                                 _L8664_
                                                 '#t))
                                              _hd86288658_
                                              _hd86258650_)
                                             (_g86178634_ _g86188637_))))
                                     (_g86178634_ _g86188637_))))
                             (_g86178634_ _g86188637_))))
                     (_g86178634_ _g86188637_)))))
          (_g86168679_ _stx8615_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx8557_ _modules8558_)
      (let ((_g85608574_
             (lambda (_g85618571_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85618571_))))
        (let ((_g85598612_
               (lambda (_g85618577_)
                 (if (gx#stx-pair? _g85618577_)
                     (let ((_e85648579_ (gx#stx-e _g85618577_)))
                       (let ((_hd85658582_ (##car _e85648579_))
                             (_tl85668584_ (##cdr _e85648579_)))
                         (if (gx#stx-pair? _tl85668584_)
                             (let ((_e85678587_ (gx#stx-e _tl85668584_)))
                               (let ((_hd85688590_ (##car _e85678587_))
                                     (_tl85698592_ (##cdr _e85678587_)))
                                 ((lambda (_L8595_ _L8596_)
                                    (let ((_ctx8609_
                                           (gx#syntax-local-e__0 _L8596_)))
                                      (begin
                                        (set-box!
                                         _modules8558_
                                         (cons _ctx8609_
                                               (unbox _modules8558_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx8609_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules8558_))
                                         gx#current-expander-context
                                         _ctx8609_))))
                                  _tl85698592_
                                  _hd85688590_)))
                             (_g85608574_ _g85618577_))))
                     (_g85608574_ _g85618577_)))))
          (_g85598612_ _stx8557_)))))
  (define gxc#add-module-binding!
    (lambda (_id8551_ _syntax?8552_)
      (let ((_eid8554_
             (##structure-ref
              (gx#resolve-identifier__0 _id8551_)
              '1
              gx#binding::t
              '#f))
            (_ht8555_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid8554_)
            '#!void
            (hash-put!
             _ht8555_
             _eid8554_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference _eid8554_)
              _syntax?8552_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id8539_)
      (let ((_bind8541_ (gx#resolve-identifier__0 _id8539_)))
        (if _bind8541_
            (let ((_eid8543_ (##structure-ref _bind8541_ '1 gx#binding::t '#f))
                  (_ht8544_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid8543_)
                  _eid8543_
                  (let ((_$e8546_ (table-ref _ht8544_ _eid8543_ '#f)))
                    (if _$e8546_
                        (values _$e8546_)
                        (if (##structure-instance-of?
                             _bind8541_
                             'gx#local-binding::t)
                            (let ((_gid8549_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid8543_)))
                              (begin
                                (hash-put! _ht8544_ _eid8543_ _gid8549_)
                                _gid8549_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id8539_
                             _eid8543_
                             _bind8541_))))))
            (if (interned-symbol? (gx#stx-e _id8539_))
                (gx#stx-e _id8539_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id8539_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id8537_)
      (if (gx#identifier? _id8537_)
          (gxc#generate-runtime-binding-id _id8537_)
          (gxc#generate-runtime-temporary__0))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym8528_)
      (let ((_ht8530_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '1
              gxc#symbol-table::t
              '#f)))
        (let ((_$e8532_ (table-ref _ht8530_ _sym8528_ '#f)))
          (if _$e8532_
              (values _$e8532_)
              (let ((_g8535_ (make-symbol '"_" _sym8528_ '"_")))
                (begin (hash-put! _ht8530_ _sym8528_ _g8535_) _g8535_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id8526_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id8526_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key8488_)
      (if (interned-symbol? _key8488_)
          _key8488_
          (if (uninterned-symbol? _key8488_)
              (gxc#generate-runtime-gensym-reference _key8488_)
              (let ((_key84898496_ _key8488_))
                (let ((_E84918500_
                       (lambda ()
                         (error '"No clause matching" _key84898496_))))
                  (let ((_K84928514_
                         (lambda (_mark8503_ _eid8504_)
                           (let ((_$e8506_
                                  (##structure-ref
                                   _mark8503_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e8506_
                                 ((lambda (_ht8509_)
                                    (let ((_$e8511_
                                           (table-ref _ht8509_ _eid8504_ '#f)))
                                      (if _$e8511_
                                          (values _$e8511_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid8504_))))
                                  _$e8506_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid8504_))))))
                    (if (##pair? _key84898496_)
                        (let ((_hd84938517_ (##car _key84898496_))
                              (_tl84948519_ (##cdr _key84898496_)))
                          (let ((_eid8522_ _hd84938517_))
                            (let ((_mark8524_ _tl84948519_))
                              (_K84928514_ _mark8524_ _eid8522_))))
                        (_E84918500_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda8473
      (lambda (_top8475_)
        (if _top8475_
            (let ((_ns8477_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi8478_ (gx#current-expander-phi)))
              (if (fxpositive? _phi8478_)
                  (make-symbol
                   _ns8477_
                   '"["
                   (number->string _phi8478_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns8477_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top8484_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda8473 _top8484_))))
      (define gxc#generate-runtime-temporary
        (lambda _g9472_
          (let ((_g9471_ (length _g9472_)))
            (cond ((fx= _g9471_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g9472_))
                  ((fx= _g9471_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda8473
                          _g9472_))
                  (else (error "No clause matching arguments" _g9472_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx8472_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8392_)
      (let ((_g83948404_
             (lambda (_g83958401_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g83958401_))))
        (let ((_g83938469_
               (lambda (_g83958407_)
                 (if (gx#stx-pair? _g83958407_)
                     (let ((_e83978409_ (gx#stx-e _g83958407_)))
                       (let ((_hd83988412_ (##car _e83978409_))
                             (_tl83998414_ (##cdr _e83978409_)))
                         ((lambda (_L8417_)
                            (let ((_body8427_
                                   (gx#stx-map1 gxc#compile-e _L8417_)))
                              (let ((_body8466_
                                     (filter (lambda (_stx8429_)
                                               (let ((_g84328441_
                                                      (lambda (_g84338438_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g84338438_))))
                                                 (let ((_g84318448_
                                                        (lambda (_g84338444_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g84308463_
                                                          (lambda (_g84338451_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g84338451_)
                        (let ((_e84348453_ (gx#stx-e _g84338451_)))
                          (let ((_hd84358456_ (##car _e84348453_))
                                (_tl84368458_ (##cdr _e84348453_)))
                            (if (gx#identifier? _hd84358456_)
                                (if (gx#stx-eq? 'begin _hd84358456_)
                                    (if (gx#stx-null? _tl84368458_)
                                        ((lambda () '#f))
                                        (_g84318448_ _g84338451_))
                                    (_g84318448_ _g84338451_))
                                (_g84318448_ _g84338451_))))
                        (_g84318448_ _g84338451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g84308463_
                                                      _stx8429_)))))
                                             _body8427_)))
                                (let ()
                                  (if (fx= (length _body8466_) '1)
                                      (car _body8466_)
                                      (cons 'begin _body8466_))))))
                          _tl83998414_)))
                     (_g83948404_ _g83958407_)))))
          (_g83938469_ _stx8392_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8354_)
      (let ((_g83568366_
             (lambda (_g83578363_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g83578363_))))
        (let ((_g83558389_
               (lambda (_g83578369_)
                 (if (gx#stx-pair? _g83578369_)
                     (let ((_e83598371_ (gx#stx-e _g83578369_)))
                       (let ((_hd83608374_ (##car _e83598371_))
                             (_tl83618376_ (##cdr _e83598371_)))
                         ((lambda (_L8379_)
                            (cons 'begin (gx#syntax->datum _L8379_)))
                          _tl83618376_)))
                     (_g83568366_ _g83578369_)))))
          (_g83558389_ _stx8354_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8316_)
      (let ((_g83188328_
             (lambda (_g83198325_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g83198325_))))
        (let ((_g83178351_
               (lambda (_g83198331_)
                 (if (gx#stx-pair? _g83198331_)
                     (let ((_e83218333_ (gx#stx-e _g83198331_)))
                       (let ((_hd83228336_ (##car _e83218333_))
                             (_tl83238338_ (##cdr _e83218333_)))
                         ((lambda (_L8341_)
                            (cons 'declare (map gx#syntax->datum _L8341_)))
                          _tl83238338_)))
                     (_g83188328_ _g83198331_)))))
          (_g83178351_ _stx8316_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8080_)
      (let ((_g80828099_
             (lambda (_g80838096_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80838096_))))
        (let ((_g80818313_
               (lambda (_g80838102_)
                 (if (gx#stx-pair? _g80838102_)
                     (let ((_e80868104_ (gx#stx-e _g80838102_)))
                       (let ((_hd80878107_ (##car _e80868104_))
                             (_tl80888109_ (##cdr _e80868104_)))
                         (if (gx#stx-pair? _tl80888109_)
                             (let ((_e80898112_ (gx#stx-e _tl80888109_)))
                               (let ((_hd80908115_ (##car _e80898112_))
                                     (_tl80918117_ (##cdr _e80898112_)))
                                 (if (gx#stx-pair? _tl80918117_)
                                     (let ((_e80928120_
                                            (gx#stx-e _tl80918117_)))
                                       (let ((_hd80938123_ (##car _e80928120_))
                                             (_tl80948125_
                                              (##cdr _e80928120_)))
                                         (if (gx#stx-null? _tl80948125_)
                                             ((lambda (_L8128_ _L8129_)
                                                (let ((_g81468159_
                                                       (lambda (_g81478156_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g81478156_))))
                                                  (let ((_g81458273_
                                                         (lambda (_g81478162_)
                                                           ((lambda ()
                                                              (let ((_tmp8166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda8473
                              '#t)))
                        (let ((_body8270_
                               ((letrec ((_lp8168_
                                          (lambda (_rest8170_ _k8171_ _r8172_)
                                            (let ((_g81778193_
                                                   (lambda (_g81788190_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g81788190_))))
                                              (let ((_g81768200_
                                                     (lambda (_g81788196_)
                                                       ((lambda ()
                                                          (reverse _r8172_))))))
                                                (let ((_g81758221_
                                                       (lambda (_g81788203_)
                                                         ((lambda (_L8205_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8205_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8205_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp8166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8171_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r8172_)
                        (_g81768200_ _g81788203_)))
                  _g81788203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g81748245_
                                                         (lambda (_g81788224_)
                                                           (if (gx#stx-pair?
                                                                _g81788224_)
                                                               (let ((_e81858226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g81788224_)))
                         (let ((_hd81868229_ (##car _e81858226_))
                               (_tl81878231_ (##cdr _e81858226_)))
                           ((lambda (_L8234_ _L8235_)
                              (_lp8168_
                               _L8234_
                               (fx+ _k8171_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8235_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8171_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8172_)))
                            _tl81878231_
                            _hd81868229_)))
                       (_g81758221_ _g81788224_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g81738267_
                                                           (lambda (_g81788248_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g81788248_)
                         (let ((_e81808250_ (gx#stx-e _g81788248_)))
                           (let ((_hd81818253_ (##car _e81808250_))
                                 (_tl81828255_ (##cdr _e81808250_)))
                             (if (gx#stx-datum? _hd81818253_)
                                 (if (equal? (gx#stx-e _hd81818253_) '#f)
                                     ((lambda (_L8258_)
                                        (_lp8168_
                                         _L8258_
                                         (fx+ _k8171_ '1)
                                         _r8172_))
                                      _tl81828255_)
                                     (_g81748245_ _g81788248_))
                                 (_g81748245_ _g81788248_))))
                         (_g81748245_ _g81788248_)))))
              (_g81738267_ _rest8170_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8168_)
                                _L8129_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8166_
                                                    (cons (gxc#compile-e
                                                           _L8128_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8166_
                                               _L8129_)
                                              _body8270_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g81448295_
                                                           (lambda (_g81478276_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g81478276_)
                         (let ((_e81528278_ (gx#stx-e _g81478276_)))
                           (let ((_hd81538281_ (##car _e81528278_))
                                 (_tl81548283_ (##cdr _e81528278_)))
                             (if (gx#stx-null? _tl81548283_)
                                 ((lambda (_L8286_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8286_)
                                                (cons (gxc#compile-e _L8128_)
                                                      '()))))
                                  _hd81538281_)
                                 (_g81458273_ _g81478276_))))
                         (_g81458273_ _g81478276_)))))
              (let ((_g81438310_
                     (lambda (_g81478298_)
                       (if (gx#stx-pair? _g81478298_)
                           (let ((_e81488300_ (gx#stx-e _g81478298_)))
                             (let ((_hd81498303_ (##car _e81488300_))
                                   (_tl81508305_ (##cdr _e81488300_)))
                               (if (gx#stx-datum? _hd81498303_)
                                   (if (equal? (gx#stx-e _hd81498303_) '#f)
                                       (if (gx#stx-null? _tl81508305_)
                                           ((lambda ()
                                              (gxc#compile-e _L8128_)))
                                           (_g81448295_ _g81478298_))
                                       (_g81448295_ _g81478298_))
                                   (_g81448295_ _g81478298_))))
                           (_g81448295_ _g81478298_)))))
                (_g81438310_ _L8129_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd80938123_
                                              _hd80908115_)
                                             (_g80828099_ _g80838102_))))
                                     (_g80828099_ _g80838102_))))
                             (_g80828099_ _g80838102_))))
                     (_g80828099_ _g80838102_)))))
          (_g80818313_ _stx8080_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8068_ _hd8069_)
      (let ((_len8071_ (gx#stx-length _hd8069_)))
        (let ((_cmp8073_ (if (gx#stx-list? _hd8069_) 'fx= 'fx>=)))
          (let ((_errmsg8075_
                 (string-append
                  (if (gx#stx-list? _hd8069_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8071_)
                  '" values")))
            (let ((_count8077_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8069_)) (fx= _len8071_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8077_
                                            (cons (cons 'values-count
                                                        (cons _vals8068_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8077_ (cons _len8071_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8077_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8001_)
      (let ((_g80038020_
             (lambda (_g80048017_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80048017_))))
        (let ((_g80028065_
               (lambda (_g80048023_)
                 (if (gx#stx-pair? _g80048023_)
                     (let ((_e80078025_ (gx#stx-e _g80048023_)))
                       (let ((_hd80088028_ (##car _e80078025_))
                             (_tl80098030_ (##cdr _e80078025_)))
                         (if (gx#stx-pair? _tl80098030_)
                             (let ((_e80108033_ (gx#stx-e _tl80098030_)))
                               (let ((_hd80118036_ (##car _e80108033_))
                                     (_tl80128038_ (##cdr _e80108033_)))
                                 (if (gx#stx-pair? _tl80128038_)
                                     (let ((_e80138041_
                                            (gx#stx-e _tl80128038_)))
                                       (let ((_hd80148044_ (##car _e80138041_))
                                             (_tl80158046_
                                              (##cdr _e80138041_)))
                                         (if (gx#stx-null? _tl80158046_)
                                             ((lambda (_L8049_ _L8050_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8050_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8049_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd80148044_
                                              _hd80118036_)
                                             (_g80038020_ _g80048023_))))
                                     (_g80038020_ _g80048023_))))
                             (_g80038020_ _g80048023_))))
                     (_g80038020_ _g80048023_)))))
          (_g80028065_ _stx8001_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd7999_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd7999_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx6536_)
      (let ((_runtime-identifier=?6538_
             (lambda (_id-stx7990_ _sym7991_)
               (let ((_bind79927994_ (gx#resolve-identifier__0 _id-stx7990_)))
                 (if _bind79927994_
                     (let ((_bind7997_ _bind79927994_))
                       (eq? (##structure-ref _bind7997_ '1 gx#binding::t '#f)
                            _sym7991_))
                     '#f)))))
        (let ((_dispatch-case?6539_
               (lambda (_hd7220_ _body7221_)
                 (let ((_form7223_ (cons _hd7220_ (cons _body7221_ '()))))
                   (let ((_g72287385_
                          (lambda (_g72297382_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g72297382_))))
                     (let ((_g72277392_
                            (lambda (_g72297388_) ((lambda () '#f)))))
                       (let ((_g72267533_
                              (lambda (_g72297395_)
                                (if (gx#stx-pair? _g72297395_)
                                    (let ((_e73457397_ (gx#stx-e _g72297395_)))
                                      (let ((_hd73467400_ (##car _e73457397_))
                                            (_tl73477402_ (##cdr _e73457397_)))
                                        (if (gx#stx-pair? _tl73477402_)
                                            (let ((_e73487405_
                                                   (gx#stx-e _tl73477402_)))
                                              (let ((_hd73497408_
                                                     (##car _e73487405_))
                                                    (_tl73507410_
                                                     (##cdr _e73487405_)))
                                                (if (gx#stx-pair? _hd73497408_)
                                                    (let ((_e73517413_
                                                           (gx#stx-e
                                                            _hd73497408_)))
                                                      (let ((_hd73527416_
                                                             (##car _e73517413_))
                                                            (_tl73537418_
                                                             (##cdr _e73517413_)))
                                                        (if (gx#identifier?
                                                             _hd73527416_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd73527416_)
                        (if (gx#stx-pair? _tl73537418_)
                            (let ((_e73547421_ (gx#stx-e _tl73537418_)))
                              (let ((_hd73557424_ (##car _e73547421_))
                                    (_tl73567426_ (##cdr _e73547421_)))
                                (if (gx#stx-pair? _hd73557424_)
                                    (let ((_e73577429_
                                           (gx#stx-e _hd73557424_)))
                                      (let ((_hd73587432_ (##car _e73577429_))
                                            (_tl73597434_ (##cdr _e73577429_)))
                                        (if (gx#identifier? _hd73587432_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73587432_)
                                                (if (gx#stx-pair? _tl73597434_)
                                                    (let ((_e73607437_
                                                           (gx#stx-e
                                                            _tl73597434_)))
                                                      (let ((_hd73617440_
                                                             (##car _e73607437_))
                                                            (_tl73627442_
                                                             (##cdr _e73607437_)))
                                                        (if (gx#stx-null?
                                                             _tl73627442_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73567426_)
                        (let ((_e73637445_ (gx#stx-e _tl73567426_)))
                          (let ((_hd73647448_ (##car _e73637445_))
                                (_tl73657450_ (##cdr _e73637445_)))
                            (if (gx#stx-pair? _hd73647448_)
                                (let ((_e73667453_ (gx#stx-e _hd73647448_)))
                                  (let ((_hd73677456_ (##car _e73667453_))
                                        (_tl73687458_ (##cdr _e73667453_)))
                                    (if (gx#identifier? _hd73677456_)
                                        (if (gx#stx-eq? '%#ref _hd73677456_)
                                            (if (gx#stx-pair? _tl73687458_)
                                                (let ((_e73697461_
                                                       (gx#stx-e
                                                        _tl73687458_)))
                                                  (let ((_hd73707464_
                                                         (##car _e73697461_))
                                                        (_tl73717466_
                                                         (##cdr _e73697461_)))
                                                    (if (gx#stx-null?
                                                         _tl73717466_)
                                                        (if (gx#stx-pair?
                                                             _tl73657450_)
                                                            (let ((_e73727469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl73657450_)))
                      (let ((_hd73737472_ (##car _e73727469_))
                            (_tl73747474_ (##cdr _e73727469_)))
                        (if (gx#stx-pair? _hd73737472_)
                            (let ((_e73757477_ (gx#stx-e _hd73737472_)))
                              (let ((_hd73767480_ (##car _e73757477_))
                                    (_tl73777482_ (##cdr _e73757477_)))
                                (if (gx#identifier? _hd73767480_)
                                    (if (gx#stx-eq? '%#ref _hd73767480_)
                                        (if (gx#stx-pair? _tl73777482_)
                                            (let ((_e73787485_
                                                   (gx#stx-e _tl73777482_)))
                                              (let ((_hd73797488_
                                                     (##car _e73787485_))
                                                    (_tl73807490_
                                                     (##cdr _e73787485_)))
                                                (if (gx#stx-null? _tl73807490_)
                                                    (if (gx#stx-null?
                                                         _tl73747474_)
                                                        (if (gx#stx-null?
                                                             _tl73507410_)
                                                            ((lambda (_L7493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7494_
                              _L7495_
                              _L7496_)
                       (if (if (gx#identifier? _L7496_)
                               (if (_runtime-identifier=?6538_ _L7495_ 'apply)
                                   (if (gx#free-identifier=? _L7496_ _L7493_)
                                       (not (gx#free-identifier=?
                                             _L7494_
                                             _L7496_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g72277392_ _g72297395_)))
                     _hd73797488_
                     _hd73707464_
                     _hd73617440_
                     _hd73467400_)
                    (_g72277392_ _g72297395_))
                (_g72277392_ _g72297395_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72277392_
                                                     _g72297395_))))
                                            (_g72277392_ _g72297395_))
                                        (_g72277392_ _g72297395_))
                                    (_g72277392_ _g72297395_))))
                            (_g72277392_ _g72297395_))))
                    (_g72277392_ _g72297395_))
                (_g72277392_ _g72297395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72277392_ _g72297395_))
                                            (_g72277392_ _g72297395_))
                                        (_g72277392_ _g72297395_))))
                                (_g72277392_ _g72297395_))))
                        (_g72277392_ _g72297395_))
                    (_g72277392_ _g72297395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72277392_ _g72297395_))
                                                (_g72277392_ _g72297395_))
                                            (_g72277392_ _g72297395_))))
                                    (_g72277392_ _g72297395_))))
                            (_g72277392_ _g72297395_))
                        (_g72277392_ _g72297395_))
                    (_g72277392_ _g72297395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72277392_
                                                     _g72297395_))))
                                            (_g72277392_ _g72297395_))))
                                    (_g72277392_ _g72297395_)))))
                         (let ((_g72257793_
                                (lambda (_g72297536_)
                                  (if (gx#stx-pair? _g72297536_)
                                      (let ((_e72817538_
                                             (gx#stx-e _g72297536_)))
                                        (let ((_hd72827541_
                                               (##car _e72817538_))
                                              (_tl72837543_
                                               (##cdr _e72817538_)))
                                          (if (gx#stx-pair/null? _hd72827541_)
                                              (if (fx>= (gx#stx-length
                                                         _hd72827541_)
                                                        '0)
                                                  (let ((_g9481_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd72827541_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9482_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9481_)))
                (if (not (fx= _g9482_ 2))
                    (error "Context expects 2 values" _g9482_)))
              (let ((_target72847546_ (values-ref _g9481_ 0))
                    (_tl72867548_ (values-ref _g9481_ 1)))
                (letrec ((_loop72877551_
                          (lambda (_hd72857554_ _arg72917556_)
                            (if (gx#stx-pair? _hd72857554_)
                                (let ((_e72887559_ (gx#stx-e _hd72857554_)))
                                  (let ((_lp-hd72897562_ (##car _e72887559_))
                                        (_lp-tl72907564_ (##cdr _e72887559_)))
                                    (_loop72877551_
                                     _lp-tl72907564_
                                     (cons _lp-hd72897562_ _arg72917556_))))
                                (let ((_arg72927567_ (reverse _arg72917556_)))
                                  (if (gx#stx-pair? _tl72837543_)
                                      (let ((_e72937570_
                                             (gx#stx-e _tl72837543_)))
                                        (let ((_hd72947573_
                                               (##car _e72937570_))
                                              (_tl72957575_
                                               (##cdr _e72937570_)))
                                          (if (gx#stx-pair? _hd72947573_)
                                              (let ((_e72967578_
                                                     (gx#stx-e _hd72947573_)))
                                                (let ((_hd72977581_
                                                       (##car _e72967578_))
                                                      (_tl72987583_
                                                       (##cdr _e72967578_)))
                                                  (if (gx#identifier?
                                                       _hd72977581_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd72977581_)
                                                          (if (gx#stx-pair?
                                                               _tl72987583_)
                                                              (let ((_e72997586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl72987583_)))
                        (let ((_hd73007589_ (##car _e72997586_))
                              (_tl73017591_ (##cdr _e72997586_)))
                          (if (gx#stx-pair? _hd73007589_)
                              (let ((_e73027594_ (gx#stx-e _hd73007589_)))
                                (let ((_hd73037597_ (##car _e73027594_))
                                      (_tl73047599_ (##cdr _e73027594_)))
                                  (if (gx#identifier? _hd73037597_)
                                      (if (gx#stx-eq? '%#ref _hd73037597_)
                                          (if (gx#stx-pair? _tl73047599_)
                                              (let ((_e73057602_
                                                     (gx#stx-e _tl73047599_)))
                                                (let ((_hd73067605_
                                                       (##car _e73057602_))
                                                      (_tl73077607_
                                                       (##cdr _e73057602_)))
                                                  (if (gx#stx-null?
                                                       _tl73077607_)
                                                      (if (gx#stx-pair?
                                                           _tl73017591_)
                                                          (let ((_e73087610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl73017591_)))
                    (let ((_hd73097613_ (##car _e73087610_))
                          (_tl73107615_ (##cdr _e73087610_)))
                      (if (gx#stx-pair? _hd73097613_)
                          (let ((_e73117618_ (gx#stx-e _hd73097613_)))
                            (let ((_hd73127621_ (##car _e73117618_))
                                  (_tl73137623_ (##cdr _e73117618_)))
                              (if (gx#identifier? _hd73127621_)
                                  (if (gx#stx-eq? '%#ref _hd73127621_)
                                      (if (gx#stx-pair? _tl73137623_)
                                          (let ((_e73147626_
                                                 (gx#stx-e _tl73137623_)))
                                            (let ((_hd73157629_
                                                   (##car _e73147626_))
                                                  (_tl73167631_
                                                   (##cdr _e73147626_)))
                                              (if (gx#stx-null? _tl73167631_)
                                                  (if (gx#stx-pair/null?
                                                       _tl73107615_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73107615_)
                        '1)
                  (let ((_g9483_ (gx#syntax-split-splice _tl73107615_ '1)))
                    (begin
                      (let ((_g9484_ (values-count _g9483_)))
                        (if (not (fx= _g9484_ 2))
                            (error "Context expects 2 values" _g9484_)))
                      (let ((_target73177634_ (values-ref _g9483_ 0))
                            (_tl73197636_ (values-ref _g9483_ 1)))
                        (if (gx#stx-pair? _tl73197636_)
                            (let ((_e73267639_ (gx#stx-e _tl73197636_)))
                              (let ((_hd73277642_ (##car _e73267639_))
                                    (_tl73287644_ (##cdr _e73267639_)))
                                (if (gx#stx-pair? _hd73277642_)
                                    (let ((_e73297647_
                                           (gx#stx-e _hd73277642_)))
                                      (let ((_hd73307650_ (##car _e73297647_))
                                            (_tl73317652_ (##cdr _e73297647_)))
                                        (if (gx#identifier? _hd73307650_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73307650_)
                                                (if (gx#stx-pair? _tl73317652_)
                                                    (let ((_e73327655_
                                                           (gx#stx-e
                                                            _tl73317652_)))
                                                      (let ((_hd73337658_
                                                             (##car _e73327655_))
                                                            (_tl73347660_
                                                             (##cdr _e73327655_)))
                                                        (if (gx#stx-null?
                                                             _tl73347660_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73287644_)
                        (letrec ((_loop73207663_
                                  (lambda (_hd73187666_ _xarg73247668_)
                                    (if (gx#stx-pair? _hd73187666_)
                                        (let ((_e73217671_
                                               (gx#stx-e _hd73187666_)))
                                          (let ((_lp-hd73227674_
                                                 (##car _e73217671_))
                                                (_lp-tl73237676_
                                                 (##cdr _e73217671_)))
                                            (if (gx#stx-pair? _lp-hd73227674_)
                                                (let ((_e73357679_
                                                       (gx#stx-e
                                                        _lp-hd73227674_)))
                                                  (let ((_hd73367682_
                                                         (##car _e73357679_))
                                                        (_tl73377684_
                                                         (##cdr _e73357679_)))
                                                    (if (gx#identifier?
                                                         _hd73367682_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd73367682_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73377684_)
                        (let ((_e73387687_ (gx#stx-e _tl73377684_)))
                          (let ((_hd73397690_ (##car _e73387687_))
                                (_tl73407692_ (##cdr _e73387687_)))
                            (if (gx#stx-null? _tl73407692_)
                                (_loop73207663_
                                 _lp-tl73237676_
                                 (cons _hd73397690_ _xarg73247668_))
                                (_g72267533_ _g72297536_))))
                        (_g72267533_ _g72297536_))
                    (_g72267533_ _g72297536_))
                (_g72267533_ _g72297536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72267533_ _g72297536_))))
                                        (let ((_xarg73257695_
                                               (reverse _xarg73247668_)))
                                          (if (gx#stx-null? _tl72957575_)
                                              ((lambda (_L7698_
                                                        _L7699_
                                                        _L7700_
                                                        _L7701_
                                                        _L7702_
                                                        _L7703_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g77467749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g77477751_)
                             (cons _g77467749_ _g77477751_))
                           '()
                           _L7703_)))
                 (if (gx#identifier? _L7702_)
                     (if (_runtime-identifier=?6538_ _L7701_ 'apply)
                         (if (fx= (gx#stx-length
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g77537756_ _g77547758_)
                                              (cons _g77537756_ _g77547758_))
                                            '()
                                            _L7703_)))
                                  (gx#stx-length
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g77607763_ _g77617765_)
                                              (cons _g77607763_ _g77617765_))
                                            '()
                                            _L7699_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g77677770_
                                                           _g77687772_)
                                                    (cons _g77677770_
                                                          _g77687772_))
                                                  '()
                                                  _L7703_))
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g77747777_
                                                           _g77757779_)
                                                    (cons _g77747777_
                                                          _g77757779_))
                                                  '()
                                                  _L7699_)))
                                 (if (gx#free-identifier=? _L7702_ _L7698_)
                                     (not (find (lambda (_g77817783_)
                                                  (gx#free-identifier=?
                                                   _g77817783_
                                                   _L7700_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g77857788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g77867790_)
                   (cons _g77857788_ _g77867790_))
                 (cons _L7702_ '())
                 _L7703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g72267533_
                                                      _g72297536_)))
                                               _hd73337658_
                                               _xarg73257695_
                                               _hd73157629_
                                               _hd73067605_
                                               _tl72867548_
                                               _arg72927567_)
                                              (_g72267533_ _g72297536_)))))))
                          (_loop73207663_ _target73177634_ '()))
                        (_g72267533_ _g72297536_))
                    (_g72267533_ _g72297536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72267533_ _g72297536_))
                                                (_g72267533_ _g72297536_))
                                            (_g72267533_ _g72297536_))))
                                    (_g72267533_ _g72297536_))))
                            (_g72267533_ _g72297536_)))))
                  (_g72267533_ _g72297536_))
              (_g72267533_ _g72297536_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72267533_ _g72297536_))))
                                          (_g72267533_ _g72297536_))
                                      (_g72267533_ _g72297536_))
                                  (_g72267533_ _g72297536_))))
                          (_g72267533_ _g72297536_))))
                  (_g72267533_ _g72297536_))
              (_g72267533_ _g72297536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72267533_ _g72297536_))
                                          (_g72267533_ _g72297536_))
                                      (_g72267533_ _g72297536_))))
                              (_g72267533_ _g72297536_))))
                      (_g72267533_ _g72297536_))
                  (_g72267533_ _g72297536_))
              (_g72267533_ _g72297536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72267533_ _g72297536_))))
                                      (_g72267533_ _g72297536_)))))))
                  (_loop72877551_ _target72847546_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72267533_ _g72297536_))
                                              (_g72267533_ _g72297536_))))
                                      (_g72267533_ _g72297536_)))))
                           (let ((_g72247987_
                                  (lambda (_g72297796_)
                                    (if (gx#stx-pair? _g72297796_)
                                        (let ((_e72337798_
                                               (gx#stx-e _g72297796_)))
                                          (let ((_hd72347801_
                                                 (##car _e72337798_))
                                                (_tl72357803_
                                                 (##cdr _e72337798_)))
                                            (if (gx#stx-pair/null?
                                                 _hd72347801_)
                                                (if (fx>= (gx#stx-length
                                                           _hd72347801_)
                                                          '0)
                                                    (let ((_g9485_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd72347801_
                            '0)))
              (begin
                (let ((_g9486_ (values-count _g9485_)))
                  (if (not (fx= _g9486_ 2))
                      (error "Context expects 2 values" _g9486_)))
                (let ((_target72367806_ (values-ref _g9485_ 0))
                      (_tl72387808_ (values-ref _g9485_ 1)))
                  (if (gx#stx-null? _tl72387808_)
                      (letrec ((_loop72397811_
                                (lambda (_hd72377814_ _arg72437816_)
                                  (if (gx#stx-pair? _hd72377814_)
                                      (let ((_e72407819_
                                             (gx#stx-e _hd72377814_)))
                                        (let ((_lp-hd72417822_
                                               (##car _e72407819_))
                                              (_lp-tl72427824_
                                               (##cdr _e72407819_)))
                                          (_loop72397811_
                                           _lp-tl72427824_
                                           (cons _lp-hd72417822_
                                                 _arg72437816_))))
                                      (let ((_arg72447827_
                                             (reverse _arg72437816_)))
                                        (if (gx#stx-pair? _tl72357803_)
                                            (let ((_e72457830_
                                                   (gx#stx-e _tl72357803_)))
                                              (let ((_hd72467833_
                                                     (##car _e72457830_))
                                                    (_tl72477835_
                                                     (##cdr _e72457830_)))
                                                (if (gx#stx-pair? _hd72467833_)
                                                    (let ((_e72487838_
                                                           (gx#stx-e
                                                            _hd72467833_)))
                                                      (let ((_hd72497841_
                                                             (##car _e72487838_))
                                                            (_tl72507843_
                                                             (##cdr _e72487838_)))
                                                        (if (gx#identifier?
                                                             _hd72497841_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd72497841_)
                        (if (gx#stx-pair? _tl72507843_)
                            (let ((_e72517846_ (gx#stx-e _tl72507843_)))
                              (let ((_hd72527849_ (##car _e72517846_))
                                    (_tl72537851_ (##cdr _e72517846_)))
                                (if (gx#stx-pair? _hd72527849_)
                                    (let ((_e72547854_
                                           (gx#stx-e _hd72527849_)))
                                      (let ((_hd72557857_ (##car _e72547854_))
                                            (_tl72567859_ (##cdr _e72547854_)))
                                        (if (gx#identifier? _hd72557857_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd72557857_)
                                                (if (gx#stx-pair? _tl72567859_)
                                                    (let ((_e72577862_
                                                           (gx#stx-e
                                                            _tl72567859_)))
                                                      (let ((_hd72587865_
                                                             (##car _e72577862_))
                                                            (_tl72597867_
                                                             (##cdr _e72577862_)))
                                                        (if (gx#stx-null?
                                                             _tl72597867_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72537851_)
                        (if (fx>= (gx#stx-length _tl72537851_) '0)
                            (let ((_g9487_ (gx#syntax-split-splice
                                            _tl72537851_
                                            '0)))
                              (begin
                                (let ((_g9488_ (values-count _g9487_)))
                                  (if (not (fx= _g9488_ 2))
                                      (error "Context expects 2 values"
                                             _g9488_)))
                                (let ((_target72607870_ (values-ref _g9487_ 0))
                                      (_tl72627872_ (values-ref _g9487_ 1)))
                                  (if (gx#stx-null? _tl72627872_)
                                      (letrec ((_loop72637875_
                                                (lambda (_hd72617878_
                                                         _xarg72677880_)
                                                  (if (gx#stx-pair?
                                                       _hd72617878_)
                                                      (let ((_e72647883_
                                                             (gx#stx-e
                                                              _hd72617878_)))
                                                        (let ((_lp-hd72657886_
                                                               (##car _e72647883_))
                                                              (_lp-tl72667888_
                                                               (##cdr _e72647883_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd72657886_)
                                                              (let ((_e72697891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd72657886_)))
                        (let ((_hd72707894_ (##car _e72697891_))
                              (_tl72717896_ (##cdr _e72697891_)))
                          (if (gx#identifier? _hd72707894_)
                              (if (gx#stx-eq? '%#ref _hd72707894_)
                                  (if (gx#stx-pair? _tl72717896_)
                                      (let ((_e72727899_
                                             (gx#stx-e _tl72717896_)))
                                        (let ((_hd72737902_
                                               (##car _e72727899_))
                                              (_tl72747904_
                                               (##cdr _e72727899_)))
                                          (if (gx#stx-null? _tl72747904_)
                                              (_loop72637875_
                                               _lp-tl72667888_
                                               (cons _hd72737902_
                                                     _xarg72677880_))
                                              (_g72257793_ _g72297796_))))
                                      (_g72257793_ _g72297796_))
                                  (_g72257793_ _g72297796_))
                              (_g72257793_ _g72297796_))))
                      (_g72257793_ _g72297796_))))
              (let ((_xarg72687907_ (reverse _xarg72677880_)))
                (if (gx#stx-null? _tl72477835_)
                    ((lambda (_L7910_ _L7911_ _L7912_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr (lambda (_g79407943_ _g79417945_)
                                           (cons _g79407943_ _g79417945_))
                                         '()
                                         _L7912_)))
                               (if (fx= (gx#stx-length
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g79477950_
                                                           _g79487952_)
                                                    (cons _g79477950_
                                                          _g79487952_))
                                                  '()
                                                  _L7912_)))
                                        (gx#stx-length
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g79547957_
                                                           _g79557959_)
                                                    (cons _g79547957_
                                                          _g79557959_))
                                                  '()
                                                  _L7910_))))
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g79617964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79627966_)
                  (cons _g79617964_ _g79627966_))
                '()
                _L7912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g79687971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g79697973_)
                  (cons _g79687971_ _g79697973_))
                '()
                _L7910_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g79757977_)
                                                    (gx#free-identifier=?
                                                     _g79757977_
                                                     _L7911_))
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g79797982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g79807984_)
                     (cons _g79797982_ _g79807984_))
                   '()
                   _L7912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g72257793_ _g72297796_)))
                     _xarg72687907_
                     _hd72587865_
                     _arg72447827_)
                    (_g72257793_ _g72297796_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop72637875_ _target72607870_ '()))
                                      (_g72257793_ _g72297796_)))))
                            (_g72257793_ _g72297796_))
                        (_g72257793_ _g72297796_))
                    (_g72257793_ _g72297796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72257793_ _g72297796_))
                                                (_g72257793_ _g72297796_))
                                            (_g72257793_ _g72297796_))))
                                    (_g72257793_ _g72297796_))))
                            (_g72257793_ _g72297796_))
                        (_g72257793_ _g72297796_))
                    (_g72257793_ _g72297796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72257793_
                                                     _g72297796_))))
                                            (_g72257793_ _g72297796_)))))))
                        (_loop72397811_ _target72367806_ '()))
                      (_g72257793_ _g72297796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72257793_ _g72297796_))
                                                (_g72257793_ _g72297796_))))
                                        (_g72257793_ _g72297796_)))))
                             (_g72247987_ _form7223_))))))))))
          (let ((_dispatch-case-e6540_
                 (lambda (_hd6684_ _body6685_)
                   (let ((_form6687_ (cons _hd6684_ (cons _body6685_ '()))))
                     (let ((_g66916815_
                            (lambda (_g66926812_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g66926812_))))
                       (let ((_g66906933_
                              (lambda (_g66926818_)
                                (if (gx#stx-pair? _g66926818_)
                                    (let ((_e67816820_ (gx#stx-e _g66926818_)))
                                      (let ((_hd67826823_ (##car _e67816820_))
                                            (_tl67836825_ (##cdr _e67816820_)))
                                        (if (gx#stx-pair? _tl67836825_)
                                            (let ((_e67846828_
                                                   (gx#stx-e _tl67836825_)))
                                              (let ((_hd67856831_
                                                     (##car _e67846828_))
                                                    (_tl67866833_
                                                     (##cdr _e67846828_)))
                                                (if (gx#stx-pair? _hd67856831_)
                                                    (let ((_e67876836_
                                                           (gx#stx-e
                                                            _hd67856831_)))
                                                      (let ((_hd67886839_
                                                             (##car _e67876836_))
                                                            (_tl67896841_
                                                             (##cdr _e67876836_)))
                                                        (if (gx#identifier?
                                                             _hd67886839_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd67886839_)
                        (if (gx#stx-pair? _tl67896841_)
                            (let ((_e67906844_ (gx#stx-e _tl67896841_)))
                              (let ((_hd67916847_ (##car _e67906844_))
                                    (_tl67926849_ (##cdr _e67906844_)))
                                (if (gx#stx-pair? _hd67916847_)
                                    (let ((_e67936852_
                                           (gx#stx-e _hd67916847_)))
                                      (let ((_hd67946855_ (##car _e67936852_))
                                            (_tl67956857_ (##cdr _e67936852_)))
                                        (if (gx#identifier? _hd67946855_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd67946855_)
                                                (if (gx#stx-pair? _tl67956857_)
                                                    (let ((_e67966860_
                                                           (gx#stx-e
                                                            _tl67956857_)))
                                                      (let ((_hd67976863_
                                                             (##car _e67966860_))
                                                            (_tl67986865_
                                                             (##cdr _e67966860_)))
                                                        (if (gx#stx-null?
                                                             _tl67986865_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67926849_)
                        (let ((_e67996868_ (gx#stx-e _tl67926849_)))
                          (let ((_hd68006871_ (##car _e67996868_))
                                (_tl68016873_ (##cdr _e67996868_)))
                            (if (gx#stx-pair? _hd68006871_)
                                (let ((_e68026876_ (gx#stx-e _hd68006871_)))
                                  (let ((_hd68036879_ (##car _e68026876_))
                                        (_tl68046881_ (##cdr _e68026876_)))
                                    (if (gx#identifier? _hd68036879_)
                                        (if (gx#stx-eq? '%#ref _hd68036879_)
                                            (if (gx#stx-pair? _tl68046881_)
                                                (let ((_e68056884_
                                                       (gx#stx-e
                                                        _tl68046881_)))
                                                  (let ((_hd68066887_
                                                         (##car _e68056884_))
                                                        (_tl68076889_
                                                         (##cdr _e68056884_)))
                                                    (if (gx#stx-null?
                                                         _tl68076889_)
                                                        (if (gx#stx-pair?
                                                             _tl68016873_)
                                                            (let ((_e68086892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl68016873_)))
                      (let ((_hd68096895_ (##car _e68086892_))
                            (_tl68106897_ (##cdr _e68086892_)))
                        (if (gx#stx-null? _tl68106897_)
                            (if (gx#stx-null? _tl67866833_)
                                ((lambda (_L6900_ _L6901_ _L6902_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L6900_ '()))))
                                 _hd68066887_
                                 _hd67976863_
                                 _hd67826823_)
                                (_g66916815_ _g66926818_))
                            (_g66916815_ _g66926818_))))
                    (_g66916815_ _g66926818_))
                (_g66916815_ _g66926818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g66916815_ _g66926818_))
                                            (_g66916815_ _g66926818_))
                                        (_g66916815_ _g66926818_))))
                                (_g66916815_ _g66926818_))))
                        (_g66916815_ _g66926818_))
                    (_g66916815_ _g66926818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66916815_ _g66926818_))
                                                (_g66916815_ _g66926818_))
                                            (_g66916815_ _g66926818_))))
                                    (_g66916815_ _g66926818_))))
                            (_g66916815_ _g66926818_))
                        (_g66916815_ _g66926818_))
                    (_g66916815_ _g66926818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66916815_
                                                     _g66926818_))))
                                            (_g66916815_ _g66926818_))))
                                    (_g66916815_ _g66926818_)))))
                         (let ((_g66897069_
                                (lambda (_g66926936_)
                                  (if (gx#stx-pair? _g66926936_)
                                      (let ((_e67426938_
                                             (gx#stx-e _g66926936_)))
                                        (let ((_hd67436941_
                                               (##car _e67426938_))
                                              (_tl67446943_
                                               (##cdr _e67426938_)))
                                          (if (gx#stx-pair/null? _hd67436941_)
                                              (if (fx>= (gx#stx-length
                                                         _hd67436941_)
                                                        '0)
                                                  (let ((_g9475_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd67436941_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9476_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9475_)))
                (if (not (fx= _g9476_ 2))
                    (error "Context expects 2 values" _g9476_)))
              (let ((_target67456946_ (values-ref _g9475_ 0))
                    (_tl67476948_ (values-ref _g9475_ 1)))
                (letrec ((_loop67486951_
                          (lambda (_hd67466954_ _arg67526956_)
                            (if (gx#stx-pair? _hd67466954_)
                                (let ((_e67496959_ (gx#stx-e _hd67466954_)))
                                  (let ((_lp-hd67506962_ (##car _e67496959_))
                                        (_lp-tl67516964_ (##cdr _e67496959_)))
                                    (_loop67486951_
                                     _lp-tl67516964_
                                     (cons _lp-hd67506962_ _arg67526956_))))
                                (let ((_arg67536967_ (reverse _arg67526956_)))
                                  (if (gx#stx-pair? _tl67446943_)
                                      (let ((_e67546970_
                                             (gx#stx-e _tl67446943_)))
                                        (let ((_hd67556973_
                                               (##car _e67546970_))
                                              (_tl67566975_
                                               (##cdr _e67546970_)))
                                          (if (gx#stx-pair? _hd67556973_)
                                              (let ((_e67576978_
                                                     (gx#stx-e _hd67556973_)))
                                                (let ((_hd67586981_
                                                       (##car _e67576978_))
                                                      (_tl67596983_
                                                       (##cdr _e67576978_)))
                                                  (if (gx#identifier?
                                                       _hd67586981_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd67586981_)
                                                          (if (gx#stx-pair?
                                                               _tl67596983_)
                                                              (let ((_e67606986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl67596983_)))
                        (let ((_hd67616989_ (##car _e67606986_))
                              (_tl67626991_ (##cdr _e67606986_)))
                          (if (gx#stx-pair? _hd67616989_)
                              (let ((_e67636994_ (gx#stx-e _hd67616989_)))
                                (let ((_hd67646997_ (##car _e67636994_))
                                      (_tl67656999_ (##cdr _e67636994_)))
                                  (if (gx#identifier? _hd67646997_)
                                      (if (gx#stx-eq? '%#ref _hd67646997_)
                                          (if (gx#stx-pair? _tl67656999_)
                                              (let ((_e67667002_
                                                     (gx#stx-e _tl67656999_)))
                                                (let ((_hd67677005_
                                                       (##car _e67667002_))
                                                      (_tl67687007_
                                                       (##cdr _e67667002_)))
                                                  (if (gx#stx-null?
                                                       _tl67687007_)
                                                      (if (gx#stx-pair?
                                                           _tl67626991_)
                                                          (let ((_e67697010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl67626991_)))
                    (let ((_hd67707013_ (##car _e67697010_))
                          (_tl67717015_ (##cdr _e67697010_)))
                      (if (gx#stx-pair? _hd67707013_)
                          (let ((_e67727018_ (gx#stx-e _hd67707013_)))
                            (let ((_hd67737021_ (##car _e67727018_))
                                  (_tl67747023_ (##cdr _e67727018_)))
                              (if (gx#identifier? _hd67737021_)
                                  (if (gx#stx-eq? '%#ref _hd67737021_)
                                      (if (gx#stx-pair? _tl67747023_)
                                          (let ((_e67757026_
                                                 (gx#stx-e _tl67747023_)))
                                            (let ((_hd67767029_
                                                   (##car _e67757026_))
                                                  (_tl67777031_
                                                   (##cdr _e67757026_)))
                                              (if (gx#stx-null? _tl67777031_)
                                                  (if (gx#stx-null?
                                                       _tl67566975_)
                                                      ((lambda (_L7034_
                                                                _L7035_
                                                                _L7036_
                                                                _L7037_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7034_ '()))))
               _hd67767029_
               _hd67677005_
               _tl67476948_
               _arg67536967_)
              (_g66906933_ _g66926936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66906933_ _g66926936_))))
                                          (_g66906933_ _g66926936_))
                                      (_g66906933_ _g66926936_))
                                  (_g66906933_ _g66926936_))))
                          (_g66906933_ _g66926936_))))
                  (_g66906933_ _g66926936_))
              (_g66906933_ _g66926936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66906933_ _g66926936_))
                                          (_g66906933_ _g66926936_))
                                      (_g66906933_ _g66926936_))))
                              (_g66906933_ _g66926936_))))
                      (_g66906933_ _g66926936_))
                  (_g66906933_ _g66926936_))
              (_g66906933_ _g66926936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g66906933_ _g66926936_))))
                                      (_g66906933_ _g66926936_)))))))
                  (_loop67486951_ _target67456946_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66906933_ _g66926936_))
                                              (_g66906933_ _g66926936_))))
                                      (_g66906933_ _g66926936_)))))
                           (let ((_g66887217_
                                  (lambda (_g66927072_)
                                    (if (gx#stx-pair? _g66927072_)
                                        (let ((_e66967074_
                                               (gx#stx-e _g66927072_)))
                                          (let ((_hd66977077_
                                                 (##car _e66967074_))
                                                (_tl66987079_
                                                 (##cdr _e66967074_)))
                                            (if (gx#stx-pair/null?
                                                 _hd66977077_)
                                                (if (fx>= (gx#stx-length
                                                           _hd66977077_)
                                                          '0)
                                                    (let ((_g9477_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd66977077_
                            '0)))
              (begin
                (let ((_g9478_ (values-count _g9477_)))
                  (if (not (fx= _g9478_ 2))
                      (error "Context expects 2 values" _g9478_)))
                (let ((_target66997082_ (values-ref _g9477_ 0))
                      (_tl67017084_ (values-ref _g9477_ 1)))
                  (if (gx#stx-null? _tl67017084_)
                      (letrec ((_loop67027087_
                                (lambda (_hd67007090_ _arg67067092_)
                                  (if (gx#stx-pair? _hd67007090_)
                                      (let ((_e67037095_
                                             (gx#stx-e _hd67007090_)))
                                        (let ((_lp-hd67047098_
                                               (##car _e67037095_))
                                              (_lp-tl67057100_
                                               (##cdr _e67037095_)))
                                          (_loop67027087_
                                           _lp-tl67057100_
                                           (cons _lp-hd67047098_
                                                 _arg67067092_))))
                                      (let ((_arg67077103_
                                             (reverse _arg67067092_)))
                                        (if (gx#stx-pair? _tl66987079_)
                                            (let ((_e67087106_
                                                   (gx#stx-e _tl66987079_)))
                                              (let ((_hd67097109_
                                                     (##car _e67087106_))
                                                    (_tl67107111_
                                                     (##cdr _e67087106_)))
                                                (if (gx#stx-pair? _hd67097109_)
                                                    (let ((_e67117114_
                                                           (gx#stx-e
                                                            _hd67097109_)))
                                                      (let ((_hd67127117_
                                                             (##car _e67117114_))
                                                            (_tl67137119_
                                                             (##cdr _e67117114_)))
                                                        (if (gx#identifier?
                                                             _hd67127117_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd67127117_)
                        (if (gx#stx-pair? _tl67137119_)
                            (let ((_e67147122_ (gx#stx-e _tl67137119_)))
                              (let ((_hd67157125_ (##car _e67147122_))
                                    (_tl67167127_ (##cdr _e67147122_)))
                                (if (gx#stx-pair? _hd67157125_)
                                    (let ((_e67177130_
                                           (gx#stx-e _hd67157125_)))
                                      (let ((_hd67187133_ (##car _e67177130_))
                                            (_tl67197135_ (##cdr _e67177130_)))
                                        (if (gx#identifier? _hd67187133_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd67187133_)
                                                (if (gx#stx-pair? _tl67197135_)
                                                    (let ((_e67207138_
                                                           (gx#stx-e
                                                            _tl67197135_)))
                                                      (let ((_hd67217141_
                                                             (##car _e67207138_))
                                                            (_tl67227143_
                                                             (##cdr _e67207138_)))
                                                        (if (gx#stx-null?
                                                             _tl67227143_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67167127_)
                        (if (fx>= (gx#stx-length _tl67167127_) '0)
                            (let ((_g9479_ (gx#syntax-split-splice
                                            _tl67167127_
                                            '0)))
                              (begin
                                (let ((_g9480_ (values-count _g9479_)))
                                  (if (not (fx= _g9480_ 2))
                                      (error "Context expects 2 values"
                                             _g9480_)))
                                (let ((_target67237146_ (values-ref _g9479_ 0))
                                      (_tl67257148_ (values-ref _g9479_ 1)))
                                  (if (gx#stx-null? _tl67257148_)
                                      (letrec ((_loop67267151_
                                                (lambda (_hd67247154_
                                                         _xarg67307156_)
                                                  (if (gx#stx-pair?
                                                       _hd67247154_)
                                                      (let ((_e67277159_
                                                             (gx#stx-e
                                                              _hd67247154_)))
                                                        (let ((_lp-hd67287162_
                                                               (##car _e67277159_))
                                                              (_lp-tl67297164_
                                                               (##cdr _e67277159_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd67287162_)
                                                              (let ((_e67327167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd67287162_)))
                        (let ((_hd67337170_ (##car _e67327167_))
                              (_tl67347172_ (##cdr _e67327167_)))
                          (if (gx#identifier? _hd67337170_)
                              (if (gx#stx-eq? '%#ref _hd67337170_)
                                  (if (gx#stx-pair? _tl67347172_)
                                      (let ((_e67357175_
                                             (gx#stx-e _tl67347172_)))
                                        (let ((_hd67367178_
                                               (##car _e67357175_))
                                              (_tl67377180_
                                               (##cdr _e67357175_)))
                                          (if (gx#stx-null? _tl67377180_)
                                              (_loop67267151_
                                               _lp-tl67297164_
                                               (cons _hd67367178_
                                                     _xarg67307156_))
                                              (_g66897069_ _g66927072_))))
                                      (_g66897069_ _g66927072_))
                                  (_g66897069_ _g66927072_))
                              (_g66897069_ _g66927072_))))
                      (_g66897069_ _g66927072_))))
              (let ((_xarg67317183_ (reverse _xarg67307156_)))
                (if (gx#stx-null? _tl67107111_)
                    ((lambda (_L7186_ _L7187_ _L7188_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7187_ '()))))
                     _xarg67317183_
                     _hd67217141_
                     _arg67077103_)
                    (_g66897069_ _g66927072_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop67267151_ _target67237146_ '()))
                                      (_g66897069_ _g66927072_)))))
                            (_g66897069_ _g66927072_))
                        (_g66897069_ _g66927072_))
                    (_g66897069_ _g66927072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66897069_ _g66927072_))
                                                (_g66897069_ _g66927072_))
                                            (_g66897069_ _g66927072_))))
                                    (_g66897069_ _g66927072_))))
                            (_g66897069_ _g66927072_))
                        (_g66897069_ _g66927072_))
                    (_g66897069_ _g66927072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66897069_
                                                     _g66927072_))))
                                            (_g66897069_ _g66927072_)))))))
                        (_loop67027087_ _target66997082_ '()))
                      (_g66897069_ _g66927072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66897069_ _g66927072_))
                                                (_g66897069_ _g66927072_))))
                                        (_g66897069_ _g66927072_)))))
                             (_g66887217_ _form6687_)))))))))
            (let ((_generate16541_
                   (lambda (_args6672_ _arglen6673_ _hd6674_ _body6675_)
                     (let ((_len6677_ (gx#stx-length _hd6674_)))
                       (let ((_condition6679_
                              (if (gx#stx-list? _hd6674_)
                                  (cons 'fx=
                                        (cons _arglen6673_
                                              (cons _len6677_ '())))
                                  (if (> _len6677_ '0)
                                      (cons 'fx>=
                                            (cons _arglen6673_
                                                  (cons _len6677_ '())))
                                      '#t))))
                         (let ((_dispatch6681_
                                (if (_dispatch-case?6539_ _hd6674_ _body6675_)
                                    (_dispatch-case-e6540_ _hd6674_ _body6675_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd6674_)
                                                (cons (gxc#compile-e
                                                       _body6675_)
                                                      '()))))))
                           (let ()
                             (cons _condition6679_
                                   (cons (cons 'apply
                                               (cons _dispatch6681_
                                                     (cons _args6672_ '())))
                                         '())))))))))
              (let ((_g65436571_
                     (lambda (_g65446568_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g65446568_))))
                (let ((_g65426669_
                       (lambda (_g65446574_)
                         (if (gx#stx-pair? _g65446574_)
                             (let ((_e65476576_ (gx#stx-e _g65446574_)))
                               (let ((_hd65486579_ (##car _e65476576_))
                                     (_tl65496581_ (##cdr _e65476576_)))
                                 (if (gx#stx-pair/null? _tl65496581_)
                                     (if (fx>= (gx#stx-length _tl65496581_) '0)
                                         (let ((_g9473_ (gx#syntax-split-splice
                                                         _tl65496581_
                                                         '0)))
                                           (begin
                                             (let ((_g9474_ (values-count
                                                             _g9473_)))
                                               (if (not (fx= _g9474_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9474_)))
                                             (let ((_target65506584_
                                                    (values-ref _g9473_ 0))
                                                   (_tl65526586_
                                                    (values-ref _g9473_ 1)))
                                               (if (gx#stx-null? _tl65526586_)
                                                   (letrec ((_loop65536589_
                                                             (lambda (_hd65516592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body65576594_
                              _hd65586596_)
                       (if (gx#stx-pair? _hd65516592_)
                           (let ((_e65546599_ (gx#stx-e _hd65516592_)))
                             (let ((_lp-hd65556602_ (##car _e65546599_))
                                   (_lp-tl65566604_ (##cdr _e65546599_)))
                               (if (gx#stx-pair? _lp-hd65556602_)
                                   (let ((_e65616607_
                                          (gx#stx-e _lp-hd65556602_)))
                                     (let ((_hd65626610_ (##car _e65616607_))
                                           (_tl65636612_ (##cdr _e65616607_)))
                                       (if (gx#stx-pair? _tl65636612_)
                                           (let ((_e65646615_
                                                  (gx#stx-e _tl65636612_)))
                                             (let ((_hd65656618_
                                                    (##car _e65646615_))
                                                   (_tl65666620_
                                                    (##cdr _e65646615_)))
                                               (if (gx#stx-null? _tl65666620_)
                                                   (_loop65536589_
                                                    _lp-tl65566604_
                                                    (cons _hd65656618_
                                                          _body65576594_)
                                                    (cons _hd65626610_
                                                          _hd65586596_))
                                                   (_g65436571_ _g65446574_))))
                                           (_g65436571_ _g65446574_))))
                                   (_g65436571_ _g65446574_))))
                           (let ((_body65596623_ (reverse _body65576594_))
                                 (_hd65606625_ (reverse _hd65586596_)))
                             ((lambda (_L6628_ _L6629_)
                                (let ((_args6645_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen6646_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args6645_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen6646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args6645_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr cons
                                           (cons (cons 'else
                                                       (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"No clause matching arguments"
                                 (cons _args6645_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (map (lambda (_g66476650_
                                                         _g66486652_)
                                                  (_generate16541_
                                                   _args6645_
                                                   _arglen6646_
                                                   _g66476650_
                                                   _g66486652_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g66546657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g66556659_)
                   (cons _g66546657_ _g66556659_))
                 '()
                 _L6629_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g66616664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g66626666_)
                   (cons _g66616664_ _g66626666_))
                 '()
                 _L6628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body65596623_
                              _hd65606625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop65536589_
                                                      _target65506584_
                                                      '()
                                                      '()))
                                                   (_g65436571_
                                                    _g65446574_)))))
                                         (_g65436571_ _g65446574_))
                                     (_g65436571_ _g65446574_))))
                             (_g65436571_ _g65446574_)))))
                  (_g65426669_ _stx6536_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6216
      (lambda (_stx6218_ _compiled-body?6219_)
        (let ((_generate-simple6221_
               (lambda (_hd6523_ _body6524_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd6523_
                  _body6524_
                  _compiled-body?6219_))))
          (let ((_generate-values-post6223_
                 (lambda (_post6295_ _body6296_)
                   ((letrec ((_lp6298_
                              (lambda (_rest6300_ _body6301_)
                                (let ((_rest63026310_ _rest6300_))
                                  (let ((_E63056314_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest63026310_))))
                                    (let ((_else63046318_
                                           (lambda () _body6301_)))
                                      (let ((_K63066324_
                                             (lambda (_rest6321_ _bind6322_)
                                               (_lp6298_
                                                _rest6321_
                                                (cons 'let
                                                      (cons _bind6322_
                                                            (cons _body6301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest63026310_)
                                            (let ((_hd63076327_
                                                   (##car _rest63026310_))
                                                  (_tl63086329_
                                                   (##cdr _rest63026310_)))
                                              (let ((_bind6332_ _hd63076327_))
                                                (let ((_rest6334_
                                                       _tl63086329_))
                                                  (_K63066324_
                                                   _rest6334_
                                                   _bind6332_))))
                                            (_else63046318_)))))))))
                      _lp6298_)
                    _post6295_
                    _body6296_))))
            (let ((_generate-values-check6224_
                   (lambda (_check6292_ _body6293_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body6293_ '())
                                  (reverse _check6292_))))))
              (let ((_generate-values6222_
                     (lambda (_hd6336_ _body6337_)
                       ((letrec ((_lp6339_
                                  (lambda (_rest6341_
                                           _bind6342_
                                           _check6343_
                                           _post6344_)
                                    (let ((_g63476358_
                                           (lambda (_g63486355_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g63486355_))))
                                      (let ((_g63466372_
                                             (lambda (_g63486361_)
                                               ((lambda ()
                                                  (let ((_body6365_
                                                         (if _compiled-body?6219_
                                                             _body6337_
                                                             (gxc#compile-e
                                                              _body6337_))))
                                                    (let ((_body6367_
                                                           (_generate-values-post6223_
                                                            _post6344_
                                                            _body6365_)))
                                                      (let ((_body6369_
                                                             (_generate-values-check6224_
                                                              _check6343_
                                                              _body6367_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6342_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6369_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g63456520_
                                               (lambda (_g63486375_)
                                                 (if (gx#stx-pair? _g63486375_)
                                                     (let ((_e63516377_
                                                            (gx#stx-e
                                                             _g63486375_)))
                                                       (let ((_hd63526380_
                                                              (##car _e63516377_))
                                                             (_tl63536382_
                                                              (##cdr _e63516377_)))
                                                         ((lambda (_L6385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6386_)
                    (let ((_g64016426_
                           (lambda (_g64026423_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g64026423_))))
                      (let ((_g64006470_
                             (lambda (_g64026429_)
                               (if (gx#stx-pair? _g64026429_)
                                   (let ((_e64166431_ (gx#stx-e _g64026429_)))
                                     (let ((_hd64176434_ (##car _e64166431_))
                                           (_tl64186436_ (##cdr _e64166431_)))
                                       (if (gx#stx-pair? _tl64186436_)
                                           (let ((_e64196439_
                                                  (gx#stx-e _tl64186436_)))
                                             (let ((_hd64206442_
                                                    (##car _e64196439_))
                                                   (_tl64216444_
                                                    (##cdr _e64196439_)))
                                               (if (gx#stx-null? _tl64216444_)
                                                   ((lambda (_L6447_ _L6448_)
                                                      (let ((_vals6461_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6463_
                                                               (gxc#compile-e
                                                                _L6447_)))
                                                          (let ((_check-values6465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6461_
                          _L6448_)))
                    (let ((_refs6467_
                           (gxc#generate-runtime-let-values-bind
                            _vals6461_
                            _L6448_)))
                      (let ()
                        (_lp6339_
                         _L6385_
                         (cons (cons _vals6461_ (cons _expr6463_ '()))
                               _bind6342_)
                         (cons _check-values6465_ _check6343_)
                         (cons _refs6467_ _post6344_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd64206442_
                                                    _hd64176434_)
                                                   (_g64016426_ _g64026429_))))
                                           (_g64016426_ _g64026429_))))
                                   (_g64016426_ _g64026429_)))))
                        (let ((_g63996517_
                               (lambda (_g64026473_)
                                 (if (gx#stx-pair? _g64026473_)
                                     (let ((_e64056475_
                                            (gx#stx-e _g64026473_)))
                                       (let ((_hd64066478_ (##car _e64056475_))
                                             (_tl64076480_
                                              (##cdr _e64056475_)))
                                         (if (gx#stx-pair? _hd64066478_)
                                             (let ((_e64086483_
                                                    (gx#stx-e _hd64066478_)))
                                               (let ((_hd64096486_
                                                      (##car _e64086483_))
                                                     (_tl64106488_
                                                      (##cdr _e64086483_)))
                                                 (if (gx#stx-null?
                                                      _tl64106488_)
                                                     (if (gx#stx-pair?
                                                          _tl64076480_)
                                                         (let ((_e64116491_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl64076480_)))
                   (let ((_hd64126494_ (##car _e64116491_))
                         (_tl64136496_ (##cdr _e64116491_)))
                     (if (gx#stx-null? _tl64136496_)
                         ((lambda (_L6499_ _L6500_)
                            (let ((_eid6514_
                                   (gxc#generate-runtime-binding-id* _L6500_))
                                  (_expr6515_ (gxc#compile-e _L6499_)))
                              (_lp6339_
                               _L6385_
                               (cons (cons _eid6514_ (cons _expr6515_ '()))
                                     _bind6342_)
                               _check6343_
                               _post6344_)))
                          _hd64126494_
                          _hd64096486_)
                         (_g64006470_ _g64026473_))))
                 (_g64006470_ _g64026473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g64006470_
                                                      _g64026473_))))
                                             (_g64006470_ _g64026473_))))
                                     (_g64006470_ _g64026473_)))))
                          (_g63996517_ _L6386_)))))
                  _tl63536382_
                  _hd63526380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g63466372_
                                                      _g63486375_)))))
                                          (_g63456520_ _rest6341_)))))))
                          _lp6339_)
                        _hd6336_
                        '()
                        '()
                        '()))))
                (let ((_g62266243_
                       (lambda (_g62276240_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g62276240_))))
                  (let ((_g62256289_
                         (lambda (_g62276246_)
                           (if (gx#stx-pair? _g62276246_)
                               (let ((_e62306248_ (gx#stx-e _g62276246_)))
                                 (let ((_hd62316251_ (##car _e62306248_))
                                       (_tl62326253_ (##cdr _e62306248_)))
                                   (if (gx#stx-pair? _tl62326253_)
                                       (let ((_e62336256_
                                              (gx#stx-e _tl62326253_)))
                                         (let ((_hd62346259_
                                                (##car _e62336256_))
                                               (_tl62356261_
                                                (##cdr _e62336256_)))
                                           (if (gx#stx-pair? _tl62356261_)
                                               (let ((_e62366264_
                                                      (gx#stx-e _tl62356261_)))
                                                 (let ((_hd62376267_
                                                        (##car _e62366264_))
                                                       (_tl62386269_
                                                        (##cdr _e62366264_)))
                                                   (if (gx#stx-null?
                                                        _tl62386269_)
                                                       ((lambda (_L6272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6273_)
                  (if (gxc#generate-runtime-simple-let? _L6273_)
                      (_generate-simple6221_ _L6273_ _L6272_)
                      (_generate-values6222_ _L6273_ _L6272_)))
                _hd62376267_
                _hd62346259_)
               (_g62266243_ _g62276246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g62266243_ _g62276246_))))
                                       (_g62266243_ _g62276246_))))
                               (_g62266243_ _g62276246_)))))
                    (_g62256289_ _stx6218_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx6529_)
          (let ((_compiled-body?6531_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6216
             _stx6529_
             _compiled-body?6531_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g9490_
          (let ((_g9489_ (length _g9490_)))
            (cond ((fx= _g9489_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g9490_))
                  ((fx= _g9489_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6216
                          _g9490_))
                  (else (error "No clause matching arguments" _g9490_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6117_ _hd6118_)
      ((letrec ((_lp6120_
                 (lambda (_rest6122_ _k6123_ _r6124_)
                   (let ((_g61296145_
                          (lambda (_g61306142_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g61306142_))))
                     (let ((_g61286152_
                            (lambda (_g61306148_)
                              ((lambda () (reverse _r6124_))))))
                       (let ((_g61276168_
                              (lambda (_g61306155_)
                                ((lambda (_L6157_)
                                   (if (gx#identifier? _L6157_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6157_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6117_ (cons _k6123_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r6124_)
                                       (_g61286152_ _g61306155_)))
                                 _g61306155_))))
                         (let ((_g61266192_
                                (lambda (_g61306171_)
                                  (if (gx#stx-pair? _g61306171_)
                                      (let ((_e61376173_
                                             (gx#stx-e _g61306171_)))
                                        (let ((_hd61386176_
                                               (##car _e61376173_))
                                              (_tl61396178_
                                               (##cdr _e61376173_)))
                                          ((lambda (_L6181_ _L6182_)
                                             (_lp6120_
                                              _L6181_
                                              (fx+ _k6123_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6182_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6117_ (cons _k6123_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6124_)))
                                           _tl61396178_
                                           _hd61386176_)))
                                      (_g61276168_ _g61306171_)))))
                           (let ((_g61256214_
                                  (lambda (_g61306195_)
                                    (if (gx#stx-pair? _g61306195_)
                                        (let ((_e61326197_
                                               (gx#stx-e _g61306195_)))
                                          (let ((_hd61336200_
                                                 (##car _e61326197_))
                                                (_tl61346202_
                                                 (##cdr _e61326197_)))
                                            (if (gx#stx-datum? _hd61336200_)
                                                (if (equal? (gx#stx-e
                                                             _hd61336200_)
                                                            '#f)
                                                    ((lambda (_L6205_)
                                                       (_lp6120_
                                                        _L6205_
                                                        (fx+ _k6123_ '1)
                                                        _r6124_))
                                                     _tl61346202_)
                                                    (_g61266192_ _g61306195_))
                                                (_g61266192_ _g61306195_))))
                                        (_g61266192_ _g61306195_)))))
                             (_g61256214_ _rest6122_)))))))))
         _lp6120_)
       _hd6118_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda5795
      (lambda (_stx5797_ _compiled-body?5798_)
        (let ((_generate-simple5800_
               (lambda (_hd6104_ _body6105_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6104_
                  _body6105_
                  _compiled-body?5798_))))
          (let ((_generate-values-check5802_
                 (lambda (_check5878_ _body5879_)
                   (cons 'begin
                         (foldr cons
                                (cons _body5879_ '())
                                (reverse _check5878_))))))
            (let ((_generate-values-post5803_
                   (lambda (_post5871_ _body5872_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body5872_ '())
                                  (map (lambda (_g58735875_)
                                         (cons 'set! _g58735875_))
                                       (reverse _post5871_)))))))
              (let ((_generate-values5801_
                     (lambda (_hd5881_ _body5882_)
                       ((letrec ((_lp5884_
                                  (lambda (_rest5886_
                                           _bind5887_
                                           _check5888_
                                           _post5889_)
                                    (let ((_g58925903_
                                           (lambda (_g58935900_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g58935900_))))
                                      (let ((_g58915917_
                                             (lambda (_g58935906_)
                                               ((lambda ()
                                                  (let ((_body5910_
                                                         (if _compiled-body?5798_
                                                             _body5882_
                                                             (gxc#compile-e
                                                              _body5882_))))
                                                    (let ((_body5912_
                                                           (_generate-values-post5803_
                                                            _post5889_
                                                            _body5910_)))
                                                      (let ((_body5914_
                                                             (_generate-values-check5802_
                                                              _check5888_
                                                              _body5912_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind5887_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body5914_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g58906101_
                                               (lambda (_g58935920_)
                                                 (if (gx#stx-pair? _g58935920_)
                                                     (let ((_e58965922_
                                                            (gx#stx-e
                                                             _g58935920_)))
                                                       (let ((_hd58975925_
                                                              (##car _e58965922_))
                                                             (_tl58985927_
                                                              (##cdr _e58965922_)))
                                                         ((lambda (_L5930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5931_)
                    (let ((_g59465971_
                           (lambda (_g59475968_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g59475968_))))
                      (let ((_g59456051_
                             (lambda (_g59475974_)
                               (if (gx#stx-pair? _g59475974_)
                                   (let ((_e59615976_ (gx#stx-e _g59475974_)))
                                     (let ((_hd59625979_ (##car _e59615976_))
                                           (_tl59635981_ (##cdr _e59615976_)))
                                       (if (gx#stx-pair? _tl59635981_)
                                           (let ((_e59645984_
                                                  (gx#stx-e _tl59635981_)))
                                             (let ((_hd59655987_
                                                    (##car _e59645984_))
                                                   (_tl59665989_
                                                    (##cdr _e59645984_)))
                                               (if (gx#stx-null? _tl59665989_)
                                                   ((lambda (_L5992_ _L5993_)
                                                      (let ((_vals6006_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6008_
                                                               (gxc#compile-e
                                                                _L5992_)))
                                                          (let ((_check-values6010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6006_
                          _L5993_)))
                    (let ((_refs6012_
                           (gxc#generate-runtime-let-values-bind
                            _vals6006_
                            _L5993_)))
                      (let ()
                        (_lp5884_
                         _L5930_
                         (foldl cons
                                (cons (cons _vals6006_ (cons _expr6008_ '()))
                                      _bind5887_)
                                (map (lambda (_e60146016_)
                                       (let ((_g60186027_ _e60146016_))
                                         (let ((_E60206031_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g60186027_))))
                                           (let ((_K60216036_
                                                  (lambda (_eid6034_)
                                                    (cons _eid6034_
                                                          (cons '#!void
                                                                '())))))
                                             (if (##pair? _g60186027_)
                                                 (let ((_hd60226039_
                                                        (##car _g60186027_))
                                                       (_tl60236041_
                                                        (##cdr _g60186027_)))
                                                   (let ((_eid6044_
                                                          _hd60226039_))
                                                     (if (##pair? _tl60236041_)
                                                         (let ((_hd60246046_
                                                                (##car _tl60236041_))
                                                               (_tl60256048_
                                                                (##cdr _tl60236041_)))
                                                           (if (##null? _tl60256048_)
                                                               (_K60216036_
                                                                _eid6044_)
                                                               (_E60206031_)))
                                                         (_E60206031_))))
                                                 (_E60206031_))))))
                                     _refs6012_))
                         (cons _check-values6010_ _check5888_)
                         (foldl cons _refs6012_ _post5889_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd59655987_
                                                    _hd59625979_)
                                                   (_g59465971_ _g59475974_))))
                                           (_g59465971_ _g59475974_))))
                                   (_g59465971_ _g59475974_)))))
                        (let ((_g59446098_
                               (lambda (_g59476054_)
                                 (if (gx#stx-pair? _g59476054_)
                                     (let ((_e59506056_
                                            (gx#stx-e _g59476054_)))
                                       (let ((_hd59516059_ (##car _e59506056_))
                                             (_tl59526061_
                                              (##cdr _e59506056_)))
                                         (if (gx#stx-pair? _hd59516059_)
                                             (let ((_e59536064_
                                                    (gx#stx-e _hd59516059_)))
                                               (let ((_hd59546067_
                                                      (##car _e59536064_))
                                                     (_tl59556069_
                                                      (##cdr _e59536064_)))
                                                 (if (gx#stx-null?
                                                      _tl59556069_)
                                                     (if (gx#stx-pair?
                                                          _tl59526061_)
                                                         (let ((_e59566072_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl59526061_)))
                   (let ((_hd59576075_ (##car _e59566072_))
                         (_tl59586077_ (##cdr _e59566072_)))
                     (if (gx#stx-null? _tl59586077_)
                         ((lambda (_L6080_ _L6081_)
                            (let ((_eid6095_
                                   (gxc#generate-runtime-binding-id* _L6081_))
                                  (_expr6096_ (gxc#compile-e _L6080_)))
                              (_lp5884_
                               _L5930_
                               (cons (cons _eid6095_ (cons _expr6096_ '()))
                                     _bind5887_)
                               _check5888_
                               _post5889_)))
                          _hd59576075_
                          _hd59546067_)
                         (_g59456051_ _g59476054_))))
                 (_g59456051_ _g59476054_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g59456051_
                                                      _g59476054_))))
                                             (_g59456051_ _g59476054_))))
                                     (_g59456051_ _g59476054_)))))
                          (_g59446098_ _L5931_)))))
                  _tl58985927_
                  _hd58975925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58915917_
                                                      _g58935920_)))))
                                          (_g58906101_ _rest5886_)))))))
                          _lp5884_)
                        _hd5881_
                        '()
                        '()
                        '()))))
                (let ((_g58055822_
                       (lambda (_g58065819_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g58065819_))))
                  (let ((_g58045868_
                         (lambda (_g58065825_)
                           (if (gx#stx-pair? _g58065825_)
                               (let ((_e58095827_ (gx#stx-e _g58065825_)))
                                 (let ((_hd58105830_ (##car _e58095827_))
                                       (_tl58115832_ (##cdr _e58095827_)))
                                   (if (gx#stx-pair? _tl58115832_)
                                       (let ((_e58125835_
                                              (gx#stx-e _tl58115832_)))
                                         (let ((_hd58135838_
                                                (##car _e58125835_))
                                               (_tl58145840_
                                                (##cdr _e58125835_)))
                                           (if (gx#stx-pair? _tl58145840_)
                                               (let ((_e58155843_
                                                      (gx#stx-e _tl58145840_)))
                                                 (let ((_hd58165846_
                                                        (##car _e58155843_))
                                                       (_tl58175848_
                                                        (##cdr _e58155843_)))
                                                   (if (gx#stx-null?
                                                        _tl58175848_)
                                                       ((lambda (_L5851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5852_)
                  (if (gxc#generate-runtime-simple-let? _L5852_)
                      (_generate-simple5800_ _L5852_ _L5851_)
                      (_generate-values5801_ _L5852_ _L5851_)))
                _hd58165846_
                _hd58135838_)
               (_g58055822_ _g58065825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g58055822_ _g58065825_))))
                                       (_g58055822_ _g58065825_))))
                               (_g58055822_ _g58065825_)))))
                    (_g58045868_ _stx5797_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6110_)
          (let ((_compiled-body?6112_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda5795
             _stx6110_
             _compiled-body?6112_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g9492_
          (let ((_g9491_ (length _g9492_)))
            (cond ((fx= _g9491_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g9492_))
                  ((fx= _g9491_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda5795
                          _g9492_))
                  (else (error "No clause matching arguments" _g9492_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx4916_)
      (let ((_collect-closures4919_
             (lambda (_forms5737_)
               (map (lambda (_e57385740_)
                      (let ((_g57425751_ _e57385740_))
                        (let ((_E57445755_
                               (lambda ()
                                 (error '"No clause matching" _g57425751_))))
                          (let ((_K57455760_
                                 (lambda (_expr5758_)
                                   (gxc#collect-expression-refs _expr5758_))))
                            (if (##pair? _g57425751_)
                                (let ((_hd57465763_ (##car _g57425751_))
                                      (_tl57475765_ (##cdr _g57425751_)))
                                  (if (##pair? _tl57475765_)
                                      (let ((_hd57485768_ (##car _tl57475765_))
                                            (_tl57495770_
                                             (##cdr _tl57475765_)))
                                        (let ((_expr5773_ _hd57485768_))
                                          (if (##null? _tl57495770_)
                                              (_K57455760_ _expr5773_)
                                              (_E57445755_))))
                                      (_E57445755_)))
                                (_E57445755_))))))
                    _forms5737_))))
        (let ((_collect-bindings4920_
               (lambda (_forms5661_)
                 (map (lambda (_e56625664_)
                        (let ((_g56665675_ _e56625664_))
                          (let ((_E56685679_
                                 (lambda ()
                                   (error '"No clause matching" _g56665675_))))
                            (let ((_K56695722_
                                   (lambda (_bind5682_)
                                     ((letrec ((_lp5684_
                                                (lambda (_rest5686_ _r5687_)
                                                  (let ((_rest56885696_
                                                         _rest5686_))
                                                    (let ((_E56915700_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest56885696_))))
              (let ((_else56905704_
                     (lambda ()
                       (if (gx#identifier? _rest5686_)
                           (cons _rest5686_ _r5687_)
                           _r5687_))))
                (let ((_K56925710_
                       (lambda (_rest5707_ _id5708_)
                         (if (gx#identifier? _id5708_)
                             (_lp5684_
                              _rest5707_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id5708_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r5687_))
                             (_lp5684_ _rest5707_ _r5687_)))))
                  (if (##pair? _rest56885696_)
                      (let ((_hd56935713_ (##car _rest56885696_))
                            (_tl56945715_ (##cdr _rest56885696_)))
                        (let ((_id5718_ _hd56935713_))
                          (let ((_rest5720_ _tl56945715_))
                            (_K56925710_ _rest5720_ _id5718_))))
                      (_else56905704_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp5684_)
                                      _bind5682_
                                      '()))))
                              (if (##pair? _g56665675_)
                                  (let ((_hd56705725_ (##car _g56665675_))
                                        (_tl56715727_ (##cdr _g56665675_)))
                                    (let ((_bind5730_ _hd56705725_))
                                      (if (##pair? _tl56715727_)
                                          (let ((_hd56725732_
                                                 (##car _tl56715727_))
                                                (_tl56735734_
                                                 (##cdr _tl56715727_)))
                                            (if (##null? _tl56735734_)
                                                (_K56695722_ _bind5730_)
                                                (_E56685679_)))
                                          (_E56685679_))))
                                  (_E56685679_))))))
                      _forms5661_))))
          (let ((_closure-reference?4924_
                 (lambda (_closure5213_ _bindings5214_)
                   (ormap (lambda (_g52155217_)
                            (table-ref _closure5213_ _g52155217_ '#f))
                          _bindings5214_))))
            (let ((_is-effect-expr?4926_
                   (lambda (_expr5124_)
                     (let ((_g51265136_
                            (lambda (_g51275133_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g51275133_))))
                       (let ((_g51255159_
                              (lambda (_g51275139_)
                                (if (gx#stx-pair? _g51275139_)
                                    (let ((_e51295141_ (gx#stx-e _g51275139_)))
                                      (let ((_hd51305144_ (##car _e51295141_))
                                            (_tl51315146_ (##cdr _e51295141_)))
                                        ((lambda (_L5149_)
                                           (not (memq (gx#stx-e _L5149_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd51305144_)))
                                    (_g51265136_ _g51275139_)))))
                         (_g51255159_ _expr5124_))))))
              (let ((_is-lambda-expr?4927_
                     (lambda (_expr5086_)
                       (let ((_g50885098_
                              (lambda (_g50895095_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g50895095_))))
                         (let ((_g50875121_
                                (lambda (_g50895101_)
                                  (if (gx#stx-pair? _g50895101_)
                                      (let ((_e50915103_
                                             (gx#stx-e _g50895101_)))
                                        (let ((_hd50925106_
                                               (##car _e50915103_))
                                              (_tl50935108_
                                               (##cdr _e50915103_)))
                                          ((lambda (_L5111_)
                                             (memq (gx#stx-e _L5111_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd50925106_)))
                                      (_g50885098_ _g50895101_)))))
                           (_g50875121_ _expr5086_))))))
                (let ((_lift-rec4923_
                       (lambda (_forms5220_)
                         ((letrec ((_lp5222_
                                    (lambda (_rest5224_
                                             _pre5225_
                                             _bind5226_
                                             _init5227_)
                                      (let ((_rest52285236_ _rest5224_))
                                        (let ((_E52315240_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest52285236_))))
                                          (let ((_else52305244_
                                                 (lambda ()
                                                   (values (reverse _pre5225_)
                                                           (reverse _bind5226_)
                                                           (reverse _init5227_)))))
                                            (let ((_K52325435_
                                                   (lambda (_rest5247_
                                                            _bind-hd5248_)
                                                     (let ((_g52525287_
                                                            (lambda (_g52535284_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g52535284_))))
                                                       (let ((_g52515344_
                                                              (lambda (_g52535290_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g52535290_)
                            (let ((_e52775292_ (gx#stx-e _g52535290_)))
                              (let ((_hd52785295_ (##car _e52775292_))
                                    (_tl52795297_ (##cdr _e52775292_)))
                                (if (gx#stx-pair? _tl52795297_)
                                    (let ((_e52805300_
                                           (gx#stx-e _tl52795297_)))
                                      (let ((_hd52815303_ (##car _e52805300_))
                                            (_tl52825305_ (##cdr _e52805300_)))
                                        (if (gx#stx-null? _tl52825305_)
                                            ((lambda (_L5308_ _L5309_)
                                               (let ((_vals5328_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5330_
                                                        (gxc#compile-e
                                                         _L5308_)))
                                                   (let ((_check-values5332_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5328_
                                                           _L5309_)))
                                                     (let ((_refs5334_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5328_
                                                             _L5309_)))
                                                       (let ()
                                                         (_lp5222_
                                                          _rest5247_
                                                          (foldl (lambda (_ref5337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r5338_)
                           (cons (cons (car _ref5337_) (cons '#!void '()))
                                 _r5338_))
                         _pre5225_
                         _refs5334_)
                  _bind5226_
                  (cons (cons 'let
                              (cons (cons (cons _vals5328_
                                                (cons _expr5330_ '()))
                                          '())
                                    (cons _check-values5332_
                                          (cons (map (lambda (_g53395341_)
                                                       (cons 'set!
                                                             _g53395341_))
                                                     _refs5334_)
                                                '()))))
                        _init5227_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd52815303_
                                             _hd52785295_)
                                            (_g52525287_ _g52535290_))))
                                    (_g52525287_ _g52535290_))))
                            (_g52525287_ _g52535290_)))))
                 (let ((_g52505390_
                        (lambda (_g52535347_)
                          (if (gx#stx-pair? _g52535347_)
                              (let ((_e52665349_ (gx#stx-e _g52535347_)))
                                (let ((_hd52675352_ (##car _e52665349_))
                                      (_tl52685354_ (##cdr _e52665349_)))
                                  (if (gx#stx-pair? _hd52675352_)
                                      (let ((_e52695357_
                                             (gx#stx-e _hd52675352_)))
                                        (let ((_hd52705360_
                                               (##car _e52695357_))
                                              (_tl52715362_
                                               (##cdr _e52695357_)))
                                          (if (gx#stx-null? _tl52715362_)
                                              (if (gx#stx-pair? _tl52685354_)
                                                  (let ((_e52725365_
                                                         (gx#stx-e
                                                          _tl52685354_)))
                                                    (let ((_hd52735368_
                                                           (##car _e52725365_))
                                                          (_tl52745370_
                                                           (##cdr _e52725365_)))
                                                      (if (gx#stx-null?
                                                           _tl52745370_)
                                                          ((lambda (_L5373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5374_)
                     (let ((_eid5388_
                            (gxc#generate-runtime-binding-id _L5374_)))
                       (if (_is-lambda-expr?4927_ _L5373_)
                           (_lp5222_
                            _rest5247_
                            _pre5225_
                            (cons (cons _eid5388_
                                        (cons (gxc#compile-e _L5373_) '()))
                                  _bind5226_)
                            _init5227_)
                           (_lp5222_
                            _rest5247_
                            (cons (cons _eid5388_ (cons '#!void '()))
                                  _pre5225_)
                            _bind5226_
                            (cons (cons 'set!
                                        (cons _eid5388_
                                              (cons (gxc#compile-e _L5373_)
                                                    '())))
                                  _init5227_)))))
                   _hd52735368_
                   _hd52705360_)
                  (_g52515344_ _g52535347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g52515344_ _g52535347_))
                                              (_g52515344_ _g52535347_))))
                                      (_g52515344_ _g52535347_))))
                              (_g52515344_ _g52535347_)))))
                   (let ((_g52495432_
                          (lambda (_g52535393_)
                            (if (gx#stx-pair? _g52535393_)
                                (let ((_e52555395_ (gx#stx-e _g52535393_)))
                                  (let ((_hd52565398_ (##car _e52555395_))
                                        (_tl52575400_ (##cdr _e52555395_)))
                                    (if (gx#stx-pair? _hd52565398_)
                                        (let ((_e52585403_
                                               (gx#stx-e _hd52565398_)))
                                          (let ((_hd52595406_
                                                 (##car _e52585403_))
                                                (_tl52605408_
                                                 (##cdr _e52585403_)))
                                            (if (gx#stx-datum? _hd52595406_)
                                                (if (equal? (gx#stx-e
                                                             _hd52595406_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl52605408_)
                                                        (if (gx#stx-pair?
                                                             _tl52575400_)
                                                            (let ((_e52615411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl52575400_)))
                      (let ((_hd52625414_ (##car _e52615411_))
                            (_tl52635416_ (##cdr _e52615411_)))
                        (if (gx#stx-null? _tl52635416_)
                            ((lambda (_L5419_)
                               (_lp5222_
                                _rest5247_
                                _pre5225_
                                _bind5226_
                                (cons (gxc#compile-e _L5419_) _init5227_)))
                             _hd52625414_)
                            (_g52505390_ _g52535393_))))
                    (_g52505390_ _g52535393_))
                (_g52505390_ _g52535393_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g52505390_ _g52535393_))
                                                (_g52505390_ _g52535393_))))
                                        (_g52505390_ _g52535393_))))
                                (_g52505390_ _g52535393_)))))
                     (_g52495432_ _bind-hd5248_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest52285236_)
                                                  (let ((_hd52335438_
                                                         (##car _rest52285236_))
                                                        (_tl52345440_
                                                         (##cdr _rest52285236_)))
                                                    (let ((_bind-hd5443_
                                                           _hd52335438_))
                                                      (let ((_rest5445_
                                                             _tl52345440_))
                                                        (_K52325435_
                                                         _rest5445_
                                                         _bind-hd5443_))))
                                                  (_else52305244_)))))))))
                            _lp5222_)
                          _forms5220_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?4925_
                         (lambda (_hd-bind5162_)
                           (let ((_g51645177_
                                  (lambda (_g51655174_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g51655174_))))
                             (let ((_g51635210_
                                    (lambda (_g51655180_)
                                      (if (gx#stx-pair? _g51655180_)
                                          (let ((_e51675182_
                                                 (gx#stx-e _g51655180_)))
                                            (let ((_hd51685185_
                                                   (##car _e51675182_))
                                                  (_tl51695187_
                                                   (##cdr _e51675182_)))
                                              (if (gx#stx-pair? _tl51695187_)
                                                  (let ((_e51705190_
                                                         (gx#stx-e
                                                          _tl51695187_)))
                                                    (let ((_hd51715193_
                                                           (##car _e51705190_))
                                                          (_tl51725195_
                                                           (##cdr _e51705190_)))
                                                      (if (gx#stx-null?
                                                           _tl51725195_)
                                                          ((lambda (_L5198_)
                                                             (_is-effect-expr?4926_
                                                              _L5198_))
                                                           _hd51715193_)
                                                          (_g51645177_
                                                           _g51655180_))))
                                                  (_g51645177_ _g51655180_))))
                                          (_g51645177_ _g51655180_)))))
                               (_g51635210_ _hd-bind5162_))))))
                    (let ((_lift-pre4921_
                           (lambda (_hd5554_ _bindings5555_ _closures5556_)
                             ((letrec ((_lp5558_
                                        (lambda (_rest-forms5560_
                                                 _rest-bindings5561_
                                                 _rest-closures5562_
                                                 _post-forms5563_
                                                 _post-bindings5564_
                                                 _post-closures5565_
                                                 _pre-forms5566_
                                                 _lifted?5567_)
                                          (let ((_rest-forms55685584_
                                                 _rest-forms5560_)
                                                (_rest-bindings55695586_
                                                 _rest-bindings5561_)
                                                (_rest-closures55705588_
                                                 _rest-closures5562_))
                                            (let ((_E55735592_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms55685584_
                                                            _rest-bindings55695586_
                                                            _rest-closures55705588_))))
                                              (let ((_else55725596_
                                                     (lambda ()
                                                       (if _lifted?5567_
                                                           (_lp5558_
                                                            (reverse _post-forms5563_)
                                                            (reverse _post-bindings5564_)
                                                            (reverse _post-closures5565_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms5566_
                                                            '#f)
                                                           (values (reverse _pre-forms5566_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms5563_)
                           (reverse _post-bindings5564_)
                           (reverse _post-closures5565_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K55745649_
                                                       (lambda (_rest-forms5599_
                                                                _form5600_)
                                                         (let ((_K55755637_
                                                                (lambda (_rest-bindings5602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings5603_)
                          (let ((_K55765625_
                                 (lambda (_rest-closures5605_ _closure5606_)
                                   (if (let ((_$e5608_
                                              (_closure-reference?4924_
                                               _closure5606_
                                               _bindings5603_)))
                                         (if _$e5608_
                                             _$e5608_
                                             (let ((_$e5615_
                                                    (ormap (lambda (_g56105612_)
                                                             (_closure-reference?4924_
                                                              _closure5606_
                                                              _g56105612_))
                                                           _rest-bindings5602_)))
                                               (if _$e5615_
                                                   _$e5615_
                                                   (let ((_$e5622_
                                                          (ormap (lambda (_g56175619_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?4924_
                            _closure5606_
                            _g56175619_))
                         _post-bindings5564_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e5622_
                                                         _$e5622_
                                                         (if (_is-effect-bind?4925_
                                                              _form5600_)
                                                             (find _is-effect-bind?4925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms5563_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp5558_
                                        _rest-forms5599_
                                        _rest-bindings5602_
                                        _rest-closures5605_
                                        (cons _form5600_ _post-forms5563_)
                                        (cons _bindings5603_
                                              _post-bindings5564_)
                                        (cons _closure5606_
                                              _post-closures5565_)
                                        _pre-forms5566_
                                        _lifted?5567_)
                                       (_lp5558_
                                        _rest-forms5599_
                                        _rest-bindings5602_
                                        _rest-closures5605_
                                        _post-forms5563_
                                        _post-bindings5564_
                                        _post-closures5565_
                                        (cons _form5600_ _pre-forms5566_)
                                        '#t)))))
                            (if (##pair? _rest-closures55705588_)
                                (let ((_hd55775628_
                                       (##car _rest-closures55705588_))
                                      (_tl55785630_
                                       (##cdr _rest-closures55705588_)))
                                  (let ((_closure5633_ _hd55775628_))
                                    (let ((_rest-closures5635_ _tl55785630_))
                                      (_K55765625_
                                       _rest-closures5635_
                                       _closure5633_))))
                                (_else55725596_))))))
                   (if (##pair? _rest-bindings55695586_)
                       (let ((_hd55795640_ (##car _rest-bindings55695586_))
                             (_tl55805642_ (##cdr _rest-bindings55695586_)))
                         (let ((_bindings5645_ _hd55795640_))
                           (let ((_rest-bindings5647_ _tl55805642_))
                             (_K55755637_
                              _rest-bindings5647_
                              _bindings5645_))))
                       (_else55725596_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms55685584_)
                                                      (let ((_hd55815652_
                                                             (##car _rest-forms55685584_))
                                                            (_tl55825654_
                                                             (##cdr _rest-forms55685584_)))
                                                        (let ((_form5657_
                                                               _hd55815652_))
                                                          (let ((_rest-forms5659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl55825654_))
                    (_K55745649_ _rest-forms5659_ _form5657_))))
              (_else55725596_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp5558_)
                              _hd5554_
                              _bindings5555_
                              _closures5556_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post4922_
                             (lambda (_hd5447_ _bindings5448_ _closures5449_)
                               ((letrec ((_lp5451_
                                          (lambda (_rest-forms5453_
                                                   _rest-bindings5454_
                                                   _rest-closures5455_
                                                   _pre-forms5456_
                                                   _pre-bindings5457_
                                                   _pre-closures5458_
                                                   _post-forms5459_
                                                   _lifted?5460_)
                                            (let ((_rest-forms54615477_
                                                   _rest-forms5453_)
                                                  (_rest-bindings54625479_
                                                   _rest-bindings5454_)
                                                  (_rest-closures54635481_
                                                   _rest-closures5455_))
                                              (let ((_E54665485_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms54615477_
                                                              _rest-bindings54625479_
                                                              _rest-closures54635481_))))
                                                (let ((_else54655489_
                                                       (lambda ()
                                                         (if _lifted?5460_
                                                             (_lp5451_
                                                              (reverse _pre-forms5456_)
                                                              (reverse _pre-bindings5457_)
                                                              (reverse _pre-closures5458_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms5459_
                                                              '#f)
                                                             (values _post-forms5459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms5456_
                             _pre-bindings5457_
                             _pre-closures5458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K54675542_
                                                         (lambda (_rest-forms5492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form5493_)
                   (let ((_K54685530_
                          (lambda (_rest-bindings5495_ _bindings5496_)
                            (let ((_K54695518_
                                   (lambda (_rest-closures5498_ _closure5499_)
                                     (if (let ((_$e5501_
                                                (_closure-reference?4924_
                                                 _closure5499_
                                                 _bindings5496_)))
                                           (if _$e5501_
                                               _$e5501_
                                               (let ((_$e5508_
                                                      (ormap (lambda (_g55035505_)
                                                               (_closure-reference?4924_
                                                                _g55035505_
                                                                _bindings5496_))
                                                             _rest-closures5498_)))
                                                 (if _$e5508_
                                                     _$e5508_
                                                     (let ((_$e5515_
                                                            (ormap (lambda (_g55105512_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?4924_
                              _g55105512_
                              _bindings5496_))
                           _pre-closures5458_)))
               (if _$e5515_
                   _$e5515_
                   (if (_is-effect-bind?4925_ _form5493_)
                       (find _is-effect-bind?4925_ _pre-forms5456_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp5451_
                                          _rest-forms5492_
                                          _rest-bindings5495_
                                          _rest-closures5498_
                                          (cons _form5493_ _pre-forms5456_)
                                          (cons _bindings5496_
                                                _pre-bindings5457_)
                                          (cons _closure5499_
                                                _pre-closures5458_)
                                          _post-forms5459_
                                          _lifted?5460_)
                                         (_lp5451_
                                          _rest-forms5492_
                                          _rest-bindings5495_
                                          _rest-closures5498_
                                          _pre-forms5456_
                                          _pre-bindings5457_
                                          _pre-closures5458_
                                          (cons _form5493_ _post-forms5459_)
                                          '#t)))))
                              (if (##pair? _rest-closures54635481_)
                                  (let ((_hd54705521_
                                         (##car _rest-closures54635481_))
                                        (_tl54715523_
                                         (##cdr _rest-closures54635481_)))
                                    (let ((_closure5526_ _hd54705521_))
                                      (let ((_rest-closures5528_ _tl54715523_))
                                        (_K54695518_
                                         _rest-closures5528_
                                         _closure5526_))))
                                  (_else54655489_))))))
                     (if (##pair? _rest-bindings54625479_)
                         (let ((_hd54725533_ (##car _rest-bindings54625479_))
                               (_tl54735535_ (##cdr _rest-bindings54625479_)))
                           (let ((_bindings5538_ _hd54725533_))
                             (let ((_rest-bindings5540_ _tl54735535_))
                               (_K54685530_
                                _rest-bindings5540_
                                _bindings5538_))))
                         (_else54655489_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms54615477_)
                                                        (let ((_hd54745545_
                                                               (##car _rest-forms54615477_))
                                                              (_tl54755547_
                                                               (##cdr _rest-forms54615477_)))
                                                          (let ((_form5550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd54745545_))
                    (let ((_rest-forms5552_ _tl54755547_))
                      (_K54675542_ _rest-forms5552_ _form5550_))))
                (_else54655489_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5451_)
                                (reverse _hd5447_)
                                (reverse _bindings5448_)
                                (reverse _closures5449_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize4918_
                               (lambda (_forms5775_)
                                 (let ((_closures5777_
                                        (_collect-closures4919_ _forms5775_)))
                                   (let ((_bindings5779_
                                          (_collect-bindings4920_
                                           _forms5775_)))
                                     (let ((_g9495_ (_lift-pre4921_
                                                     _forms5775_
                                                     _bindings5779_
                                                     _closures5777_)))
                                       (begin
                                         (let ((_g9496_ (values-count
                                                         _g9495_)))
                                           (if (not (fx= _g9496_ 4))
                                               (error "Context expects 4 values"
                                                      _g9496_)))
                                         (let ((_pre-bind5781_
                                                (values-ref _g9495_ 0))
                                               (_forms5782_
                                                (values-ref _g9495_ 1))
                                               (_bindings5783_
                                                (values-ref _g9495_ 2))
                                               (_closures5784_
                                                (values-ref _g9495_ 3)))
                                           (let ((_g9497_ (_lift-post4922_
                                                           _forms5782_
                                                           _bindings5783_
                                                           _closures5784_)))
                                             (begin
                                               (let ((_g9498_ (values-count
                                                               _g9497_)))
                                                 (if (not (fx= _g9498_ 4))
                                                     (error "Context expects 4 values"
                                                            _g9498_)))
                                               (let ((_post-bind5786_
                                                      (values-ref _g9497_ 0))
                                                     (_forms5787_
                                                      (values-ref _g9497_ 1))
                                                     (_bindings5788_
                                                      (values-ref _g9497_ 2))
                                                     (_closures5789_
                                                      (values-ref _g9497_ 3)))
                                                 (let ((_g9499_ (_lift-rec4923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms5787_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g9500_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g9499_)))
               (if (not (fx= _g9500_ 3))
                   (error "Context expects 3 values" _g9500_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre5791_
                                                            (values-ref
                                                             _g9499_
                                                             0))
                                                           (_rec-bind5792_
                                                            (values-ref
                                                             _g9499_
                                                             1))
                                                           (_rec-init5793_
                                                            (values-ref
                                                             _g9499_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind5781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre5791_
                         _rec-bind5792_
                         _rec-init5793_
                         _post-bind5786_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*4928_
                                    (lambda (_hd5015_ _body5016_)
                                      (let ((_hd50175025_ _hd5015_))
                                        (let ((_E50205029_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd50175025_))))
                                          (let ((_else50195033_
                                                 (lambda () _body5016_)))
                                            (let ((_K50215074_
                                                   (lambda (_rest5036_
                                                            _bind5037_)
                                                     (let ((_bind50385047_
                                                            _bind5037_))
                                                       (let ((_E50405051_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind50385047_))))
                 (let ((_K50415057_
                        (lambda (_expr5054_ _hd5055_)
                          (if (gx#stx-ormap gx#identifier? _hd5055_)
                              (gxc#generate-runtime-let-values%__opt-lambda6216
                               (cons '%#let-values
                                     (cons (cons _bind5037_ '())
                                           (cons (_generate-let*4928_
                                                  _rest5036_
                                                  _body5016_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5054_)
                                          (cons (_generate-let*4928_
                                                 _rest5036_
                                                 _body5016_)
                                                '())))))))
                   (if (##pair? _bind50385047_)
                       (let ((_hd50425060_ (##car _bind50385047_))
                             (_tl50435062_ (##cdr _bind50385047_)))
                         (let ((_hd5065_ _hd50425060_))
                           (if (##pair? _tl50435062_)
                               (let ((_hd50445067_ (##car _tl50435062_))
                                     (_tl50455069_ (##cdr _tl50435062_)))
                                 (let ((_expr5072_ _hd50445067_))
                                   (if (##null? _tl50455069_)
                                       (_K50415057_ _expr5072_ _hd5065_)
                                       (_E50405051_))))
                               (_E50405051_))))
                       (_E50405051_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd50175025_)
                                                  (let ((_hd50225077_
                                                         (##car _hd50175025_))
                                                        (_tl50235079_
                                                         (##cdr _hd50175025_)))
                                                    (let ((_bind5082_
                                                           _hd50225077_))
                                                      (let ((_rest5084_
                                                             _tl50235079_))
                                                        (_K50215074_
                                                         _rest5084_
                                                         _bind5082_))))
                                                  (_else50195033_)))))))))
                            (let ((_g49304947_
                                   (lambda (_g49314944_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g49314944_))))
                              (let ((_g49295012_
                                     (lambda (_g49314950_)
                                       (if (gx#stx-pair? _g49314950_)
                                           (let ((_e49344952_
                                                  (gx#stx-e _g49314950_)))
                                             (let ((_hd49354955_
                                                    (##car _e49344952_))
                                                   (_tl49364957_
                                                    (##cdr _e49344952_)))
                                               (if (gx#stx-pair? _tl49364957_)
                                                   (let ((_e49374960_
                                                          (gx#stx-e
                                                           _tl49364957_)))
                                                     (let ((_hd49384963_
                                                            (##car _e49374960_))
                                                           (_tl49394965_
                                                            (##cdr _e49374960_)))
                                                       (if (gx#stx-pair?
                                                            _tl49394965_)
                                                           (let ((_e49404968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl49394965_)))
                     (let ((_hd49414971_ (##car _e49404968_))
                           (_tl49424973_ (##cdr _e49404968_)))
                       (if (gx#stx-null? _tl49424973_)
                           ((lambda (_L4976_ _L4977_)
                              (let ((_g9493_ (_linearize4918_ _L4977_)))
                                (begin
                                  (let ((_g9494_ (values-count _g9493_)))
                                    (if (not (fx= _g9494_ 5))
                                        (error "Context expects 5 values"
                                               _g9494_)))
                                  (let ((_pre4993_ (values-ref _g9493_ 0))
                                        (_rec-pre4994_ (values-ref _g9493_ 1))
                                        (_rec-bind4995_ (values-ref _g9493_ 2))
                                        (_rec-init4996_ (values-ref _g9493_ 3))
                                        (_post4997_ (values-ref _g9493_ 4)))
                                    (let ((_body4999_ (gxc#compile-e _L4976_)))
                                      (let ((_body5001_
                                             (if (null? _post4997_)
                                                 _body4999_
                                                 (_generate-let*4928_
                                                  _post4997_
                                                  _body4999_))))
                                        (let ((_body5003_
                                               (if (null? _rec-init4996_)
                                                   _body5001_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body5001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init4996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5005_
                                                 (if (null? _rec-bind4995_)
                                                     _body5003_
                                                     (cons 'letrec
                                                           (cons _rec-bind4995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5003_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5007_
                                                   (if (null? _rec-pre4994_)
                                                       _body5005_
                                                       (cons 'let
                                                             (cons _rec-pre4994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5005_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5009_
                                                     (if (null? _pre4993_)
                                                         _body5007_
                                                         (_generate-let*4928_
                                                          _pre4993_
                                                          _body5007_))))
                                                (let () _body5009_)))))))))))
                            _hd49414971_
                            _hd49384963_)
                           (_g49304947_ _g49314950_))))
                   (_g49304947_ _g49314950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g49304947_ _g49314950_))))
                                           (_g49304947_ _g49314950_)))))
                                (_g49295012_ _stx4916_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd4809_)
      ((letrec ((_lp4811_
                 (lambda (_rest4813_)
                   (let ((_g48174838_
                          (lambda (_g48184835_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g48184835_))))
                     (let ((_g48164845_
                            (lambda (_g48184841_) ((lambda () '#f)))))
                       (let ((_g48154852_
                              (lambda (_g48184848_)
                                (if (gx#stx-null? _g48184848_)
                                    ((lambda () '#t))
                                    (_g48164845_ _g48184848_)))))
                         (let ((_g48144913_
                                (lambda (_g48184855_)
                                  (if (gx#stx-pair? _g48184855_)
                                      (let ((_e48224857_
                                             (gx#stx-e _g48184855_)))
                                        (let ((_hd48234860_
                                               (##car _e48224857_))
                                              (_tl48244862_
                                               (##cdr _e48224857_)))
                                          (if (gx#stx-pair? _hd48234860_)
                                              (let ((_e48254865_
                                                     (gx#stx-e _hd48234860_)))
                                                (let ((_hd48264868_
                                                       (##car _e48254865_))
                                                      (_tl48274870_
                                                       (##cdr _e48254865_)))
                                                  (if (gx#stx-pair?
                                                       _hd48264868_)
                                                      (let ((_e48284873_
                                                             (gx#stx-e
                                                              _hd48264868_)))
                                                        (let ((_hd48294876_
                                                               (##car _e48284873_))
                                                              (_tl48304878_
                                                               (##cdr _e48284873_)))
                                                          (if (gx#stx-null?
                                                               _tl48304878_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl48274870_)
                          (let ((_e48314881_ (gx#stx-e _tl48274870_)))
                            (let ((_hd48324884_ (##car _e48314881_))
                                  (_tl48334886_ (##cdr _e48314881_)))
                              (if (gx#stx-null? _tl48334886_)
                                  ((lambda (_L4889_ _L4890_ _L4891_)
                                     (_lp4811_ _L4889_))
                                   _tl48244862_
                                   _hd48324884_
                                   _hd48294876_)
                                  (_g48154852_ _g48184855_))))
                          (_g48154852_ _g48184855_))
                      (_g48154852_ _g48184855_))))
              (_g48154852_ _g48184855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g48154852_ _g48184855_))))
                                      (_g48154852_ _g48184855_)))))
                           (_g48144913_ _rest4813_))))))))
         _lp4811_)
       _hd4809_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form4733_ _hd4734_ _body4735_ _compiled-body?4736_)
      (let ((_generate14738_
             (lambda (_bind4740_)
               (let ((_g47424759_
                      (lambda (_g47434756_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g47434756_))))
                 (let ((_g47414806_
                        (lambda (_g47434762_)
                          (if (gx#stx-pair? _g47434762_)
                              (let ((_e47464764_ (gx#stx-e _g47434762_)))
                                (let ((_hd47474767_ (##car _e47464764_))
                                      (_tl47484769_ (##cdr _e47464764_)))
                                  (if (gx#stx-pair? _hd47474767_)
                                      (let ((_e47494772_
                                             (gx#stx-e _hd47474767_)))
                                        (let ((_hd47504775_
                                               (##car _e47494772_))
                                              (_tl47514777_
                                               (##cdr _e47494772_)))
                                          (if (gx#stx-null? _tl47514777_)
                                              (if (gx#stx-pair? _tl47484769_)
                                                  (let ((_e47524780_
                                                         (gx#stx-e
                                                          _tl47484769_)))
                                                    (let ((_hd47534783_
                                                           (##car _e47524780_))
                                                          (_tl47544785_
                                                           (##cdr _e47524780_)))
                                                      (if (gx#stx-null?
                                                           _tl47544785_)
                                                          ((lambda (_L4788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4789_)
                     (cons (gxc#generate-runtime-binding-id* _L4789_)
                           (cons (gxc#compile-e _L4788_) '())))
                   _hd47534783_
                   _hd47504775_)
                  (_g47424759_ _g47434762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g47424759_ _g47434762_))
                                              (_g47424759_ _g47434762_))))
                                      (_g47424759_ _g47434762_))))
                              (_g47424759_ _g47434762_)))))
                   (_g47414806_ _bind4740_))))))
        (cons _form4733_
              (cons (map _generate14738_ _hd4734_)
                    (cons (if _compiled-body?4736_
                              _body4735_
                              (gxc#compile-e _body4735_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx4644_)
      (letrec ((_generate14646_
                (lambda (_datum4698_)
                  (if (let ((_$e4700_ (null? _datum4698_)))
                        (if _$e4700_
                            _$e4700_
                            (let ((_$e4703_ (symbol? _datum4698_)))
                              (if _$e4703_
                                  _$e4703_
                                  (gx#self-quoting? _datum4698_)))))
                      _datum4698_
                      (if (uninterned-symbol? _datum4698_)
                          (gxc#generate-runtime-gensym-reference _datum4698_)
                          (if (pair? _datum4698_)
                              (cons (_generate14646_ (car _datum4698_))
                                    (_generate14646_ (cdr _datum4698_)))
                              (if (box? _datum4698_)
                                  (box (_generate14646_ (unbox _datum4698_)))
                                  (if (vector? _datum4698_)
                                      (vector-map _generate14646_ _datum4698_)
                                      (if (let ((_$e4706_
                                                 (s8vector? _datum4698_)))
                                            (if _$e4706_
                                                _$e4706_
                                                (let ((_$e4709_
                                                       (u8vector?
                                                        _datum4698_)))
                                                  (if _$e4709_
                                                      _$e4709_
                                                      (let ((_$e4712_
                                                             (s16vector?
                                                              _datum4698_)))
                                                        (if _$e4712_
                                                            _$e4712_
                                                            (let ((_$e4715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum4698_)))
                      (if _$e4715_
                          _$e4715_
                          (let ((_$e4718_ (s32vector? _datum4698_)))
                            (if _$e4718_
                                _$e4718_
                                (let ((_$e4721_ (u32vector? _datum4698_)))
                                  (if _$e4721_
                                      _$e4721_
                                      (let ((_$e4724_
                                             (s64vector? _datum4698_)))
                                        (if _$e4724_
                                            _$e4724_
                                            (let ((_$e4727_
                                                   (u64vector? _datum4698_)))
                                              (if _$e4727_
                                                  _$e4727_
                                                  (let ((_$e4730_
                                                         (f32vector?
                                                          _datum4698_)))
                                                    (if _$e4730_
                                                        _$e4730_
                                                        (f64vector?
                                                         _datum4698_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum4698_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx4644_))))))))))
        (let ((_g46484661_
               (lambda (_g46494658_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46494658_))))
          (let ((_g46474695_
                 (lambda (_g46494664_)
                   (if (gx#stx-pair? _g46494664_)
                       (let ((_e46514666_ (gx#stx-e _g46494664_)))
                         (let ((_hd46524669_ (##car _e46514666_))
                               (_tl46534671_ (##cdr _e46514666_)))
                           (if (gx#stx-pair? _tl46534671_)
                               (let ((_e46544674_ (gx#stx-e _tl46534671_)))
                                 (let ((_hd46554677_ (##car _e46544674_))
                                       (_tl46564679_ (##cdr _e46544674_)))
                                   (if (gx#stx-null? _tl46564679_)
                                       ((lambda (_L4682_)
                                          (cons 'quote
                                                (cons (_generate14646_
                                                       (gx#stx-e _L4682_))
                                                      '())))
                                        _hd46554677_)
                                       (_g46484661_ _g46494664_))))
                               (_g46484661_ _g46494664_))))
                       (_g46484661_ _g46494664_)))))
            (_g46474695_ _stx4644_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx4606_)
      (let ((_g46084618_
             (lambda (_g46094615_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46094615_))))
        (let ((_g46074641_
               (lambda (_g46094621_)
                 (if (gx#stx-pair? _g46094621_)
                     (let ((_e46114623_ (gx#stx-e _g46094621_)))
                       (let ((_hd46124626_ (##car _e46114623_))
                             (_tl46134628_ (##cdr _e46114623_)))
                         ((lambda (_L4631_) (map gxc#compile-e _L4631_))
                          _tl46134628_)))
                     (_g46084618_ _g46094621_)))))
          (_g46074641_ _stx4606_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx4568_)
      (let ((_g45704580_
             (lambda (_g45714577_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45714577_))))
        (let ((_g45694603_
               (lambda (_g45714583_)
                 (if (gx#stx-pair? _g45714583_)
                     (let ((_e45734585_ (gx#stx-e _g45714583_)))
                       (let ((_hd45744588_ (##car _e45734585_))
                             (_tl45754590_ (##cdr _e45734585_)))
                         ((lambda (_L4593_)
                            (cons 'if (map gxc#compile-e _L4593_)))
                          _tl45754590_)))
                     (_g45704580_ _g45714583_)))))
          (_g45694603_ _stx4568_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx4517_)
      (let ((_g45194532_
             (lambda (_g45204529_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45204529_))))
        (let ((_g45184565_
               (lambda (_g45204535_)
                 (if (gx#stx-pair? _g45204535_)
                     (let ((_e45224537_ (gx#stx-e _g45204535_)))
                       (let ((_hd45234540_ (##car _e45224537_))
                             (_tl45244542_ (##cdr _e45224537_)))
                         (if (gx#stx-pair? _tl45244542_)
                             (let ((_e45254545_ (gx#stx-e _tl45244542_)))
                               (let ((_hd45264548_ (##car _e45254545_))
                                     (_tl45274550_ (##cdr _e45254545_)))
                                 (if (gx#stx-null? _tl45274550_)
                                     ((lambda (_L4553_)
                                        (gxc#generate-runtime-binding-id
                                         _L4553_))
                                      _hd45264548_)
                                     (_g45194532_ _g45204535_))))
                             (_g45194532_ _g45204535_))))
                     (_g45194532_ _g45204535_)))))
          (_g45184565_ _stx4517_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx4450_)
      (let ((_g44524469_
             (lambda (_g44534466_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44534466_))))
        (let ((_g44514514_
               (lambda (_g44534472_)
                 (if (gx#stx-pair? _g44534472_)
                     (let ((_e44564474_ (gx#stx-e _g44534472_)))
                       (let ((_hd44574477_ (##car _e44564474_))
                             (_tl44584479_ (##cdr _e44564474_)))
                         (if (gx#stx-pair? _tl44584479_)
                             (let ((_e44594482_ (gx#stx-e _tl44584479_)))
                               (let ((_hd44604485_ (##car _e44594482_))
                                     (_tl44614487_ (##cdr _e44594482_)))
                                 (if (gx#stx-pair? _tl44614487_)
                                     (let ((_e44624490_
                                            (gx#stx-e _tl44614487_)))
                                       (let ((_hd44634493_ (##car _e44624490_))
                                             (_tl44644495_
                                              (##cdr _e44624490_)))
                                         (if (gx#stx-null? _tl44644495_)
                                             ((lambda (_L4498_ _L4499_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L4499_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4498_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd44634493_
                                              _hd44604485_)
                                             (_g44524469_ _g44534472_))))
                                     (_g44524469_ _g44534472_))))
                             (_g44524469_ _g44534472_))))
                     (_g44524469_ _g44534472_)))))
          (_g44514514_ _stx4450_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4383_)
      (let ((_g43854402_
             (lambda (_g43864399_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43864399_))))
        (let ((_g43844447_
               (lambda (_g43864405_)
                 (if (gx#stx-pair? _g43864405_)
                     (let ((_e43894407_ (gx#stx-e _g43864405_)))
                       (let ((_hd43904410_ (##car _e43894407_))
                             (_tl43914412_ (##cdr _e43894407_)))
                         (if (gx#stx-pair? _tl43914412_)
                             (let ((_e43924415_ (gx#stx-e _tl43914412_)))
                               (let ((_hd43934418_ (##car _e43924415_))
                                     (_tl43944420_ (##cdr _e43924415_)))
                                 (if (gx#stx-pair? _tl43944420_)
                                     (let ((_e43954423_
                                            (gx#stx-e _tl43944420_)))
                                       (let ((_hd43964426_ (##car _e43954423_))
                                             (_tl43974428_
                                              (##cdr _e43954423_)))
                                         (if (gx#stx-null? _tl43974428_)
                                             ((lambda (_L4431_ _L4432_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4431_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4432_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd43964426_
                                              _hd43934418_)
                                             (_g43854402_ _g43864405_))))
                                     (_g43854402_ _g43864405_))))
                             (_g43854402_ _g43864405_))))
                     (_g43854402_ _g43864405_)))))
          (_g43844447_ _stx4383_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4316_)
      (let ((_g43184335_
             (lambda (_g43194332_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43194332_))))
        (let ((_g43174380_
               (lambda (_g43194338_)
                 (if (gx#stx-pair? _g43194338_)
                     (let ((_e43224340_ (gx#stx-e _g43194338_)))
                       (let ((_hd43234343_ (##car _e43224340_))
                             (_tl43244345_ (##cdr _e43224340_)))
                         (if (gx#stx-pair? _tl43244345_)
                             (let ((_e43254348_ (gx#stx-e _tl43244345_)))
                               (let ((_hd43264351_ (##car _e43254348_))
                                     (_tl43274353_ (##cdr _e43254348_)))
                                 (if (gx#stx-pair? _tl43274353_)
                                     (let ((_e43284356_
                                            (gx#stx-e _tl43274353_)))
                                       (let ((_hd43294359_ (##car _e43284356_))
                                             (_tl43304361_
                                              (##cdr _e43284356_)))
                                         (if (gx#stx-null? _tl43304361_)
                                             ((lambda (_L4364_ _L4365_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4364_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4365_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd43294359_
                                              _hd43264351_)
                                             (_g43184335_ _g43194338_))))
                                     (_g43184335_ _g43194338_))))
                             (_g43184335_ _g43194338_))))
                     (_g43184335_ _g43194338_)))))
          (_g43174380_ _stx4316_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4233_)
      (let ((_g42354256_
             (lambda (_g42364253_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g42364253_))))
        (let ((_g42344313_
               (lambda (_g42364259_)
                 (if (gx#stx-pair? _g42364259_)
                     (let ((_e42404261_ (gx#stx-e _g42364259_)))
                       (let ((_hd42414264_ (##car _e42404261_))
                             (_tl42424266_ (##cdr _e42404261_)))
                         (if (gx#stx-pair? _tl42424266_)
                             (let ((_e42434269_ (gx#stx-e _tl42424266_)))
                               (let ((_hd42444272_ (##car _e42434269_))
                                     (_tl42454274_ (##cdr _e42434269_)))
                                 (if (gx#stx-pair? _tl42454274_)
                                     (let ((_e42464277_
                                            (gx#stx-e _tl42454274_)))
                                       (let ((_hd42474280_ (##car _e42464277_))
                                             (_tl42484282_
                                              (##cdr _e42464277_)))
                                         (if (gx#stx-pair? _tl42484282_)
                                             (let ((_e42494285_
                                                    (gx#stx-e _tl42484282_)))
                                               (let ((_hd42504288_
                                                      (##car _e42494285_))
                                                     (_tl42514290_
                                                      (##cdr _e42494285_)))
                                                 (if (gx#stx-null?
                                                      _tl42514290_)
                                                     ((lambda (_L4293_
                                                               _L4294_
                                                               _L4295_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4293_)
                            (cons (gxc#compile-e _L4294_)
                                  (cons (gxc#compile-e _L4295_)
                                        (cons ''#f '()))))))
              _hd42504288_
              _hd42474280_
              _hd42444272_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42354256_
                                                      _g42364259_))))
                                             (_g42354256_ _g42364259_))))
                                     (_g42354256_ _g42364259_))))
                             (_g42354256_ _g42364259_))))
                     (_g42354256_ _g42364259_)))))
          (_g42344313_ _stx4233_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4134_)
      (let ((_g41364161_
             (lambda (_g41374158_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g41374158_))))
        (let ((_g41354230_
               (lambda (_g41374164_)
                 (if (gx#stx-pair? _g41374164_)
                     (let ((_e41424166_ (gx#stx-e _g41374164_)))
                       (let ((_hd41434169_ (##car _e41424166_))
                             (_tl41444171_ (##cdr _e41424166_)))
                         (if (gx#stx-pair? _tl41444171_)
                             (let ((_e41454174_ (gx#stx-e _tl41444171_)))
                               (let ((_hd41464177_ (##car _e41454174_))
                                     (_tl41474179_ (##cdr _e41454174_)))
                                 (if (gx#stx-pair? _tl41474179_)
                                     (let ((_e41484182_
                                            (gx#stx-e _tl41474179_)))
                                       (let ((_hd41494185_ (##car _e41484182_))
                                             (_tl41504187_
                                              (##cdr _e41484182_)))
                                         (if (gx#stx-pair? _tl41504187_)
                                             (let ((_e41514190_
                                                    (gx#stx-e _tl41504187_)))
                                               (let ((_hd41524193_
                                                      (##car _e41514190_))
                                                     (_tl41534195_
                                                      (##cdr _e41514190_)))
                                                 (if (gx#stx-pair?
                                                      _tl41534195_)
                                                     (let ((_e41544198_
                                                            (gx#stx-e
                                                             _tl41534195_)))
                                                       (let ((_hd41554201_
                                                              (##car _e41544198_))
                                                             (_tl41564203_
                                                              (##cdr _e41544198_)))
                                                         (if (gx#stx-null?
                                                              _tl41564203_)
                                                             ((lambda (_L4206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4207_
                               _L4208_
                               _L4209_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4207_)
                                    (cons (gxc#compile-e _L4206_)
                                          (cons (gxc#compile-e _L4208_)
                                                (cons (gxc#compile-e _L4209_)
                                                      (cons ''#f '())))))))
                      _hd41554201_
                      _hd41524193_
                      _hd41494185_
                      _hd41464177_)
                     (_g41364161_ _g41374164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g41364161_
                                                      _g41374164_))))
                                             (_g41364161_ _g41374164_))))
                                     (_g41364161_ _g41374164_))))
                             (_g41364161_ _g41374164_))))
                     (_g41364161_ _g41374164_)))))
          (_g41354230_ _stx4134_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4043_)
      (let ((_g40454055_
             (lambda (_g40464052_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40464052_))))
        (let ((_g40444131_
               (lambda (_g40464058_)
                 (if (gx#stx-pair? _g40464058_)
                     (let ((_e40484060_ (gx#stx-e _g40464058_)))
                       (let ((_hd40494063_ (##car _e40484060_))
                             (_tl40504065_ (##cdr _e40484060_)))
                         ((lambda (_L4068_)
                            (let ((_ht4078_ (make-hash-table-eq)))
                              ((letrec ((_lp4080_
                                         (lambda (_rest4082_ _loads4083_)
                                           (let ((_K4085_ (lambda (_ctx4124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4125_)
                    (let ((_id4127_
                           (##structure-ref
                            _ctx4124_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4078_ _id4127_ '#f)
                          (_lp4080_ _rest4125_ _loads4083_)
                          (let ((_rt4129_
                                 (string-append
                                  (symbol->string _id4127_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht4078_ _id4127_ _rt4129_)
                              (_lp4080_
                               _rest4125_
                               (cons _rt4129_ _loads4083_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest40864094_ _rest4082_))
                                               (let ((_E40894098_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest40864094_))))
                                                 (let ((_else40884106_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g41014103_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g41014103_))
                             (reverse _loads4083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K40904112_
                                                          (lambda (_rest4109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4110_)
                    (if (##structure-instance-of?
                         _in4110_
                         'gx#module-context::t)
                        (_K4085_ _in4110_ _rest4109_)
                        (if (##structure-direct-instance-of?
                             _in4110_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4110_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4080_ _rest4109_ _loads4083_)
                                (_K4085_ (##structure-ref
                                          (##structure-ref
                                           _in4110_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4109_))
                            (if (##structure-direct-instance-of?
                                 _in4110_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4110_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4080_ _rest4109_ _loads4083_)
                                    (_K4085_ (##structure-ref
                                              _in4110_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4109_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4043_
                                 _in4110_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest40864094_)
                                                         (let ((_hd40914115_
                                                                (##car _rest40864094_))
                                                               (_tl40924117_
                                                                (##cdr _rest40864094_)))
                                                           (let ((_in4120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd40914115_))
                     (let ((_rest4122_ _tl40924117_))
                       (_K40904112_ _rest4122_ _in4120_))))
                 (_else40884106_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4080_)
                               _L4068_
                               '())))
                          _tl40504065_)))
                     (_g40454055_ _g40464058_)))))
          (_g40444131_ _stx4043_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx3984_)
      (let ((_generate-quote3986_
             (lambda (_q4041_)
               (if (gx#identifier? _q4041_)
                   (gxc#generate-runtime-identifier _q4041_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx3984_
                    _q4041_)))))
        (let ((_g39884001_
               (lambda (_g39893998_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g39893998_))))
          (let ((_g39874038_
                 (lambda (_g39894004_)
                   (if (gx#stx-pair? _g39894004_)
                       (let ((_e39914006_ (gx#stx-e _g39894004_)))
                         (let ((_hd39924009_ (##car _e39914006_))
                               (_tl39934011_ (##cdr _e39914006_)))
                           (if (gx#stx-pair? _tl39934011_)
                               (let ((_e39944014_ (gx#stx-e _tl39934011_)))
                                 (let ((_hd39954017_ (##car _e39944014_))
                                       (_tl39964019_ (##cdr _e39944014_)))
                                   (if (gx#stx-null? _tl39964019_)
                                       ((lambda (_L4022_)
                                          (let ((_gid4035_
                                                 (gxc#generate-runtime-temporary__opt-lambda8473
                                                  '#t))
                                                (_quote-e4036_
                                                 (_generate-quote3986_
                                                  _L4022_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4036_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4035_)))
                                        _hd39954017_)
                                       (_g39884001_ _g39894004_))))
                               (_g39884001_ _g39894004_))))
                       (_g39884001_ _g39894004_)))))
            (_g39874038_ _stx3984_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx3917_)
      (let ((_g39193936_
             (lambda (_g39203933_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g39203933_))))
        (let ((_g39183981_
               (lambda (_g39203939_)
                 (if (gx#stx-pair? _g39203939_)
                     (let ((_e39233941_ (gx#stx-e _g39203939_)))
                       (let ((_hd39243944_ (##car _e39233941_))
                             (_tl39253946_ (##cdr _e39233941_)))
                         (if (gx#stx-pair? _tl39253946_)
                             (let ((_e39263949_ (gx#stx-e _tl39253946_)))
                               (let ((_hd39273952_ (##car _e39263949_))
                                     (_tl39283954_ (##cdr _e39263949_)))
                                 (if (gx#stx-pair? _tl39283954_)
                                     (let ((_e39293957_
                                            (gx#stx-e _tl39283954_)))
                                       (let ((_hd39303960_ (##car _e39293957_))
                                             (_tl39313962_
                                              (##cdr _e39293957_)))
                                         (if (gx#stx-null? _tl39313962_)
                                             ((lambda (_L3965_ _L3966_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L3966_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3965_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd39303960_
                                              _hd39273952_)
                                             (_g39193936_ _g39203939_))))
                                     (_g39193936_ _g39203939_))))
                             (_g39193936_ _g39203939_))))
                     (_g39193936_ _g39203939_)))))
          (_g39183981_ _stx3917_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx3866_ _state3867_)
      (let ((_g38693879_
             (lambda (_g38703876_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38703876_))))
        (let ((_g38683914_
               (lambda (_g38703882_)
                 (if (gx#stx-pair? _g38703882_)
                     (let ((_e38723884_ (gx#stx-e _g38703882_)))
                       (let ((_hd38733887_ (##car _e38723884_))
                             (_tl38743889_ (##cdr _e38723884_)))
                         ((lambda (_L3892_)
                            (let ((_c-body3906_
                                   (map (lambda (_g39013903_)
                                          (gxc#compile-e
                                           _g39013903_
                                           _state3867_))
                                        _L3892_)))
                              (let ((_c-body3911_
                                     (filter (lambda (_$obj3908_)
                                               (not (eq? _$obj3908_ '#!void)))
                                             _c-body3906_)))
                                (let () (cons '%#begin _c-body3911_)))))
                          _tl38743889_)))
                     (_g38693879_ _g38703882_)))))
          (_g38683914_ _stx3866_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx3774_ _state3775_)
      (let ((_g37773787_
             (lambda (_g37783784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g37783784_))))
        (let ((_g37763863_
               (lambda (_g37783790_)
                 (if (gx#stx-pair? _g37783790_)
                     (let ((_e37803792_ (gx#stx-e _g37783790_)))
                       (let ((_hd37813795_ (##car _e37803792_))
                             (_tl37823797_ (##cdr _e37803792_)))
                         ((lambda (_L3800_)
                            (let ((_phi3810_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block3812_
                                     (gxc#meta-state-begin-phi!
                                      _state3775_
                                      _phi3810_)))
                                (let ((_compiled3815_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L3800_)
                                           _state3775_))
                                        gx#current-expander-phi
                                        _phi3810_)))
                                  (let ()
                                    (let ((_g38183828_
                                           (lambda (_g38193825_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g38193825_))))
                                      (let ((_g38173860_
                                             (lambda (_g38193831_)
                                               (if (gx#stx-pair? _g38193831_)
                                                   (let ((_e38213833_
                                                          (gx#stx-e
                                                           _g38193831_)))
                                                     (let ((_hd38223836_
                                                            (##car _e38213833_))
                                                           (_tl38233838_
                                                            (##cdr _e38213833_)))
                                                       (if (gx#identifier?
                                                            _hd38223836_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd38223836_)
                                                               ((lambda (_L3841_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body3858_
                                 (filter (lambda (_$obj3855_)
                                           (not (eq? _$obj3855_ '#!void)))
                                         _L3841_)))
                            (if _block3812_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block3812_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body3858_))
                                (if (null? _c-body3858_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body3858_)))))
                        _tl38233838_)
                       (_g38183828_ _g38193831_))
                   (_g38183828_ _g38193831_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g38183828_
                                                    _g38193831_)))))
                                        (_g38173860_ _compiled3815_))))))))
                          _tl37823797_)))
                     (_g37773787_ _g37783790_)))))
          (_g37763863_ _stx3774_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx3705_ _state3706_)
      (begin
        (gxc#meta-state-end-phi! _state3706_)
        (let ((_g37083722_
               (lambda (_g37093719_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37093719_))))
          (let ((_g37073771_
                 (lambda (_g37093725_)
                   (if (gx#stx-pair? _g37093725_)
                       (let ((_e37123727_ (gx#stx-e _g37093725_)))
                         (let ((_hd37133730_ (##car _e37123727_))
                               (_tl37143732_ (##cdr _e37123727_)))
                           (if (gx#stx-pair? _tl37143732_)
                               (let ((_e37153735_ (gx#stx-e _tl37143732_)))
                                 (let ((_hd37163738_ (##car _e37153735_))
                                       (_tl37173740_ (##cdr _e37153735_)))
                                   ((lambda (_L3743_ _L3744_)
                                      (let ((_key3757_
                                             (gx#core-identifier-key _L3744_)))
                                        (begin
                                          (if (interned-symbol? _key3757_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx3705_
                                               _L3744_
                                               _key3757_))
                                          (let ((_ctx3759_
                                                 (gx#syntax-local-e__0
                                                  _L3744_)))
                                            (let ((_code3762_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx3759_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state3706_))
                                                    gx#current-expander-context
                                                    _ctx3759_)))
                                              (let ((_rt3764_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx3759_
                                                      '#f)))
                                                (let ((_loader3766_
                                                       (if _rt3764_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt3764_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid3768_
                                                         (gx#stx-e _L3744_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state3706_)
                                                        (cons '%#module
                                                              (cons _modid3768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code3762_ _loader3766_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl37173740_
                                    _hd37163738_)))
                               (_g37083722_ _g37093725_))))
                       (_g37083722_ _g37093725_)))))
            (_g37073771_ _stx3705_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx3695_ _context-chain3696_)
      ((letrec ((_lp3698_
                 (lambda (_ctx3700_ _path3701_)
                   (let ((_super3703_
                          (##structure-ref
                           _ctx3700_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super3703_ _context-chain3696_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx3700_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path3701_)
                         (if (##structure-instance-of?
                              _super3703_
                              'gx#module-context::t)
                             (_lp3698_
                              _super3703_
                              (cons (car (##structure-ref
                                          _ctx3700_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path3701_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx3700_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path3701_)))))))
         _lp3698_)
       _ctx3695_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp3690_
                 (lambda (_ctx3692_ _r3693_)
                   (if (##structure-instance-of?
                        _ctx3692_
                        'gx#module-context::t)
                       (_lp3690_
                        (##structure-ref _ctx3692_ '3 gx#phi-context::t '#f)
                        (cons _ctx3692_ _r3693_))
                       _r3693_))))
         _lp3690_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx3459_ _state3460_)
      (let ((_context-chain3462_ (gxc#current-context-chain)))
        (let ((_make-import-spec3463_
               (lambda (_in3626_)
                 (let ((_in36273639_ _in3626_))
                   (let ((_E36293643_
                          (lambda ()
                            (error '"No clause matching" _in36273639_))))
                     (let ((_K36303653_
                            (lambda (_phi3646_
                                     _name3647_
                                     _src-name3648_
                                     _src-phi3649_
                                     _src-key3650_
                                     _src-ctx3651_)
                              (cons _phi3646_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name3647_)
                                          (cons _src-phi3649_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name3648_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in36273639_)
                           (let ((_e36313656_ (##vector-ref _in36273639_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e36313656_)
                                 (let ((_e36343659_
                                        (##vector-ref _e36313656_ '1)))
                                   (let ((_src-ctx3662_ _e36343659_))
                                     (let ((_e36353664_
                                            (##vector-ref _e36313656_ '2)))
                                       (let ((_src-key3667_ _e36353664_))
                                         (let ((_e36363669_
                                                (##vector-ref _e36313656_ '3)))
                                           (let ((_src-phi3672_ _e36363669_))
                                             (let ((_e36373674_
                                                    (##vector-ref
                                                     _e36313656_
                                                     '4)))
                                               (let ((_src-name3677_
                                                      _e36373674_))
                                                 (let ((_e36323679_
                                                        (##vector-ref
                                                         _in36273639_
                                                         '2)))
                                                   (let ((_name3682_
                                                          _e36323679_))
                                                     (let ((_e36333684_
                                                            (##vector-ref
                                                             _in36273639_
                                                             '3)))
                                                       (let ((_phi3687_
                                                              _e36333684_))
                                                         (_K36303653_
                                                          _phi3687_
                                                          _name3682_
                                                          _src-name3677_
                                                          _src-phi3672_
                                                          _src-key3667_
                                                          _src-ctx3662_)))))))))))))
                                 (_E36293643_)))
                           (_E36293643_))))))))
          (let ((_make-import-path3464_
                 (lambda (_ctx3624_)
                   (gxc#generate-meta-import-path
                    _ctx3624_
                    _context-chain3462_))))
            (let ((_make-import-spec-in3465_
                   (lambda (_ctx3621_ _in3622_)
                     (cons 'spec:
                           (cons (_make-import-path3464_ _ctx3621_)
                                 (reverse _in3622_))))))
              (begin
                (gxc#meta-state-end-phi! _state3460_)
                (let ((_g34673477_
                       (lambda (_g34683474_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g34683474_))))
                  (let ((_g34663618_
                         (lambda (_g34683480_)
                           (if (gx#stx-pair? _g34683480_)
                               (let ((_e34703482_ (gx#stx-e _g34683480_)))
                                 (let ((_hd34713485_ (##car _e34703482_))
                                       (_tl34723487_ (##cdr _e34703482_)))
                                   ((lambda (_L3490_)
                                      ((letrec ((_lp3501_
                                                 (lambda (_rest3503_
                                                          _current-src3504_
                                                          _current-in3505_
                                                          _r3506_)
                                                   (let ((_rest35073515_
                                                          _rest3503_))
                                                     (let ((_E35103519_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest35073515_))))
               (let ((_else35093525_
                      (lambda ()
                        (let ((_r3523_ (if _current-src3504_
                                           (cons (_make-import-spec-in3465_
                                                  _current-src3504_
                                                  _current-in3505_)
                                                 _r3506_)
                                           _r3506_)))
                          (cons '%#import (reverse _r3523_))))))
                 (let ((_K35113606_
                        (lambda (_rest3528_ _in3529_)
                          (if (##structure-direct-instance-of?
                               _in3529_
                               'gx#module-import::t)
                              (let ((_in35303537_ _in3529_))
                                (let ((_E35323541_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in35303537_))))
                                  (let ((_K35333546_
                                         (lambda (_src-ctx3544_)
                                           (if (eq? _current-src3504_
                                                    _src-ctx3544_)
                                               (_lp3501_
                                                _rest3528_
                                                _current-src3504_
                                                (cons (_make-import-spec3463_
                                                       _in3529_)
                                                      _current-in3505_)
                                                _r3506_)
                                               (if _current-src3504_
                                                   (_lp3501_
                                                    _rest3528_
                                                    _src-ctx3544_
                                                    (cons (_make-import-spec3463_
                                                           _in3529_)
                                                          '())
                                                    (cons (_make-import-spec-in3465_
                                                           _current-src3504_
                                                           _current-in3505_)
                                                          _r3506_))
                                                   (_lp3501_
                                                    _rest3528_
                                                    _src-ctx3544_
                                                    (cons (_make-import-spec3463_
                                                           _in3529_)
                                                          '())
                                                    _r3506_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in35303537_)
                                        (let ((_e35343549_
                                               (##vector-ref _in35303537_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e35343549_)
                                              (let ((_e35353552_
                                                     (##vector-ref
                                                      _e35343549_
                                                      '1)))
                                                (let ((_src-ctx3555_
                                                       _e35353552_))
                                                  (_K35333546_ _src-ctx3555_)))
                                              (_E35323541_)))
                                        (_E35323541_)))))
                              (if (##structure-direct-instance-of?
                                   _in3529_
                                   'gx#import-set::t)
                                  (let ((_phi3557_
                                         (##structure-ref
                                          _in3529_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src3559_
                                           (##structure-ref
                                            _in3529_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in3599_
                                             (let ((_g35603569_
                                                    (_make-import-path3464_
                                                     _src3559_)))
                                               (let ((_E35633573_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g35603569_))))
                                                 (let ((_try-match35623584_
                                                        (lambda ()
                                                          (let ((_K35643579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path3577_) (cons 'in: _path3577_))))
                    (let ((_path3582_ _g35603569_))
                      (_K35643579_ _path3582_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K35653589_
                                                          (lambda (_path3587_)
                                                            _path3587_)))
                                                     (if (##pair? _g35603569_)
                                                         (let ((_hd35663592_
                                                                (##car _g35603569_))
                                                               (_tl35673594_
                                                                (##cdr _g35603569_)))
                                                           (let ((_path3597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd35663592_))
                     (if (##null? _tl35673594_)
                         (_K35653589_ _path3597_)
                         (_try-match35623584_))))
                 (_try-match35623584_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r3601_ (if _current-src3504_
                                                           (cons (_make-import-spec-in3465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src3504_
                          _current-in3505_)
                         _r3506_)
                   _r3506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp3501_
                                             _rest3528_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi3557_)
                                                       _src-in3599_
                                                       (cons 'phi:
                                                             (cons _phi3557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in3599_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r3601_)))))))
                                  (if (##structure-instance-of?
                                       _in3529_
                                       'gx#module-context::t)
                                      (let ((_r3604_ (if _current-src3504_
                                                         (cons (_make-import-spec-in3465_
                                                                _current-src3504_
                                                                _current-in3505_)
                                                               _r3506_)
                                                         _r3506_)))
                                        (_lp3501_
                                         _rest3528_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path3464_
                                                      _in3529_))
                                               _r3604_)))
                                      '#!void))))))
                   (if (##pair? _rest35073515_)
                       (let ((_hd35123609_ (##car _rest35073515_))
                             (_tl35133611_ (##cdr _rest35073515_)))
                         (let ((_in3614_ _hd35123609_))
                           (let ((_rest3616_ _tl35133611_))
                             (_K35113606_ _rest3616_ _in3614_))))
                       (_else35093525_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp3501_)
                                       _L3490_
                                       '#f
                                       '()
                                       '()))
                                    _tl34723487_)))
                               (_g34673477_ _g34683480_)))))
                    (_g34663618_ _stx3459_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3269_ _state3270_)
      (let ((_context-chain3272_ (gxc#current-context-chain)))
        (let ((_make-import-path3273_
               (lambda (_ctx3457_)
                 (gxc#generate-meta-import-path
                  _ctx3457_
                  _context-chain3272_))))
          (let ((_g32753285_
                 (lambda (_g32763282_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g32763282_))))
            (let ((_g32743454_
                   (lambda (_g32763288_)
                     (if (gx#stx-pair? _g32763288_)
                         (let ((_e32783290_ (gx#stx-e _g32763288_)))
                           (let ((_hd32793293_ (##car _e32783290_))
                                 (_tl32803295_ (##cdr _e32783290_)))
                             ((lambda (_L3298_)
                                ((letrec ((_lp3309_
                                           (lambda (_rest3311_ _r3312_)
                                             (let ((_rest33133321_ _rest3311_))
                                               (let ((_E33163325_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest33133321_))))
                                                 (let ((_else33153329_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3312_)))))
                                                   (let ((_K33173442_
                                                          (lambda (_rest3332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3333_)
                    (let ((_out33343347_ _out3333_))
                      (let ((_E33373351_
                             (lambda ()
                               (error '"No clause matching" _out33343347_))))
                        (let ((_try-match33363414_
                               (lambda ()
                                 (let ((_K33383401_
                                        (lambda (_phi3355_ _src3356_)
                                          (let ((_out3396_
                                                 (if _src3356_
                                                     (cons 'import:
                                                           (cons (let ((_g33573366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3273_ _src3356_)))
                           (let ((_E33603370_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g33573366_))))
                             (let ((_try-match33593381_
                                    (lambda ()
                                      (let ((_K33613376_
                                             (lambda (_path3374_)
                                               (cons 'in: _path3374_))))
                                        (let ((_path3379_ _g33573366_))
                                          (_K33613376_ _path3379_))))))
                               (let ((_K33623386_
                                      (lambda (_path3384_) _path3384_)))
                                 (if (##pair? _g33573366_)
                                     (let ((_hd33633389_ (##car _g33573366_))
                                           (_tl33643391_ (##cdr _g33573366_)))
                                       (let ((_path3394_ _hd33633389_))
                                         (if (##null? _tl33643391_)
                                             (_K33623386_ _path3394_)
                                             (_try-match33593381_))))
                                     (_try-match33593381_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3398_
                                                   (if (fxzero? _phi3355_)
                                                       _out3396_
                                                       (cons 'phi:
                                                             (cons _phi3355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3396_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3309_
                                                 _rest3332_
                                                 (cons _out3398_
                                                       _r3312_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out33343347_)
                                       (let ((_e33393404_
                                              (##vector-ref _out33343347_ '1)))
                                         (let ((_src3407_ _e33393404_))
                                           (let ((_e33403409_
                                                  (##vector-ref
                                                   _out33343347_
                                                   '2)))
                                             (let ((_phi3412_ _e33403409_))
                                               (_K33383401_
                                                _phi3412_
                                                _src3407_)))))
                                       (_E33373351_))))))
                          (let ((_K33413421_
                                 (lambda (_name3417_ _phi3418_ _key3419_)
                                   (_lp3309_
                                    _rest3332_
                                    (cons (cons 'spec:
                                                (cons _phi3418_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key3419_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3417_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3312_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out33343347_)
                                (let ((_e33423424_
                                       (##vector-ref _out33343347_ '1)))
                                  (let ((_e33433427_
                                         (##vector-ref _out33343347_ '2)))
                                    (let ((_key3430_ _e33433427_))
                                      (let ((_e33443432_
                                             (##vector-ref _out33343347_ '3)))
                                        (let ((_phi3435_ _e33443432_))
                                          (let ((_e33453437_
                                                 (##vector-ref
                                                  _out33343347_
                                                  '4)))
                                            (let ((_name3440_ _e33453437_))
                                              (_K33413421_
                                               _name3440_
                                               _phi3435_
                                               _key3430_))))))))
                                (_try-match33363414_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest33133321_)
                                                         (let ((_hd33183445_
                                                                (##car _rest33133321_))
                                                               (_tl33193447_
                                                                (##cdr _rest33133321_)))
                                                           (let ((_out3450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd33183445_))
                     (let ((_rest3452_ _tl33193447_))
                       (_K33173442_ _rest3452_ _out3450_))))
                 (_else33153329_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3309_)
                                 _L3298_
                                 '()))
                              _tl32803295_)))
                         (_g32753285_ _g32763288_)))))
              (_g32743454_ _stx3269_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3230_ _state3231_)
      (begin
        (gxc#meta-state-end-phi! _state3231_)
        (let ((_g32333243_
               (lambda (_g32343240_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g32343240_))))
          (let ((_g32323266_
                 (lambda (_g32343246_)
                   (if (gx#stx-pair? _g32343246_)
                       (let ((_e32363248_ (gx#stx-e _g32343246_)))
                         (let ((_hd32373251_ (##car _e32363248_))
                               (_tl32383253_ (##cdr _e32363248_)))
                           ((lambda (_L3256_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3256_)))
                            _tl32383253_)))
                       (_g32333243_ _g32343246_)))))
            (_g32323266_ _stx3230_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3101_ _state3102_)
      (let ((_generate13104_
             (lambda (_id3225_ _eid3226_)
               (let ((_eid3228_ (gx#stx-e _eid3226_)))
                 (begin
                   (if (interned-symbol? _eid3228_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3101_
                        _eid3228_))
                   (cons (gxc#generate-runtime-identifier _id3225_)
                         (cons _eid3228_ '())))))))
        (let ((_g31063134_
               (lambda (_g31073131_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g31073131_))))
          (let ((_g31053222_
                 (lambda (_g31073137_)
                   (if (gx#stx-pair? _g31073137_)
                       (let ((_e31103139_ (gx#stx-e _g31073137_)))
                         (let ((_hd31113142_ (##car _e31103139_))
                               (_tl31123144_ (##cdr _e31103139_)))
                           (if (gx#stx-pair/null? _tl31123144_)
                               (if (fx>= (gx#stx-length _tl31123144_) '0)
                                   (let ((_g9501_ (gx#syntax-split-splice
                                                   _tl31123144_
                                                   '0)))
                                     (begin
                                       (let ((_g9502_ (values-count _g9501_)))
                                         (if (not (fx= _g9502_ 2))
                                             (error "Context expects 2 values"
                                                    _g9502_)))
                                       (let ((_target31133147_
                                              (values-ref _g9501_ 0))
                                             (_tl31153149_
                                              (values-ref _g9501_ 1)))
                                         (if (gx#stx-null? _tl31153149_)
                                             (letrec ((_loop31163152_
                                                       (lambda (_hd31143155_
                                                                _eid31203157_
                                                                _id31213159_)
                                                         (if (gx#stx-pair?
                                                              _hd31143155_)
                                                             (let ((_e31173162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd31143155_)))
                       (let ((_lp-hd31183165_ (##car _e31173162_))
                             (_lp-tl31193167_ (##cdr _e31173162_)))
                         (if (gx#stx-pair? _lp-hd31183165_)
                             (let ((_e31243170_ (gx#stx-e _lp-hd31183165_)))
                               (let ((_hd31253173_ (##car _e31243170_))
                                     (_tl31263175_ (##cdr _e31243170_)))
                                 (if (gx#stx-pair? _tl31263175_)
                                     (let ((_e31273178_
                                            (gx#stx-e _tl31263175_)))
                                       (let ((_hd31283181_ (##car _e31273178_))
                                             (_tl31293183_
                                              (##cdr _e31273178_)))
                                         (if (gx#stx-null? _tl31293183_)
                                             (_loop31163152_
                                              _lp-tl31193167_
                                              (cons _hd31283181_ _eid31203157_)
                                              (cons _hd31253173_ _id31213159_))
                                             (_g31063134_ _g31073137_))))
                                     (_g31063134_ _g31073137_))))
                             (_g31063134_ _g31073137_))))
                     (let ((_eid31223186_ (reverse _eid31203157_))
                           (_id31233188_ (reverse _id31213159_)))
                       ((lambda (_L3191_ _L3192_)
                          (cons '%#extern
                                (map _generate13104_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g32073210_ _g32083212_)
                                                (cons _g32073210_ _g32083212_))
                                              '()
                                              _L3192_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g32143217_ _g32153219_)
                                                (cons _g32143217_ _g32153219_))
                                              '()
                                              _L3191_)))))
                        _eid31223186_
                        _id31233188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop31163152_
                                                _target31133147_
                                                '()
                                                '()))
                                             (_g31063134_ _g31073137_)))))
                                   (_g31063134_ _g31073137_))
                               (_g31063134_ _g31073137_))))
                       (_g31063134_ _g31073137_)))))
            (_g31053222_ _stx3101_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx2896_ _state2897_)
      (let ((_generate12899_
             (lambda (_id3096_)
               (let ((_eid3098_ (gxc#generate-runtime-binding-id _id3096_))
                     (_ident3099_ (gxc#generate-runtime-identifier _id3096_)))
                 (cons '%#define-runtime
                       (cons _ident3099_ (cons _eid3098_ '())))))))
        (let ((_generate*2900_
               (lambda (_all3064_)
                 (let ((_all30653073_ _all3064_))
                   (let ((_E30683077_
                          (lambda ()
                            (error '"No clause matching" _all30653073_))))
                     (let ((_else30673081_
                            (lambda () (cons '%#begin _all3064_))))
                       (let ((_K30693086_ (lambda (_one3084_) _one3084_)))
                         (if (##pair? _all30653073_)
                             (let ((_hd30703089_ (##car _all30653073_))
                                   (_tl30713091_ (##cdr _all30653073_)))
                               (let ((_one3094_ _hd30703089_))
                                 (if (##null? _tl30713091_)
                                     (_K30693086_ _one3094_)
                                     (_else30673081_))))
                             (_else30673081_)))))))))
          (let ((_g29022919_
                 (lambda (_g29032916_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g29032916_))))
            (let ((_g29013061_
                   (lambda (_g29032922_)
                     (if (gx#stx-pair? _g29032922_)
                         (let ((_e29062924_ (gx#stx-e _g29032922_)))
                           (let ((_hd29072927_ (##car _e29062924_))
                                 (_tl29082929_ (##cdr _e29062924_)))
                             (if (gx#stx-pair? _tl29082929_)
                                 (let ((_e29092932_ (gx#stx-e _tl29082929_)))
                                   (let ((_hd29102935_ (##car _e29092932_))
                                         (_tl29112937_ (##cdr _e29092932_)))
                                     (if (gx#stx-pair? _tl29112937_)
                                         (let ((_e29122940_
                                                (gx#stx-e _tl29112937_)))
                                           (let ((_hd29132943_
                                                  (##car _e29122940_))
                                                 (_tl29142945_
                                                  (##cdr _e29122940_)))
                                             (if (gx#stx-null? _tl29142945_)
                                                 ((lambda (_L2948_ _L2949_)
                                                    ((letrec ((_lp2965_
                                                               (lambda (_rest2967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r2968_)
                         (let ((_g29732989_
                                (lambda (_g29742986_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g29742986_))))
                           (let ((_g29722996_
                                  (lambda (_g29742992_)
                                    ((lambda ()
                                       (_generate*2900_ (reverse _r2968_)))))))
                             (let ((_g29713012_
                                    (lambda (_g29742999_)
                                      ((lambda (_L3001_)
                                         (if (gx#identifier? _L3001_)
                                             (_generate*2900_
                                              (foldl cons
                                                     (cons (_generate12899_
                                                            _L3001_)
                                                           '())
                                                     _r2968_))
                                             (_g29722996_ _g29742999_)))
                                       _g29742999_))))
                               (let ((_g29703036_
                                      (lambda (_g29743015_)
                                        (if (gx#stx-pair? _g29743015_)
                                            (let ((_e29813017_
                                                   (gx#stx-e _g29743015_)))
                                              (let ((_hd29823020_
                                                     (##car _e29813017_))
                                                    (_tl29833022_
                                                     (##cdr _e29813017_)))
                                                ((lambda (_L3025_ _L3026_)
                                                   (_lp2965_
                                                    _L3025_
                                                    (cons (_generate12899_
                                                           _L3026_)
                                                          _r2968_)))
                                                 _tl29833022_
                                                 _hd29823020_)))
                                            (_g29713012_ _g29743015_)))))
                                 (let ((_g29693058_
                                        (lambda (_g29743039_)
                                          (if (gx#stx-pair? _g29743039_)
                                              (let ((_e29763041_
                                                     (gx#stx-e _g29743039_)))
                                                (let ((_hd29773044_
                                                       (##car _e29763041_))
                                                      (_tl29783046_
                                                       (##cdr _e29763041_)))
                                                  (if (gx#stx-datum?
                                                       _hd29773044_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd29773044_)
                          '#f)
                  ((lambda (_L3049_) (_lp2965_ _L3049_ _r2968_)) _tl29783046_)
                  (_g29703036_ _g29743039_))
              (_g29703036_ _g29743039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29703036_ _g29743039_)))))
                                   (_g29693058_ _rest2967_)))))))))
               _lp2965_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L2949_
                                                     '()))
                                                  _hd29132943_
                                                  _hd29102935_)
                                                 (_g29022919_ _g29032922_))))
                                         (_g29022919_ _g29032922_))))
                                 (_g29022919_ _g29032922_))))
                         (_g29022919_ _g29032922_)))))
              (_g29013061_ _stx2896_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx2793_ _state2794_)
      (let ((_g27962813_
             (lambda (_g27972810_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27972810_))))
        (let ((_g27952893_
               (lambda (_g27972816_)
                 (if (gx#stx-pair? _g27972816_)
                     (let ((_e28002818_ (gx#stx-e _g27972816_)))
                       (let ((_hd28012821_ (##car _e28002818_))
                             (_tl28022823_ (##cdr _e28002818_)))
                         (if (gx#stx-pair? _tl28022823_)
                             (let ((_e28032826_ (gx#stx-e _tl28022823_)))
                               (let ((_hd28042829_ (##car _e28032826_))
                                     (_tl28052831_ (##cdr _e28032826_)))
                                 (if (gx#stx-pair? _tl28052831_)
                                     (let ((_e28062834_
                                            (gx#stx-e _tl28052831_)))
                                       (let ((_hd28072837_ (##car _e28062834_))
                                             (_tl28082839_
                                              (##cdr _e28062834_)))
                                         (if (gx#stx-null? _tl28082839_)
                                             ((lambda (_L2842_ _L2843_)
                                                (let ((_eid2858_
                                                       (gxc#generate-runtime-binding-id
                                                        _L2843_)))
                                                  (let ((_phi2860_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block2862_
                                                           (gxc#meta-state-begin-phi!
                                                            _state2794_
                                                            _phi2860_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g28652872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g28662869_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g28662869_))))
                    (let ((_g28642890_
                           (lambda (_g28662875_)
                             ((lambda (_L2877_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state2794_
                                   _phi2860_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L2877_ (cons _L2842_ '()))))))
                              _g28662875_))))
                      (_g28642890_ _eid2858_)))
                  (if _block2862_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block2862_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L2843_)
                                                    (cons _eid2858_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L2843_)
                                  (cons _eid2858_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd28072837_
                                              _hd28042829_)
                                             (_g27962813_ _g27972816_))))
                                     (_g27962813_ _g27972816_))))
                             (_g27962813_ _g27972816_))))
                     (_g27962813_ _g27972816_)))))
          (_g27952893_ _stx2793_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx2725_ _state2726_)
      (let ((_g27282745_
             (lambda (_g27292742_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g27292742_))))
        (let ((_g27272790_
               (lambda (_g27292748_)
                 (if (gx#stx-pair? _g27292748_)
                     (let ((_e27322750_ (gx#stx-e _g27292748_)))
                       (let ((_hd27332753_ (##car _e27322750_))
                             (_tl27342755_ (##cdr _e27322750_)))
                         (if (gx#stx-pair? _tl27342755_)
                             (let ((_e27352758_ (gx#stx-e _tl27342755_)))
                               (let ((_hd27362761_ (##car _e27352758_))
                                     (_tl27372763_ (##cdr _e27352758_)))
                                 (if (gx#stx-pair? _tl27372763_)
                                     (let ((_e27382766_
                                            (gx#stx-e _tl27372763_)))
                                       (let ((_hd27392769_ (##car _e27382766_))
                                             (_tl27402771_
                                              (##cdr _e27382766_)))
                                         (if (gx#stx-null? _tl27402771_)
                                             ((lambda (_L2774_ _L2775_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L2775_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2774_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd27392769_
                                              _hd27362761_)
                                             (_g27282745_ _g27292748_))))
                                     (_g27282745_ _g27292748_))))
                             (_g27282745_ _g27292748_))))
                     (_g27282745_ _g27292748_)))))
          (_g27272790_ _stx2725_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx2722_ _state2723_)
      (begin
        (gxc#meta-state-add-phi!
         _state2723_
         (gx#current-expander-phi)
         _stx2722_)
        (gxc#generate-meta-define-values% _stx2722_ _state2723_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx2719_ _state2720_)
      (begin
        (gxc#meta-state-add-phi!
         _state2720_
         (gx#current-expander-phi)
         _stx2719_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args2716_
      (apply make-struct-instance gxc#meta-state::t _$args2716_)))
  (define gxc#meta-state-src (make-struct-field-accessor gxc#meta-state::t '0))
  (define gxc#meta-state-n (make-struct-field-accessor gxc#meta-state::t '1))
  (define gxc#meta-state-open
    (make-struct-field-accessor gxc#meta-state::t '2))
  (define gxc#meta-state-blocks
    (make-struct-field-accessor gxc#meta-state::t '3))
  (define gxc#meta-state-src-set!
    (make-struct-field-mutator gxc#meta-state::t '0))
  (define gxc#meta-state-n-set!
    (make-struct-field-mutator gxc#meta-state::t '1))
  (define gxc#meta-state-open-set!
    (make-struct-field-mutator gxc#meta-state::t '2))
  (define gxc#meta-state-blocks-set!
    (make-struct-field-mutator gxc#meta-state::t '3))
  (define gxc#meta-state:::init!
    (lambda (_self2713_ _ctx2714_)
      (direct-struct-instance-init!
       _self2713_
       (symbol->string
        (##structure-ref _ctx2714_ '1 gx#expander-context::t '#f))
       '1
       (make-hash-table-eq)
       '())))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args2710_
      (apply make-struct-instance gxc#meta-state-block::t _$args2710_)))
  (define gxc#meta-state-block-ctx
    (make-struct-field-accessor gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi
    (make-struct-field-accessor gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n
    (make-struct-field-accessor gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code
    (make-struct-field-accessor gxc#meta-state-block::t '3))
  (define gxc#meta-state-block-ctx-set!
    (make-struct-field-mutator gxc#meta-state-block::t '0))
  (define gxc#meta-state-block-phi-set!
    (make-struct-field-mutator gxc#meta-state-block::t '1))
  (define gxc#meta-state-block-n-set!
    (make-struct-field-mutator gxc#meta-state-block::t '2))
  (define gxc#meta-state-block-code-set!
    (make-struct-field-mutator gxc#meta-state-block::t '3))
  (define gxc#meta-state-begin-phi!
    (lambda (_state2669_ _phi2670_)
      (let ((_state26712679_ _state2669_))
        (let ((_E26732683_
               (lambda () (error '"No clause matching" _state26712679_))))
          (let ((_K26742692_
                 (lambda (_open2686_ _n2687_ _src2688_)
                   (if (table-ref _open2686_ _phi2670_ '#f)
                       '#f
                       (let ((_block-ref2690_
                              (string-append
                               _src2688_
                               '"__"
                               (number->string _n2687_))))
                         (begin
                           (##structure-set!
                            _state2669_
                            (fx+ _n2687_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (hash-put!
                            _open2686_
                            _phi2670_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi2670_
                             _n2687_
                             '()))
                           _block-ref2690_))))))
            (if (struct-instance? gxc#meta-state::t _state26712679_)
                (let ((_e26752695_ (##vector-ref _state26712679_ '1)))
                  (let ((_src2698_ _e26752695_))
                    (let ((_e26762700_ (##vector-ref _state26712679_ '2)))
                      (let ((_n2703_ _e26762700_))
                        (let ((_e26772705_ (##vector-ref _state26712679_ '3)))
                          (let ((_open2708_ _e26772705_))
                            (_K26742692_ _open2708_ _n2703_ _src2698_)))))))
                (_E26732683_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state2663_ _phi2664_ _stx2665_)
      (let ((_block2667_
             (table-ref
              (##structure-ref _state2663_ '3 gxc#meta-state::t '#f)
              _phi2664_
              '#f)))
        (##structure-set!
         _block2667_
         (cons _stx2665_
               (##structure-ref _block2667_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state2658_)
      (begin
        (##structure-set!
         _state2658_
         (hash-fold
          (lambda (_g9503_ _block2660_ _r2661_) (cons _block2660_ _r2661_))
          (##structure-ref _state2658_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2658_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2658_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state2610_)
      (begin
        (gxc#meta-state-end-phi! _state2610_)
        (foldl (lambda (_block2612_ _r2613_)
                 (let ((_block26142623_ _block2612_))
                   (let ((_E26162627_
                          (lambda ()
                            (error '"No clause matching" _block26142623_))))
                     (let ((_K26172635_
                            (lambda (_code2630_ _n2631_ _phi2632_ _ctx2633_)
                              (if (null? _code2630_)
                                  _r2613_
                                  (cons (cons _ctx2633_
                                              (cons _phi2632_
                                                    (cons _n2631_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code2630_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r2613_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block26142623_)
                           (let ((_e26182638_
                                  (##vector-ref _block26142623_ '1)))
                             (let ((_ctx2641_ _e26182638_))
                               (let ((_e26192643_
                                      (##vector-ref _block26142623_ '2)))
                                 (let ((_phi2646_ _e26192643_))
                                   (let ((_e26202648_
                                          (##vector-ref _block26142623_ '3)))
                                     (let ((_n2651_ _e26202648_))
                                       (let ((_e26212653_
                                              (##vector-ref
                                               _block26142623_
                                               '4)))
                                         (let ((_code2656_ _e26212653_))
                                           (_K26172635_
                                            _code2656_
                                            _n2651_
                                            _phi2646_
                                            _ctx2641_)))))))))
                           (_E26162627_))))))
               '()
               (##structure-ref _state2610_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx2606_)
      (let ((_ht2608_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx2606_ _ht2608_)
          _ht2608_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx2549_ _ht2550_)
      (let ((_g25522565_
             (lambda (_g25532562_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25532562_))))
        (let ((_g25512603_
               (lambda (_g25532568_)
                 (if (gx#stx-pair? _g25532568_)
                     (let ((_e25552570_ (gx#stx-e _g25532568_)))
                       (let ((_hd25562573_ (##car _e25552570_))
                             (_tl25572575_ (##cdr _e25552570_)))
                         (if (gx#stx-pair? _tl25572575_)
                             (let ((_e25582578_ (gx#stx-e _tl25572575_)))
                               (let ((_hd25592581_ (##car _e25582578_))
                                     (_tl25602583_ (##cdr _e25582578_)))
                                 (if (gx#stx-null? _tl25602583_)
                                     ((lambda (_L2586_)
                                        (let ((_bind2598_
                                               (gx#resolve-identifier__0
                                                _L2586_)))
                                          (let ((_eid2600_
                                                 (if _bind2598_
                                                     (##structure-ref
                                                      _bind2598_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L2586_))))
                                            (let ()
                                              (hash-put!
                                               _ht2550_
                                               _eid2600_
                                               _eid2600_)))))
                                      _hd25592581_)
                                     (_g25522565_ _g25532568_))))
                             (_g25522565_ _g25532568_))))
                     (_g25522565_ _g25532568_)))))
          (_g25512603_ _stx2549_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx2476_ _ht2477_)
      (let ((_g24792496_
             (lambda (_g24802493_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24802493_))))
        (let ((_g24782546_
               (lambda (_g24802499_)
                 (if (gx#stx-pair? _g24802499_)
                     (let ((_e24832501_ (gx#stx-e _g24802499_)))
                       (let ((_hd24842504_ (##car _e24832501_))
                             (_tl24852506_ (##cdr _e24832501_)))
                         (if (gx#stx-pair? _tl24852506_)
                             (let ((_e24862509_ (gx#stx-e _tl24852506_)))
                               (let ((_hd24872512_ (##car _e24862509_))
                                     (_tl24882514_ (##cdr _e24862509_)))
                                 (if (gx#stx-pair? _tl24882514_)
                                     (let ((_e24892517_
                                            (gx#stx-e _tl24882514_)))
                                       (let ((_hd24902520_ (##car _e24892517_))
                                             (_tl24912522_
                                              (##cdr _e24892517_)))
                                         (if (gx#stx-null? _tl24912522_)
                                             ((lambda (_L2525_ _L2526_)
                                                (let ((_bind2541_
                                                       (gx#resolve-identifier__0
                                                        _L2526_)))
                                                  (let ((_eid2543_
                                                         (if _bind2541_
                                                             (##structure-ref
                                                              _bind2541_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L2526_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht2477_
                                                         _eid2543_
                                                         _eid2543_)
                                                        (gxc#compile-e
                                                         _L2525_
                                                         _ht2477_))))))
                                              _hd24902520_
                                              _hd24872512_)
                                             (_g24792496_ _g24802499_))))
                                     (_g24792496_ _g24802499_))))
                             (_g24792496_ _g24802499_))))
                     (_g24792496_ _g24802499_)))))
          (_g24782546_ _stx2476_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx2438_)
      (let ((_g24402450_
             (lambda (_g24412447_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24412447_))))
        (let ((_g24392473_
               (lambda (_g24412453_)
                 (if (gx#stx-pair? _g24412453_)
                     (let ((_e24432455_ (gx#stx-e _g24412453_)))
                       (let ((_hd24442458_ (##car _e24432455_))
                             (_tl24452460_ (##cdr _e24432455_)))
                         ((lambda (_L2463_) (ormap gxc#compile-e _L2463_))
                          _tl24452460_)))
                     (_g24402450_ _g24412453_)))))
          (_g24392473_ _stx2438_))))))
