(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10278_ . _args10279_)
      (let ((_g1028110291_
             (lambda (_g1028210288_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1028210288_))))
        (let ((_g1028010319_
               (lambda (_g1028210294_)
                 (if (gx#stx-pair? _g1028210294_)
                     (let ((_e1028410296_ (gx#stx-e _g1028210294_)))
                       (let ((_hd1028510299_ (##car _e1028410296_))
                             (_tl1028610301_ (##cdr _e1028410296_)))
                         ((lambda (_L10304_)
                            (let ((_$e10314_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10304_)
                                    '#f)))
                              (if _$e10314_
                                  ((lambda (_method10317_)
                                     (apply _method10317_
                                            _stx10278_
                                            _args10279_))
                                   _$e10314_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10278_
                                   _L10304_))))
                          _hd1028510299_)))
                     (_g1028110291_ _g1028210294_)))))
          (_g1028010319_ _stx10278_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10275_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10275_ '%#lambda void)
           (table-set! _tbl10275_ '%#case-lambda void)
           (table-set! _tbl10275_ '%#let-values void)
           (table-set! _tbl10275_ '%#letrec-values void)
           (table-set! _tbl10275_ '%#letrec*-values void)
           (table-set! _tbl10275_ '%#quote void)
           (table-set! _tbl10275_ '%#quote-syntax void)
           (table-set! _tbl10275_ '%#call void)
           (table-set! _tbl10275_ '%#if void)
           (table-set! _tbl10275_ '%#ref void)
           (table-set! _tbl10275_ '%#set! void)
           (table-set! _tbl10275_ '%#struct-instance? void)
           (table-set! _tbl10275_ '%#struct-direct-instance? void)
           (table-set! _tbl10275_ '%#struct-ref void)
           (table-set! _tbl10275_ '%#struct-set! void)
           (table-set! _tbl10275_ '%#struct-direct-ref void)
           (table-set! _tbl10275_ '%#struct-direct-set! void)
           _tbl10275_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10271_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10271_ '%#begin void)
           (table-set! _tbl10271_ '%#begin-syntax void)
           (table-set! _tbl10271_ '%#begin-foreign void)
           (table-set! _tbl10271_ '%#module void)
           (table-set! _tbl10271_ '%#import void)
           (table-set! _tbl10271_ '%#export void)
           (table-set! _tbl10271_ '%#provide void)
           (table-set! _tbl10271_ '%#extern void)
           (table-set! _tbl10271_ '%#define-values void)
           (table-set! _tbl10271_ '%#define-syntax void)
           (table-set! _tbl10271_ '%#define-alias void)
           (table-set! _tbl10271_ '%#declare void)
           _tbl10271_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10267_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10267_ (force gxc#&void-special-form))
           (hash-copy! _tbl10267_ (force gxc#&void-expression))
           _tbl10267_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10263_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10263_ (force gxc#&void-expression))
           (hash-copy! _tbl10263_ (force gxc#&void-special-form))
           (table-set! _tbl10263_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10263_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10263_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10263_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10263_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10263_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10256_ . _args10258_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10256_ _args10258_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10253_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10253_ (force gxc#&void))
           (table-set! _tbl10253_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10253_ '%#module gxc#lift-modules-module%)
           _tbl10253_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10246_ . _args10248_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10246_ _args10248_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10243_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10243_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10243_ '%#begin-syntax false)
           (table-set! _tbl10243_ '%#begin-foreign true)
           (table-set! _tbl10243_ '%#module false)
           (table-set! _tbl10243_ '%#import false)
           (table-set! _tbl10243_ '%#export false)
           (table-set! _tbl10243_ '%#provide false)
           (table-set! _tbl10243_ '%#extern false)
           (table-set! _tbl10243_ '%#define-values true)
           (table-set! _tbl10243_ '%#define-syntax false)
           (table-set! _tbl10243_ '%#define-alias false)
           (table-set! _tbl10243_ '%#declare false)
           (table-set! _tbl10243_ '%#lambda true)
           (table-set! _tbl10243_ '%#case-lambda true)
           (table-set! _tbl10243_ '%#let-values true)
           (table-set! _tbl10243_ '%#letrec-values true)
           (table-set! _tbl10243_ '%#letrec*-values true)
           (table-set! _tbl10243_ '%#quote true)
           (table-set! _tbl10243_ '%#call true)
           (table-set! _tbl10243_ '%#if true)
           (table-set! _tbl10243_ '%#ref true)
           (table-set! _tbl10243_ '%#set! true)
           (table-set! _tbl10243_ '%#struct-instance? true)
           (table-set! _tbl10243_ '%#struct-direct-instance? true)
           (table-set! _tbl10243_ '%#struct-ref true)
           (table-set! _tbl10243_ '%#struct-set! true)
           (table-set! _tbl10243_ '%#struct-direct-ref true)
           (table-set! _tbl10243_ '%#struct-direct-set! true)
           _tbl10243_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10236_ . _args10238_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10236_ _args10238_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10233_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10233_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10233_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10233_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10233_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10233_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10233_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           _tbl10233_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10229_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10229_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10229_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10229_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10229_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10222_ . _args10224_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10222_ _args10224_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10219_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10219_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10219_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10219_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10219_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10219_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10219_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10219_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10219_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10219_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10219_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10219_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10219_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10219_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10219_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10219_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10219_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10219_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10219_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10219_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10219_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10219_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           _tbl10219_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10212_ . _args10214_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10212_ _args10214_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10209_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10209_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10209_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10209_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10209_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10202_ . _args10204_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10202_ _args10204_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10199_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10199_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10199_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10199_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10199_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10199_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10199_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10199_ '%#quote void)
           (table-set! _tbl10199_ '%#quote-syntax void)
           (table-set! _tbl10199_ '%#call gxc#collect-operands)
           (table-set! _tbl10199_ '%#if gxc#collect-operands)
           (table-set! _tbl10199_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10199_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10199_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10199_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10199_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10199_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10199_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10199_ '%#struct-direct-set! gxc#collect-operands)
           _tbl10199_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10192_ . _args10194_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10192_ _args10194_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10189_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10189_ (force gxc#&void-expression))
           (table-set! _tbl10189_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10189_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10189_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10189_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10189_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10189_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10189_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10189_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10189_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10189_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10189_ '%#begin-foreign void)
           (table-set! _tbl10189_ '%#declare void)
           _tbl10189_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10182_ . _args10184_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10182_ _args10184_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10179_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10179_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10179_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10179_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10179_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10179_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10179_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10179_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10179_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10179_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10179_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10179_ '%#declare void)
           _tbl10179_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10172_ . _args10174_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10172_ _args10174_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10129_ . _args10130_)
      (let ((_g1013210142_
             (lambda (_g1013310139_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1013310139_))))
        (let ((_g1013110169_
               (lambda (_g1013310145_)
                 (if (gx#stx-pair? _g1013310145_)
                     (let ((_e1013510147_ (gx#stx-e _g1013310145_)))
                       (let ((_hd1013610150_ (##car _e1013510147_))
                             (_tl1013710152_ (##cdr _e1013510147_)))
                         ((lambda (_L10155_)
                            (for-each
                             (lambda (_g1016410166_)
                               (apply gxc#compile-e _g1016410166_ _args10130_))
                             (gx#stx-e _L10155_)))
                          _tl1013710152_)))
                     (_g1013210142_ _g1013310145_)))))
          (_g1013110169_ _stx10129_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10085_ . _args10086_)
      (let ((_g1008810098_
             (lambda (_g1008910095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1008910095_))))
        (let ((_g1008710126_
               (lambda (_g1008910101_)
                 (if (gx#stx-pair? _g1008910101_)
                     (let ((_e1009110103_ (gx#stx-e _g1008910101_)))
                       (let ((_hd1009210106_ (##car _e1009110103_))
                             (_tl1009310108_ (##cdr _e1009110103_)))
                         ((lambda (_L10111_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1012110123_)
                                  (apply gxc#compile-e
                                         _g1012110123_
                                         _args10086_))
                                (gx#stx-e _L10111_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl1009310108_)))
                     (_g1008810098_ _g1008910101_)))))
          (_g1008710126_ _stx10085_)))))
  (define gxc#collect-module%
    (lambda (_stx10027_ . _args10028_)
      (let ((_g1003010044_
             (lambda (_g1003110041_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1003110041_))))
        (let ((_g1002910082_
               (lambda (_g1003110047_)
                 (if (gx#stx-pair? _g1003110047_)
                     (let ((_e1003410049_ (gx#stx-e _g1003110047_)))
                       (let ((_hd1003510052_ (##car _e1003410049_))
                             (_tl1003610054_ (##cdr _e1003410049_)))
                         (if (gx#stx-pair? _tl1003610054_)
                             (let ((_e1003710057_ (gx#stx-e _tl1003610054_)))
                               (let ((_hd1003810060_ (##car _e1003710057_))
                                     (_tl1003910062_ (##cdr _e1003710057_)))
                                 ((lambda (_L10065_ _L10066_)
                                    (let ((_ctx10079_
                                           (gx#syntax-local-e__0 _L10066_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx10079_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args10028_))
                                       gx#current-expander-context
                                       _ctx10079_)))
                                  _tl1003910062_
                                  _hd1003810060_)))
                             (_g1003010044_ _g1003110047_))))
                     (_g1003010044_ _g1003110047_)))))
          (_g1002910082_ _stx10027_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9959_ . _args9960_)
      (let ((_g99629979_
             (lambda (_g99639976_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99639976_))))
        (let ((_g996110024_
               (lambda (_g99639982_)
                 (if (gx#stx-pair? _g99639982_)
                     (let ((_e99669984_ (gx#stx-e _g99639982_)))
                       (let ((_hd99679987_ (##car _e99669984_))
                             (_tl99689989_ (##cdr _e99669984_)))
                         (if (gx#stx-pair? _tl99689989_)
                             (let ((_e99699992_ (gx#stx-e _tl99689989_)))
                               (let ((_hd99709995_ (##car _e99699992_))
                                     (_tl99719997_ (##cdr _e99699992_)))
                                 (if (gx#stx-pair? _tl99719997_)
                                     (let ((_e997210000_
                                            (gx#stx-e _tl99719997_)))
                                       (let ((_hd997310003_
                                              (##car _e997210000_))
                                             (_tl997410005_
                                              (##cdr _e997210000_)))
                                         (if (gx#stx-null? _tl997410005_)
                                             ((lambda (_L10008_ _L10009_)
                                                (apply gxc#compile-e
                                                       _L10008_
                                                       _args9960_))
                                              _hd997310003_
                                              _hd99709995_)
                                             (_g99629979_ _g99639982_))))
                                     (_g99629979_ _g99639982_))))
                             (_g99629979_ _g99639982_))))
                     (_g99629979_ _g99639982_)))))
          (_g996110024_ _stx9959_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9841_ . _args9842_)
      (let ((_g98449872_
             (lambda (_g98459869_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98459869_))))
        (let ((_g98439956_
               (lambda (_g98459875_)
                 (if (gx#stx-pair? _g98459875_)
                     (let ((_e98489877_ (gx#stx-e _g98459875_)))
                       (let ((_hd98499880_ (##car _e98489877_))
                             (_tl98509882_ (##cdr _e98489877_)))
                         (if (gx#stx-pair/null? _tl98509882_)
                             (if (fx>= (gx#stx-length _tl98509882_) '0)
                                 (let ((_g10321_
                                        (gx#syntax-split-splice
                                         _tl98509882_
                                         '0)))
                                   (begin
                                     (let ((_g10322_ (values-count _g10321_)))
                                       (if (not (fx= _g10322_ 2))
                                           (error "Context expects 2 values"
                                                  _g10322_)))
                                     (let ((_target98519885_
                                            (values-ref _g10321_ 0))
                                           (_tl98539887_
                                            (values-ref _g10321_ 1)))
                                       (if (gx#stx-null? _tl98539887_)
                                           (letrec ((_loop98549890_
                                                     (lambda (_hd98529893_
                                                              _body98589895_
                                                              _hd98599897_)
                                                       (if (gx#stx-pair?
                                                            _hd98529893_)
                                                           (let ((_e98559900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd98529893_)))
                     (let ((_lp-hd98569903_ (##car _e98559900_))
                           (_lp-tl98579905_ (##cdr _e98559900_)))
                       (if (gx#stx-pair? _lp-hd98569903_)
                           (let ((_e98629908_ (gx#stx-e _lp-hd98569903_)))
                             (let ((_hd98639911_ (##car _e98629908_))
                                   (_tl98649913_ (##cdr _e98629908_)))
                               (if (gx#stx-pair? _tl98649913_)
                                   (let ((_e98659916_ (gx#stx-e _tl98649913_)))
                                     (let ((_hd98669919_ (##car _e98659916_))
                                           (_tl98679921_ (##cdr _e98659916_)))
                                       (if (gx#stx-null? _tl98679921_)
                                           (_loop98549890_
                                            _lp-tl98579905_
                                            (cons _hd98669919_ _body98589895_)
                                            (cons _hd98639911_ _hd98599897_))
                                           (_g98449872_ _g98459875_))))
                                   (_g98449872_ _g98459875_))))
                           (_g98449872_ _g98459875_))))
                   (let ((_body98609924_ (reverse _body98589895_))
                         (_hd98619926_ (reverse _hd98599897_)))
                     ((lambda (_L9929_ _L9930_)
                        (for-each
                         (lambda (_g99449946_)
                           (apply gxc#compile-e _g99449946_ _args9842_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g99489951_ _g99499953_)
                                     (cons _g99489951_ _g99499953_))
                                   '()
                                   _L9929_))))
                      _body98609924_
                      _hd98619926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop98549890_
                                              _target98519885_
                                              '()
                                              '()))
                                           (_g98449872_ _g98459875_)))))
                                 (_g98449872_ _g98459875_))
                             (_g98449872_ _g98459875_))))
                     (_g98449872_ _g98459875_)))))
          (_g98439956_ _stx9841_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9694_ . _args9695_)
      (let ((_g96979732_
             (lambda (_g96989729_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96989729_))))
        (let ((_g96969838_
               (lambda (_g96989735_)
                 (if (gx#stx-pair? _g96989735_)
                     (let ((_e97029737_ (gx#stx-e _g96989735_)))
                       (let ((_hd97039740_ (##car _e97029737_))
                             (_tl97049742_ (##cdr _e97029737_)))
                         (if (gx#stx-pair? _tl97049742_)
                             (let ((_e97059745_ (gx#stx-e _tl97049742_)))
                               (let ((_hd97069748_ (##car _e97059745_))
                                     (_tl97079750_ (##cdr _e97059745_)))
                                 (if (gx#stx-pair/null? _hd97069748_)
                                     (if (fx>= (gx#stx-length _hd97069748_) '0)
                                         (let ((_g10323_
                                                (gx#syntax-split-splice
                                                 _hd97069748_
                                                 '0)))
                                           (begin
                                             (let ((_g10324_
                                                    (values-count _g10323_)))
                                               (if (not (fx= _g10324_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10324_)))
                                             (let ((_target97089753_
                                                    (values-ref _g10323_ 0))
                                                   (_tl97109755_
                                                    (values-ref _g10323_ 1)))
                                               (if (gx#stx-null? _tl97109755_)
                                                   (letrec ((_loop97119758_
                                                             (lambda (_hd97099761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr97159763_
                              _hd97169765_)
                       (if (gx#stx-pair? _hd97099761_)
                           (let ((_e97129768_ (gx#stx-e _hd97099761_)))
                             (let ((_lp-hd97139771_ (##car _e97129768_))
                                   (_lp-tl97149773_ (##cdr _e97129768_)))
                               (if (gx#stx-pair? _lp-hd97139771_)
                                   (let ((_e97199776_
                                          (gx#stx-e _lp-hd97139771_)))
                                     (let ((_hd97209779_ (##car _e97199776_))
                                           (_tl97219781_ (##cdr _e97199776_)))
                                       (if (gx#stx-pair? _tl97219781_)
                                           (let ((_e97229784_
                                                  (gx#stx-e _tl97219781_)))
                                             (let ((_hd97239787_
                                                    (##car _e97229784_))
                                                   (_tl97249789_
                                                    (##cdr _e97229784_)))
                                               (if (gx#stx-null? _tl97249789_)
                                                   (_loop97119758_
                                                    _lp-tl97149773_
                                                    (cons _hd97239787_
                                                          _expr97159763_)
                                                    (cons _hd97209779_
                                                          _hd97169765_))
                                                   (_g96979732_ _g96989735_))))
                                           (_g96979732_ _g96989735_))))
                                   (_g96979732_ _g96989735_))))
                           (let ((_expr97179792_ (reverse _expr97159763_))
                                 (_hd97189794_ (reverse _hd97169765_)))
                             (if (gx#stx-pair? _tl97079750_)
                                 (let ((_e97259797_ (gx#stx-e _tl97079750_)))
                                   (let ((_hd97269800_ (##car _e97259797_))
                                         (_tl97279802_ (##cdr _e97259797_)))
                                     (if (gx#stx-null? _tl97279802_)
                                         ((lambda (_L9805_ _L9806_ _L9807_)
                                            (for-each
                                             (lambda (_g98269828_)
                                               (apply gxc#compile-e
                                                      _g98269828_
                                                      _args9695_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g98309833_
                                                                _g98319835_)
                                                         (cons _g98309833_
                                                               _g98319835_))
                                                       (cons _L9805_ '())
                                                       _L9806_))))
                                          _hd97269800_
                                          _expr97179792_
                                          _hd97189794_)
                                         (_g96979732_ _g96989735_))))
                                 (_g96979732_ _g96989735_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop97119758_
                                                      _target97089753_
                                                      '()
                                                      '()))
                                                   (_g96979732_
                                                    _g96989735_)))))
                                         (_g96979732_ _g96989735_))
                                     (_g96979732_ _g96989735_))))
                             (_g96979732_ _g96989735_))))
                     (_g96979732_ _g96989735_)))))
          (_g96969838_ _stx9694_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9626_ . _args9627_)
      (let ((_g96299646_
             (lambda (_g96309643_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96309643_))))
        (let ((_g96289691_
               (lambda (_g96309649_)
                 (if (gx#stx-pair? _g96309649_)
                     (let ((_e96339651_ (gx#stx-e _g96309649_)))
                       (let ((_hd96349654_ (##car _e96339651_))
                             (_tl96359656_ (##cdr _e96339651_)))
                         (if (gx#stx-pair? _tl96359656_)
                             (let ((_e96369659_ (gx#stx-e _tl96359656_)))
                               (let ((_hd96379662_ (##car _e96369659_))
                                     (_tl96389664_ (##cdr _e96369659_)))
                                 (if (gx#stx-pair? _tl96389664_)
                                     (let ((_e96399667_
                                            (gx#stx-e _tl96389664_)))
                                       (let ((_hd96409670_ (##car _e96399667_))
                                             (_tl96419672_
                                              (##cdr _e96399667_)))
                                         (if (gx#stx-null? _tl96419672_)
                                             ((lambda (_L9675_ _L9676_)
                                                (apply gxc#compile-e
                                                       _L9675_
                                                       _args9627_))
                                              _hd96409670_
                                              _hd96379662_)
                                             (_g96299646_ _g96309649_))))
                                     (_g96299646_ _g96309649_))))
                             (_g96299646_ _g96309649_))))
                     (_g96299646_ _g96309649_)))))
          (_g96289691_ _stx9626_)))))
  (define gxc#collect-operands
    (lambda (_stx9539_ . _args9540_)
      (let ((_g95429561_
             (lambda (_g95439558_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95439558_))))
        (let ((_g95419623_
               (lambda (_g95439564_)
                 (if (gx#stx-pair? _g95439564_)
                     (let ((_e95459566_ (gx#stx-e _g95439564_)))
                       (let ((_hd95469569_ (##car _e95459566_))
                             (_tl95479571_ (##cdr _e95459566_)))
                         (if (gx#stx-pair/null? _tl95479571_)
                             (if (fx>= (gx#stx-length _tl95479571_) '0)
                                 (let ((_g10325_
                                        (gx#syntax-split-splice
                                         _tl95479571_
                                         '0)))
                                   (begin
                                     (let ((_g10326_ (values-count _g10325_)))
                                       (if (not (fx= _g10326_ 2))
                                           (error "Context expects 2 values"
                                                  _g10326_)))
                                     (let ((_target95489574_
                                            (values-ref _g10325_ 0))
                                           (_tl95509576_
                                            (values-ref _g10325_ 1)))
                                       (if (gx#stx-null? _tl95509576_)
                                           (letrec ((_loop95519579_
                                                     (lambda (_hd95499582_
                                                              _rands95559584_)
                                                       (if (gx#stx-pair?
                                                            _hd95499582_)
                                                           (let ((_e95529587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd95499582_)))
                     (let ((_lp-hd95539590_ (##car _e95529587_))
                           (_lp-tl95549592_ (##cdr _e95529587_)))
                       (_loop95519579_
                        _lp-tl95549592_
                        (cons _lp-hd95539590_ _rands95559584_))))
                   (let ((_rands95569595_ (reverse _rands95559584_)))
                     ((lambda (_L9598_)
                        (for-each
                         (lambda (_g96119613_)
                           (apply gxc#compile-e _g96119613_ _args9540_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g96159618_ _g96169620_)
                                     (cons _g96159618_ _g96169620_))
                                   '()
                                   _L9598_))))
                      _rands95569595_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop95519579_
                                              _target95489574_
                                              '()))
                                           (_g95429561_ _g95439564_)))))
                                 (_g95429561_ _g95439564_))
                             (_g95429561_ _g95439564_))))
                     (_g95429561_ _g95439564_)))))
          (_g95419623_ _stx9539_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9470_)
      (let ((_g94729489_
             (lambda (_g94739486_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94739486_))))
        (let ((_g94719536_
               (lambda (_g94739492_)
                 (if (gx#stx-pair? _g94739492_)
                     (let ((_e94769494_ (gx#stx-e _g94739492_)))
                       (let ((_hd94779497_ (##car _e94769494_))
                             (_tl94789499_ (##cdr _e94769494_)))
                         (if (gx#stx-pair? _tl94789499_)
                             (let ((_e94799502_ (gx#stx-e _tl94789499_)))
                               (let ((_hd94809505_ (##car _e94799502_))
                                     (_tl94819507_ (##cdr _e94799502_)))
                                 (if (gx#stx-pair? _tl94819507_)
                                     (let ((_e94829510_
                                            (gx#stx-e _tl94819507_)))
                                       (let ((_hd94839513_ (##car _e94829510_))
                                             (_tl94849515_
                                              (##cdr _e94829510_)))
                                         (if (gx#stx-null? _tl94849515_)
                                             ((lambda (_L9518_ _L9519_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9534_)
                                                   (if (gx#identifier?
                                                        _bind9534_)
                                                       (gxc#add-module-binding!
                                                        _bind9534_
                                                        '#f)
                                                       '#!void))
                                                 _L9519_))
                                              _hd94839513_
                                              _hd94809505_)
                                             (_g94729489_ _g94739492_))))
                                     (_g94729489_ _g94739492_))))
                             (_g94729489_ _g94739492_))))
                     (_g94729489_ _g94739492_)))))
          (_g94719536_ _stx9470_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9403_)
      (let ((_g94059422_
             (lambda (_g94069419_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94069419_))))
        (let ((_g94049467_
               (lambda (_g94069425_)
                 (if (gx#stx-pair? _g94069425_)
                     (let ((_e94099427_ (gx#stx-e _g94069425_)))
                       (let ((_hd94109430_ (##car _e94099427_))
                             (_tl94119432_ (##cdr _e94099427_)))
                         (if (gx#stx-pair? _tl94119432_)
                             (let ((_e94129435_ (gx#stx-e _tl94119432_)))
                               (let ((_hd94139438_ (##car _e94129435_))
                                     (_tl94149440_ (##cdr _e94129435_)))
                                 (if (gx#stx-pair? _tl94149440_)
                                     (let ((_e94159443_
                                            (gx#stx-e _tl94149440_)))
                                       (let ((_hd94169446_ (##car _e94159443_))
                                             (_tl94179448_
                                              (##cdr _e94159443_)))
                                         (if (gx#stx-null? _tl94179448_)
                                             ((lambda (_L9451_ _L9452_)
                                                (gxc#add-module-binding!
                                                 _L9452_
                                                 '#t))
                                              _hd94169446_
                                              _hd94139438_)
                                             (_g94059422_ _g94069425_))))
                                     (_g94059422_ _g94069425_))))
                             (_g94059422_ _g94069425_))))
                     (_g94059422_ _g94069425_)))))
          (_g94049467_ _stx9403_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9345_ _modules9346_)
      (let ((_g93489362_
             (lambda (_g93499359_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93499359_))))
        (let ((_g93479400_
               (lambda (_g93499365_)
                 (if (gx#stx-pair? _g93499365_)
                     (let ((_e93529367_ (gx#stx-e _g93499365_)))
                       (let ((_hd93539370_ (##car _e93529367_))
                             (_tl93549372_ (##cdr _e93529367_)))
                         (if (gx#stx-pair? _tl93549372_)
                             (let ((_e93559375_ (gx#stx-e _tl93549372_)))
                               (let ((_hd93569378_ (##car _e93559375_))
                                     (_tl93579380_ (##cdr _e93559375_)))
                                 ((lambda (_L9383_ _L9384_)
                                    (let ((_ctx9397_
                                           (gx#syntax-local-e__0 _L9384_)))
                                      (begin
                                        (set-box!
                                         _modules9346_
                                         (cons _ctx9397_
                                               (unbox _modules9346_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9397_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9346_))
                                         gx#current-expander-context
                                         _ctx9397_))))
                                  _tl93579380_
                                  _hd93569378_)))
                             (_g93489362_ _g93499365_))))
                     (_g93489362_ _g93499365_)))))
          (_g93479400_ _stx9345_)))))
  (define gxc#add-module-binding!
    (lambda (_id9339_ _syntax?9340_)
      (let ((_eid9342_
             (##structure-ref
              (gx#resolve-identifier__0 _id9339_)
              '1
              gx#binding::t
              '#f))
            (_ht9343_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9342_)
            '#!void
            (table-set!
             _ht9343_
             _eid9342_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9342_)
              _syntax?9340_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9320_)
      (let ((_bind9322_ (gx#resolve-identifier__0 _id9320_)))
        (if _bind9322_
            (let ((_eid9324_ (##structure-ref _bind9322_ '1 gx#binding::t '#f))
                  (_ht9325_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9324_)
                  _eid9324_
                  (let ((_$e9327_ (table-ref _ht9325_ _eid9324_ '#f)))
                    (if _$e9327_
                        (values _$e9327_)
                        (if (##structure-instance-of?
                             _bind9322_
                             'gx#local-binding::t)
                            (let ((_gid9330_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9324_)))
                              (begin
                                (table-set! _ht9325_ _eid9324_ _gid9330_)
                                _gid9330_))
                            (if (##structure-instance-of?
                                 _bind9322_
                                 'gx#module-binding::t)
                                (let ((_gid9337_
                                       (let ((_$e9332_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9322_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9332_
                                             ((lambda (_ns9335_)
                                                (make-symbol
                                                 _ns9335_
                                                 '"#"
                                                 _eid9324_))
                                              _$e9332_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9324_)))))
                                  (begin
                                    (table-set! _ht9325_ _eid9324_ _gid9337_)
                                    _gid9337_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9320_
                                 _eid9324_
                                 _bind9322_)))))))
            (if (interned-symbol? (gx#stx-e _id9320_))
                (gx#stx-e _id9320_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9320_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9318_)
      (if (gx#identifier? _id9318_)
          (gxc#generate-runtime-binding-id _id9318_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9296
      (lambda (_sym9298_ _quote?9299_)
        (let ((_ht9301_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9303_ (table-ref _ht9301_ _sym9298_ '#f)))
            (if _$e9303_
                (values _$e9303_)
                (let ((_g9306_ (if _quote?9299_
                                   (make-symbol
                                    '"__"
                                    _sym9298_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9298_ '"_"))))
                  (begin (table-set! _ht9301_ _sym9298_ _g9306_) _g9306_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9311_)
          (let ((_quote?9313_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9296
             _sym9311_
             _quote?9313_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10328_
          (let ((_g10327_ (length _g10328_)))
            (cond ((fx= _g10327_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10328_))
                  ((fx= _g10327_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9296
                          _g10328_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g10328_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9295_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9295_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9257_)
      (if (interned-symbol? _key9257_)
          _key9257_
          (if (uninterned-symbol? _key9257_)
              (gxc#generate-runtime-gensym-reference__0 _key9257_)
              (let ((_key92589265_ _key9257_))
                (let ((_E92609269_
                       (lambda ()
                         (error '"No clause matching" _key92589265_))))
                  (let ((_K92619283_
                         (lambda (_mark9272_ _eid9273_)
                           (let ((_$e9275_
                                  (##structure-ref
                                   _mark9272_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9275_
                                 ((lambda (_ht9278_)
                                    (let ((_$e9280_
                                           (table-ref _ht9278_ _eid9273_ '#f)))
                                      (if _$e9280_
                                          (values _$e9280_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9273_))))
                                  _$e9275_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9273_))))))
                    (if (##pair? _key92589265_)
                        (let ((_hd92629286_ (##car _key92589265_))
                              (_tl92639288_ (##cdr _key92589265_)))
                          (let ((_eid9291_ _hd92629286_))
                            (let ((_mark9293_ _tl92639288_))
                              (_K92619283_ _mark9293_ _eid9291_))))
                        (_E92609269_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9242
      (lambda (_top9244_)
        (if _top9244_
            (let ((_ns9246_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9247_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9247_)
                  (make-symbol
                   _ns9246_
                   '"["
                   (number->string _phi9247_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9246_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9253_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9242 _top9253_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10330_
          (let ((_g10329_ (length _g10330_)))
            (cond ((fx= _g10329_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10330_))
                  ((fx= _g10329_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9242
                          _g10330_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g10330_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9241_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9161_)
      (let ((_g91639173_
             (lambda (_g91649170_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91649170_))))
        (let ((_g91629238_
               (lambda (_g91649176_)
                 (if (gx#stx-pair? _g91649176_)
                     (let ((_e91669178_ (gx#stx-e _g91649176_)))
                       (let ((_hd91679181_ (##car _e91669178_))
                             (_tl91689183_ (##cdr _e91669178_)))
                         ((lambda (_L9186_)
                            (let ((_body9196_
                                   (gx#stx-map1 gxc#compile-e _L9186_)))
                              (let ((_body9235_
                                     (filter (lambda (_stx9198_)
                                               (let ((_g92019210_
                                                      (lambda (_g92029207_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g92029207_))))
                                                 (let ((_g92009217_
                                                        (lambda (_g92029213_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g91999232_
                                                          (lambda (_g92029220_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g92029220_)
                        (let ((_e92039222_ (gx#stx-e _g92029220_)))
                          (let ((_hd92049225_ (##car _e92039222_))
                                (_tl92059227_ (##cdr _e92039222_)))
                            (if (gx#identifier? _hd92049225_)
                                (if (gx#stx-eq? 'begin _hd92049225_)
                                    (if (gx#stx-null? _tl92059227_)
                                        ((lambda () '#f))
                                        (_g92009217_ _g92029220_))
                                    (_g92009217_ _g92029220_))
                                (_g92009217_ _g92029220_))))
                        (_g92009217_ _g92029220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g91999232_
                                                      _stx9198_)))))
                                             _body9196_)))
                                (let ()
                                  (if (fx= (length _body9235_) '1)
                                      (car _body9235_)
                                      (cons 'begin _body9235_))))))
                          _tl91689183_)))
                     (_g91639173_ _g91649176_)))))
          (_g91629238_ _stx9161_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9123_)
      (let ((_g91259135_
             (lambda (_g91269132_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91269132_))))
        (let ((_g91249158_
               (lambda (_g91269138_)
                 (if (gx#stx-pair? _g91269138_)
                     (let ((_e91289140_ (gx#stx-e _g91269138_)))
                       (let ((_hd91299143_ (##car _e91289140_))
                             (_tl91309145_ (##cdr _e91289140_)))
                         ((lambda (_L9148_)
                            (cons 'begin (gx#syntax->datum _L9148_)))
                          _tl91309145_)))
                     (_g91259135_ _g91269138_)))))
          (_g91249158_ _stx9123_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9085_)
      (let ((_g90879097_
             (lambda (_g90889094_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90889094_))))
        (let ((_g90869120_
               (lambda (_g90889100_)
                 (if (gx#stx-pair? _g90889100_)
                     (let ((_e90909102_ (gx#stx-e _g90889100_)))
                       (let ((_hd90919105_ (##car _e90909102_))
                             (_tl90929107_ (##cdr _e90909102_)))
                         ((lambda (_L9110_)
                            (cons 'declare (map gx#syntax->datum _L9110_)))
                          _tl90929107_)))
                     (_g90879097_ _g90889100_)))))
          (_g90869120_ _stx9085_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8847_)
      (let ((_g88498866_
             (lambda (_g88508863_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88508863_))))
        (let ((_g88489082_
               (lambda (_g88508869_)
                 (if (gx#stx-pair? _g88508869_)
                     (let ((_e88538871_ (gx#stx-e _g88508869_)))
                       (let ((_hd88548874_ (##car _e88538871_))
                             (_tl88558876_ (##cdr _e88538871_)))
                         (if (gx#stx-pair? _tl88558876_)
                             (let ((_e88568879_ (gx#stx-e _tl88558876_)))
                               (let ((_hd88578882_ (##car _e88568879_))
                                     (_tl88588884_ (##cdr _e88568879_)))
                                 (if (gx#stx-pair? _tl88588884_)
                                     (let ((_e88598887_
                                            (gx#stx-e _tl88588884_)))
                                       (let ((_hd88608890_ (##car _e88598887_))
                                             (_tl88618892_
                                              (##cdr _e88598887_)))
                                         (if (gx#stx-null? _tl88618892_)
                                             ((lambda (_L8895_ _L8896_)
                                                (let ((_g89138926_
                                                       (lambda (_g89148923_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g89148923_))))
                                                  (let ((_g89129040_
                                                         (lambda (_g89148929_)
                                                           ((lambda ()
                                                              (let ((_tmp8933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9242
                              '#t)))
                        (let ((_body9037_
                               ((letrec ((_lp8935_
                                          (lambda (_rest8937_ _k8938_ _r8939_)
                                            (let ((_g89448960_
                                                   (lambda (_g89458957_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g89458957_))))
                                              (let ((_g89438967_
                                                     (lambda (_g89458963_)
                                                       ((lambda ()
                                                          (reverse _r8939_))))))
                                                (let ((_g89428988_
                                                       (lambda (_g89458970_)
                                                         ((lambda (_L8972_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8972_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8972_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8938_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8939_)
                        (_g89438967_ _g89458970_)))
                  _g89458970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g89419012_
                                                         (lambda (_g89458991_)
                                                           (if (gx#stx-pair?
                                                                _g89458991_)
                                                               (let ((_e89528993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g89458991_)))
                         (let ((_hd89538996_ (##car _e89528993_))
                               (_tl89548998_ (##cdr _e89528993_)))
                           ((lambda (_L9001_ _L9002_)
                              (_lp8935_
                               _L9001_
                               (fx+ _k8938_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L9002_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8938_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8939_)))
                            _tl89548998_
                            _hd89538996_)))
                       (_g89428988_ _g89458991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g89409034_
                                                           (lambda (_g89459015_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g89459015_)
                         (let ((_e89479017_ (gx#stx-e _g89459015_)))
                           (let ((_hd89489020_ (##car _e89479017_))
                                 (_tl89499022_ (##cdr _e89479017_)))
                             (if (gx#stx-datum? _hd89489020_)
                                 (if (equal? (gx#stx-e _hd89489020_) '#f)
                                     ((lambda (_L9025_)
                                        (_lp8935_
                                         _L9025_
                                         (fx+ _k8938_ '1)
                                         _r8939_))
                                      _tl89499022_)
                                     (_g89419012_ _g89459015_))
                                 (_g89419012_ _g89459015_))))
                         (_g89419012_ _g89459015_)))))
              (_g89409034_ _rest8937_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8935_)
                                _L8896_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8933_
                                                    (cons (gxc#compile-e
                                                           _L8895_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8933_
                                               _L8896_)
                                              _body9037_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g89119064_
                                                           (lambda (_g89149043_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g89149043_)
                         (let ((_e89199045_ (gx#stx-e _g89149043_)))
                           (let ((_hd89209048_ (##car _e89199045_))
                                 (_tl89219050_ (##cdr _e89199045_)))
                             (if (gx#stx-null? _tl89219050_)
                                 ((lambda (_L9053_)
                                    (let ((_eid9062_
                                           (gxc#generate-runtime-binding-id
                                            _L9053_)))
                                      (begin
                                        (table-set!
                                         (gxc#current-compile-runtime-names)
                                         _L8895_
                                         _eid9062_)
                                        (cons 'define
                                              (cons _eid9062_
                                                    (cons (gxc#compile-e
                                                           _L8895_)
                                                          '()))))))
                                  _hd89209048_)
                                 (_g89129040_ _g89149043_))))
                         (_g89129040_ _g89149043_)))))
              (let ((_g89109079_
                     (lambda (_g89149067_)
                       (if (gx#stx-pair? _g89149067_)
                           (let ((_e89159069_ (gx#stx-e _g89149067_)))
                             (let ((_hd89169072_ (##car _e89159069_))
                                   (_tl89179074_ (##cdr _e89159069_)))
                               (if (gx#stx-datum? _hd89169072_)
                                   (if (equal? (gx#stx-e _hd89169072_) '#f)
                                       (if (gx#stx-null? _tl89179074_)
                                           ((lambda ()
                                              (gxc#compile-e _L8895_)))
                                           (_g89119064_ _g89149067_))
                                       (_g89119064_ _g89149067_))
                                   (_g89119064_ _g89149067_))))
                           (_g89119064_ _g89149067_)))))
                (_g89109079_ _L8896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd88608890_
                                              _hd88578882_)
                                             (_g88498866_ _g88508869_))))
                                     (_g88498866_ _g88508869_))))
                             (_g88498866_ _g88508869_))))
                     (_g88498866_ _g88508869_)))))
          (_g88489082_ _stx8847_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8835_ _hd8836_)
      (let ((_len8838_ (gx#stx-length _hd8836_)))
        (let ((_cmp8840_ (if (gx#stx-list? _hd8836_) 'fx= 'fx>=)))
          (let ((_errmsg8842_
                 (string-append
                  (if (gx#stx-list? _hd8836_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8838_)
                  '" values")))
            (let ((_count8844_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8836_)) (fx= _len8838_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8844_
                                            (cons (cons 'values-count
                                                        (cons _vals8835_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8844_ (cons _len8838_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8844_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8768_)
      (let ((_g87708787_
             (lambda (_g87718784_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87718784_))))
        (let ((_g87698832_
               (lambda (_g87718790_)
                 (if (gx#stx-pair? _g87718790_)
                     (let ((_e87748792_ (gx#stx-e _g87718790_)))
                       (let ((_hd87758795_ (##car _e87748792_))
                             (_tl87768797_ (##cdr _e87748792_)))
                         (if (gx#stx-pair? _tl87768797_)
                             (let ((_e87778800_ (gx#stx-e _tl87768797_)))
                               (let ((_hd87788803_ (##car _e87778800_))
                                     (_tl87798805_ (##cdr _e87778800_)))
                                 (if (gx#stx-pair? _tl87798805_)
                                     (let ((_e87808808_
                                            (gx#stx-e _tl87798805_)))
                                       (let ((_hd87818811_ (##car _e87808808_))
                                             (_tl87828813_
                                              (##cdr _e87808808_)))
                                         (if (gx#stx-null? _tl87828813_)
                                             ((lambda (_L8816_ _L8817_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8817_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8816_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd87818811_
                                              _hd87788803_)
                                             (_g87708787_ _g87718790_))))
                                     (_g87708787_ _g87718790_))))
                             (_g87708787_ _g87718790_))))
                     (_g87708787_ _g87718790_)))))
          (_g87698832_ _stx8768_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8766_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8766_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7299_)
      (let ((_runtime-identifier=?7301_
             (lambda (_id-stx8757_ _sym8758_)
               (let ((_bind87598761_ (gx#resolve-identifier__0 _id-stx8757_)))
                 (if _bind87598761_
                     (let ((_bind8764_ _bind87598761_))
                       (eq? (##structure-ref _bind8764_ '1 gx#binding::t '#f)
                            _sym8758_))
                     '#f)))))
        (let ((_dispatch-case?7302_
               (lambda (_hd7987_ _body7988_)
                 (let ((_form7990_ (cons _hd7987_ (cons _body7988_ '()))))
                   (let ((_g79958152_
                          (lambda (_g79968149_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g79968149_))))
                     (let ((_g79948159_
                            (lambda (_g79968155_) ((lambda () '#f)))))
                       (let ((_g79938300_
                              (lambda (_g79968162_)
                                (if (gx#stx-pair? _g79968162_)
                                    (let ((_e81128164_ (gx#stx-e _g79968162_)))
                                      (let ((_hd81138167_ (##car _e81128164_))
                                            (_tl81148169_ (##cdr _e81128164_)))
                                        (if (gx#stx-pair? _tl81148169_)
                                            (let ((_e81158172_
                                                   (gx#stx-e _tl81148169_)))
                                              (let ((_hd81168175_
                                                     (##car _e81158172_))
                                                    (_tl81178177_
                                                     (##cdr _e81158172_)))
                                                (if (gx#stx-pair? _hd81168175_)
                                                    (let ((_e81188180_
                                                           (gx#stx-e
                                                            _hd81168175_)))
                                                      (let ((_hd81198183_
                                                             (##car _e81188180_))
                                                            (_tl81208185_
                                                             (##cdr _e81188180_)))
                                                        (if (gx#identifier?
                                                             _hd81198183_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd81198183_)
                        (if (gx#stx-pair? _tl81208185_)
                            (let ((_e81218188_ (gx#stx-e _tl81208185_)))
                              (let ((_hd81228191_ (##car _e81218188_))
                                    (_tl81238193_ (##cdr _e81218188_)))
                                (if (gx#stx-pair? _hd81228191_)
                                    (let ((_e81248196_
                                           (gx#stx-e _hd81228191_)))
                                      (let ((_hd81258199_ (##car _e81248196_))
                                            (_tl81268201_ (##cdr _e81248196_)))
                                        (if (gx#identifier? _hd81258199_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd81258199_)
                                                (if (gx#stx-pair? _tl81268201_)
                                                    (let ((_e81278204_
                                                           (gx#stx-e
                                                            _tl81268201_)))
                                                      (let ((_hd81288207_
                                                             (##car _e81278204_))
                                                            (_tl81298209_
                                                             (##cdr _e81278204_)))
                                                        (if (gx#stx-null?
                                                             _tl81298209_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81238193_)
                        (let ((_e81308212_ (gx#stx-e _tl81238193_)))
                          (let ((_hd81318215_ (##car _e81308212_))
                                (_tl81328217_ (##cdr _e81308212_)))
                            (if (gx#stx-pair? _hd81318215_)
                                (let ((_e81338220_ (gx#stx-e _hd81318215_)))
                                  (let ((_hd81348223_ (##car _e81338220_))
                                        (_tl81358225_ (##cdr _e81338220_)))
                                    (if (gx#identifier? _hd81348223_)
                                        (if (gx#stx-eq? '%#ref _hd81348223_)
                                            (if (gx#stx-pair? _tl81358225_)
                                                (let ((_e81368228_
                                                       (gx#stx-e
                                                        _tl81358225_)))
                                                  (let ((_hd81378231_
                                                         (##car _e81368228_))
                                                        (_tl81388233_
                                                         (##cdr _e81368228_)))
                                                    (if (gx#stx-null?
                                                         _tl81388233_)
                                                        (if (gx#stx-pair?
                                                             _tl81328217_)
                                                            (let ((_e81398236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl81328217_)))
                      (let ((_hd81408239_ (##car _e81398236_))
                            (_tl81418241_ (##cdr _e81398236_)))
                        (if (gx#stx-pair? _hd81408239_)
                            (let ((_e81428244_ (gx#stx-e _hd81408239_)))
                              (let ((_hd81438247_ (##car _e81428244_))
                                    (_tl81448249_ (##cdr _e81428244_)))
                                (if (gx#identifier? _hd81438247_)
                                    (if (gx#stx-eq? '%#ref _hd81438247_)
                                        (if (gx#stx-pair? _tl81448249_)
                                            (let ((_e81458252_
                                                   (gx#stx-e _tl81448249_)))
                                              (let ((_hd81468255_
                                                     (##car _e81458252_))
                                                    (_tl81478257_
                                                     (##cdr _e81458252_)))
                                                (if (gx#stx-null? _tl81478257_)
                                                    (if (gx#stx-null?
                                                         _tl81418241_)
                                                        (if (gx#stx-null?
                                                             _tl81178177_)
                                                            ((lambda (_L8260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8261_
                              _L8262_
                              _L8263_)
                       (if (if (gx#identifier? _L8263_)
                               (if (_runtime-identifier=?7301_ _L8262_ 'apply)
                                   (if (gx#free-identifier=? _L8263_ _L8260_)
                                       (not (gx#free-identifier=?
                                             _L8261_
                                             _L8263_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g79948159_ _g79968162_)))
                     _hd81468255_
                     _hd81378231_
                     _hd81288207_
                     _hd81138167_)
                    (_g79948159_ _g79968162_))
                (_g79948159_ _g79968162_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79948159_
                                                     _g79968162_))))
                                            (_g79948159_ _g79968162_))
                                        (_g79948159_ _g79968162_))
                                    (_g79948159_ _g79968162_))))
                            (_g79948159_ _g79968162_))))
                    (_g79948159_ _g79968162_))
                (_g79948159_ _g79968162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79948159_ _g79968162_))
                                            (_g79948159_ _g79968162_))
                                        (_g79948159_ _g79968162_))))
                                (_g79948159_ _g79968162_))))
                        (_g79948159_ _g79968162_))
                    (_g79948159_ _g79968162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79948159_ _g79968162_))
                                                (_g79948159_ _g79968162_))
                                            (_g79948159_ _g79968162_))))
                                    (_g79948159_ _g79968162_))))
                            (_g79948159_ _g79968162_))
                        (_g79948159_ _g79968162_))
                    (_g79948159_ _g79968162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79948159_
                                                     _g79968162_))))
                                            (_g79948159_ _g79968162_))))
                                    (_g79948159_ _g79968162_)))))
                         (let ((_g79928560_
                                (lambda (_g79968303_)
                                  (if (gx#stx-pair? _g79968303_)
                                      (let ((_e80488305_
                                             (gx#stx-e _g79968303_)))
                                        (let ((_hd80498308_
                                               (##car _e80488305_))
                                              (_tl80508310_
                                               (##cdr _e80488305_)))
                                          (if (gx#stx-pair/null? _hd80498308_)
                                              (if (fx>= (gx#stx-length
                                                         _hd80498308_)
                                                        '0)
                                                  (let ((_g10339_
                                                         (gx#syntax-split-splice
                                                          _hd80498308_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10340_
                                                             (values-count
                                                              _g10339_)))
                                                        (if (not (fx= _g10340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10340_)))
              (let ((_target80518313_ (values-ref _g10339_ 0))
                    (_tl80538315_ (values-ref _g10339_ 1)))
                (letrec ((_loop80548318_
                          (lambda (_hd80528321_ _arg80588323_)
                            (if (gx#stx-pair? _hd80528321_)
                                (let ((_e80558326_ (gx#stx-e _hd80528321_)))
                                  (let ((_lp-hd80568329_ (##car _e80558326_))
                                        (_lp-tl80578331_ (##cdr _e80558326_)))
                                    (_loop80548318_
                                     _lp-tl80578331_
                                     (cons _lp-hd80568329_ _arg80588323_))))
                                (let ((_arg80598334_ (reverse _arg80588323_)))
                                  (if (gx#stx-pair? _tl80508310_)
                                      (let ((_e80608337_
                                             (gx#stx-e _tl80508310_)))
                                        (let ((_hd80618340_
                                               (##car _e80608337_))
                                              (_tl80628342_
                                               (##cdr _e80608337_)))
                                          (if (gx#stx-pair? _hd80618340_)
                                              (let ((_e80638345_
                                                     (gx#stx-e _hd80618340_)))
                                                (let ((_hd80648348_
                                                       (##car _e80638345_))
                                                      (_tl80658350_
                                                       (##cdr _e80638345_)))
                                                  (if (gx#identifier?
                                                       _hd80648348_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd80648348_)
                                                          (if (gx#stx-pair?
                                                               _tl80658350_)
                                                              (let ((_e80668353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl80658350_)))
                        (let ((_hd80678356_ (##car _e80668353_))
                              (_tl80688358_ (##cdr _e80668353_)))
                          (if (gx#stx-pair? _hd80678356_)
                              (let ((_e80698361_ (gx#stx-e _hd80678356_)))
                                (let ((_hd80708364_ (##car _e80698361_))
                                      (_tl80718366_ (##cdr _e80698361_)))
                                  (if (gx#identifier? _hd80708364_)
                                      (if (gx#stx-eq? '%#ref _hd80708364_)
                                          (if (gx#stx-pair? _tl80718366_)
                                              (let ((_e80728369_
                                                     (gx#stx-e _tl80718366_)))
                                                (let ((_hd80738372_
                                                       (##car _e80728369_))
                                                      (_tl80748374_
                                                       (##cdr _e80728369_)))
                                                  (if (gx#stx-null?
                                                       _tl80748374_)
                                                      (if (gx#stx-pair?
                                                           _tl80688358_)
                                                          (let ((_e80758377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl80688358_)))
                    (let ((_hd80768380_ (##car _e80758377_))
                          (_tl80778382_ (##cdr _e80758377_)))
                      (if (gx#stx-pair? _hd80768380_)
                          (let ((_e80788385_ (gx#stx-e _hd80768380_)))
                            (let ((_hd80798388_ (##car _e80788385_))
                                  (_tl80808390_ (##cdr _e80788385_)))
                              (if (gx#identifier? _hd80798388_)
                                  (if (gx#stx-eq? '%#ref _hd80798388_)
                                      (if (gx#stx-pair? _tl80808390_)
                                          (let ((_e80818393_
                                                 (gx#stx-e _tl80808390_)))
                                            (let ((_hd80828396_
                                                   (##car _e80818393_))
                                                  (_tl80838398_
                                                   (##cdr _e80818393_)))
                                              (if (gx#stx-null? _tl80838398_)
                                                  (if (gx#stx-pair/null?
                                                       _tl80778382_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80778382_)
                        '1)
                  (let ((_g10341_ (gx#syntax-split-splice _tl80778382_ '1)))
                    (begin
                      (let ((_g10342_ (values-count _g10341_)))
                        (if (not (fx= _g10342_ 2))
                            (error "Context expects 2 values" _g10342_)))
                      (let ((_target80848401_ (values-ref _g10341_ 0))
                            (_tl80868403_ (values-ref _g10341_ 1)))
                        (if (gx#stx-pair? _tl80868403_)
                            (let ((_e80938406_ (gx#stx-e _tl80868403_)))
                              (let ((_hd80948409_ (##car _e80938406_))
                                    (_tl80958411_ (##cdr _e80938406_)))
                                (if (gx#stx-pair? _hd80948409_)
                                    (let ((_e80968414_
                                           (gx#stx-e _hd80948409_)))
                                      (let ((_hd80978417_ (##car _e80968414_))
                                            (_tl80988419_ (##cdr _e80968414_)))
                                        (if (gx#identifier? _hd80978417_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd80978417_)
                                                (if (gx#stx-pair? _tl80988419_)
                                                    (let ((_e80998422_
                                                           (gx#stx-e
                                                            _tl80988419_)))
                                                      (let ((_hd81008425_
                                                             (##car _e80998422_))
                                                            (_tl81018427_
                                                             (##cdr _e80998422_)))
                                                        (if (gx#stx-null?
                                                             _tl81018427_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80958411_)
                        (letrec ((_loop80878430_
                                  (lambda (_hd80858433_ _xarg80918435_)
                                    (if (gx#stx-pair? _hd80858433_)
                                        (let ((_e80888438_
                                               (gx#stx-e _hd80858433_)))
                                          (let ((_lp-hd80898441_
                                                 (##car _e80888438_))
                                                (_lp-tl80908443_
                                                 (##cdr _e80888438_)))
                                            (if (gx#stx-pair? _lp-hd80898441_)
                                                (let ((_e81028446_
                                                       (gx#stx-e
                                                        _lp-hd80898441_)))
                                                  (let ((_hd81038449_
                                                         (##car _e81028446_))
                                                        (_tl81048451_
                                                         (##cdr _e81028446_)))
                                                    (if (gx#identifier?
                                                         _hd81038449_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd81038449_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81048451_)
                        (let ((_e81058454_ (gx#stx-e _tl81048451_)))
                          (let ((_hd81068457_ (##car _e81058454_))
                                (_tl81078459_ (##cdr _e81058454_)))
                            (if (gx#stx-null? _tl81078459_)
                                (_loop80878430_
                                 _lp-tl80908443_
                                 (cons _hd81068457_ _xarg80918435_))
                                (_g79938300_ _g79968303_))))
                        (_g79938300_ _g79968303_))
                    (_g79938300_ _g79968303_))
                (_g79938300_ _g79968303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79938300_ _g79968303_))))
                                        (let ((_xarg80928462_
                                               (reverse _xarg80918435_)))
                                          (if (gx#stx-null? _tl80628342_)
                                              ((lambda (_L8465_
                                                        _L8466_
                                                        _L8467_
                                                        _L8468_
                                                        _L8469_
                                                        _L8470_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g85138516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g85148518_)
                              (cons _g85138516_ _g85148518_))
                            '()
                            _L8470_)))
                 (if (gx#identifier? _L8469_)
                     (if (_runtime-identifier=?7301_ _L8468_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g85208523_
                                                             _g85218525_)
                                                      (cons _g85208523_
                                                            _g85218525_))
                                                    '()
                                                    _L8470_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g85278530_
                                                             _g85288532_)
                                                      (cons _g85278530_
                                                            _g85288532_))
                                                    '()
                                                    _L8466_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g85348537_
                                                            _g85358539_)
                                                     (cons _g85348537_
                                                           _g85358539_))
                                                   '()
                                                   _L8470_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g85418544_
                                                            _g85428546_)
                                                     (cons _g85418544_
                                                           _g85428546_))
                                                   '()
                                                   _L8466_)))
                                 (if (gx#free-identifier=? _L8469_ _L8465_)
                                     (not (find (lambda (_g85488550_)
                                                  (gx#free-identifier=?
                                                   _g85488550_
                                                   _L8467_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85528555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85538557_)
                    (cons _g85528555_ _g85538557_))
                  (cons _L8469_ '())
                  _L8470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g79938300_
                                                      _g79968303_)))
                                               _hd81008425_
                                               _xarg80928462_
                                               _hd80828396_
                                               _hd80738372_
                                               _tl80538315_
                                               _arg80598334_)
                                              (_g79938300_ _g79968303_)))))))
                          (_loop80878430_ _target80848401_ '()))
                        (_g79938300_ _g79968303_))
                    (_g79938300_ _g79968303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79938300_ _g79968303_))
                                                (_g79938300_ _g79968303_))
                                            (_g79938300_ _g79968303_))))
                                    (_g79938300_ _g79968303_))))
                            (_g79938300_ _g79968303_)))))
                  (_g79938300_ _g79968303_))
              (_g79938300_ _g79968303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79938300_ _g79968303_))))
                                          (_g79938300_ _g79968303_))
                                      (_g79938300_ _g79968303_))
                                  (_g79938300_ _g79968303_))))
                          (_g79938300_ _g79968303_))))
                  (_g79938300_ _g79968303_))
              (_g79938300_ _g79968303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g79938300_ _g79968303_))
                                          (_g79938300_ _g79968303_))
                                      (_g79938300_ _g79968303_))))
                              (_g79938300_ _g79968303_))))
                      (_g79938300_ _g79968303_))
                  (_g79938300_ _g79968303_))
              (_g79938300_ _g79968303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g79938300_ _g79968303_))))
                                      (_g79938300_ _g79968303_)))))))
                  (_loop80548318_ _target80518313_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79938300_ _g79968303_))
                                              (_g79938300_ _g79968303_))))
                                      (_g79938300_ _g79968303_)))))
                           (let ((_g79918754_
                                  (lambda (_g79968563_)
                                    (if (gx#stx-pair? _g79968563_)
                                        (let ((_e80008565_
                                               (gx#stx-e _g79968563_)))
                                          (let ((_hd80018568_
                                                 (##car _e80008565_))
                                                (_tl80028570_
                                                 (##cdr _e80008565_)))
                                            (if (gx#stx-pair/null?
                                                 _hd80018568_)
                                                (if (fx>= (gx#stx-length
                                                           _hd80018568_)
                                                          '0)
                                                    (let ((_g10343_
                                                           (gx#syntax-split-splice
                                                            _hd80018568_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10344_
                                                               (values-count
                                                                _g10343_)))
                                                          (if (not (fx= _g10344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10344_)))
                (let ((_target80038573_ (values-ref _g10343_ 0))
                      (_tl80058575_ (values-ref _g10343_ 1)))
                  (if (gx#stx-null? _tl80058575_)
                      (letrec ((_loop80068578_
                                (lambda (_hd80048581_ _arg80108583_)
                                  (if (gx#stx-pair? _hd80048581_)
                                      (let ((_e80078586_
                                             (gx#stx-e _hd80048581_)))
                                        (let ((_lp-hd80088589_
                                               (##car _e80078586_))
                                              (_lp-tl80098591_
                                               (##cdr _e80078586_)))
                                          (_loop80068578_
                                           _lp-tl80098591_
                                           (cons _lp-hd80088589_
                                                 _arg80108583_))))
                                      (let ((_arg80118594_
                                             (reverse _arg80108583_)))
                                        (if (gx#stx-pair? _tl80028570_)
                                            (let ((_e80128597_
                                                   (gx#stx-e _tl80028570_)))
                                              (let ((_hd80138600_
                                                     (##car _e80128597_))
                                                    (_tl80148602_
                                                     (##cdr _e80128597_)))
                                                (if (gx#stx-pair? _hd80138600_)
                                                    (let ((_e80158605_
                                                           (gx#stx-e
                                                            _hd80138600_)))
                                                      (let ((_hd80168608_
                                                             (##car _e80158605_))
                                                            (_tl80178610_
                                                             (##cdr _e80158605_)))
                                                        (if (gx#identifier?
                                                             _hd80168608_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd80168608_)
                        (if (gx#stx-pair? _tl80178610_)
                            (let ((_e80188613_ (gx#stx-e _tl80178610_)))
                              (let ((_hd80198616_ (##car _e80188613_))
                                    (_tl80208618_ (##cdr _e80188613_)))
                                (if (gx#stx-pair? _hd80198616_)
                                    (let ((_e80218621_
                                           (gx#stx-e _hd80198616_)))
                                      (let ((_hd80228624_ (##car _e80218621_))
                                            (_tl80238626_ (##cdr _e80218621_)))
                                        (if (gx#identifier? _hd80228624_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd80228624_)
                                                (if (gx#stx-pair? _tl80238626_)
                                                    (let ((_e80248629_
                                                           (gx#stx-e
                                                            _tl80238626_)))
                                                      (let ((_hd80258632_
                                                             (##car _e80248629_))
                                                            (_tl80268634_
                                                             (##cdr _e80248629_)))
                                                        (if (gx#stx-null?
                                                             _tl80268634_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80208618_)
                        (if (fx>= (gx#stx-length _tl80208618_) '0)
                            (let ((_g10345_
                                   (gx#syntax-split-splice _tl80208618_ '0)))
                              (begin
                                (let ((_g10346_ (values-count _g10345_)))
                                  (if (not (fx= _g10346_ 2))
                                      (error "Context expects 2 values"
                                             _g10346_)))
                                (let ((_target80278637_
                                       (values-ref _g10345_ 0))
                                      (_tl80298639_ (values-ref _g10345_ 1)))
                                  (if (gx#stx-null? _tl80298639_)
                                      (letrec ((_loop80308642_
                                                (lambda (_hd80288645_
                                                         _xarg80348647_)
                                                  (if (gx#stx-pair?
                                                       _hd80288645_)
                                                      (let ((_e80318650_
                                                             (gx#stx-e
                                                              _hd80288645_)))
                                                        (let ((_lp-hd80328653_
                                                               (##car _e80318650_))
                                                              (_lp-tl80338655_
                                                               (##cdr _e80318650_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd80328653_)
                                                              (let ((_e80368658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd80328653_)))
                        (let ((_hd80378661_ (##car _e80368658_))
                              (_tl80388663_ (##cdr _e80368658_)))
                          (if (gx#identifier? _hd80378661_)
                              (if (gx#stx-eq? '%#ref _hd80378661_)
                                  (if (gx#stx-pair? _tl80388663_)
                                      (let ((_e80398666_
                                             (gx#stx-e _tl80388663_)))
                                        (let ((_hd80408669_
                                               (##car _e80398666_))
                                              (_tl80418671_
                                               (##cdr _e80398666_)))
                                          (if (gx#stx-null? _tl80418671_)
                                              (_loop80308642_
                                               _lp-tl80338655_
                                               (cons _hd80408669_
                                                     _xarg80348647_))
                                              (_g79928560_ _g79968563_))))
                                      (_g79928560_ _g79968563_))
                                  (_g79928560_ _g79968563_))
                              (_g79928560_ _g79968563_))))
                      (_g79928560_ _g79968563_))))
              (let ((_xarg80358674_ (reverse _xarg80348647_)))
                (if (gx#stx-null? _tl80148602_)
                    ((lambda (_L8677_ _L8678_ _L8679_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g87078710_ _g87088712_)
                                            (cons _g87078710_ _g87088712_))
                                          '()
                                          _L8679_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g87148717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g87158719_)
                    (cons _g87148717_ _g87158719_))
                  '()
                  _L8679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g87218724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g87228726_)
                    (cons _g87218724_ _g87228726_))
                  '()
                  _L8677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g87288731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87298733_)
                   (cons _g87288731_ _g87298733_))
                 '()
                 _L8679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g87358738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87368740_)
                   (cons _g87358738_ _g87368740_))
                 '()
                 _L8677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g87428744_)
                                                    (gx#free-identifier=?
                                                     _g87428744_
                                                     _L8678_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g87468749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g87478751_)
                      (cons _g87468749_ _g87478751_))
                    '()
                    _L8679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g79928560_ _g79968563_)))
                     _xarg80358674_
                     _hd80258632_
                     _arg80118594_)
                    (_g79928560_ _g79968563_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop80308642_ _target80278637_ '()))
                                      (_g79928560_ _g79968563_)))))
                            (_g79928560_ _g79968563_))
                        (_g79928560_ _g79968563_))
                    (_g79928560_ _g79968563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79928560_ _g79968563_))
                                                (_g79928560_ _g79968563_))
                                            (_g79928560_ _g79968563_))))
                                    (_g79928560_ _g79968563_))))
                            (_g79928560_ _g79968563_))
                        (_g79928560_ _g79968563_))
                    (_g79928560_ _g79968563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79928560_
                                                     _g79968563_))))
                                            (_g79928560_ _g79968563_)))))))
                        (_loop80068578_ _target80038573_ '()))
                      (_g79928560_ _g79968563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79928560_ _g79968563_))
                                                (_g79928560_ _g79968563_))))
                                        (_g79928560_ _g79968563_)))))
                             (_g79918754_ _form7990_))))))))))
          (let ((_dispatch-case-e7303_
                 (lambda (_hd7451_ _body7452_)
                   (let ((_form7454_ (cons _hd7451_ (cons _body7452_ '()))))
                     (let ((_g74587582_
                            (lambda (_g74597579_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g74597579_))))
                       (let ((_g74577700_
                              (lambda (_g74597585_)
                                (if (gx#stx-pair? _g74597585_)
                                    (let ((_e75487587_ (gx#stx-e _g74597585_)))
                                      (let ((_hd75497590_ (##car _e75487587_))
                                            (_tl75507592_ (##cdr _e75487587_)))
                                        (if (gx#stx-pair? _tl75507592_)
                                            (let ((_e75517595_
                                                   (gx#stx-e _tl75507592_)))
                                              (let ((_hd75527598_
                                                     (##car _e75517595_))
                                                    (_tl75537600_
                                                     (##cdr _e75517595_)))
                                                (if (gx#stx-pair? _hd75527598_)
                                                    (let ((_e75547603_
                                                           (gx#stx-e
                                                            _hd75527598_)))
                                                      (let ((_hd75557606_
                                                             (##car _e75547603_))
                                                            (_tl75567608_
                                                             (##cdr _e75547603_)))
                                                        (if (gx#identifier?
                                                             _hd75557606_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd75557606_)
                        (if (gx#stx-pair? _tl75567608_)
                            (let ((_e75577611_ (gx#stx-e _tl75567608_)))
                              (let ((_hd75587614_ (##car _e75577611_))
                                    (_tl75597616_ (##cdr _e75577611_)))
                                (if (gx#stx-pair? _hd75587614_)
                                    (let ((_e75607619_
                                           (gx#stx-e _hd75587614_)))
                                      (let ((_hd75617622_ (##car _e75607619_))
                                            (_tl75627624_ (##cdr _e75607619_)))
                                        (if (gx#identifier? _hd75617622_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd75617622_)
                                                (if (gx#stx-pair? _tl75627624_)
                                                    (let ((_e75637627_
                                                           (gx#stx-e
                                                            _tl75627624_)))
                                                      (let ((_hd75647630_
                                                             (##car _e75637627_))
                                                            (_tl75657632_
                                                             (##cdr _e75637627_)))
                                                        (if (gx#stx-null?
                                                             _tl75657632_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75597616_)
                        (let ((_e75667635_ (gx#stx-e _tl75597616_)))
                          (let ((_hd75677638_ (##car _e75667635_))
                                (_tl75687640_ (##cdr _e75667635_)))
                            (if (gx#stx-pair? _hd75677638_)
                                (let ((_e75697643_ (gx#stx-e _hd75677638_)))
                                  (let ((_hd75707646_ (##car _e75697643_))
                                        (_tl75717648_ (##cdr _e75697643_)))
                                    (if (gx#identifier? _hd75707646_)
                                        (if (gx#stx-eq? '%#ref _hd75707646_)
                                            (if (gx#stx-pair? _tl75717648_)
                                                (let ((_e75727651_
                                                       (gx#stx-e
                                                        _tl75717648_)))
                                                  (let ((_hd75737654_
                                                         (##car _e75727651_))
                                                        (_tl75747656_
                                                         (##cdr _e75727651_)))
                                                    (if (gx#stx-null?
                                                         _tl75747656_)
                                                        (if (gx#stx-pair?
                                                             _tl75687640_)
                                                            (let ((_e75757659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl75687640_)))
                      (let ((_hd75767662_ (##car _e75757659_))
                            (_tl75777664_ (##cdr _e75757659_)))
                        (if (gx#stx-null? _tl75777664_)
                            (if (gx#stx-null? _tl75537600_)
                                ((lambda (_L7667_ _L7668_ _L7669_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7667_ '()))))
                                 _hd75737654_
                                 _hd75647630_
                                 _hd75497590_)
                                (_g74587582_ _g74597585_))
                            (_g74587582_ _g74597585_))))
                    (_g74587582_ _g74597585_))
                (_g74587582_ _g74597585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g74587582_ _g74597585_))
                                            (_g74587582_ _g74597585_))
                                        (_g74587582_ _g74597585_))))
                                (_g74587582_ _g74597585_))))
                        (_g74587582_ _g74597585_))
                    (_g74587582_ _g74597585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74587582_ _g74597585_))
                                                (_g74587582_ _g74597585_))
                                            (_g74587582_ _g74597585_))))
                                    (_g74587582_ _g74597585_))))
                            (_g74587582_ _g74597585_))
                        (_g74587582_ _g74597585_))
                    (_g74587582_ _g74597585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74587582_
                                                     _g74597585_))))
                                            (_g74587582_ _g74597585_))))
                                    (_g74587582_ _g74597585_)))))
                         (let ((_g74567836_
                                (lambda (_g74597703_)
                                  (if (gx#stx-pair? _g74597703_)
                                      (let ((_e75097705_
                                             (gx#stx-e _g74597703_)))
                                        (let ((_hd75107708_
                                               (##car _e75097705_))
                                              (_tl75117710_
                                               (##cdr _e75097705_)))
                                          (if (gx#stx-pair/null? _hd75107708_)
                                              (if (fx>= (gx#stx-length
                                                         _hd75107708_)
                                                        '0)
                                                  (let ((_g10333_
                                                         (gx#syntax-split-splice
                                                          _hd75107708_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10334_
                                                             (values-count
                                                              _g10333_)))
                                                        (if (not (fx= _g10334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10334_)))
              (let ((_target75127713_ (values-ref _g10333_ 0))
                    (_tl75147715_ (values-ref _g10333_ 1)))
                (letrec ((_loop75157718_
                          (lambda (_hd75137721_ _arg75197723_)
                            (if (gx#stx-pair? _hd75137721_)
                                (let ((_e75167726_ (gx#stx-e _hd75137721_)))
                                  (let ((_lp-hd75177729_ (##car _e75167726_))
                                        (_lp-tl75187731_ (##cdr _e75167726_)))
                                    (_loop75157718_
                                     _lp-tl75187731_
                                     (cons _lp-hd75177729_ _arg75197723_))))
                                (let ((_arg75207734_ (reverse _arg75197723_)))
                                  (if (gx#stx-pair? _tl75117710_)
                                      (let ((_e75217737_
                                             (gx#stx-e _tl75117710_)))
                                        (let ((_hd75227740_
                                               (##car _e75217737_))
                                              (_tl75237742_
                                               (##cdr _e75217737_)))
                                          (if (gx#stx-pair? _hd75227740_)
                                              (let ((_e75247745_
                                                     (gx#stx-e _hd75227740_)))
                                                (let ((_hd75257748_
                                                       (##car _e75247745_))
                                                      (_tl75267750_
                                                       (##cdr _e75247745_)))
                                                  (if (gx#identifier?
                                                       _hd75257748_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd75257748_)
                                                          (if (gx#stx-pair?
                                                               _tl75267750_)
                                                              (let ((_e75277753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl75267750_)))
                        (let ((_hd75287756_ (##car _e75277753_))
                              (_tl75297758_ (##cdr _e75277753_)))
                          (if (gx#stx-pair? _hd75287756_)
                              (let ((_e75307761_ (gx#stx-e _hd75287756_)))
                                (let ((_hd75317764_ (##car _e75307761_))
                                      (_tl75327766_ (##cdr _e75307761_)))
                                  (if (gx#identifier? _hd75317764_)
                                      (if (gx#stx-eq? '%#ref _hd75317764_)
                                          (if (gx#stx-pair? _tl75327766_)
                                              (let ((_e75337769_
                                                     (gx#stx-e _tl75327766_)))
                                                (let ((_hd75347772_
                                                       (##car _e75337769_))
                                                      (_tl75357774_
                                                       (##cdr _e75337769_)))
                                                  (if (gx#stx-null?
                                                       _tl75357774_)
                                                      (if (gx#stx-pair?
                                                           _tl75297758_)
                                                          (let ((_e75367777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl75297758_)))
                    (let ((_hd75377780_ (##car _e75367777_))
                          (_tl75387782_ (##cdr _e75367777_)))
                      (if (gx#stx-pair? _hd75377780_)
                          (let ((_e75397785_ (gx#stx-e _hd75377780_)))
                            (let ((_hd75407788_ (##car _e75397785_))
                                  (_tl75417790_ (##cdr _e75397785_)))
                              (if (gx#identifier? _hd75407788_)
                                  (if (gx#stx-eq? '%#ref _hd75407788_)
                                      (if (gx#stx-pair? _tl75417790_)
                                          (let ((_e75427793_
                                                 (gx#stx-e _tl75417790_)))
                                            (let ((_hd75437796_
                                                   (##car _e75427793_))
                                                  (_tl75447798_
                                                   (##cdr _e75427793_)))
                                              (if (gx#stx-null? _tl75447798_)
                                                  (if (gx#stx-null?
                                                       _tl75237742_)
                                                      ((lambda (_L7801_
                                                                _L7802_
                                                                _L7803_
                                                                _L7804_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7801_ '()))))
               _hd75437796_
               _hd75347772_
               _tl75147715_
               _arg75207734_)
              (_g74577700_ _g74597703_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74577700_ _g74597703_))))
                                          (_g74577700_ _g74597703_))
                                      (_g74577700_ _g74597703_))
                                  (_g74577700_ _g74597703_))))
                          (_g74577700_ _g74597703_))))
                  (_g74577700_ _g74597703_))
              (_g74577700_ _g74597703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g74577700_ _g74597703_))
                                          (_g74577700_ _g74597703_))
                                      (_g74577700_ _g74597703_))))
                              (_g74577700_ _g74597703_))))
                      (_g74577700_ _g74597703_))
                  (_g74577700_ _g74597703_))
              (_g74577700_ _g74597703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g74577700_ _g74597703_))))
                                      (_g74577700_ _g74597703_)))))))
                  (_loop75157718_ _target75127713_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74577700_ _g74597703_))
                                              (_g74577700_ _g74597703_))))
                                      (_g74577700_ _g74597703_)))))
                           (let ((_g74557984_
                                  (lambda (_g74597839_)
                                    (if (gx#stx-pair? _g74597839_)
                                        (let ((_e74637841_
                                               (gx#stx-e _g74597839_)))
                                          (let ((_hd74647844_
                                                 (##car _e74637841_))
                                                (_tl74657846_
                                                 (##cdr _e74637841_)))
                                            (if (gx#stx-pair/null?
                                                 _hd74647844_)
                                                (if (fx>= (gx#stx-length
                                                           _hd74647844_)
                                                          '0)
                                                    (let ((_g10335_
                                                           (gx#syntax-split-splice
                                                            _hd74647844_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10336_
                                                               (values-count
                                                                _g10335_)))
                                                          (if (not (fx= _g10336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10336_)))
                (let ((_target74667849_ (values-ref _g10335_ 0))
                      (_tl74687851_ (values-ref _g10335_ 1)))
                  (if (gx#stx-null? _tl74687851_)
                      (letrec ((_loop74697854_
                                (lambda (_hd74677857_ _arg74737859_)
                                  (if (gx#stx-pair? _hd74677857_)
                                      (let ((_e74707862_
                                             (gx#stx-e _hd74677857_)))
                                        (let ((_lp-hd74717865_
                                               (##car _e74707862_))
                                              (_lp-tl74727867_
                                               (##cdr _e74707862_)))
                                          (_loop74697854_
                                           _lp-tl74727867_
                                           (cons _lp-hd74717865_
                                                 _arg74737859_))))
                                      (let ((_arg74747870_
                                             (reverse _arg74737859_)))
                                        (if (gx#stx-pair? _tl74657846_)
                                            (let ((_e74757873_
                                                   (gx#stx-e _tl74657846_)))
                                              (let ((_hd74767876_
                                                     (##car _e74757873_))
                                                    (_tl74777878_
                                                     (##cdr _e74757873_)))
                                                (if (gx#stx-pair? _hd74767876_)
                                                    (let ((_e74787881_
                                                           (gx#stx-e
                                                            _hd74767876_)))
                                                      (let ((_hd74797884_
                                                             (##car _e74787881_))
                                                            (_tl74807886_
                                                             (##cdr _e74787881_)))
                                                        (if (gx#identifier?
                                                             _hd74797884_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd74797884_)
                        (if (gx#stx-pair? _tl74807886_)
                            (let ((_e74817889_ (gx#stx-e _tl74807886_)))
                              (let ((_hd74827892_ (##car _e74817889_))
                                    (_tl74837894_ (##cdr _e74817889_)))
                                (if (gx#stx-pair? _hd74827892_)
                                    (let ((_e74847897_
                                           (gx#stx-e _hd74827892_)))
                                      (let ((_hd74857900_ (##car _e74847897_))
                                            (_tl74867902_ (##cdr _e74847897_)))
                                        (if (gx#identifier? _hd74857900_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd74857900_)
                                                (if (gx#stx-pair? _tl74867902_)
                                                    (let ((_e74877905_
                                                           (gx#stx-e
                                                            _tl74867902_)))
                                                      (let ((_hd74887908_
                                                             (##car _e74877905_))
                                                            (_tl74897910_
                                                             (##cdr _e74877905_)))
                                                        (if (gx#stx-null?
                                                             _tl74897910_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74837894_)
                        (if (fx>= (gx#stx-length _tl74837894_) '0)
                            (let ((_g10337_
                                   (gx#syntax-split-splice _tl74837894_ '0)))
                              (begin
                                (let ((_g10338_ (values-count _g10337_)))
                                  (if (not (fx= _g10338_ 2))
                                      (error "Context expects 2 values"
                                             _g10338_)))
                                (let ((_target74907913_
                                       (values-ref _g10337_ 0))
                                      (_tl74927915_ (values-ref _g10337_ 1)))
                                  (if (gx#stx-null? _tl74927915_)
                                      (letrec ((_loop74937918_
                                                (lambda (_hd74917921_
                                                         _xarg74977923_)
                                                  (if (gx#stx-pair?
                                                       _hd74917921_)
                                                      (let ((_e74947926_
                                                             (gx#stx-e
                                                              _hd74917921_)))
                                                        (let ((_lp-hd74957929_
                                                               (##car _e74947926_))
                                                              (_lp-tl74967931_
                                                               (##cdr _e74947926_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd74957929_)
                                                              (let ((_e74997934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd74957929_)))
                        (let ((_hd75007937_ (##car _e74997934_))
                              (_tl75017939_ (##cdr _e74997934_)))
                          (if (gx#identifier? _hd75007937_)
                              (if (gx#stx-eq? '%#ref _hd75007937_)
                                  (if (gx#stx-pair? _tl75017939_)
                                      (let ((_e75027942_
                                             (gx#stx-e _tl75017939_)))
                                        (let ((_hd75037945_
                                               (##car _e75027942_))
                                              (_tl75047947_
                                               (##cdr _e75027942_)))
                                          (if (gx#stx-null? _tl75047947_)
                                              (_loop74937918_
                                               _lp-tl74967931_
                                               (cons _hd75037945_
                                                     _xarg74977923_))
                                              (_g74567836_ _g74597839_))))
                                      (_g74567836_ _g74597839_))
                                  (_g74567836_ _g74597839_))
                              (_g74567836_ _g74597839_))))
                      (_g74567836_ _g74597839_))))
              (let ((_xarg74987950_ (reverse _xarg74977923_)))
                (if (gx#stx-null? _tl74777878_)
                    ((lambda (_L7953_ _L7954_ _L7955_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7954_ '()))))
                     _xarg74987950_
                     _hd74887908_
                     _arg74747870_)
                    (_g74567836_ _g74597839_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop74937918_ _target74907913_ '()))
                                      (_g74567836_ _g74597839_)))))
                            (_g74567836_ _g74597839_))
                        (_g74567836_ _g74597839_))
                    (_g74567836_ _g74597839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74567836_ _g74597839_))
                                                (_g74567836_ _g74597839_))
                                            (_g74567836_ _g74597839_))))
                                    (_g74567836_ _g74597839_))))
                            (_g74567836_ _g74597839_))
                        (_g74567836_ _g74597839_))
                    (_g74567836_ _g74597839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74567836_
                                                     _g74597839_))))
                                            (_g74567836_ _g74597839_)))))))
                        (_loop74697854_ _target74667849_ '()))
                      (_g74567836_ _g74597839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74567836_ _g74597839_))
                                                (_g74567836_ _g74597839_))))
                                        (_g74567836_ _g74597839_)))))
                             (_g74557984_ _form7454_)))))))))
            (let ((_generate17304_
                   (lambda (_args7439_ _arglen7440_ _hd7441_ _body7442_)
                     (let ((_len7444_ (gx#stx-length _hd7441_)))
                       (let ((_condition7446_
                              (if (gx#stx-list? _hd7441_)
                                  (cons 'fx=
                                        (cons _arglen7440_
                                              (cons _len7444_ '())))
                                  (if (> _len7444_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7440_
                                                  (cons _len7444_ '())))
                                      '#t))))
                         (let ((_dispatch7448_
                                (if (_dispatch-case?7302_ _hd7441_ _body7442_)
                                    (_dispatch-case-e7303_ _hd7441_ _body7442_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7441_)
                                                (cons (gxc#compile-e
                                                       _body7442_)
                                                      '()))))))
                           (let ()
                             (cons _condition7446_
                                   (cons (cons 'apply
                                               (cons _dispatch7448_
                                                     (cons _args7439_ '())))
                                         '())))))))))
              (let ((_g73067334_
                     (lambda (_g73077331_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g73077331_))))
                (let ((_g73057436_
                       (lambda (_g73077337_)
                         (if (gx#stx-pair? _g73077337_)
                             (let ((_e73107339_ (gx#stx-e _g73077337_)))
                               (let ((_hd73117342_ (##car _e73107339_))
                                     (_tl73127344_ (##cdr _e73107339_)))
                                 (if (gx#stx-pair/null? _tl73127344_)
                                     (if (fx>= (gx#stx-length _tl73127344_) '0)
                                         (let ((_g10331_
                                                (gx#syntax-split-splice
                                                 _tl73127344_
                                                 '0)))
                                           (begin
                                             (let ((_g10332_
                                                    (values-count _g10331_)))
                                               (if (not (fx= _g10332_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10332_)))
                                             (let ((_target73137347_
                                                    (values-ref _g10331_ 0))
                                                   (_tl73157349_
                                                    (values-ref _g10331_ 1)))
                                               (if (gx#stx-null? _tl73157349_)
                                                   (letrec ((_loop73167352_
                                                             (lambda (_hd73147355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body73207357_
                              _hd73217359_)
                       (if (gx#stx-pair? _hd73147355_)
                           (let ((_e73177362_ (gx#stx-e _hd73147355_)))
                             (let ((_lp-hd73187365_ (##car _e73177362_))
                                   (_lp-tl73197367_ (##cdr _e73177362_)))
                               (if (gx#stx-pair? _lp-hd73187365_)
                                   (let ((_e73247370_
                                          (gx#stx-e _lp-hd73187365_)))
                                     (let ((_hd73257373_ (##car _e73247370_))
                                           (_tl73267375_ (##cdr _e73247370_)))
                                       (if (gx#stx-pair? _tl73267375_)
                                           (let ((_e73277378_
                                                  (gx#stx-e _tl73267375_)))
                                             (let ((_hd73287381_
                                                    (##car _e73277378_))
                                                   (_tl73297383_
                                                    (##cdr _e73277378_)))
                                               (if (gx#stx-null? _tl73297383_)
                                                   (_loop73167352_
                                                    _lp-tl73197367_
                                                    (cons _hd73287381_
                                                          _body73207357_)
                                                    (cons _hd73257373_
                                                          _hd73217359_))
                                                   (_g73067334_ _g73077337_))))
                                           (_g73067334_ _g73077337_))))
                                   (_g73067334_ _g73077337_))))
                           (let ((_body73227386_ (reverse _body73207357_))
                                 (_hd73237388_ (reverse _hd73217359_)))
                             ((lambda (_L7391_ _L7392_)
                                (let ((_args7411_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7412_
                                       (gxc#generate-runtime-temporary__0))
                                      (_name7413_
                                       (let ((_$e7408_
                                              (table-ref
                                               (gxc#current-compile-runtime-names)
                                               _stx7299_
                                               '#f)))
                                         (if _$e7408_
                                             _$e7408_
                                             ''case-lambda-dispatch))))
                                  (cons 'lambda
                                        (cons _args7411_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7411_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons '##raise-wrong-number-of-arguments-exception
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _name7413_ (cons _args7411_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g74147417_
                                                          _g74157419_)
                                                   (_generate17304_
                                                    _args7411_
                                                    _arglen7412_
                                                    _g74147417_
                                                    _g74157419_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g74217424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g74227426_)
                     (cons _g74217424_ _g74227426_))
                   '()
                   _L7392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g74287431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g74297433_)
                     (cons _g74287431_ _g74297433_))
                   '()
                   _L7391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body73227386_
                              _hd73237388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop73167352_
                                                      _target73137347_
                                                      '()
                                                      '()))
                                                   (_g73067334_
                                                    _g73077337_)))))
                                         (_g73067334_ _g73077337_))
                                     (_g73067334_ _g73077337_))))
                             (_g73067334_ _g73077337_)))))
                  (_g73057436_ _stx7299_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6979
      (lambda (_stx6981_ _compiled-body?6982_)
        (let ((_generate-simple6984_
               (lambda (_hd7286_ _body7287_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7286_
                  _body7287_
                  _compiled-body?6982_))))
          (let ((_generate-values-post6986_
                 (lambda (_post7058_ _body7059_)
                   ((letrec ((_lp7061_
                              (lambda (_rest7063_ _body7064_)
                                (let ((_rest70657073_ _rest7063_))
                                  (let ((_E70687077_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest70657073_))))
                                    (let ((_else70677081_
                                           (lambda () _body7064_)))
                                      (let ((_K70697087_
                                             (lambda (_rest7084_ _bind7085_)
                                               (_lp7061_
                                                _rest7084_
                                                (cons 'let
                                                      (cons _bind7085_
                                                            (cons _body7064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest70657073_)
                                            (let ((_hd70707090_
                                                   (##car _rest70657073_))
                                                  (_tl70717092_
                                                   (##cdr _rest70657073_)))
                                              (let ((_bind7095_ _hd70707090_))
                                                (let ((_rest7097_
                                                       _tl70717092_))
                                                  (_K70697087_
                                                   _rest7097_
                                                   _bind7095_))))
                                            (_else70677081_)))))))))
                      _lp7061_)
                    _post7058_
                    _body7059_))))
            (let ((_generate-values-check6987_
                   (lambda (_check7055_ _body7056_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body7056_ '())
                                   (reverse _check7055_))))))
              (let ((_generate-values6985_
                     (lambda (_hd7099_ _body7100_)
                       ((letrec ((_lp7102_
                                  (lambda (_rest7104_
                                           _bind7105_
                                           _check7106_
                                           _post7107_)
                                    (let ((_g71107121_
                                           (lambda (_g71117118_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g71117118_))))
                                      (let ((_g71097135_
                                             (lambda (_g71117124_)
                                               ((lambda ()
                                                  (let ((_body7128_
                                                         (if _compiled-body?6982_
                                                             _body7100_
                                                             (gxc#compile-e
                                                              _body7100_))))
                                                    (let ((_body7130_
                                                           (_generate-values-post6986_
                                                            _post7107_
                                                            _body7128_)))
                                                      (let ((_body7132_
                                                             (_generate-values-check6987_
                                                              _check7106_
                                                              _body7130_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind7105_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body7132_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g71087283_
                                               (lambda (_g71117138_)
                                                 (if (gx#stx-pair? _g71117138_)
                                                     (let ((_e71147140_
                                                            (gx#stx-e
                                                             _g71117138_)))
                                                       (let ((_hd71157143_
                                                              (##car _e71147140_))
                                                             (_tl71167145_
                                                              (##cdr _e71147140_)))
                                                         ((lambda (_L7148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7149_)
                    (let ((_g71647189_
                           (lambda (_g71657186_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g71657186_))))
                      (let ((_g71637233_
                             (lambda (_g71657192_)
                               (if (gx#stx-pair? _g71657192_)
                                   (let ((_e71797194_ (gx#stx-e _g71657192_)))
                                     (let ((_hd71807197_ (##car _e71797194_))
                                           (_tl71817199_ (##cdr _e71797194_)))
                                       (if (gx#stx-pair? _tl71817199_)
                                           (let ((_e71827202_
                                                  (gx#stx-e _tl71817199_)))
                                             (let ((_hd71837205_
                                                    (##car _e71827202_))
                                                   (_tl71847207_
                                                    (##cdr _e71827202_)))
                                               (if (gx#stx-null? _tl71847207_)
                                                   ((lambda (_L7210_ _L7211_)
                                                      (let ((_vals7224_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7226_
                                                               (gxc#compile-e
                                                                _L7210_)))
                                                          (let ((_check-values7228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7224_
                          _L7211_)))
                    (let ((_refs7230_
                           (gxc#generate-runtime-let-values-bind
                            _vals7224_
                            _L7211_)))
                      (let ()
                        (_lp7102_
                         _L7148_
                         (cons (cons _vals7224_ (cons _expr7226_ '()))
                               _bind7105_)
                         (cons _check-values7228_ _check7106_)
                         (cons _refs7230_ _post7107_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd71837205_
                                                    _hd71807197_)
                                                   (_g71647189_ _g71657192_))))
                                           (_g71647189_ _g71657192_))))
                                   (_g71647189_ _g71657192_)))))
                        (let ((_g71627280_
                               (lambda (_g71657236_)
                                 (if (gx#stx-pair? _g71657236_)
                                     (let ((_e71687238_
                                            (gx#stx-e _g71657236_)))
                                       (let ((_hd71697241_ (##car _e71687238_))
                                             (_tl71707243_
                                              (##cdr _e71687238_)))
                                         (if (gx#stx-pair? _hd71697241_)
                                             (let ((_e71717246_
                                                    (gx#stx-e _hd71697241_)))
                                               (let ((_hd71727249_
                                                      (##car _e71717246_))
                                                     (_tl71737251_
                                                      (##cdr _e71717246_)))
                                                 (if (gx#stx-null?
                                                      _tl71737251_)
                                                     (if (gx#stx-pair?
                                                          _tl71707243_)
                                                         (let ((_e71747254_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl71707243_)))
                   (let ((_hd71757257_ (##car _e71747254_))
                         (_tl71767259_ (##cdr _e71747254_)))
                     (if (gx#stx-null? _tl71767259_)
                         ((lambda (_L7262_ _L7263_)
                            (let ((_eid7277_
                                   (gxc#generate-runtime-binding-id* _L7263_))
                                  (_expr7278_ (gxc#compile-e _L7262_)))
                              (_lp7102_
                               _L7148_
                               (cons (cons _eid7277_ (cons _expr7278_ '()))
                                     _bind7105_)
                               _check7106_
                               _post7107_)))
                          _hd71757257_
                          _hd71727249_)
                         (_g71637233_ _g71657236_))))
                 (_g71637233_ _g71657236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71637233_
                                                      _g71657236_))))
                                             (_g71637233_ _g71657236_))))
                                     (_g71637233_ _g71657236_)))))
                          (_g71627280_ _L7149_)))))
                  _tl71167145_
                  _hd71157143_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71097135_
                                                      _g71117138_)))))
                                          (_g71087283_ _rest7104_)))))))
                          _lp7102_)
                        _hd7099_
                        '()
                        '()
                        '()))))
                (let ((_g69897006_
                       (lambda (_g69907003_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g69907003_))))
                  (let ((_g69887052_
                         (lambda (_g69907009_)
                           (if (gx#stx-pair? _g69907009_)
                               (let ((_e69937011_ (gx#stx-e _g69907009_)))
                                 (let ((_hd69947014_ (##car _e69937011_))
                                       (_tl69957016_ (##cdr _e69937011_)))
                                   (if (gx#stx-pair? _tl69957016_)
                                       (let ((_e69967019_
                                              (gx#stx-e _tl69957016_)))
                                         (let ((_hd69977022_
                                                (##car _e69967019_))
                                               (_tl69987024_
                                                (##cdr _e69967019_)))
                                           (if (gx#stx-pair? _tl69987024_)
                                               (let ((_e69997027_
                                                      (gx#stx-e _tl69987024_)))
                                                 (let ((_hd70007030_
                                                        (##car _e69997027_))
                                                       (_tl70017032_
                                                        (##cdr _e69997027_)))
                                                   (if (gx#stx-null?
                                                        _tl70017032_)
                                                       ((lambda (_L7035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7036_)
                  (if (gxc#generate-runtime-simple-let? _L7036_)
                      (_generate-simple6984_ _L7036_ _L7035_)
                      (_generate-values6985_ _L7036_ _L7035_)))
                _hd70007030_
                _hd69977022_)
               (_g69897006_ _g69907009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g69897006_ _g69907009_))))
                                       (_g69897006_ _g69907009_))))
                               (_g69897006_ _g69907009_)))))
                    (_g69887052_ _stx6981_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7292_)
          (let ((_compiled-body?7294_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6979
             _stx7292_
             _compiled-body?7294_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10348_
          (let ((_g10347_ (length _g10348_)))
            (cond ((fx= _g10347_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10348_))
                  ((fx= _g10347_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6979
                          _g10348_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g10348_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6880_ _hd6881_)
      ((letrec ((_lp6883_
                 (lambda (_rest6885_ _k6886_ _r6887_)
                   (let ((_g68926908_
                          (lambda (_g68936905_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g68936905_))))
                     (let ((_g68916915_
                            (lambda (_g68936911_)
                              ((lambda () (reverse _r6887_))))))
                       (let ((_g68906931_
                              (lambda (_g68936918_)
                                ((lambda (_L6920_)
                                   (if (gx#identifier? _L6920_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6920_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6880_ (cons _k6886_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6887_)
                                       (_g68916915_ _g68936918_)))
                                 _g68936918_))))
                         (let ((_g68896955_
                                (lambda (_g68936934_)
                                  (if (gx#stx-pair? _g68936934_)
                                      (let ((_e69006936_
                                             (gx#stx-e _g68936934_)))
                                        (let ((_hd69016939_
                                               (##car _e69006936_))
                                              (_tl69026941_
                                               (##cdr _e69006936_)))
                                          ((lambda (_L6944_ _L6945_)
                                             (_lp6883_
                                              _L6944_
                                              (fx+ _k6886_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6945_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6880_ (cons _k6886_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6887_)))
                                           _tl69026941_
                                           _hd69016939_)))
                                      (_g68906931_ _g68936934_)))))
                           (let ((_g68886977_
                                  (lambda (_g68936958_)
                                    (if (gx#stx-pair? _g68936958_)
                                        (let ((_e68956960_
                                               (gx#stx-e _g68936958_)))
                                          (let ((_hd68966963_
                                                 (##car _e68956960_))
                                                (_tl68976965_
                                                 (##cdr _e68956960_)))
                                            (if (gx#stx-datum? _hd68966963_)
                                                (if (equal? (gx#stx-e
                                                             _hd68966963_)
                                                            '#f)
                                                    ((lambda (_L6968_)
                                                       (_lp6883_
                                                        _L6968_
                                                        (fx+ _k6886_ '1)
                                                        _r6887_))
                                                     _tl68976965_)
                                                    (_g68896955_ _g68936958_))
                                                (_g68896955_ _g68936958_))))
                                        (_g68896955_ _g68936958_)))))
                             (_g68886977_ _rest6885_)))))))))
         _lp6883_)
       _hd6881_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6558
      (lambda (_stx6560_ _compiled-body?6561_)
        (let ((_generate-simple6563_
               (lambda (_hd6867_ _body6868_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6867_
                  _body6868_
                  _compiled-body?6561_))))
          (let ((_generate-values-check6565_
                 (lambda (_check6641_ _body6642_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6642_ '())
                                 (reverse _check6641_))))))
            (let ((_generate-values-post6566_
                   (lambda (_post6634_ _body6635_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6635_ '())
                                   (map (lambda (_g66366638_)
                                          (cons 'set! _g66366638_))
                                        (reverse _post6634_)))))))
              (let ((_generate-values6564_
                     (lambda (_hd6644_ _body6645_)
                       ((letrec ((_lp6647_
                                  (lambda (_rest6649_
                                           _bind6650_
                                           _check6651_
                                           _post6652_)
                                    (let ((_g66556666_
                                           (lambda (_g66566663_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g66566663_))))
                                      (let ((_g66546680_
                                             (lambda (_g66566669_)
                                               ((lambda ()
                                                  (let ((_body6673_
                                                         (if _compiled-body?6561_
                                                             _body6645_
                                                             (gxc#compile-e
                                                              _body6645_))))
                                                    (let ((_body6675_
                                                           (_generate-values-post6566_
                                                            _post6652_
                                                            _body6673_)))
                                                      (let ((_body6677_
                                                             (_generate-values-check6565_
                                                              _check6651_
                                                              _body6675_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6650_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6677_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g66536864_
                                               (lambda (_g66566683_)
                                                 (if (gx#stx-pair? _g66566683_)
                                                     (let ((_e66596685_
                                                            (gx#stx-e
                                                             _g66566683_)))
                                                       (let ((_hd66606688_
                                                              (##car _e66596685_))
                                                             (_tl66616690_
                                                              (##cdr _e66596685_)))
                                                         ((lambda (_L6693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6694_)
                    (let ((_g67096734_
                           (lambda (_g67106731_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g67106731_))))
                      (let ((_g67086814_
                             (lambda (_g67106737_)
                               (if (gx#stx-pair? _g67106737_)
                                   (let ((_e67246739_ (gx#stx-e _g67106737_)))
                                     (let ((_hd67256742_ (##car _e67246739_))
                                           (_tl67266744_ (##cdr _e67246739_)))
                                       (if (gx#stx-pair? _tl67266744_)
                                           (let ((_e67276747_
                                                  (gx#stx-e _tl67266744_)))
                                             (let ((_hd67286750_
                                                    (##car _e67276747_))
                                                   (_tl67296752_
                                                    (##cdr _e67276747_)))
                                               (if (gx#stx-null? _tl67296752_)
                                                   ((lambda (_L6755_ _L6756_)
                                                      (let ((_vals6769_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6771_
                                                               (gxc#compile-e
                                                                _L6755_)))
                                                          (let ((_check-values6773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6769_
                          _L6756_)))
                    (let ((_refs6775_
                           (gxc#generate-runtime-let-values-bind
                            _vals6769_
                            _L6756_)))
                      (let ()
                        (_lp6647_
                         _L6693_
                         (foldl1 cons
                                 (cons (cons _vals6769_ (cons _expr6771_ '()))
                                       _bind6650_)
                                 (map (lambda (_e67776779_)
                                        (let ((_g67816790_ _e67776779_))
                                          (let ((_E67836794_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g67816790_))))
                                            (let ((_K67846799_
                                                   (lambda (_eid6797_)
                                                     (cons _eid6797_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g67816790_)
                                                  (let ((_hd67856802_
                                                         (##car _g67816790_))
                                                        (_tl67866804_
                                                         (##cdr _g67816790_)))
                                                    (let ((_eid6807_
                                                           _hd67856802_))
                                                      (if (##pair? _tl67866804_)
                                                          (let ((_hd67876809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl67866804_))
                        (_tl67886811_ (##cdr _tl67866804_)))
                    (if (##null? _tl67886811_)
                        (_K67846799_ _eid6807_)
                        (_E67836794_)))
                  (_E67836794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E67836794_))))))
                                      _refs6775_))
                         (cons _check-values6773_ _check6651_)
                         (foldl1 cons _refs6775_ _post6652_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd67286750_
                                                    _hd67256742_)
                                                   (_g67096734_ _g67106737_))))
                                           (_g67096734_ _g67106737_))))
                                   (_g67096734_ _g67106737_)))))
                        (let ((_g67076861_
                               (lambda (_g67106817_)
                                 (if (gx#stx-pair? _g67106817_)
                                     (let ((_e67136819_
                                            (gx#stx-e _g67106817_)))
                                       (let ((_hd67146822_ (##car _e67136819_))
                                             (_tl67156824_
                                              (##cdr _e67136819_)))
                                         (if (gx#stx-pair? _hd67146822_)
                                             (let ((_e67166827_
                                                    (gx#stx-e _hd67146822_)))
                                               (let ((_hd67176830_
                                                      (##car _e67166827_))
                                                     (_tl67186832_
                                                      (##cdr _e67166827_)))
                                                 (if (gx#stx-null?
                                                      _tl67186832_)
                                                     (if (gx#stx-pair?
                                                          _tl67156824_)
                                                         (let ((_e67196835_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67156824_)))
                   (let ((_hd67206838_ (##car _e67196835_))
                         (_tl67216840_ (##cdr _e67196835_)))
                     (if (gx#stx-null? _tl67216840_)
                         ((lambda (_L6843_ _L6844_)
                            (let ((_eid6858_
                                   (gxc#generate-runtime-binding-id* _L6844_))
                                  (_expr6859_ (gxc#compile-e _L6843_)))
                              (_lp6647_
                               _L6693_
                               (cons (cons _eid6858_ (cons _expr6859_ '()))
                                     _bind6650_)
                               _check6651_
                               _post6652_)))
                          _hd67206838_
                          _hd67176830_)
                         (_g67086814_ _g67106817_))))
                 (_g67086814_ _g67106817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g67086814_
                                                      _g67106817_))))
                                             (_g67086814_ _g67106817_))))
                                     (_g67086814_ _g67106817_)))))
                          (_g67076861_ _L6694_)))))
                  _tl66616690_
                  _hd66606688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66546680_
                                                      _g66566683_)))))
                                          (_g66536864_ _rest6649_)))))))
                          _lp6647_)
                        _hd6644_
                        '()
                        '()
                        '()))))
                (let ((_g65686585_
                       (lambda (_g65696582_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g65696582_))))
                  (let ((_g65676631_
                         (lambda (_g65696588_)
                           (if (gx#stx-pair? _g65696588_)
                               (let ((_e65726590_ (gx#stx-e _g65696588_)))
                                 (let ((_hd65736593_ (##car _e65726590_))
                                       (_tl65746595_ (##cdr _e65726590_)))
                                   (if (gx#stx-pair? _tl65746595_)
                                       (let ((_e65756598_
                                              (gx#stx-e _tl65746595_)))
                                         (let ((_hd65766601_
                                                (##car _e65756598_))
                                               (_tl65776603_
                                                (##cdr _e65756598_)))
                                           (if (gx#stx-pair? _tl65776603_)
                                               (let ((_e65786606_
                                                      (gx#stx-e _tl65776603_)))
                                                 (let ((_hd65796609_
                                                        (##car _e65786606_))
                                                       (_tl65806611_
                                                        (##cdr _e65786606_)))
                                                   (if (gx#stx-null?
                                                        _tl65806611_)
                                                       ((lambda (_L6614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6615_)
                  (if (gxc#generate-runtime-simple-let? _L6615_)
                      (_generate-simple6563_ _L6615_ _L6614_)
                      (_generate-values6564_ _L6615_ _L6614_)))
                _hd65796609_
                _hd65766601_)
               (_g65686585_ _g65696588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65686585_ _g65696588_))))
                                       (_g65686585_ _g65696588_))))
                               (_g65686585_ _g65696588_)))))
                    (_g65676631_ _stx6560_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6873_)
          (let ((_compiled-body?6875_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6558
             _stx6873_
             _compiled-body?6875_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10350_
          (let ((_g10349_ (length _g10350_)))
            (cond ((fx= _g10349_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10350_))
                  ((fx= _g10349_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6558
                          _g10350_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g10350_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5679_)
      (let ((_collect-closures5682_
             (lambda (_forms6500_)
               (map (lambda (_e65016503_)
                      (let ((_g65056514_ _e65016503_))
                        (let ((_E65076518_
                               (lambda ()
                                 (error '"No clause matching" _g65056514_))))
                          (let ((_K65086523_
                                 (lambda (_expr6521_)
                                   (gxc#collect-expression-refs _expr6521_))))
                            (if (##pair? _g65056514_)
                                (let ((_hd65096526_ (##car _g65056514_))
                                      (_tl65106528_ (##cdr _g65056514_)))
                                  (if (##pair? _tl65106528_)
                                      (let ((_hd65116531_ (##car _tl65106528_))
                                            (_tl65126533_
                                             (##cdr _tl65106528_)))
                                        (let ((_expr6536_ _hd65116531_))
                                          (if (##null? _tl65126533_)
                                              (_K65086523_ _expr6536_)
                                              (_E65076518_))))
                                      (_E65076518_)))
                                (_E65076518_))))))
                    _forms6500_))))
        (let ((_collect-bindings5683_
               (lambda (_forms6424_)
                 (map (lambda (_e64256427_)
                        (let ((_g64296438_ _e64256427_))
                          (let ((_E64316442_
                                 (lambda ()
                                   (error '"No clause matching" _g64296438_))))
                            (let ((_K64326485_
                                   (lambda (_bind6445_)
                                     ((letrec ((_lp6447_
                                                (lambda (_rest6449_ _r6450_)
                                                  (let ((_rest64516459_
                                                         _rest6449_))
                                                    (let ((_E64546463_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest64516459_))))
              (let ((_else64536467_
                     (lambda ()
                       (if (gx#identifier? _rest6449_)
                           (cons _rest6449_ _r6450_)
                           _r6450_))))
                (let ((_K64556473_
                       (lambda (_rest6470_ _id6471_)
                         (if (gx#identifier? _id6471_)
                             (_lp6447_
                              _rest6470_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6471_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6450_))
                             (_lp6447_ _rest6470_ _r6450_)))))
                  (if (##pair? _rest64516459_)
                      (let ((_hd64566476_ (##car _rest64516459_))
                            (_tl64576478_ (##cdr _rest64516459_)))
                        (let ((_id6481_ _hd64566476_))
                          (let ((_rest6483_ _tl64576478_))
                            (_K64556473_ _rest6483_ _id6481_))))
                      (_else64536467_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6447_)
                                      _bind6445_
                                      '()))))
                              (if (##pair? _g64296438_)
                                  (let ((_hd64336488_ (##car _g64296438_))
                                        (_tl64346490_ (##cdr _g64296438_)))
                                    (let ((_bind6493_ _hd64336488_))
                                      (if (##pair? _tl64346490_)
                                          (let ((_hd64356495_
                                                 (##car _tl64346490_))
                                                (_tl64366497_
                                                 (##cdr _tl64346490_)))
                                            (if (##null? _tl64366497_)
                                                (_K64326485_ _bind6493_)
                                                (_E64316442_)))
                                          (_E64316442_))))
                                  (_E64316442_))))))
                      _forms6424_))))
          (let ((_closure-reference?5687_
                 (lambda (_closure5976_ _bindings5977_)
                   (ormap1 (lambda (_g59785980_)
                             (table-ref _closure5976_ _g59785980_ '#f))
                           _bindings5977_))))
            (let ((_is-effect-expr?5689_
                   (lambda (_expr5887_)
                     (let ((_g58895899_
                            (lambda (_g58905896_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g58905896_))))
                       (let ((_g58885922_
                              (lambda (_g58905902_)
                                (if (gx#stx-pair? _g58905902_)
                                    (let ((_e58925904_ (gx#stx-e _g58905902_)))
                                      (let ((_hd58935907_ (##car _e58925904_))
                                            (_tl58945909_ (##cdr _e58925904_)))
                                        ((lambda (_L5912_)
                                           (not (memq (gx#stx-e _L5912_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd58935907_)))
                                    (_g58895899_ _g58905902_)))))
                         (_g58885922_ _expr5887_))))))
              (let ((_is-lambda-expr?5690_
                     (lambda (_expr5849_)
                       (let ((_g58515861_
                              (lambda (_g58525858_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g58525858_))))
                         (let ((_g58505884_
                                (lambda (_g58525864_)
                                  (if (gx#stx-pair? _g58525864_)
                                      (let ((_e58545866_
                                             (gx#stx-e _g58525864_)))
                                        (let ((_hd58555869_
                                               (##car _e58545866_))
                                              (_tl58565871_
                                               (##cdr _e58545866_)))
                                          ((lambda (_L5874_)
                                             (memq (gx#stx-e _L5874_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd58555869_)))
                                      (_g58515861_ _g58525864_)))))
                           (_g58505884_ _expr5849_))))))
                (let ((_lift-rec5686_
                       (lambda (_forms5983_)
                         ((letrec ((_lp5985_
                                    (lambda (_rest5987_
                                             _pre5988_
                                             _bind5989_
                                             _init5990_)
                                      (let ((_rest59915999_ _rest5987_))
                                        (let ((_E59946003_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest59915999_))))
                                          (let ((_else59936007_
                                                 (lambda ()
                                                   (values (reverse _pre5988_)
                                                           (reverse _bind5989_)
                                                           (reverse _init5990_)))))
                                            (let ((_K59956198_
                                                   (lambda (_rest6010_
                                                            _bind-hd6011_)
                                                     (let ((_g60156050_
                                                            (lambda (_g60166047_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g60166047_))))
                                                       (let ((_g60146107_
                                                              (lambda (_g60166053_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g60166053_)
                            (let ((_e60406055_ (gx#stx-e _g60166053_)))
                              (let ((_hd60416058_ (##car _e60406055_))
                                    (_tl60426060_ (##cdr _e60406055_)))
                                (if (gx#stx-pair? _tl60426060_)
                                    (let ((_e60436063_
                                           (gx#stx-e _tl60426060_)))
                                      (let ((_hd60446066_ (##car _e60436063_))
                                            (_tl60456068_ (##cdr _e60436063_)))
                                        (if (gx#stx-null? _tl60456068_)
                                            ((lambda (_L6071_ _L6072_)
                                               (let ((_vals6091_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr6093_
                                                        (gxc#compile-e
                                                         _L6071_)))
                                                   (let ((_check-values6095_
                                                          (gxc#generate-runtime-check-values
                                                           _vals6091_
                                                           _L6072_)))
                                                     (let ((_refs6097_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals6091_
                                                             _L6072_)))
                                                       (let ()
                                                         (_lp5985_
                                                          _rest6010_
                                                          (foldl1 (lambda (_ref6100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r6101_)
                            (cons (cons (car _ref6100_) (cons '#!void '()))
                                  _r6101_))
                          _pre5988_
                          _refs6097_)
                  _bind5989_
                  (cons (cons 'let
                              (cons (cons (cons _vals6091_
                                                (cons _expr6093_ '()))
                                          '())
                                    (cons _check-values6095_
                                          (cons (map (lambda (_g61026104_)
                                                       (cons 'set!
                                                             _g61026104_))
                                                     _refs6097_)
                                                '()))))
                        _init5990_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60446066_
                                             _hd60416058_)
                                            (_g60156050_ _g60166053_))))
                                    (_g60156050_ _g60166053_))))
                            (_g60156050_ _g60166053_)))))
                 (let ((_g60136153_
                        (lambda (_g60166110_)
                          (if (gx#stx-pair? _g60166110_)
                              (let ((_e60296112_ (gx#stx-e _g60166110_)))
                                (let ((_hd60306115_ (##car _e60296112_))
                                      (_tl60316117_ (##cdr _e60296112_)))
                                  (if (gx#stx-pair? _hd60306115_)
                                      (let ((_e60326120_
                                             (gx#stx-e _hd60306115_)))
                                        (let ((_hd60336123_
                                               (##car _e60326120_))
                                              (_tl60346125_
                                               (##cdr _e60326120_)))
                                          (if (gx#stx-null? _tl60346125_)
                                              (if (gx#stx-pair? _tl60316117_)
                                                  (let ((_e60356128_
                                                         (gx#stx-e
                                                          _tl60316117_)))
                                                    (let ((_hd60366131_
                                                           (##car _e60356128_))
                                                          (_tl60376133_
                                                           (##cdr _e60356128_)))
                                                      (if (gx#stx-null?
                                                           _tl60376133_)
                                                          ((lambda (_L6136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6137_)
                     (let ((_eid6151_
                            (gxc#generate-runtime-binding-id _L6137_)))
                       (if (_is-lambda-expr?5690_ _L6136_)
                           (_lp5985_
                            _rest6010_
                            _pre5988_
                            (cons (cons _eid6151_
                                        (cons (gxc#compile-e _L6136_) '()))
                                  _bind5989_)
                            _init5990_)
                           (_lp5985_
                            _rest6010_
                            (cons (cons _eid6151_ (cons '#!void '()))
                                  _pre5988_)
                            _bind5989_
                            (cons (cons 'set!
                                        (cons _eid6151_
                                              (cons (gxc#compile-e _L6136_)
                                                    '())))
                                  _init5990_)))))
                   _hd60366131_
                   _hd60336123_)
                  (_g60146107_ _g60166110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g60146107_ _g60166110_))
                                              (_g60146107_ _g60166110_))))
                                      (_g60146107_ _g60166110_))))
                              (_g60146107_ _g60166110_)))))
                   (let ((_g60126195_
                          (lambda (_g60166156_)
                            (if (gx#stx-pair? _g60166156_)
                                (let ((_e60186158_ (gx#stx-e _g60166156_)))
                                  (let ((_hd60196161_ (##car _e60186158_))
                                        (_tl60206163_ (##cdr _e60186158_)))
                                    (if (gx#stx-pair? _hd60196161_)
                                        (let ((_e60216166_
                                               (gx#stx-e _hd60196161_)))
                                          (let ((_hd60226169_
                                                 (##car _e60216166_))
                                                (_tl60236171_
                                                 (##cdr _e60216166_)))
                                            (if (gx#stx-datum? _hd60226169_)
                                                (if (equal? (gx#stx-e
                                                             _hd60226169_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl60236171_)
                                                        (if (gx#stx-pair?
                                                             _tl60206163_)
                                                            (let ((_e60246174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl60206163_)))
                      (let ((_hd60256177_ (##car _e60246174_))
                            (_tl60266179_ (##cdr _e60246174_)))
                        (if (gx#stx-null? _tl60266179_)
                            ((lambda (_L6182_)
                               (_lp5985_
                                _rest6010_
                                _pre5988_
                                _bind5989_
                                (cons (gxc#compile-e _L6182_) _init5990_)))
                             _hd60256177_)
                            (_g60136153_ _g60166156_))))
                    (_g60136153_ _g60166156_))
                (_g60136153_ _g60166156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60136153_ _g60166156_))
                                                (_g60136153_ _g60166156_))))
                                        (_g60136153_ _g60166156_))))
                                (_g60136153_ _g60166156_)))))
                     (_g60126195_ _bind-hd6011_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest59915999_)
                                                  (let ((_hd59966201_
                                                         (##car _rest59915999_))
                                                        (_tl59976203_
                                                         (##cdr _rest59915999_)))
                                                    (let ((_bind-hd6206_
                                                           _hd59966201_))
                                                      (let ((_rest6208_
                                                             _tl59976203_))
                                                        (_K59956198_
                                                         _rest6208_
                                                         _bind-hd6206_))))
                                                  (_else59936007_)))))))))
                            _lp5985_)
                          _forms5983_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5688_
                         (lambda (_hd-bind5925_)
                           (let ((_g59275940_
                                  (lambda (_g59285937_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g59285937_))))
                             (let ((_g59265973_
                                    (lambda (_g59285943_)
                                      (if (gx#stx-pair? _g59285943_)
                                          (let ((_e59305945_
                                                 (gx#stx-e _g59285943_)))
                                            (let ((_hd59315948_
                                                   (##car _e59305945_))
                                                  (_tl59325950_
                                                   (##cdr _e59305945_)))
                                              (if (gx#stx-pair? _tl59325950_)
                                                  (let ((_e59335953_
                                                         (gx#stx-e
                                                          _tl59325950_)))
                                                    (let ((_hd59345956_
                                                           (##car _e59335953_))
                                                          (_tl59355958_
                                                           (##cdr _e59335953_)))
                                                      (if (gx#stx-null?
                                                           _tl59355958_)
                                                          ((lambda (_L5961_)
                                                             (_is-effect-expr?5689_
                                                              _L5961_))
                                                           _hd59345956_)
                                                          (_g59275940_
                                                           _g59285943_))))
                                                  (_g59275940_ _g59285943_))))
                                          (_g59275940_ _g59285943_)))))
                               (_g59265973_ _hd-bind5925_))))))
                    (let ((_lift-pre5684_
                           (lambda (_hd6317_ _bindings6318_ _closures6319_)
                             ((letrec ((_lp6321_
                                        (lambda (_rest-forms6323_
                                                 _rest-bindings6324_
                                                 _rest-closures6325_
                                                 _post-forms6326_
                                                 _post-bindings6327_
                                                 _post-closures6328_
                                                 _pre-forms6329_
                                                 _lifted?6330_)
                                          (let ((_rest-forms63316347_
                                                 _rest-forms6323_)
                                                (_rest-bindings63326349_
                                                 _rest-bindings6324_)
                                                (_rest-closures63336351_
                                                 _rest-closures6325_))
                                            (let ((_E63366355_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms63316347_
                                                            _rest-bindings63326349_
                                                            _rest-closures63336351_))))
                                              (let ((_else63356359_
                                                     (lambda ()
                                                       (if _lifted?6330_
                                                           (_lp6321_
                                                            (reverse _post-forms6326_)
                                                            (reverse _post-bindings6327_)
                                                            (reverse _post-closures6328_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6329_
                                                            '#f)
                                                           (values (reverse _pre-forms6329_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6326_)
                           (reverse _post-bindings6327_)
                           (reverse _post-closures6328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K63376412_
                                                       (lambda (_rest-forms6362_
                                                                _form6363_)
                                                         (let ((_K63386400_
                                                                (lambda (_rest-bindings6365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6366_)
                          (let ((_K63396388_
                                 (lambda (_rest-closures6368_ _closure6369_)
                                   (if (let ((_$e6371_
                                              (_closure-reference?5687_
                                               _closure6369_
                                               _bindings6366_)))
                                         (if _$e6371_
                                             _$e6371_
                                             (let ((_$e6378_
                                                    (ormap1 (lambda (_g63736375_)
                                                              (_closure-reference?5687_
                                                               _closure6369_
                                                               _g63736375_))
                                                            _rest-bindings6365_)))
                                               (if _$e6378_
                                                   _$e6378_
                                                   (let ((_$e6385_
                                                          (ormap1 (lambda (_g63806382_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5687_
                             _closure6369_
                             _g63806382_))
                          _post-bindings6327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6385_
                                                         _$e6385_
                                                         (if (_is-effect-bind?5688_
                                                              _form6363_)
                                                             (find _is-effect-bind?5688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6326_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6321_
                                        _rest-forms6362_
                                        _rest-bindings6365_
                                        _rest-closures6368_
                                        (cons _form6363_ _post-forms6326_)
                                        (cons _bindings6366_
                                              _post-bindings6327_)
                                        (cons _closure6369_
                                              _post-closures6328_)
                                        _pre-forms6329_
                                        _lifted?6330_)
                                       (_lp6321_
                                        _rest-forms6362_
                                        _rest-bindings6365_
                                        _rest-closures6368_
                                        _post-forms6326_
                                        _post-bindings6327_
                                        _post-closures6328_
                                        (cons _form6363_ _pre-forms6329_)
                                        '#t)))))
                            (if (##pair? _rest-closures63336351_)
                                (let ((_hd63406391_
                                       (##car _rest-closures63336351_))
                                      (_tl63416393_
                                       (##cdr _rest-closures63336351_)))
                                  (let ((_closure6396_ _hd63406391_))
                                    (let ((_rest-closures6398_ _tl63416393_))
                                      (_K63396388_
                                       _rest-closures6398_
                                       _closure6396_))))
                                (_else63356359_))))))
                   (if (##pair? _rest-bindings63326349_)
                       (let ((_hd63426403_ (##car _rest-bindings63326349_))
                             (_tl63436405_ (##cdr _rest-bindings63326349_)))
                         (let ((_bindings6408_ _hd63426403_))
                           (let ((_rest-bindings6410_ _tl63436405_))
                             (_K63386400_
                              _rest-bindings6410_
                              _bindings6408_))))
                       (_else63356359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms63316347_)
                                                      (let ((_hd63446415_
                                                             (##car _rest-forms63316347_))
                                                            (_tl63456417_
                                                             (##cdr _rest-forms63316347_)))
                                                        (let ((_form6420_
                                                               _hd63446415_))
                                                          (let ((_rest-forms6422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl63456417_))
                    (_K63376412_ _rest-forms6422_ _form6420_))))
              (_else63356359_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6321_)
                              _hd6317_
                              _bindings6318_
                              _closures6319_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5685_
                             (lambda (_hd6210_ _bindings6211_ _closures6212_)
                               ((letrec ((_lp6214_
                                          (lambda (_rest-forms6216_
                                                   _rest-bindings6217_
                                                   _rest-closures6218_
                                                   _pre-forms6219_
                                                   _pre-bindings6220_
                                                   _pre-closures6221_
                                                   _post-forms6222_
                                                   _lifted?6223_)
                                            (let ((_rest-forms62246240_
                                                   _rest-forms6216_)
                                                  (_rest-bindings62256242_
                                                   _rest-bindings6217_)
                                                  (_rest-closures62266244_
                                                   _rest-closures6218_))
                                              (let ((_E62296248_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms62246240_
                                                              _rest-bindings62256242_
                                                              _rest-closures62266244_))))
                                                (let ((_else62286252_
                                                       (lambda ()
                                                         (if _lifted?6223_
                                                             (_lp6214_
                                                              (reverse _pre-forms6219_)
                                                              (reverse _pre-bindings6220_)
                                                              (reverse _pre-closures6221_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6222_
                                                              '#f)
                                                             (values _post-forms6222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6219_
                             _pre-bindings6220_
                             _pre-closures6221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K62306305_
                                                         (lambda (_rest-forms6255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6256_)
                   (let ((_K62316293_
                          (lambda (_rest-bindings6258_ _bindings6259_)
                            (let ((_K62326281_
                                   (lambda (_rest-closures6261_ _closure6262_)
                                     (if (let ((_$e6264_
                                                (_closure-reference?5687_
                                                 _closure6262_
                                                 _bindings6259_)))
                                           (if _$e6264_
                                               _$e6264_
                                               (let ((_$e6271_
                                                      (ormap1 (lambda (_g62666268_)
                                                                (_closure-reference?5687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g62666268_
                         _bindings6259_))
                      _rest-closures6261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6271_
                                                     _$e6271_
                                                     (let ((_$e6278_
                                                            (ormap1 (lambda (_g62736275_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5687_
                               _g62736275_
                               _bindings6259_))
                            _pre-closures6221_)))
               (if _$e6278_
                   _$e6278_
                   (if (_is-effect-bind?5688_ _form6256_)
                       (find _is-effect-bind?5688_ _pre-forms6219_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6214_
                                          _rest-forms6255_
                                          _rest-bindings6258_
                                          _rest-closures6261_
                                          (cons _form6256_ _pre-forms6219_)
                                          (cons _bindings6259_
                                                _pre-bindings6220_)
                                          (cons _closure6262_
                                                _pre-closures6221_)
                                          _post-forms6222_
                                          _lifted?6223_)
                                         (_lp6214_
                                          _rest-forms6255_
                                          _rest-bindings6258_
                                          _rest-closures6261_
                                          _pre-forms6219_
                                          _pre-bindings6220_
                                          _pre-closures6221_
                                          (cons _form6256_ _post-forms6222_)
                                          '#t)))))
                              (if (##pair? _rest-closures62266244_)
                                  (let ((_hd62336284_
                                         (##car _rest-closures62266244_))
                                        (_tl62346286_
                                         (##cdr _rest-closures62266244_)))
                                    (let ((_closure6289_ _hd62336284_))
                                      (let ((_rest-closures6291_ _tl62346286_))
                                        (_K62326281_
                                         _rest-closures6291_
                                         _closure6289_))))
                                  (_else62286252_))))))
                     (if (##pair? _rest-bindings62256242_)
                         (let ((_hd62356296_ (##car _rest-bindings62256242_))
                               (_tl62366298_ (##cdr _rest-bindings62256242_)))
                           (let ((_bindings6301_ _hd62356296_))
                             (let ((_rest-bindings6303_ _tl62366298_))
                               (_K62316293_
                                _rest-bindings6303_
                                _bindings6301_))))
                         (_else62286252_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms62246240_)
                                                        (let ((_hd62376308_
                                                               (##car _rest-forms62246240_))
                                                              (_tl62386310_
                                                               (##cdr _rest-forms62246240_)))
                                                          (let ((_form6313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd62376308_))
                    (let ((_rest-forms6315_ _tl62386310_))
                      (_K62306305_ _rest-forms6315_ _form6313_))))
                (_else62286252_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6214_)
                                (reverse _hd6210_)
                                (reverse _bindings6211_)
                                (reverse _closures6212_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5681_
                               (lambda (_forms6538_)
                                 (let ((_closures6540_
                                        (_collect-closures5682_ _forms6538_)))
                                   (let ((_bindings6542_
                                          (_collect-bindings5683_
                                           _forms6538_)))
                                     (let ((_g10353_
                                            (_lift-pre5684_
                                             _forms6538_
                                             _bindings6542_
                                             _closures6540_)))
                                       (begin
                                         (let ((_g10354_
                                                (values-count _g10353_)))
                                           (if (not (fx= _g10354_ 4))
                                               (error "Context expects 4 values"
                                                      _g10354_)))
                                         (let ((_pre-bind6544_
                                                (values-ref _g10353_ 0))
                                               (_forms6545_
                                                (values-ref _g10353_ 1))
                                               (_bindings6546_
                                                (values-ref _g10353_ 2))
                                               (_closures6547_
                                                (values-ref _g10353_ 3)))
                                           (let ((_g10355_
                                                  (_lift-post5685_
                                                   _forms6545_
                                                   _bindings6546_
                                                   _closures6547_)))
                                             (begin
                                               (let ((_g10356_
                                                      (values-count _g10355_)))
                                                 (if (not (fx= _g10356_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10356_)))
                                               (let ((_post-bind6549_
                                                      (values-ref _g10355_ 0))
                                                     (_forms6550_
                                                      (values-ref _g10355_ 1))
                                                     (_bindings6551_
                                                      (values-ref _g10355_ 2))
                                                     (_closures6552_
                                                      (values-ref _g10355_ 3)))
                                                 (let ((_g10357_
                                                        (_lift-rec5686_
                                                         _forms6550_)))
                                                   (begin
                                                     (let ((_g10358_
                                                            (values-count
                                                             _g10357_)))
                                                       (if (not (fx= _g10358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6554_
                                                            (values-ref
                                                             _g10357_
                                                             0))
                                                           (_rec-bind6555_
                                                            (values-ref
                                                             _g10357_
                                                             1))
                                                           (_rec-init6556_
                                                            (values-ref
                                                             _g10357_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6554_
                         _rec-bind6555_
                         _rec-init6556_
                         _post-bind6549_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5691_
                                    (lambda (_hd5778_ _body5779_)
                                      (let ((_hd57805788_ _hd5778_))
                                        (let ((_E57835792_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd57805788_))))
                                          (let ((_else57825796_
                                                 (lambda () _body5779_)))
                                            (let ((_K57845837_
                                                   (lambda (_rest5799_
                                                            _bind5800_)
                                                     (let ((_bind58015810_
                                                            _bind5800_))
                                                       (let ((_E58035814_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind58015810_))))
                 (let ((_K58045820_
                        (lambda (_expr5817_ _hd5818_)
                          (if (gx#stx-ormap gx#identifier? _hd5818_)
                              (gxc#generate-runtime-let-values%__opt-lambda6979
                               (cons '%#let-values
                                     (cons (cons _bind5800_ '())
                                           (cons (_generate-let*5691_
                                                  _rest5799_
                                                  _body5779_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5817_)
                                          (cons (_generate-let*5691_
                                                 _rest5799_
                                                 _body5779_)
                                                '())))))))
                   (if (##pair? _bind58015810_)
                       (let ((_hd58055823_ (##car _bind58015810_))
                             (_tl58065825_ (##cdr _bind58015810_)))
                         (let ((_hd5828_ _hd58055823_))
                           (if (##pair? _tl58065825_)
                               (let ((_hd58075830_ (##car _tl58065825_))
                                     (_tl58085832_ (##cdr _tl58065825_)))
                                 (let ((_expr5835_ _hd58075830_))
                                   (if (##null? _tl58085832_)
                                       (_K58045820_ _expr5835_ _hd5828_)
                                       (_E58035814_))))
                               (_E58035814_))))
                       (_E58035814_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd57805788_)
                                                  (let ((_hd57855840_
                                                         (##car _hd57805788_))
                                                        (_tl57865842_
                                                         (##cdr _hd57805788_)))
                                                    (let ((_bind5845_
                                                           _hd57855840_))
                                                      (let ((_rest5847_
                                                             _tl57865842_))
                                                        (_K57845837_
                                                         _rest5847_
                                                         _bind5845_))))
                                                  (_else57825796_)))))))))
                            (let ((_g56935710_
                                   (lambda (_g56945707_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g56945707_))))
                              (let ((_g56925775_
                                     (lambda (_g56945713_)
                                       (if (gx#stx-pair? _g56945713_)
                                           (let ((_e56975715_
                                                  (gx#stx-e _g56945713_)))
                                             (let ((_hd56985718_
                                                    (##car _e56975715_))
                                                   (_tl56995720_
                                                    (##cdr _e56975715_)))
                                               (if (gx#stx-pair? _tl56995720_)
                                                   (let ((_e57005723_
                                                          (gx#stx-e
                                                           _tl56995720_)))
                                                     (let ((_hd57015726_
                                                            (##car _e57005723_))
                                                           (_tl57025728_
                                                            (##cdr _e57005723_)))
                                                       (if (gx#stx-pair?
                                                            _tl57025728_)
                                                           (let ((_e57035731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl57025728_)))
                     (let ((_hd57045734_ (##car _e57035731_))
                           (_tl57055736_ (##cdr _e57035731_)))
                       (if (gx#stx-null? _tl57055736_)
                           ((lambda (_L5739_ _L5740_)
                              (let ((_g10351_ (_linearize5681_ _L5740_)))
                                (begin
                                  (let ((_g10352_ (values-count _g10351_)))
                                    (if (not (fx= _g10352_ 5))
                                        (error "Context expects 5 values"
                                               _g10352_)))
                                  (let ((_pre5756_ (values-ref _g10351_ 0))
                                        (_rec-pre5757_ (values-ref _g10351_ 1))
                                        (_rec-bind5758_
                                         (values-ref _g10351_ 2))
                                        (_rec-init5759_
                                         (values-ref _g10351_ 3))
                                        (_post5760_ (values-ref _g10351_ 4)))
                                    (let ((_body5762_ (gxc#compile-e _L5739_)))
                                      (let ((_body5764_
                                             (if (null? _post5760_)
                                                 _body5762_
                                                 (_generate-let*5691_
                                                  _post5760_
                                                  _body5762_))))
                                        (let ((_body5766_
                                               (if (null? _rec-init5759_)
                                                   _body5764_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5764_ '())
                         _rec-init5759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5768_
                                                 (if (null? _rec-bind5758_)
                                                     _body5766_
                                                     (cons 'letrec
                                                           (cons _rec-bind5758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5766_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5770_
                                                   (if (null? _rec-pre5757_)
                                                       _body5768_
                                                       (cons 'let
                                                             (cons _rec-pre5757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5768_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5772_
                                                     (if (null? _pre5756_)
                                                         _body5770_
                                                         (_generate-let*5691_
                                                          _pre5756_
                                                          _body5770_))))
                                                (let () _body5772_)))))))))))
                            _hd57045734_
                            _hd57015726_)
                           (_g56935710_ _g56945713_))))
                   (_g56935710_ _g56945713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g56935710_ _g56945713_))))
                                           (_g56935710_ _g56945713_)))))
                                (_g56925775_ _stx5679_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5572_)
      ((letrec ((_lp5574_
                 (lambda (_rest5576_)
                   (let ((_g55805601_
                          (lambda (_g55815598_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g55815598_))))
                     (let ((_g55795608_
                            (lambda (_g55815604_) ((lambda () '#f)))))
                       (let ((_g55785615_
                              (lambda (_g55815611_)
                                (if (gx#stx-null? _g55815611_)
                                    ((lambda () '#t))
                                    (_g55795608_ _g55815611_)))))
                         (let ((_g55775676_
                                (lambda (_g55815618_)
                                  (if (gx#stx-pair? _g55815618_)
                                      (let ((_e55855620_
                                             (gx#stx-e _g55815618_)))
                                        (let ((_hd55865623_
                                               (##car _e55855620_))
                                              (_tl55875625_
                                               (##cdr _e55855620_)))
                                          (if (gx#stx-pair? _hd55865623_)
                                              (let ((_e55885628_
                                                     (gx#stx-e _hd55865623_)))
                                                (let ((_hd55895631_
                                                       (##car _e55885628_))
                                                      (_tl55905633_
                                                       (##cdr _e55885628_)))
                                                  (if (gx#stx-pair?
                                                       _hd55895631_)
                                                      (let ((_e55915636_
                                                             (gx#stx-e
                                                              _hd55895631_)))
                                                        (let ((_hd55925639_
                                                               (##car _e55915636_))
                                                              (_tl55935641_
                                                               (##cdr _e55915636_)))
                                                          (if (gx#stx-null?
                                                               _tl55935641_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl55905633_)
                          (let ((_e55945644_ (gx#stx-e _tl55905633_)))
                            (let ((_hd55955647_ (##car _e55945644_))
                                  (_tl55965649_ (##cdr _e55945644_)))
                              (if (gx#stx-null? _tl55965649_)
                                  ((lambda (_L5652_ _L5653_ _L5654_)
                                     (_lp5574_ _L5652_))
                                   _tl55875625_
                                   _hd55955647_
                                   _hd55925639_)
                                  (_g55785615_ _g55815618_))))
                          (_g55785615_ _g55815618_))
                      (_g55785615_ _g55815618_))))
              (_g55785615_ _g55815618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g55785615_ _g55815618_))))
                                      (_g55785615_ _g55815618_)))))
                           (_g55775676_ _rest5576_))))))))
         _lp5574_)
       _hd5572_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5496_ _hd5497_ _body5498_ _compiled-body?5499_)
      (let ((_generate15501_
             (lambda (_bind5503_)
               (let ((_g55055522_
                      (lambda (_g55065519_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g55065519_))))
                 (let ((_g55045569_
                        (lambda (_g55065525_)
                          (if (gx#stx-pair? _g55065525_)
                              (let ((_e55095527_ (gx#stx-e _g55065525_)))
                                (let ((_hd55105530_ (##car _e55095527_))
                                      (_tl55115532_ (##cdr _e55095527_)))
                                  (if (gx#stx-pair? _hd55105530_)
                                      (let ((_e55125535_
                                             (gx#stx-e _hd55105530_)))
                                        (let ((_hd55135538_
                                               (##car _e55125535_))
                                              (_tl55145540_
                                               (##cdr _e55125535_)))
                                          (if (gx#stx-null? _tl55145540_)
                                              (if (gx#stx-pair? _tl55115532_)
                                                  (let ((_e55155543_
                                                         (gx#stx-e
                                                          _tl55115532_)))
                                                    (let ((_hd55165546_
                                                           (##car _e55155543_))
                                                          (_tl55175548_
                                                           (##cdr _e55155543_)))
                                                      (if (gx#stx-null?
                                                           _tl55175548_)
                                                          ((lambda (_L5551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5552_)
                     (cons (gxc#generate-runtime-binding-id* _L5552_)
                           (cons (gxc#compile-e _L5551_) '())))
                   _hd55165546_
                   _hd55135538_)
                  (_g55055522_ _g55065525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g55055522_ _g55065525_))
                                              (_g55055522_ _g55065525_))))
                                      (_g55055522_ _g55065525_))))
                              (_g55055522_ _g55065525_)))))
                   (_g55045569_ _bind5503_))))))
        (cons _form5496_
              (cons (map _generate15501_ _hd5497_)
                    (cons (if _compiled-body?5499_
                              _body5498_
                              (gxc#compile-e _body5498_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5407_)
      (letrec ((_generate15409_
                (lambda (_datum5461_)
                  (if (let ((_$e5463_ (null? _datum5461_)))
                        (if _$e5463_
                            _$e5463_
                            (let ((_$e5466_ (interned-symbol? _datum5461_)))
                              (if _$e5466_
                                  _$e5466_
                                  (gx#self-quoting? _datum5461_)))))
                      _datum5461_
                      (if (uninterned-symbol? _datum5461_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9296
                           _datum5461_
                           '#t)
                          (if (pair? _datum5461_)
                              (cons (_generate15409_ (car _datum5461_))
                                    (_generate15409_ (cdr _datum5461_)))
                              (if (box? _datum5461_)
                                  (box (_generate15409_ (unbox _datum5461_)))
                                  (if (vector? _datum5461_)
                                      (vector-map _generate15409_ _datum5461_)
                                      (if (let ((_$e5469_
                                                 (s8vector? _datum5461_)))
                                            (if _$e5469_
                                                _$e5469_
                                                (let ((_$e5472_
                                                       (u8vector?
                                                        _datum5461_)))
                                                  (if _$e5472_
                                                      _$e5472_
                                                      (let ((_$e5475_
                                                             (s16vector?
                                                              _datum5461_)))
                                                        (if _$e5475_
                                                            _$e5475_
                                                            (let ((_$e5478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5461_)))
                      (if _$e5478_
                          _$e5478_
                          (let ((_$e5481_ (s32vector? _datum5461_)))
                            (if _$e5481_
                                _$e5481_
                                (let ((_$e5484_ (u32vector? _datum5461_)))
                                  (if _$e5484_
                                      _$e5484_
                                      (let ((_$e5487_
                                             (s64vector? _datum5461_)))
                                        (if _$e5487_
                                            _$e5487_
                                            (let ((_$e5490_
                                                   (u64vector? _datum5461_)))
                                              (if _$e5490_
                                                  _$e5490_
                                                  (let ((_$e5493_
                                                         (f32vector?
                                                          _datum5461_)))
                                                    (if _$e5493_
                                                        _$e5493_
                                                        (f64vector?
                                                         _datum5461_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5461_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5407_))))))))))
        (let ((_g54115424_
               (lambda (_g54125421_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g54125421_))))
          (let ((_g54105458_
                 (lambda (_g54125427_)
                   (if (gx#stx-pair? _g54125427_)
                       (let ((_e54145429_ (gx#stx-e _g54125427_)))
                         (let ((_hd54155432_ (##car _e54145429_))
                               (_tl54165434_ (##cdr _e54145429_)))
                           (if (gx#stx-pair? _tl54165434_)
                               (let ((_e54175437_ (gx#stx-e _tl54165434_)))
                                 (let ((_hd54185440_ (##car _e54175437_))
                                       (_tl54195442_ (##cdr _e54175437_)))
                                   (if (gx#stx-null? _tl54195442_)
                                       ((lambda (_L5445_)
                                          (cons 'quote
                                                (cons (_generate15409_
                                                       (gx#stx-e _L5445_))
                                                      '())))
                                        _hd54185440_)
                                       (_g54115424_ _g54125427_))))
                               (_g54115424_ _g54125427_))))
                       (_g54115424_ _g54125427_)))))
            (_g54105458_ _stx5407_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5369_)
      (let ((_g53715381_
             (lambda (_g53725378_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53725378_))))
        (let ((_g53705404_
               (lambda (_g53725384_)
                 (if (gx#stx-pair? _g53725384_)
                     (let ((_e53745386_ (gx#stx-e _g53725384_)))
                       (let ((_hd53755389_ (##car _e53745386_))
                             (_tl53765391_ (##cdr _e53745386_)))
                         ((lambda (_L5394_) (map gxc#compile-e _L5394_))
                          _tl53765391_)))
                     (_g53715381_ _g53725384_)))))
          (_g53705404_ _stx5369_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5331_)
      (let ((_g53335343_
             (lambda (_g53345340_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53345340_))))
        (let ((_g53325366_
               (lambda (_g53345346_)
                 (if (gx#stx-pair? _g53345346_)
                     (let ((_e53365348_ (gx#stx-e _g53345346_)))
                       (let ((_hd53375351_ (##car _e53365348_))
                             (_tl53385353_ (##cdr _e53365348_)))
                         ((lambda (_L5356_)
                            (cons 'if (map gxc#compile-e _L5356_)))
                          _tl53385353_)))
                     (_g53335343_ _g53345346_)))))
          (_g53325366_ _stx5331_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5280_)
      (let ((_g52825295_
             (lambda (_g52835292_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52835292_))))
        (let ((_g52815328_
               (lambda (_g52835298_)
                 (if (gx#stx-pair? _g52835298_)
                     (let ((_e52855300_ (gx#stx-e _g52835298_)))
                       (let ((_hd52865303_ (##car _e52855300_))
                             (_tl52875305_ (##cdr _e52855300_)))
                         (if (gx#stx-pair? _tl52875305_)
                             (let ((_e52885308_ (gx#stx-e _tl52875305_)))
                               (let ((_hd52895311_ (##car _e52885308_))
                                     (_tl52905313_ (##cdr _e52885308_)))
                                 (if (gx#stx-null? _tl52905313_)
                                     ((lambda (_L5316_)
                                        (gxc#generate-runtime-binding-id
                                         _L5316_))
                                      _hd52895311_)
                                     (_g52825295_ _g52835298_))))
                             (_g52825295_ _g52835298_))))
                     (_g52825295_ _g52835298_)))))
          (_g52815328_ _stx5280_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5213_)
      (let ((_g52155232_
             (lambda (_g52165229_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52165229_))))
        (let ((_g52145277_
               (lambda (_g52165235_)
                 (if (gx#stx-pair? _g52165235_)
                     (let ((_e52195237_ (gx#stx-e _g52165235_)))
                       (let ((_hd52205240_ (##car _e52195237_))
                             (_tl52215242_ (##cdr _e52195237_)))
                         (if (gx#stx-pair? _tl52215242_)
                             (let ((_e52225245_ (gx#stx-e _tl52215242_)))
                               (let ((_hd52235248_ (##car _e52225245_))
                                     (_tl52245250_ (##cdr _e52225245_)))
                                 (if (gx#stx-pair? _tl52245250_)
                                     (let ((_e52255253_
                                            (gx#stx-e _tl52245250_)))
                                       (let ((_hd52265256_ (##car _e52255253_))
                                             (_tl52275258_
                                              (##cdr _e52255253_)))
                                         (if (gx#stx-null? _tl52275258_)
                                             ((lambda (_L5261_ _L5262_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5262_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5261_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd52265256_
                                              _hd52235248_)
                                             (_g52155232_ _g52165235_))))
                                     (_g52155232_ _g52165235_))))
                             (_g52155232_ _g52165235_))))
                     (_g52155232_ _g52165235_)))))
          (_g52145277_ _stx5213_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5146_)
      (let ((_g51485165_
             (lambda (_g51495162_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51495162_))))
        (let ((_g51475210_
               (lambda (_g51495168_)
                 (if (gx#stx-pair? _g51495168_)
                     (let ((_e51525170_ (gx#stx-e _g51495168_)))
                       (let ((_hd51535173_ (##car _e51525170_))
                             (_tl51545175_ (##cdr _e51525170_)))
                         (if (gx#stx-pair? _tl51545175_)
                             (let ((_e51555178_ (gx#stx-e _tl51545175_)))
                               (let ((_hd51565181_ (##car _e51555178_))
                                     (_tl51575183_ (##cdr _e51555178_)))
                                 (if (gx#stx-pair? _tl51575183_)
                                     (let ((_e51585186_
                                            (gx#stx-e _tl51575183_)))
                                       (let ((_hd51595189_ (##car _e51585186_))
                                             (_tl51605191_
                                              (##cdr _e51585186_)))
                                         (if (gx#stx-null? _tl51605191_)
                                             ((lambda (_L5194_ _L5195_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5194_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5195_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd51595189_
                                              _hd51565181_)
                                             (_g51485165_ _g51495168_))))
                                     (_g51485165_ _g51495168_))))
                             (_g51485165_ _g51495168_))))
                     (_g51485165_ _g51495168_)))))
          (_g51475210_ _stx5146_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5079_)
      (let ((_g50815098_
             (lambda (_g50825095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50825095_))))
        (let ((_g50805143_
               (lambda (_g50825101_)
                 (if (gx#stx-pair? _g50825101_)
                     (let ((_e50855103_ (gx#stx-e _g50825101_)))
                       (let ((_hd50865106_ (##car _e50855103_))
                             (_tl50875108_ (##cdr _e50855103_)))
                         (if (gx#stx-pair? _tl50875108_)
                             (let ((_e50885111_ (gx#stx-e _tl50875108_)))
                               (let ((_hd50895114_ (##car _e50885111_))
                                     (_tl50905116_ (##cdr _e50885111_)))
                                 (if (gx#stx-pair? _tl50905116_)
                                     (let ((_e50915119_
                                            (gx#stx-e _tl50905116_)))
                                       (let ((_hd50925122_ (##car _e50915119_))
                                             (_tl50935124_
                                              (##cdr _e50915119_)))
                                         (if (gx#stx-null? _tl50935124_)
                                             ((lambda (_L5127_ _L5128_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5127_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5128_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd50925122_
                                              _hd50895114_)
                                             (_g50815098_ _g50825101_))))
                                     (_g50815098_ _g50825101_))))
                             (_g50815098_ _g50825101_))))
                     (_g50815098_ _g50825101_)))))
          (_g50805143_ _stx5079_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4996_)
      (let ((_g49985019_
             (lambda (_g49995016_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49995016_))))
        (let ((_g49975076_
               (lambda (_g49995022_)
                 (if (gx#stx-pair? _g49995022_)
                     (let ((_e50035024_ (gx#stx-e _g49995022_)))
                       (let ((_hd50045027_ (##car _e50035024_))
                             (_tl50055029_ (##cdr _e50035024_)))
                         (if (gx#stx-pair? _tl50055029_)
                             (let ((_e50065032_ (gx#stx-e _tl50055029_)))
                               (let ((_hd50075035_ (##car _e50065032_))
                                     (_tl50085037_ (##cdr _e50065032_)))
                                 (if (gx#stx-pair? _tl50085037_)
                                     (let ((_e50095040_
                                            (gx#stx-e _tl50085037_)))
                                       (let ((_hd50105043_ (##car _e50095040_))
                                             (_tl50115045_
                                              (##cdr _e50095040_)))
                                         (if (gx#stx-pair? _tl50115045_)
                                             (let ((_e50125048_
                                                    (gx#stx-e _tl50115045_)))
                                               (let ((_hd50135051_
                                                      (##car _e50125048_))
                                                     (_tl50145053_
                                                      (##cdr _e50125048_)))
                                                 (if (gx#stx-null?
                                                      _tl50145053_)
                                                     ((lambda (_L5056_
                                                               _L5057_
                                                               _L5058_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5056_)
                            (cons (gxc#compile-e _L5057_)
                                  (cons (gxc#compile-e _L5058_)
                                        (cons ''#f '()))))))
              _hd50135051_
              _hd50105043_
              _hd50075035_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49985019_
                                                      _g49995022_))))
                                             (_g49985019_ _g49995022_))))
                                     (_g49985019_ _g49995022_))))
                             (_g49985019_ _g49995022_))))
                     (_g49985019_ _g49995022_)))))
          (_g49975076_ _stx4996_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4897_)
      (let ((_g48994924_
             (lambda (_g49004921_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49004921_))))
        (let ((_g48984993_
               (lambda (_g49004927_)
                 (if (gx#stx-pair? _g49004927_)
                     (let ((_e49054929_ (gx#stx-e _g49004927_)))
                       (let ((_hd49064932_ (##car _e49054929_))
                             (_tl49074934_ (##cdr _e49054929_)))
                         (if (gx#stx-pair? _tl49074934_)
                             (let ((_e49084937_ (gx#stx-e _tl49074934_)))
                               (let ((_hd49094940_ (##car _e49084937_))
                                     (_tl49104942_ (##cdr _e49084937_)))
                                 (if (gx#stx-pair? _tl49104942_)
                                     (let ((_e49114945_
                                            (gx#stx-e _tl49104942_)))
                                       (let ((_hd49124948_ (##car _e49114945_))
                                             (_tl49134950_
                                              (##cdr _e49114945_)))
                                         (if (gx#stx-pair? _tl49134950_)
                                             (let ((_e49144953_
                                                    (gx#stx-e _tl49134950_)))
                                               (let ((_hd49154956_
                                                      (##car _e49144953_))
                                                     (_tl49164958_
                                                      (##cdr _e49144953_)))
                                                 (if (gx#stx-pair?
                                                      _tl49164958_)
                                                     (let ((_e49174961_
                                                            (gx#stx-e
                                                             _tl49164958_)))
                                                       (let ((_hd49184964_
                                                              (##car _e49174961_))
                                                             (_tl49194966_
                                                              (##cdr _e49174961_)))
                                                         (if (gx#stx-null?
                                                              _tl49194966_)
                                                             ((lambda (_L4969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4970_
                               _L4971_
                               _L4972_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4970_)
                                    (cons (gxc#compile-e _L4969_)
                                          (cons (gxc#compile-e _L4971_)
                                                (cons (gxc#compile-e _L4972_)
                                                      (cons ''#f '())))))))
                      _hd49184964_
                      _hd49154956_
                      _hd49124948_
                      _hd49094940_)
                     (_g48994924_ _g49004927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48994924_
                                                      _g49004927_))))
                                             (_g48994924_ _g49004927_))))
                                     (_g48994924_ _g49004927_))))
                             (_g48994924_ _g49004927_))))
                     (_g48994924_ _g49004927_)))))
          (_g48984993_ _stx4897_)))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx4814_)
      (let ((_g48164837_
             (lambda (_g48174834_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48174834_))))
        (let ((_g48154894_
               (lambda (_g48174840_)
                 (if (gx#stx-pair? _g48174840_)
                     (let ((_e48214842_ (gx#stx-e _g48174840_)))
                       (let ((_hd48224845_ (##car _e48214842_))
                             (_tl48234847_ (##cdr _e48214842_)))
                         (if (gx#stx-pair? _tl48234847_)
                             (let ((_e48244850_ (gx#stx-e _tl48234847_)))
                               (let ((_hd48254853_ (##car _e48244850_))
                                     (_tl48264855_ (##cdr _e48244850_)))
                                 (if (gx#stx-pair? _tl48264855_)
                                     (let ((_e48274858_
                                            (gx#stx-e _tl48264855_)))
                                       (let ((_hd48284861_ (##car _e48274858_))
                                             (_tl48294863_
                                              (##cdr _e48274858_)))
                                         (if (gx#stx-pair? _tl48294863_)
                                             (let ((_e48304866_
                                                    (gx#stx-e _tl48294863_)))
                                               (let ((_hd48314869_
                                                      (##car _e48304866_))
                                                     (_tl48324871_
                                                      (##cdr _e48304866_)))
                                                 (if (gx#stx-null?
                                                      _tl48324871_)
                                                     ((lambda (_L4874_
                                                               _L4875_
                                                               _L4876_)
                                                        (cons '##direct-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4874_)
                            (cons (gxc#compile-e _L4875_)
                                  (cons (gxc#compile-e _L4876_)
                                        (cons ''#f '()))))))
              _hd48314869_
              _hd48284861_
              _hd48254853_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48164837_
                                                      _g48174840_))))
                                             (_g48164837_ _g48174840_))))
                                     (_g48164837_ _g48174840_))))
                             (_g48164837_ _g48174840_))))
                     (_g48164837_ _g48174840_)))))
          (_g48154894_ _stx4814_)))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx4715_)
      (let ((_g47174742_
             (lambda (_g47184739_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47184739_))))
        (let ((_g47164811_
               (lambda (_g47184745_)
                 (if (gx#stx-pair? _g47184745_)
                     (let ((_e47234747_ (gx#stx-e _g47184745_)))
                       (let ((_hd47244750_ (##car _e47234747_))
                             (_tl47254752_ (##cdr _e47234747_)))
                         (if (gx#stx-pair? _tl47254752_)
                             (let ((_e47264755_ (gx#stx-e _tl47254752_)))
                               (let ((_hd47274758_ (##car _e47264755_))
                                     (_tl47284760_ (##cdr _e47264755_)))
                                 (if (gx#stx-pair? _tl47284760_)
                                     (let ((_e47294763_
                                            (gx#stx-e _tl47284760_)))
                                       (let ((_hd47304766_ (##car _e47294763_))
                                             (_tl47314768_
                                              (##cdr _e47294763_)))
                                         (if (gx#stx-pair? _tl47314768_)
                                             (let ((_e47324771_
                                                    (gx#stx-e _tl47314768_)))
                                               (let ((_hd47334774_
                                                      (##car _e47324771_))
                                                     (_tl47344776_
                                                      (##cdr _e47324771_)))
                                                 (if (gx#stx-pair?
                                                      _tl47344776_)
                                                     (let ((_e47354779_
                                                            (gx#stx-e
                                                             _tl47344776_)))
                                                       (let ((_hd47364782_
                                                              (##car _e47354779_))
                                                             (_tl47374784_
                                                              (##cdr _e47354779_)))
                                                         (if (gx#stx-null?
                                                              _tl47374784_)
                                                             ((lambda (_L4787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4788_
                               _L4789_
                               _L4790_)
                        (cons '##direct-structure-set!
                              (cons (gxc#compile-e _L4788_)
                                    (cons (gxc#compile-e _L4787_)
                                          (cons (gxc#compile-e _L4789_)
                                                (cons (gxc#compile-e _L4790_)
                                                      (cons ''#f '())))))))
                      _hd47364782_
                      _hd47334774_
                      _hd47304766_
                      _hd47274758_)
                     (_g47174742_ _g47184745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47174742_
                                                      _g47184745_))))
                                             (_g47174742_ _g47184745_))))
                                     (_g47174742_ _g47184745_))))
                             (_g47174742_ _g47184745_))))
                     (_g47174742_ _g47184745_)))))
          (_g47164811_ _stx4715_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4624_)
      (let ((_g46264636_
             (lambda (_g46274633_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46274633_))))
        (let ((_g46254712_
               (lambda (_g46274639_)
                 (if (gx#stx-pair? _g46274639_)
                     (let ((_e46294641_ (gx#stx-e _g46274639_)))
                       (let ((_hd46304644_ (##car _e46294641_))
                             (_tl46314646_ (##cdr _e46294641_)))
                         ((lambda (_L4649_)
                            (let ((_ht4659_ (make-hash-table-eq)))
                              ((letrec ((_lp4661_
                                         (lambda (_rest4663_ _loads4664_)
                                           (let ((_K4666_ (lambda (_ctx4705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4706_)
                    (let ((_id4708_
                           (##structure-ref
                            _ctx4705_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4659_ _id4708_ '#f)
                          (_lp4661_ _rest4706_ _loads4664_)
                          (let ((_rt4710_
                                 (string-append
                                  (symbol->string _id4708_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4659_ _id4708_ _rt4710_)
                              (_lp4661_
                               _rest4706_
                               (cons _rt4710_ _loads4664_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest46674675_ _rest4663_))
                                               (let ((_E46704679_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest46674675_))))
                                                 (let ((_else46694687_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g46824684_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g46824684_))
                             (reverse _loads4664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K46714693_
                                                          (lambda (_rest4690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4691_)
                    (if (##structure-instance-of?
                         _in4691_
                         'gx#module-context::t)
                        (_K4666_ _in4691_ _rest4690_)
                        (if (##structure-direct-instance-of?
                             _in4691_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##direct-structure-ref
                                  _in4691_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4661_ _rest4690_ _loads4664_)
                                (_K4666_ (##direct-structure-ref
                                          (##direct-structure-ref
                                           _in4691_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4690_))
                            (if (##structure-direct-instance-of?
                                 _in4691_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##direct-structure-ref
                                      _in4691_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4661_ _rest4690_ _loads4664_)
                                    (_K4666_ (##direct-structure-ref
                                              _in4691_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4690_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4624_
                                 _in4691_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest46674675_)
                                                         (let ((_hd46724696_
                                                                (##car _rest46674675_))
                                                               (_tl46734698_
                                                                (##cdr _rest46674675_)))
                                                           (let ((_in4701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd46724696_))
                     (let ((_rest4703_ _tl46734698_))
                       (_K46714693_ _rest4703_ _in4701_))))
                 (_else46694687_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4661_)
                               _L4649_
                               '())))
                          _tl46314646_)))
                     (_g46264636_ _g46274639_)))))
          (_g46254712_ _stx4624_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4565_)
      (let ((_generate-quote4567_
             (lambda (_q4622_)
               (if (gx#identifier? _q4622_)
                   (gxc#generate-runtime-identifier _q4622_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4565_
                    _q4622_)))))
        (let ((_g45694582_
               (lambda (_g45704579_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45704579_))))
          (let ((_g45684619_
                 (lambda (_g45704585_)
                   (if (gx#stx-pair? _g45704585_)
                       (let ((_e45724587_ (gx#stx-e _g45704585_)))
                         (let ((_hd45734590_ (##car _e45724587_))
                               (_tl45744592_ (##cdr _e45724587_)))
                           (if (gx#stx-pair? _tl45744592_)
                               (let ((_e45754595_ (gx#stx-e _tl45744592_)))
                                 (let ((_hd45764598_ (##car _e45754595_))
                                       (_tl45774600_ (##cdr _e45754595_)))
                                   (if (gx#stx-null? _tl45774600_)
                                       ((lambda (_L4603_)
                                          (let ((_gid4616_
                                                 (gxc#generate-runtime-temporary__opt-lambda9242
                                                  '#t))
                                                (_quote-e4617_
                                                 (_generate-quote4567_
                                                  _L4603_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4617_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4616_)))
                                        _hd45764598_)
                                       (_g45694582_ _g45704585_))))
                               (_g45694582_ _g45704585_))))
                       (_g45694582_ _g45704585_)))))
            (_g45684619_ _stx4565_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4498_)
      (let ((_g45004517_
             (lambda (_g45014514_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45014514_))))
        (let ((_g44994562_
               (lambda (_g45014520_)
                 (if (gx#stx-pair? _g45014520_)
                     (let ((_e45044522_ (gx#stx-e _g45014520_)))
                       (let ((_hd45054525_ (##car _e45044522_))
                             (_tl45064527_ (##cdr _e45044522_)))
                         (if (gx#stx-pair? _tl45064527_)
                             (let ((_e45074530_ (gx#stx-e _tl45064527_)))
                               (let ((_hd45084533_ (##car _e45074530_))
                                     (_tl45094535_ (##cdr _e45074530_)))
                                 (if (gx#stx-pair? _tl45094535_)
                                     (let ((_e45104538_
                                            (gx#stx-e _tl45094535_)))
                                       (let ((_hd45114541_ (##car _e45104538_))
                                             (_tl45124543_
                                              (##cdr _e45104538_)))
                                         (if (gx#stx-null? _tl45124543_)
                                             ((lambda (_L4546_ _L4547_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4547_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4546_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd45114541_
                                              _hd45084533_)
                                             (_g45004517_ _g45014520_))))
                                     (_g45004517_ _g45014520_))))
                             (_g45004517_ _g45014520_))))
                     (_g45004517_ _g45014520_)))))
          (_g44994562_ _stx4498_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4447_ _state4448_)
      (let ((_g44504460_
             (lambda (_g44514457_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44514457_))))
        (let ((_g44494495_
               (lambda (_g44514463_)
                 (if (gx#stx-pair? _g44514463_)
                     (let ((_e44534465_ (gx#stx-e _g44514463_)))
                       (let ((_hd44544468_ (##car _e44534465_))
                             (_tl44554470_ (##cdr _e44534465_)))
                         ((lambda (_L4473_)
                            (let ((_c-body4487_
                                   (map (lambda (_g44824484_)
                                          (gxc#compile-e
                                           _g44824484_
                                           _state4448_))
                                        _L4473_)))
                              (let ((_c-body4492_
                                     (filter (lambda (_$obj4489_)
                                               (not (eq? _$obj4489_ '#!void)))
                                             _c-body4487_)))
                                (let () (cons '%#begin _c-body4492_)))))
                          _tl44554470_)))
                     (_g44504460_ _g44514463_)))))
          (_g44494495_ _stx4447_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4355_ _state4356_)
      (let ((_g43584368_
             (lambda (_g43594365_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43594365_))))
        (let ((_g43574444_
               (lambda (_g43594371_)
                 (if (gx#stx-pair? _g43594371_)
                     (let ((_e43614373_ (gx#stx-e _g43594371_)))
                       (let ((_hd43624376_ (##car _e43614373_))
                             (_tl43634378_ (##cdr _e43614373_)))
                         ((lambda (_L4381_)
                            (let ((_phi4391_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4393_
                                     (gxc#meta-state-begin-phi!
                                      _state4356_
                                      _phi4391_)))
                                (let ((_compiled4396_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4381_)
                                           _state4356_))
                                        gx#current-expander-phi
                                        _phi4391_)))
                                  (let ()
                                    (let ((_g43994409_
                                           (lambda (_g44004406_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g44004406_))))
                                      (let ((_g43984441_
                                             (lambda (_g44004412_)
                                               (if (gx#stx-pair? _g44004412_)
                                                   (let ((_e44024414_
                                                          (gx#stx-e
                                                           _g44004412_)))
                                                     (let ((_hd44034417_
                                                            (##car _e44024414_))
                                                           (_tl44044419_
                                                            (##cdr _e44024414_)))
                                                       (if (gx#identifier?
                                                            _hd44034417_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd44034417_)
                                                               ((lambda (_L4422_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4439_
                                 (filter (lambda (_$obj4436_)
                                           (not (eq? _$obj4436_ '#!void)))
                                         _L4422_)))
                            (if _block4393_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4393_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4439_))
                                (if (null? _c-body4439_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4439_)))))
                        _tl44044419_)
                       (_g43994409_ _g44004412_))
                   (_g43994409_ _g44004412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43994409_
                                                    _g44004412_)))))
                                        (_g43984441_ _compiled4396_))))))))
                          _tl43634378_)))
                     (_g43584368_ _g43594371_)))))
          (_g43574444_ _stx4355_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4286_ _state4287_)
      (begin
        (gxc#meta-state-end-phi! _state4287_)
        (let ((_g42894303_
               (lambda (_g42904300_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42904300_))))
          (let ((_g42884352_
                 (lambda (_g42904306_)
                   (if (gx#stx-pair? _g42904306_)
                       (let ((_e42934308_ (gx#stx-e _g42904306_)))
                         (let ((_hd42944311_ (##car _e42934308_))
                               (_tl42954313_ (##cdr _e42934308_)))
                           (if (gx#stx-pair? _tl42954313_)
                               (let ((_e42964316_ (gx#stx-e _tl42954313_)))
                                 (let ((_hd42974319_ (##car _e42964316_))
                                       (_tl42984321_ (##cdr _e42964316_)))
                                   ((lambda (_L4324_ _L4325_)
                                      (let ((_key4338_
                                             (gx#core-identifier-key _L4325_)))
                                        (begin
                                          (if (interned-symbol? _key4338_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4286_
                                               _L4325_
                                               _key4338_))
                                          (let ((_ctx4340_
                                                 (gx#syntax-local-e__0
                                                  _L4325_)))
                                            (let ((_code4343_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4340_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4287_))
                                                    gx#current-expander-context
                                                    _ctx4340_)))
                                              (let ((_rt4345_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4340_
                                                      '#f)))
                                                (let ((_loader4347_
                                                       (if _rt4345_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4345_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4349_
                                                         (gx#stx-e _L4325_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4287_)
                                                        (cons '%#module
                                                              (cons _modid4349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4343_ _loader4347_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl42984321_
                                    _hd42974319_)))
                               (_g42894303_ _g42904306_))))
                       (_g42894303_ _g42904306_)))))
            (_g42884352_ _stx4286_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4276_ _context-chain4277_)
      ((letrec ((_lp4279_
                 (lambda (_ctx4281_ _path4282_)
                   (let ((_super4284_
                          (##structure-ref
                           _ctx4281_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4284_ _context-chain4277_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4281_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4282_)
                         (if (##structure-instance-of?
                              _super4284_
                              'gx#module-context::t)
                             (_lp4279_
                              _super4284_
                              (cons (car (##structure-ref
                                          _ctx4281_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4282_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4281_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4282_)))))))
         _lp4279_)
       _ctx4276_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4271_
                 (lambda (_ctx4273_ _r4274_)
                   (if (##structure-instance-of?
                        _ctx4273_
                        'gx#module-context::t)
                       (_lp4271_
                        (##structure-ref _ctx4273_ '3 gx#phi-context::t '#f)
                        (cons _ctx4273_ _r4274_))
                       _r4274_))))
         _lp4271_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4040_ _state4041_)
      (let ((_context-chain4043_ (gxc#current-context-chain)))
        (let ((_make-import-spec4044_
               (lambda (_in4207_)
                 (let ((_in42084220_ _in4207_))
                   (let ((_E42104224_
                          (lambda ()
                            (error '"No clause matching" _in42084220_))))
                     (let ((_K42114234_
                            (lambda (_phi4227_
                                     _name4228_
                                     _src-name4229_
                                     _src-phi4230_
                                     _src-key4231_
                                     _src-ctx4232_)
                              (cons _phi4227_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4228_)
                                          (cons _src-phi4230_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4229_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in42084220_
                            (##type-id gx#module-import::t))
                           (let ((_e42124237_ (##vector-ref _in42084220_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e42124237_
                                  (##type-id gx#module-export::t))
                                 (let ((_e42154240_
                                        (##vector-ref _e42124237_ '1)))
                                   (let ((_src-ctx4243_ _e42154240_))
                                     (let ((_e42164245_
                                            (##vector-ref _e42124237_ '2)))
                                       (let ((_src-key4248_ _e42164245_))
                                         (let ((_e42174250_
                                                (##vector-ref _e42124237_ '3)))
                                           (let ((_src-phi4253_ _e42174250_))
                                             (let ((_e42184255_
                                                    (##vector-ref
                                                     _e42124237_
                                                     '4)))
                                               (let ((_src-name4258_
                                                      _e42184255_))
                                                 (let ((_e42134260_
                                                        (##vector-ref
                                                         _in42084220_
                                                         '2)))
                                                   (let ((_name4263_
                                                          _e42134260_))
                                                     (let ((_e42144265_
                                                            (##vector-ref
                                                             _in42084220_
                                                             '3)))
                                                       (let ((_phi4268_
                                                              _e42144265_))
                                                         (_K42114234_
                                                          _phi4268_
                                                          _name4263_
                                                          _src-name4258_
                                                          _src-phi4253_
                                                          _src-key4248_
                                                          _src-ctx4243_)))))))))))))
                                 (_E42104224_)))
                           (_E42104224_))))))))
          (let ((_make-import-path4045_
                 (lambda (_ctx4205_)
                   (gxc#generate-meta-import-path
                    _ctx4205_
                    _context-chain4043_))))
            (let ((_make-import-spec-in4046_
                   (lambda (_ctx4202_ _in4203_)
                     (cons 'spec:
                           (cons (_make-import-path4045_ _ctx4202_)
                                 (reverse _in4203_))))))
              (begin
                (gxc#meta-state-end-phi! _state4041_)
                (let ((_g40484058_
                       (lambda (_g40494055_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g40494055_))))
                  (let ((_g40474199_
                         (lambda (_g40494061_)
                           (if (gx#stx-pair? _g40494061_)
                               (let ((_e40514063_ (gx#stx-e _g40494061_)))
                                 (let ((_hd40524066_ (##car _e40514063_))
                                       (_tl40534068_ (##cdr _e40514063_)))
                                   ((lambda (_L4071_)
                                      ((letrec ((_lp4082_
                                                 (lambda (_rest4084_
                                                          _current-src4085_
                                                          _current-in4086_
                                                          _r4087_)
                                                   (let ((_rest40884096_
                                                          _rest4084_))
                                                     (let ((_E40914100_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest40884096_))))
               (let ((_else40904106_
                      (lambda ()
                        (let ((_r4104_ (if _current-src4085_
                                           (cons (_make-import-spec-in4046_
                                                  _current-src4085_
                                                  _current-in4086_)
                                                 _r4087_)
                                           _r4087_)))
                          (cons '%#import (reverse _r4104_))))))
                 (let ((_K40924187_
                        (lambda (_rest4109_ _in4110_)
                          (if (##structure-direct-instance-of?
                               _in4110_
                               'gx#module-import::t)
                              (let ((_in41114118_ _in4110_))
                                (let ((_E41134122_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in41114118_))))
                                  (let ((_K41144127_
                                         (lambda (_src-ctx4125_)
                                           (if (eq? _current-src4085_
                                                    _src-ctx4125_)
                                               (_lp4082_
                                                _rest4109_
                                                _current-src4085_
                                                (cons (_make-import-spec4044_
                                                       _in4110_)
                                                      _current-in4086_)
                                                _r4087_)
                                               (if _current-src4085_
                                                   (_lp4082_
                                                    _rest4109_
                                                    _src-ctx4125_
                                                    (cons (_make-import-spec4044_
                                                           _in4110_)
                                                          '())
                                                    (cons (_make-import-spec-in4046_
                                                           _current-src4085_
                                                           _current-in4086_)
                                                          _r4087_))
                                                   (_lp4082_
                                                    _rest4109_
                                                    _src-ctx4125_
                                                    (cons (_make-import-spec4044_
                                                           _in4110_)
                                                          '())
                                                    _r4087_))))))
                                    (if (##structure-direct-instance-of?
                                         _in41114118_
                                         (##type-id gx#module-import::t))
                                        (let ((_e41154130_
                                               (##vector-ref _in41114118_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e41154130_
                                               (##type-id gx#module-export::t))
                                              (let ((_e41164133_
                                                     (##vector-ref
                                                      _e41154130_
                                                      '1)))
                                                (let ((_src-ctx4136_
                                                       _e41164133_))
                                                  (_K41144127_ _src-ctx4136_)))
                                              (_E41134122_)))
                                        (_E41134122_)))))
                              (if (##structure-direct-instance-of?
                                   _in4110_
                                   'gx#import-set::t)
                                  (let ((_phi4138_
                                         (##direct-structure-ref
                                          _in4110_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4140_
                                           (##direct-structure-ref
                                            _in4110_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4180_
                                             (let ((_g41414150_
                                                    (_make-import-path4045_
                                                     _src4140_)))
                                               (let ((_E41444154_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g41414150_))))
                                                 (let ((_try-match41434165_
                                                        (lambda ()
                                                          (let ((_K41454160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4158_) (cons 'in: _path4158_))))
                    (let ((_path4163_ _g41414150_))
                      (_K41454160_ _path4163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K41464170_
                                                          (lambda (_path4168_)
                                                            _path4168_)))
                                                     (if (##pair? _g41414150_)
                                                         (let ((_hd41474173_
                                                                (##car _g41414150_))
                                                               (_tl41484175_
                                                                (##cdr _g41414150_)))
                                                           (let ((_path4178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd41474173_))
                     (if (##null? _tl41484175_)
                         (_K41464170_ _path4178_)
                         (_try-match41434165_))))
                 (_try-match41434165_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4182_ (if _current-src4085_
                                                           (cons (_make-import-spec-in4046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4085_
                          _current-in4086_)
                         _r4087_)
                   _r4087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4082_
                                             _rest4109_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4138_)
                                                       _src-in4180_
                                                       (cons 'phi:
                                                             (cons _phi4138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4180_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4182_)))))))
                                  (if (##structure-instance-of?
                                       _in4110_
                                       'gx#module-context::t)
                                      (let ((_r4185_ (if _current-src4085_
                                                         (cons (_make-import-spec-in4046_
                                                                _current-src4085_
                                                                _current-in4086_)
                                                               _r4087_)
                                                         _r4087_)))
                                        (_lp4082_
                                         _rest4109_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4045_
                                                      _in4110_))
                                               _r4185_)))
                                      '#!void))))))
                   (if (##pair? _rest40884096_)
                       (let ((_hd40934190_ (##car _rest40884096_))
                             (_tl40944192_ (##cdr _rest40884096_)))
                         (let ((_in4195_ _hd40934190_))
                           (let ((_rest4197_ _tl40944192_))
                             (_K40924187_ _rest4197_ _in4195_))))
                       (_else40904106_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4082_)
                                       _L4071_
                                       '#f
                                       '()
                                       '()))
                                    _tl40534068_)))
                               (_g40484058_ _g40494061_)))))
                    (_g40474199_ _stx4040_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3850_ _state3851_)
      (let ((_context-chain3853_ (gxc#current-context-chain)))
        (let ((_make-import-path3854_
               (lambda (_ctx4038_)
                 (gxc#generate-meta-import-path
                  _ctx4038_
                  _context-chain3853_))))
          (let ((_g38563866_
                 (lambda (_g38573863_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g38573863_))))
            (let ((_g38554035_
                   (lambda (_g38573869_)
                     (if (gx#stx-pair? _g38573869_)
                         (let ((_e38593871_ (gx#stx-e _g38573869_)))
                           (let ((_hd38603874_ (##car _e38593871_))
                                 (_tl38613876_ (##cdr _e38593871_)))
                             ((lambda (_L3879_)
                                ((letrec ((_lp3890_
                                           (lambda (_rest3892_ _r3893_)
                                             (let ((_rest38943902_ _rest3892_))
                                               (let ((_E38973906_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest38943902_))))
                                                 (let ((_else38963910_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3893_)))))
                                                   (let ((_K38984023_
                                                          (lambda (_rest3913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3914_)
                    (let ((_out39153928_ _out3914_))
                      (let ((_E39183932_
                             (lambda ()
                               (error '"No clause matching" _out39153928_))))
                        (let ((_try-match39173995_
                               (lambda ()
                                 (let ((_K39193982_
                                        (lambda (_phi3936_ _src3937_)
                                          (let ((_out3977_
                                                 (if _src3937_
                                                     (cons 'import:
                                                           (cons (let ((_g39383947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3854_ _src3937_)))
                           (let ((_E39413951_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g39383947_))))
                             (let ((_try-match39403962_
                                    (lambda ()
                                      (let ((_K39423957_
                                             (lambda (_path3955_)
                                               (cons 'in: _path3955_))))
                                        (let ((_path3960_ _g39383947_))
                                          (_K39423957_ _path3960_))))))
                               (let ((_K39433967_
                                      (lambda (_path3965_) _path3965_)))
                                 (if (##pair? _g39383947_)
                                     (let ((_hd39443970_ (##car _g39383947_))
                                           (_tl39453972_ (##cdr _g39383947_)))
                                       (let ((_path3975_ _hd39443970_))
                                         (if (##null? _tl39453972_)
                                             (_K39433967_ _path3975_)
                                             (_try-match39403962_))))
                                     (_try-match39403962_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3979_
                                                   (if (fxzero? _phi3936_)
                                                       _out3977_
                                                       (cons 'phi:
                                                             (cons _phi3936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3977_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3890_
                                                 _rest3913_
                                                 (cons _out3979_
                                                       _r3893_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out39153928_
                                        (##type-id gx#export-set::t))
                                       (let ((_e39203985_
                                              (##vector-ref _out39153928_ '1)))
                                         (let ((_src3988_ _e39203985_))
                                           (let ((_e39213990_
                                                  (##vector-ref
                                                   _out39153928_
                                                   '2)))
                                             (let ((_phi3993_ _e39213990_))
                                               (_K39193982_
                                                _phi3993_
                                                _src3988_)))))
                                       (_E39183932_))))))
                          (let ((_K39224002_
                                 (lambda (_name3998_ _phi3999_ _key4000_)
                                   (_lp3890_
                                    _rest3913_
                                    (cons (cons 'spec:
                                                (cons _phi3999_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4000_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3998_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3893_)))))
                            (if (##structure-direct-instance-of?
                                 _out39153928_
                                 (##type-id gx#module-export::t))
                                (let ((_e39234005_
                                       (##vector-ref _out39153928_ '1)))
                                  (let ((_e39244008_
                                         (##vector-ref _out39153928_ '2)))
                                    (let ((_key4011_ _e39244008_))
                                      (let ((_e39254013_
                                             (##vector-ref _out39153928_ '3)))
                                        (let ((_phi4016_ _e39254013_))
                                          (let ((_e39264018_
                                                 (##vector-ref
                                                  _out39153928_
                                                  '4)))
                                            (let ((_name4021_ _e39264018_))
                                              (_K39224002_
                                               _name4021_
                                               _phi4016_
                                               _key4011_))))))))
                                (_try-match39173995_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest38943902_)
                                                         (let ((_hd38994026_
                                                                (##car _rest38943902_))
                                                               (_tl39004028_
                                                                (##cdr _rest38943902_)))
                                                           (let ((_out4031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38994026_))
                     (let ((_rest4033_ _tl39004028_))
                       (_K38984023_ _rest4033_ _out4031_))))
                 (_else38963910_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3890_)
                                 _L3879_
                                 '()))
                              _tl38613876_)))
                         (_g38563866_ _g38573869_)))))
              (_g38554035_ _stx3850_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3811_ _state3812_)
      (begin
        (gxc#meta-state-end-phi! _state3812_)
        (let ((_g38143824_
               (lambda (_g38153821_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38153821_))))
          (let ((_g38133847_
                 (lambda (_g38153827_)
                   (if (gx#stx-pair? _g38153827_)
                       (let ((_e38173829_ (gx#stx-e _g38153827_)))
                         (let ((_hd38183832_ (##car _e38173829_))
                               (_tl38193834_ (##cdr _e38173829_)))
                           ((lambda (_L3837_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3837_)))
                            _tl38193834_)))
                       (_g38143824_ _g38153827_)))))
            (_g38133847_ _stx3811_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3682_ _state3683_)
      (let ((_generate13685_
             (lambda (_id3806_ _eid3807_)
               (let ((_eid3809_ (gx#stx-e _eid3807_)))
                 (begin
                   (if (interned-symbol? _eid3809_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3682_
                        _eid3809_))
                   (cons (gxc#generate-runtime-identifier _id3806_)
                         (cons _eid3809_ '())))))))
        (let ((_g36873715_
               (lambda (_g36883712_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36883712_))))
          (let ((_g36863803_
                 (lambda (_g36883718_)
                   (if (gx#stx-pair? _g36883718_)
                       (let ((_e36913720_ (gx#stx-e _g36883718_)))
                         (let ((_hd36923723_ (##car _e36913720_))
                               (_tl36933725_ (##cdr _e36913720_)))
                           (if (gx#stx-pair/null? _tl36933725_)
                               (if (fx>= (gx#stx-length _tl36933725_) '0)
                                   (let ((_g10359_
                                          (gx#syntax-split-splice
                                           _tl36933725_
                                           '0)))
                                     (begin
                                       (let ((_g10360_
                                              (values-count _g10359_)))
                                         (if (not (fx= _g10360_ 2))
                                             (error "Context expects 2 values"
                                                    _g10360_)))
                                       (let ((_target36943728_
                                              (values-ref _g10359_ 0))
                                             (_tl36963730_
                                              (values-ref _g10359_ 1)))
                                         (if (gx#stx-null? _tl36963730_)
                                             (letrec ((_loop36973733_
                                                       (lambda (_hd36953736_
                                                                _eid37013738_
                                                                _id37023740_)
                                                         (if (gx#stx-pair?
                                                              _hd36953736_)
                                                             (let ((_e36983743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd36953736_)))
                       (let ((_lp-hd36993746_ (##car _e36983743_))
                             (_lp-tl37003748_ (##cdr _e36983743_)))
                         (if (gx#stx-pair? _lp-hd36993746_)
                             (let ((_e37053751_ (gx#stx-e _lp-hd36993746_)))
                               (let ((_hd37063754_ (##car _e37053751_))
                                     (_tl37073756_ (##cdr _e37053751_)))
                                 (if (gx#stx-pair? _tl37073756_)
                                     (let ((_e37083759_
                                            (gx#stx-e _tl37073756_)))
                                       (let ((_hd37093762_ (##car _e37083759_))
                                             (_tl37103764_
                                              (##cdr _e37083759_)))
                                         (if (gx#stx-null? _tl37103764_)
                                             (_loop36973733_
                                              _lp-tl37003748_
                                              (cons _hd37093762_ _eid37013738_)
                                              (cons _hd37063754_ _id37023740_))
                                             (_g36873715_ _g36883718_))))
                                     (_g36873715_ _g36883718_))))
                             (_g36873715_ _g36883718_))))
                     (let ((_eid37033767_ (reverse _eid37013738_))
                           (_id37043769_ (reverse _id37023740_)))
                       ((lambda (_L3772_ _L3773_)
                          (cons '%#extern
                                (map _generate13685_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37883791_
                                                        _g37893793_)
                                                 (cons _g37883791_
                                                       _g37893793_))
                                               '()
                                               _L3773_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37953798_
                                                        _g37963800_)
                                                 (cons _g37953798_
                                                       _g37963800_))
                                               '()
                                               _L3772_)))))
                        _eid37033767_
                        _id37043769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop36973733_
                                                _target36943728_
                                                '()
                                                '()))
                                             (_g36873715_ _g36883718_)))))
                                   (_g36873715_ _g36883718_))
                               (_g36873715_ _g36883718_))))
                       (_g36873715_ _g36883718_)))))
            (_g36863803_ _stx3682_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3477_ _state3478_)
      (let ((_generate13480_
             (lambda (_id3677_)
               (let ((_eid3679_ (gxc#generate-runtime-binding-id _id3677_))
                     (_ident3680_ (gxc#generate-runtime-identifier _id3677_)))
                 (cons '%#define-runtime
                       (cons _ident3680_ (cons _eid3679_ '())))))))
        (let ((_generate*3481_
               (lambda (_all3645_)
                 (let ((_all36463654_ _all3645_))
                   (let ((_E36493658_
                          (lambda ()
                            (error '"No clause matching" _all36463654_))))
                     (let ((_else36483662_
                            (lambda () (cons '%#begin _all3645_))))
                       (let ((_K36503667_ (lambda (_one3665_) _one3665_)))
                         (if (##pair? _all36463654_)
                             (let ((_hd36513670_ (##car _all36463654_))
                                   (_tl36523672_ (##cdr _all36463654_)))
                               (let ((_one3675_ _hd36513670_))
                                 (if (##null? _tl36523672_)
                                     (_K36503667_ _one3675_)
                                     (_else36483662_))))
                             (_else36483662_)))))))))
          (let ((_g34833500_
                 (lambda (_g34843497_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g34843497_))))
            (let ((_g34823642_
                   (lambda (_g34843503_)
                     (if (gx#stx-pair? _g34843503_)
                         (let ((_e34873505_ (gx#stx-e _g34843503_)))
                           (let ((_hd34883508_ (##car _e34873505_))
                                 (_tl34893510_ (##cdr _e34873505_)))
                             (if (gx#stx-pair? _tl34893510_)
                                 (let ((_e34903513_ (gx#stx-e _tl34893510_)))
                                   (let ((_hd34913516_ (##car _e34903513_))
                                         (_tl34923518_ (##cdr _e34903513_)))
                                     (if (gx#stx-pair? _tl34923518_)
                                         (let ((_e34933521_
                                                (gx#stx-e _tl34923518_)))
                                           (let ((_hd34943524_
                                                  (##car _e34933521_))
                                                 (_tl34953526_
                                                  (##cdr _e34933521_)))
                                             (if (gx#stx-null? _tl34953526_)
                                                 ((lambda (_L3529_ _L3530_)
                                                    ((letrec ((_lp3546_
                                                               (lambda (_rest3548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3549_)
                         (let ((_g35543570_
                                (lambda (_g35553567_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g35553567_))))
                           (let ((_g35533577_
                                  (lambda (_g35553573_)
                                    ((lambda ()
                                       (_generate*3481_ (reverse _r3549_)))))))
                             (let ((_g35523593_
                                    (lambda (_g35553580_)
                                      ((lambda (_L3582_)
                                         (if (gx#identifier? _L3582_)
                                             (_generate*3481_
                                              (foldl1 cons
                                                      (cons (_generate13480_
                                                             _L3582_)
                                                            '())
                                                      _r3549_))
                                             (_g35533577_ _g35553580_)))
                                       _g35553580_))))
                               (let ((_g35513617_
                                      (lambda (_g35553596_)
                                        (if (gx#stx-pair? _g35553596_)
                                            (let ((_e35623598_
                                                   (gx#stx-e _g35553596_)))
                                              (let ((_hd35633601_
                                                     (##car _e35623598_))
                                                    (_tl35643603_
                                                     (##cdr _e35623598_)))
                                                ((lambda (_L3606_ _L3607_)
                                                   (_lp3546_
                                                    _L3606_
                                                    (cons (_generate13480_
                                                           _L3607_)
                                                          _r3549_)))
                                                 _tl35643603_
                                                 _hd35633601_)))
                                            (_g35523593_ _g35553596_)))))
                                 (let ((_g35503639_
                                        (lambda (_g35553620_)
                                          (if (gx#stx-pair? _g35553620_)
                                              (let ((_e35573622_
                                                     (gx#stx-e _g35553620_)))
                                                (let ((_hd35583625_
                                                       (##car _e35573622_))
                                                      (_tl35593627_
                                                       (##cdr _e35573622_)))
                                                  (if (gx#stx-datum?
                                                       _hd35583625_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd35583625_)
                          '#f)
                  ((lambda (_L3630_) (_lp3546_ _L3630_ _r3549_)) _tl35593627_)
                  (_g35513617_ _g35553620_))
              (_g35513617_ _g35553620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35513617_ _g35553620_)))))
                                   (_g35503639_ _rest3548_)))))))))
               _lp3546_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3530_
                                                     '()))
                                                  _hd34943524_
                                                  _hd34913516_)
                                                 (_g34833500_ _g34843503_))))
                                         (_g34833500_ _g34843503_))))
                                 (_g34833500_ _g34843503_))))
                         (_g34833500_ _g34843503_)))))
              (_g34823642_ _stx3477_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3374_ _state3375_)
      (let ((_g33773394_
             (lambda (_g33783391_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33783391_))))
        (let ((_g33763474_
               (lambda (_g33783397_)
                 (if (gx#stx-pair? _g33783397_)
                     (let ((_e33813399_ (gx#stx-e _g33783397_)))
                       (let ((_hd33823402_ (##car _e33813399_))
                             (_tl33833404_ (##cdr _e33813399_)))
                         (if (gx#stx-pair? _tl33833404_)
                             (let ((_e33843407_ (gx#stx-e _tl33833404_)))
                               (let ((_hd33853410_ (##car _e33843407_))
                                     (_tl33863412_ (##cdr _e33843407_)))
                                 (if (gx#stx-pair? _tl33863412_)
                                     (let ((_e33873415_
                                            (gx#stx-e _tl33863412_)))
                                       (let ((_hd33883418_ (##car _e33873415_))
                                             (_tl33893420_
                                              (##cdr _e33873415_)))
                                         (if (gx#stx-null? _tl33893420_)
                                             ((lambda (_L3423_ _L3424_)
                                                (let ((_eid3439_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3424_)))
                                                  (let ((_phi3441_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3443_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3375_
                                                            _phi3441_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g34463453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g34473450_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g34473450_))))
                    (let ((_g34453471_
                           (lambda (_g34473456_)
                             ((lambda (_L3458_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3375_
                                   _phi3441_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3458_ (cons _L3423_ '()))))))
                              _g34473456_))))
                      (_g34453471_ _eid3439_)))
                  (if _block3443_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3443_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3424_)
                                                    (cons _eid3439_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3424_)
                                  (cons _eid3439_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33883418_
                                              _hd33853410_)
                                             (_g33773394_ _g33783397_))))
                                     (_g33773394_ _g33783397_))))
                             (_g33773394_ _g33783397_))))
                     (_g33773394_ _g33783397_)))))
          (_g33763474_ _stx3374_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3306_ _state3307_)
      (let ((_g33093326_
             (lambda (_g33103323_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33103323_))))
        (let ((_g33083371_
               (lambda (_g33103329_)
                 (if (gx#stx-pair? _g33103329_)
                     (let ((_e33133331_ (gx#stx-e _g33103329_)))
                       (let ((_hd33143334_ (##car _e33133331_))
                             (_tl33153336_ (##cdr _e33133331_)))
                         (if (gx#stx-pair? _tl33153336_)
                             (let ((_e33163339_ (gx#stx-e _tl33153336_)))
                               (let ((_hd33173342_ (##car _e33163339_))
                                     (_tl33183344_ (##cdr _e33163339_)))
                                 (if (gx#stx-pair? _tl33183344_)
                                     (let ((_e33193347_
                                            (gx#stx-e _tl33183344_)))
                                       (let ((_hd33203350_ (##car _e33193347_))
                                             (_tl33213352_
                                              (##cdr _e33193347_)))
                                         (if (gx#stx-null? _tl33213352_)
                                             ((lambda (_L3355_ _L3356_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3356_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3355_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33203350_
                                              _hd33173342_)
                                             (_g33093326_ _g33103329_))))
                                     (_g33093326_ _g33103329_))))
                             (_g33093326_ _g33103329_))))
                     (_g33093326_ _g33103329_)))))
          (_g33083371_ _stx3306_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3303_ _state3304_)
      (begin
        (gxc#meta-state-add-phi!
         _state3304_
         (gx#current-expander-phi)
         _stx3303_)
        (gxc#generate-meta-define-values% _stx3303_ _state3304_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3300_ _state3301_)
      (begin
        (gxc#meta-state-add-phi!
         _state3301_
         (gx#current-expander-phi)
         _stx3300_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3297_
      (apply make-struct-instance gxc#meta-state::t _$args3297_)))
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
    (lambda (_self3294_ _ctx3295_)
      (struct-instance-init!
       _self3294_
       (symbol->string
        (##structure-ref _ctx3295_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3291_
      (apply make-struct-instance gxc#meta-state-block::t _$args3291_)))
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
    (lambda (_state3250_ _phi3251_)
      (let ((_state32523260_ _state3250_))
        (let ((_E32543264_
               (lambda () (error '"No clause matching" _state32523260_))))
          (let ((_K32553273_
                 (lambda (_open3267_ _n3268_ _src3269_)
                   (if (table-ref _open3267_ _phi3251_ '#f)
                       '#f
                       (let ((_block-ref3271_
                              (string-append
                               _src3269_
                               '"__"
                               (number->string _n3268_))))
                         (begin
                           (##structure-set!
                            _state3250_
                            (fx+ _n3268_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3267_
                            _phi3251_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3251_
                             _n3268_
                             '()))
                           _block-ref3271_))))))
            (if (##structure-instance-of?
                 _state32523260_
                 (##type-id gxc#meta-state::t))
                (let ((_e32563276_ (##vector-ref _state32523260_ '1)))
                  (let ((_src3279_ _e32563276_))
                    (let ((_e32573281_ (##vector-ref _state32523260_ '2)))
                      (let ((_n3284_ _e32573281_))
                        (let ((_e32583286_ (##vector-ref _state32523260_ '3)))
                          (let ((_open3289_ _e32583286_))
                            (_K32553273_ _open3289_ _n3284_ _src3279_)))))))
                (_E32543264_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3244_ _phi3245_ _stx3246_)
      (let ((_block3248_
             (table-ref
              (##structure-ref _state3244_ '3 gxc#meta-state::t '#f)
              _phi3245_
              '#f)))
        (##structure-set!
         _block3248_
         (cons _stx3246_
               (##structure-ref _block3248_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3239_)
      (begin
        (##structure-set!
         _state3239_
         (hash-fold
          (lambda (_g10361_ _block3241_ _r3242_) (cons _block3241_ _r3242_))
          (##structure-ref _state3239_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3239_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3239_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3191_)
      (begin
        (gxc#meta-state-end-phi! _state3191_)
        (foldl1 (lambda (_block3193_ _r3194_)
                  (let ((_block31953204_ _block3193_))
                    (let ((_E31973208_
                           (lambda ()
                             (error '"No clause matching" _block31953204_))))
                      (let ((_K31983216_
                             (lambda (_code3211_ _n3212_ _phi3213_ _ctx3214_)
                               (if (null? _code3211_)
                                   _r3194_
                                   (cons (cons _ctx3214_
                                               (cons _phi3213_
                                                     (cons _n3212_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3211_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3194_)))))
                        (if (##structure-instance-of?
                             _block31953204_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e31993219_
                                   (##vector-ref _block31953204_ '1)))
                              (let ((_ctx3222_ _e31993219_))
                                (let ((_e32003224_
                                       (##vector-ref _block31953204_ '2)))
                                  (let ((_phi3227_ _e32003224_))
                                    (let ((_e32013229_
                                           (##vector-ref _block31953204_ '3)))
                                      (let ((_n3232_ _e32013229_))
                                        (let ((_e32023234_
                                               (##vector-ref
                                                _block31953204_
                                                '4)))
                                          (let ((_code3237_ _e32023234_))
                                            (_K31983216_
                                             _code3237_
                                             _n3232_
                                             _phi3227_
                                             _ctx3222_)))))))))
                            (_E31973208_))))))
                '()
                (##structure-ref _state3191_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3187_)
      (let ((_ht3189_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3187_ _ht3189_)
          _ht3189_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3130_ _ht3131_)
      (let ((_g31333146_
             (lambda (_g31343143_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31343143_))))
        (let ((_g31323184_
               (lambda (_g31343149_)
                 (if (gx#stx-pair? _g31343149_)
                     (let ((_e31363151_ (gx#stx-e _g31343149_)))
                       (let ((_hd31373154_ (##car _e31363151_))
                             (_tl31383156_ (##cdr _e31363151_)))
                         (if (gx#stx-pair? _tl31383156_)
                             (let ((_e31393159_ (gx#stx-e _tl31383156_)))
                               (let ((_hd31403162_ (##car _e31393159_))
                                     (_tl31413164_ (##cdr _e31393159_)))
                                 (if (gx#stx-null? _tl31413164_)
                                     ((lambda (_L3167_)
                                        (let ((_bind3179_
                                               (gx#resolve-identifier__0
                                                _L3167_)))
                                          (let ((_eid3181_
                                                 (if _bind3179_
                                                     (##structure-ref
                                                      _bind3179_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3167_))))
                                            (let ()
                                              (table-set!
                                               _ht3131_
                                               _eid3181_
                                               _eid3181_)))))
                                      _hd31403162_)
                                     (_g31333146_ _g31343149_))))
                             (_g31333146_ _g31343149_))))
                     (_g31333146_ _g31343149_)))))
          (_g31323184_ _stx3130_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3057_ _ht3058_)
      (let ((_g30603077_
             (lambda (_g30613074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30613074_))))
        (let ((_g30593127_
               (lambda (_g30613080_)
                 (if (gx#stx-pair? _g30613080_)
                     (let ((_e30643082_ (gx#stx-e _g30613080_)))
                       (let ((_hd30653085_ (##car _e30643082_))
                             (_tl30663087_ (##cdr _e30643082_)))
                         (if (gx#stx-pair? _tl30663087_)
                             (let ((_e30673090_ (gx#stx-e _tl30663087_)))
                               (let ((_hd30683093_ (##car _e30673090_))
                                     (_tl30693095_ (##cdr _e30673090_)))
                                 (if (gx#stx-pair? _tl30693095_)
                                     (let ((_e30703098_
                                            (gx#stx-e _tl30693095_)))
                                       (let ((_hd30713101_ (##car _e30703098_))
                                             (_tl30723103_
                                              (##cdr _e30703098_)))
                                         (if (gx#stx-null? _tl30723103_)
                                             ((lambda (_L3106_ _L3107_)
                                                (let ((_bind3122_
                                                       (gx#resolve-identifier__0
                                                        _L3107_)))
                                                  (let ((_eid3124_
                                                         (if _bind3122_
                                                             (##structure-ref
                                                              _bind3122_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3107_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3058_
                                                         _eid3124_
                                                         _eid3124_)
                                                        (gxc#compile-e
                                                         _L3106_
                                                         _ht3058_))))))
                                              _hd30713101_
                                              _hd30683093_)
                                             (_g30603077_ _g30613080_))))
                                     (_g30603077_ _g30613080_))))
                             (_g30603077_ _g30613080_))))
                     (_g30603077_ _g30613080_)))))
          (_g30593127_ _stx3057_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3019_)
      (let ((_g30213031_
             (lambda (_g30223028_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30223028_))))
        (let ((_g30203054_
               (lambda (_g30223034_)
                 (if (gx#stx-pair? _g30223034_)
                     (let ((_e30243036_ (gx#stx-e _g30223034_)))
                       (let ((_hd30253039_ (##car _e30243036_))
                             (_tl30263041_ (##cdr _e30243036_)))
                         ((lambda (_L3044_) (ormap1 gxc#compile-e _L3044_))
                          _tl30263041_)))
                     (_g30213031_ _g30223034_)))))
          (_g30203054_ _stx3019_))))))
