(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx7117_ . _args7118_)
      (let ((_g71207130_
             (lambda (_g71217127_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g71217127_))))
        (let ((_g71197158_
               (lambda (_g71217133_)
                 (if (gx#stx-pair? _g71217133_)
                     (let ((_e71237135_ (gx#stx-e _g71217133_)))
                       (let ((_hd71247138_ (##car _e71237135_))
                             (_tl71257140_ (##cdr _e71237135_)))
                         ((lambda (_L7143_)
                            (let ((_$e7153_
                                   (hash-get
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L7143_))))
                              (if _$e7153_
                                  ((lambda (_method7156_)
                                     (apply _method7156_ _stx7117_ _args7118_))
                                   _$e7153_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx7117_
                                   _L7143_))))
                          _hd71247138_)))
                     (_g71207130_ _g71217133_)))))
          (_g71197158_ _stx7117_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl7114_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7114_ '%#lambda void)
           (hash-put! _tbl7114_ '%#case-lambda void)
           (hash-put! _tbl7114_ '%#let-values void)
           (hash-put! _tbl7114_ '%#letrec-values void)
           (hash-put! _tbl7114_ '%#letrec*-values void)
           (hash-put! _tbl7114_ '%#quote void)
           (hash-put! _tbl7114_ '%#quote-syntax void)
           (hash-put! _tbl7114_ '%#call void)
           (hash-put! _tbl7114_ '%#if void)
           (hash-put! _tbl7114_ '%#ref void)
           (hash-put! _tbl7114_ '%#set! void)
           (hash-put! _tbl7114_ '%#struct-instance? void)
           (hash-put! _tbl7114_ '%#struct-direct-instance? void)
           (hash-put! _tbl7114_ '%#struct-ref void)
           (hash-put! _tbl7114_ '%#struct-set! void)
           _tbl7114_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl7110_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7110_ '%#begin void)
           (hash-put! _tbl7110_ '%#begin-syntax void)
           (hash-put! _tbl7110_ '%#begin-foreign void)
           (hash-put! _tbl7110_ '%#module void)
           (hash-put! _tbl7110_ '%#import void)
           (hash-put! _tbl7110_ '%#export void)
           (hash-put! _tbl7110_ '%#provide void)
           (hash-put! _tbl7110_ '%#extern void)
           (hash-put! _tbl7110_ '%#define-values void)
           (hash-put! _tbl7110_ '%#define-syntax void)
           (hash-put! _tbl7110_ '%#define-alias void)
           (hash-put! _tbl7110_ '%#declare void)
           _tbl7110_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl7106_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7106_ (force gxc#&void-special-form))
           (hash-copy! _tbl7106_ (force gxc#&void-expression))
           _tbl7106_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl7102_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7102_ (force gxc#&void-expression))
           (hash-copy! _tbl7102_ (force gxc#&void-special-form))
           (hash-put! _tbl7102_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl7102_ '%#begin-syntax gxc#collect-begin-syntax%)
           (hash-put! _tbl7102_ '%#module gxc#collect-module%)
           (hash-put!
            _tbl7102_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (hash-put!
            _tbl7102_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl7102_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx7095_ . _args7097_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7095_ _args7097_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl7092_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7092_ (force gxc#&void))
           (hash-put! _tbl7092_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl7092_ '%#module gxc#lift-modules-module%)
           _tbl7092_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx7085_ . _args7087_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7085_ _args7087_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl7082_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7082_ '%#begin gxc#find-runtime-begin%)
           (hash-put! _tbl7082_ '%#begin-syntax false)
           (hash-put! _tbl7082_ '%#begin-foreign true)
           (hash-put! _tbl7082_ '%#module false)
           (hash-put! _tbl7082_ '%#import false)
           (hash-put! _tbl7082_ '%#export false)
           (hash-put! _tbl7082_ '%#provide false)
           (hash-put! _tbl7082_ '%#extern false)
           (hash-put! _tbl7082_ '%#define-values true)
           (hash-put! _tbl7082_ '%#define-syntax false)
           (hash-put! _tbl7082_ '%#define-alias false)
           (hash-put! _tbl7082_ '%#declare false)
           (hash-put! _tbl7082_ '%#lambda true)
           (hash-put! _tbl7082_ '%#case-lambda true)
           (hash-put! _tbl7082_ '%#let-values true)
           (hash-put! _tbl7082_ '%#letrec-values true)
           (hash-put! _tbl7082_ '%#letrec*-values true)
           (hash-put! _tbl7082_ '%#quote true)
           (hash-put! _tbl7082_ '%#call true)
           (hash-put! _tbl7082_ '%#if true)
           (hash-put! _tbl7082_ '%#ref true)
           (hash-put! _tbl7082_ '%#set! true)
           (hash-put! _tbl7082_ '%#struct-instance? true)
           (hash-put! _tbl7082_ '%#struct-direct-instance? true)
           (hash-put! _tbl7082_ '%#struct-ref true)
           (hash-put! _tbl7082_ '%#struct-set! true)
           _tbl7082_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx7075_ . _args7077_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7075_ _args7077_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl7072_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7072_ '%#begin gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#begin-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#begin-foreign gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#module gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#import gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#export gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#provide gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#extern gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#define-values gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#define-syntax gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#define-alias gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#declare gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#lambda gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#case-lambda gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#let-values gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#letrec-values gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#letrec*-values gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#quote gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#call gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#if gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#ref gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#set! gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#struct-instance? gxc#generate-runtime-empty)
           (hash-put!
            _tbl7072_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#struct-ref gxc#generate-runtime-empty)
           (hash-put! _tbl7072_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl7072_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl7068_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7068_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl7068_ '%#begin gxc#generate-runtime-begin%)
           (hash-put! _tbl7068_ '%#import gxc#generate-runtime-loader-import%)
           _tbl7068_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx7061_ . _args7063_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7061_ _args7063_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl7058_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7058_ (force gxc#&generate-runtime-empty))
           (hash-put! _tbl7058_ '%#begin gxc#generate-runtime-begin%)
           (hash-put!
            _tbl7058_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (hash-put!
            _tbl7058_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (hash-put! _tbl7058_ '%#declare gxc#generate-runtime-declare%)
           (hash-put! _tbl7058_ '%#lambda gxc#generate-runtime-lambda%)
           (hash-put!
            _tbl7058_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (hash-put! _tbl7058_ '%#let-values gxc#generate-runtime-let-values%)
           (hash-put!
            _tbl7058_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (hash-put!
            _tbl7058_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (hash-put! _tbl7058_ '%#quote gxc#generate-runtime-quote%)
           (hash-put! _tbl7058_ '%#call gxc#generate-runtime-call%)
           (hash-put! _tbl7058_ '%#if gxc#generate-runtime-if%)
           (hash-put! _tbl7058_ '%#ref gxc#generate-runtime-ref%)
           (hash-put! _tbl7058_ '%#set! gxc#generate-runtime-setq%)
           (hash-put!
            _tbl7058_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (hash-put!
            _tbl7058_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (hash-put! _tbl7058_ '%#struct-ref gxc#generate-runtime-struct-ref%)
           (hash-put!
            _tbl7058_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl7058_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx7051_ . _args7053_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7051_ _args7053_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl7048_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7048_ (force gxc#&generate-runtime))
           (hash-put!
            _tbl7048_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (hash-put!
            _tbl7048_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl7048_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx7041_ . _args7043_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7041_ _args7043_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl7038_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7038_ '%#begin gxc#collect-begin%)
           (hash-put! _tbl7038_ '%#lambda gxc#collect-refs-lambda%)
           (hash-put! _tbl7038_ '%#case-lambda gxc#collect-refs-case-lambda%)
           (hash-put! _tbl7038_ '%#let-values gxc#collect-refs-let-values%)
           (hash-put! _tbl7038_ '%#letrec-values gxc#collect-refs-let-values%)
           (hash-put! _tbl7038_ '%#letrec*-values gxc#collect-refs-let-values%)
           (hash-put! _tbl7038_ '%#quote void)
           (hash-put! _tbl7038_ '%#quote-syntax void)
           (hash-put! _tbl7038_ '%#call gxc#collect-begin%)
           (hash-put! _tbl7038_ '%#if gxc#collect-begin%)
           (hash-put! _tbl7038_ '%#ref gxc#collect-refs-ref%)
           (hash-put! _tbl7038_ '%#set! gxc#collect-refs-setq%)
           (hash-put!
            _tbl7038_
            '%#struct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put!
            _tbl7038_
            '%#struct-direct-instance?
            gxc#collect-refs-struct-instancep%)
           (hash-put! _tbl7038_ '%#struct-ref gxc#collect-refs-struct-ref%)
           (hash-put! _tbl7038_ '%#struct-set! gxc#collect-refs-struct-setq%)
           _tbl7038_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx7031_ . _args7033_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7031_ _args7033_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl7028_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl7028_ (force gxc#&void-expression))
           (hash-put! _tbl7028_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl7028_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put! _tbl7028_ '%#module gxc#generate-meta-module%)
           (hash-put! _tbl7028_ '%#import gxc#generate-meta-import%)
           (hash-put! _tbl7028_ '%#export gxc#generate-meta-export%)
           (hash-put! _tbl7028_ '%#provide gxc#generate-meta-provide%)
           (hash-put! _tbl7028_ '%#extern gxc#generate-meta-extern%)
           (hash-put!
            _tbl7028_
            '%#define-values
            gxc#generate-meta-define-values%)
           (hash-put!
            _tbl7028_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl7028_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put! _tbl7028_ '%#begin-foreign void)
           (hash-put! _tbl7028_ '%#declare void)
           _tbl7028_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx7021_ . _args7023_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7021_ _args7023_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl7018_ (make-hash-table-eq)))
         (begin
           (hash-put! _tbl7018_ '%#begin gxc#generate-meta-begin%)
           (hash-put!
            _tbl7018_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (hash-put!
            _tbl7018_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (hash-put!
            _tbl7018_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (hash-put!
            _tbl7018_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (hash-put! _tbl7018_ '%#lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#case-lambda gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#let-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#letrec-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#quote gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#call gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#if gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#struct-instance? gxc#generate-meta-phi-expr)
           (hash-put!
            _tbl7018_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#struct-ref gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#struct-set! gxc#generate-meta-phi-expr)
           (hash-put! _tbl7018_ '%#declare void)
           _tbl7018_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx7011_ . _args7013_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx7011_ _args7013_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx6968_ . _args6969_)
      (let ((_g69716981_
             (lambda (_g69726978_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g69726978_))))
        (let ((_g69707008_
               (lambda (_g69726984_)
                 (if (gx#stx-pair? _g69726984_)
                     (let ((_e69746986_ (gx#stx-e _g69726984_)))
                       (let ((_hd69756989_ (##car _e69746986_))
                             (_tl69766991_ (##cdr _e69746986_)))
                         ((lambda (_L6994_)
                            (for-each
                             (lambda (_g70037005_)
                               (apply gxc#compile-e _g70037005_ _args6969_))
                             (gx#stx-e _L6994_)))
                          _tl69766991_)))
                     (_g69716981_ _g69726984_)))))
          (_g69707008_ _stx6968_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx6924_ . _args6925_)
      (let ((_g69276937_
             (lambda (_g69286934_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g69286934_))))
        (let ((_g69266965_
               (lambda (_g69286940_)
                 (if (gx#stx-pair? _g69286940_)
                     (let ((_e69306942_ (gx#stx-e _g69286940_)))
                       (let ((_hd69316945_ (##car _e69306942_))
                             (_tl69326947_ (##cdr _e69306942_)))
                         ((lambda (_L6950_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g69606962_)
                                  (apply gxc#compile-e _g69606962_ _args6925_))
                                (gx#stx-e _L6950_)))
                             gx#current-expander-phi
                             (fx1+ (gx#current-expander-phi))))
                          _tl69326947_)))
                     (_g69276937_ _g69286940_)))))
          (_g69266965_ _stx6924_)))))
  (define gxc#collect-module%
    (lambda (_stx6866_ . _args6867_)
      (let ((_g68696883_
             (lambda (_g68706880_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g68706880_))))
        (let ((_g68686921_
               (lambda (_g68706886_)
                 (if (gx#stx-pair? _g68706886_)
                     (let ((_e68736888_ (gx#stx-e _g68706886_)))
                       (let ((_hd68746891_ (##car _e68736888_))
                             (_tl68756893_ (##cdr _e68736888_)))
                         (if (gx#stx-pair? _tl68756893_)
                             (let ((_e68766896_ (gx#stx-e _tl68756893_)))
                               (let ((_hd68776899_ (##car _e68766896_))
                                     (_tl68786901_ (##cdr _e68766896_)))
                                 ((lambda (_L6904_ _L6905_)
                                    (let ((_ctx6918_
                                           (gx#syntax-local-e__0 _L6905_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx6918_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args6867_))
                                       gx#current-expander-context
                                       _ctx6918_)))
                                  _tl68786901_
                                  _hd68776899_)))
                             (_g68696883_ _g68706886_))))
                     (_g68696883_ _g68706886_)))))
          (_g68686921_ _stx6866_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx6797_)
      (let ((_g67996816_
             (lambda (_g68006813_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g68006813_))))
        (let ((_g67986863_
               (lambda (_g68006819_)
                 (if (gx#stx-pair? _g68006819_)
                     (let ((_e68036821_ (gx#stx-e _g68006819_)))
                       (let ((_hd68046824_ (##car _e68036821_))
                             (_tl68056826_ (##cdr _e68036821_)))
                         (if (gx#stx-pair? _tl68056826_)
                             (let ((_e68066829_ (gx#stx-e _tl68056826_)))
                               (let ((_hd68076832_ (##car _e68066829_))
                                     (_tl68086834_ (##cdr _e68066829_)))
                                 (if (gx#stx-pair? _tl68086834_)
                                     (let ((_e68096837_
                                            (gx#stx-e _tl68086834_)))
                                       (let ((_hd68106840_ (##car _e68096837_))
                                             (_tl68116842_
                                              (##cdr _e68096837_)))
                                         (if (gx#stx-null? _tl68116842_)
                                             ((lambda (_L6845_ _L6846_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind6861_)
                                                   (if (gx#identifier?
                                                        _bind6861_)
                                                       (gxc#add-module-binding!
                                                        _bind6861_
                                                        '#f)
                                                       '#!void))
                                                 _L6846_))
                                              _hd68106840_
                                              _hd68076832_)
                                             (_g67996816_ _g68006819_))))
                                     (_g67996816_ _g68006819_))))
                             (_g67996816_ _g68006819_))))
                     (_g67996816_ _g68006819_)))))
          (_g67986863_ _stx6797_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx6730_)
      (let ((_g67326749_
             (lambda (_g67336746_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g67336746_))))
        (let ((_g67316794_
               (lambda (_g67336752_)
                 (if (gx#stx-pair? _g67336752_)
                     (let ((_e67366754_ (gx#stx-e _g67336752_)))
                       (let ((_hd67376757_ (##car _e67366754_))
                             (_tl67386759_ (##cdr _e67366754_)))
                         (if (gx#stx-pair? _tl67386759_)
                             (let ((_e67396762_ (gx#stx-e _tl67386759_)))
                               (let ((_hd67406765_ (##car _e67396762_))
                                     (_tl67416767_ (##cdr _e67396762_)))
                                 (if (gx#stx-pair? _tl67416767_)
                                     (let ((_e67426770_
                                            (gx#stx-e _tl67416767_)))
                                       (let ((_hd67436773_ (##car _e67426770_))
                                             (_tl67446775_
                                              (##cdr _e67426770_)))
                                         (if (gx#stx-null? _tl67446775_)
                                             ((lambda (_L6778_ _L6779_)
                                                (gxc#add-module-binding!
                                                 _L6779_
                                                 '#t))
                                              _hd67436773_
                                              _hd67406765_)
                                             (_g67326749_ _g67336752_))))
                                     (_g67326749_ _g67336752_))))
                             (_g67326749_ _g67336752_))))
                     (_g67326749_ _g67336752_)))))
          (_g67316794_ _stx6730_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx6672_ _modules6673_)
      (let ((_g66756689_
             (lambda (_g66766686_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g66766686_))))
        (let ((_g66746727_
               (lambda (_g66766692_)
                 (if (gx#stx-pair? _g66766692_)
                     (let ((_e66796694_ (gx#stx-e _g66766692_)))
                       (let ((_hd66806697_ (##car _e66796694_))
                             (_tl66816699_ (##cdr _e66796694_)))
                         (if (gx#stx-pair? _tl66816699_)
                             (let ((_e66826702_ (gx#stx-e _tl66816699_)))
                               (let ((_hd66836705_ (##car _e66826702_))
                                     (_tl66846707_ (##cdr _e66826702_)))
                                 ((lambda (_L6710_ _L6711_)
                                    (let ((_ctx6724_
                                           (gx#syntax-local-e__0 _L6711_)))
                                      (begin
                                        (set-box!
                                         _modules6673_
                                         (cons _ctx6724_
                                               (unbox _modules6673_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx6724_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules6673_))
                                         gx#current-expander-context
                                         _ctx6724_))))
                                  _tl66846707_
                                  _hd66836705_)))
                             (_g66756689_ _g66766692_))))
                     (_g66756689_ _g66766692_)))))
          (_g66746727_ _stx6672_)))))
  (define gxc#add-module-binding!
    (lambda (_id6666_ _syntax?6667_)
      (let ((_eid6669_
             (##structure-ref
              (gx#resolve-identifier__0 _id6666_)
              '1
              gx#binding::t
              '#f))
            (_ht6670_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid6669_)
            '#!void
            (hash-put!
             _ht6670_
             _eid6669_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference _eid6669_)
              _syntax?6667_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id6654_)
      (let ((_bind6656_ (gx#resolve-identifier__0 _id6654_)))
        (if _bind6656_
            (let ((_eid6658_ (##structure-ref _bind6656_ '1 gx#binding::t '#f))
                  (_ht6659_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid6658_)
                  _eid6658_
                  (let ((_$e6661_ (hash-get _ht6659_ _eid6658_)))
                    (if _$e6661_
                        (values _$e6661_)
                        (if (##structure-instance-of?
                             _bind6656_
                             'gx#local-binding::t)
                            (let ((_gid6664_
                                   (gxc#generate-runtime-gensym-reference
                                    _eid6658_)))
                              (begin
                                (hash-put! _ht6659_ _eid6658_ _gid6664_)
                                _gid6664_))
                            (gxc#raise-compile-error
                             '"Cannot compile reference to uninterned binding"
                             _id6654_
                             _eid6658_
                             _bind6656_))))))
            (if (interned-symbol? (gx#stx-e _id6654_))
                (gx#stx-e _id6654_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id6654_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id6652_)
      (if (gx#identifier? _id6652_)
          (gxc#generate-runtime-binding-id _id6652_)
          (gxc#generate-runtime-temporary__0))))
  (define gxc#generate-runtime-gensym-reference
    (lambda (_sym6643_)
      (let ((_ht6645_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '1
              gxc#symbol-table::t
              '#f)))
        (let ((_$e6647_ (hash-get _ht6645_ _sym6643_)))
          (if _$e6647_
              (values _$e6647_)
              (let ((_g6650_ (make-symbol '"_" _sym6643_ '"_")))
                (begin (hash-put! _ht6645_ _sym6643_ _g6650_) _g6650_)))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id6641_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id6641_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key6603_)
      (if (interned-symbol? _key6603_)
          _key6603_
          (if (uninterned-symbol? _key6603_)
              (gxc#generate-runtime-gensym-reference _key6603_)
              (let ((_key66046611_ _key6603_))
                (let ((_E66066615_
                       (lambda ()
                         (error '"No clause matching" _key66046611_))))
                  (let ((_K66076629_
                         (lambda (_mark6618_ _eid6619_)
                           (let ((_$e6621_
                                  (##structure-ref
                                   _mark6618_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e6621_
                                 ((lambda (_ht6624_)
                                    (let ((_$e6626_
                                           (hash-get _ht6624_ _eid6619_)))
                                      (if _$e6626_
                                          (values _$e6626_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid6619_))))
                                  _$e6621_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid6619_))))))
                    (if (##pair? _key66046611_)
                        (let ((_hd66086632_ (##car _key66046611_))
                              (_tl66096634_ (##cdr _key66046611_)))
                          (let ((_eid6637_ _hd66086632_))
                            (let ((_mark6639_ _tl66096634_))
                              (_K66076629_ _mark6639_ _eid6637_))))
                        (_E66066615_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda6588
      (lambda (_top6590_)
        (if _top6590_
            (let ((_ns6592_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi6593_ (gx#current-expander-phi)))
              (if (fxpositive? _phi6593_)
                  (make-symbol
                   _ns6592_
                   '"["
                   (number->string _phi6593_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns6592_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top6599_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda6588 _top6599_))))
      (define gxc#generate-runtime-temporary
        (lambda _g7161_
          (let ((_g7160_ (length _g7161_)))
            (cond ((fx= _g7160_ 0)
                   (apply (lambda () (gxc#generate-runtime-temporary__0))
                          _g7161_))
                  ((fx= _g7160_ 1)
                   (apply (lambda (_top6601_)
                            (gxc#generate-runtime-temporary__opt-lambda6588
                             _top6601_))
                          _g7161_))
                  (else (error "No clause matching arguments" _g7161_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx6587_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx6507_)
      (let ((_g65096519_
             (lambda (_g65106516_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g65106516_))))
        (let ((_g65086584_
               (lambda (_g65106522_)
                 (if (gx#stx-pair? _g65106522_)
                     (let ((_e65126524_ (gx#stx-e _g65106522_)))
                       (let ((_hd65136527_ (##car _e65126524_))
                             (_tl65146529_ (##cdr _e65126524_)))
                         ((lambda (_L6532_)
                            (let ((_body6542_
                                   (gx#stx-map1 gxc#compile-e _L6532_)))
                              (let ((_body6581_
                                     (filter (lambda (_stx6544_)
                                               (let ((_g65476556_
                                                      (lambda (_g65486553_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g65486553_))))
                                                 (let ((_g65466563_
                                                        (lambda (_g65486559_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g65456578_
                                                          (lambda (_g65486566_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g65486566_)
                        (let ((_e65496568_ (gx#stx-e _g65486566_)))
                          (let ((_hd65506571_ (##car _e65496568_))
                                (_tl65516573_ (##cdr _e65496568_)))
                            (if (gx#identifier? _hd65506571_)
                                (if (gx#stx-eq? 'begin _hd65506571_)
                                    (if (gx#stx-null? _tl65516573_)
                                        ((lambda () '#f))
                                        (_g65466563_ _g65486566_))
                                    (_g65466563_ _g65486566_))
                                (_g65466563_ _g65486566_))))
                        (_g65466563_ _g65486566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65456578_
                                                      _stx6544_)))))
                                             _body6542_)))
                                (let ()
                                  (if (fx= (length _body6581_) '1)
                                      (car _body6581_)
                                      (cons 'begin _body6581_))))))
                          _tl65146529_)))
                     (_g65096519_ _g65106522_)))))
          (_g65086584_ _stx6507_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx6469_)
      (let ((_g64716481_
             (lambda (_g64726478_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64726478_))))
        (let ((_g64706504_
               (lambda (_g64726484_)
                 (if (gx#stx-pair? _g64726484_)
                     (let ((_e64746486_ (gx#stx-e _g64726484_)))
                       (let ((_hd64756489_ (##car _e64746486_))
                             (_tl64766491_ (##cdr _e64746486_)))
                         ((lambda (_L6494_)
                            (cons 'begin (gx#syntax->datum _L6494_)))
                          _tl64766491_)))
                     (_g64716481_ _g64726484_)))))
          (_g64706504_ _stx6469_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx6431_)
      (let ((_g64336443_
             (lambda (_g64346440_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64346440_))))
        (let ((_g64326466_
               (lambda (_g64346446_)
                 (if (gx#stx-pair? _g64346446_)
                     (let ((_e64366448_ (gx#stx-e _g64346446_)))
                       (let ((_hd64376451_ (##car _e64366448_))
                             (_tl64386453_ (##cdr _e64366448_)))
                         ((lambda (_L6456_)
                            (cons 'declare (map gx#syntax->datum _L6456_)))
                          _tl64386453_)))
                     (_g64336443_ _g64346446_)))))
          (_g64326466_ _stx6431_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx6195_)
      (let ((_g61976214_
             (lambda (_g61986211_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g61986211_))))
        (let ((_g61966428_
               (lambda (_g61986217_)
                 (if (gx#stx-pair? _g61986217_)
                     (let ((_e62016219_ (gx#stx-e _g61986217_)))
                       (let ((_hd62026222_ (##car _e62016219_))
                             (_tl62036224_ (##cdr _e62016219_)))
                         (if (gx#stx-pair? _tl62036224_)
                             (let ((_e62046227_ (gx#stx-e _tl62036224_)))
                               (let ((_hd62056230_ (##car _e62046227_))
                                     (_tl62066232_ (##cdr _e62046227_)))
                                 (if (gx#stx-pair? _tl62066232_)
                                     (let ((_e62076235_
                                            (gx#stx-e _tl62066232_)))
                                       (let ((_hd62086238_ (##car _e62076235_))
                                             (_tl62096240_
                                              (##cdr _e62076235_)))
                                         (if (gx#stx-null? _tl62096240_)
                                             ((lambda (_L6243_ _L6244_)
                                                (let ((_g62616274_
                                                       (lambda (_g62626271_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g62626271_))))
                                                  (let ((_g62606388_
                                                         (lambda (_g62626277_)
                                                           ((lambda ()
                                                              (let ((_tmp6281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda6588
                              '#t)))
                        (let ((_body6385_
                               ((letrec ((_lp6283_
                                          (lambda (_rest6285_ _k6286_ _r6287_)
                                            (let ((_g62926308_
                                                   (lambda (_g62936305_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g62936305_))))
                                              (let ((_g62916315_
                                                     (lambda (_g62936311_)
                                                       ((lambda ()
                                                          (reverse _r6287_))))))
                                                (let ((_g62906336_
                                                       (lambda (_g62936318_)
                                                         ((lambda (_L6320_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6320_)
                        (foldl cons
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L6320_)
                                                 (cons (cons 'values->list
                                                             (cons _tmp6281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k6286_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())
                               _r6287_)
                        (_g62916315_ _g62936318_)))
                  _g62936318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g62896360_
                                                         (lambda (_g62936339_)
                                                           (if (gx#stx-pair?
                                                                _g62936339_)
                                                               (let ((_e63006341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g62936339_)))
                         (let ((_hd63016344_ (##car _e63006341_))
                               (_tl63026346_ (##cdr _e63006341_)))
                           ((lambda (_L6349_ _L6350_)
                              (_lp6283_
                               _L6349_
                               (fx1+ _k6286_)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L6350_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp6281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k6286_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r6287_)))
                            _tl63026346_
                            _hd63016344_)))
                       (_g62906336_ _g62936339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g62886382_
                                                           (lambda (_g62936363_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g62936363_)
                         (let ((_e62956365_ (gx#stx-e _g62936363_)))
                           (let ((_hd62966368_ (##car _e62956365_))
                                 (_tl62976370_ (##cdr _e62956365_)))
                             (if (gx#stx-datum? _hd62966368_)
                                 (if (equal? (gx#stx-e _hd62966368_) '#f)
                                     ((lambda (_L6373_)
                                        (_lp6283_
                                         _L6373_
                                         (fx1+ _k6286_)
                                         _r6287_))
                                      _tl62976370_)
                                     (_g62896360_ _g62936363_))
                                 (_g62896360_ _g62936363_))))
                         (_g62896360_ _g62936363_)))))
              (_g62886382_ _rest6285_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6283_)
                                _L6244_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp6281_
                                                    (cons (gxc#compile-e
                                                           _L6243_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp6281_
                                               _L6244_)
                                              _body6385_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g62596410_
                                                           (lambda (_g62626391_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g62626391_)
                         (let ((_e62676393_ (gx#stx-e _g62626391_)))
                           (let ((_hd62686396_ (##car _e62676393_))
                                 (_tl62696398_ (##cdr _e62676393_)))
                             (if (gx#stx-null? _tl62696398_)
                                 ((lambda (_L6401_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L6401_)
                                                (cons (gxc#compile-e _L6243_)
                                                      '()))))
                                  _hd62686396_)
                                 (_g62606388_ _g62626391_))))
                         (_g62606388_ _g62626391_)))))
              (let ((_g62586425_
                     (lambda (_g62626413_)
                       (if (gx#stx-pair? _g62626413_)
                           (let ((_e62636415_ (gx#stx-e _g62626413_)))
                             (let ((_hd62646418_ (##car _e62636415_))
                                   (_tl62656420_ (##cdr _e62636415_)))
                               (if (gx#stx-datum? _hd62646418_)
                                   (if (equal? (gx#stx-e _hd62646418_) '#f)
                                       (if (gx#stx-null? _tl62656420_)
                                           ((lambda ()
                                              (gxc#compile-e _L6243_)))
                                           (_g62596410_ _g62626413_))
                                       (_g62596410_ _g62626413_))
                                   (_g62596410_ _g62626413_))))
                           (_g62596410_ _g62626413_)))))
                (_g62586425_ _L6244_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd62086238_
                                              _hd62056230_)
                                             (_g61976214_ _g61986217_))))
                                     (_g61976214_ _g61986217_))))
                             (_g61976214_ _g61986217_))))
                     (_g61976214_ _g61986217_)))))
          (_g61966428_ _stx6195_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals6183_ _hd6184_)
      (let ((_len6186_ (gx#stx-length _hd6184_)))
        (let ((_cmp6188_ (if (gx#stx-list? _hd6184_) 'fx= 'fx>=)))
          (let ((_errmsg6190_
                 (string-append
                  (if (gx#stx-list? _hd6184_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len6186_)
                  '" values")))
            (let ((_count6192_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd6184_)) (fx= _len6186_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count6192_
                                            (cons (cons 'values-count
                                                        (cons _vals6183_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp6188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count6192_ (cons _len6186_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg6190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count6192_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx6116_)
      (let ((_g61186135_
             (lambda (_g61196132_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g61196132_))))
        (let ((_g61176180_
               (lambda (_g61196138_)
                 (if (gx#stx-pair? _g61196138_)
                     (let ((_e61226140_ (gx#stx-e _g61196138_)))
                       (let ((_hd61236143_ (##car _e61226140_))
                             (_tl61246145_ (##cdr _e61226140_)))
                         (if (gx#stx-pair? _tl61246145_)
                             (let ((_e61256148_ (gx#stx-e _tl61246145_)))
                               (let ((_hd61266151_ (##car _e61256148_))
                                     (_tl61276153_ (##cdr _e61256148_)))
                                 (if (gx#stx-pair? _tl61276153_)
                                     (let ((_e61286156_
                                            (gx#stx-e _tl61276153_)))
                                       (let ((_hd61296159_ (##car _e61286156_))
                                             (_tl61306161_
                                              (##cdr _e61286156_)))
                                         (if (gx#stx-null? _tl61306161_)
                                             ((lambda (_L6164_ _L6165_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L6165_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6164_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd61296159_
                                              _hd61266151_)
                                             (_g61186135_ _g61196138_))))
                                     (_g61186135_ _g61196138_))))
                             (_g61186135_ _g61196138_))))
                     (_g61186135_ _g61196138_)))))
          (_g61176180_ _stx6116_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd6114_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd6114_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx5971_)
      (let ((_generate15973_
             (lambda (_args6104_ _arglen6105_ _hd6106_ _body6107_)
               (let ((_len6109_ (gx#stx-length _hd6106_)))
                 (let ((_condition6111_
                        (if (gx#stx-list? _hd6106_)
                            (cons 'fx=
                                  (cons _arglen6105_ (cons _len6109_ '())))
                            (if (> _len6109_ '0)
                                (cons 'fx>=
                                      (cons _arglen6105_ (cons _len6109_ '())))
                                '#t))))
                   (let ()
                     (cons _condition6111_
                           (cons (cons 'apply
                                       (cons (cons 'lambda
                                                   (cons (gxc#generate-runtime-lambda-head
                                                          _hd6106_)
                                                         (cons (gxc#compile-e
                                                                _body6107_)
                                                               '())))
                                             (cons _args6104_ '())))
                                 '()))))))))
        (let ((_g59756003_
               (lambda (_g59766000_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g59766000_))))
          (let ((_g59746101_
                 (lambda (_g59766006_)
                   (if (gx#stx-pair? _g59766006_)
                       (let ((_e59796008_ (gx#stx-e _g59766006_)))
                         (let ((_hd59806011_ (##car _e59796008_))
                               (_tl59816013_ (##cdr _e59796008_)))
                           (if (gx#stx-pair/null? _tl59816013_)
                               (if (fx>= (gx#stx-length _tl59816013_) '0)
                                   (let ((_g7162_ (gx#syntax-split-splice
                                                   _tl59816013_
                                                   '0)))
                                     (begin
                                       (let ((_g7163_ (values-count _g7162_)))
                                         (if (not (fx= _g7163_ 2))
                                             (error "Context expects 2 values"
                                                    _g7163_)))
                                       (let ((_target59826016_
                                              (values-ref _g7162_ 0))
                                             (_tl59846018_
                                              (values-ref _g7162_ 1)))
                                         (if (gx#stx-null? _tl59846018_)
                                             (letrec ((_loop59856021_
                                                       (lambda (_hd59836024_
                                                                _body59896026_
                                                                _hd59906028_)
                                                         (if (gx#stx-pair?
                                                              _hd59836024_)
                                                             (let ((_e59866031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd59836024_)))
                       (let ((_lp-hd59876034_ (##car _e59866031_))
                             (_lp-tl59886036_ (##cdr _e59866031_)))
                         (if (gx#stx-pair? _lp-hd59876034_)
                             (let ((_e59936039_ (gx#stx-e _lp-hd59876034_)))
                               (let ((_hd59946042_ (##car _e59936039_))
                                     (_tl59956044_ (##cdr _e59936039_)))
                                 (if (gx#stx-pair? _tl59956044_)
                                     (let ((_e59966047_
                                            (gx#stx-e _tl59956044_)))
                                       (let ((_hd59976050_ (##car _e59966047_))
                                             (_tl59986052_
                                              (##cdr _e59966047_)))
                                         (if (gx#stx-null? _tl59986052_)
                                             (_loop59856021_
                                              _lp-tl59886036_
                                              (cons _hd59976050_
                                                    _body59896026_)
                                              (cons _hd59946042_ _hd59906028_))
                                             (_g59756003_ _g59766006_))))
                                     (_g59756003_ _g59766006_))))
                             (_g59756003_ _g59766006_))))
                     (let ((_body59916055_ (reverse _body59896026_))
                           (_hd59926057_ (reverse _hd59906028_)))
                       ((lambda (_L6060_ _L6061_)
                          (let ((_args6077_
                                 (gxc#generate-runtime-temporary__0))
                                (_arglen6078_
                                 (gxc#generate-runtime-temporary__0)))
                            (cons 'lambda
                                  (cons _args6077_
                                        (cons (cons 'let
                                                    (cons (cons (cons _arglen6078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'length (cons _args6077_ '())) '()))
                        '())
                  (cons (cons 'cond
                              (foldr cons
                                     (cons (cons 'else
                                                 (cons (cons 'error
                                                             (cons '"No clause matching arguments"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args6077_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g60796082_ _g60806084_)
                                            (_generate15973_
                                             _args6077_
                                             _arglen6078_
                                             _g60796082_
                                             _g60806084_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g60866089_
                                                            _g60876091_)
                                                     (cons _g60866089_
                                                           _g60876091_))
                                                   '()
                                                   _L6061_))
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g60936096_
                                                            _g60946098_)
                                                     (cons _g60936096_
                                                           _g60946098_))
                                                   '()
                                                   _L6060_)))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _body59916055_
                        _hd59926057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop59856021_
                                                _target59826016_
                                                '()
                                                '()))
                                             (_g59756003_ _g59766006_)))))
                                   (_g59756003_ _g59766006_))
                               (_g59756003_ _g59766006_))))
                       (_g59756003_ _g59766006_)))))
            (_g59746101_ _stx5971_))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda5651
      (lambda (_stx5653_ _compiled-body?5654_)
        (let ((_generate-simple5656_
               (lambda (_hd5958_ _body5959_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd5958_
                  _body5959_
                  _compiled-body?5654_))))
          (let ((_generate-values-post5658_
                 (lambda (_post5730_ _body5731_)
                   ((letrec ((_lp5733_
                              (lambda (_rest5735_ _body5736_)
                                (let ((_rest57375745_ _rest5735_))
                                  (let ((_E57405749_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest57375745_))))
                                    (let ((_else57395753_
                                           (lambda () _body5736_)))
                                      (let ((_K57415759_
                                             (lambda (_rest5756_ _bind5757_)
                                               (_lp5733_
                                                _rest5756_
                                                (cons 'let
                                                      (cons _bind5757_
                                                            (cons _body5736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest57375745_)
                                            (let ((_hd57425762_
                                                   (##car _rest57375745_))
                                                  (_tl57435764_
                                                   (##cdr _rest57375745_)))
                                              (let ((_bind5767_ _hd57425762_))
                                                (let ((_rest5769_
                                                       _tl57435764_))
                                                  (_K57415759_
                                                   _rest5769_
                                                   _bind5767_))))
                                            (_else57395753_)))))))))
                      _lp5733_)
                    _post5730_
                    _body5731_))))
            (let ((_generate-values-check5659_
                   (lambda (_check5727_ _body5728_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body5728_ '())
                                  (reverse _check5727_))))))
              (let ((_generate-values5657_
                     (lambda (_hd5771_ _body5772_)
                       ((letrec ((_lp5774_
                                  (lambda (_rest5776_
                                           _bind5777_
                                           _check5778_
                                           _post5779_)
                                    (let ((_g57825793_
                                           (lambda (_g57835790_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g57835790_))))
                                      (let ((_g57815807_
                                             (lambda (_g57835796_)
                                               ((lambda ()
                                                  (let ((_body5800_
                                                         (if _compiled-body?5654_
                                                             _body5772_
                                                             (gxc#compile-e
                                                              _body5772_))))
                                                    (let ((_body5802_
                                                           (_generate-values-post5658_
                                                            _post5779_
                                                            _body5800_)))
                                                      (let ((_body5804_
                                                             (_generate-values-check5659_
                                                              _check5778_
                                                              _body5802_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind5777_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body5804_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g57805955_
                                               (lambda (_g57835810_)
                                                 (if (gx#stx-pair? _g57835810_)
                                                     (let ((_e57865812_
                                                            (gx#stx-e
                                                             _g57835810_)))
                                                       (let ((_hd57875815_
                                                              (##car _e57865812_))
                                                             (_tl57885817_
                                                              (##cdr _e57865812_)))
                                                         ((lambda (_L5820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5821_)
                    (let ((_g58365861_
                           (lambda (_g58375858_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g58375858_))))
                      (let ((_g58355905_
                             (lambda (_g58375864_)
                               (if (gx#stx-pair? _g58375864_)
                                   (let ((_e58515866_ (gx#stx-e _g58375864_)))
                                     (let ((_hd58525869_ (##car _e58515866_))
                                           (_tl58535871_ (##cdr _e58515866_)))
                                       (if (gx#stx-pair? _tl58535871_)
                                           (let ((_e58545874_
                                                  (gx#stx-e _tl58535871_)))
                                             (let ((_hd58555877_
                                                    (##car _e58545874_))
                                                   (_tl58565879_
                                                    (##cdr _e58545874_)))
                                               (if (gx#stx-null? _tl58565879_)
                                                   ((lambda (_L5882_ _L5883_)
                                                      (let ((_vals5896_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr5898_
                                                               (gxc#compile-e
                                                                _L5882_)))
                                                          (let ((_check-values5900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals5896_
                          _L5883_)))
                    (let ((_refs5902_
                           (gxc#generate-runtime-let-values-bind
                            _vals5896_
                            _L5883_)))
                      (let ()
                        (_lp5774_
                         _L5820_
                         (cons (cons _vals5896_ (cons _expr5898_ '()))
                               _bind5777_)
                         (cons _check-values5900_ _check5778_)
                         (cons _refs5902_ _post5779_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd58555877_
                                                    _hd58525869_)
                                                   (_g58365861_ _g58375864_))))
                                           (_g58365861_ _g58375864_))))
                                   (_g58365861_ _g58375864_)))))
                        (let ((_g58345952_
                               (lambda (_g58375908_)
                                 (if (gx#stx-pair? _g58375908_)
                                     (let ((_e58405910_
                                            (gx#stx-e _g58375908_)))
                                       (let ((_hd58415913_ (##car _e58405910_))
                                             (_tl58425915_
                                              (##cdr _e58405910_)))
                                         (if (gx#stx-pair? _hd58415913_)
                                             (let ((_e58435918_
                                                    (gx#stx-e _hd58415913_)))
                                               (let ((_hd58445921_
                                                      (##car _e58435918_))
                                                     (_tl58455923_
                                                      (##cdr _e58435918_)))
                                                 (if (gx#stx-null?
                                                      _tl58455923_)
                                                     (if (gx#stx-pair?
                                                          _tl58425915_)
                                                         (let ((_e58465926_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl58425915_)))
                   (let ((_hd58475929_ (##car _e58465926_))
                         (_tl58485931_ (##cdr _e58465926_)))
                     (if (gx#stx-null? _tl58485931_)
                         ((lambda (_L5934_ _L5935_)
                            (let ((_eid5949_
                                   (gxc#generate-runtime-binding-id* _L5935_))
                                  (_expr5950_ (gxc#compile-e _L5934_)))
                              (_lp5774_
                               _L5820_
                               (cons (cons _eid5949_ (cons _expr5950_ '()))
                                     _bind5777_)
                               _check5778_
                               _post5779_)))
                          _hd58475929_
                          _hd58445921_)
                         (_g58355905_ _g58375908_))))
                 (_g58355905_ _g58375908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g58355905_
                                                      _g58375908_))))
                                             (_g58355905_ _g58375908_))))
                                     (_g58355905_ _g58375908_)))))
                          (_g58345952_ _L5821_)))))
                  _tl57885817_
                  _hd57875815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57815807_
                                                      _g57835810_)))))
                                          (_g57805955_ _rest5776_)))))))
                          _lp5774_)
                        _hd5771_
                        '()
                        '()
                        '()))))
                (let ((_g56615678_
                       (lambda (_g56625675_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g56625675_))))
                  (let ((_g56605724_
                         (lambda (_g56625681_)
                           (if (gx#stx-pair? _g56625681_)
                               (let ((_e56655683_ (gx#stx-e _g56625681_)))
                                 (let ((_hd56665686_ (##car _e56655683_))
                                       (_tl56675688_ (##cdr _e56655683_)))
                                   (if (gx#stx-pair? _tl56675688_)
                                       (let ((_e56685691_
                                              (gx#stx-e _tl56675688_)))
                                         (let ((_hd56695694_
                                                (##car _e56685691_))
                                               (_tl56705696_
                                                (##cdr _e56685691_)))
                                           (if (gx#stx-pair? _tl56705696_)
                                               (let ((_e56715699_
                                                      (gx#stx-e _tl56705696_)))
                                                 (let ((_hd56725702_
                                                        (##car _e56715699_))
                                                       (_tl56735704_
                                                        (##cdr _e56715699_)))
                                                   (if (gx#stx-null?
                                                        _tl56735704_)
                                                       ((lambda (_L5707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5708_)
                  (if (gxc#generate-runtime-simple-let? _L5708_)
                      (_generate-simple5656_ _L5708_ _L5707_)
                      (_generate-values5657_ _L5708_ _L5707_)))
                _hd56725702_
                _hd56695694_)
               (_g56615678_ _g56625681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g56615678_ _g56625681_))))
                                       (_g56615678_ _g56625681_))))
                               (_g56615678_ _g56625681_)))))
                    (_g56605724_ _stx5653_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx5964_)
          (let ((_compiled-body?5966_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda5651
             _stx5964_
             _compiled-body?5966_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g7165_
          (let ((_g7164_ (length _g7165_)))
            (cond ((fx= _g7164_ 1)
                   (apply (lambda (_stx5964_)
                            (gxc#generate-runtime-let-values%__0 _stx5964_))
                          _g7165_))
                  ((fx= _g7164_ 2)
                   (apply (lambda (_stx5968_ _compiled-body?5969_)
                            (gxc#generate-runtime-let-values%__opt-lambda5651
                             _stx5968_
                             _compiled-body?5969_))
                          _g7165_))
                  (else (error "No clause matching arguments" _g7165_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals5552_ _hd5553_)
      ((letrec ((_lp5555_
                 (lambda (_rest5557_ _k5558_ _r5559_)
                   (let ((_g55645580_
                          (lambda (_g55655577_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g55655577_))))
                     (let ((_g55635587_
                            (lambda (_g55655583_)
                              ((lambda () (reverse _r5559_))))))
                       (let ((_g55625603_
                              (lambda (_g55655590_)
                                ((lambda (_L5592_)
                                   (if (gx#identifier? _L5592_)
                                       (foldl cons
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5592_)
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5552_ (cons _k5558_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              _r5559_)
                                       (_g55635587_ _g55655590_)))
                                 _g55655590_))))
                         (let ((_g55615627_
                                (lambda (_g55655606_)
                                  (if (gx#stx-pair? _g55655606_)
                                      (let ((_e55725608_
                                             (gx#stx-e _g55655606_)))
                                        (let ((_hd55735611_
                                               (##car _e55725608_))
                                              (_tl55745613_
                                               (##cdr _e55725608_)))
                                          ((lambda (_L5616_ _L5617_)
                                             (_lp5555_
                                              _L5616_
                                              (fx1+ _k5558_)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5617_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5552_ (cons _k5558_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r5559_)))
                                           _tl55745613_
                                           _hd55735611_)))
                                      (_g55625603_ _g55655606_)))))
                           (let ((_g55605649_
                                  (lambda (_g55655630_)
                                    (if (gx#stx-pair? _g55655630_)
                                        (let ((_e55675632_
                                               (gx#stx-e _g55655630_)))
                                          (let ((_hd55685635_
                                                 (##car _e55675632_))
                                                (_tl55695637_
                                                 (##cdr _e55675632_)))
                                            (if (gx#stx-datum? _hd55685635_)
                                                (if (equal? (gx#stx-e
                                                             _hd55685635_)
                                                            '#f)
                                                    ((lambda (_L5640_)
                                                       (_lp5555_
                                                        _L5640_
                                                        (fx1+ _k5558_)
                                                        _r5559_))
                                                     _tl55695637_)
                                                    (_g55615627_ _g55655630_))
                                                (_g55615627_ _g55655630_))))
                                        (_g55615627_ _g55655630_)))))
                             (_g55605649_ _rest5557_)))))))))
         _lp5555_)
       _hd5553_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda5230
      (lambda (_stx5232_ _compiled-body?5233_)
        (let ((_generate-simple5235_
               (lambda (_hd5539_ _body5540_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd5539_
                  _body5540_
                  _compiled-body?5233_))))
          (let ((_generate-values-check5237_
                 (lambda (_check5313_ _body5314_)
                   (cons 'begin
                         (foldr cons
                                (cons _body5314_ '())
                                (reverse _check5313_))))))
            (let ((_generate-values-post5238_
                   (lambda (_post5306_ _body5307_)
                     (cons 'begin
                           (foldr cons
                                  (cons _body5307_ '())
                                  (map (lambda (_g53085310_)
                                         (cons 'set! _g53085310_))
                                       (reverse _post5306_)))))))
              (let ((_generate-values5236_
                     (lambda (_hd5316_ _body5317_)
                       ((letrec ((_lp5319_
                                  (lambda (_rest5321_
                                           _bind5322_
                                           _check5323_
                                           _post5324_)
                                    (let ((_g53275338_
                                           (lambda (_g53285335_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g53285335_))))
                                      (let ((_g53265352_
                                             (lambda (_g53285341_)
                                               ((lambda ()
                                                  (let ((_body5345_
                                                         (if _compiled-body?5233_
                                                             _body5317_
                                                             (gxc#compile-e
                                                              _body5317_))))
                                                    (let ((_body5347_
                                                           (_generate-values-post5238_
                                                            _post5324_
                                                            _body5345_)))
                                                      (let ((_body5349_
                                                             (_generate-values-check5237_
                                                              _check5323_
                                                              _body5347_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind5322_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body5349_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g53255536_
                                               (lambda (_g53285355_)
                                                 (if (gx#stx-pair? _g53285355_)
                                                     (let ((_e53315357_
                                                            (gx#stx-e
                                                             _g53285355_)))
                                                       (let ((_hd53325360_
                                                              (##car _e53315357_))
                                                             (_tl53335362_
                                                              (##cdr _e53315357_)))
                                                         ((lambda (_L5365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5366_)
                    (let ((_g53815406_
                           (lambda (_g53825403_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g53825403_))))
                      (let ((_g53805486_
                             (lambda (_g53825409_)
                               (if (gx#stx-pair? _g53825409_)
                                   (let ((_e53965411_ (gx#stx-e _g53825409_)))
                                     (let ((_hd53975414_ (##car _e53965411_))
                                           (_tl53985416_ (##cdr _e53965411_)))
                                       (if (gx#stx-pair? _tl53985416_)
                                           (let ((_e53995419_
                                                  (gx#stx-e _tl53985416_)))
                                             (let ((_hd54005422_
                                                    (##car _e53995419_))
                                                   (_tl54015424_
                                                    (##cdr _e53995419_)))
                                               (if (gx#stx-null? _tl54015424_)
                                                   ((lambda (_L5427_ _L5428_)
                                                      (let ((_vals5441_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr5443_
                                                               (gxc#compile-e
                                                                _L5427_)))
                                                          (let ((_check-values5445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals5441_
                          _L5428_)))
                    (let ((_refs5447_
                           (gxc#generate-runtime-let-values-bind
                            _vals5441_
                            _L5428_)))
                      (let ()
                        (_lp5319_
                         _L5365_
                         (foldl cons
                                (cons (cons _vals5441_ (cons _expr5443_ '()))
                                      _bind5322_)
                                (map (lambda (_e54495451_)
                                       (let ((_g54535462_ _e54495451_))
                                         (let ((_E54555466_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _g54535462_))))
                                           (let ((_K54565471_
                                                  (lambda (_eid5469_)
                                                    (cons _eid5469_
                                                          (cons '#!void
                                                                '())))))
                                             (if (##pair? _g54535462_)
                                                 (let ((_hd54575474_
                                                        (##car _g54535462_))
                                                       (_tl54585476_
                                                        (##cdr _g54535462_)))
                                                   (let ((_eid5479_
                                                          _hd54575474_))
                                                     (if (##pair? _tl54585476_)
                                                         (let ((_hd54595481_
                                                                (##car _tl54585476_))
                                                               (_tl54605483_
                                                                (##cdr _tl54585476_)))
                                                           (if (##null? _tl54605483_)
                                                               (_K54565471_
                                                                _eid5479_)
                                                               (_E54555466_)))
                                                         (_E54555466_))))
                                                 (_E54555466_))))))
                                     _refs5447_))
                         (cons _check-values5445_ _check5323_)
                         (foldl cons _refs5447_ _post5324_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd54005422_
                                                    _hd53975414_)
                                                   (_g53815406_ _g53825409_))))
                                           (_g53815406_ _g53825409_))))
                                   (_g53815406_ _g53825409_)))))
                        (let ((_g53795533_
                               (lambda (_g53825489_)
                                 (if (gx#stx-pair? _g53825489_)
                                     (let ((_e53855491_
                                            (gx#stx-e _g53825489_)))
                                       (let ((_hd53865494_ (##car _e53855491_))
                                             (_tl53875496_
                                              (##cdr _e53855491_)))
                                         (if (gx#stx-pair? _hd53865494_)
                                             (let ((_e53885499_
                                                    (gx#stx-e _hd53865494_)))
                                               (let ((_hd53895502_
                                                      (##car _e53885499_))
                                                     (_tl53905504_
                                                      (##cdr _e53885499_)))
                                                 (if (gx#stx-null?
                                                      _tl53905504_)
                                                     (if (gx#stx-pair?
                                                          _tl53875496_)
                                                         (let ((_e53915507_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl53875496_)))
                   (let ((_hd53925510_ (##car _e53915507_))
                         (_tl53935512_ (##cdr _e53915507_)))
                     (if (gx#stx-null? _tl53935512_)
                         ((lambda (_L5515_ _L5516_)
                            (let ((_eid5530_
                                   (gxc#generate-runtime-binding-id* _L5516_))
                                  (_expr5531_ (gxc#compile-e _L5515_)))
                              (_lp5319_
                               _L5365_
                               (cons (cons _eid5530_ (cons _expr5531_ '()))
                                     _bind5322_)
                               _check5323_
                               _post5324_)))
                          _hd53925510_
                          _hd53895502_)
                         (_g53805486_ _g53825489_))))
                 (_g53805486_ _g53825489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g53805486_
                                                      _g53825489_))))
                                             (_g53805486_ _g53825489_))))
                                     (_g53805486_ _g53825489_)))))
                          (_g53795533_ _L5366_)))))
                  _tl53335362_
                  _hd53325360_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g53265352_
                                                      _g53285355_)))))
                                          (_g53255536_ _rest5321_)))))))
                          _lp5319_)
                        _hd5316_
                        '()
                        '()
                        '()))))
                (let ((_g52405257_
                       (lambda (_g52415254_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g52415254_))))
                  (let ((_g52395303_
                         (lambda (_g52415260_)
                           (if (gx#stx-pair? _g52415260_)
                               (let ((_e52445262_ (gx#stx-e _g52415260_)))
                                 (let ((_hd52455265_ (##car _e52445262_))
                                       (_tl52465267_ (##cdr _e52445262_)))
                                   (if (gx#stx-pair? _tl52465267_)
                                       (let ((_e52475270_
                                              (gx#stx-e _tl52465267_)))
                                         (let ((_hd52485273_
                                                (##car _e52475270_))
                                               (_tl52495275_
                                                (##cdr _e52475270_)))
                                           (if (gx#stx-pair? _tl52495275_)
                                               (let ((_e52505278_
                                                      (gx#stx-e _tl52495275_)))
                                                 (let ((_hd52515281_
                                                        (##car _e52505278_))
                                                       (_tl52525283_
                                                        (##cdr _e52505278_)))
                                                   (if (gx#stx-null?
                                                        _tl52525283_)
                                                       ((lambda (_L5286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5287_)
                  (if (gxc#generate-runtime-simple-let? _L5287_)
                      (_generate-simple5235_ _L5287_ _L5286_)
                      (_generate-values5236_ _L5287_ _L5286_)))
                _hd52515281_
                _hd52485273_)
               (_g52405257_ _g52415260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g52405257_ _g52415260_))))
                                       (_g52405257_ _g52415260_))))
                               (_g52405257_ _g52415260_)))))
                    (_g52395303_ _stx5232_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx5545_)
          (let ((_compiled-body?5547_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda5230
             _stx5545_
             _compiled-body?5547_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g7167_
          (let ((_g7166_ (length _g7167_)))
            (cond ((fx= _g7166_ 1)
                   (apply (lambda (_stx5545_)
                            (gxc#generate-runtime-letrec-values%__0 _stx5545_))
                          _g7167_))
                  ((fx= _g7166_ 2)
                   (apply (lambda (_stx5549_ _compiled-body?5550_)
                            (gxc#generate-runtime-letrec-values%__opt-lambda5230
                             _stx5549_
                             _compiled-body?5550_))
                          _g7167_))
                  (else (error "No clause matching arguments" _g7167_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx4351_)
      (let ((_collect-closures4354_
             (lambda (_forms5172_)
               (map (lambda (_e51735175_)
                      (let ((_g51775186_ _e51735175_))
                        (let ((_E51795190_
                               (lambda ()
                                 (error '"No clause matching" _g51775186_))))
                          (let ((_K51805195_
                                 (lambda (_expr5193_)
                                   (gxc#collect-expression-refs _expr5193_))))
                            (if (##pair? _g51775186_)
                                (let ((_hd51815198_ (##car _g51775186_))
                                      (_tl51825200_ (##cdr _g51775186_)))
                                  (if (##pair? _tl51825200_)
                                      (let ((_hd51835203_ (##car _tl51825200_))
                                            (_tl51845205_
                                             (##cdr _tl51825200_)))
                                        (let ((_expr5208_ _hd51835203_))
                                          (if (##null? _tl51845205_)
                                              (_K51805195_ _expr5208_)
                                              (_E51795190_))))
                                      (_E51795190_)))
                                (_E51795190_))))))
                    _forms5172_))))
        (let ((_collect-bindings4355_
               (lambda (_forms5096_)
                 (map (lambda (_e50975099_)
                        (let ((_g51015110_ _e50975099_))
                          (let ((_E51035114_
                                 (lambda ()
                                   (error '"No clause matching" _g51015110_))))
                            (let ((_K51045157_
                                   (lambda (_bind5117_)
                                     ((letrec ((_lp5119_
                                                (lambda (_rest5121_ _r5122_)
                                                  (let ((_rest51235131_
                                                         _rest5121_))
                                                    (let ((_E51265135_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest51235131_))))
              (let ((_else51255139_
                     (lambda ()
                       (if (gx#identifier? _rest5121_)
                           (cons _rest5121_ _r5122_)
                           _r5122_))))
                (let ((_K51275145_
                       (lambda (_rest5142_ _id5143_)
                         (if (gx#identifier? _id5143_)
                             (_lp5119_
                              _rest5142_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id5143_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r5122_))
                             (_lp5119_ _rest5142_ _r5122_)))))
                  (if (##pair? _rest51235131_)
                      (let ((_hd51285148_ (##car _rest51235131_))
                            (_tl51295150_ (##cdr _rest51235131_)))
                        (let ((_id5153_ _hd51285148_))
                          (let ((_rest5155_ _tl51295150_))
                            (_K51275145_ _rest5155_ _id5153_))))
                      (_else51255139_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp5119_)
                                      _bind5117_
                                      '()))))
                              (if (##pair? _g51015110_)
                                  (let ((_hd51055160_ (##car _g51015110_))
                                        (_tl51065162_ (##cdr _g51015110_)))
                                    (let ((_bind5165_ _hd51055160_))
                                      (if (##pair? _tl51065162_)
                                          (let ((_hd51075167_
                                                 (##car _tl51065162_))
                                                (_tl51085169_
                                                 (##cdr _tl51065162_)))
                                            (if (##null? _tl51085169_)
                                                (_K51045157_ _bind5165_)
                                                (_E51035114_)))
                                          (_E51035114_))))
                                  (_E51035114_))))))
                      _forms5096_))))
          (let ((_closure-reference?4359_
                 (lambda (_closure4648_ _bindings4649_)
                   (ormap (lambda (_g46504652_)
                            (hash-get _closure4648_ _g46504652_))
                          _bindings4649_))))
            (let ((_is-effect-expr?4361_
                   (lambda (_expr4559_)
                     (let ((_g45614571_
                            (lambda (_g45624568_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g45624568_))))
                       (let ((_g45604594_
                              (lambda (_g45624574_)
                                (if (gx#stx-pair? _g45624574_)
                                    (let ((_e45644576_ (gx#stx-e _g45624574_)))
                                      (let ((_hd45654579_ (##car _e45644576_))
                                            (_tl45664581_ (##cdr _e45644576_)))
                                        ((lambda (_L4584_)
                                           (not (memq (gx#stx-e _L4584_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd45654579_)))
                                    (_g45614571_ _g45624574_)))))
                         (_g45604594_ _expr4559_))))))
              (let ((_is-lambda-expr?4362_
                     (lambda (_expr4521_)
                       (let ((_g45234533_
                              (lambda (_g45244530_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g45244530_))))
                         (let ((_g45224556_
                                (lambda (_g45244536_)
                                  (if (gx#stx-pair? _g45244536_)
                                      (let ((_e45264538_
                                             (gx#stx-e _g45244536_)))
                                        (let ((_hd45274541_
                                               (##car _e45264538_))
                                              (_tl45284543_
                                               (##cdr _e45264538_)))
                                          ((lambda (_L4546_)
                                             (memq (gx#stx-e _L4546_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd45274541_)))
                                      (_g45234533_ _g45244536_)))))
                           (_g45224556_ _expr4521_))))))
                (let ((_lift-rec4358_
                       (lambda (_forms4655_)
                         ((letrec ((_lp4657_
                                    (lambda (_rest4659_
                                             _pre4660_
                                             _bind4661_
                                             _init4662_)
                                      (let ((_rest46634671_ _rest4659_))
                                        (let ((_E46664675_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest46634671_))))
                                          (let ((_else46654679_
                                                 (lambda ()
                                                   (values (reverse _pre4660_)
                                                           (reverse _bind4661_)
                                                           (reverse _init4662_)))))
                                            (let ((_K46674870_
                                                   (lambda (_rest4682_
                                                            _bind-hd4683_)
                                                     (let ((_g46874722_
                                                            (lambda (_g46884719_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g46884719_))))
                                                       (let ((_g46864779_
                                                              (lambda (_g46884725_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g46884725_)
                            (let ((_e47124727_ (gx#stx-e _g46884725_)))
                              (let ((_hd47134730_ (##car _e47124727_))
                                    (_tl47144732_ (##cdr _e47124727_)))
                                (if (gx#stx-pair? _tl47144732_)
                                    (let ((_e47154735_
                                           (gx#stx-e _tl47144732_)))
                                      (let ((_hd47164738_ (##car _e47154735_))
                                            (_tl47174740_ (##cdr _e47154735_)))
                                        (if (gx#stx-null? _tl47174740_)
                                            ((lambda (_L4743_ _L4744_)
                                               (let ((_vals4763_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr4765_
                                                        (gxc#compile-e
                                                         _L4743_)))
                                                   (let ((_check-values4767_
                                                          (gxc#generate-runtime-check-values
                                                           _vals4763_
                                                           _L4744_)))
                                                     (let ((_refs4769_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals4763_
                                                             _L4744_)))
                                                       (let ()
                                                         (_lp4657_
                                                          _rest4682_
                                                          (foldl (lambda (_ref4772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _r4773_)
                           (cons (cons (car _ref4772_) (cons '#!void '()))
                                 _r4773_))
                         _pre4660_
                         _refs4769_)
                  _bind4661_
                  (cons (cons 'let
                              (cons (cons (cons _vals4763_
                                                (cons _expr4765_ '()))
                                          '())
                                    (cons _check-values4767_
                                          (cons (map (lambda (_g47744776_)
                                                       (cons 'set!
                                                             _g47744776_))
                                                     _refs4769_)
                                                '()))))
                        _init4662_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd47164738_
                                             _hd47134730_)
                                            (_g46874722_ _g46884725_))))
                                    (_g46874722_ _g46884725_))))
                            (_g46874722_ _g46884725_)))))
                 (let ((_g46854825_
                        (lambda (_g46884782_)
                          (if (gx#stx-pair? _g46884782_)
                              (let ((_e47014784_ (gx#stx-e _g46884782_)))
                                (let ((_hd47024787_ (##car _e47014784_))
                                      (_tl47034789_ (##cdr _e47014784_)))
                                  (if (gx#stx-pair? _hd47024787_)
                                      (let ((_e47044792_
                                             (gx#stx-e _hd47024787_)))
                                        (let ((_hd47054795_
                                               (##car _e47044792_))
                                              (_tl47064797_
                                               (##cdr _e47044792_)))
                                          (if (gx#stx-null? _tl47064797_)
                                              (if (gx#stx-pair? _tl47034789_)
                                                  (let ((_e47074800_
                                                         (gx#stx-e
                                                          _tl47034789_)))
                                                    (let ((_hd47084803_
                                                           (##car _e47074800_))
                                                          (_tl47094805_
                                                           (##cdr _e47074800_)))
                                                      (if (gx#stx-null?
                                                           _tl47094805_)
                                                          ((lambda (_L4808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4809_)
                     (let ((_eid4823_
                            (gxc#generate-runtime-binding-id _L4809_)))
                       (if (_is-lambda-expr?4362_ _L4808_)
                           (_lp4657_
                            _rest4682_
                            _pre4660_
                            (cons (cons _eid4823_
                                        (cons (gxc#compile-e _L4808_) '()))
                                  _bind4661_)
                            _init4662_)
                           (_lp4657_
                            _rest4682_
                            (cons (cons _eid4823_ (cons '#!void '()))
                                  _pre4660_)
                            _bind4661_
                            (cons (cons 'set!
                                        (cons _eid4823_
                                              (cons (gxc#compile-e _L4808_)
                                                    '())))
                                  _init4662_)))))
                   _hd47084803_
                   _hd47054795_)
                  (_g46864779_ _g46884782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g46864779_ _g46884782_))
                                              (_g46864779_ _g46884782_))))
                                      (_g46864779_ _g46884782_))))
                              (_g46864779_ _g46884782_)))))
                   (let ((_g46844867_
                          (lambda (_g46884828_)
                            (if (gx#stx-pair? _g46884828_)
                                (let ((_e46904830_ (gx#stx-e _g46884828_)))
                                  (let ((_hd46914833_ (##car _e46904830_))
                                        (_tl46924835_ (##cdr _e46904830_)))
                                    (if (gx#stx-pair? _hd46914833_)
                                        (let ((_e46934838_
                                               (gx#stx-e _hd46914833_)))
                                          (let ((_hd46944841_
                                                 (##car _e46934838_))
                                                (_tl46954843_
                                                 (##cdr _e46934838_)))
                                            (if (gx#stx-datum? _hd46944841_)
                                                (if (equal? (gx#stx-e
                                                             _hd46944841_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl46954843_)
                                                        (if (gx#stx-pair?
                                                             _tl46924835_)
                                                            (let ((_e46964846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl46924835_)))
                      (let ((_hd46974849_ (##car _e46964846_))
                            (_tl46984851_ (##cdr _e46964846_)))
                        (if (gx#stx-null? _tl46984851_)
                            ((lambda (_L4854_)
                               (_lp4657_
                                _rest4682_
                                _pre4660_
                                _bind4661_
                                (cons (gxc#compile-e _L4854_) _init4662_)))
                             _hd46974849_)
                            (_g46854825_ _g46884828_))))
                    (_g46854825_ _g46884828_))
                (_g46854825_ _g46884828_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46854825_ _g46884828_))
                                                (_g46854825_ _g46884828_))))
                                        (_g46854825_ _g46884828_))))
                                (_g46854825_ _g46884828_)))))
                     (_g46844867_ _bind-hd4683_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest46634671_)
                                                  (let ((_hd46684873_
                                                         (##car _rest46634671_))
                                                        (_tl46694875_
                                                         (##cdr _rest46634671_)))
                                                    (let ((_bind-hd4878_
                                                           _hd46684873_))
                                                      (let ((_rest4880_
                                                             _tl46694875_))
                                                        (_K46674870_
                                                         _rest4880_
                                                         _bind-hd4878_))))
                                                  (_else46654679_)))))))))
                            _lp4657_)
                          _forms4655_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?4360_
                         (lambda (_hd-bind4597_)
                           (let ((_g45994612_
                                  (lambda (_g46004609_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g46004609_))))
                             (let ((_g45984645_
                                    (lambda (_g46004615_)
                                      (if (gx#stx-pair? _g46004615_)
                                          (let ((_e46024617_
                                                 (gx#stx-e _g46004615_)))
                                            (let ((_hd46034620_
                                                   (##car _e46024617_))
                                                  (_tl46044622_
                                                   (##cdr _e46024617_)))
                                              (if (gx#stx-pair? _tl46044622_)
                                                  (let ((_e46054625_
                                                         (gx#stx-e
                                                          _tl46044622_)))
                                                    (let ((_hd46064628_
                                                           (##car _e46054625_))
                                                          (_tl46074630_
                                                           (##cdr _e46054625_)))
                                                      (if (gx#stx-null?
                                                           _tl46074630_)
                                                          ((lambda (_L4633_)
                                                             (_is-effect-expr?4361_
                                                              _L4633_))
                                                           _hd46064628_)
                                                          (_g45994612_
                                                           _g46004615_))))
                                                  (_g45994612_ _g46004615_))))
                                          (_g45994612_ _g46004615_)))))
                               (_g45984645_ _hd-bind4597_))))))
                    (let ((_lift-pre4356_
                           (lambda (_hd4989_ _bindings4990_ _closures4991_)
                             ((letrec ((_lp4993_
                                        (lambda (_rest-forms4995_
                                                 _rest-bindings4996_
                                                 _rest-closures4997_
                                                 _post-forms4998_
                                                 _post-bindings4999_
                                                 _post-closures5000_
                                                 _pre-forms5001_
                                                 _lifted?5002_)
                                          (let ((_rest-forms50035019_
                                                 _rest-forms4995_)
                                                (_rest-bindings50045021_
                                                 _rest-bindings4996_)
                                                (_rest-closures50055023_
                                                 _rest-closures4997_))
                                            (let ((_E50085027_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms50035019_
                                                            _rest-bindings50045021_
                                                            _rest-closures50055023_))))
                                              (let ((_else50075031_
                                                     (lambda ()
                                                       (if _lifted?5002_
                                                           (_lp4993_
                                                            (reverse _post-forms4998_)
                                                            (reverse _post-bindings4999_)
                                                            (reverse _post-closures5000_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms5001_
                                                            '#f)
                                                           (values (reverse _pre-forms5001_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms4998_)
                           (reverse _post-bindings4999_)
                           (reverse _post-closures5000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K50095084_
                                                       (lambda (_rest-forms5034_
                                                                _form5035_)
                                                         (let ((_K50105072_
                                                                (lambda (_rest-bindings5037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings5038_)
                          (let ((_K50115060_
                                 (lambda (_rest-closures5040_ _closure5041_)
                                   (if (let ((_$e5043_
                                              (_closure-reference?4359_
                                               _closure5041_
                                               _bindings5038_)))
                                         (if _$e5043_
                                             _$e5043_
                                             (let ((_$e5050_
                                                    (ormap (lambda (_g50455047_)
                                                             (_closure-reference?4359_
                                                              _closure5041_
                                                              _g50455047_))
                                                           _rest-bindings5037_)))
                                               (if _$e5050_
                                                   _$e5050_
                                                   (let ((_$e5057_
                                                          (ormap (lambda (_g50525054_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_closure-reference?4359_
                            _closure5041_
                            _g50525054_))
                         _post-bindings4999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e5057_
                                                         _$e5057_
                                                         (if (_is-effect-bind?4360_
                                                              _form5035_)
                                                             (find _is-effect-bind?4360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms4998_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp4993_
                                        _rest-forms5034_
                                        _rest-bindings5037_
                                        _rest-closures5040_
                                        (cons _form5035_ _post-forms4998_)
                                        (cons _bindings5038_
                                              _post-bindings4999_)
                                        (cons _closure5041_
                                              _post-closures5000_)
                                        _pre-forms5001_
                                        _lifted?5002_)
                                       (_lp4993_
                                        _rest-forms5034_
                                        _rest-bindings5037_
                                        _rest-closures5040_
                                        _post-forms4998_
                                        _post-bindings4999_
                                        _post-closures5000_
                                        (cons _form5035_ _pre-forms5001_)
                                        '#t)))))
                            (if (##pair? _rest-closures50055023_)
                                (let ((_hd50125063_
                                       (##car _rest-closures50055023_))
                                      (_tl50135065_
                                       (##cdr _rest-closures50055023_)))
                                  (let ((_closure5068_ _hd50125063_))
                                    (let ((_rest-closures5070_ _tl50135065_))
                                      (_K50115060_
                                       _rest-closures5070_
                                       _closure5068_))))
                                (_else50075031_))))))
                   (if (##pair? _rest-bindings50045021_)
                       (let ((_hd50145075_ (##car _rest-bindings50045021_))
                             (_tl50155077_ (##cdr _rest-bindings50045021_)))
                         (let ((_bindings5080_ _hd50145075_))
                           (let ((_rest-bindings5082_ _tl50155077_))
                             (_K50105072_
                              _rest-bindings5082_
                              _bindings5080_))))
                       (_else50075031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms50035019_)
                                                      (let ((_hd50165087_
                                                             (##car _rest-forms50035019_))
                                                            (_tl50175089_
                                                             (##cdr _rest-forms50035019_)))
                                                        (let ((_form5092_
                                                               _hd50165087_))
                                                          (let ((_rest-forms5094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl50175089_))
                    (_K50095084_ _rest-forms5094_ _form5092_))))
              (_else50075031_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp4993_)
                              _hd4989_
                              _bindings4990_
                              _closures4991_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post4357_
                             (lambda (_hd4882_ _bindings4883_ _closures4884_)
                               ((letrec ((_lp4886_
                                          (lambda (_rest-forms4888_
                                                   _rest-bindings4889_
                                                   _rest-closures4890_
                                                   _pre-forms4891_
                                                   _pre-bindings4892_
                                                   _pre-closures4893_
                                                   _post-forms4894_
                                                   _lifted?4895_)
                                            (let ((_rest-forms48964912_
                                                   _rest-forms4888_)
                                                  (_rest-bindings48974914_
                                                   _rest-bindings4889_)
                                                  (_rest-closures48984916_
                                                   _rest-closures4890_))
                                              (let ((_E49014920_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms48964912_
                                                              _rest-bindings48974914_
                                                              _rest-closures48984916_))))
                                                (let ((_else49004924_
                                                       (lambda ()
                                                         (if _lifted?4895_
                                                             (_lp4886_
                                                              (reverse _pre-forms4891_)
                                                              (reverse _pre-bindings4892_)
                                                              (reverse _pre-closures4893_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms4894_
                                                              '#f)
                                                             (values _post-forms4894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms4891_
                             _pre-bindings4892_
                             _pre-closures4893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K49024977_
                                                         (lambda (_rest-forms4927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form4928_)
                   (let ((_K49034965_
                          (lambda (_rest-bindings4930_ _bindings4931_)
                            (let ((_K49044953_
                                   (lambda (_rest-closures4933_ _closure4934_)
                                     (if (let ((_$e4936_
                                                (_closure-reference?4359_
                                                 _closure4934_
                                                 _bindings4931_)))
                                           (if _$e4936_
                                               _$e4936_
                                               (let ((_$e4943_
                                                      (ormap (lambda (_g49384940_)
                                                               (_closure-reference?4359_
                                                                _g49384940_
                                                                _bindings4931_))
                                                             _rest-closures4933_)))
                                                 (if _$e4943_
                                                     _$e4943_
                                                     (let ((_$e4950_
                                                            (ormap (lambda (_g49454947_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (_closure-reference?4359_
                              _g49454947_
                              _bindings4931_))
                           _pre-closures4893_)))
               (if _$e4950_
                   _$e4950_
                   (if (_is-effect-bind?4360_ _form4928_)
                       (find _is-effect-bind?4360_ _pre-forms4891_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp4886_
                                          _rest-forms4927_
                                          _rest-bindings4930_
                                          _rest-closures4933_
                                          (cons _form4928_ _pre-forms4891_)
                                          (cons _bindings4931_
                                                _pre-bindings4892_)
                                          (cons _closure4934_
                                                _pre-closures4893_)
                                          _post-forms4894_
                                          _lifted?4895_)
                                         (_lp4886_
                                          _rest-forms4927_
                                          _rest-bindings4930_
                                          _rest-closures4933_
                                          _pre-forms4891_
                                          _pre-bindings4892_
                                          _pre-closures4893_
                                          (cons _form4928_ _post-forms4894_)
                                          '#t)))))
                              (if (##pair? _rest-closures48984916_)
                                  (let ((_hd49054956_
                                         (##car _rest-closures48984916_))
                                        (_tl49064958_
                                         (##cdr _rest-closures48984916_)))
                                    (let ((_closure4961_ _hd49054956_))
                                      (let ((_rest-closures4963_ _tl49064958_))
                                        (_K49044953_
                                         _rest-closures4963_
                                         _closure4961_))))
                                  (_else49004924_))))))
                     (if (##pair? _rest-bindings48974914_)
                         (let ((_hd49074968_ (##car _rest-bindings48974914_))
                               (_tl49084970_ (##cdr _rest-bindings48974914_)))
                           (let ((_bindings4973_ _hd49074968_))
                             (let ((_rest-bindings4975_ _tl49084970_))
                               (_K49034965_
                                _rest-bindings4975_
                                _bindings4973_))))
                         (_else49004924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms48964912_)
                                                        (let ((_hd49094980_
                                                               (##car _rest-forms48964912_))
                                                              (_tl49104982_
                                                               (##cdr _rest-forms48964912_)))
                                                          (let ((_form4985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd49094980_))
                    (let ((_rest-forms4987_ _tl49104982_))
                      (_K49024977_ _rest-forms4987_ _form4985_))))
                (_else49004924_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp4886_)
                                (reverse _hd4882_)
                                (reverse _bindings4883_)
                                (reverse _closures4884_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize4353_
                               (lambda (_forms5210_)
                                 (let ((_closures5212_
                                        (_collect-closures4354_ _forms5210_)))
                                   (let ((_bindings5214_
                                          (_collect-bindings4355_
                                           _forms5210_)))
                                     (let ((_g7170_ (_lift-pre4356_
                                                     _forms5210_
                                                     _bindings5214_
                                                     _closures5212_)))
                                       (begin
                                         (let ((_g7171_ (values-count
                                                         _g7170_)))
                                           (if (not (fx= _g7171_ 4))
                                               (error "Context expects 4 values"
                                                      _g7171_)))
                                         (let ((_pre-bind5216_
                                                (values-ref _g7170_ 0))
                                               (_forms5217_
                                                (values-ref _g7170_ 1))
                                               (_bindings5218_
                                                (values-ref _g7170_ 2))
                                               (_closures5219_
                                                (values-ref _g7170_ 3)))
                                           (let ((_g7172_ (_lift-post4357_
                                                           _forms5217_
                                                           _bindings5218_
                                                           _closures5219_)))
                                             (begin
                                               (let ((_g7173_ (values-count
                                                               _g7172_)))
                                                 (if (not (fx= _g7173_ 4))
                                                     (error "Context expects 4 values"
                                                            _g7173_)))
                                               (let ((_post-bind5221_
                                                      (values-ref _g7172_ 0))
                                                     (_forms5222_
                                                      (values-ref _g7172_ 1))
                                                     (_bindings5223_
                                                      (values-ref _g7172_ 2))
                                                     (_closures5224_
                                                      (values-ref _g7172_ 3)))
                                                 (let ((_g7174_ (_lift-rec4358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms5222_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g7175_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g7174_)))
               (if (not (fx= _g7175_ 3))
                   (error "Context expects 3 values" _g7175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre5226_
                                                            (values-ref
                                                             _g7174_
                                                             0))
                                                           (_rec-bind5227_
                                                            (values-ref
                                                             _g7174_
                                                             1))
                                                           (_rec-init5228_
                                                            (values-ref
                                                             _g7174_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind5216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre5226_
                         _rec-bind5227_
                         _rec-init5228_
                         _post-bind5221_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*4363_
                                    (lambda (_hd4450_ _body4451_)
                                      (let ((_hd44524460_ _hd4450_))
                                        (let ((_E44554464_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd44524460_))))
                                          (let ((_else44544468_
                                                 (lambda () _body4451_)))
                                            (let ((_K44564509_
                                                   (lambda (_rest4471_
                                                            _bind4472_)
                                                     (let ((_bind44734482_
                                                            _bind4472_))
                                                       (let ((_E44754486_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind44734482_))))
                 (let ((_K44764492_
                        (lambda (_expr4489_ _hd4490_)
                          (if (gx#stx-ormap gx#identifier? _hd4490_)
                              (gxc#generate-runtime-let-values%__opt-lambda5651
                               (cons '%#let-values
                                     (cons (cons _bind4472_ '())
                                           (cons (_generate-let*4363_
                                                  _rest4471_
                                                  _body4451_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr4489_)
                                          (cons (_generate-let*4363_
                                                 _rest4471_
                                                 _body4451_)
                                                '())))))))
                   (if (##pair? _bind44734482_)
                       (let ((_hd44774495_ (##car _bind44734482_))
                             (_tl44784497_ (##cdr _bind44734482_)))
                         (let ((_hd4500_ _hd44774495_))
                           (if (##pair? _tl44784497_)
                               (let ((_hd44794502_ (##car _tl44784497_))
                                     (_tl44804504_ (##cdr _tl44784497_)))
                                 (let ((_expr4507_ _hd44794502_))
                                   (if (##null? _tl44804504_)
                                       (_K44764492_ _expr4507_ _hd4500_)
                                       (_E44754486_))))
                               (_E44754486_))))
                       (_E44754486_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd44524460_)
                                                  (let ((_hd44574512_
                                                         (##car _hd44524460_))
                                                        (_tl44584514_
                                                         (##cdr _hd44524460_)))
                                                    (let ((_bind4517_
                                                           _hd44574512_))
                                                      (let ((_rest4519_
                                                             _tl44584514_))
                                                        (_K44564509_
                                                         _rest4519_
                                                         _bind4517_))))
                                                  (_else44544468_)))))))))
                            (let ((_g43654382_
                                   (lambda (_g43664379_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g43664379_))))
                              (let ((_g43644447_
                                     (lambda (_g43664385_)
                                       (if (gx#stx-pair? _g43664385_)
                                           (let ((_e43694387_
                                                  (gx#stx-e _g43664385_)))
                                             (let ((_hd43704390_
                                                    (##car _e43694387_))
                                                   (_tl43714392_
                                                    (##cdr _e43694387_)))
                                               (if (gx#stx-pair? _tl43714392_)
                                                   (let ((_e43724395_
                                                          (gx#stx-e
                                                           _tl43714392_)))
                                                     (let ((_hd43734398_
                                                            (##car _e43724395_))
                                                           (_tl43744400_
                                                            (##cdr _e43724395_)))
                                                       (if (gx#stx-pair?
                                                            _tl43744400_)
                                                           (let ((_e43754403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl43744400_)))
                     (let ((_hd43764406_ (##car _e43754403_))
                           (_tl43774408_ (##cdr _e43754403_)))
                       (if (gx#stx-null? _tl43774408_)
                           ((lambda (_L4411_ _L4412_)
                              (let ((_g7168_ (_linearize4353_ _L4412_)))
                                (begin
                                  (let ((_g7169_ (values-count _g7168_)))
                                    (if (not (fx= _g7169_ 5))
                                        (error "Context expects 5 values"
                                               _g7169_)))
                                  (let ((_pre4428_ (values-ref _g7168_ 0))
                                        (_rec-pre4429_ (values-ref _g7168_ 1))
                                        (_rec-bind4430_ (values-ref _g7168_ 2))
                                        (_rec-init4431_ (values-ref _g7168_ 3))
                                        (_post4432_ (values-ref _g7168_ 4)))
                                    (let ((_body4434_ (gxc#compile-e _L4411_)))
                                      (let ((_body4436_
                                             (if (null? _post4432_)
                                                 _body4434_
                                                 (_generate-let*4363_
                                                  _post4432_
                                                  _body4434_))))
                                        (let ((_body4438_
                                               (if (null? _rec-init4431_)
                                                   _body4436_
                                                   (cons 'begin
                                                         (foldr cons
                                                                (cons _body4436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        _rec-init4431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body4440_
                                                 (if (null? _rec-bind4430_)
                                                     _body4438_
                                                     (cons 'letrec
                                                           (cons _rec-bind4430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4438_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body4442_
                                                   (if (null? _rec-pre4429_)
                                                       _body4440_
                                                       (cons 'let
                                                             (cons _rec-pre4429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body4440_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body4444_
                                                     (if (null? _pre4428_)
                                                         _body4442_
                                                         (_generate-let*4363_
                                                          _pre4428_
                                                          _body4442_))))
                                                (let () _body4444_)))))))))))
                            _hd43764406_
                            _hd43734398_)
                           (_g43654382_ _g43664385_))))
                   (_g43654382_ _g43664385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43654382_ _g43664385_))))
                                           (_g43654382_ _g43664385_)))))
                                (_g43644447_ _stx4351_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd4244_)
      ((letrec ((_lp4246_
                 (lambda (_rest4248_)
                   (let ((_g42524273_
                          (lambda (_g42534270_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g42534270_))))
                     (let ((_g42514280_
                            (lambda (_g42534276_) ((lambda () '#f)))))
                       (let ((_g42504287_
                              (lambda (_g42534283_)
                                (if (gx#stx-null? _g42534283_)
                                    ((lambda () '#t))
                                    (_g42514280_ _g42534283_)))))
                         (let ((_g42494348_
                                (lambda (_g42534290_)
                                  (if (gx#stx-pair? _g42534290_)
                                      (let ((_e42574292_
                                             (gx#stx-e _g42534290_)))
                                        (let ((_hd42584295_
                                               (##car _e42574292_))
                                              (_tl42594297_
                                               (##cdr _e42574292_)))
                                          (if (gx#stx-pair? _hd42584295_)
                                              (let ((_e42604300_
                                                     (gx#stx-e _hd42584295_)))
                                                (let ((_hd42614303_
                                                       (##car _e42604300_))
                                                      (_tl42624305_
                                                       (##cdr _e42604300_)))
                                                  (if (gx#stx-pair?
                                                       _hd42614303_)
                                                      (let ((_e42634308_
                                                             (gx#stx-e
                                                              _hd42614303_)))
                                                        (let ((_hd42644311_
                                                               (##car _e42634308_))
                                                              (_tl42654313_
                                                               (##cdr _e42634308_)))
                                                          (if (gx#stx-null?
                                                               _tl42654313_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl42624305_)
                          (let ((_e42664316_ (gx#stx-e _tl42624305_)))
                            (let ((_hd42674319_ (##car _e42664316_))
                                  (_tl42684321_ (##cdr _e42664316_)))
                              (if (gx#stx-null? _tl42684321_)
                                  ((lambda (_L4324_ _L4325_ _L4326_)
                                     (_lp4246_ _L4324_))
                                   _tl42594297_
                                   _hd42674319_
                                   _hd42644311_)
                                  (_g42504287_ _g42534290_))))
                          (_g42504287_ _g42534290_))
                      (_g42504287_ _g42534290_))))
              (_g42504287_ _g42534290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g42504287_ _g42534290_))))
                                      (_g42504287_ _g42534290_)))))
                           (_g42494348_ _rest4248_))))))))
         _lp4246_)
       _hd4244_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form4168_ _hd4169_ _body4170_ _compiled-body?4171_)
      (let ((_generate14173_
             (lambda (_bind4175_)
               (let ((_g41774194_
                      (lambda (_g41784191_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g41784191_))))
                 (let ((_g41764241_
                        (lambda (_g41784197_)
                          (if (gx#stx-pair? _g41784197_)
                              (let ((_e41814199_ (gx#stx-e _g41784197_)))
                                (let ((_hd41824202_ (##car _e41814199_))
                                      (_tl41834204_ (##cdr _e41814199_)))
                                  (if (gx#stx-pair? _hd41824202_)
                                      (let ((_e41844207_
                                             (gx#stx-e _hd41824202_)))
                                        (let ((_hd41854210_
                                               (##car _e41844207_))
                                              (_tl41864212_
                                               (##cdr _e41844207_)))
                                          (if (gx#stx-null? _tl41864212_)
                                              (if (gx#stx-pair? _tl41834204_)
                                                  (let ((_e41874215_
                                                         (gx#stx-e
                                                          _tl41834204_)))
                                                    (let ((_hd41884218_
                                                           (##car _e41874215_))
                                                          (_tl41894220_
                                                           (##cdr _e41874215_)))
                                                      (if (gx#stx-null?
                                                           _tl41894220_)
                                                          ((lambda (_L4223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4224_)
                     (cons (gxc#generate-runtime-binding-id* _L4224_)
                           (cons (gxc#compile-e _L4223_) '())))
                   _hd41884218_
                   _hd41854210_)
                  (_g41774194_ _g41784197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g41774194_ _g41784197_))
                                              (_g41774194_ _g41784197_))))
                                      (_g41774194_ _g41784197_))))
                              (_g41774194_ _g41784197_)))))
                   (_g41764241_ _bind4175_))))))
        (cons _form4168_
              (cons (map _generate14173_ _hd4169_)
                    (cons (if _compiled-body?4171_
                              _body4170_
                              (gxc#compile-e _body4170_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx4079_)
      (letrec ((_generate14081_
                (lambda (_datum4133_)
                  (if (let ((_$e4135_ (null? _datum4133_)))
                        (if _$e4135_
                            _$e4135_
                            (let ((_$e4138_ (symbol? _datum4133_)))
                              (if _$e4138_
                                  _$e4138_
                                  (gx#self-quoting? _datum4133_)))))
                      _datum4133_
                      (if (uninterned-symbol? _datum4133_)
                          (gxc#generate-runtime-gensym-reference _datum4133_)
                          (if (pair? _datum4133_)
                              (cons (_generate14081_ (car _datum4133_))
                                    (_generate14081_ (cdr _datum4133_)))
                              (if (box? _datum4133_)
                                  (box (_generate14081_ (unbox _datum4133_)))
                                  (if (vector? _datum4133_)
                                      (vector-map _generate14081_ _datum4133_)
                                      (if (let ((_$e4141_
                                                 (s8vector? _datum4133_)))
                                            (if _$e4141_
                                                _$e4141_
                                                (let ((_$e4144_
                                                       (u8vector?
                                                        _datum4133_)))
                                                  (if _$e4144_
                                                      _$e4144_
                                                      (let ((_$e4147_
                                                             (s16vector?
                                                              _datum4133_)))
                                                        (if _$e4147_
                                                            _$e4147_
                                                            (let ((_$e4150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum4133_)))
                      (if _$e4150_
                          _$e4150_
                          (let ((_$e4153_ (s32vector? _datum4133_)))
                            (if _$e4153_
                                _$e4153_
                                (let ((_$e4156_ (u32vector? _datum4133_)))
                                  (if _$e4156_
                                      _$e4156_
                                      (let ((_$e4159_
                                             (s64vector? _datum4133_)))
                                        (if _$e4159_
                                            _$e4159_
                                            (let ((_$e4162_
                                                   (u64vector? _datum4133_)))
                                              (if _$e4162_
                                                  _$e4162_
                                                  (let ((_$e4165_
                                                         (f32vector?
                                                          _datum4133_)))
                                                    (if _$e4165_
                                                        _$e4165_
                                                        (f64vector?
                                                         _datum4133_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum4133_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx4079_))))))))))
        (let ((_g40834096_
               (lambda (_g40844093_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40844093_))))
          (let ((_g40824130_
                 (lambda (_g40844099_)
                   (if (gx#stx-pair? _g40844099_)
                       (let ((_e40864101_ (gx#stx-e _g40844099_)))
                         (let ((_hd40874104_ (##car _e40864101_))
                               (_tl40884106_ (##cdr _e40864101_)))
                           (if (gx#stx-pair? _tl40884106_)
                               (let ((_e40894109_ (gx#stx-e _tl40884106_)))
                                 (let ((_hd40904112_ (##car _e40894109_))
                                       (_tl40914114_ (##cdr _e40894109_)))
                                   (if (gx#stx-null? _tl40914114_)
                                       ((lambda (_L4117_)
                                          (cons 'quote
                                                (cons (_generate14081_
                                                       (gx#stx-e _L4117_))
                                                      '())))
                                        _hd40904112_)
                                       (_g40834096_ _g40844099_))))
                               (_g40834096_ _g40844099_))))
                       (_g40834096_ _g40844099_)))))
            (_g40824130_ _stx4079_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx4041_)
      (let ((_g40434053_
             (lambda (_g40444050_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40444050_))))
        (let ((_g40424076_
               (lambda (_g40444056_)
                 (if (gx#stx-pair? _g40444056_)
                     (let ((_e40464058_ (gx#stx-e _g40444056_)))
                       (let ((_hd40474061_ (##car _e40464058_))
                             (_tl40484063_ (##cdr _e40464058_)))
                         ((lambda (_L4066_) (map gxc#compile-e _L4066_))
                          _tl40484063_)))
                     (_g40434053_ _g40444056_)))))
          (_g40424076_ _stx4041_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx4003_)
      (let ((_g40054015_
             (lambda (_g40064012_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40064012_))))
        (let ((_g40044038_
               (lambda (_g40064018_)
                 (if (gx#stx-pair? _g40064018_)
                     (let ((_e40084020_ (gx#stx-e _g40064018_)))
                       (let ((_hd40094023_ (##car _e40084020_))
                             (_tl40104025_ (##cdr _e40084020_)))
                         ((lambda (_L4028_)
                            (cons 'if (map gxc#compile-e _L4028_)))
                          _tl40104025_)))
                     (_g40054015_ _g40064018_)))))
          (_g40044038_ _stx4003_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx3952_)
      (let ((_g39543967_
             (lambda (_g39553964_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g39553964_))))
        (let ((_g39534000_
               (lambda (_g39553970_)
                 (if (gx#stx-pair? _g39553970_)
                     (let ((_e39573972_ (gx#stx-e _g39553970_)))
                       (let ((_hd39583975_ (##car _e39573972_))
                             (_tl39593977_ (##cdr _e39573972_)))
                         (if (gx#stx-pair? _tl39593977_)
                             (let ((_e39603980_ (gx#stx-e _tl39593977_)))
                               (let ((_hd39613983_ (##car _e39603980_))
                                     (_tl39623985_ (##cdr _e39603980_)))
                                 (if (gx#stx-null? _tl39623985_)
                                     ((lambda (_L3988_)
                                        (gxc#generate-runtime-binding-id
                                         _L3988_))
                                      _hd39613983_)
                                     (_g39543967_ _g39553970_))))
                             (_g39543967_ _g39553970_))))
                     (_g39543967_ _g39553970_)))))
          (_g39534000_ _stx3952_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx3885_)
      (let ((_g38873904_
             (lambda (_g38883901_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38883901_))))
        (let ((_g38863949_
               (lambda (_g38883907_)
                 (if (gx#stx-pair? _g38883907_)
                     (let ((_e38913909_ (gx#stx-e _g38883907_)))
                       (let ((_hd38923912_ (##car _e38913909_))
                             (_tl38933914_ (##cdr _e38913909_)))
                         (if (gx#stx-pair? _tl38933914_)
                             (let ((_e38943917_ (gx#stx-e _tl38933914_)))
                               (let ((_hd38953920_ (##car _e38943917_))
                                     (_tl38963922_ (##cdr _e38943917_)))
                                 (if (gx#stx-pair? _tl38963922_)
                                     (let ((_e38973925_
                                            (gx#stx-e _tl38963922_)))
                                       (let ((_hd38983928_ (##car _e38973925_))
                                             (_tl38993930_
                                              (##cdr _e38973925_)))
                                         (if (gx#stx-null? _tl38993930_)
                                             ((lambda (_L3933_ _L3934_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L3934_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3933_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd38983928_
                                              _hd38953920_)
                                             (_g38873904_ _g38883907_))))
                                     (_g38873904_ _g38883907_))))
                             (_g38873904_ _g38883907_))))
                     (_g38873904_ _g38883907_)))))
          (_g38863949_ _stx3885_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx3818_)
      (let ((_g38203837_
             (lambda (_g38213834_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38213834_))))
        (let ((_g38193882_
               (lambda (_g38213840_)
                 (if (gx#stx-pair? _g38213840_)
                     (let ((_e38243842_ (gx#stx-e _g38213840_)))
                       (let ((_hd38253845_ (##car _e38243842_))
                             (_tl38263847_ (##cdr _e38243842_)))
                         (if (gx#stx-pair? _tl38263847_)
                             (let ((_e38273850_ (gx#stx-e _tl38263847_)))
                               (let ((_hd38283853_ (##car _e38273850_))
                                     (_tl38293855_ (##cdr _e38273850_)))
                                 (if (gx#stx-pair? _tl38293855_)
                                     (let ((_e38303858_
                                            (gx#stx-e _tl38293855_)))
                                       (let ((_hd38313861_ (##car _e38303858_))
                                             (_tl38323863_
                                              (##cdr _e38303858_)))
                                         (if (gx#stx-null? _tl38323863_)
                                             ((lambda (_L3866_ _L3867_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3866_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3867_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd38313861_
                                              _hd38283853_)
                                             (_g38203837_ _g38213840_))))
                                     (_g38203837_ _g38213840_))))
                             (_g38203837_ _g38213840_))))
                     (_g38203837_ _g38213840_)))))
          (_g38193882_ _stx3818_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx3751_)
      (let ((_g37533770_
             (lambda (_g37543767_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g37543767_))))
        (let ((_g37523815_
               (lambda (_g37543773_)
                 (if (gx#stx-pair? _g37543773_)
                     (let ((_e37573775_ (gx#stx-e _g37543773_)))
                       (let ((_hd37583778_ (##car _e37573775_))
                             (_tl37593780_ (##cdr _e37573775_)))
                         (if (gx#stx-pair? _tl37593780_)
                             (let ((_e37603783_ (gx#stx-e _tl37593780_)))
                               (let ((_hd37613786_ (##car _e37603783_))
                                     (_tl37623788_ (##cdr _e37603783_)))
                                 (if (gx#stx-pair? _tl37623788_)
                                     (let ((_e37633791_
                                            (gx#stx-e _tl37623788_)))
                                       (let ((_hd37643794_ (##car _e37633791_))
                                             (_tl37653796_
                                              (##cdr _e37633791_)))
                                         (if (gx#stx-null? _tl37653796_)
                                             ((lambda (_L3799_ _L3800_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L3799_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3800_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd37643794_
                                              _hd37613786_)
                                             (_g37533770_ _g37543773_))))
                                     (_g37533770_ _g37543773_))))
                             (_g37533770_ _g37543773_))))
                     (_g37533770_ _g37543773_)))))
          (_g37523815_ _stx3751_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx3668_)
      (let ((_g36703691_
             (lambda (_g36713688_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g36713688_))))
        (let ((_g36693748_
               (lambda (_g36713694_)
                 (if (gx#stx-pair? _g36713694_)
                     (let ((_e36753696_ (gx#stx-e _g36713694_)))
                       (let ((_hd36763699_ (##car _e36753696_))
                             (_tl36773701_ (##cdr _e36753696_)))
                         (if (gx#stx-pair? _tl36773701_)
                             (let ((_e36783704_ (gx#stx-e _tl36773701_)))
                               (let ((_hd36793707_ (##car _e36783704_))
                                     (_tl36803709_ (##cdr _e36783704_)))
                                 (if (gx#stx-pair? _tl36803709_)
                                     (let ((_e36813712_
                                            (gx#stx-e _tl36803709_)))
                                       (let ((_hd36823715_ (##car _e36813712_))
                                             (_tl36833717_
                                              (##cdr _e36813712_)))
                                         (if (gx#stx-pair? _tl36833717_)
                                             (let ((_e36843720_
                                                    (gx#stx-e _tl36833717_)))
                                               (let ((_hd36853723_
                                                      (##car _e36843720_))
                                                     (_tl36863725_
                                                      (##cdr _e36843720_)))
                                                 (if (gx#stx-null?
                                                      _tl36863725_)
                                                     ((lambda (_L3728_
                                                               _L3729_
                                                               _L3730_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L3728_)
                            (cons (gxc#compile-e _L3729_)
                                  (cons (gxc#compile-e _L3730_)
                                        (cons ''#f '()))))))
              _hd36853723_
              _hd36823715_
              _hd36793707_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g36703691_
                                                      _g36713694_))))
                                             (_g36703691_ _g36713694_))))
                                     (_g36703691_ _g36713694_))))
                             (_g36703691_ _g36713694_))))
                     (_g36703691_ _g36713694_)))))
          (_g36693748_ _stx3668_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx3569_)
      (let ((_g35713596_
             (lambda (_g35723593_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g35723593_))))
        (let ((_g35703665_
               (lambda (_g35723599_)
                 (if (gx#stx-pair? _g35723599_)
                     (let ((_e35773601_ (gx#stx-e _g35723599_)))
                       (let ((_hd35783604_ (##car _e35773601_))
                             (_tl35793606_ (##cdr _e35773601_)))
                         (if (gx#stx-pair? _tl35793606_)
                             (let ((_e35803609_ (gx#stx-e _tl35793606_)))
                               (let ((_hd35813612_ (##car _e35803609_))
                                     (_tl35823614_ (##cdr _e35803609_)))
                                 (if (gx#stx-pair? _tl35823614_)
                                     (let ((_e35833617_
                                            (gx#stx-e _tl35823614_)))
                                       (let ((_hd35843620_ (##car _e35833617_))
                                             (_tl35853622_
                                              (##cdr _e35833617_)))
                                         (if (gx#stx-pair? _tl35853622_)
                                             (let ((_e35863625_
                                                    (gx#stx-e _tl35853622_)))
                                               (let ((_hd35873628_
                                                      (##car _e35863625_))
                                                     (_tl35883630_
                                                      (##cdr _e35863625_)))
                                                 (if (gx#stx-pair?
                                                      _tl35883630_)
                                                     (let ((_e35893633_
                                                            (gx#stx-e
                                                             _tl35883630_)))
                                                       (let ((_hd35903636_
                                                              (##car _e35893633_))
                                                             (_tl35913638_
                                                              (##cdr _e35893633_)))
                                                         (if (gx#stx-null?
                                                              _tl35913638_)
                                                             ((lambda (_L3641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L3642_
                               _L3643_
                               _L3644_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L3642_)
                                    (cons (gxc#compile-e _L3641_)
                                          (cons (gxc#compile-e _L3643_)
                                                (cons (gxc#compile-e _L3644_)
                                                      (cons ''#f '())))))))
                      _hd35903636_
                      _hd35873628_
                      _hd35843620_
                      _hd35813612_)
                     (_g35713596_ _g35723599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g35713596_
                                                      _g35723599_))))
                                             (_g35713596_ _g35723599_))))
                                     (_g35713596_ _g35723599_))))
                             (_g35713596_ _g35723599_))))
                     (_g35713596_ _g35723599_)))))
          (_g35703665_ _stx3569_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx3478_)
      (let ((_g34803490_
             (lambda (_g34813487_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34813487_))))
        (let ((_g34793566_
               (lambda (_g34813493_)
                 (if (gx#stx-pair? _g34813493_)
                     (let ((_e34833495_ (gx#stx-e _g34813493_)))
                       (let ((_hd34843498_ (##car _e34833495_))
                             (_tl34853500_ (##cdr _e34833495_)))
                         ((lambda (_L3503_)
                            (let ((_ht3513_ (make-hash-table-eq)))
                              ((letrec ((_lp3515_
                                         (lambda (_rest3517_ _loads3518_)
                                           (let ((_K3520_ (lambda (_ctx3559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest3560_)
                    (let ((_id3562_
                           (##structure-ref
                            _ctx3559_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (hash-get _ht3513_ _id3562_)
                          (_lp3515_ _rest3560_ _loads3518_)
                          (let ((_rt3564_
                                 (string-append
                                  (symbol->string _id3562_)
                                  '"__rt")))
                            (begin
                              (hash-put! _ht3513_ _id3562_ _rt3564_)
                              (_lp3515_
                               _rest3560_
                               (cons _rt3564_ _loads3518_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest35213529_ _rest3517_))
                                               (let ((_E35243533_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest35213529_))))
                                                 (let ((_else35233541_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g35363538_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g35363538_))
                             (reverse _loads3518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K35253547_
                                                          (lambda (_rest3544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in3545_)
                    (if (##structure-instance-of?
                         _in3545_
                         'gx#module-context::t)
                        (_K3520_ _in3545_ _rest3544_)
                        (if (##structure-direct-instance-of?
                             _in3545_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in3545_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp3515_ _rest3544_ _loads3518_)
                                (_K3520_ (##structure-ref
                                          (##structure-ref
                                           _in3545_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest3544_))
                            (if (##structure-direct-instance-of?
                                 _in3545_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in3545_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp3515_ _rest3544_ _loads3518_)
                                    (_K3520_ (##structure-ref
                                              _in3545_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest3544_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx3478_
                                 _in3545_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest35213529_)
                                                         (let ((_hd35263550_
                                                                (##car _rest35213529_))
                                                               (_tl35273552_
                                                                (##cdr _rest35213529_)))
                                                           (let ((_in3555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd35263550_))
                     (let ((_rest3557_ _tl35273552_))
                       (_K35253547_ _rest3557_ _in3555_))))
                 (_else35233541_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp3515_)
                               _L3503_
                               '())))
                          _tl34853500_)))
                     (_g34803490_ _g34813493_)))))
          (_g34793566_ _stx3478_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx3419_)
      (let ((_generate-quote3421_
             (lambda (_q3476_)
               (if (gx#identifier? _q3476_)
                   (gxc#generate-runtime-identifier _q3476_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx3419_
                    _q3476_)))))
        (let ((_g34233436_
               (lambda (_g34243433_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34243433_))))
          (let ((_g34223473_
                 (lambda (_g34243439_)
                   (if (gx#stx-pair? _g34243439_)
                       (let ((_e34263441_ (gx#stx-e _g34243439_)))
                         (let ((_hd34273444_ (##car _e34263441_))
                               (_tl34283446_ (##cdr _e34263441_)))
                           (if (gx#stx-pair? _tl34283446_)
                               (let ((_e34293449_ (gx#stx-e _tl34283446_)))
                                 (let ((_hd34303452_ (##car _e34293449_))
                                       (_tl34313454_ (##cdr _e34293449_)))
                                   (if (gx#stx-null? _tl34313454_)
                                       ((lambda (_L3457_)
                                          (let ((_gid3470_
                                                 (gxc#generate-runtime-temporary__opt-lambda6588
                                                  '#t))
                                                (_quote-e3471_
                                                 (_generate-quote3421_
                                                  _L3457_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid3470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e3471_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid3470_)))
                                        _hd34303452_)
                                       (_g34233436_ _g34243439_))))
                               (_g34233436_ _g34243439_))))
                       (_g34233436_ _g34243439_)))))
            (_g34223473_ _stx3419_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx3352_)
      (let ((_g33543371_
             (lambda (_g33553368_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33553368_))))
        (let ((_g33533416_
               (lambda (_g33553374_)
                 (if (gx#stx-pair? _g33553374_)
                     (let ((_e33583376_ (gx#stx-e _g33553374_)))
                       (let ((_hd33593379_ (##car _e33583376_))
                             (_tl33603381_ (##cdr _e33583376_)))
                         (if (gx#stx-pair? _tl33603381_)
                             (let ((_e33613384_ (gx#stx-e _tl33603381_)))
                               (let ((_hd33623387_ (##car _e33613384_))
                                     (_tl33633389_ (##cdr _e33613384_)))
                                 (if (gx#stx-pair? _tl33633389_)
                                     (let ((_e33643392_
                                            (gx#stx-e _tl33633389_)))
                                       (let ((_hd33653395_ (##car _e33643392_))
                                             (_tl33663397_
                                              (##cdr _e33643392_)))
                                         (if (gx#stx-null? _tl33663397_)
                                             ((lambda (_L3400_ _L3401_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L3401_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3400_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33653395_
                                              _hd33623387_)
                                             (_g33543371_ _g33553374_))))
                                     (_g33543371_ _g33553374_))))
                             (_g33543371_ _g33553374_))))
                     (_g33543371_ _g33553374_)))))
          (_g33533416_ _stx3352_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx3301_ _state3302_)
      (let ((_g33043314_
             (lambda (_g33053311_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33053311_))))
        (let ((_g33033349_
               (lambda (_g33053317_)
                 (if (gx#stx-pair? _g33053317_)
                     (let ((_e33073319_ (gx#stx-e _g33053317_)))
                       (let ((_hd33083322_ (##car _e33073319_))
                             (_tl33093324_ (##cdr _e33073319_)))
                         ((lambda (_L3327_)
                            (let ((_c-body3341_
                                   (map (lambda (_g33363338_)
                                          (gxc#compile-e
                                           _g33363338_
                                           _state3302_))
                                        _L3327_)))
                              (let ((_c-body3346_
                                     (filter (lambda (_$obj3343_)
                                               (not (void? _$obj3343_)))
                                             _c-body3341_)))
                                (let () (cons '%#begin _c-body3346_)))))
                          _tl33093324_)))
                     (_g33043314_ _g33053317_)))))
          (_g33033349_ _stx3301_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx3209_ _state3210_)
      (let ((_g32123222_
             (lambda (_g32133219_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32133219_))))
        (let ((_g32113298_
               (lambda (_g32133225_)
                 (if (gx#stx-pair? _g32133225_)
                     (let ((_e32153227_ (gx#stx-e _g32133225_)))
                       (let ((_hd32163230_ (##car _e32153227_))
                             (_tl32173232_ (##cdr _e32153227_)))
                         ((lambda (_L3235_)
                            (let ((_phi3245_ (fx1+ (gx#current-expander-phi))))
                              (let ((_block3247_
                                     (gxc#meta-state-begin-phi!
                                      _state3210_
                                      _phi3245_)))
                                (let ((_compiled3250_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L3235_)
                                           _state3210_))
                                        gx#current-expander-phi
                                        _phi3245_)))
                                  (let ()
                                    (let ((_g32533263_
                                           (lambda (_g32543260_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g32543260_))))
                                      (let ((_g32523295_
                                             (lambda (_g32543266_)
                                               (if (gx#stx-pair? _g32543266_)
                                                   (let ((_e32563268_
                                                          (gx#stx-e
                                                           _g32543266_)))
                                                     (let ((_hd32573271_
                                                            (##car _e32563268_))
                                                           (_tl32583273_
                                                            (##cdr _e32563268_)))
                                                       (if (gx#identifier?
                                                            _hd32573271_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd32573271_)
                                                               ((lambda (_L3276_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body3293_
                                 (filter (lambda (_$obj3290_)
                                           (not (void? _$obj3290_)))
                                         _L3276_)))
                            (if _block3247_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block3247_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body3293_))
                                (if (null? _c-body3293_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body3293_)))))
                        _tl32583273_)
                       (_g32533263_ _g32543266_))
                   (_g32533263_ _g32543266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g32533263_
                                                    _g32543266_)))))
                                        (_g32523295_ _compiled3250_))))))))
                          _tl32173232_)))
                     (_g32123222_ _g32133225_)))))
          (_g32113298_ _stx3209_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx3140_ _state3141_)
      (begin
        (gxc#meta-state-end-phi! _state3141_)
        (let ((_g31433157_
               (lambda (_g31443154_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g31443154_))))
          (let ((_g31423206_
                 (lambda (_g31443160_)
                   (if (gx#stx-pair? _g31443160_)
                       (let ((_e31473162_ (gx#stx-e _g31443160_)))
                         (let ((_hd31483165_ (##car _e31473162_))
                               (_tl31493167_ (##cdr _e31473162_)))
                           (if (gx#stx-pair? _tl31493167_)
                               (let ((_e31503170_ (gx#stx-e _tl31493167_)))
                                 (let ((_hd31513173_ (##car _e31503170_))
                                       (_tl31523175_ (##cdr _e31503170_)))
                                   ((lambda (_L3178_ _L3179_)
                                      (let ((_key3192_
                                             (gx#core-identifier-key _L3179_)))
                                        (begin
                                          (if (interned-symbol? _key3192_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx3140_
                                               _L3179_
                                               _key3192_))
                                          (let ((_ctx3194_
                                                 (gx#syntax-local-e__0
                                                  _L3179_)))
                                            (let ((_code3197_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx3194_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state3141_))
                                                    gx#current-expander-context
                                                    _ctx3194_)))
                                              (let ((_rt3199_
                                                     (hash-get
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx3194_)))
                                                (let ((_loader3201_
                                                       (if _rt3199_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt3199_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid3203_
                                                         (gx#stx-e _L3179_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state3141_)
                                                        (cons '%#module
                                                              (cons _modid3203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code3197_ _loader3201_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl31523175_
                                    _hd31513173_)))
                               (_g31433157_ _g31443160_))))
                       (_g31433157_ _g31443160_)))))
            (_g31423206_ _stx3140_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx3130_ _context-chain3131_)
      ((letrec ((_lp3133_
                 (lambda (_ctx3135_ _path3136_)
                   (let ((_super3138_
                          (##structure-ref
                           _ctx3135_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super3138_ _context-chain3131_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx3135_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path3136_)
                         (if (##structure-instance-of?
                              _super3138_
                              'gx#module-context::t)
                             (_lp3133_
                              _super3138_
                              (cons (car (##structure-ref
                                          _ctx3135_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path3136_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx3135_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path3136_)))))))
         _lp3133_)
       _ctx3130_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp3125_
                 (lambda (_ctx3127_ _r3128_)
                   (if (##structure-instance-of?
                        _ctx3127_
                        'gx#module-context::t)
                       (_lp3125_
                        (##structure-ref _ctx3127_ '3 gx#phi-context::t '#f)
                        (cons _ctx3127_ _r3128_))
                       _r3128_))))
         _lp3125_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx2894_ _state2895_)
      (let ((_context-chain2897_ (gxc#current-context-chain)))
        (let ((_make-import-spec2898_
               (lambda (_in3061_)
                 (let ((_in30623074_ _in3061_))
                   (let ((_E30643078_
                          (lambda ()
                            (error '"No clause matching" _in30623074_))))
                     (let ((_K30653088_
                            (lambda (_phi3081_
                                     _name3082_
                                     _src-name3083_
                                     _src-phi3084_
                                     _src-key3085_
                                     _src-ctx3086_)
                              (cons _phi3081_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name3082_)
                                          (cons _src-phi3084_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name3083_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in30623074_)
                           (let ((_e30663091_ (##vector-ref _in30623074_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e30663091_)
                                 (let ((_e30693094_
                                        (##vector-ref _e30663091_ '1)))
                                   (let ((_src-ctx3097_ _e30693094_))
                                     (let ((_e30703099_
                                            (##vector-ref _e30663091_ '2)))
                                       (let ((_src-key3102_ _e30703099_))
                                         (let ((_e30713104_
                                                (##vector-ref _e30663091_ '3)))
                                           (let ((_src-phi3107_ _e30713104_))
                                             (let ((_e30723109_
                                                    (##vector-ref
                                                     _e30663091_
                                                     '4)))
                                               (let ((_src-name3112_
                                                      _e30723109_))
                                                 (let ((_e30673114_
                                                        (##vector-ref
                                                         _in30623074_
                                                         '2)))
                                                   (let ((_name3117_
                                                          _e30673114_))
                                                     (let ((_e30683119_
                                                            (##vector-ref
                                                             _in30623074_
                                                             '3)))
                                                       (let ((_phi3122_
                                                              _e30683119_))
                                                         (_K30653088_
                                                          _phi3122_
                                                          _name3117_
                                                          _src-name3112_
                                                          _src-phi3107_
                                                          _src-key3102_
                                                          _src-ctx3097_)))))))))))))
                                 (_E30643078_)))
                           (_E30643078_))))))))
          (let ((_make-import-path2899_
                 (lambda (_ctx3059_)
                   (gxc#generate-meta-import-path
                    _ctx3059_
                    _context-chain2897_))))
            (let ((_make-import-spec-in2900_
                   (lambda (_ctx3056_ _in3057_)
                     (cons 'spec:
                           (cons (_make-import-path2899_ _ctx3056_)
                                 (reverse _in3057_))))))
              (begin
                (gxc#meta-state-end-phi! _state2895_)
                (let ((_g29022912_
                       (lambda (_g29032909_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g29032909_))))
                  (let ((_g29013053_
                         (lambda (_g29032915_)
                           (if (gx#stx-pair? _g29032915_)
                               (let ((_e29052917_ (gx#stx-e _g29032915_)))
                                 (let ((_hd29062920_ (##car _e29052917_))
                                       (_tl29072922_ (##cdr _e29052917_)))
                                   ((lambda (_L2925_)
                                      ((letrec ((_lp2936_
                                                 (lambda (_rest2938_
                                                          _current-src2939_
                                                          _current-in2940_
                                                          _r2941_)
                                                   (let ((_rest29422950_
                                                          _rest2938_))
                                                     (let ((_E29452954_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest29422950_))))
               (let ((_else29442960_
                      (lambda ()
                        (let ((_r2958_ (if _current-src2939_
                                           (cons (_make-import-spec-in2900_
                                                  _current-src2939_
                                                  _current-in2940_)
                                                 _r2941_)
                                           _r2941_)))
                          (cons '%#import (reverse _r2958_))))))
                 (let ((_K29463041_
                        (lambda (_rest2963_ _in2964_)
                          (if (##structure-direct-instance-of?
                               _in2964_
                               'gx#module-import::t)
                              (let ((_in29652972_ _in2964_))
                                (let ((_E29672976_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in29652972_))))
                                  (let ((_K29682981_
                                         (lambda (_src-ctx2979_)
                                           (if (eq? _current-src2939_
                                                    _src-ctx2979_)
                                               (_lp2936_
                                                _rest2963_
                                                _current-src2939_
                                                (cons (_make-import-spec2898_
                                                       _in2964_)
                                                      _current-in2940_)
                                                _r2941_)
                                               (if _current-src2939_
                                                   (_lp2936_
                                                    _rest2963_
                                                    _src-ctx2979_
                                                    (cons (_make-import-spec2898_
                                                           _in2964_)
                                                          '())
                                                    (cons (_make-import-spec-in2900_
                                                           _current-src2939_
                                                           _current-in2940_)
                                                          _r2941_))
                                                   (_lp2936_
                                                    _rest2963_
                                                    _src-ctx2979_
                                                    (cons (_make-import-spec2898_
                                                           _in2964_)
                                                          '())
                                                    _r2941_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in29652972_)
                                        (let ((_e29692984_
                                               (##vector-ref _in29652972_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e29692984_)
                                              (let ((_e29702987_
                                                     (##vector-ref
                                                      _e29692984_
                                                      '1)))
                                                (let ((_src-ctx2990_
                                                       _e29702987_))
                                                  (_K29682981_ _src-ctx2990_)))
                                              (_E29672976_)))
                                        (_E29672976_)))))
                              (if (##structure-direct-instance-of?
                                   _in2964_
                                   'gx#import-set::t)
                                  (let ((_phi2992_
                                         (##structure-ref
                                          _in2964_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src2994_
                                           (##structure-ref
                                            _in2964_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in3034_
                                             (let ((_g29953004_
                                                    (_make-import-path2899_
                                                     _src2994_)))
                                               (let ((_E29983008_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g29953004_))))
                                                 (let ((_try-match29973019_
                                                        (lambda ()
                                                          (let ((_K29993014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path3012_) (cons 'in: _path3012_))))
                    (let ((_path3017_ _g29953004_))
                      (_K29993014_ _path3017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K30003024_
                                                          (lambda (_path3022_)
                                                            _path3022_)))
                                                     (if (##pair? _g29953004_)
                                                         (let ((_hd30013027_
                                                                (##car _g29953004_))
                                                               (_tl30023029_
                                                                (##cdr _g29953004_)))
                                                           (let ((_path3032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd30013027_))
                     (if (##null? _tl30023029_)
                         (_K30003024_ _path3032_)
                         (_try-match29973019_))))
                 (_try-match29973019_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r3036_ (if _current-src2939_
                                                           (cons (_make-import-spec-in2900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src2939_
                          _current-in2940_)
                         _r2941_)
                   _r2941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp2936_
                                             _rest2963_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi2992_)
                                                       _src-in3034_
                                                       (cons 'phi:
                                                             (cons _phi2992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in3034_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r3036_)))))))
                                  (if (##structure-instance-of?
                                       _in2964_
                                       'gx#module-context::t)
                                      (let ((_r3039_ (if _current-src2939_
                                                         (cons (_make-import-spec-in2900_
                                                                _current-src2939_
                                                                _current-in2940_)
                                                               _r2941_)
                                                         _r2941_)))
                                        (_lp2936_
                                         _rest2963_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path2899_
                                                      _in2964_))
                                               _r3039_)))
                                      '#!void))))))
                   (if (##pair? _rest29422950_)
                       (let ((_hd29473044_ (##car _rest29422950_))
                             (_tl29483046_ (##cdr _rest29422950_)))
                         (let ((_in3049_ _hd29473044_))
                           (let ((_rest3051_ _tl29483046_))
                             (_K29463041_ _rest3051_ _in3049_))))
                       (_else29442960_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp2936_)
                                       _L2925_
                                       '#f
                                       '()
                                       '()))
                                    _tl29072922_)))
                               (_g29022912_ _g29032915_)))))
                    (_g29013053_ _stx2894_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx2704_ _state2705_)
      (let ((_context-chain2707_ (gxc#current-context-chain)))
        (let ((_make-import-path2708_
               (lambda (_ctx2892_)
                 (gxc#generate-meta-import-path
                  _ctx2892_
                  _context-chain2707_))))
          (let ((_g27102720_
                 (lambda (_g27112717_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g27112717_))))
            (let ((_g27092889_
                   (lambda (_g27112723_)
                     (if (gx#stx-pair? _g27112723_)
                         (let ((_e27132725_ (gx#stx-e _g27112723_)))
                           (let ((_hd27142728_ (##car _e27132725_))
                                 (_tl27152730_ (##cdr _e27132725_)))
                             ((lambda (_L2733_)
                                ((letrec ((_lp2744_
                                           (lambda (_rest2746_ _r2747_)
                                             (let ((_rest27482756_ _rest2746_))
                                               (let ((_E27512760_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest27482756_))))
                                                 (let ((_else27502764_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r2747_)))))
                                                   (let ((_K27522877_
                                                          (lambda (_rest2767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out2768_)
                    (let ((_out27692782_ _out2768_))
                      (let ((_E27722786_
                             (lambda ()
                               (error '"No clause matching" _out27692782_))))
                        (let ((_try-match27712849_
                               (lambda ()
                                 (let ((_K27732836_
                                        (lambda (_phi2790_ _src2791_)
                                          (let ((_out2831_
                                                 (if _src2791_
                                                     (cons 'import:
                                                           (cons (let ((_g27922801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path2708_ _src2791_)))
                           (let ((_E27952805_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g27922801_))))
                             (let ((_try-match27942816_
                                    (lambda ()
                                      (let ((_K27962811_
                                             (lambda (_path2809_)
                                               (cons 'in: _path2809_))))
                                        (let ((_path2814_ _g27922801_))
                                          (_K27962811_ _path2814_))))))
                               (let ((_K27972821_
                                      (lambda (_path2819_) _path2819_)))
                                 (if (##pair? _g27922801_)
                                     (let ((_hd27982824_ (##car _g27922801_))
                                           (_tl27992826_ (##cdr _g27922801_)))
                                       (let ((_path2829_ _hd27982824_))
                                         (if (##null? _tl27992826_)
                                             (_K27972821_ _path2829_)
                                             (_try-match27942816_))))
                                     (_try-match27942816_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out2833_
                                                   (if (fxzero? _phi2790_)
                                                       _out2831_
                                                       (cons 'phi:
                                                             (cons _phi2790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out2831_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp2744_
                                                 _rest2767_
                                                 (cons _out2833_
                                                       _r2747_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out27692782_)
                                       (let ((_e27742839_
                                              (##vector-ref _out27692782_ '1)))
                                         (let ((_src2842_ _e27742839_))
                                           (let ((_e27752844_
                                                  (##vector-ref
                                                   _out27692782_
                                                   '2)))
                                             (let ((_phi2847_ _e27752844_))
                                               (_K27732836_
                                                _phi2847_
                                                _src2842_)))))
                                       (_E27722786_))))))
                          (let ((_K27762856_
                                 (lambda (_name2852_ _phi2853_ _key2854_)
                                   (_lp2744_
                                    _rest2767_
                                    (cons (cons 'spec:
                                                (cons _phi2853_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key2854_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name2852_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r2747_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out27692782_)
                                (let ((_e27772859_
                                       (##vector-ref _out27692782_ '1)))
                                  (let ((_e27782862_
                                         (##vector-ref _out27692782_ '2)))
                                    (let ((_key2865_ _e27782862_))
                                      (let ((_e27792867_
                                             (##vector-ref _out27692782_ '3)))
                                        (let ((_phi2870_ _e27792867_))
                                          (let ((_e27802872_
                                                 (##vector-ref
                                                  _out27692782_
                                                  '4)))
                                            (let ((_name2875_ _e27802872_))
                                              (_K27762856_
                                               _name2875_
                                               _phi2870_
                                               _key2865_))))))))
                                (_try-match27712849_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest27482756_)
                                                         (let ((_hd27532880_
                                                                (##car _rest27482756_))
                                                               (_tl27542882_
                                                                (##cdr _rest27482756_)))
                                                           (let ((_out2885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd27532880_))
                     (let ((_rest2887_ _tl27542882_))
                       (_K27522877_ _rest2887_ _out2885_))))
                 (_else27502764_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp2744_)
                                 _L2733_
                                 '()))
                              _tl27152730_)))
                         (_g27102720_ _g27112723_)))))
              (_g27092889_ _stx2704_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx2665_ _state2666_)
      (begin
        (gxc#meta-state-end-phi! _state2666_)
        (let ((_g26682678_
               (lambda (_g26692675_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g26692675_))))
          (let ((_g26672701_
                 (lambda (_g26692681_)
                   (if (gx#stx-pair? _g26692681_)
                       (let ((_e26712683_ (gx#stx-e _g26692681_)))
                         (let ((_hd26722686_ (##car _e26712683_))
                               (_tl26732688_ (##cdr _e26712683_)))
                           ((lambda (_L2691_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L2691_)))
                            _tl26732688_)))
                       (_g26682678_ _g26692681_)))))
            (_g26672701_ _stx2665_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx2536_ _state2537_)
      (let ((_generate12539_
             (lambda (_id2660_ _eid2661_)
               (let ((_eid2663_ (gx#stx-e _eid2661_)))
                 (begin
                   (if (interned-symbol? _eid2663_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx2536_
                        _eid2663_))
                   (cons (gxc#generate-runtime-identifier _id2660_)
                         (cons _eid2663_ '())))))))
        (let ((_g25412569_
               (lambda (_g25422566_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g25422566_))))
          (let ((_g25402657_
                 (lambda (_g25422572_)
                   (if (gx#stx-pair? _g25422572_)
                       (let ((_e25452574_ (gx#stx-e _g25422572_)))
                         (let ((_hd25462577_ (##car _e25452574_))
                               (_tl25472579_ (##cdr _e25452574_)))
                           (if (gx#stx-pair/null? _tl25472579_)
                               (if (fx>= (gx#stx-length _tl25472579_) '0)
                                   (let ((_g7176_ (gx#syntax-split-splice
                                                   _tl25472579_
                                                   '0)))
                                     (begin
                                       (let ((_g7177_ (values-count _g7176_)))
                                         (if (not (fx= _g7177_ 2))
                                             (error "Context expects 2 values"
                                                    _g7177_)))
                                       (let ((_target25482582_
                                              (values-ref _g7176_ 0))
                                             (_tl25502584_
                                              (values-ref _g7176_ 1)))
                                         (if (gx#stx-null? _tl25502584_)
                                             (letrec ((_loop25512587_
                                                       (lambda (_hd25492590_
                                                                _eid25552592_
                                                                _id25562594_)
                                                         (if (gx#stx-pair?
                                                              _hd25492590_)
                                                             (let ((_e25522597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd25492590_)))
                       (let ((_lp-hd25532600_ (##car _e25522597_))
                             (_lp-tl25542602_ (##cdr _e25522597_)))
                         (if (gx#stx-pair? _lp-hd25532600_)
                             (let ((_e25592605_ (gx#stx-e _lp-hd25532600_)))
                               (let ((_hd25602608_ (##car _e25592605_))
                                     (_tl25612610_ (##cdr _e25592605_)))
                                 (if (gx#stx-pair? _tl25612610_)
                                     (let ((_e25622613_
                                            (gx#stx-e _tl25612610_)))
                                       (let ((_hd25632616_ (##car _e25622613_))
                                             (_tl25642618_
                                              (##cdr _e25622613_)))
                                         (if (gx#stx-null? _tl25642618_)
                                             (_loop25512587_
                                              _lp-tl25542602_
                                              (cons _hd25632616_ _eid25552592_)
                                              (cons _hd25602608_ _id25562594_))
                                             (_g25412569_ _g25422572_))))
                                     (_g25412569_ _g25422572_))))
                             (_g25412569_ _g25422572_))))
                     (let ((_eid25572621_ (reverse _eid25552592_))
                           (_id25582623_ (reverse _id25562594_)))
                       ((lambda (_L2626_ _L2627_)
                          (cons '%#extern
                                (map _generate12539_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g26422645_ _g26432647_)
                                                (cons _g26422645_ _g26432647_))
                                              '()
                                              _L2627_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g26492652_ _g26502654_)
                                                (cons _g26492652_ _g26502654_))
                                              '()
                                              _L2626_)))))
                        _eid25572621_
                        _id25582623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop25512587_
                                                _target25482582_
                                                '()
                                                '()))
                                             (_g25412569_ _g25422572_)))))
                                   (_g25412569_ _g25422572_))
                               (_g25412569_ _g25422572_))))
                       (_g25412569_ _g25422572_)))))
            (_g25402657_ _stx2536_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx2331_ _state2332_)
      (let ((_generate12334_
             (lambda (_id2531_)
               (let ((_eid2533_ (gxc#generate-runtime-binding-id _id2531_))
                     (_ident2534_ (gxc#generate-runtime-identifier _id2531_)))
                 (cons '%#define-runtime
                       (cons _ident2534_ (cons _eid2533_ '())))))))
        (let ((_generate*2335_
               (lambda (_all2499_)
                 (let ((_all25002508_ _all2499_))
                   (let ((_E25032512_
                          (lambda ()
                            (error '"No clause matching" _all25002508_))))
                     (let ((_else25022516_
                            (lambda () (cons '%#begin _all2499_))))
                       (let ((_K25042521_ (lambda (_one2519_) _one2519_)))
                         (if (##pair? _all25002508_)
                             (let ((_hd25052524_ (##car _all25002508_))
                                   (_tl25062526_ (##cdr _all25002508_)))
                               (let ((_one2529_ _hd25052524_))
                                 (if (##null? _tl25062526_)
                                     (_K25042521_ _one2529_)
                                     (_else25022516_))))
                             (_else25022516_)))))))))
          (let ((_g23372354_
                 (lambda (_g23382351_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g23382351_))))
            (let ((_g23362496_
                   (lambda (_g23382357_)
                     (if (gx#stx-pair? _g23382357_)
                         (let ((_e23412359_ (gx#stx-e _g23382357_)))
                           (let ((_hd23422362_ (##car _e23412359_))
                                 (_tl23432364_ (##cdr _e23412359_)))
                             (if (gx#stx-pair? _tl23432364_)
                                 (let ((_e23442367_ (gx#stx-e _tl23432364_)))
                                   (let ((_hd23452370_ (##car _e23442367_))
                                         (_tl23462372_ (##cdr _e23442367_)))
                                     (if (gx#stx-pair? _tl23462372_)
                                         (let ((_e23472375_
                                                (gx#stx-e _tl23462372_)))
                                           (let ((_hd23482378_
                                                  (##car _e23472375_))
                                                 (_tl23492380_
                                                  (##cdr _e23472375_)))
                                             (if (gx#stx-null? _tl23492380_)
                                                 ((lambda (_L2383_ _L2384_)
                                                    ((letrec ((_lp2400_
                                                               (lambda (_rest2402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r2403_)
                         (let ((_g24082424_
                                (lambda (_g24092421_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g24092421_))))
                           (let ((_g24072431_
                                  (lambda (_g24092427_)
                                    ((lambda ()
                                       (_generate*2335_ (reverse _r2403_)))))))
                             (let ((_g24062447_
                                    (lambda (_g24092434_)
                                      ((lambda (_L2436_)
                                         (if (gx#identifier? _L2436_)
                                             (_generate*2335_
                                              (foldl cons
                                                     (cons (_generate12334_
                                                            _L2436_)
                                                           '())
                                                     _r2403_))
                                             (_g24072431_ _g24092434_)))
                                       _g24092434_))))
                               (let ((_g24052471_
                                      (lambda (_g24092450_)
                                        (if (gx#stx-pair? _g24092450_)
                                            (let ((_e24162452_
                                                   (gx#stx-e _g24092450_)))
                                              (let ((_hd24172455_
                                                     (##car _e24162452_))
                                                    (_tl24182457_
                                                     (##cdr _e24162452_)))
                                                ((lambda (_L2460_ _L2461_)
                                                   (_lp2400_
                                                    _L2460_
                                                    (cons (_generate12334_
                                                           _L2461_)
                                                          _r2403_)))
                                                 _tl24182457_
                                                 _hd24172455_)))
                                            (_g24062447_ _g24092450_)))))
                                 (let ((_g24042493_
                                        (lambda (_g24092474_)
                                          (if (gx#stx-pair? _g24092474_)
                                              (let ((_e24112476_
                                                     (gx#stx-e _g24092474_)))
                                                (let ((_hd24122479_
                                                       (##car _e24112476_))
                                                      (_tl24132481_
                                                       (##cdr _e24112476_)))
                                                  (if (gx#stx-datum?
                                                       _hd24122479_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd24122479_)
                          '#f)
                  ((lambda (_L2484_) (_lp2400_ _L2484_ _r2403_)) _tl24132481_)
                  (_g24052471_ _g24092474_))
              (_g24052471_ _g24092474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g24052471_ _g24092474_)))))
                                   (_g24042493_ _rest2402_)))))))))
               _lp2400_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L2384_
                                                     '()))
                                                  _hd23482378_
                                                  _hd23452370_)
                                                 (_g23372354_ _g23382357_))))
                                         (_g23372354_ _g23382357_))))
                                 (_g23372354_ _g23382357_))))
                         (_g23372354_ _g23382357_)))))
              (_g23362496_ _stx2331_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx2228_ _state2229_)
      (let ((_g22312248_
             (lambda (_g22322245_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g22322245_))))
        (let ((_g22302328_
               (lambda (_g22322251_)
                 (if (gx#stx-pair? _g22322251_)
                     (let ((_e22352253_ (gx#stx-e _g22322251_)))
                       (let ((_hd22362256_ (##car _e22352253_))
                             (_tl22372258_ (##cdr _e22352253_)))
                         (if (gx#stx-pair? _tl22372258_)
                             (let ((_e22382261_ (gx#stx-e _tl22372258_)))
                               (let ((_hd22392264_ (##car _e22382261_))
                                     (_tl22402266_ (##cdr _e22382261_)))
                                 (if (gx#stx-pair? _tl22402266_)
                                     (let ((_e22412269_
                                            (gx#stx-e _tl22402266_)))
                                       (let ((_hd22422272_ (##car _e22412269_))
                                             (_tl22432274_
                                              (##cdr _e22412269_)))
                                         (if (gx#stx-null? _tl22432274_)
                                             ((lambda (_L2277_ _L2278_)
                                                (let ((_eid2293_
                                                       (gxc#generate-runtime-binding-id
                                                        _L2278_)))
                                                  (let ((_phi2295_
                                                         (fx1+ (gx#current-expander-phi))))
                                                    (let ((_block2297_
                                                           (gxc#meta-state-begin-phi!
                                                            _state2229_
                                                            _phi2295_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g23002307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g23012304_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g23012304_))))
                    (let ((_g22992325_
                           (lambda (_g23012310_)
                             ((lambda (_L2312_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state2229_
                                   _phi2295_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L2312_ (cons _L2277_ '()))))))
                              _g23012310_))))
                      (_g22992325_ _eid2293_)))
                  (if _block2297_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block2297_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L2278_)
                                                    (cons _eid2293_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L2278_)
                                  (cons _eid2293_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd22422272_
                                              _hd22392264_)
                                             (_g22312248_ _g22322251_))))
                                     (_g22312248_ _g22322251_))))
                             (_g22312248_ _g22322251_))))
                     (_g22312248_ _g22322251_)))))
          (_g22302328_ _stx2228_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx2160_ _state2161_)
      (let ((_g21632180_
             (lambda (_g21642177_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g21642177_))))
        (let ((_g21622225_
               (lambda (_g21642183_)
                 (if (gx#stx-pair? _g21642183_)
                     (let ((_e21672185_ (gx#stx-e _g21642183_)))
                       (let ((_hd21682188_ (##car _e21672185_))
                             (_tl21692190_ (##cdr _e21672185_)))
                         (if (gx#stx-pair? _tl21692190_)
                             (let ((_e21702193_ (gx#stx-e _tl21692190_)))
                               (let ((_hd21712196_ (##car _e21702193_))
                                     (_tl21722198_ (##cdr _e21702193_)))
                                 (if (gx#stx-pair? _tl21722198_)
                                     (let ((_e21732201_
                                            (gx#stx-e _tl21722198_)))
                                       (let ((_hd21742204_ (##car _e21732201_))
                                             (_tl21752206_
                                              (##cdr _e21732201_)))
                                         (if (gx#stx-null? _tl21752206_)
                                             ((lambda (_L2209_ _L2210_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L2210_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2209_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd21742204_
                                              _hd21712196_)
                                             (_g21632180_ _g21642183_))))
                                     (_g21632180_ _g21642183_))))
                             (_g21632180_ _g21642183_))))
                     (_g21632180_ _g21642183_)))))
          (_g21622225_ _stx2160_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx2157_ _state2158_)
      (begin
        (gxc#meta-state-add-phi!
         _state2158_
         (gx#current-expander-phi)
         _stx2157_)
        (gxc#generate-meta-define-values% _stx2157_ _state2158_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx2154_ _state2155_)
      (begin
        (gxc#meta-state-add-phi!
         _state2155_
         (gx#current-expander-phi)
         _stx2154_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args2151_
      (apply make-struct-instance gxc#meta-state::t _$args2151_)))
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
    (lambda (_self2148_ _ctx2149_)
      (direct-struct-instance-init!
       _self2148_
       (symbol->string
        (##structure-ref _ctx2149_ '1 gx#expander-context::t '#f))
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
    (lambda _$args2145_
      (apply make-struct-instance gxc#meta-state-block::t _$args2145_)))
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
    (lambda (_state2104_ _phi2105_)
      (let ((_state21062114_ _state2104_))
        (let ((_E21082118_
               (lambda () (error '"No clause matching" _state21062114_))))
          (let ((_K21092127_
                 (lambda (_open2121_ _n2122_ _src2123_)
                   (if (hash-get _open2121_ _phi2105_)
                       '#f
                       (let ((_block-ref2125_
                              (string-append
                               _src2123_
                               '"__"
                               (number->string _n2122_))))
                         (begin
                           (##structure-set!
                            _state2104_
                            (fx1+ _n2122_)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (hash-put!
                            _open2121_
                            _phi2105_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi2105_
                             _n2122_
                             '()))
                           _block-ref2125_))))))
            (if (struct-instance? gxc#meta-state::t _state21062114_)
                (let ((_e21102130_ (##vector-ref _state21062114_ '1)))
                  (let ((_src2133_ _e21102130_))
                    (let ((_e21112135_ (##vector-ref _state21062114_ '2)))
                      (let ((_n2138_ _e21112135_))
                        (let ((_e21122140_ (##vector-ref _state21062114_ '3)))
                          (let ((_open2143_ _e21122140_))
                            (_K21092127_ _open2143_ _n2138_ _src2133_)))))))
                (_E21082118_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state2098_ _phi2099_ _stx2100_)
      (let ((_block2102_
             (hash-get
              (##structure-ref _state2098_ '3 gxc#meta-state::t '#f)
              _phi2099_)))
        (##structure-set!
         _block2102_
         (cons _stx2100_
               (##structure-ref _block2102_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state2093_)
      (begin
        (##structure-set!
         _state2093_
         (hash-fold
          (lambda (_g7178_ _block2095_ _r2096_) (cons _block2095_ _r2096_))
          (##structure-ref _state2093_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2093_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2093_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state2045_)
      (begin
        (gxc#meta-state-end-phi! _state2045_)
        (foldl (lambda (_block2047_ _r2048_)
                 (let ((_block20492058_ _block2047_))
                   (let ((_E20512062_
                          (lambda ()
                            (error '"No clause matching" _block20492058_))))
                     (let ((_K20522070_
                            (lambda (_code2065_ _n2066_ _phi2067_ _ctx2068_)
                              (if (null? _code2065_)
                                  _r2048_
                                  (cons (cons _ctx2068_
                                              (cons _phi2067_
                                                    (cons _n2066_
                                                          (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse _code2065_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _r2048_)))))
                       (if (struct-instance?
                            gxc#meta-state-block::t
                            _block20492058_)
                           (let ((_e20532073_
                                  (##vector-ref _block20492058_ '1)))
                             (let ((_ctx2076_ _e20532073_))
                               (let ((_e20542078_
                                      (##vector-ref _block20492058_ '2)))
                                 (let ((_phi2081_ _e20542078_))
                                   (let ((_e20552083_
                                          (##vector-ref _block20492058_ '3)))
                                     (let ((_n2086_ _e20552083_))
                                       (let ((_e20562088_
                                              (##vector-ref
                                               _block20492058_
                                               '4)))
                                         (let ((_code2091_ _e20562088_))
                                           (_K20522070_
                                            _code2091_
                                            _n2086_
                                            _phi2081_
                                            _ctx2076_)))))))))
                           (_E20512062_))))))
               '()
               (##structure-ref _state2045_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx2041_)
      (let ((_ht2043_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx2041_ _ht2043_)
          _ht2043_))))
  (define gxc#collect-refs-lambda%
    (lambda (_stx1973_ _ht1974_)
      (let ((_g19761993_
             (lambda (_g19771990_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g19771990_))))
        (let ((_g19752038_
               (lambda (_g19771996_)
                 (if (gx#stx-pair? _g19771996_)
                     (let ((_e19801998_ (gx#stx-e _g19771996_)))
                       (let ((_hd19812001_ (##car _e19801998_))
                             (_tl19822003_ (##cdr _e19801998_)))
                         (if (gx#stx-pair? _tl19822003_)
                             (let ((_e19832006_ (gx#stx-e _tl19822003_)))
                               (let ((_hd19842009_ (##car _e19832006_))
                                     (_tl19852011_ (##cdr _e19832006_)))
                                 (if (gx#stx-pair? _tl19852011_)
                                     (let ((_e19862014_
                                            (gx#stx-e _tl19852011_)))
                                       (let ((_hd19872017_ (##car _e19862014_))
                                             (_tl19882019_
                                              (##cdr _e19862014_)))
                                         (if (gx#stx-null? _tl19882019_)
                                             ((lambda (_L2022_ _L2023_)
                                                (gxc#compile-e
                                                 _L2022_
                                                 _ht1974_))
                                              _hd19872017_
                                              _hd19842009_)
                                             (_g19761993_ _g19771996_))))
                                     (_g19761993_ _g19771996_))))
                             (_g19761993_ _g19771996_))))
                     (_g19761993_ _g19771996_)))))
          (_g19752038_ _stx1973_)))))
  (define gxc#collect-refs-case-lambda%
    (lambda (_stx1855_ _ht1856_)
      (let ((_g18581886_
             (lambda (_g18591883_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g18591883_))))
        (let ((_g18571970_
               (lambda (_g18591889_)
                 (if (gx#stx-pair? _g18591889_)
                     (let ((_e18621891_ (gx#stx-e _g18591889_)))
                       (let ((_hd18631894_ (##car _e18621891_))
                             (_tl18641896_ (##cdr _e18621891_)))
                         (if (gx#stx-pair/null? _tl18641896_)
                             (if (fx>= (gx#stx-length _tl18641896_) '0)
                                 (let ((_g7179_ (gx#syntax-split-splice
                                                 _tl18641896_
                                                 '0)))
                                   (begin
                                     (let ((_g7180_ (values-count _g7179_)))
                                       (if (not (fx= _g7180_ 2))
                                           (error "Context expects 2 values"
                                                  _g7180_)))
                                     (let ((_target18651899_
                                            (values-ref _g7179_ 0))
                                           (_tl18671901_
                                            (values-ref _g7179_ 1)))
                                       (if (gx#stx-null? _tl18671901_)
                                           (letrec ((_loop18681904_
                                                     (lambda (_hd18661907_
                                                              _body18721909_
                                                              _hd18731911_)
                                                       (if (gx#stx-pair?
                                                            _hd18661907_)
                                                           (let ((_e18691914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd18661907_)))
                     (let ((_lp-hd18701917_ (##car _e18691914_))
                           (_lp-tl18711919_ (##cdr _e18691914_)))
                       (if (gx#stx-pair? _lp-hd18701917_)
                           (let ((_e18761922_ (gx#stx-e _lp-hd18701917_)))
                             (let ((_hd18771925_ (##car _e18761922_))
                                   (_tl18781927_ (##cdr _e18761922_)))
                               (if (gx#stx-pair? _tl18781927_)
                                   (let ((_e18791930_ (gx#stx-e _tl18781927_)))
                                     (let ((_hd18801933_ (##car _e18791930_))
                                           (_tl18811935_ (##cdr _e18791930_)))
                                       (if (gx#stx-null? _tl18811935_)
                                           (_loop18681904_
                                            _lp-tl18711919_
                                            (cons _hd18801933_ _body18721909_)
                                            (cons _hd18771925_ _hd18731911_))
                                           (_g18581886_ _g18591889_))))
                                   (_g18581886_ _g18591889_))))
                           (_g18581886_ _g18591889_))))
                   (let ((_body18741938_ (reverse _body18721909_))
                         (_hd18751940_ (reverse _hd18731911_)))
                     ((lambda (_L1943_ _L1944_)
                        (for-each
                         (lambda (_g19581960_)
                           (gxc#compile-e _g19581960_ _ht1856_))
                         (begin
                           '#!void
                           (foldr (lambda (_g19621965_ _g19631967_)
                                    (cons _g19621965_ _g19631967_))
                                  '()
                                  _L1943_))))
                      _body18741938_
                      _hd18751940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop18681904_
                                              _target18651899_
                                              '()
                                              '()))
                                           (_g18581886_ _g18591889_)))))
                                 (_g18581886_ _g18591889_))
                             (_g18581886_ _g18591889_))))
                     (_g18581886_ _g18591889_)))))
          (_g18571970_ _stx1855_)))))
  (define gxc#collect-refs-let-values%
    (lambda (_stx1708_ _ht1709_)
      (let ((_g17111746_
             (lambda (_g17121743_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g17121743_))))
        (let ((_g17101852_
               (lambda (_g17121749_)
                 (if (gx#stx-pair? _g17121749_)
                     (let ((_e17161751_ (gx#stx-e _g17121749_)))
                       (let ((_hd17171754_ (##car _e17161751_))
                             (_tl17181756_ (##cdr _e17161751_)))
                         (if (gx#stx-pair? _tl17181756_)
                             (let ((_e17191759_ (gx#stx-e _tl17181756_)))
                               (let ((_hd17201762_ (##car _e17191759_))
                                     (_tl17211764_ (##cdr _e17191759_)))
                                 (if (gx#stx-pair/null? _hd17201762_)
                                     (if (fx>= (gx#stx-length _hd17201762_) '0)
                                         (let ((_g7181_ (gx#syntax-split-splice
                                                         _hd17201762_
                                                         '0)))
                                           (begin
                                             (let ((_g7182_ (values-count
                                                             _g7181_)))
                                               (if (not (fx= _g7182_ 2))
                                                   (error "Context expects 2 values"
                                                          _g7182_)))
                                             (let ((_target17221767_
                                                    (values-ref _g7181_ 0))
                                                   (_tl17241769_
                                                    (values-ref _g7181_ 1)))
                                               (if (gx#stx-null? _tl17241769_)
                                                   (letrec ((_loop17251772_
                                                             (lambda (_hd17231775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr17291777_
                              _hd17301779_)
                       (if (gx#stx-pair? _hd17231775_)
                           (let ((_e17261782_ (gx#stx-e _hd17231775_)))
                             (let ((_lp-hd17271785_ (##car _e17261782_))
                                   (_lp-tl17281787_ (##cdr _e17261782_)))
                               (if (gx#stx-pair? _lp-hd17271785_)
                                   (let ((_e17331790_
                                          (gx#stx-e _lp-hd17271785_)))
                                     (let ((_hd17341793_ (##car _e17331790_))
                                           (_tl17351795_ (##cdr _e17331790_)))
                                       (if (gx#stx-pair? _tl17351795_)
                                           (let ((_e17361798_
                                                  (gx#stx-e _tl17351795_)))
                                             (let ((_hd17371801_
                                                    (##car _e17361798_))
                                                   (_tl17381803_
                                                    (##cdr _e17361798_)))
                                               (if (gx#stx-null? _tl17381803_)
                                                   (_loop17251772_
                                                    _lp-tl17281787_
                                                    (cons _hd17371801_
                                                          _expr17291777_)
                                                    (cons _hd17341793_
                                                          _hd17301779_))
                                                   (_g17111746_ _g17121749_))))
                                           (_g17111746_ _g17121749_))))
                                   (_g17111746_ _g17121749_))))
                           (let ((_expr17311806_ (reverse _expr17291777_))
                                 (_hd17321808_ (reverse _hd17301779_)))
                             (if (gx#stx-pair? _tl17211764_)
                                 (let ((_e17391811_ (gx#stx-e _tl17211764_)))
                                   (let ((_hd17401814_ (##car _e17391811_))
                                         (_tl17411816_ (##cdr _e17391811_)))
                                     (if (gx#stx-null? _tl17411816_)
                                         ((lambda (_L1819_ _L1820_ _L1821_)
                                            (if (for-each
                                                 (lambda (_g18401842_)
                                                   (gxc#compile-e
                                                    _g18401842_
                                                    _ht1709_))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g18441847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g18451849_)
                    (cons _g18441847_ _g18451849_))
                  '()
                  _L1820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gxc#compile-e
                                                 _L1819_
                                                 _ht1709_)
                                                (_g17111746_ _g17121749_)))
                                          _hd17401814_
                                          _expr17311806_
                                          _hd17321808_)
                                         (_g17111746_ _g17121749_))))
                                 (_g17111746_ _g17121749_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop17251772_
                                                      _target17221767_
                                                      '()
                                                      '()))
                                                   (_g17111746_
                                                    _g17121749_)))))
                                         (_g17111746_ _g17121749_))
                                     (_g17111746_ _g17121749_))))
                             (_g17111746_ _g17121749_))))
                     (_g17111746_ _g17121749_)))))
          (_g17101852_ _stx1708_)))))
  (define gxc#collect-refs-ref%
    (lambda (_stx1651_ _ht1652_)
      (let ((_g16541667_
             (lambda (_g16551664_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g16551664_))))
        (let ((_g16531705_
               (lambda (_g16551670_)
                 (if (gx#stx-pair? _g16551670_)
                     (let ((_e16571672_ (gx#stx-e _g16551670_)))
                       (let ((_hd16581675_ (##car _e16571672_))
                             (_tl16591677_ (##cdr _e16571672_)))
                         (if (gx#stx-pair? _tl16591677_)
                             (let ((_e16601680_ (gx#stx-e _tl16591677_)))
                               (let ((_hd16611683_ (##car _e16601680_))
                                     (_tl16621685_ (##cdr _e16601680_)))
                                 (if (gx#stx-null? _tl16621685_)
                                     ((lambda (_L1688_)
                                        (let ((_bind1700_
                                               (gx#resolve-identifier__0
                                                _L1688_)))
                                          (let ((_eid1702_
                                                 (if _bind1700_
                                                     (##structure-ref
                                                      _bind1700_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L1688_))))
                                            (let ()
                                              (hash-put!
                                               _ht1652_
                                               _eid1702_
                                               _eid1702_)))))
                                      _hd16611683_)
                                     (_g16541667_ _g16551670_))))
                             (_g16541667_ _g16551670_))))
                     (_g16541667_ _g16551670_)))))
          (_g16531705_ _stx1651_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx1578_ _ht1579_)
      (let ((_g15811598_
             (lambda (_g15821595_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15821595_))))
        (let ((_g15801648_
               (lambda (_g15821601_)
                 (if (gx#stx-pair? _g15821601_)
                     (let ((_e15851603_ (gx#stx-e _g15821601_)))
                       (let ((_hd15861606_ (##car _e15851603_))
                             (_tl15871608_ (##cdr _e15851603_)))
                         (if (gx#stx-pair? _tl15871608_)
                             (let ((_e15881611_ (gx#stx-e _tl15871608_)))
                               (let ((_hd15891614_ (##car _e15881611_))
                                     (_tl15901616_ (##cdr _e15881611_)))
                                 (if (gx#stx-pair? _tl15901616_)
                                     (let ((_e15911619_
                                            (gx#stx-e _tl15901616_)))
                                       (let ((_hd15921622_ (##car _e15911619_))
                                             (_tl15931624_
                                              (##cdr _e15911619_)))
                                         (if (gx#stx-null? _tl15931624_)
                                             ((lambda (_L1627_ _L1628_)
                                                (let ((_bind1643_
                                                       (gx#resolve-identifier__0
                                                        _L1628_)))
                                                  (let ((_eid1645_
                                                         (if _bind1643_
                                                             (##structure-ref
                                                              _bind1643_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L1628_))))
                                                    (let ()
                                                      (begin
                                                        (hash-put!
                                                         _ht1579_
                                                         _eid1645_
                                                         _eid1645_)
                                                        (gxc#compile-e
                                                         _L1627_
                                                         _ht1579_))))))
                                              _hd15921622_
                                              _hd15891614_)
                                             (_g15811598_ _g15821601_))))
                                     (_g15811598_ _g15821601_))))
                             (_g15811598_ _g15821601_))))
                     (_g15811598_ _g15821601_)))))
          (_g15801648_ _stx1578_)))))
  (define gxc#collect-refs-struct-instancep%
    (lambda (_stx1510_ _ht1511_)
      (let ((_g15131530_
             (lambda (_g15141527_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g15141527_))))
        (let ((_g15121575_
               (lambda (_g15141533_)
                 (if (gx#stx-pair? _g15141533_)
                     (let ((_e15171535_ (gx#stx-e _g15141533_)))
                       (let ((_hd15181538_ (##car _e15171535_))
                             (_tl15191540_ (##cdr _e15171535_)))
                         (if (gx#stx-pair? _tl15191540_)
                             (let ((_e15201543_ (gx#stx-e _tl15191540_)))
                               (let ((_hd15211546_ (##car _e15201543_))
                                     (_tl15221548_ (##cdr _e15201543_)))
                                 (if (gx#stx-pair? _tl15221548_)
                                     (let ((_e15231551_
                                            (gx#stx-e _tl15221548_)))
                                       (let ((_hd15241554_ (##car _e15231551_))
                                             (_tl15251556_
                                              (##cdr _e15231551_)))
                                         (if (gx#stx-null? _tl15251556_)
                                             ((lambda (_L1559_ _L1560_)
                                                (gxc#compile-e
                                                 _L1559_
                                                 _ht1511_))
                                              _hd15241554_
                                              _hd15211546_)
                                             (_g15131530_ _g15141533_))))
                                     (_g15131530_ _g15141533_))))
                             (_g15131530_ _g15141533_))))
                     (_g15131530_ _g15141533_)))))
          (_g15121575_ _stx1510_)))))
  (define gxc#collect-refs-struct-ref%
    (lambda (_stx1426_ _ht1427_)
      (let ((_g14291450_
             (lambda (_g14301447_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g14301447_))))
        (let ((_g14281507_
               (lambda (_g14301453_)
                 (if (gx#stx-pair? _g14301453_)
                     (let ((_e14341455_ (gx#stx-e _g14301453_)))
                       (let ((_hd14351458_ (##car _e14341455_))
                             (_tl14361460_ (##cdr _e14341455_)))
                         (if (gx#stx-pair? _tl14361460_)
                             (let ((_e14371463_ (gx#stx-e _tl14361460_)))
                               (let ((_hd14381466_ (##car _e14371463_))
                                     (_tl14391468_ (##cdr _e14371463_)))
                                 (if (gx#stx-pair? _tl14391468_)
                                     (let ((_e14401471_
                                            (gx#stx-e _tl14391468_)))
                                       (let ((_hd14411474_ (##car _e14401471_))
                                             (_tl14421476_
                                              (##cdr _e14401471_)))
                                         (if (gx#stx-pair? _tl14421476_)
                                             (let ((_e14431479_
                                                    (gx#stx-e _tl14421476_)))
                                               (let ((_hd14441482_
                                                      (##car _e14431479_))
                                                     (_tl14451484_
                                                      (##cdr _e14431479_)))
                                                 (if (gx#stx-null?
                                                      _tl14451484_)
                                                     ((lambda (_L1487_
                                                               _L1488_
                                                               _L1489_)
                                                        (begin
                                                          (gxc#compile-e
                                                           _L1489_
                                                           _ht1427_)
                                                          (gxc#compile-e
                                                           _L1488_
                                                           _ht1427_)
                                                          (gxc#compile-e
                                                           _L1487_
                                                           _ht1427_)))
                                                      _hd14441482_
                                                      _hd14411474_
                                                      _hd14381466_)
                                                     (_g14291450_
                                                      _g14301453_))))
                                             (_g14291450_ _g14301453_))))
                                     (_g14291450_ _g14301453_))))
                             (_g14291450_ _g14301453_))))
                     (_g14291450_ _g14301453_)))))
          (_g14281507_ _stx1426_)))))
  (define gxc#collect-refs-struct-setq%
    (lambda (_stx1326_ _ht1327_)
      (let ((_g13291354_
             (lambda (_g13301351_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g13301351_))))
        (let ((_g13281423_
               (lambda (_g13301357_)
                 (if (gx#stx-pair? _g13301357_)
                     (let ((_e13351359_ (gx#stx-e _g13301357_)))
                       (let ((_hd13361362_ (##car _e13351359_))
                             (_tl13371364_ (##cdr _e13351359_)))
                         (if (gx#stx-pair? _tl13371364_)
                             (let ((_e13381367_ (gx#stx-e _tl13371364_)))
                               (let ((_hd13391370_ (##car _e13381367_))
                                     (_tl13401372_ (##cdr _e13381367_)))
                                 (if (gx#stx-pair? _tl13401372_)
                                     (let ((_e13411375_
                                            (gx#stx-e _tl13401372_)))
                                       (let ((_hd13421378_ (##car _e13411375_))
                                             (_tl13431380_
                                              (##cdr _e13411375_)))
                                         (if (gx#stx-pair? _tl13431380_)
                                             (let ((_e13441383_
                                                    (gx#stx-e _tl13431380_)))
                                               (let ((_hd13451386_
                                                      (##car _e13441383_))
                                                     (_tl13461388_
                                                      (##cdr _e13441383_)))
                                                 (if (gx#stx-pair?
                                                      _tl13461388_)
                                                     (let ((_e13471391_
                                                            (gx#stx-e
                                                             _tl13461388_)))
                                                       (let ((_hd13481394_
                                                              (##car _e13471391_))
                                                             (_tl13491396_
                                                              (##cdr _e13471391_)))
                                                         (if (gx#stx-null?
                                                              _tl13491396_)
                                                             ((lambda (_L1399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L1400_
                               _L1401_
                               _L1402_)
                        (begin
                          (gxc#compile-e _L1402_ _ht1327_)
                          (gxc#compile-e _L1401_ _ht1327_)
                          (gxc#compile-e _L1400_ _ht1327_)
                          (gxc#compile-e _L1399_ _ht1327_)))
                      _hd13481394_
                      _hd13451386_
                      _hd13421378_
                      _hd13391370_)
                     (_g13291354_ _g13301357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g13291354_
                                                      _g13301357_))))
                                             (_g13291354_ _g13301357_))))
                                     (_g13291354_ _g13301357_))))
                             (_g13291354_ _g13301357_))))
                     (_g13291354_ _g13301357_)))))
          (_g13281423_ _stx1326_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx1288_)
      (let ((_g12901300_
             (lambda (_g12911297_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g12911297_))))
        (let ((_g12891323_
               (lambda (_g12911303_)
                 (if (gx#stx-pair? _g12911303_)
                     (let ((_e12931305_ (gx#stx-e _g12911303_)))
                       (let ((_hd12941308_ (##car _e12931305_))
                             (_tl12951310_ (##cdr _e12931305_)))
                         ((lambda (_L1313_) (ormap gxc#compile-e _L1313_))
                          _tl12951310_)))
                     (_g12901300_ _g12911303_)))))
          (_g12891323_ _stx1288_))))))
