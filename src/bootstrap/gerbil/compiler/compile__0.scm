(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx9220_ . _args9221_)
      (let ((_g92239233_
             (lambda (_g92249230_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92249230_))))
        (let ((_g92229261_
               (lambda (_g92249236_)
                 (if (gx#stx-pair? _g92249236_)
                     (let ((_e92269238_ (gx#stx-e _g92249236_)))
                       (let ((_hd92279241_ (##car _e92269238_))
                             (_tl92289243_ (##cdr _e92269238_)))
                         ((lambda (_L9246_)
                            (let ((_$e9256_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L9246_)
                                    '#f)))
                              (if _$e9256_
                                  ((lambda (_method9259_)
                                     (apply _method9259_ _stx9220_ _args9221_))
                                   _$e9256_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx9220_
                                   _L9246_))))
                          _hd92279241_)))
                     (_g92239233_ _g92249236_)))))
          (_g92229261_ _stx9220_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl9217_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9217_ '%#lambda void)
           (table-set! _tbl9217_ '%#case-lambda void)
           (table-set! _tbl9217_ '%#let-values void)
           (table-set! _tbl9217_ '%#letrec-values void)
           (table-set! _tbl9217_ '%#letrec*-values void)
           (table-set! _tbl9217_ '%#quote void)
           (table-set! _tbl9217_ '%#quote-syntax void)
           (table-set! _tbl9217_ '%#call void)
           (table-set! _tbl9217_ '%#if void)
           (table-set! _tbl9217_ '%#ref void)
           (table-set! _tbl9217_ '%#set! void)
           (table-set! _tbl9217_ '%#struct-instance? void)
           (table-set! _tbl9217_ '%#struct-direct-instance? void)
           (table-set! _tbl9217_ '%#struct-ref void)
           (table-set! _tbl9217_ '%#struct-set! void)
           _tbl9217_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl9213_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9213_ '%#begin void)
           (table-set! _tbl9213_ '%#begin-syntax void)
           (table-set! _tbl9213_ '%#begin-foreign void)
           (table-set! _tbl9213_ '%#module void)
           (table-set! _tbl9213_ '%#import void)
           (table-set! _tbl9213_ '%#export void)
           (table-set! _tbl9213_ '%#provide void)
           (table-set! _tbl9213_ '%#extern void)
           (table-set! _tbl9213_ '%#define-values void)
           (table-set! _tbl9213_ '%#define-syntax void)
           (table-set! _tbl9213_ '%#define-alias void)
           (table-set! _tbl9213_ '%#declare void)
           _tbl9213_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl9209_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9209_ (force gxc#&void-special-form))
           (hash-copy! _tbl9209_ (force gxc#&void-expression))
           _tbl9209_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl9205_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9205_ (force gxc#&void-expression))
           (hash-copy! _tbl9205_ (force gxc#&void-special-form))
           (table-set! _tbl9205_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9205_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl9205_ '%#module gxc#collect-module%)
           (table-set!
            _tbl9205_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl9205_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl9205_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx9198_ . _args9200_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9198_ _args9200_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl9195_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9195_ (force gxc#&void))
           (table-set! _tbl9195_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9195_ '%#module gxc#lift-modules-module%)
           _tbl9195_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx9188_ . _args9190_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9188_ _args9190_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl9185_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9185_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl9185_ '%#begin-syntax false)
           (table-set! _tbl9185_ '%#begin-foreign true)
           (table-set! _tbl9185_ '%#module false)
           (table-set! _tbl9185_ '%#import false)
           (table-set! _tbl9185_ '%#export false)
           (table-set! _tbl9185_ '%#provide false)
           (table-set! _tbl9185_ '%#extern false)
           (table-set! _tbl9185_ '%#define-values true)
           (table-set! _tbl9185_ '%#define-syntax false)
           (table-set! _tbl9185_ '%#define-alias false)
           (table-set! _tbl9185_ '%#declare false)
           (table-set! _tbl9185_ '%#lambda true)
           (table-set! _tbl9185_ '%#case-lambda true)
           (table-set! _tbl9185_ '%#let-values true)
           (table-set! _tbl9185_ '%#letrec-values true)
           (table-set! _tbl9185_ '%#letrec*-values true)
           (table-set! _tbl9185_ '%#quote true)
           (table-set! _tbl9185_ '%#call true)
           (table-set! _tbl9185_ '%#if true)
           (table-set! _tbl9185_ '%#ref true)
           (table-set! _tbl9185_ '%#set! true)
           (table-set! _tbl9185_ '%#struct-instance? true)
           (table-set! _tbl9185_ '%#struct-direct-instance? true)
           (table-set! _tbl9185_ '%#struct-ref true)
           (table-set! _tbl9185_ '%#struct-set! true)
           _tbl9185_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx9178_ . _args9180_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9178_ _args9180_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl9175_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9175_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl9175_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl9175_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl9175_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl9175_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl9171_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9171_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl9171_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl9171_ '%#import gxc#generate-runtime-loader-import%)
           _tbl9171_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx9164_ . _args9166_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9164_ _args9166_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl9161_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9161_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl9161_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl9161_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl9161_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl9161_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl9161_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl9161_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl9161_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl9161_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl9161_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl9161_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl9161_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl9161_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl9161_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl9161_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl9161_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl9161_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl9161_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl9161_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl9161_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx9154_ . _args9156_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9154_ _args9156_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl9151_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9151_ (force gxc#&generate-runtime))
           (table-set!
            _tbl9151_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl9151_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl9151_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx9144_ . _args9146_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9144_ _args9146_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl9141_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9141_ '%#begin gxc#collect-begin%)
           (table-set! _tbl9141_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl9141_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl9141_ '%#let-values gxc#collect-body-let-values%)
           (table-set! _tbl9141_ '%#letrec-values gxc#collect-body-let-values%)
           (table-set!
            _tbl9141_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl9141_ '%#quote void)
           (table-set! _tbl9141_ '%#quote-syntax void)
           (table-set! _tbl9141_ '%#call gxc#collect-operands)
           (table-set! _tbl9141_ '%#if gxc#collect-operands)
           (table-set! _tbl9141_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl9141_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl9141_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl9141_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl9141_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl9141_ '%#struct-set! gxc#collect-operands)
           _tbl9141_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx9134_ . _args9136_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9134_ _args9136_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl9131_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl9131_ (force gxc#&void-expression))
           (table-set! _tbl9131_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9131_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl9131_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl9131_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl9131_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl9131_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl9131_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl9131_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl9131_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9131_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl9131_ '%#begin-foreign void)
           (table-set! _tbl9131_ '%#declare void)
           _tbl9131_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9124_ . _args9126_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9124_ _args9126_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9121_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9121_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9121_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl9121_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9121_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl9121_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl9121_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9121_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9121_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set! _tbl9121_ '%#declare void)
           _tbl9121_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9114_ . _args9116_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9114_ _args9116_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9071_ . _args9072_)
      (let ((_g90749084_
             (lambda (_g90759081_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90759081_))))
        (let ((_g90739111_
               (lambda (_g90759087_)
                 (if (gx#stx-pair? _g90759087_)
                     (let ((_e90779089_ (gx#stx-e _g90759087_)))
                       (let ((_hd90789092_ (##car _e90779089_))
                             (_tl90799094_ (##cdr _e90779089_)))
                         ((lambda (_L9097_)
                            (for-each
                             (lambda (_g91069108_)
                               (apply gxc#compile-e _g91069108_ _args9072_))
                             (gx#stx-e _L9097_)))
                          _tl90799094_)))
                     (_g90749084_ _g90759087_)))))
          (_g90739111_ _stx9071_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9027_ . _args9028_)
      (let ((_g90309040_
             (lambda (_g90319037_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90319037_))))
        (let ((_g90299068_
               (lambda (_g90319043_)
                 (if (gx#stx-pair? _g90319043_)
                     (let ((_e90339045_ (gx#stx-e _g90319043_)))
                       (let ((_hd90349048_ (##car _e90339045_))
                             (_tl90359050_ (##cdr _e90339045_)))
                         ((lambda (_L9053_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g90639065_)
                                  (apply gxc#compile-e _g90639065_ _args9028_))
                                (gx#stx-e _L9053_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl90359050_)))
                     (_g90309040_ _g90319043_)))))
          (_g90299068_ _stx9027_)))))
  (define gxc#collect-module%
    (lambda (_stx8969_ . _args8970_)
      (let ((_g89728986_
             (lambda (_g89738983_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89738983_))))
        (let ((_g89719024_
               (lambda (_g89738989_)
                 (if (gx#stx-pair? _g89738989_)
                     (let ((_e89768991_ (gx#stx-e _g89738989_)))
                       (let ((_hd89778994_ (##car _e89768991_))
                             (_tl89788996_ (##cdr _e89768991_)))
                         (if (gx#stx-pair? _tl89788996_)
                             (let ((_e89798999_ (gx#stx-e _tl89788996_)))
                               (let ((_hd89809002_ (##car _e89798999_))
                                     (_tl89819004_ (##cdr _e89798999_)))
                                 ((lambda (_L9007_ _L9008_)
                                    (let ((_ctx9021_
                                           (gx#syntax-local-e _L9008_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (gx#module-context-code
                                                 _ctx9021_)
                                                _args8970_))
                                       gx#current-expander-context
                                       _ctx9021_)))
                                  _tl89819004_
                                  _hd89809002_)))
                             (_g89728986_ _g89738989_))))
                     (_g89728986_ _g89738989_)))))
          (_g89719024_ _stx8969_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx8901_ . _args8902_)
      (let ((_g89048921_
             (lambda (_g89058918_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89058918_))))
        (let ((_g89038966_
               (lambda (_g89058924_)
                 (if (gx#stx-pair? _g89058924_)
                     (let ((_e89088926_ (gx#stx-e _g89058924_)))
                       (let ((_hd89098929_ (##car _e89088926_))
                             (_tl89108931_ (##cdr _e89088926_)))
                         (if (gx#stx-pair? _tl89108931_)
                             (let ((_e89118934_ (gx#stx-e _tl89108931_)))
                               (let ((_hd89128937_ (##car _e89118934_))
                                     (_tl89138939_ (##cdr _e89118934_)))
                                 (if (gx#stx-pair? _tl89138939_)
                                     (let ((_e89148942_
                                            (gx#stx-e _tl89138939_)))
                                       (let ((_hd89158945_ (##car _e89148942_))
                                             (_tl89168947_
                                              (##cdr _e89148942_)))
                                         (if (gx#stx-null? _tl89168947_)
                                             ((lambda (_L8950_ _L8951_)
                                                (apply gxc#compile-e
                                                       _L8950_
                                                       _args8902_))
                                              _hd89158945_
                                              _hd89128937_)
                                             (_g89048921_ _g89058924_))))
                                     (_g89048921_ _g89058924_))))
                             (_g89048921_ _g89058924_))))
                     (_g89048921_ _g89058924_)))))
          (_g89038966_ _stx8901_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx8783_ . _args8784_)
      (let ((_g87868814_
             (lambda (_g87878811_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87878811_))))
        (let ((_g87858898_
               (lambda (_g87878817_)
                 (if (gx#stx-pair? _g87878817_)
                     (let ((_e87908819_ (gx#stx-e _g87878817_)))
                       (let ((_hd87918822_ (##car _e87908819_))
                             (_tl87928824_ (##cdr _e87908819_)))
                         (if (gx#stx-pair/null? _tl87928824_)
                             (if (fx>= (gx#stx-length _tl87928824_) '0)
                                 (let ((_g9263_ (gx#syntax-split-splice
                                                 _tl87928824_
                                                 '0)))
                                   (begin
                                     (let ((_g9264_ (values-count _g9263_)))
                                       (if (not (fx= _g9264_ 2))
                                           (error "Context expects 2 values"
                                                  _g9264_)))
                                     (let ((_target87938827_
                                            (values-ref _g9263_ 0))
                                           (_tl87958829_
                                            (values-ref _g9263_ 1)))
                                       (if (gx#stx-null? _tl87958829_)
                                           (letrec ((_loop87968832_
                                                     (lambda (_hd87948835_
                                                              _body88008837_
                                                              _hd88018839_)
                                                       (if (gx#stx-pair?
                                                            _hd87948835_)
                                                           (let ((_e87978842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd87948835_)))
                     (let ((_lp-hd87988845_ (##car _e87978842_))
                           (_lp-tl87998847_ (##cdr _e87978842_)))
                       (if (gx#stx-pair? _lp-hd87988845_)
                           (let ((_e88048850_ (gx#stx-e _lp-hd87988845_)))
                             (let ((_hd88058853_ (##car _e88048850_))
                                   (_tl88068855_ (##cdr _e88048850_)))
                               (if (gx#stx-pair? _tl88068855_)
                                   (let ((_e88078858_ (gx#stx-e _tl88068855_)))
                                     (let ((_hd88088861_ (##car _e88078858_))
                                           (_tl88098863_ (##cdr _e88078858_)))
                                       (if (gx#stx-null? _tl88098863_)
                                           (_loop87968832_
                                            _lp-tl87998847_
                                            (cons _hd88088861_ _body88008837_)
                                            (cons _hd88058853_ _hd88018839_))
                                           (_g87868814_ _g87878817_))))
                                   (_g87868814_ _g87878817_))))
                           (_g87868814_ _g87878817_))))
                   (let ((_body88028866_ (reverse _body88008837_))
                         (_hd88038868_ (reverse _hd88018839_)))
                     ((lambda (_L8871_ _L8872_)
                        (for-each
                         (lambda (_g88868888_)
                           (apply gxc#compile-e _g88868888_ _args8784_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g88908893_ _g88918895_)
                                     (cons _g88908893_ _g88918895_))
                                   '()
                                   _L8871_))))
                      _body88028866_
                      _hd88038868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop87968832_
                                              _target87938827_
                                              '()
                                              '()))
                                           (_g87868814_ _g87878817_)))))
                                 (_g87868814_ _g87878817_))
                             (_g87868814_ _g87878817_))))
                     (_g87868814_ _g87878817_)))))
          (_g87858898_ _stx8783_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx8636_ . _args8637_)
      (let ((_g86398674_
             (lambda (_g86408671_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86408671_))))
        (let ((_g86388780_
               (lambda (_g86408677_)
                 (if (gx#stx-pair? _g86408677_)
                     (let ((_e86448679_ (gx#stx-e _g86408677_)))
                       (let ((_hd86458682_ (##car _e86448679_))
                             (_tl86468684_ (##cdr _e86448679_)))
                         (if (gx#stx-pair? _tl86468684_)
                             (let ((_e86478687_ (gx#stx-e _tl86468684_)))
                               (let ((_hd86488690_ (##car _e86478687_))
                                     (_tl86498692_ (##cdr _e86478687_)))
                                 (if (gx#stx-pair/null? _hd86488690_)
                                     (if (fx>= (gx#stx-length _hd86488690_) '0)
                                         (let ((_g9265_ (gx#syntax-split-splice
                                                         _hd86488690_
                                                         '0)))
                                           (begin
                                             (let ((_g9266_ (values-count
                                                             _g9265_)))
                                               (if (not (fx= _g9266_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9266_)))
                                             (let ((_target86508695_
                                                    (values-ref _g9265_ 0))
                                                   (_tl86528697_
                                                    (values-ref _g9265_ 1)))
                                               (if (gx#stx-null? _tl86528697_)
                                                   (letrec ((_loop86538700_
                                                             (lambda (_hd86518703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr86578705_
                              _hd86588707_)
                       (if (gx#stx-pair? _hd86518703_)
                           (let ((_e86548710_ (gx#stx-e _hd86518703_)))
                             (let ((_lp-hd86558713_ (##car _e86548710_))
                                   (_lp-tl86568715_ (##cdr _e86548710_)))
                               (if (gx#stx-pair? _lp-hd86558713_)
                                   (let ((_e86618718_
                                          (gx#stx-e _lp-hd86558713_)))
                                     (let ((_hd86628721_ (##car _e86618718_))
                                           (_tl86638723_ (##cdr _e86618718_)))
                                       (if (gx#stx-pair? _tl86638723_)
                                           (let ((_e86648726_
                                                  (gx#stx-e _tl86638723_)))
                                             (let ((_hd86658729_
                                                    (##car _e86648726_))
                                                   (_tl86668731_
                                                    (##cdr _e86648726_)))
                                               (if (gx#stx-null? _tl86668731_)
                                                   (_loop86538700_
                                                    _lp-tl86568715_
                                                    (cons _hd86658729_
                                                          _expr86578705_)
                                                    (cons _hd86628721_
                                                          _hd86588707_))
                                                   (_g86398674_ _g86408677_))))
                                           (_g86398674_ _g86408677_))))
                                   (_g86398674_ _g86408677_))))
                           (let ((_expr86598734_ (reverse _expr86578705_))
                                 (_hd86608736_ (reverse _hd86588707_)))
                             (if (gx#stx-pair? _tl86498692_)
                                 (let ((_e86678739_ (gx#stx-e _tl86498692_)))
                                   (let ((_hd86688742_ (##car _e86678739_))
                                         (_tl86698744_ (##cdr _e86678739_)))
                                     (if (gx#stx-null? _tl86698744_)
                                         ((lambda (_L8747_ _L8748_ _L8749_)
                                            (for-each
                                             (lambda (_g87688770_)
                                               (apply gxc#compile-e
                                                      _g87688770_
                                                      _args8637_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g87728775_
                                                                _g87738777_)
                                                         (cons _g87728775_
                                                               _g87738777_))
                                                       (cons _L8747_ '())
                                                       _L8748_))))
                                          _hd86688742_
                                          _expr86598734_
                                          _hd86608736_)
                                         (_g86398674_ _g86408677_))))
                                 (_g86398674_ _g86408677_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop86538700_
                                                      _target86508695_
                                                      '()
                                                      '()))
                                                   (_g86398674_
                                                    _g86408677_)))))
                                         (_g86398674_ _g86408677_))
                                     (_g86398674_ _g86408677_))))
                             (_g86398674_ _g86408677_))))
                     (_g86398674_ _g86408677_)))))
          (_g86388780_ _stx8636_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx8568_ . _args8569_)
      (let ((_g85718588_
             (lambda (_g85728585_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85728585_))))
        (let ((_g85708633_
               (lambda (_g85728591_)
                 (if (gx#stx-pair? _g85728591_)
                     (let ((_e85758593_ (gx#stx-e _g85728591_)))
                       (let ((_hd85768596_ (##car _e85758593_))
                             (_tl85778598_ (##cdr _e85758593_)))
                         (if (gx#stx-pair? _tl85778598_)
                             (let ((_e85788601_ (gx#stx-e _tl85778598_)))
                               (let ((_hd85798604_ (##car _e85788601_))
                                     (_tl85808606_ (##cdr _e85788601_)))
                                 (if (gx#stx-pair? _tl85808606_)
                                     (let ((_e85818609_
                                            (gx#stx-e _tl85808606_)))
                                       (let ((_hd85828612_ (##car _e85818609_))
                                             (_tl85838614_
                                              (##cdr _e85818609_)))
                                         (if (gx#stx-null? _tl85838614_)
                                             ((lambda (_L8617_ _L8618_)
                                                (apply gxc#compile-e
                                                       _L8617_
                                                       _args8569_))
                                              _hd85828612_
                                              _hd85798604_)
                                             (_g85718588_ _g85728591_))))
                                     (_g85718588_ _g85728591_))))
                             (_g85718588_ _g85728591_))))
                     (_g85718588_ _g85728591_)))))
          (_g85708633_ _stx8568_)))))
  (define gxc#collect-operands
    (lambda (_stx8481_ . _args8482_)
      (let ((_g84848503_
             (lambda (_g84858500_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84858500_))))
        (let ((_g84838565_
               (lambda (_g84858506_)
                 (if (gx#stx-pair? _g84858506_)
                     (let ((_e84878508_ (gx#stx-e _g84858506_)))
                       (let ((_hd84888511_ (##car _e84878508_))
                             (_tl84898513_ (##cdr _e84878508_)))
                         (if (gx#stx-pair/null? _tl84898513_)
                             (if (fx>= (gx#stx-length _tl84898513_) '0)
                                 (let ((_g9267_ (gx#syntax-split-splice
                                                 _tl84898513_
                                                 '0)))
                                   (begin
                                     (let ((_g9268_ (values-count _g9267_)))
                                       (if (not (fx= _g9268_ 2))
                                           (error "Context expects 2 values"
                                                  _g9268_)))
                                     (let ((_target84908516_
                                            (values-ref _g9267_ 0))
                                           (_tl84928518_
                                            (values-ref _g9267_ 1)))
                                       (if (gx#stx-null? _tl84928518_)
                                           (letrec ((_loop84938521_
                                                     (lambda (_hd84918524_
                                                              _rands84978526_)
                                                       (if (gx#stx-pair?
                                                            _hd84918524_)
                                                           (let ((_e84948529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd84918524_)))
                     (let ((_lp-hd84958532_ (##car _e84948529_))
                           (_lp-tl84968534_ (##cdr _e84948529_)))
                       (_loop84938521_
                        _lp-tl84968534_
                        (cons _lp-hd84958532_ _rands84978526_))))
                   (let ((_rands84988537_ (reverse _rands84978526_)))
                     ((lambda (_L8540_)
                        (for-each
                         (lambda (_g85538555_)
                           (apply gxc#compile-e _g85538555_ _args8482_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g85578560_ _g85588562_)
                                     (cons _g85578560_ _g85588562_))
                                   '()
                                   _L8540_))))
                      _rands84988537_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop84938521_
                                              _target84908516_
                                              '()))
                                           (_g84848503_ _g84858506_)))))
                                 (_g84848503_ _g84858506_))
                             (_g84848503_ _g84858506_))))
                     (_g84848503_ _g84858506_)))))
          (_g84838565_ _stx8481_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx8412_)
      (let ((_g84148431_
             (lambda (_g84158428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g84158428_))))
        (let ((_g84138478_
               (lambda (_g84158434_)
                 (if (gx#stx-pair? _g84158434_)
                     (let ((_e84188436_ (gx#stx-e _g84158434_)))
                       (let ((_hd84198439_ (##car _e84188436_))
                             (_tl84208441_ (##cdr _e84188436_)))
                         (if (gx#stx-pair? _tl84208441_)
                             (let ((_e84218444_ (gx#stx-e _tl84208441_)))
                               (let ((_hd84228447_ (##car _e84218444_))
                                     (_tl84238449_ (##cdr _e84218444_)))
                                 (if (gx#stx-pair? _tl84238449_)
                                     (let ((_e84248452_
                                            (gx#stx-e _tl84238449_)))
                                       (let ((_hd84258455_ (##car _e84248452_))
                                             (_tl84268457_
                                              (##cdr _e84248452_)))
                                         (if (gx#stx-null? _tl84268457_)
                                             ((lambda (_L8460_ _L8461_)
                                                (gx#stx-for-each
                                                 (lambda (_bind8476_)
                                                   (if (gx#identifier?
                                                        _bind8476_)
                                                       (gxc#add-module-binding!
                                                        _bind8476_
                                                        '#f)
                                                       '#!void))
                                                 _L8461_))
                                              _hd84258455_
                                              _hd84228447_)
                                             (_g84148431_ _g84158434_))))
                                     (_g84148431_ _g84158434_))))
                             (_g84148431_ _g84158434_))))
                     (_g84148431_ _g84158434_)))))
          (_g84138478_ _stx8412_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx8345_)
      (let ((_g83478364_
             (lambda (_g83488361_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g83488361_))))
        (let ((_g83468409_
               (lambda (_g83488367_)
                 (if (gx#stx-pair? _g83488367_)
                     (let ((_e83518369_ (gx#stx-e _g83488367_)))
                       (let ((_hd83528372_ (##car _e83518369_))
                             (_tl83538374_ (##cdr _e83518369_)))
                         (if (gx#stx-pair? _tl83538374_)
                             (let ((_e83548377_ (gx#stx-e _tl83538374_)))
                               (let ((_hd83558380_ (##car _e83548377_))
                                     (_tl83568382_ (##cdr _e83548377_)))
                                 (if (gx#stx-pair? _tl83568382_)
                                     (let ((_e83578385_
                                            (gx#stx-e _tl83568382_)))
                                       (let ((_hd83588388_ (##car _e83578385_))
                                             (_tl83598390_
                                              (##cdr _e83578385_)))
                                         (if (gx#stx-null? _tl83598390_)
                                             ((lambda (_L8393_ _L8394_)
                                                (gxc#add-module-binding!
                                                 _L8394_
                                                 '#t))
                                              _hd83588388_
                                              _hd83558380_)
                                             (_g83478364_ _g83488367_))))
                                     (_g83478364_ _g83488367_))))
                             (_g83478364_ _g83488367_))))
                     (_g83478364_ _g83488367_)))))
          (_g83468409_ _stx8345_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx8287_ _modules8288_)
      (let ((_g82908304_
             (lambda (_g82918301_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g82918301_))))
        (let ((_g82898342_
               (lambda (_g82918307_)
                 (if (gx#stx-pair? _g82918307_)
                     (let ((_e82948309_ (gx#stx-e _g82918307_)))
                       (let ((_hd82958312_ (##car _e82948309_))
                             (_tl82968314_ (##cdr _e82948309_)))
                         (if (gx#stx-pair? _tl82968314_)
                             (let ((_e82978317_ (gx#stx-e _tl82968314_)))
                               (let ((_hd82988320_ (##car _e82978317_))
                                     (_tl82998322_ (##cdr _e82978317_)))
                                 ((lambda (_L8325_ _L8326_)
                                    (let ((_ctx8339_
                                           (gx#syntax-local-e _L8326_)))
                                      (begin
                                        (set-box!
                                         _modules8288_
                                         (cons _ctx8339_
                                               (unbox _modules8288_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (gx#module-context-code _ctx8339_)
                                            _modules8288_))
                                         gx#current-expander-context
                                         _ctx8339_))))
                                  _tl82998322_
                                  _hd82988320_)))
                             (_g82908304_ _g82918307_))))
                     (_g82908304_ _g82918307_)))))
          (_g82898342_ _stx8287_)))))
  (define gxc#add-module-binding!
    (lambda (_id8281_ _syntax?8282_)
      (let ((_eid8284_ (gx#binding-id (gx#resolve-identifier _id8281_)))
            (_ht8285_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid8284_)
            '#!void
            (table-set!
             _ht8285_
             _eid8284_
             (gx#make-binding-id
              (gxc#generate-runtime-gensym-reference__0 _eid8284_)
              _syntax?8282_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id8262_)
      (let ((_bind8264_ (gx#resolve-identifier _id8262_)))
        (if _bind8264_
            (let ((_eid8266_ (gx#binding-id _bind8264_))
                  (_ht8267_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid8266_)
                  _eid8266_
                  (let ((_$e8269_ (table-ref _ht8267_ _eid8266_ '#f)))
                    (if _$e8269_
                        (values _$e8269_)
                        (if (gx#local-binding? _bind8264_)
                            (let ((_gid8272_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid8266_)))
                              (begin
                                (table-set! _ht8267_ _eid8266_ _gid8272_)
                                _gid8272_))
                            (if (gx#module-binding? _bind8264_)
                                (let ((_gid8279_
                                       (let ((_$e8274_
                                              (gx#module-context-ns
                                               (gx#module-binding-context
                                                _bind8264_))))
                                         (if _$e8274_
                                             ((lambda (_ns8277_)
                                                (make-symbol
                                                 _ns8277_
                                                 '"#"
                                                 _eid8266_))
                                              _$e8274_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid8266_)))))
                                  (begin
                                    (table-set! _ht8267_ _eid8266_ _gid8279_)
                                    _gid8279_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id8262_
                                 _eid8266_
                                 _bind8264_)))))))
            (if (interned-symbol? (gx#stx-e _id8262_))
                (gx#stx-e _id8262_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id8262_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id8260_)
      (if (gx#identifier? _id8260_)
          (gxc#generate-runtime-binding-id _id8260_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda8238
      (lambda (_sym8240_ _quote?8241_)
        (let ((_ht8243_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e8245_ (table-ref _ht8243_ _sym8240_ '#f)))
            (if _$e8245_
                (values _$e8245_)
                (let ((_g8248_ (if _quote?8241_
                                   (make-symbol
                                    '"__"
                                    _sym8240_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym8240_ '"_"))))
                  (begin (table-set! _ht8243_ _sym8240_ _g8248_) _g8248_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym8253_)
          (let ((_quote?8255_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda8238
             _sym8253_
             _quote?8255_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g9270_
          (let ((_g9269_ (length _g9270_)))
            (cond ((fx= _g9269_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g9270_))
                  ((fx= _g9269_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda8238
                          _g9270_))
                  (else (error "No clause matching arguments" _g9270_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id8237_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id8237_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key8199_)
      (if (interned-symbol? _key8199_)
          _key8199_
          (if (uninterned-symbol? _key8199_)
              (gxc#generate-runtime-gensym-reference__0 _key8199_)
              (let ((_key82008207_ _key8199_))
                (let ((_E82028211_
                       (lambda ()
                         (error '"No clause matching" _key82008207_))))
                  (let ((_K82038225_
                         (lambda (_mark8214_ _eid8215_)
                           (let ((_$e8217_
                                  (gx#expander-mark-subst _mark8214_)))
                             (if _$e8217_
                                 ((lambda (_ht8220_)
                                    (let ((_$e8222_
                                           (table-ref _ht8220_ _eid8215_ '#f)))
                                      (if _$e8222_
                                          (values _$e8222_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid8215_))))
                                  _$e8217_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid8215_))))))
                    (if (##pair? _key82008207_)
                        (let ((_hd82048228_ (##car _key82008207_))
                              (_tl82058230_ (##cdr _key82008207_)))
                          (let ((_eid8233_ _hd82048228_))
                            (let ((_mark8235_ _tl82058230_))
                              (_K82038225_ _mark8235_ _eid8233_))))
                        (_E82028211_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda8184
      (lambda (_top8186_)
        (if _top8186_
            (let ((_ns8188_
                   (gx#module-context-ns (gx#current-expander-context)))
                  (_phi8189_ (gx#current-expander-phi)))
              (if (fxpositive? _phi8189_)
                  (make-symbol
                   _ns8188_
                   '"["
                   (number->string _phi8189_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns8188_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top8195_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda8184 _top8195_))))
      (define gxc#generate-runtime-temporary
        (lambda _g9272_
          (let ((_g9271_ (length _g9272_)))
            (cond ((fx= _g9271_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g9272_))
                  ((fx= _g9271_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda8184
                          _g9272_))
                  (else (error "No clause matching arguments" _g9272_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx8183_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8103_)
      (let ((_g81058115_
             (lambda (_g81068112_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g81068112_))))
        (let ((_g81048180_
               (lambda (_g81068118_)
                 (if (gx#stx-pair? _g81068118_)
                     (let ((_e81088120_ (gx#stx-e _g81068118_)))
                       (let ((_hd81098123_ (##car _e81088120_))
                             (_tl81108125_ (##cdr _e81088120_)))
                         ((lambda (_L8128_)
                            (let ((_body8138_
                                   (gx#stx-map gxc#compile-e _L8128_)))
                              (let ((_body8177_
                                     (filter (lambda (_stx8140_)
                                               (let ((_g81438152_
                                                      (lambda (_g81448149_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g81448149_))))
                                                 (let ((_g81428159_
                                                        (lambda (_g81448155_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g81418174_
                                                          (lambda (_g81448162_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81448162_)
                        (let ((_e81458164_ (gx#stx-e _g81448162_)))
                          (let ((_hd81468167_ (##car _e81458164_))
                                (_tl81478169_ (##cdr _e81458164_)))
                            (if (gx#identifier? _hd81468167_)
                                (if (gx#stx-eq? 'begin _hd81468167_)
                                    (if (gx#stx-null? _tl81478169_)
                                        ((lambda () '#f))
                                        (_g81428159_ _g81448162_))
                                    (_g81428159_ _g81448162_))
                                (_g81428159_ _g81448162_))))
                        (_g81428159_ _g81448162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g81418174_
                                                      _stx8140_)))))
                                             _body8138_)))
                                (let ()
                                  (if (fx= (length _body8177_) '1)
                                      (car _body8177_)
                                      (cons 'begin _body8177_))))))
                          _tl81108125_)))
                     (_g81058115_ _g81068118_)))))
          (_g81048180_ _stx8103_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8065_)
      (let ((_g80678077_
             (lambda (_g80688074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80688074_))))
        (let ((_g80668100_
               (lambda (_g80688080_)
                 (if (gx#stx-pair? _g80688080_)
                     (let ((_e80708082_ (gx#stx-e _g80688080_)))
                       (let ((_hd80718085_ (##car _e80708082_))
                             (_tl80728087_ (##cdr _e80708082_)))
                         ((lambda (_L8090_)
                            (cons 'begin (gx#syntax->datum _L8090_)))
                          _tl80728087_)))
                     (_g80678077_ _g80688080_)))))
          (_g80668100_ _stx8065_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8027_)
      (let ((_g80298039_
             (lambda (_g80308036_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g80308036_))))
        (let ((_g80288062_
               (lambda (_g80308042_)
                 (if (gx#stx-pair? _g80308042_)
                     (let ((_e80328044_ (gx#stx-e _g80308042_)))
                       (let ((_hd80338047_ (##car _e80328044_))
                             (_tl80348049_ (##cdr _e80328044_)))
                         ((lambda (_L8052_)
                            (cons 'declare (map gx#syntax->datum _L8052_)))
                          _tl80348049_)))
                     (_g80298039_ _g80308042_)))))
          (_g80288062_ _stx8027_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx7791_)
      (let ((_g77937810_
             (lambda (_g77947807_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g77947807_))))
        (let ((_g77928024_
               (lambda (_g77947813_)
                 (if (gx#stx-pair? _g77947813_)
                     (let ((_e77977815_ (gx#stx-e _g77947813_)))
                       (let ((_hd77987818_ (##car _e77977815_))
                             (_tl77997820_ (##cdr _e77977815_)))
                         (if (gx#stx-pair? _tl77997820_)
                             (let ((_e78007823_ (gx#stx-e _tl77997820_)))
                               (let ((_hd78017826_ (##car _e78007823_))
                                     (_tl78027828_ (##cdr _e78007823_)))
                                 (if (gx#stx-pair? _tl78027828_)
                                     (let ((_e78037831_
                                            (gx#stx-e _tl78027828_)))
                                       (let ((_hd78047834_ (##car _e78037831_))
                                             (_tl78057836_
                                              (##cdr _e78037831_)))
                                         (if (gx#stx-null? _tl78057836_)
                                             ((lambda (_L7839_ _L7840_)
                                                (let ((_g78577870_
                                                       (lambda (_g78587867_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g78587867_))))
                                                  (let ((_g78567984_
                                                         (lambda (_g78587873_)
                                                           ((lambda ()
                                                              (let ((_tmp7877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda8184
                              '#t)))
                        (let ((_body7981_
                               ((letrec ((_lp7879_
                                          (lambda (_rest7881_ _k7882_ _r7883_)
                                            (let ((_g78887904_
                                                   (lambda (_g78897901_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g78897901_))))
                                              (let ((_g78877911_
                                                     (lambda (_g78897907_)
                                                       ((lambda ()
                                                          (reverse _r7883_))))))
                                                (let ((_g78867932_
                                                       (lambda (_g78897914_)
                                                         ((lambda (_L7916_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7916_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L7916_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp7877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k7882_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r7883_)
                        (_g78877911_ _g78897914_)))
                  _g78897914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g78857956_
                                                         (lambda (_g78897935_)
                                                           (if (gx#stx-pair?
                                                                _g78897935_)
                                                               (let ((_e78967937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g78897935_)))
                         (let ((_hd78977940_ (##car _e78967937_))
                               (_tl78987942_ (##cdr _e78967937_)))
                           ((lambda (_L7945_ _L7946_)
                              (_lp7879_
                               _L7945_
                               (fx+ _k7882_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L7946_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp7877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k7882_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r7883_)))
                            _tl78987942_
                            _hd78977940_)))
                       (_g78867932_ _g78897935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g78847978_
                                                           (lambda (_g78897959_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g78897959_)
                         (let ((_e78917961_ (gx#stx-e _g78897959_)))
                           (let ((_hd78927964_ (##car _e78917961_))
                                 (_tl78937966_ (##cdr _e78917961_)))
                             (if (gx#stx-datum? _hd78927964_)
                                 (if (equal? (gx#stx-e _hd78927964_) '#f)
                                     ((lambda (_L7969_)
                                        (_lp7879_
                                         _L7969_
                                         (fx+ _k7882_ '1)
                                         _r7883_))
                                      _tl78937966_)
                                     (_g78857956_ _g78897959_))
                                 (_g78857956_ _g78897959_))))
                         (_g78857956_ _g78897959_)))))
              (_g78847978_ _rest7881_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp7879_)
                                _L7840_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp7877_
                                                    (cons (gxc#compile-e
                                                           _L7839_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp7877_
                                               _L7840_)
                                              _body7981_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g78558006_
                                                           (lambda (_g78587987_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g78587987_)
                         (let ((_e78637989_ (gx#stx-e _g78587987_)))
                           (let ((_hd78647992_ (##car _e78637989_))
                                 (_tl78657994_ (##cdr _e78637989_)))
                             (if (gx#stx-null? _tl78657994_)
                                 ((lambda (_L7997_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L7997_)
                                                (cons (gxc#compile-e _L7839_)
                                                      '()))))
                                  _hd78647992_)
                                 (_g78567984_ _g78587987_))))
                         (_g78567984_ _g78587987_)))))
              (let ((_g78548021_
                     (lambda (_g78588009_)
                       (if (gx#stx-pair? _g78588009_)
                           (let ((_e78598011_ (gx#stx-e _g78588009_)))
                             (let ((_hd78608014_ (##car _e78598011_))
                                   (_tl78618016_ (##cdr _e78598011_)))
                               (if (gx#stx-datum? _hd78608014_)
                                   (if (equal? (gx#stx-e _hd78608014_) '#f)
                                       (if (gx#stx-null? _tl78618016_)
                                           ((lambda ()
                                              (gxc#compile-e _L7839_)))
                                           (_g78558006_ _g78588009_))
                                       (_g78558006_ _g78588009_))
                                   (_g78558006_ _g78588009_))))
                           (_g78558006_ _g78588009_)))))
                (_g78548021_ _L7840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd78047834_
                                              _hd78017826_)
                                             (_g77937810_ _g77947813_))))
                                     (_g77937810_ _g77947813_))))
                             (_g77937810_ _g77947813_))))
                     (_g77937810_ _g77947813_)))))
          (_g77928024_ _stx7791_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals7779_ _hd7780_)
      (let ((_len7782_ (gx#stx-length _hd7780_)))
        (let ((_cmp7784_ (if (gx#stx-list? _hd7780_) 'fx= 'fx>=)))
          (let ((_errmsg7786_
                 (string-append
                  (if (gx#stx-list? _hd7780_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len7782_)
                  '" values")))
            (let ((_count7788_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd7780_)) (fx= _len7782_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count7788_
                                            (cons (cons 'values-count
                                                        (cons _vals7779_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp7784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count7788_ (cons _len7782_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg7786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count7788_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx7712_)
      (let ((_g77147731_
             (lambda (_g77157728_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g77157728_))))
        (let ((_g77137776_
               (lambda (_g77157734_)
                 (if (gx#stx-pair? _g77157734_)
                     (let ((_e77187736_ (gx#stx-e _g77157734_)))
                       (let ((_hd77197739_ (##car _e77187736_))
                             (_tl77207741_ (##cdr _e77187736_)))
                         (if (gx#stx-pair? _tl77207741_)
                             (let ((_e77217744_ (gx#stx-e _tl77207741_)))
                               (let ((_hd77227747_ (##car _e77217744_))
                                     (_tl77237749_ (##cdr _e77217744_)))
                                 (if (gx#stx-pair? _tl77237749_)
                                     (let ((_e77247752_
                                            (gx#stx-e _tl77237749_)))
                                       (let ((_hd77257755_ (##car _e77247752_))
                                             (_tl77267757_
                                              (##cdr _e77247752_)))
                                         (if (gx#stx-null? _tl77267757_)
                                             ((lambda (_L7760_ _L7761_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L7761_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7760_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd77257755_
                                              _hd77227747_)
                                             (_g77147731_ _g77157734_))))
                                     (_g77147731_ _g77157734_))))
                             (_g77147731_ _g77157734_))))
                     (_g77147731_ _g77157734_)))))
          (_g77137776_ _stx7712_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd7710_) (gx#stx-map gxc#generate-runtime-binding-id* _hd7710_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx6247_)
      (let ((_runtime-identifier=?6249_
             (lambda (_id-stx7701_ _sym7702_)
               (let ((_bind77037705_ (gx#resolve-identifier _id-stx7701_)))
                 (if _bind77037705_
                     (let ((_bind7708_ _bind77037705_))
                       (eq? (gx#binding-id _bind7708_) _sym7702_))
                     '#f)))))
        (let ((_dispatch-case?6250_
               (lambda (_hd6931_ _body6932_)
                 (let ((_form6934_ (cons _hd6931_ (cons _body6932_ '()))))
                   (let ((_g69397096_
                          (lambda (_g69407093_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69407093_))))
                     (let ((_g69387103_
                            (lambda (_g69407099_) ((lambda () '#f)))))
                       (let ((_g69377244_
                              (lambda (_g69407106_)
                                (if (gx#stx-pair? _g69407106_)
                                    (let ((_e70567108_ (gx#stx-e _g69407106_)))
                                      (let ((_hd70577111_ (##car _e70567108_))
                                            (_tl70587113_ (##cdr _e70567108_)))
                                        (if (gx#stx-pair? _tl70587113_)
                                            (let ((_e70597116_
                                                   (gx#stx-e _tl70587113_)))
                                              (let ((_hd70607119_
                                                     (##car _e70597116_))
                                                    (_tl70617121_
                                                     (##cdr _e70597116_)))
                                                (if (gx#stx-pair? _hd70607119_)
                                                    (let ((_e70627124_
                                                           (gx#stx-e
                                                            _hd70607119_)))
                                                      (let ((_hd70637127_
                                                             (##car _e70627124_))
                                                            (_tl70647129_
                                                             (##cdr _e70627124_)))
                                                        (if (gx#identifier?
                                                             _hd70637127_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd70637127_)
                        (if (gx#stx-pair? _tl70647129_)
                            (let ((_e70657132_ (gx#stx-e _tl70647129_)))
                              (let ((_hd70667135_ (##car _e70657132_))
                                    (_tl70677137_ (##cdr _e70657132_)))
                                (if (gx#stx-pair? _hd70667135_)
                                    (let ((_e70687140_
                                           (gx#stx-e _hd70667135_)))
                                      (let ((_hd70697143_ (##car _e70687140_))
                                            (_tl70707145_ (##cdr _e70687140_)))
                                        (if (gx#identifier? _hd70697143_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd70697143_)
                                                (if (gx#stx-pair? _tl70707145_)
                                                    (let ((_e70717148_
                                                           (gx#stx-e
                                                            _tl70707145_)))
                                                      (let ((_hd70727151_
                                                             (##car _e70717148_))
                                                            (_tl70737153_
                                                             (##cdr _e70717148_)))
                                                        (if (gx#stx-null?
                                                             _tl70737153_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70677137_)
                        (let ((_e70747156_ (gx#stx-e _tl70677137_)))
                          (let ((_hd70757159_ (##car _e70747156_))
                                (_tl70767161_ (##cdr _e70747156_)))
                            (if (gx#stx-pair? _hd70757159_)
                                (let ((_e70777164_ (gx#stx-e _hd70757159_)))
                                  (let ((_hd70787167_ (##car _e70777164_))
                                        (_tl70797169_ (##cdr _e70777164_)))
                                    (if (gx#identifier? _hd70787167_)
                                        (if (gx#stx-eq? '%#ref _hd70787167_)
                                            (if (gx#stx-pair? _tl70797169_)
                                                (let ((_e70807172_
                                                       (gx#stx-e
                                                        _tl70797169_)))
                                                  (let ((_hd70817175_
                                                         (##car _e70807172_))
                                                        (_tl70827177_
                                                         (##cdr _e70807172_)))
                                                    (if (gx#stx-null?
                                                         _tl70827177_)
                                                        (if (gx#stx-pair?
                                                             _tl70767161_)
                                                            (let ((_e70837180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl70767161_)))
                      (let ((_hd70847183_ (##car _e70837180_))
                            (_tl70857185_ (##cdr _e70837180_)))
                        (if (gx#stx-pair? _hd70847183_)
                            (let ((_e70867188_ (gx#stx-e _hd70847183_)))
                              (let ((_hd70877191_ (##car _e70867188_))
                                    (_tl70887193_ (##cdr _e70867188_)))
                                (if (gx#identifier? _hd70877191_)
                                    (if (gx#stx-eq? '%#ref _hd70877191_)
                                        (if (gx#stx-pair? _tl70887193_)
                                            (let ((_e70897196_
                                                   (gx#stx-e _tl70887193_)))
                                              (let ((_hd70907199_
                                                     (##car _e70897196_))
                                                    (_tl70917201_
                                                     (##cdr _e70897196_)))
                                                (if (gx#stx-null? _tl70917201_)
                                                    (if (gx#stx-null?
                                                         _tl70857185_)
                                                        (if (gx#stx-null?
                                                             _tl70617121_)
                                                            ((lambda (_L7204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7205_
                              _L7206_
                              _L7207_)
                       (if (if (gx#identifier? _L7207_)
                               (if (_runtime-identifier=?6249_ _L7206_ 'apply)
                                   (if (gx#free-identifier=? _L7207_ _L7204_)
                                       (not (gx#free-identifier=?
                                             _L7205_
                                             _L7207_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g69387103_ _g69407106_)))
                     _hd70907199_
                     _hd70817175_
                     _hd70727151_
                     _hd70577111_)
                    (_g69387103_ _g69407106_))
                (_g69387103_ _g69407106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69387103_
                                                     _g69407106_))))
                                            (_g69387103_ _g69407106_))
                                        (_g69387103_ _g69407106_))
                                    (_g69387103_ _g69407106_))))
                            (_g69387103_ _g69407106_))))
                    (_g69387103_ _g69407106_))
                (_g69387103_ _g69407106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g69387103_ _g69407106_))
                                            (_g69387103_ _g69407106_))
                                        (_g69387103_ _g69407106_))))
                                (_g69387103_ _g69407106_))))
                        (_g69387103_ _g69407106_))
                    (_g69387103_ _g69407106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69387103_ _g69407106_))
                                                (_g69387103_ _g69407106_))
                                            (_g69387103_ _g69407106_))))
                                    (_g69387103_ _g69407106_))))
                            (_g69387103_ _g69407106_))
                        (_g69387103_ _g69407106_))
                    (_g69387103_ _g69407106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69387103_
                                                     _g69407106_))))
                                            (_g69387103_ _g69407106_))))
                                    (_g69387103_ _g69407106_)))))
                         (let ((_g69367504_
                                (lambda (_g69407247_)
                                  (if (gx#stx-pair? _g69407247_)
                                      (let ((_e69927249_
                                             (gx#stx-e _g69407247_)))
                                        (let ((_hd69937252_
                                               (##car _e69927249_))
                                              (_tl69947254_
                                               (##cdr _e69927249_)))
                                          (if (gx#stx-pair/null? _hd69937252_)
                                              (if (fx>= (gx#stx-length
                                                         _hd69937252_)
                                                        '0)
                                                  (let ((_g9281_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd69937252_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9282_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9281_)))
                (if (not (fx= _g9282_ 2))
                    (error "Context expects 2 values" _g9282_)))
              (let ((_target69957257_ (values-ref _g9281_ 0))
                    (_tl69977259_ (values-ref _g9281_ 1)))
                (letrec ((_loop69987262_
                          (lambda (_hd69967265_ _arg70027267_)
                            (if (gx#stx-pair? _hd69967265_)
                                (let ((_e69997270_ (gx#stx-e _hd69967265_)))
                                  (let ((_lp-hd70007273_ (##car _e69997270_))
                                        (_lp-tl70017275_ (##cdr _e69997270_)))
                                    (_loop69987262_
                                     _lp-tl70017275_
                                     (cons _lp-hd70007273_ _arg70027267_))))
                                (let ((_arg70037278_ (reverse _arg70027267_)))
                                  (if (gx#stx-pair? _tl69947254_)
                                      (let ((_e70047281_
                                             (gx#stx-e _tl69947254_)))
                                        (let ((_hd70057284_
                                               (##car _e70047281_))
                                              (_tl70067286_
                                               (##cdr _e70047281_)))
                                          (if (gx#stx-pair? _hd70057284_)
                                              (let ((_e70077289_
                                                     (gx#stx-e _hd70057284_)))
                                                (let ((_hd70087292_
                                                       (##car _e70077289_))
                                                      (_tl70097294_
                                                       (##cdr _e70077289_)))
                                                  (if (gx#identifier?
                                                       _hd70087292_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd70087292_)
                                                          (if (gx#stx-pair?
                                                               _tl70097294_)
                                                              (let ((_e70107297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl70097294_)))
                        (let ((_hd70117300_ (##car _e70107297_))
                              (_tl70127302_ (##cdr _e70107297_)))
                          (if (gx#stx-pair? _hd70117300_)
                              (let ((_e70137305_ (gx#stx-e _hd70117300_)))
                                (let ((_hd70147308_ (##car _e70137305_))
                                      (_tl70157310_ (##cdr _e70137305_)))
                                  (if (gx#identifier? _hd70147308_)
                                      (if (gx#stx-eq? '%#ref _hd70147308_)
                                          (if (gx#stx-pair? _tl70157310_)
                                              (let ((_e70167313_
                                                     (gx#stx-e _tl70157310_)))
                                                (let ((_hd70177316_
                                                       (##car _e70167313_))
                                                      (_tl70187318_
                                                       (##cdr _e70167313_)))
                                                  (if (gx#stx-null?
                                                       _tl70187318_)
                                                      (if (gx#stx-pair?
                                                           _tl70127302_)
                                                          (let ((_e70197321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl70127302_)))
                    (let ((_hd70207324_ (##car _e70197321_))
                          (_tl70217326_ (##cdr _e70197321_)))
                      (if (gx#stx-pair? _hd70207324_)
                          (let ((_e70227329_ (gx#stx-e _hd70207324_)))
                            (let ((_hd70237332_ (##car _e70227329_))
                                  (_tl70247334_ (##cdr _e70227329_)))
                              (if (gx#identifier? _hd70237332_)
                                  (if (gx#stx-eq? '%#ref _hd70237332_)
                                      (if (gx#stx-pair? _tl70247334_)
                                          (let ((_e70257337_
                                                 (gx#stx-e _tl70247334_)))
                                            (let ((_hd70267340_
                                                   (##car _e70257337_))
                                                  (_tl70277342_
                                                   (##cdr _e70257337_)))
                                              (if (gx#stx-null? _tl70277342_)
                                                  (if (gx#stx-pair/null?
                                                       _tl70217326_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70217326_)
                        '1)
                  (let ((_g9283_ (gx#syntax-split-splice _tl70217326_ '1)))
                    (begin
                      (let ((_g9284_ (values-count _g9283_)))
                        (if (not (fx= _g9284_ 2))
                            (error "Context expects 2 values" _g9284_)))
                      (let ((_target70287345_ (values-ref _g9283_ 0))
                            (_tl70307347_ (values-ref _g9283_ 1)))
                        (if (gx#stx-pair? _tl70307347_)
                            (let ((_e70377350_ (gx#stx-e _tl70307347_)))
                              (let ((_hd70387353_ (##car _e70377350_))
                                    (_tl70397355_ (##cdr _e70377350_)))
                                (if (gx#stx-pair? _hd70387353_)
                                    (let ((_e70407358_
                                           (gx#stx-e _hd70387353_)))
                                      (let ((_hd70417361_ (##car _e70407358_))
                                            (_tl70427363_ (##cdr _e70407358_)))
                                        (if (gx#identifier? _hd70417361_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd70417361_)
                                                (if (gx#stx-pair? _tl70427363_)
                                                    (let ((_e70437366_
                                                           (gx#stx-e
                                                            _tl70427363_)))
                                                      (let ((_hd70447369_
                                                             (##car _e70437366_))
                                                            (_tl70457371_
                                                             (##cdr _e70437366_)))
                                                        (if (gx#stx-null?
                                                             _tl70457371_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70397355_)
                        (letrec ((_loop70317374_
                                  (lambda (_hd70297377_ _xarg70357379_)
                                    (if (gx#stx-pair? _hd70297377_)
                                        (let ((_e70327382_
                                               (gx#stx-e _hd70297377_)))
                                          (let ((_lp-hd70337385_
                                                 (##car _e70327382_))
                                                (_lp-tl70347387_
                                                 (##cdr _e70327382_)))
                                            (if (gx#stx-pair? _lp-hd70337385_)
                                                (let ((_e70467390_
                                                       (gx#stx-e
                                                        _lp-hd70337385_)))
                                                  (let ((_hd70477393_
                                                         (##car _e70467390_))
                                                        (_tl70487395_
                                                         (##cdr _e70467390_)))
                                                    (if (gx#identifier?
                                                         _hd70477393_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd70477393_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70487395_)
                        (let ((_e70497398_ (gx#stx-e _tl70487395_)))
                          (let ((_hd70507401_ (##car _e70497398_))
                                (_tl70517403_ (##cdr _e70497398_)))
                            (if (gx#stx-null? _tl70517403_)
                                (_loop70317374_
                                 _lp-tl70347387_
                                 (cons _hd70507401_ _xarg70357379_))
                                (_g69377244_ _g69407247_))))
                        (_g69377244_ _g69407247_))
                    (_g69377244_ _g69407247_))
                (_g69377244_ _g69407247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g69377244_ _g69407247_))))
                                        (let ((_xarg70367406_
                                               (reverse _xarg70357379_)))
                                          (if (gx#stx-null? _tl70067286_)
                                              ((lambda (_L7409_
                                                        _L7410_
                                                        _L7411_
                                                        _L7412_
                                                        _L7413_
                                                        _L7414_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g74577460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g74587462_)
                              (cons _g74577460_ _g74587462_))
                            '()
                            _L7414_)))
                 (if (gx#identifier? _L7413_)
                     (if (_runtime-identifier=?6249_ _L7412_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g74647467_
                                                             _g74657469_)
                                                      (cons _g74647467_
                                                            _g74657469_))
                                                    '()
                                                    _L7414_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g74717474_
                                                             _g74727476_)
                                                      (cons _g74717474_
                                                            _g74727476_))
                                                    '()
                                                    _L7410_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g74787481_
                                                            _g74797483_)
                                                     (cons _g74787481_
                                                           _g74797483_))
                                                   '()
                                                   _L7414_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g74857488_
                                                            _g74867490_)
                                                     (cons _g74857488_
                                                           _g74867490_))
                                                   '()
                                                   _L7410_)))
                                 (if (gx#free-identifier=? _L7413_ _L7409_)
                                     (not (find (lambda (_g74927494_)
                                                  (gx#free-identifier=?
                                                   _g74927494_
                                                   _L7411_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g74967499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g74977501_)
                    (cons _g74967499_ _g74977501_))
                  (cons _L7413_ '())
                  _L7414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g69377244_
                                                      _g69407247_)))
                                               _hd70447369_
                                               _xarg70367406_
                                               _hd70267340_
                                               _hd70177316_
                                               _tl69977259_
                                               _arg70037278_)
                                              (_g69377244_ _g69407247_)))))))
                          (_loop70317374_ _target70287345_ '()))
                        (_g69377244_ _g69407247_))
                    (_g69377244_ _g69407247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69377244_ _g69407247_))
                                                (_g69377244_ _g69407247_))
                                            (_g69377244_ _g69407247_))))
                                    (_g69377244_ _g69407247_))))
                            (_g69377244_ _g69407247_)))))
                  (_g69377244_ _g69407247_))
              (_g69377244_ _g69407247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69377244_ _g69407247_))))
                                          (_g69377244_ _g69407247_))
                                      (_g69377244_ _g69407247_))
                                  (_g69377244_ _g69407247_))))
                          (_g69377244_ _g69407247_))))
                  (_g69377244_ _g69407247_))
              (_g69377244_ _g69407247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g69377244_ _g69407247_))
                                          (_g69377244_ _g69407247_))
                                      (_g69377244_ _g69407247_))))
                              (_g69377244_ _g69407247_))))
                      (_g69377244_ _g69407247_))
                  (_g69377244_ _g69407247_))
              (_g69377244_ _g69407247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g69377244_ _g69407247_))))
                                      (_g69377244_ _g69407247_)))))))
                  (_loop69987262_ _target69957257_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69377244_ _g69407247_))
                                              (_g69377244_ _g69407247_))))
                                      (_g69377244_ _g69407247_)))))
                           (let ((_g69357698_
                                  (lambda (_g69407507_)
                                    (if (gx#stx-pair? _g69407507_)
                                        (let ((_e69447509_
                                               (gx#stx-e _g69407507_)))
                                          (let ((_hd69457512_
                                                 (##car _e69447509_))
                                                (_tl69467514_
                                                 (##cdr _e69447509_)))
                                            (if (gx#stx-pair/null?
                                                 _hd69457512_)
                                                (if (fx>= (gx#stx-length
                                                           _hd69457512_)
                                                          '0)
                                                    (let ((_g9285_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd69457512_
                            '0)))
              (begin
                (let ((_g9286_ (values-count _g9285_)))
                  (if (not (fx= _g9286_ 2))
                      (error "Context expects 2 values" _g9286_)))
                (let ((_target69477517_ (values-ref _g9285_ 0))
                      (_tl69497519_ (values-ref _g9285_ 1)))
                  (if (gx#stx-null? _tl69497519_)
                      (letrec ((_loop69507522_
                                (lambda (_hd69487525_ _arg69547527_)
                                  (if (gx#stx-pair? _hd69487525_)
                                      (let ((_e69517530_
                                             (gx#stx-e _hd69487525_)))
                                        (let ((_lp-hd69527533_
                                               (##car _e69517530_))
                                              (_lp-tl69537535_
                                               (##cdr _e69517530_)))
                                          (_loop69507522_
                                           _lp-tl69537535_
                                           (cons _lp-hd69527533_
                                                 _arg69547527_))))
                                      (let ((_arg69557538_
                                             (reverse _arg69547527_)))
                                        (if (gx#stx-pair? _tl69467514_)
                                            (let ((_e69567541_
                                                   (gx#stx-e _tl69467514_)))
                                              (let ((_hd69577544_
                                                     (##car _e69567541_))
                                                    (_tl69587546_
                                                     (##cdr _e69567541_)))
                                                (if (gx#stx-pair? _hd69577544_)
                                                    (let ((_e69597549_
                                                           (gx#stx-e
                                                            _hd69577544_)))
                                                      (let ((_hd69607552_
                                                             (##car _e69597549_))
                                                            (_tl69617554_
                                                             (##cdr _e69597549_)))
                                                        (if (gx#identifier?
                                                             _hd69607552_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd69607552_)
                        (if (gx#stx-pair? _tl69617554_)
                            (let ((_e69627557_ (gx#stx-e _tl69617554_)))
                              (let ((_hd69637560_ (##car _e69627557_))
                                    (_tl69647562_ (##cdr _e69627557_)))
                                (if (gx#stx-pair? _hd69637560_)
                                    (let ((_e69657565_
                                           (gx#stx-e _hd69637560_)))
                                      (let ((_hd69667568_ (##car _e69657565_))
                                            (_tl69677570_ (##cdr _e69657565_)))
                                        (if (gx#identifier? _hd69667568_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd69667568_)
                                                (if (gx#stx-pair? _tl69677570_)
                                                    (let ((_e69687573_
                                                           (gx#stx-e
                                                            _tl69677570_)))
                                                      (let ((_hd69697576_
                                                             (##car _e69687573_))
                                                            (_tl69707578_
                                                             (##cdr _e69687573_)))
                                                        (if (gx#stx-null?
                                                             _tl69707578_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl69647562_)
                        (if (fx>= (gx#stx-length _tl69647562_) '0)
                            (let ((_g9287_ (gx#syntax-split-splice
                                            _tl69647562_
                                            '0)))
                              (begin
                                (let ((_g9288_ (values-count _g9287_)))
                                  (if (not (fx= _g9288_ 2))
                                      (error "Context expects 2 values"
                                             _g9288_)))
                                (let ((_target69717581_ (values-ref _g9287_ 0))
                                      (_tl69737583_ (values-ref _g9287_ 1)))
                                  (if (gx#stx-null? _tl69737583_)
                                      (letrec ((_loop69747586_
                                                (lambda (_hd69727589_
                                                         _xarg69787591_)
                                                  (if (gx#stx-pair?
                                                       _hd69727589_)
                                                      (let ((_e69757594_
                                                             (gx#stx-e
                                                              _hd69727589_)))
                                                        (let ((_lp-hd69767597_
                                                               (##car _e69757594_))
                                                              (_lp-tl69777599_
                                                               (##cdr _e69757594_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd69767597_)
                                                              (let ((_e69807602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd69767597_)))
                        (let ((_hd69817605_ (##car _e69807602_))
                              (_tl69827607_ (##cdr _e69807602_)))
                          (if (gx#identifier? _hd69817605_)
                              (if (gx#stx-eq? '%#ref _hd69817605_)
                                  (if (gx#stx-pair? _tl69827607_)
                                      (let ((_e69837610_
                                             (gx#stx-e _tl69827607_)))
                                        (let ((_hd69847613_
                                               (##car _e69837610_))
                                              (_tl69857615_
                                               (##cdr _e69837610_)))
                                          (if (gx#stx-null? _tl69857615_)
                                              (_loop69747586_
                                               _lp-tl69777599_
                                               (cons _hd69847613_
                                                     _xarg69787591_))
                                              (_g69367504_ _g69407507_))))
                                      (_g69367504_ _g69407507_))
                                  (_g69367504_ _g69407507_))
                              (_g69367504_ _g69407507_))))
                      (_g69367504_ _g69407507_))))
              (let ((_xarg69797618_ (reverse _xarg69787591_)))
                (if (gx#stx-null? _tl69587546_)
                    ((lambda (_L7621_ _L7622_ _L7623_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g76517654_ _g76527656_)
                                            (cons _g76517654_ _g76527656_))
                                          '()
                                          _L7623_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g76587661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g76597663_)
                    (cons _g76587661_ _g76597663_))
                  '()
                  _L7623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g76657668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g76667670_)
                    (cons _g76657668_ _g76667670_))
                  '()
                  _L7621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g76727675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g76737677_)
                   (cons _g76727675_ _g76737677_))
                 '()
                 _L7623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g76797682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g76807684_)
                   (cons _g76797682_ _g76807684_))
                 '()
                 _L7621_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g76867688_)
                                                    (gx#free-identifier=?
                                                     _g76867688_
                                                     _L7622_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g76907693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g76917695_)
                      (cons _g76907693_ _g76917695_))
                    '()
                    _L7623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g69367504_ _g69407507_)))
                     _xarg69797618_
                     _hd69697576_
                     _arg69557538_)
                    (_g69367504_ _g69407507_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop69747586_ _target69717581_ '()))
                                      (_g69367504_ _g69407507_)))))
                            (_g69367504_ _g69407507_))
                        (_g69367504_ _g69407507_))
                    (_g69367504_ _g69407507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69367504_ _g69407507_))
                                                (_g69367504_ _g69407507_))
                                            (_g69367504_ _g69407507_))))
                                    (_g69367504_ _g69407507_))))
                            (_g69367504_ _g69407507_))
                        (_g69367504_ _g69407507_))
                    (_g69367504_ _g69407507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69367504_
                                                     _g69407507_))))
                                            (_g69367504_ _g69407507_)))))))
                        (_loop69507522_ _target69477517_ '()))
                      (_g69367504_ _g69407507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69367504_ _g69407507_))
                                                (_g69367504_ _g69407507_))))
                                        (_g69367504_ _g69407507_)))))
                             (_g69357698_ _form6934_))))))))))
          (let ((_dispatch-case-e6251_
                 (lambda (_hd6395_ _body6396_)
                   (let ((_form6398_ (cons _hd6395_ (cons _body6396_ '()))))
                     (let ((_g64026526_
                            (lambda (_g64036523_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g64036523_))))
                       (let ((_g64016644_
                              (lambda (_g64036529_)
                                (if (gx#stx-pair? _g64036529_)
                                    (let ((_e64926531_ (gx#stx-e _g64036529_)))
                                      (let ((_hd64936534_ (##car _e64926531_))
                                            (_tl64946536_ (##cdr _e64926531_)))
                                        (if (gx#stx-pair? _tl64946536_)
                                            (let ((_e64956539_
                                                   (gx#stx-e _tl64946536_)))
                                              (let ((_hd64966542_
                                                     (##car _e64956539_))
                                                    (_tl64976544_
                                                     (##cdr _e64956539_)))
                                                (if (gx#stx-pair? _hd64966542_)
                                                    (let ((_e64986547_
                                                           (gx#stx-e
                                                            _hd64966542_)))
                                                      (let ((_hd64996550_
                                                             (##car _e64986547_))
                                                            (_tl65006552_
                                                             (##cdr _e64986547_)))
                                                        (if (gx#identifier?
                                                             _hd64996550_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd64996550_)
                        (if (gx#stx-pair? _tl65006552_)
                            (let ((_e65016555_ (gx#stx-e _tl65006552_)))
                              (let ((_hd65026558_ (##car _e65016555_))
                                    (_tl65036560_ (##cdr _e65016555_)))
                                (if (gx#stx-pair? _hd65026558_)
                                    (let ((_e65046563_
                                           (gx#stx-e _hd65026558_)))
                                      (let ((_hd65056566_ (##car _e65046563_))
                                            (_tl65066568_ (##cdr _e65046563_)))
                                        (if (gx#identifier? _hd65056566_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd65056566_)
                                                (if (gx#stx-pair? _tl65066568_)
                                                    (let ((_e65076571_
                                                           (gx#stx-e
                                                            _tl65066568_)))
                                                      (let ((_hd65086574_
                                                             (##car _e65076571_))
                                                            (_tl65096576_
                                                             (##cdr _e65076571_)))
                                                        (if (gx#stx-null?
                                                             _tl65096576_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65036560_)
                        (let ((_e65106579_ (gx#stx-e _tl65036560_)))
                          (let ((_hd65116582_ (##car _e65106579_))
                                (_tl65126584_ (##cdr _e65106579_)))
                            (if (gx#stx-pair? _hd65116582_)
                                (let ((_e65136587_ (gx#stx-e _hd65116582_)))
                                  (let ((_hd65146590_ (##car _e65136587_))
                                        (_tl65156592_ (##cdr _e65136587_)))
                                    (if (gx#identifier? _hd65146590_)
                                        (if (gx#stx-eq? '%#ref _hd65146590_)
                                            (if (gx#stx-pair? _tl65156592_)
                                                (let ((_e65166595_
                                                       (gx#stx-e
                                                        _tl65156592_)))
                                                  (let ((_hd65176598_
                                                         (##car _e65166595_))
                                                        (_tl65186600_
                                                         (##cdr _e65166595_)))
                                                    (if (gx#stx-null?
                                                         _tl65186600_)
                                                        (if (gx#stx-pair?
                                                             _tl65126584_)
                                                            (let ((_e65196603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl65126584_)))
                      (let ((_hd65206606_ (##car _e65196603_))
                            (_tl65216608_ (##cdr _e65196603_)))
                        (if (gx#stx-null? _tl65216608_)
                            (if (gx#stx-null? _tl64976544_)
                                ((lambda (_L6611_ _L6612_ _L6613_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax '#f '%#ref)
                                          (cons _L6611_ '()))))
                                 _hd65176598_
                                 _hd65086574_
                                 _hd64936534_)
                                (_g64026526_ _g64036529_))
                            (_g64026526_ _g64036529_))))
                    (_g64026526_ _g64036529_))
                (_g64026526_ _g64036529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g64026526_ _g64036529_))
                                            (_g64026526_ _g64036529_))
                                        (_g64026526_ _g64036529_))))
                                (_g64026526_ _g64036529_))))
                        (_g64026526_ _g64036529_))
                    (_g64026526_ _g64036529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64026526_ _g64036529_))
                                                (_g64026526_ _g64036529_))
                                            (_g64026526_ _g64036529_))))
                                    (_g64026526_ _g64036529_))))
                            (_g64026526_ _g64036529_))
                        (_g64026526_ _g64036529_))
                    (_g64026526_ _g64036529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64026526_
                                                     _g64036529_))))
                                            (_g64026526_ _g64036529_))))
                                    (_g64026526_ _g64036529_)))))
                         (let ((_g64006780_
                                (lambda (_g64036647_)
                                  (if (gx#stx-pair? _g64036647_)
                                      (let ((_e64536649_
                                             (gx#stx-e _g64036647_)))
                                        (let ((_hd64546652_
                                               (##car _e64536649_))
                                              (_tl64556654_
                                               (##cdr _e64536649_)))
                                          (if (gx#stx-pair/null? _hd64546652_)
                                              (if (fx>= (gx#stx-length
                                                         _hd64546652_)
                                                        '0)
                                                  (let ((_g9275_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd64546652_
                          '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (begin
                                                      (let ((_g9276_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g9275_)))
                (if (not (fx= _g9276_ 2))
                    (error "Context expects 2 values" _g9276_)))
              (let ((_target64566657_ (values-ref _g9275_ 0))
                    (_tl64586659_ (values-ref _g9275_ 1)))
                (letrec ((_loop64596662_
                          (lambda (_hd64576665_ _arg64636667_)
                            (if (gx#stx-pair? _hd64576665_)
                                (let ((_e64606670_ (gx#stx-e _hd64576665_)))
                                  (let ((_lp-hd64616673_ (##car _e64606670_))
                                        (_lp-tl64626675_ (##cdr _e64606670_)))
                                    (_loop64596662_
                                     _lp-tl64626675_
                                     (cons _lp-hd64616673_ _arg64636667_))))
                                (let ((_arg64646678_ (reverse _arg64636667_)))
                                  (if (gx#stx-pair? _tl64556654_)
                                      (let ((_e64656681_
                                             (gx#stx-e _tl64556654_)))
                                        (let ((_hd64666684_
                                               (##car _e64656681_))
                                              (_tl64676686_
                                               (##cdr _e64656681_)))
                                          (if (gx#stx-pair? _hd64666684_)
                                              (let ((_e64686689_
                                                     (gx#stx-e _hd64666684_)))
                                                (let ((_hd64696692_
                                                       (##car _e64686689_))
                                                      (_tl64706694_
                                                       (##cdr _e64686689_)))
                                                  (if (gx#identifier?
                                                       _hd64696692_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd64696692_)
                                                          (if (gx#stx-pair?
                                                               _tl64706694_)
                                                              (let ((_e64716697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl64706694_)))
                        (let ((_hd64726700_ (##car _e64716697_))
                              (_tl64736702_ (##cdr _e64716697_)))
                          (if (gx#stx-pair? _hd64726700_)
                              (let ((_e64746705_ (gx#stx-e _hd64726700_)))
                                (let ((_hd64756708_ (##car _e64746705_))
                                      (_tl64766710_ (##cdr _e64746705_)))
                                  (if (gx#identifier? _hd64756708_)
                                      (if (gx#stx-eq? '%#ref _hd64756708_)
                                          (if (gx#stx-pair? _tl64766710_)
                                              (let ((_e64776713_
                                                     (gx#stx-e _tl64766710_)))
                                                (let ((_hd64786716_
                                                       (##car _e64776713_))
                                                      (_tl64796718_
                                                       (##cdr _e64776713_)))
                                                  (if (gx#stx-null?
                                                       _tl64796718_)
                                                      (if (gx#stx-pair?
                                                           _tl64736702_)
                                                          (let ((_e64806721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl64736702_)))
                    (let ((_hd64816724_ (##car _e64806721_))
                          (_tl64826726_ (##cdr _e64806721_)))
                      (if (gx#stx-pair? _hd64816724_)
                          (let ((_e64836729_ (gx#stx-e _hd64816724_)))
                            (let ((_hd64846732_ (##car _e64836729_))
                                  (_tl64856734_ (##cdr _e64836729_)))
                              (if (gx#identifier? _hd64846732_)
                                  (if (gx#stx-eq? '%#ref _hd64846732_)
                                      (if (gx#stx-pair? _tl64856734_)
                                          (let ((_e64866737_
                                                 (gx#stx-e _tl64856734_)))
                                            (let ((_hd64876740_
                                                   (##car _e64866737_))
                                                  (_tl64886742_
                                                   (##cdr _e64866737_)))
                                              (if (gx#stx-null? _tl64886742_)
                                                  (if (gx#stx-null?
                                                       _tl64676686_)
                                                      ((lambda (_L6745_
                                                                _L6746_
                                                                _L6747_
                                                                _L6748_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L6745_ '()))))
               _hd64876740_
               _hd64786716_
               _tl64586659_
               _arg64646678_)
              (_g64016644_ _g64036647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g64016644_ _g64036647_))))
                                          (_g64016644_ _g64036647_))
                                      (_g64016644_ _g64036647_))
                                  (_g64016644_ _g64036647_))))
                          (_g64016644_ _g64036647_))))
                  (_g64016644_ _g64036647_))
              (_g64016644_ _g64036647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g64016644_ _g64036647_))
                                          (_g64016644_ _g64036647_))
                                      (_g64016644_ _g64036647_))))
                              (_g64016644_ _g64036647_))))
                      (_g64016644_ _g64036647_))
                  (_g64016644_ _g64036647_))
              (_g64016644_ _g64036647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g64016644_ _g64036647_))))
                                      (_g64016644_ _g64036647_)))))))
                  (_loop64596662_ _target64566657_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g64016644_ _g64036647_))
                                              (_g64016644_ _g64036647_))))
                                      (_g64016644_ _g64036647_)))))
                           (let ((_g63996928_
                                  (lambda (_g64036783_)
                                    (if (gx#stx-pair? _g64036783_)
                                        (let ((_e64076785_
                                               (gx#stx-e _g64036783_)))
                                          (let ((_hd64086788_
                                                 (##car _e64076785_))
                                                (_tl64096790_
                                                 (##cdr _e64076785_)))
                                            (if (gx#stx-pair/null?
                                                 _hd64086788_)
                                                (if (fx>= (gx#stx-length
                                                           _hd64086788_)
                                                          '0)
                                                    (let ((_g9277_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd64086788_
                            '0)))
              (begin
                (let ((_g9278_ (values-count _g9277_)))
                  (if (not (fx= _g9278_ 2))
                      (error "Context expects 2 values" _g9278_)))
                (let ((_target64106793_ (values-ref _g9277_ 0))
                      (_tl64126795_ (values-ref _g9277_ 1)))
                  (if (gx#stx-null? _tl64126795_)
                      (letrec ((_loop64136798_
                                (lambda (_hd64116801_ _arg64176803_)
                                  (if (gx#stx-pair? _hd64116801_)
                                      (let ((_e64146806_
                                             (gx#stx-e _hd64116801_)))
                                        (let ((_lp-hd64156809_
                                               (##car _e64146806_))
                                              (_lp-tl64166811_
                                               (##cdr _e64146806_)))
                                          (_loop64136798_
                                           _lp-tl64166811_
                                           (cons _lp-hd64156809_
                                                 _arg64176803_))))
                                      (let ((_arg64186814_
                                             (reverse _arg64176803_)))
                                        (if (gx#stx-pair? _tl64096790_)
                                            (let ((_e64196817_
                                                   (gx#stx-e _tl64096790_)))
                                              (let ((_hd64206820_
                                                     (##car _e64196817_))
                                                    (_tl64216822_
                                                     (##cdr _e64196817_)))
                                                (if (gx#stx-pair? _hd64206820_)
                                                    (let ((_e64226825_
                                                           (gx#stx-e
                                                            _hd64206820_)))
                                                      (let ((_hd64236828_
                                                             (##car _e64226825_))
                                                            (_tl64246830_
                                                             (##cdr _e64226825_)))
                                                        (if (gx#identifier?
                                                             _hd64236828_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd64236828_)
                        (if (gx#stx-pair? _tl64246830_)
                            (let ((_e64256833_ (gx#stx-e _tl64246830_)))
                              (let ((_hd64266836_ (##car _e64256833_))
                                    (_tl64276838_ (##cdr _e64256833_)))
                                (if (gx#stx-pair? _hd64266836_)
                                    (let ((_e64286841_
                                           (gx#stx-e _hd64266836_)))
                                      (let ((_hd64296844_ (##car _e64286841_))
                                            (_tl64306846_ (##cdr _e64286841_)))
                                        (if (gx#identifier? _hd64296844_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd64296844_)
                                                (if (gx#stx-pair? _tl64306846_)
                                                    (let ((_e64316849_
                                                           (gx#stx-e
                                                            _tl64306846_)))
                                                      (let ((_hd64326852_
                                                             (##car _e64316849_))
                                                            (_tl64336854_
                                                             (##cdr _e64316849_)))
                                                        (if (gx#stx-null?
                                                             _tl64336854_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl64276838_)
                        (if (fx>= (gx#stx-length _tl64276838_) '0)
                            (let ((_g9279_ (gx#syntax-split-splice
                                            _tl64276838_
                                            '0)))
                              (begin
                                (let ((_g9280_ (values-count _g9279_)))
                                  (if (not (fx= _g9280_ 2))
                                      (error "Context expects 2 values"
                                             _g9280_)))
                                (let ((_target64346857_ (values-ref _g9279_ 0))
                                      (_tl64366859_ (values-ref _g9279_ 1)))
                                  (if (gx#stx-null? _tl64366859_)
                                      (letrec ((_loop64376862_
                                                (lambda (_hd64356865_
                                                         _xarg64416867_)
                                                  (if (gx#stx-pair?
                                                       _hd64356865_)
                                                      (let ((_e64386870_
                                                             (gx#stx-e
                                                              _hd64356865_)))
                                                        (let ((_lp-hd64396873_
                                                               (##car _e64386870_))
                                                              (_lp-tl64406875_
                                                               (##cdr _e64386870_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd64396873_)
                                                              (let ((_e64436878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd64396873_)))
                        (let ((_hd64446881_ (##car _e64436878_))
                              (_tl64456883_ (##cdr _e64436878_)))
                          (if (gx#identifier? _hd64446881_)
                              (if (gx#stx-eq? '%#ref _hd64446881_)
                                  (if (gx#stx-pair? _tl64456883_)
                                      (let ((_e64466886_
                                             (gx#stx-e _tl64456883_)))
                                        (let ((_hd64476889_
                                               (##car _e64466886_))
                                              (_tl64486891_
                                               (##cdr _e64466886_)))
                                          (if (gx#stx-null? _tl64486891_)
                                              (_loop64376862_
                                               _lp-tl64406875_
                                               (cons _hd64476889_
                                                     _xarg64416867_))
                                              (_g64006780_ _g64036783_))))
                                      (_g64006780_ _g64036783_))
                                  (_g64006780_ _g64036783_))
                              (_g64006780_ _g64036783_))))
                      (_g64006780_ _g64036783_))))
              (let ((_xarg64426894_ (reverse _xarg64416867_)))
                (if (gx#stx-null? _tl64216822_)
                    ((lambda (_L6897_ _L6898_ _L6899_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax '#f '%#ref)
                              (cons _L6898_ '()))))
                     _xarg64426894_
                     _hd64326852_
                     _arg64186814_)
                    (_g64006780_ _g64036783_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop64376862_ _target64346857_ '()))
                                      (_g64006780_ _g64036783_)))))
                            (_g64006780_ _g64036783_))
                        (_g64006780_ _g64036783_))
                    (_g64006780_ _g64036783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64006780_ _g64036783_))
                                                (_g64006780_ _g64036783_))
                                            (_g64006780_ _g64036783_))))
                                    (_g64006780_ _g64036783_))))
                            (_g64006780_ _g64036783_))
                        (_g64006780_ _g64036783_))
                    (_g64006780_ _g64036783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64006780_
                                                     _g64036783_))))
                                            (_g64006780_ _g64036783_)))))))
                        (_loop64136798_ _target64106793_ '()))
                      (_g64006780_ _g64036783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64006780_ _g64036783_))
                                                (_g64006780_ _g64036783_))))
                                        (_g64006780_ _g64036783_)))))
                             (_g63996928_ _form6398_)))))))))
            (let ((_generate16252_
                   (lambda (_args6383_ _arglen6384_ _hd6385_ _body6386_)
                     (let ((_len6388_ (gx#stx-length _hd6385_)))
                       (let ((_condition6390_
                              (if (gx#stx-list? _hd6385_)
                                  (cons 'fx=
                                        (cons _arglen6384_
                                              (cons _len6388_ '())))
                                  (if (> _len6388_ '0)
                                      (cons 'fx>=
                                            (cons _arglen6384_
                                                  (cons _len6388_ '())))
                                      '#t))))
                         (let ((_dispatch6392_
                                (if (_dispatch-case?6250_ _hd6385_ _body6386_)
                                    (_dispatch-case-e6251_ _hd6385_ _body6386_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd6385_)
                                                (cons (gxc#compile-e
                                                       _body6386_)
                                                      '()))))))
                           (let ()
                             (cons _condition6390_
                                   (cons (cons 'apply
                                               (cons _dispatch6392_
                                                     (cons _args6383_ '())))
                                         '())))))))))
              (let ((_g62546282_
                     (lambda (_g62556279_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g62556279_))))
                (let ((_g62536380_
                       (lambda (_g62556285_)
                         (if (gx#stx-pair? _g62556285_)
                             (let ((_e62586287_ (gx#stx-e _g62556285_)))
                               (let ((_hd62596290_ (##car _e62586287_))
                                     (_tl62606292_ (##cdr _e62586287_)))
                                 (if (gx#stx-pair/null? _tl62606292_)
                                     (if (fx>= (gx#stx-length _tl62606292_) '0)
                                         (let ((_g9273_ (gx#syntax-split-splice
                                                         _tl62606292_
                                                         '0)))
                                           (begin
                                             (let ((_g9274_ (values-count
                                                             _g9273_)))
                                               (if (not (fx= _g9274_ 2))
                                                   (error "Context expects 2 values"
                                                          _g9274_)))
                                             (let ((_target62616295_
                                                    (values-ref _g9273_ 0))
                                                   (_tl62636297_
                                                    (values-ref _g9273_ 1)))
                                               (if (gx#stx-null? _tl62636297_)
                                                   (letrec ((_loop62646300_
                                                             (lambda (_hd62626303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body62686305_
                              _hd62696307_)
                       (if (gx#stx-pair? _hd62626303_)
                           (let ((_e62656310_ (gx#stx-e _hd62626303_)))
                             (let ((_lp-hd62666313_ (##car _e62656310_))
                                   (_lp-tl62676315_ (##cdr _e62656310_)))
                               (if (gx#stx-pair? _lp-hd62666313_)
                                   (let ((_e62726318_
                                          (gx#stx-e _lp-hd62666313_)))
                                     (let ((_hd62736321_ (##car _e62726318_))
                                           (_tl62746323_ (##cdr _e62726318_)))
                                       (if (gx#stx-pair? _tl62746323_)
                                           (let ((_e62756326_
                                                  (gx#stx-e _tl62746323_)))
                                             (let ((_hd62766329_
                                                    (##car _e62756326_))
                                                   (_tl62776331_
                                                    (##cdr _e62756326_)))
                                               (if (gx#stx-null? _tl62776331_)
                                                   (_loop62646300_
                                                    _lp-tl62676315_
                                                    (cons _hd62766329_
                                                          _body62686305_)
                                                    (cons _hd62736321_
                                                          _hd62696307_))
                                                   (_g62546282_ _g62556285_))))
                                           (_g62546282_ _g62556285_))))
                                   (_g62546282_ _g62556285_))))
                           (let ((_body62706334_ (reverse _body62686305_))
                                 (_hd62716336_ (reverse _hd62696307_)))
                             ((lambda (_L6339_ _L6340_)
                                (let ((_args6356_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen6357_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args6356_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen6357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args6356_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args6356_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g63586361_
                                                          _g63596363_)
                                                   (_generate16252_
                                                    _args6356_
                                                    _arglen6357_
                                                    _g63586361_
                                                    _g63596363_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g63656368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g63666370_)
                     (cons _g63656368_ _g63666370_))
                   '()
                   _L6340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g63726375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g63736377_)
                     (cons _g63726375_ _g63736377_))
                   '()
                   _L6339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body62706334_
                              _hd62716336_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop62646300_
                                                      _target62616295_
                                                      '()
                                                      '()))
                                                   (_g62546282_
                                                    _g62556285_)))))
                                         (_g62546282_ _g62556285_))
                                     (_g62546282_ _g62556285_))))
                             (_g62546282_ _g62556285_)))))
                  (_g62536380_ _stx6247_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda5927
      (lambda (_stx5929_ _compiled-body?5930_)
        (let ((_generate-simple5932_
               (lambda (_hd6234_ _body6235_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd6234_
                  _body6235_
                  _compiled-body?5930_))))
          (let ((_generate-values-post5934_
                 (lambda (_post6006_ _body6007_)
                   ((letrec ((_lp6009_
                              (lambda (_rest6011_ _body6012_)
                                (let ((_rest60136021_ _rest6011_))
                                  (let ((_E60166025_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest60136021_))))
                                    (let ((_else60156029_
                                           (lambda () _body6012_)))
                                      (let ((_K60176035_
                                             (lambda (_rest6032_ _bind6033_)
                                               (_lp6009_
                                                _rest6032_
                                                (cons 'let
                                                      (cons _bind6033_
                                                            (cons _body6012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest60136021_)
                                            (let ((_hd60186038_
                                                   (##car _rest60136021_))
                                                  (_tl60196040_
                                                   (##cdr _rest60136021_)))
                                              (let ((_bind6043_ _hd60186038_))
                                                (let ((_rest6045_
                                                       _tl60196040_))
                                                  (_K60176035_
                                                   _rest6045_
                                                   _bind6043_))))
                                            (_else60156029_)))))))))
                      _lp6009_)
                    _post6006_
                    _body6007_))))
            (let ((_generate-values-check5935_
                   (lambda (_check6003_ _body6004_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6004_ '())
                                   (reverse _check6003_))))))
              (let ((_generate-values5933_
                     (lambda (_hd6047_ _body6048_)
                       ((letrec ((_lp6050_
                                  (lambda (_rest6052_
                                           _bind6053_
                                           _check6054_
                                           _post6055_)
                                    (let ((_g60586069_
                                           (lambda (_g60596066_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g60596066_))))
                                      (let ((_g60576083_
                                             (lambda (_g60596072_)
                                               ((lambda ()
                                                  (let ((_body6076_
                                                         (if _compiled-body?5930_
                                                             _body6048_
                                                             (gxc#compile-e
                                                              _body6048_))))
                                                    (let ((_body6078_
                                                           (_generate-values-post5934_
                                                            _post6055_
                                                            _body6076_)))
                                                      (let ((_body6080_
                                                             (_generate-values-check5935_
                                                              _check6054_
                                                              _body6078_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6053_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6080_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g60566231_
                                               (lambda (_g60596086_)
                                                 (if (gx#stx-pair? _g60596086_)
                                                     (let ((_e60626088_
                                                            (gx#stx-e
                                                             _g60596086_)))
                                                       (let ((_hd60636091_
                                                              (##car _e60626088_))
                                                             (_tl60646093_
                                                              (##cdr _e60626088_)))
                                                         ((lambda (_L6096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6097_)
                    (let ((_g61126137_
                           (lambda (_g61136134_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g61136134_))))
                      (let ((_g61116181_
                             (lambda (_g61136140_)
                               (if (gx#stx-pair? _g61136140_)
                                   (let ((_e61276142_ (gx#stx-e _g61136140_)))
                                     (let ((_hd61286145_ (##car _e61276142_))
                                           (_tl61296147_ (##cdr _e61276142_)))
                                       (if (gx#stx-pair? _tl61296147_)
                                           (let ((_e61306150_
                                                  (gx#stx-e _tl61296147_)))
                                             (let ((_hd61316153_
                                                    (##car _e61306150_))
                                                   (_tl61326155_
                                                    (##cdr _e61306150_)))
                                               (if (gx#stx-null? _tl61326155_)
                                                   ((lambda (_L6158_ _L6159_)
                                                      (let ((_vals6172_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6174_
                                                               (gxc#compile-e
                                                                _L6158_)))
                                                          (let ((_check-values6176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6172_
                          _L6159_)))
                    (let ((_refs6178_
                           (gxc#generate-runtime-let-values-bind
                            _vals6172_
                            _L6159_)))
                      (let ()
                        (_lp6050_
                         _L6096_
                         (cons (cons _vals6172_ (cons _expr6174_ '()))
                               _bind6053_)
                         (cons _check-values6176_ _check6054_)
                         (cons _refs6178_ _post6055_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd61316153_
                                                    _hd61286145_)
                                                   (_g61126137_ _g61136140_))))
                                           (_g61126137_ _g61136140_))))
                                   (_g61126137_ _g61136140_)))))
                        (let ((_g61106228_
                               (lambda (_g61136184_)
                                 (if (gx#stx-pair? _g61136184_)
                                     (let ((_e61166186_
                                            (gx#stx-e _g61136184_)))
                                       (let ((_hd61176189_ (##car _e61166186_))
                                             (_tl61186191_
                                              (##cdr _e61166186_)))
                                         (if (gx#stx-pair? _hd61176189_)
                                             (let ((_e61196194_
                                                    (gx#stx-e _hd61176189_)))
                                               (let ((_hd61206197_
                                                      (##car _e61196194_))
                                                     (_tl61216199_
                                                      (##cdr _e61196194_)))
                                                 (if (gx#stx-null?
                                                      _tl61216199_)
                                                     (if (gx#stx-pair?
                                                          _tl61186191_)
                                                         (let ((_e61226202_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61186191_)))
                   (let ((_hd61236205_ (##car _e61226202_))
                         (_tl61246207_ (##cdr _e61226202_)))
                     (if (gx#stx-null? _tl61246207_)
                         ((lambda (_L6210_ _L6211_)
                            (let ((_eid6225_
                                   (gxc#generate-runtime-binding-id* _L6211_))
                                  (_expr6226_ (gxc#compile-e _L6210_)))
                              (_lp6050_
                               _L6096_
                               (cons (cons _eid6225_ (cons _expr6226_ '()))
                                     _bind6053_)
                               _check6054_
                               _post6055_)))
                          _hd61236205_
                          _hd61206197_)
                         (_g61116181_ _g61136184_))))
                 (_g61116181_ _g61136184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g61116181_
                                                      _g61136184_))))
                                             (_g61116181_ _g61136184_))))
                                     (_g61116181_ _g61136184_)))))
                          (_g61106228_ _L6097_)))))
                  _tl60646093_
                  _hd60636091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g60576083_
                                                      _g60596086_)))))
                                          (_g60566231_ _rest6052_)))))))
                          _lp6050_)
                        _hd6047_
                        '()
                        '()
                        '()))))
                (let ((_g59375954_
                       (lambda (_g59385951_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g59385951_))))
                  (let ((_g59366000_
                         (lambda (_g59385957_)
                           (if (gx#stx-pair? _g59385957_)
                               (let ((_e59415959_ (gx#stx-e _g59385957_)))
                                 (let ((_hd59425962_ (##car _e59415959_))
                                       (_tl59435964_ (##cdr _e59415959_)))
                                   (if (gx#stx-pair? _tl59435964_)
                                       (let ((_e59445967_
                                              (gx#stx-e _tl59435964_)))
                                         (let ((_hd59455970_
                                                (##car _e59445967_))
                                               (_tl59465972_
                                                (##cdr _e59445967_)))
                                           (if (gx#stx-pair? _tl59465972_)
                                               (let ((_e59475975_
                                                      (gx#stx-e _tl59465972_)))
                                                 (let ((_hd59485978_
                                                        (##car _e59475975_))
                                                       (_tl59495980_
                                                        (##cdr _e59475975_)))
                                                   (if (gx#stx-null?
                                                        _tl59495980_)
                                                       ((lambda (_L5983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5984_)
                  (if (gxc#generate-runtime-simple-let? _L5984_)
                      (_generate-simple5932_ _L5984_ _L5983_)
                      (_generate-values5933_ _L5984_ _L5983_)))
                _hd59485978_
                _hd59455970_)
               (_g59375954_ _g59385957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g59375954_ _g59385957_))))
                                       (_g59375954_ _g59385957_))))
                               (_g59375954_ _g59385957_)))))
                    (_g59366000_ _stx5929_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx6240_)
          (let ((_compiled-body?6242_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda5927
             _stx6240_
             _compiled-body?6242_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g9290_
          (let ((_g9289_ (length _g9290_)))
            (cond ((fx= _g9289_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g9290_))
                  ((fx= _g9289_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda5927
                          _g9290_))
                  (else (error "No clause matching arguments" _g9290_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals5828_ _hd5829_)
      ((letrec ((_lp5831_
                 (lambda (_rest5833_ _k5834_ _r5835_)
                   (let ((_g58405856_
                          (lambda (_g58415853_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g58415853_))))
                     (let ((_g58395863_
                            (lambda (_g58415859_)
                              ((lambda () (reverse _r5835_))))))
                       (let ((_g58385879_
                              (lambda (_g58415866_)
                                ((lambda (_L5868_)
                                   (if (gx#identifier? _L5868_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L5868_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals5828_ (cons _k5834_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r5835_)
                                       (_g58395863_ _g58415866_)))
                                 _g58415866_))))
                         (let ((_g58375903_
                                (lambda (_g58415882_)
                                  (if (gx#stx-pair? _g58415882_)
                                      (let ((_e58485884_
                                             (gx#stx-e _g58415882_)))
                                        (let ((_hd58495887_
                                               (##car _e58485884_))
                                              (_tl58505889_
                                               (##cdr _e58485884_)))
                                          ((lambda (_L5892_ _L5893_)
                                             (_lp5831_
                                              _L5892_
                                              (fx+ _k5834_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L5893_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals5828_ (cons _k5834_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r5835_)))
                                           _tl58505889_
                                           _hd58495887_)))
                                      (_g58385879_ _g58415882_)))))
                           (let ((_g58365925_
                                  (lambda (_g58415906_)
                                    (if (gx#stx-pair? _g58415906_)
                                        (let ((_e58435908_
                                               (gx#stx-e _g58415906_)))
                                          (let ((_hd58445911_
                                                 (##car _e58435908_))
                                                (_tl58455913_
                                                 (##cdr _e58435908_)))
                                            (if (gx#stx-datum? _hd58445911_)
                                                (if (equal? (gx#stx-e
                                                             _hd58445911_)
                                                            '#f)
                                                    ((lambda (_L5916_)
                                                       (_lp5831_
                                                        _L5916_
                                                        (fx+ _k5834_ '1)
                                                        _r5835_))
                                                     _tl58455913_)
                                                    (_g58375903_ _g58415906_))
                                                (_g58375903_ _g58415906_))))
                                        (_g58375903_ _g58415906_)))))
                             (_g58365925_ _rest5833_)))))))))
         _lp5831_)
       _hd5829_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda5506
      (lambda (_stx5508_ _compiled-body?5509_)
        (let ((_generate-simple5511_
               (lambda (_hd5815_ _body5816_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd5815_
                  _body5816_
                  _compiled-body?5509_))))
          (let ((_generate-values-check5513_
                 (lambda (_check5589_ _body5590_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body5590_ '())
                                 (reverse _check5589_))))))
            (let ((_generate-values-post5514_
                   (lambda (_post5582_ _body5583_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body5583_ '())
                                   (map (lambda (_g55845586_)
                                          (cons 'set! _g55845586_))
                                        (reverse _post5582_)))))))
              (let ((_generate-values5512_
                     (lambda (_hd5592_ _body5593_)
                       ((letrec ((_lp5595_
                                  (lambda (_rest5597_
                                           _bind5598_
                                           _check5599_
                                           _post5600_)
                                    (let ((_g56035614_
                                           (lambda (_g56045611_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g56045611_))))
                                      (let ((_g56025628_
                                             (lambda (_g56045617_)
                                               ((lambda ()
                                                  (let ((_body5621_
                                                         (if _compiled-body?5509_
                                                             _body5593_
                                                             (gxc#compile-e
                                                              _body5593_))))
                                                    (let ((_body5623_
                                                           (_generate-values-post5514_
                                                            _post5600_
                                                            _body5621_)))
                                                      (let ((_body5625_
                                                             (_generate-values-check5513_
                                                              _check5599_
                                                              _body5623_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind5598_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body5625_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g56015812_
                                               (lambda (_g56045631_)
                                                 (if (gx#stx-pair? _g56045631_)
                                                     (let ((_e56075633_
                                                            (gx#stx-e
                                                             _g56045631_)))
                                                       (let ((_hd56085636_
                                                              (##car _e56075633_))
                                                             (_tl56095638_
                                                              (##cdr _e56075633_)))
                                                         ((lambda (_L5641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5642_)
                    (let ((_g56575682_
                           (lambda (_g56585679_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g56585679_))))
                      (let ((_g56565762_
                             (lambda (_g56585685_)
                               (if (gx#stx-pair? _g56585685_)
                                   (let ((_e56725687_ (gx#stx-e _g56585685_)))
                                     (let ((_hd56735690_ (##car _e56725687_))
                                           (_tl56745692_ (##cdr _e56725687_)))
                                       (if (gx#stx-pair? _tl56745692_)
                                           (let ((_e56755695_
                                                  (gx#stx-e _tl56745692_)))
                                             (let ((_hd56765698_
                                                    (##car _e56755695_))
                                                   (_tl56775700_
                                                    (##cdr _e56755695_)))
                                               (if (gx#stx-null? _tl56775700_)
                                                   ((lambda (_L5703_ _L5704_)
                                                      (let ((_vals5717_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr5719_
                                                               (gxc#compile-e
                                                                _L5703_)))
                                                          (let ((_check-values5721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals5717_
                          _L5704_)))
                    (let ((_refs5723_
                           (gxc#generate-runtime-let-values-bind
                            _vals5717_
                            _L5704_)))
                      (let ()
                        (_lp5595_
                         _L5641_
                         (foldl1 cons
                                 (cons (cons _vals5717_ (cons _expr5719_ '()))
                                       _bind5598_)
                                 (map (lambda (_e57255727_)
                                        (let ((_g57295738_ _e57255727_))
                                          (let ((_E57315742_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g57295738_))))
                                            (let ((_K57325747_
                                                   (lambda (_eid5745_)
                                                     (cons _eid5745_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g57295738_)
                                                  (let ((_hd57335750_
                                                         (##car _g57295738_))
                                                        (_tl57345752_
                                                         (##cdr _g57295738_)))
                                                    (let ((_eid5755_
                                                           _hd57335750_))
                                                      (if (##pair? _tl57345752_)
                                                          (let ((_hd57355757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl57345752_))
                        (_tl57365759_ (##cdr _tl57345752_)))
                    (if (##null? _tl57365759_)
                        (_K57325747_ _eid5755_)
                        (_E57315742_)))
                  (_E57315742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E57315742_))))))
                                      _refs5723_))
                         (cons _check-values5721_ _check5599_)
                         (foldl1 cons _refs5723_ _post5600_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd56765698_
                                                    _hd56735690_)
                                                   (_g56575682_ _g56585685_))))
                                           (_g56575682_ _g56585685_))))
                                   (_g56575682_ _g56585685_)))))
                        (let ((_g56555809_
                               (lambda (_g56585765_)
                                 (if (gx#stx-pair? _g56585765_)
                                     (let ((_e56615767_
                                            (gx#stx-e _g56585765_)))
                                       (let ((_hd56625770_ (##car _e56615767_))
                                             (_tl56635772_
                                              (##cdr _e56615767_)))
                                         (if (gx#stx-pair? _hd56625770_)
                                             (let ((_e56645775_
                                                    (gx#stx-e _hd56625770_)))
                                               (let ((_hd56655778_
                                                      (##car _e56645775_))
                                                     (_tl56665780_
                                                      (##cdr _e56645775_)))
                                                 (if (gx#stx-null?
                                                      _tl56665780_)
                                                     (if (gx#stx-pair?
                                                          _tl56635772_)
                                                         (let ((_e56675783_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl56635772_)))
                   (let ((_hd56685786_ (##car _e56675783_))
                         (_tl56695788_ (##cdr _e56675783_)))
                     (if (gx#stx-null? _tl56695788_)
                         ((lambda (_L5791_ _L5792_)
                            (let ((_eid5806_
                                   (gxc#generate-runtime-binding-id* _L5792_))
                                  (_expr5807_ (gxc#compile-e _L5791_)))
                              (_lp5595_
                               _L5641_
                               (cons (cons _eid5806_ (cons _expr5807_ '()))
                                     _bind5598_)
                               _check5599_
                               _post5600_)))
                          _hd56685786_
                          _hd56655778_)
                         (_g56565762_ _g56585765_))))
                 (_g56565762_ _g56585765_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g56565762_
                                                      _g56585765_))))
                                             (_g56565762_ _g56585765_))))
                                     (_g56565762_ _g56585765_)))))
                          (_g56555809_ _L5642_)))))
                  _tl56095638_
                  _hd56085636_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g56025628_
                                                      _g56045631_)))))
                                          (_g56015812_ _rest5597_)))))))
                          _lp5595_)
                        _hd5592_
                        '()
                        '()
                        '()))))
                (let ((_g55165533_
                       (lambda (_g55175530_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g55175530_))))
                  (let ((_g55155579_
                         (lambda (_g55175536_)
                           (if (gx#stx-pair? _g55175536_)
                               (let ((_e55205538_ (gx#stx-e _g55175536_)))
                                 (let ((_hd55215541_ (##car _e55205538_))
                                       (_tl55225543_ (##cdr _e55205538_)))
                                   (if (gx#stx-pair? _tl55225543_)
                                       (let ((_e55235546_
                                              (gx#stx-e _tl55225543_)))
                                         (let ((_hd55245549_
                                                (##car _e55235546_))
                                               (_tl55255551_
                                                (##cdr _e55235546_)))
                                           (if (gx#stx-pair? _tl55255551_)
                                               (let ((_e55265554_
                                                      (gx#stx-e _tl55255551_)))
                                                 (let ((_hd55275557_
                                                        (##car _e55265554_))
                                                       (_tl55285559_
                                                        (##cdr _e55265554_)))
                                                   (if (gx#stx-null?
                                                        _tl55285559_)
                                                       ((lambda (_L5562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5563_)
                  (if (gxc#generate-runtime-simple-let? _L5563_)
                      (_generate-simple5511_ _L5563_ _L5562_)
                      (_generate-values5512_ _L5563_ _L5562_)))
                _hd55275557_
                _hd55245549_)
               (_g55165533_ _g55175536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g55165533_ _g55175536_))))
                                       (_g55165533_ _g55175536_))))
                               (_g55165533_ _g55175536_)))))
                    (_g55155579_ _stx5508_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx5821_)
          (let ((_compiled-body?5823_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda5506
             _stx5821_
             _compiled-body?5823_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g9292_
          (let ((_g9291_ (length _g9292_)))
            (cond ((fx= _g9291_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g9292_))
                  ((fx= _g9291_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda5506
                          _g9292_))
                  (else (error "No clause matching arguments" _g9292_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx4627_)
      (let ((_collect-closures4630_
             (lambda (_forms5448_)
               (map (lambda (_e54495451_)
                      (let ((_g54535462_ _e54495451_))
                        (let ((_E54555466_
                               (lambda ()
                                 (error '"No clause matching" _g54535462_))))
                          (let ((_K54565471_
                                 (lambda (_expr5469_)
                                   (gxc#collect-expression-refs _expr5469_))))
                            (if (##pair? _g54535462_)
                                (let ((_hd54575474_ (##car _g54535462_))
                                      (_tl54585476_ (##cdr _g54535462_)))
                                  (if (##pair? _tl54585476_)
                                      (let ((_hd54595479_ (##car _tl54585476_))
                                            (_tl54605481_
                                             (##cdr _tl54585476_)))
                                        (let ((_expr5484_ _hd54595479_))
                                          (if (##null? _tl54605481_)
                                              (_K54565471_ _expr5484_)
                                              (_E54555466_))))
                                      (_E54555466_)))
                                (_E54555466_))))))
                    _forms5448_))))
        (let ((_collect-bindings4631_
               (lambda (_forms5372_)
                 (map (lambda (_e53735375_)
                        (let ((_g53775386_ _e53735375_))
                          (let ((_E53795390_
                                 (lambda ()
                                   (error '"No clause matching" _g53775386_))))
                            (let ((_K53805433_
                                   (lambda (_bind5393_)
                                     ((letrec ((_lp5395_
                                                (lambda (_rest5397_ _r5398_)
                                                  (let ((_rest53995407_
                                                         _rest5397_))
                                                    (let ((_E54025411_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest53995407_))))
              (let ((_else54015415_
                     (lambda ()
                       (if (gx#identifier? _rest5397_)
                           (cons _rest5397_ _r5398_)
                           _r5398_))))
                (let ((_K54035421_
                       (lambda (_rest5418_ _id5419_)
                         (if (gx#identifier? _id5419_)
                             (_lp5395_
                              _rest5418_
                              (cons (gx#binding-id
                                     (gx#resolve-identifier _id5419_))
                                    _r5398_))
                             (_lp5395_ _rest5418_ _r5398_)))))
                  (if (##pair? _rest53995407_)
                      (let ((_hd54045424_ (##car _rest53995407_))
                            (_tl54055426_ (##cdr _rest53995407_)))
                        (let ((_id5429_ _hd54045424_))
                          (let ((_rest5431_ _tl54055426_))
                            (_K54035421_ _rest5431_ _id5429_))))
                      (_else54015415_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp5395_)
                                      _bind5393_
                                      '()))))
                              (if (##pair? _g53775386_)
                                  (let ((_hd53815436_ (##car _g53775386_))
                                        (_tl53825438_ (##cdr _g53775386_)))
                                    (let ((_bind5441_ _hd53815436_))
                                      (if (##pair? _tl53825438_)
                                          (let ((_hd53835443_
                                                 (##car _tl53825438_))
                                                (_tl53845445_
                                                 (##cdr _tl53825438_)))
                                            (if (##null? _tl53845445_)
                                                (_K53805433_ _bind5441_)
                                                (_E53795390_)))
                                          (_E53795390_))))
                                  (_E53795390_))))))
                      _forms5372_))))
          (let ((_closure-reference?4635_
                 (lambda (_closure4924_ _bindings4925_)
                   (ormap1 (lambda (_g49264928_)
                             (table-ref _closure4924_ _g49264928_ '#f))
                           _bindings4925_))))
            (let ((_is-effect-expr?4637_
                   (lambda (_expr4835_)
                     (let ((_g48374847_
                            (lambda (_g48384844_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g48384844_))))
                       (let ((_g48364870_
                              (lambda (_g48384850_)
                                (if (gx#stx-pair? _g48384850_)
                                    (let ((_e48404852_ (gx#stx-e _g48384850_)))
                                      (let ((_hd48414855_ (##car _e48404852_))
                                            (_tl48424857_ (##cdr _e48404852_)))
                                        ((lambda (_L4860_)
                                           (not (memq (gx#stx-e _L4860_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd48414855_)))
                                    (_g48374847_ _g48384850_)))))
                         (_g48364870_ _expr4835_))))))
              (let ((_is-lambda-expr?4638_
                     (lambda (_expr4797_)
                       (let ((_g47994809_
                              (lambda (_g48004806_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g48004806_))))
                         (let ((_g47984832_
                                (lambda (_g48004812_)
                                  (if (gx#stx-pair? _g48004812_)
                                      (let ((_e48024814_
                                             (gx#stx-e _g48004812_)))
                                        (let ((_hd48034817_
                                               (##car _e48024814_))
                                              (_tl48044819_
                                               (##cdr _e48024814_)))
                                          ((lambda (_L4822_)
                                             (memq (gx#stx-e _L4822_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd48034817_)))
                                      (_g47994809_ _g48004812_)))))
                           (_g47984832_ _expr4797_))))))
                (let ((_lift-rec4634_
                       (lambda (_forms4931_)
                         ((letrec ((_lp4933_
                                    (lambda (_rest4935_
                                             _pre4936_
                                             _bind4937_
                                             _init4938_)
                                      (let ((_rest49394947_ _rest4935_))
                                        (let ((_E49424951_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest49394947_))))
                                          (let ((_else49414955_
                                                 (lambda ()
                                                   (values (reverse _pre4936_)
                                                           (reverse _bind4937_)
                                                           (reverse _init4938_)))))
                                            (let ((_K49435146_
                                                   (lambda (_rest4958_
                                                            _bind-hd4959_)
                                                     (let ((_g49634998_
                                                            (lambda (_g49644995_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g49644995_))))
                                                       (let ((_g49625055_
                                                              (lambda (_g49645001_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g49645001_)
                            (let ((_e49885003_ (gx#stx-e _g49645001_)))
                              (let ((_hd49895006_ (##car _e49885003_))
                                    (_tl49905008_ (##cdr _e49885003_)))
                                (if (gx#stx-pair? _tl49905008_)
                                    (let ((_e49915011_
                                           (gx#stx-e _tl49905008_)))
                                      (let ((_hd49925014_ (##car _e49915011_))
                                            (_tl49935016_ (##cdr _e49915011_)))
                                        (if (gx#stx-null? _tl49935016_)
                                            ((lambda (_L5019_ _L5020_)
                                               (let ((_vals5039_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5041_
                                                        (gxc#compile-e
                                                         _L5019_)))
                                                   (let ((_check-values5043_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5039_
                                                           _L5020_)))
                                                     (let ((_refs5045_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5039_
                                                             _L5020_)))
                                                       (let ()
                                                         (_lp4933_
                                                          _rest4958_
                                                          (foldl1 (lambda (_ref5048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r5049_)
                            (cons (cons (car _ref5048_) (cons '#!void '()))
                                  _r5049_))
                          _pre4936_
                          _refs5045_)
                  _bind4937_
                  (cons (cons 'let
                              (cons (cons (cons _vals5039_
                                                (cons _expr5041_ '()))
                                          '())
                                    (cons _check-values5043_
                                          (cons (map (lambda (_g50505052_)
                                                       (cons 'set!
                                                             _g50505052_))
                                                     _refs5045_)
                                                '()))))
                        _init4938_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49925014_
                                             _hd49895006_)
                                            (_g49634998_ _g49645001_))))
                                    (_g49634998_ _g49645001_))))
                            (_g49634998_ _g49645001_)))))
                 (let ((_g49615101_
                        (lambda (_g49645058_)
                          (if (gx#stx-pair? _g49645058_)
                              (let ((_e49775060_ (gx#stx-e _g49645058_)))
                                (let ((_hd49785063_ (##car _e49775060_))
                                      (_tl49795065_ (##cdr _e49775060_)))
                                  (if (gx#stx-pair? _hd49785063_)
                                      (let ((_e49805068_
                                             (gx#stx-e _hd49785063_)))
                                        (let ((_hd49815071_
                                               (##car _e49805068_))
                                              (_tl49825073_
                                               (##cdr _e49805068_)))
                                          (if (gx#stx-null? _tl49825073_)
                                              (if (gx#stx-pair? _tl49795065_)
                                                  (let ((_e49835076_
                                                         (gx#stx-e
                                                          _tl49795065_)))
                                                    (let ((_hd49845079_
                                                           (##car _e49835076_))
                                                          (_tl49855081_
                                                           (##cdr _e49835076_)))
                                                      (if (gx#stx-null?
                                                           _tl49855081_)
                                                          ((lambda (_L5084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5085_)
                     (let ((_eid5099_
                            (gxc#generate-runtime-binding-id _L5085_)))
                       (if (_is-lambda-expr?4638_ _L5084_)
                           (_lp4933_
                            _rest4958_
                            _pre4936_
                            (cons (cons _eid5099_
                                        (cons (gxc#compile-e _L5084_) '()))
                                  _bind4937_)
                            _init4938_)
                           (_lp4933_
                            _rest4958_
                            (cons (cons _eid5099_ (cons '#!void '()))
                                  _pre4936_)
                            _bind4937_
                            (cons (cons 'set!
                                        (cons _eid5099_
                                              (cons (gxc#compile-e _L5084_)
                                                    '())))
                                  _init4938_)))))
                   _hd49845079_
                   _hd49815071_)
                  (_g49625055_ _g49645058_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g49625055_ _g49645058_))
                                              (_g49625055_ _g49645058_))))
                                      (_g49625055_ _g49645058_))))
                              (_g49625055_ _g49645058_)))))
                   (let ((_g49605143_
                          (lambda (_g49645104_)
                            (if (gx#stx-pair? _g49645104_)
                                (let ((_e49665106_ (gx#stx-e _g49645104_)))
                                  (let ((_hd49675109_ (##car _e49665106_))
                                        (_tl49685111_ (##cdr _e49665106_)))
                                    (if (gx#stx-pair? _hd49675109_)
                                        (let ((_e49695114_
                                               (gx#stx-e _hd49675109_)))
                                          (let ((_hd49705117_
                                                 (##car _e49695114_))
                                                (_tl49715119_
                                                 (##cdr _e49695114_)))
                                            (if (gx#stx-datum? _hd49705117_)
                                                (if (equal? (gx#stx-e
                                                             _hd49705117_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl49715119_)
                                                        (if (gx#stx-pair?
                                                             _tl49685111_)
                                                            (let ((_e49725122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl49685111_)))
                      (let ((_hd49735125_ (##car _e49725122_))
                            (_tl49745127_ (##cdr _e49725122_)))
                        (if (gx#stx-null? _tl49745127_)
                            ((lambda (_L5130_)
                               (_lp4933_
                                _rest4958_
                                _pre4936_
                                _bind4937_
                                (cons (gxc#compile-e _L5130_) _init4938_)))
                             _hd49735125_)
                            (_g49615101_ _g49645104_))))
                    (_g49615101_ _g49645104_))
                (_g49615101_ _g49645104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g49615101_ _g49645104_))
                                                (_g49615101_ _g49645104_))))
                                        (_g49615101_ _g49645104_))))
                                (_g49615101_ _g49645104_)))))
                     (_g49605143_ _bind-hd4959_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest49394947_)
                                                  (let ((_hd49445149_
                                                         (##car _rest49394947_))
                                                        (_tl49455151_
                                                         (##cdr _rest49394947_)))
                                                    (let ((_bind-hd5154_
                                                           _hd49445149_))
                                                      (let ((_rest5156_
                                                             _tl49455151_))
                                                        (_K49435146_
                                                         _rest5156_
                                                         _bind-hd5154_))))
                                                  (_else49414955_)))))))))
                            _lp4933_)
                          _forms4931_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?4636_
                         (lambda (_hd-bind4873_)
                           (let ((_g48754888_
                                  (lambda (_g48764885_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g48764885_))))
                             (let ((_g48744921_
                                    (lambda (_g48764891_)
                                      (if (gx#stx-pair? _g48764891_)
                                          (let ((_e48784893_
                                                 (gx#stx-e _g48764891_)))
                                            (let ((_hd48794896_
                                                   (##car _e48784893_))
                                                  (_tl48804898_
                                                   (##cdr _e48784893_)))
                                              (if (gx#stx-pair? _tl48804898_)
                                                  (let ((_e48814901_
                                                         (gx#stx-e
                                                          _tl48804898_)))
                                                    (let ((_hd48824904_
                                                           (##car _e48814901_))
                                                          (_tl48834906_
                                                           (##cdr _e48814901_)))
                                                      (if (gx#stx-null?
                                                           _tl48834906_)
                                                          ((lambda (_L4909_)
                                                             (_is-effect-expr?4637_
                                                              _L4909_))
                                                           _hd48824904_)
                                                          (_g48754888_
                                                           _g48764891_))))
                                                  (_g48754888_ _g48764891_))))
                                          (_g48754888_ _g48764891_)))))
                               (_g48744921_ _hd-bind4873_))))))
                    (let ((_lift-pre4632_
                           (lambda (_hd5265_ _bindings5266_ _closures5267_)
                             ((letrec ((_lp5269_
                                        (lambda (_rest-forms5271_
                                                 _rest-bindings5272_
                                                 _rest-closures5273_
                                                 _post-forms5274_
                                                 _post-bindings5275_
                                                 _post-closures5276_
                                                 _pre-forms5277_
                                                 _lifted?5278_)
                                          (let ((_rest-forms52795295_
                                                 _rest-forms5271_)
                                                (_rest-bindings52805297_
                                                 _rest-bindings5272_)
                                                (_rest-closures52815299_
                                                 _rest-closures5273_))
                                            (let ((_E52845303_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms52795295_
                                                            _rest-bindings52805297_
                                                            _rest-closures52815299_))))
                                              (let ((_else52835307_
                                                     (lambda ()
                                                       (if _lifted?5278_
                                                           (_lp5269_
                                                            (reverse _post-forms5274_)
                                                            (reverse _post-bindings5275_)
                                                            (reverse _post-closures5276_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms5277_
                                                            '#f)
                                                           (values (reverse _pre-forms5277_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms5274_)
                           (reverse _post-bindings5275_)
                           (reverse _post-closures5276_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K52855360_
                                                       (lambda (_rest-forms5310_
                                                                _form5311_)
                                                         (let ((_K52865348_
                                                                (lambda (_rest-bindings5313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings5314_)
                          (let ((_K52875336_
                                 (lambda (_rest-closures5316_ _closure5317_)
                                   (if (let ((_$e5319_
                                              (_closure-reference?4635_
                                               _closure5317_
                                               _bindings5314_)))
                                         (if _$e5319_
                                             _$e5319_
                                             (let ((_$e5326_
                                                    (ormap1 (lambda (_g53215323_)
                                                              (_closure-reference?4635_
                                                               _closure5317_
                                                               _g53215323_))
                                                            _rest-bindings5313_)))
                                               (if _$e5326_
                                                   _$e5326_
                                                   (let ((_$e5333_
                                                          (ormap1 (lambda (_g53285330_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?4635_
                             _closure5317_
                             _g53285330_))
                          _post-bindings5275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e5333_
                                                         _$e5333_
                                                         (if (_is-effect-bind?4636_
                                                              _form5311_)
                                                             (find _is-effect-bind?4636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms5274_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp5269_
                                        _rest-forms5310_
                                        _rest-bindings5313_
                                        _rest-closures5316_
                                        (cons _form5311_ _post-forms5274_)
                                        (cons _bindings5314_
                                              _post-bindings5275_)
                                        (cons _closure5317_
                                              _post-closures5276_)
                                        _pre-forms5277_
                                        _lifted?5278_)
                                       (_lp5269_
                                        _rest-forms5310_
                                        _rest-bindings5313_
                                        _rest-closures5316_
                                        _post-forms5274_
                                        _post-bindings5275_
                                        _post-closures5276_
                                        (cons _form5311_ _pre-forms5277_)
                                        '#t)))))
                            (if (##pair? _rest-closures52815299_)
                                (let ((_hd52885339_
                                       (##car _rest-closures52815299_))
                                      (_tl52895341_
                                       (##cdr _rest-closures52815299_)))
                                  (let ((_closure5344_ _hd52885339_))
                                    (let ((_rest-closures5346_ _tl52895341_))
                                      (_K52875336_
                                       _rest-closures5346_
                                       _closure5344_))))
                                (_else52835307_))))))
                   (if (##pair? _rest-bindings52805297_)
                       (let ((_hd52905351_ (##car _rest-bindings52805297_))
                             (_tl52915353_ (##cdr _rest-bindings52805297_)))
                         (let ((_bindings5356_ _hd52905351_))
                           (let ((_rest-bindings5358_ _tl52915353_))
                             (_K52865348_
                              _rest-bindings5358_
                              _bindings5356_))))
                       (_else52835307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms52795295_)
                                                      (let ((_hd52925363_
                                                             (##car _rest-forms52795295_))
                                                            (_tl52935365_
                                                             (##cdr _rest-forms52795295_)))
                                                        (let ((_form5368_
                                                               _hd52925363_))
                                                          (let ((_rest-forms5370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl52935365_))
                    (_K52855360_ _rest-forms5370_ _form5368_))))
              (_else52835307_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp5269_)
                              _hd5265_
                              _bindings5266_
                              _closures5267_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post4633_
                             (lambda (_hd5158_ _bindings5159_ _closures5160_)
                               ((letrec ((_lp5162_
                                          (lambda (_rest-forms5164_
                                                   _rest-bindings5165_
                                                   _rest-closures5166_
                                                   _pre-forms5167_
                                                   _pre-bindings5168_
                                                   _pre-closures5169_
                                                   _post-forms5170_
                                                   _lifted?5171_)
                                            (let ((_rest-forms51725188_
                                                   _rest-forms5164_)
                                                  (_rest-bindings51735190_
                                                   _rest-bindings5165_)
                                                  (_rest-closures51745192_
                                                   _rest-closures5166_))
                                              (let ((_E51775196_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms51725188_
                                                              _rest-bindings51735190_
                                                              _rest-closures51745192_))))
                                                (let ((_else51765200_
                                                       (lambda ()
                                                         (if _lifted?5171_
                                                             (_lp5162_
                                                              (reverse _pre-forms5167_)
                                                              (reverse _pre-bindings5168_)
                                                              (reverse _pre-closures5169_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms5170_
                                                              '#f)
                                                             (values _post-forms5170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms5167_
                             _pre-bindings5168_
                             _pre-closures5169_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K51785253_
                                                         (lambda (_rest-forms5203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form5204_)
                   (let ((_K51795241_
                          (lambda (_rest-bindings5206_ _bindings5207_)
                            (let ((_K51805229_
                                   (lambda (_rest-closures5209_ _closure5210_)
                                     (if (let ((_$e5212_
                                                (_closure-reference?4635_
                                                 _closure5210_
                                                 _bindings5207_)))
                                           (if _$e5212_
                                               _$e5212_
                                               (let ((_$e5219_
                                                      (ormap1 (lambda (_g52145216_)
                                                                (_closure-reference?4635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52145216_
                         _bindings5207_))
                      _rest-closures5209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e5219_
                                                     _$e5219_
                                                     (let ((_$e5226_
                                                            (ormap1 (lambda (_g52215223_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?4635_
                               _g52215223_
                               _bindings5207_))
                            _pre-closures5169_)))
               (if _$e5226_
                   _$e5226_
                   (if (_is-effect-bind?4636_ _form5204_)
                       (find _is-effect-bind?4636_ _pre-forms5167_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp5162_
                                          _rest-forms5203_
                                          _rest-bindings5206_
                                          _rest-closures5209_
                                          (cons _form5204_ _pre-forms5167_)
                                          (cons _bindings5207_
                                                _pre-bindings5168_)
                                          (cons _closure5210_
                                                _pre-closures5169_)
                                          _post-forms5170_
                                          _lifted?5171_)
                                         (_lp5162_
                                          _rest-forms5203_
                                          _rest-bindings5206_
                                          _rest-closures5209_
                                          _pre-forms5167_
                                          _pre-bindings5168_
                                          _pre-closures5169_
                                          (cons _form5204_ _post-forms5170_)
                                          '#t)))))
                              (if (##pair? _rest-closures51745192_)
                                  (let ((_hd51815232_
                                         (##car _rest-closures51745192_))
                                        (_tl51825234_
                                         (##cdr _rest-closures51745192_)))
                                    (let ((_closure5237_ _hd51815232_))
                                      (let ((_rest-closures5239_ _tl51825234_))
                                        (_K51805229_
                                         _rest-closures5239_
                                         _closure5237_))))
                                  (_else51765200_))))))
                     (if (##pair? _rest-bindings51735190_)
                         (let ((_hd51835244_ (##car _rest-bindings51735190_))
                               (_tl51845246_ (##cdr _rest-bindings51735190_)))
                           (let ((_bindings5249_ _hd51835244_))
                             (let ((_rest-bindings5251_ _tl51845246_))
                               (_K51795241_
                                _rest-bindings5251_
                                _bindings5249_))))
                         (_else51765200_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms51725188_)
                                                        (let ((_hd51855256_
                                                               (##car _rest-forms51725188_))
                                                              (_tl51865258_
                                                               (##cdr _rest-forms51725188_)))
                                                          (let ((_form5261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd51855256_))
                    (let ((_rest-forms5263_ _tl51865258_))
                      (_K51785253_ _rest-forms5263_ _form5261_))))
                (_else51765200_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp5162_)
                                (reverse _hd5158_)
                                (reverse _bindings5159_)
                                (reverse _closures5160_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize4629_
                               (lambda (_forms5486_)
                                 (let ((_closures5488_
                                        (_collect-closures4630_ _forms5486_)))
                                   (let ((_bindings5490_
                                          (_collect-bindings4631_
                                           _forms5486_)))
                                     (let ((_g9295_ (_lift-pre4632_
                                                     _forms5486_
                                                     _bindings5490_
                                                     _closures5488_)))
                                       (begin
                                         (let ((_g9296_ (values-count
                                                         _g9295_)))
                                           (if (not (fx= _g9296_ 4))
                                               (error "Context expects 4 values"
                                                      _g9296_)))
                                         (let ((_pre-bind5492_
                                                (values-ref _g9295_ 0))
                                               (_forms5493_
                                                (values-ref _g9295_ 1))
                                               (_bindings5494_
                                                (values-ref _g9295_ 2))
                                               (_closures5495_
                                                (values-ref _g9295_ 3)))
                                           (let ((_g9297_ (_lift-post4633_
                                                           _forms5493_
                                                           _bindings5494_
                                                           _closures5495_)))
                                             (begin
                                               (let ((_g9298_ (values-count
                                                               _g9297_)))
                                                 (if (not (fx= _g9298_ 4))
                                                     (error "Context expects 4 values"
                                                            _g9298_)))
                                               (let ((_post-bind5497_
                                                      (values-ref _g9297_ 0))
                                                     (_forms5498_
                                                      (values-ref _g9297_ 1))
                                                     (_bindings5499_
                                                      (values-ref _g9297_ 2))
                                                     (_closures5500_
                                                      (values-ref _g9297_ 3)))
                                                 (let ((_g9299_ (_lift-rec4634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _forms5498_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g9300_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g9299_)))
               (if (not (fx= _g9300_ 3))
                   (error "Context expects 3 values" _g9300_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre5502_
                                                            (values-ref
                                                             _g9299_
                                                             0))
                                                           (_rec-bind5503_
                                                            (values-ref
                                                             _g9299_
                                                             1))
                                                           (_rec-init5504_
                                                            (values-ref
                                                             _g9299_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind5492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre5502_
                         _rec-bind5503_
                         _rec-init5504_
                         _post-bind5497_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*4639_
                                    (lambda (_hd4726_ _body4727_)
                                      (let ((_hd47284736_ _hd4726_))
                                        (let ((_E47314740_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd47284736_))))
                                          (let ((_else47304744_
                                                 (lambda () _body4727_)))
                                            (let ((_K47324785_
                                                   (lambda (_rest4747_
                                                            _bind4748_)
                                                     (let ((_bind47494758_
                                                            _bind4748_))
                                                       (let ((_E47514762_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind47494758_))))
                 (let ((_K47524768_
                        (lambda (_expr4765_ _hd4766_)
                          (if (gx#stx-ormap gx#identifier? _hd4766_)
                              (gxc#generate-runtime-let-values%__opt-lambda5927
                               (cons '%#let-values
                                     (cons (cons _bind4748_ '())
                                           (cons (_generate-let*4639_
                                                  _rest4747_
                                                  _body4727_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr4765_)
                                          (cons (_generate-let*4639_
                                                 _rest4747_
                                                 _body4727_)
                                                '())))))))
                   (if (##pair? _bind47494758_)
                       (let ((_hd47534771_ (##car _bind47494758_))
                             (_tl47544773_ (##cdr _bind47494758_)))
                         (let ((_hd4776_ _hd47534771_))
                           (if (##pair? _tl47544773_)
                               (let ((_hd47554778_ (##car _tl47544773_))
                                     (_tl47564780_ (##cdr _tl47544773_)))
                                 (let ((_expr4783_ _hd47554778_))
                                   (if (##null? _tl47564780_)
                                       (_K47524768_ _expr4783_ _hd4776_)
                                       (_E47514762_))))
                               (_E47514762_))))
                       (_E47514762_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd47284736_)
                                                  (let ((_hd47334788_
                                                         (##car _hd47284736_))
                                                        (_tl47344790_
                                                         (##cdr _hd47284736_)))
                                                    (let ((_bind4793_
                                                           _hd47334788_))
                                                      (let ((_rest4795_
                                                             _tl47344790_))
                                                        (_K47324785_
                                                         _rest4795_
                                                         _bind4793_))))
                                                  (_else47304744_)))))))))
                            (let ((_g46414658_
                                   (lambda (_g46424655_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g46424655_))))
                              (let ((_g46404723_
                                     (lambda (_g46424661_)
                                       (if (gx#stx-pair? _g46424661_)
                                           (let ((_e46454663_
                                                  (gx#stx-e _g46424661_)))
                                             (let ((_hd46464666_
                                                    (##car _e46454663_))
                                                   (_tl46474668_
                                                    (##cdr _e46454663_)))
                                               (if (gx#stx-pair? _tl46474668_)
                                                   (let ((_e46484671_
                                                          (gx#stx-e
                                                           _tl46474668_)))
                                                     (let ((_hd46494674_
                                                            (##car _e46484671_))
                                                           (_tl46504676_
                                                            (##cdr _e46484671_)))
                                                       (if (gx#stx-pair?
                                                            _tl46504676_)
                                                           (let ((_e46514679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl46504676_)))
                     (let ((_hd46524682_ (##car _e46514679_))
                           (_tl46534684_ (##cdr _e46514679_)))
                       (if (gx#stx-null? _tl46534684_)
                           ((lambda (_L4687_ _L4688_)
                              (let ((_g9293_ (_linearize4629_ _L4688_)))
                                (begin
                                  (let ((_g9294_ (values-count _g9293_)))
                                    (if (not (fx= _g9294_ 5))
                                        (error "Context expects 5 values"
                                               _g9294_)))
                                  (let ((_pre4704_ (values-ref _g9293_ 0))
                                        (_rec-pre4705_ (values-ref _g9293_ 1))
                                        (_rec-bind4706_ (values-ref _g9293_ 2))
                                        (_rec-init4707_ (values-ref _g9293_ 3))
                                        (_post4708_ (values-ref _g9293_ 4)))
                                    (let ((_body4710_ (gxc#compile-e _L4687_)))
                                      (let ((_body4712_
                                             (if (null? _post4708_)
                                                 _body4710_
                                                 (_generate-let*4639_
                                                  _post4708_
                                                  _body4710_))))
                                        (let ((_body4714_
                                               (if (null? _rec-init4707_)
                                                   _body4712_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4712_ '())
                         _rec-init4707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body4716_
                                                 (if (null? _rec-bind4706_)
                                                     _body4714_
                                                     (cons 'letrec
                                                           (cons _rec-bind4706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body4714_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body4718_
                                                   (if (null? _rec-pre4705_)
                                                       _body4716_
                                                       (cons 'let
                                                             (cons _rec-pre4705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body4716_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body4720_
                                                     (if (null? _pre4704_)
                                                         _body4718_
                                                         (_generate-let*4639_
                                                          _pre4704_
                                                          _body4718_))))
                                                (let () _body4720_)))))))))))
                            _hd46524682_
                            _hd46494674_)
                           (_g46414658_ _g46424661_))))
                   (_g46414658_ _g46424661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g46414658_ _g46424661_))))
                                           (_g46414658_ _g46424661_)))))
                                (_g46404723_ _stx4627_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd4520_)
      ((letrec ((_lp4522_
                 (lambda (_rest4524_)
                   (let ((_g45284549_
                          (lambda (_g45294546_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g45294546_))))
                     (let ((_g45274556_
                            (lambda (_g45294552_) ((lambda () '#f)))))
                       (let ((_g45264563_
                              (lambda (_g45294559_)
                                (if (gx#stx-null? _g45294559_)
                                    ((lambda () '#t))
                                    (_g45274556_ _g45294559_)))))
                         (let ((_g45254624_
                                (lambda (_g45294566_)
                                  (if (gx#stx-pair? _g45294566_)
                                      (let ((_e45334568_
                                             (gx#stx-e _g45294566_)))
                                        (let ((_hd45344571_
                                               (##car _e45334568_))
                                              (_tl45354573_
                                               (##cdr _e45334568_)))
                                          (if (gx#stx-pair? _hd45344571_)
                                              (let ((_e45364576_
                                                     (gx#stx-e _hd45344571_)))
                                                (let ((_hd45374579_
                                                       (##car _e45364576_))
                                                      (_tl45384581_
                                                       (##cdr _e45364576_)))
                                                  (if (gx#stx-pair?
                                                       _hd45374579_)
                                                      (let ((_e45394584_
                                                             (gx#stx-e
                                                              _hd45374579_)))
                                                        (let ((_hd45404587_
                                                               (##car _e45394584_))
                                                              (_tl45414589_
                                                               (##cdr _e45394584_)))
                                                          (if (gx#stx-null?
                                                               _tl45414589_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl45384581_)
                          (let ((_e45424592_ (gx#stx-e _tl45384581_)))
                            (let ((_hd45434595_ (##car _e45424592_))
                                  (_tl45444597_ (##cdr _e45424592_)))
                              (if (gx#stx-null? _tl45444597_)
                                  ((lambda (_L4600_ _L4601_ _L4602_)
                                     (_lp4522_ _L4600_))
                                   _tl45354573_
                                   _hd45434595_
                                   _hd45404587_)
                                  (_g45264563_ _g45294566_))))
                          (_g45264563_ _g45294566_))
                      (_g45264563_ _g45294566_))))
              (_g45264563_ _g45294566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g45264563_ _g45294566_))))
                                      (_g45264563_ _g45294566_)))))
                           (_g45254624_ _rest4524_))))))))
         _lp4522_)
       _hd4520_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form4444_ _hd4445_ _body4446_ _compiled-body?4447_)
      (let ((_generate14449_
             (lambda (_bind4451_)
               (let ((_g44534470_
                      (lambda (_g44544467_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g44544467_))))
                 (let ((_g44524517_
                        (lambda (_g44544473_)
                          (if (gx#stx-pair? _g44544473_)
                              (let ((_e44574475_ (gx#stx-e _g44544473_)))
                                (let ((_hd44584478_ (##car _e44574475_))
                                      (_tl44594480_ (##cdr _e44574475_)))
                                  (if (gx#stx-pair? _hd44584478_)
                                      (let ((_e44604483_
                                             (gx#stx-e _hd44584478_)))
                                        (let ((_hd44614486_
                                               (##car _e44604483_))
                                              (_tl44624488_
                                               (##cdr _e44604483_)))
                                          (if (gx#stx-null? _tl44624488_)
                                              (if (gx#stx-pair? _tl44594480_)
                                                  (let ((_e44634491_
                                                         (gx#stx-e
                                                          _tl44594480_)))
                                                    (let ((_hd44644494_
                                                           (##car _e44634491_))
                                                          (_tl44654496_
                                                           (##cdr _e44634491_)))
                                                      (if (gx#stx-null?
                                                           _tl44654496_)
                                                          ((lambda (_L4499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4500_)
                     (cons (gxc#generate-runtime-binding-id* _L4500_)
                           (cons (gxc#compile-e _L4499_) '())))
                   _hd44644494_
                   _hd44614486_)
                  (_g44534470_ _g44544473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g44534470_ _g44544473_))
                                              (_g44534470_ _g44544473_))))
                                      (_g44534470_ _g44544473_))))
                              (_g44534470_ _g44544473_)))))
                   (_g44524517_ _bind4451_))))))
        (cons _form4444_
              (cons (map _generate14449_ _hd4445_)
                    (cons (if _compiled-body?4447_
                              _body4446_
                              (gxc#compile-e _body4446_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx4355_)
      (letrec ((_generate14357_
                (lambda (_datum4409_)
                  (if (let ((_$e4411_ (null? _datum4409_)))
                        (if _$e4411_
                            _$e4411_
                            (let ((_$e4414_ (interned-symbol? _datum4409_)))
                              (if _$e4414_
                                  _$e4414_
                                  (gx#self-quoting? _datum4409_)))))
                      _datum4409_
                      (if (uninterned-symbol? _datum4409_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda8238
                           _datum4409_
                           '#t)
                          (if (pair? _datum4409_)
                              (cons (_generate14357_ (car _datum4409_))
                                    (_generate14357_ (cdr _datum4409_)))
                              (if (box? _datum4409_)
                                  (box (_generate14357_ (unbox _datum4409_)))
                                  (if (vector? _datum4409_)
                                      (vector-map _generate14357_ _datum4409_)
                                      (if (let ((_$e4417_
                                                 (s8vector? _datum4409_)))
                                            (if _$e4417_
                                                _$e4417_
                                                (let ((_$e4420_
                                                       (u8vector?
                                                        _datum4409_)))
                                                  (if _$e4420_
                                                      _$e4420_
                                                      (let ((_$e4423_
                                                             (s16vector?
                                                              _datum4409_)))
                                                        (if _$e4423_
                                                            _$e4423_
                                                            (let ((_$e4426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum4409_)))
                      (if _$e4426_
                          _$e4426_
                          (let ((_$e4429_ (s32vector? _datum4409_)))
                            (if _$e4429_
                                _$e4429_
                                (let ((_$e4432_ (u32vector? _datum4409_)))
                                  (if _$e4432_
                                      _$e4432_
                                      (let ((_$e4435_
                                             (s64vector? _datum4409_)))
                                        (if _$e4435_
                                            _$e4435_
                                            (let ((_$e4438_
                                                   (u64vector? _datum4409_)))
                                              (if _$e4438_
                                                  _$e4438_
                                                  (let ((_$e4441_
                                                         (f32vector?
                                                          _datum4409_)))
                                                    (if _$e4441_
                                                        _$e4441_
                                                        (f64vector?
                                                         _datum4409_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum4409_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx4355_))))))))))
        (let ((_g43594372_
               (lambda (_g43604369_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43604369_))))
          (let ((_g43584406_
                 (lambda (_g43604375_)
                   (if (gx#stx-pair? _g43604375_)
                       (let ((_e43624377_ (gx#stx-e _g43604375_)))
                         (let ((_hd43634380_ (##car _e43624377_))
                               (_tl43644382_ (##cdr _e43624377_)))
                           (if (gx#stx-pair? _tl43644382_)
                               (let ((_e43654385_ (gx#stx-e _tl43644382_)))
                                 (let ((_hd43664388_ (##car _e43654385_))
                                       (_tl43674390_ (##cdr _e43654385_)))
                                   (if (gx#stx-null? _tl43674390_)
                                       ((lambda (_L4393_)
                                          (cons 'quote
                                                (cons (_generate14357_
                                                       (gx#stx-e _L4393_))
                                                      '())))
                                        _hd43664388_)
                                       (_g43594372_ _g43604375_))))
                               (_g43594372_ _g43604375_))))
                       (_g43594372_ _g43604375_)))))
            (_g43584406_ _stx4355_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx4317_)
      (let ((_g43194329_
             (lambda (_g43204326_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43204326_))))
        (let ((_g43184352_
               (lambda (_g43204332_)
                 (if (gx#stx-pair? _g43204332_)
                     (let ((_e43224334_ (gx#stx-e _g43204332_)))
                       (let ((_hd43234337_ (##car _e43224334_))
                             (_tl43244339_ (##cdr _e43224334_)))
                         ((lambda (_L4342_) (map gxc#compile-e _L4342_))
                          _tl43244339_)))
                     (_g43194329_ _g43204332_)))))
          (_g43184352_ _stx4317_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx4279_)
      (let ((_g42814291_
             (lambda (_g42824288_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g42824288_))))
        (let ((_g42804314_
               (lambda (_g42824294_)
                 (if (gx#stx-pair? _g42824294_)
                     (let ((_e42844296_ (gx#stx-e _g42824294_)))
                       (let ((_hd42854299_ (##car _e42844296_))
                             (_tl42864301_ (##cdr _e42844296_)))
                         ((lambda (_L4304_)
                            (cons 'if (map gxc#compile-e _L4304_)))
                          _tl42864301_)))
                     (_g42814291_ _g42824294_)))))
          (_g42804314_ _stx4279_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx4228_)
      (let ((_g42304243_
             (lambda (_g42314240_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g42314240_))))
        (let ((_g42294276_
               (lambda (_g42314246_)
                 (if (gx#stx-pair? _g42314246_)
                     (let ((_e42334248_ (gx#stx-e _g42314246_)))
                       (let ((_hd42344251_ (##car _e42334248_))
                             (_tl42354253_ (##cdr _e42334248_)))
                         (if (gx#stx-pair? _tl42354253_)
                             (let ((_e42364256_ (gx#stx-e _tl42354253_)))
                               (let ((_hd42374259_ (##car _e42364256_))
                                     (_tl42384261_ (##cdr _e42364256_)))
                                 (if (gx#stx-null? _tl42384261_)
                                     ((lambda (_L4264_)
                                        (gxc#generate-runtime-binding-id
                                         _L4264_))
                                      _hd42374259_)
                                     (_g42304243_ _g42314246_))))
                             (_g42304243_ _g42314246_))))
                     (_g42304243_ _g42314246_)))))
          (_g42294276_ _stx4228_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx4161_)
      (let ((_g41634180_
             (lambda (_g41644177_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g41644177_))))
        (let ((_g41624225_
               (lambda (_g41644183_)
                 (if (gx#stx-pair? _g41644183_)
                     (let ((_e41674185_ (gx#stx-e _g41644183_)))
                       (let ((_hd41684188_ (##car _e41674185_))
                             (_tl41694190_ (##cdr _e41674185_)))
                         (if (gx#stx-pair? _tl41694190_)
                             (let ((_e41704193_ (gx#stx-e _tl41694190_)))
                               (let ((_hd41714196_ (##car _e41704193_))
                                     (_tl41724198_ (##cdr _e41704193_)))
                                 (if (gx#stx-pair? _tl41724198_)
                                     (let ((_e41734201_
                                            (gx#stx-e _tl41724198_)))
                                       (let ((_hd41744204_ (##car _e41734201_))
                                             (_tl41754206_
                                              (##cdr _e41734201_)))
                                         (if (gx#stx-null? _tl41754206_)
                                             ((lambda (_L4209_ _L4210_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L4210_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4209_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd41744204_
                                              _hd41714196_)
                                             (_g41634180_ _g41644183_))))
                                     (_g41634180_ _g41644183_))))
                             (_g41634180_ _g41644183_))))
                     (_g41634180_ _g41644183_)))))
          (_g41624225_ _stx4161_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4094_)
      (let ((_g40964113_
             (lambda (_g40974110_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40974110_))))
        (let ((_g40954158_
               (lambda (_g40974116_)
                 (if (gx#stx-pair? _g40974116_)
                     (let ((_e41004118_ (gx#stx-e _g40974116_)))
                       (let ((_hd41014121_ (##car _e41004118_))
                             (_tl41024123_ (##cdr _e41004118_)))
                         (if (gx#stx-pair? _tl41024123_)
                             (let ((_e41034126_ (gx#stx-e _tl41024123_)))
                               (let ((_hd41044129_ (##car _e41034126_))
                                     (_tl41054131_ (##cdr _e41034126_)))
                                 (if (gx#stx-pair? _tl41054131_)
                                     (let ((_e41064134_
                                            (gx#stx-e _tl41054131_)))
                                       (let ((_hd41074137_ (##car _e41064134_))
                                             (_tl41084139_
                                              (##cdr _e41064134_)))
                                         (if (gx#stx-null? _tl41084139_)
                                             ((lambda (_L4142_ _L4143_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4142_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4143_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd41074137_
                                              _hd41044129_)
                                             (_g40964113_ _g40974116_))))
                                     (_g40964113_ _g40974116_))))
                             (_g40964113_ _g40974116_))))
                     (_g40964113_ _g40974116_)))))
          (_g40954158_ _stx4094_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4027_)
      (let ((_g40294046_
             (lambda (_g40304043_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g40304043_))))
        (let ((_g40284091_
               (lambda (_g40304049_)
                 (if (gx#stx-pair? _g40304049_)
                     (let ((_e40334051_ (gx#stx-e _g40304049_)))
                       (let ((_hd40344054_ (##car _e40334051_))
                             (_tl40354056_ (##cdr _e40334051_)))
                         (if (gx#stx-pair? _tl40354056_)
                             (let ((_e40364059_ (gx#stx-e _tl40354056_)))
                               (let ((_hd40374062_ (##car _e40364059_))
                                     (_tl40384064_ (##cdr _e40364059_)))
                                 (if (gx#stx-pair? _tl40384064_)
                                     (let ((_e40394067_
                                            (gx#stx-e _tl40384064_)))
                                       (let ((_hd40404070_ (##car _e40394067_))
                                             (_tl40414072_
                                              (##cdr _e40394067_)))
                                         (if (gx#stx-null? _tl40414072_)
                                             ((lambda (_L4075_ _L4076_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4075_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4076_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd40404070_
                                              _hd40374062_)
                                             (_g40294046_ _g40304049_))))
                                     (_g40294046_ _g40304049_))))
                             (_g40294046_ _g40304049_))))
                     (_g40294046_ _g40304049_)))))
          (_g40284091_ _stx4027_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx3944_)
      (let ((_g39463967_
             (lambda (_g39473964_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g39473964_))))
        (let ((_g39454024_
               (lambda (_g39473970_)
                 (if (gx#stx-pair? _g39473970_)
                     (let ((_e39513972_ (gx#stx-e _g39473970_)))
                       (let ((_hd39523975_ (##car _e39513972_))
                             (_tl39533977_ (##cdr _e39513972_)))
                         (if (gx#stx-pair? _tl39533977_)
                             (let ((_e39543980_ (gx#stx-e _tl39533977_)))
                               (let ((_hd39553983_ (##car _e39543980_))
                                     (_tl39563985_ (##cdr _e39543980_)))
                                 (if (gx#stx-pair? _tl39563985_)
                                     (let ((_e39573988_
                                            (gx#stx-e _tl39563985_)))
                                       (let ((_hd39583991_ (##car _e39573988_))
                                             (_tl39593993_
                                              (##cdr _e39573988_)))
                                         (if (gx#stx-pair? _tl39593993_)
                                             (let ((_e39603996_
                                                    (gx#stx-e _tl39593993_)))
                                               (let ((_hd39613999_
                                                      (##car _e39603996_))
                                                     (_tl39624001_
                                                      (##cdr _e39603996_)))
                                                 (if (gx#stx-null?
                                                      _tl39624001_)
                                                     ((lambda (_L4004_
                                                               _L4005_
                                                               _L4006_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4004_)
                            (cons (gxc#compile-e _L4005_)
                                  (cons (gxc#compile-e _L4006_)
                                        (cons ''#f '()))))))
              _hd39613999_
              _hd39583991_
              _hd39553983_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g39463967_
                                                      _g39473970_))))
                                             (_g39463967_ _g39473970_))))
                                     (_g39463967_ _g39473970_))))
                             (_g39463967_ _g39473970_))))
                     (_g39463967_ _g39473970_)))))
          (_g39454024_ _stx3944_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx3845_)
      (let ((_g38473872_
             (lambda (_g38483869_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g38483869_))))
        (let ((_g38463941_
               (lambda (_g38483875_)
                 (if (gx#stx-pair? _g38483875_)
                     (let ((_e38533877_ (gx#stx-e _g38483875_)))
                       (let ((_hd38543880_ (##car _e38533877_))
                             (_tl38553882_ (##cdr _e38533877_)))
                         (if (gx#stx-pair? _tl38553882_)
                             (let ((_e38563885_ (gx#stx-e _tl38553882_)))
                               (let ((_hd38573888_ (##car _e38563885_))
                                     (_tl38583890_ (##cdr _e38563885_)))
                                 (if (gx#stx-pair? _tl38583890_)
                                     (let ((_e38593893_
                                            (gx#stx-e _tl38583890_)))
                                       (let ((_hd38603896_ (##car _e38593893_))
                                             (_tl38613898_
                                              (##cdr _e38593893_)))
                                         (if (gx#stx-pair? _tl38613898_)
                                             (let ((_e38623901_
                                                    (gx#stx-e _tl38613898_)))
                                               (let ((_hd38633904_
                                                      (##car _e38623901_))
                                                     (_tl38643906_
                                                      (##cdr _e38623901_)))
                                                 (if (gx#stx-pair?
                                                      _tl38643906_)
                                                     (let ((_e38653909_
                                                            (gx#stx-e
                                                             _tl38643906_)))
                                                       (let ((_hd38663912_
                                                              (##car _e38653909_))
                                                             (_tl38673914_
                                                              (##cdr _e38653909_)))
                                                         (if (gx#stx-null?
                                                              _tl38673914_)
                                                             ((lambda (_L3917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L3918_
                               _L3919_
                               _L3920_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L3918_)
                                    (cons (gxc#compile-e _L3917_)
                                          (cons (gxc#compile-e _L3919_)
                                                (cons (gxc#compile-e _L3920_)
                                                      (cons ''#f '())))))))
                      _hd38663912_
                      _hd38633904_
                      _hd38603896_
                      _hd38573888_)
                     (_g38473872_ _g38483875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g38473872_
                                                      _g38483875_))))
                                             (_g38473872_ _g38483875_))))
                                     (_g38473872_ _g38483875_))))
                             (_g38473872_ _g38483875_))))
                     (_g38473872_ _g38483875_)))))
          (_g38463941_ _stx3845_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx3754_)
      (let ((_g37563766_
             (lambda (_g37573763_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g37573763_))))
        (let ((_g37553842_
               (lambda (_g37573769_)
                 (if (gx#stx-pair? _g37573769_)
                     (let ((_e37593771_ (gx#stx-e _g37573769_)))
                       (let ((_hd37603774_ (##car _e37593771_))
                             (_tl37613776_ (##cdr _e37593771_)))
                         ((lambda (_L3779_)
                            (let ((_ht3789_ (make-hash-table-eq)))
                              ((letrec ((_lp3791_
                                         (lambda (_rest3793_ _loads3794_)
                                           (let ((_K3796_ (lambda (_ctx3835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest3836_)
                    (let ((_id3838_ (gx#expander-context-id _ctx3835_)))
                      (if (table-ref _ht3789_ _id3838_ '#f)
                          (_lp3791_ _rest3836_ _loads3794_)
                          (let ((_rt3840_
                                 (string-append
                                  (symbol->string _id3838_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht3789_ _id3838_ _rt3840_)
                              (_lp3791_
                               _rest3836_
                               (cons _rt3840_ _loads3794_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest37973805_ _rest3793_))
                                               (let ((_E38003809_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest37973805_))))
                                                 (let ((_else37993817_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g38123814_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g38123814_))
                             (reverse _loads3794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K38013823_
                                                          (lambda (_rest3820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in3821_)
                    (if (gx#module-context? _in3821_)
                        (_K3796_ _in3821_ _rest3820_)
                        (if (gx#module-import? _in3821_)
                            (if (fxpositive? (gx#module-import-phi _in3821_))
                                (_lp3791_ _rest3820_ _loads3794_)
                                (_K3796_ (gx#module-export-context
                                          (gx#module-import-source _in3821_))
                                         _rest3820_))
                            (if (gx#import-set? _in3821_)
                                (if (fxpositive? (gx#import-set-phi _in3821_))
                                    (_lp3791_ _rest3820_ _loads3794_)
                                    (_K3796_ (gx#import-set-source _in3821_)
                                             _rest3820_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx3754_
                                 _in3821_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest37973805_)
                                                         (let ((_hd38023826_
                                                                (##car _rest37973805_))
                                                               (_tl38033828_
                                                                (##cdr _rest37973805_)))
                                                           (let ((_in3831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38023826_))
                     (let ((_rest3833_ _tl38033828_))
                       (_K38013823_ _rest3833_ _in3831_))))
                 (_else37993817_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp3791_)
                               _L3779_
                               '())))
                          _tl37613776_)))
                     (_g37563766_ _g37573769_)))))
          (_g37553842_ _stx3754_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx3695_)
      (let ((_generate-quote3697_
             (lambda (_q3752_)
               (if (gx#identifier? _q3752_)
                   (gxc#generate-runtime-identifier _q3752_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx3695_
                    _q3752_)))))
        (let ((_g36993712_
               (lambda (_g37003709_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37003709_))))
          (let ((_g36983749_
                 (lambda (_g37003715_)
                   (if (gx#stx-pair? _g37003715_)
                       (let ((_e37023717_ (gx#stx-e _g37003715_)))
                         (let ((_hd37033720_ (##car _e37023717_))
                               (_tl37043722_ (##cdr _e37023717_)))
                           (if (gx#stx-pair? _tl37043722_)
                               (let ((_e37053725_ (gx#stx-e _tl37043722_)))
                                 (let ((_hd37063728_ (##car _e37053725_))
                                       (_tl37073730_ (##cdr _e37053725_)))
                                   (if (gx#stx-null? _tl37073730_)
                                       ((lambda (_L3733_)
                                          (let ((_gid3746_
                                                 (gxc#generate-runtime-temporary__opt-lambda8184
                                                  '#t))
                                                (_quote-e3747_
                                                 (_generate-quote3697_
                                                  _L3733_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid3746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e3747_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid3746_)))
                                        _hd37063728_)
                                       (_g36993712_ _g37003715_))))
                               (_g36993712_ _g37003715_))))
                       (_g36993712_ _g37003715_)))))
            (_g36983749_ _stx3695_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx3628_)
      (let ((_g36303647_
             (lambda (_g36313644_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g36313644_))))
        (let ((_g36293692_
               (lambda (_g36313650_)
                 (if (gx#stx-pair? _g36313650_)
                     (let ((_e36343652_ (gx#stx-e _g36313650_)))
                       (let ((_hd36353655_ (##car _e36343652_))
                             (_tl36363657_ (##cdr _e36343652_)))
                         (if (gx#stx-pair? _tl36363657_)
                             (let ((_e36373660_ (gx#stx-e _tl36363657_)))
                               (let ((_hd36383663_ (##car _e36373660_))
                                     (_tl36393665_ (##cdr _e36373660_)))
                                 (if (gx#stx-pair? _tl36393665_)
                                     (let ((_e36403668_
                                            (gx#stx-e _tl36393665_)))
                                       (let ((_hd36413671_ (##car _e36403668_))
                                             (_tl36423673_
                                              (##cdr _e36403668_)))
                                         (if (gx#stx-null? _tl36423673_)
                                             ((lambda (_L3676_ _L3677_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L3677_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3676_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd36413671_
                                              _hd36383663_)
                                             (_g36303647_ _g36313650_))))
                                     (_g36303647_ _g36313650_))))
                             (_g36303647_ _g36313650_))))
                     (_g36303647_ _g36313650_)))))
          (_g36293692_ _stx3628_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx3577_ _state3578_)
      (let ((_g35803590_
             (lambda (_g35813587_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g35813587_))))
        (let ((_g35793625_
               (lambda (_g35813593_)
                 (if (gx#stx-pair? _g35813593_)
                     (let ((_e35833595_ (gx#stx-e _g35813593_)))
                       (let ((_hd35843598_ (##car _e35833595_))
                             (_tl35853600_ (##cdr _e35833595_)))
                         ((lambda (_L3603_)
                            (let ((_c-body3617_
                                   (map (lambda (_g36123614_)
                                          (gxc#compile-e
                                           _g36123614_
                                           _state3578_))
                                        _L3603_)))
                              (let ((_c-body3622_
                                     (filter (lambda (_$obj3619_)
                                               (not (eq? _$obj3619_ '#!void)))
                                             _c-body3617_)))
                                (let () (cons '%#begin _c-body3622_)))))
                          _tl35853600_)))
                     (_g35803590_ _g35813593_)))))
          (_g35793625_ _stx3577_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx3485_ _state3486_)
      (let ((_g34883498_
             (lambda (_g34893495_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34893495_))))
        (let ((_g34873574_
               (lambda (_g34893501_)
                 (if (gx#stx-pair? _g34893501_)
                     (let ((_e34913503_ (gx#stx-e _g34893501_)))
                       (let ((_hd34923506_ (##car _e34913503_))
                             (_tl34933508_ (##cdr _e34913503_)))
                         ((lambda (_L3511_)
                            (let ((_phi3521_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block3523_
                                     (gxc#meta-state-begin-phi!
                                      _state3486_
                                      _phi3521_)))
                                (let ((_compiled3526_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  '%#begin)
                                                 _L3511_)
                                           _state3486_))
                                        gx#current-expander-phi
                                        _phi3521_)))
                                  (let ()
                                    (let ((_g35293539_
                                           (lambda (_g35303536_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g35303536_))))
                                      (let ((_g35283571_
                                             (lambda (_g35303542_)
                                               (if (gx#stx-pair? _g35303542_)
                                                   (let ((_e35323544_
                                                          (gx#stx-e
                                                           _g35303542_)))
                                                     (let ((_hd35333547_
                                                            (##car _e35323544_))
                                                           (_tl35343549_
                                                            (##cdr _e35323544_)))
                                                       (if (gx#identifier?
                                                            _hd35333547_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd35333547_)
                                                               ((lambda (_L3552_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body3569_
                                 (filter (lambda (_$obj3566_)
                                           (not (eq? _$obj3566_ '#!void)))
                                         _L3552_)))
                            (if _block3523_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block3523_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body3569_))
                                (if (null? _c-body3569_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body3569_)))))
                        _tl35343549_)
                       (_g35293539_ _g35303542_))
                   (_g35293539_ _g35303542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g35293539_
                                                    _g35303542_)))))
                                        (_g35283571_ _compiled3526_))))))))
                          _tl34933508_)))
                     (_g34883498_ _g34893501_)))))
          (_g34873574_ _stx3485_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx3416_ _state3417_)
      (begin
        (gxc#meta-state-end-phi! _state3417_)
        (let ((_g34193433_
               (lambda (_g34203430_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34203430_))))
          (let ((_g34183482_
                 (lambda (_g34203436_)
                   (if (gx#stx-pair? _g34203436_)
                       (let ((_e34233438_ (gx#stx-e _g34203436_)))
                         (let ((_hd34243441_ (##car _e34233438_))
                               (_tl34253443_ (##cdr _e34233438_)))
                           (if (gx#stx-pair? _tl34253443_)
                               (let ((_e34263446_ (gx#stx-e _tl34253443_)))
                                 (let ((_hd34273449_ (##car _e34263446_))
                                       (_tl34283451_ (##cdr _e34263446_)))
                                   ((lambda (_L3454_ _L3455_)
                                      (let ((_key3468_
                                             (gx#core-identifier-key _L3455_)))
                                        (begin
                                          (if (interned-symbol? _key3468_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx3416_
                                               _L3455_
                                               _key3468_))
                                          (let ((_ctx3470_
                                                 (gx#syntax-local-e _L3455_)))
                                            (let ((_code3473_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (gx#module-context-code
                                                        _ctx3470_)
                                                       _state3417_))
                                                    gx#current-expander-context
                                                    _ctx3470_)))
                                              (let ((_rt3475_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx3470_
                                                      '#f)))
                                                (let ((_loader3477_
                                                       (if _rt3475_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt3475_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid3479_
                                                         (gx#stx-e _L3455_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state3417_)
                                                        (cons '%#module
                                                              (cons _modid3479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code3473_ _loader3477_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl34283451_
                                    _hd34273449_)))
                               (_g34193433_ _g34203436_))))
                       (_g34193433_ _g34203436_)))))
            (_g34183482_ _stx3416_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx3406_ _context-chain3407_)
      ((letrec ((_lp3409_
                 (lambda (_ctx3411_ _path3412_)
                   (let ((_super3414_ (gx#phi-context-super _ctx3411_)))
                     (if (memq _super3414_ _context-chain3407_)
                         (cons* '#f
                                (car (gx#module-context-path _ctx3411_))
                                _path3412_)
                         (if (gx#module-context? _super3414_)
                             (_lp3409_
                              _super3414_
                              (cons (car (gx#module-context-path _ctx3411_))
                                    _path3412_))
                             (cons (make-symbol
                                    '":"
                                    (gx#expander-context-id _ctx3411_))
                                   _path3412_)))))))
         _lp3409_)
       _ctx3406_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp3401_
                 (lambda (_ctx3403_ _r3404_)
                   (if (gx#module-context? _ctx3403_)
                       (_lp3401_
                        (gx#phi-context-super _ctx3403_)
                        (cons _ctx3403_ _r3404_))
                       _r3404_))))
         _lp3401_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx3170_ _state3171_)
      (let ((_context-chain3173_ (gxc#current-context-chain)))
        (let ((_make-import-spec3174_
               (lambda (_in3337_)
                 (let ((_in33383350_ _in3337_))
                   (let ((_E33403354_
                          (lambda ()
                            (error '"No clause matching" _in33383350_))))
                     (let ((_K33413364_
                            (lambda (_phi3357_
                                     _name3358_
                                     _src-name3359_
                                     _src-phi3360_
                                     _src-key3361_
                                     _src-ctx3362_)
                              (cons _phi3357_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name3358_)
                                          (cons _src-phi3360_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name3359_)
                                                      '())))))))
                       (if (direct-struct-instance?
                            gx#module-import::t
                            _in33383350_)
                           (let ((_e33423367_ (##vector-ref _in33383350_ '1)))
                             (if (direct-struct-instance?
                                  gx#module-export::t
                                  _e33423367_)
                                 (let ((_e33453370_
                                        (##vector-ref _e33423367_ '1)))
                                   (let ((_src-ctx3373_ _e33453370_))
                                     (let ((_e33463375_
                                            (##vector-ref _e33423367_ '2)))
                                       (let ((_src-key3378_ _e33463375_))
                                         (let ((_e33473380_
                                                (##vector-ref _e33423367_ '3)))
                                           (let ((_src-phi3383_ _e33473380_))
                                             (let ((_e33483385_
                                                    (##vector-ref
                                                     _e33423367_
                                                     '4)))
                                               (let ((_src-name3388_
                                                      _e33483385_))
                                                 (let ((_e33433390_
                                                        (##vector-ref
                                                         _in33383350_
                                                         '2)))
                                                   (let ((_name3393_
                                                          _e33433390_))
                                                     (let ((_e33443395_
                                                            (##vector-ref
                                                             _in33383350_
                                                             '3)))
                                                       (let ((_phi3398_
                                                              _e33443395_))
                                                         (_K33413364_
                                                          _phi3398_
                                                          _name3393_
                                                          _src-name3388_
                                                          _src-phi3383_
                                                          _src-key3378_
                                                          _src-ctx3373_)))))))))))))
                                 (_E33403354_)))
                           (_E33403354_))))))))
          (let ((_make-import-path3175_
                 (lambda (_ctx3335_)
                   (gxc#generate-meta-import-path
                    _ctx3335_
                    _context-chain3173_))))
            (let ((_make-import-spec-in3176_
                   (lambda (_ctx3332_ _in3333_)
                     (cons 'spec:
                           (cons (_make-import-path3175_ _ctx3332_)
                                 (reverse _in3333_))))))
              (begin
                (gxc#meta-state-end-phi! _state3171_)
                (let ((_g31783188_
                       (lambda (_g31793185_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g31793185_))))
                  (let ((_g31773329_
                         (lambda (_g31793191_)
                           (if (gx#stx-pair? _g31793191_)
                               (let ((_e31813193_ (gx#stx-e _g31793191_)))
                                 (let ((_hd31823196_ (##car _e31813193_))
                                       (_tl31833198_ (##cdr _e31813193_)))
                                   ((lambda (_L3201_)
                                      ((letrec ((_lp3212_
                                                 (lambda (_rest3214_
                                                          _current-src3215_
                                                          _current-in3216_
                                                          _r3217_)
                                                   (let ((_rest32183226_
                                                          _rest3214_))
                                                     (let ((_E32213230_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest32183226_))))
               (let ((_else32203236_
                      (lambda ()
                        (let ((_r3234_ (if _current-src3215_
                                           (cons (_make-import-spec-in3176_
                                                  _current-src3215_
                                                  _current-in3216_)
                                                 _r3217_)
                                           _r3217_)))
                          (cons '%#import (reverse _r3234_))))))
                 (let ((_K32223317_
                        (lambda (_rest3239_ _in3240_)
                          (if (gx#module-import? _in3240_)
                              (let ((_in32413248_ _in3240_))
                                (let ((_E32433252_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in32413248_))))
                                  (let ((_K32443257_
                                         (lambda (_src-ctx3255_)
                                           (if (eq? _current-src3215_
                                                    _src-ctx3255_)
                                               (_lp3212_
                                                _rest3239_
                                                _current-src3215_
                                                (cons (_make-import-spec3174_
                                                       _in3240_)
                                                      _current-in3216_)
                                                _r3217_)
                                               (if _current-src3215_
                                                   (_lp3212_
                                                    _rest3239_
                                                    _src-ctx3255_
                                                    (cons (_make-import-spec3174_
                                                           _in3240_)
                                                          '())
                                                    (cons (_make-import-spec-in3176_
                                                           _current-src3215_
                                                           _current-in3216_)
                                                          _r3217_))
                                                   (_lp3212_
                                                    _rest3239_
                                                    _src-ctx3255_
                                                    (cons (_make-import-spec3174_
                                                           _in3240_)
                                                          '())
                                                    _r3217_))))))
                                    (if (direct-struct-instance?
                                         gx#module-import::t
                                         _in32413248_)
                                        (let ((_e32453260_
                                               (##vector-ref _in32413248_ '1)))
                                          (if (direct-struct-instance?
                                               gx#module-export::t
                                               _e32453260_)
                                              (let ((_e32463263_
                                                     (##vector-ref
                                                      _e32453260_
                                                      '1)))
                                                (let ((_src-ctx3266_
                                                       _e32463263_))
                                                  (_K32443257_ _src-ctx3266_)))
                                              (_E32433252_)))
                                        (_E32433252_)))))
                              (if (gx#import-set? _in3240_)
                                  (let ((_phi3268_
                                         (gx#import-set-phi _in3240_)))
                                    (let ((_src3270_
                                           (gx#import-set-source _in3240_)))
                                      (let ((_src-in3310_
                                             (let ((_g32713280_
                                                    (_make-import-path3175_
                                                     _src3270_)))
                                               (let ((_E32743284_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g32713280_))))
                                                 (let ((_try-match32733295_
                                                        (lambda ()
                                                          (let ((_K32753290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path3288_) (cons 'in: _path3288_))))
                    (let ((_path3293_ _g32713280_))
                      (_K32753290_ _path3293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K32763300_
                                                          (lambda (_path3298_)
                                                            _path3298_)))
                                                     (if (##pair? _g32713280_)
                                                         (let ((_hd32773303_
                                                                (##car _g32713280_))
                                                               (_tl32783305_
                                                                (##cdr _g32713280_)))
                                                           (let ((_path3308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd32773303_))
                     (if (##null? _tl32783305_)
                         (_K32763300_ _path3308_)
                         (_try-match32733295_))))
                 (_try-match32733295_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r3312_ (if _current-src3215_
                                                           (cons (_make-import-spec-in3176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src3215_
                          _current-in3216_)
                         _r3217_)
                   _r3217_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp3212_
                                             _rest3239_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi3268_)
                                                       _src-in3310_
                                                       (cons 'phi:
                                                             (cons _phi3268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in3310_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r3312_)))))))
                                  (if (gx#module-context? _in3240_)
                                      (let ((_r3315_ (if _current-src3215_
                                                         (cons (_make-import-spec-in3176_
                                                                _current-src3215_
                                                                _current-in3216_)
                                                               _r3217_)
                                                         _r3217_)))
                                        (_lp3212_
                                         _rest3239_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path3175_
                                                      _in3240_))
                                               _r3315_)))
                                      '#!void))))))
                   (if (##pair? _rest32183226_)
                       (let ((_hd32233320_ (##car _rest32183226_))
                             (_tl32243322_ (##cdr _rest32183226_)))
                         (let ((_in3325_ _hd32233320_))
                           (let ((_rest3327_ _tl32243322_))
                             (_K32223317_ _rest3327_ _in3325_))))
                       (_else32203236_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp3212_)
                                       _L3201_
                                       '#f
                                       '()
                                       '()))
                                    _tl31833198_)))
                               (_g31783188_ _g31793191_)))))
                    (_g31773329_ _stx3170_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx2980_ _state2981_)
      (let ((_context-chain2983_ (gxc#current-context-chain)))
        (let ((_make-import-path2984_
               (lambda (_ctx3168_)
                 (gxc#generate-meta-import-path
                  _ctx3168_
                  _context-chain2983_))))
          (let ((_g29862996_
                 (lambda (_g29872993_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g29872993_))))
            (let ((_g29853165_
                   (lambda (_g29872999_)
                     (if (gx#stx-pair? _g29872999_)
                         (let ((_e29893001_ (gx#stx-e _g29872999_)))
                           (let ((_hd29903004_ (##car _e29893001_))
                                 (_tl29913006_ (##cdr _e29893001_)))
                             ((lambda (_L3009_)
                                ((letrec ((_lp3020_
                                           (lambda (_rest3022_ _r3023_)
                                             (let ((_rest30243032_ _rest3022_))
                                               (let ((_E30273036_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest30243032_))))
                                                 (let ((_else30263040_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3023_)))))
                                                   (let ((_K30283153_
                                                          (lambda (_rest3043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3044_)
                    (let ((_out30453058_ _out3044_))
                      (let ((_E30483062_
                             (lambda ()
                               (error '"No clause matching" _out30453058_))))
                        (let ((_try-match30473125_
                               (lambda ()
                                 (let ((_K30493112_
                                        (lambda (_phi3066_ _src3067_)
                                          (let ((_out3107_
                                                 (if _src3067_
                                                     (cons 'import:
                                                           (cons (let ((_g30683077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path2984_ _src3067_)))
                           (let ((_E30713081_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g30683077_))))
                             (let ((_try-match30703092_
                                    (lambda ()
                                      (let ((_K30723087_
                                             (lambda (_path3085_)
                                               (cons 'in: _path3085_))))
                                        (let ((_path3090_ _g30683077_))
                                          (_K30723087_ _path3090_))))))
                               (let ((_K30733097_
                                      (lambda (_path3095_) _path3095_)))
                                 (if (##pair? _g30683077_)
                                     (let ((_hd30743100_ (##car _g30683077_))
                                           (_tl30753102_ (##cdr _g30683077_)))
                                       (let ((_path3105_ _hd30743100_))
                                         (if (##null? _tl30753102_)
                                             (_K30733097_ _path3105_)
                                             (_try-match30703092_))))
                                     (_try-match30703092_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3109_
                                                   (if (fxzero? _phi3066_)
                                                       _out3107_
                                                       (cons 'phi:
                                                             (cons _phi3066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3107_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3020_
                                                 _rest3043_
                                                 (cons _out3109_
                                                       _r3023_))))))))
                                   (if (direct-struct-instance?
                                        gx#export-set::t
                                        _out30453058_)
                                       (let ((_e30503115_
                                              (##vector-ref _out30453058_ '1)))
                                         (let ((_src3118_ _e30503115_))
                                           (let ((_e30513120_
                                                  (##vector-ref
                                                   _out30453058_
                                                   '2)))
                                             (let ((_phi3123_ _e30513120_))
                                               (_K30493112_
                                                _phi3123_
                                                _src3118_)))))
                                       (_E30483062_))))))
                          (let ((_K30523132_
                                 (lambda (_name3128_ _phi3129_ _key3130_)
                                   (_lp3020_
                                    _rest3043_
                                    (cons (cons 'spec:
                                                (cons _phi3129_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key3130_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3128_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3023_)))))
                            (if (direct-struct-instance?
                                 gx#module-export::t
                                 _out30453058_)
                                (let ((_e30533135_
                                       (##vector-ref _out30453058_ '1)))
                                  (let ((_e30543138_
                                         (##vector-ref _out30453058_ '2)))
                                    (let ((_key3141_ _e30543138_))
                                      (let ((_e30553143_
                                             (##vector-ref _out30453058_ '3)))
                                        (let ((_phi3146_ _e30553143_))
                                          (let ((_e30563148_
                                                 (##vector-ref
                                                  _out30453058_
                                                  '4)))
                                            (let ((_name3151_ _e30563148_))
                                              (_K30523132_
                                               _name3151_
                                               _phi3146_
                                               _key3141_))))))))
                                (_try-match30473125_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest30243032_)
                                                         (let ((_hd30293156_
                                                                (##car _rest30243032_))
                                                               (_tl30303158_
                                                                (##cdr _rest30243032_)))
                                                           (let ((_out3161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd30293156_))
                     (let ((_rest3163_ _tl30303158_))
                       (_K30283153_ _rest3163_ _out3161_))))
                 (_else30263040_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3020_)
                                 _L3009_
                                 '()))
                              _tl29913006_)))
                         (_g29862996_ _g29872999_)))))
              (_g29853165_ _stx2980_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx2941_ _state2942_)
      (begin
        (gxc#meta-state-end-phi! _state2942_)
        (let ((_g29442954_
               (lambda (_g29452951_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g29452951_))))
          (let ((_g29432977_
                 (lambda (_g29452957_)
                   (if (gx#stx-pair? _g29452957_)
                       (let ((_e29472959_ (gx#stx-e _g29452957_)))
                         (let ((_hd29482962_ (##car _e29472959_))
                               (_tl29492964_ (##cdr _e29472959_)))
                           ((lambda (_L2967_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L2967_)))
                            _tl29492964_)))
                       (_g29442954_ _g29452957_)))))
            (_g29432977_ _stx2941_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx2812_ _state2813_)
      (let ((_generate12815_
             (lambda (_id2936_ _eid2937_)
               (let ((_eid2939_ (gx#stx-e _eid2937_)))
                 (begin
                   (if (interned-symbol? _eid2939_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx2812_
                        _eid2939_))
                   (cons (gxc#generate-runtime-identifier _id2936_)
                         (cons _eid2939_ '())))))))
        (let ((_g28172845_
               (lambda (_g28182842_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28182842_))))
          (let ((_g28162933_
                 (lambda (_g28182848_)
                   (if (gx#stx-pair? _g28182848_)
                       (let ((_e28212850_ (gx#stx-e _g28182848_)))
                         (let ((_hd28222853_ (##car _e28212850_))
                               (_tl28232855_ (##cdr _e28212850_)))
                           (if (gx#stx-pair/null? _tl28232855_)
                               (if (fx>= (gx#stx-length _tl28232855_) '0)
                                   (let ((_g9301_ (gx#syntax-split-splice
                                                   _tl28232855_
                                                   '0)))
                                     (begin
                                       (let ((_g9302_ (values-count _g9301_)))
                                         (if (not (fx= _g9302_ 2))
                                             (error "Context expects 2 values"
                                                    _g9302_)))
                                       (let ((_target28242858_
                                              (values-ref _g9301_ 0))
                                             (_tl28262860_
                                              (values-ref _g9301_ 1)))
                                         (if (gx#stx-null? _tl28262860_)
                                             (letrec ((_loop28272863_
                                                       (lambda (_hd28252866_
                                                                _eid28312868_
                                                                _id28322870_)
                                                         (if (gx#stx-pair?
                                                              _hd28252866_)
                                                             (let ((_e28282873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd28252866_)))
                       (let ((_lp-hd28292876_ (##car _e28282873_))
                             (_lp-tl28302878_ (##cdr _e28282873_)))
                         (if (gx#stx-pair? _lp-hd28292876_)
                             (let ((_e28352881_ (gx#stx-e _lp-hd28292876_)))
                               (let ((_hd28362884_ (##car _e28352881_))
                                     (_tl28372886_ (##cdr _e28352881_)))
                                 (if (gx#stx-pair? _tl28372886_)
                                     (let ((_e28382889_
                                            (gx#stx-e _tl28372886_)))
                                       (let ((_hd28392892_ (##car _e28382889_))
                                             (_tl28402894_
                                              (##cdr _e28382889_)))
                                         (if (gx#stx-null? _tl28402894_)
                                             (_loop28272863_
                                              _lp-tl28302878_
                                              (cons _hd28392892_ _eid28312868_)
                                              (cons _hd28362884_ _id28322870_))
                                             (_g28172845_ _g28182848_))))
                                     (_g28172845_ _g28182848_))))
                             (_g28172845_ _g28182848_))))
                     (let ((_eid28332897_ (reverse _eid28312868_))
                           (_id28342899_ (reverse _id28322870_)))
                       ((lambda (_L2902_ _L2903_)
                          (cons '%#extern
                                (map _generate12815_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g29182921_
                                                        _g29192923_)
                                                 (cons _g29182921_
                                                       _g29192923_))
                                               '()
                                               _L2903_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g29252928_
                                                        _g29262930_)
                                                 (cons _g29252928_
                                                       _g29262930_))
                                               '()
                                               _L2902_)))))
                        _eid28332897_
                        _id28342899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop28272863_
                                                _target28242858_
                                                '()
                                                '()))
                                             (_g28172845_ _g28182848_)))))
                                   (_g28172845_ _g28182848_))
                               (_g28172845_ _g28182848_))))
                       (_g28172845_ _g28182848_)))))
            (_g28162933_ _stx2812_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx2607_ _state2608_)
      (let ((_generate12610_
             (lambda (_id2807_)
               (let ((_eid2809_ (gxc#generate-runtime-binding-id _id2807_))
                     (_ident2810_ (gxc#generate-runtime-identifier _id2807_)))
                 (cons '%#define-runtime
                       (cons _ident2810_ (cons _eid2809_ '())))))))
        (let ((_generate*2611_
               (lambda (_all2775_)
                 (let ((_all27762784_ _all2775_))
                   (let ((_E27792788_
                          (lambda ()
                            (error '"No clause matching" _all27762784_))))
                     (let ((_else27782792_
                            (lambda () (cons '%#begin _all2775_))))
                       (let ((_K27802797_ (lambda (_one2795_) _one2795_)))
                         (if (##pair? _all27762784_)
                             (let ((_hd27812800_ (##car _all27762784_))
                                   (_tl27822802_ (##cdr _all27762784_)))
                               (let ((_one2805_ _hd27812800_))
                                 (if (##null? _tl27822802_)
                                     (_K27802797_ _one2805_)
                                     (_else27782792_))))
                             (_else27782792_)))))))))
          (let ((_g26132630_
                 (lambda (_g26142627_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g26142627_))))
            (let ((_g26122772_
                   (lambda (_g26142633_)
                     (if (gx#stx-pair? _g26142633_)
                         (let ((_e26172635_ (gx#stx-e _g26142633_)))
                           (let ((_hd26182638_ (##car _e26172635_))
                                 (_tl26192640_ (##cdr _e26172635_)))
                             (if (gx#stx-pair? _tl26192640_)
                                 (let ((_e26202643_ (gx#stx-e _tl26192640_)))
                                   (let ((_hd26212646_ (##car _e26202643_))
                                         (_tl26222648_ (##cdr _e26202643_)))
                                     (if (gx#stx-pair? _tl26222648_)
                                         (let ((_e26232651_
                                                (gx#stx-e _tl26222648_)))
                                           (let ((_hd26242654_
                                                  (##car _e26232651_))
                                                 (_tl26252656_
                                                  (##cdr _e26232651_)))
                                             (if (gx#stx-null? _tl26252656_)
                                                 ((lambda (_L2659_ _L2660_)
                                                    ((letrec ((_lp2676_
                                                               (lambda (_rest2678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r2679_)
                         (let ((_g26842700_
                                (lambda (_g26852697_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g26852697_))))
                           (let ((_g26832707_
                                  (lambda (_g26852703_)
                                    ((lambda ()
                                       (_generate*2611_ (reverse _r2679_)))))))
                             (let ((_g26822723_
                                    (lambda (_g26852710_)
                                      ((lambda (_L2712_)
                                         (if (gx#identifier? _L2712_)
                                             (_generate*2611_
                                              (foldl1 cons
                                                      (cons (_generate12610_
                                                             _L2712_)
                                                            '())
                                                      _r2679_))
                                             (_g26832707_ _g26852710_)))
                                       _g26852710_))))
                               (let ((_g26812747_
                                      (lambda (_g26852726_)
                                        (if (gx#stx-pair? _g26852726_)
                                            (let ((_e26922728_
                                                   (gx#stx-e _g26852726_)))
                                              (let ((_hd26932731_
                                                     (##car _e26922728_))
                                                    (_tl26942733_
                                                     (##cdr _e26922728_)))
                                                ((lambda (_L2736_ _L2737_)
                                                   (_lp2676_
                                                    _L2736_
                                                    (cons (_generate12610_
                                                           _L2737_)
                                                          _r2679_)))
                                                 _tl26942733_
                                                 _hd26932731_)))
                                            (_g26822723_ _g26852726_)))))
                                 (let ((_g26802769_
                                        (lambda (_g26852750_)
                                          (if (gx#stx-pair? _g26852750_)
                                              (let ((_e26872752_
                                                     (gx#stx-e _g26852750_)))
                                                (let ((_hd26882755_
                                                       (##car _e26872752_))
                                                      (_tl26892757_
                                                       (##cdr _e26872752_)))
                                                  (if (gx#stx-datum?
                                                       _hd26882755_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd26882755_)
                          '#f)
                  ((lambda (_L2760_) (_lp2676_ _L2760_ _r2679_)) _tl26892757_)
                  (_g26812747_ _g26852750_))
              (_g26812747_ _g26852750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g26812747_ _g26852750_)))))
                                   (_g26802769_ _rest2678_)))))))))
               _lp2676_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L2660_
                                                     '()))
                                                  _hd26242654_
                                                  _hd26212646_)
                                                 (_g26132630_ _g26142633_))))
                                         (_g26132630_ _g26142633_))))
                                 (_g26132630_ _g26142633_))))
                         (_g26132630_ _g26142633_)))))
              (_g26122772_ _stx2607_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx2504_ _state2505_)
      (let ((_g25072524_
             (lambda (_g25082521_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g25082521_))))
        (let ((_g25062604_
               (lambda (_g25082527_)
                 (if (gx#stx-pair? _g25082527_)
                     (let ((_e25112529_ (gx#stx-e _g25082527_)))
                       (let ((_hd25122532_ (##car _e25112529_))
                             (_tl25132534_ (##cdr _e25112529_)))
                         (if (gx#stx-pair? _tl25132534_)
                             (let ((_e25142537_ (gx#stx-e _tl25132534_)))
                               (let ((_hd25152540_ (##car _e25142537_))
                                     (_tl25162542_ (##cdr _e25142537_)))
                                 (if (gx#stx-pair? _tl25162542_)
                                     (let ((_e25172545_
                                            (gx#stx-e _tl25162542_)))
                                       (let ((_hd25182548_ (##car _e25172545_))
                                             (_tl25192550_
                                              (##cdr _e25172545_)))
                                         (if (gx#stx-null? _tl25192550_)
                                             ((lambda (_L2553_ _L2554_)
                                                (let ((_eid2569_
                                                       (gxc#generate-runtime-binding-id
                                                        _L2554_)))
                                                  (let ((_phi2571_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block2573_
                                                           (gxc#meta-state-begin-phi!
                                                            _state2505_
                                                            _phi2571_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g25762583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g25772580_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g25772580_))))
                    (let ((_g25752601_
                           (lambda (_g25772586_)
                             ((lambda (_L2588_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state2505_
                                   _phi2571_
                                   (cons (gx#datum->syntax
                                          '#f
                                          '%#define-runtime)
                                         (cons _L2588_ (cons _L2553_ '()))))))
                              _g25772586_))))
                      (_g25752601_ _eid2569_)))
                  (if _block2573_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block2573_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L2554_)
                                                    (cons _eid2569_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L2554_)
                                  (cons _eid2569_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd25182548_
                                              _hd25152540_)
                                             (_g25072524_ _g25082527_))))
                                     (_g25072524_ _g25082527_))))
                             (_g25072524_ _g25082527_))))
                     (_g25072524_ _g25082527_)))))
          (_g25062604_ _stx2504_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx2436_ _state2437_)
      (let ((_g24392456_
             (lambda (_g24402453_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g24402453_))))
        (let ((_g24382501_
               (lambda (_g24402459_)
                 (if (gx#stx-pair? _g24402459_)
                     (let ((_e24432461_ (gx#stx-e _g24402459_)))
                       (let ((_hd24442464_ (##car _e24432461_))
                             (_tl24452466_ (##cdr _e24432461_)))
                         (if (gx#stx-pair? _tl24452466_)
                             (let ((_e24462469_ (gx#stx-e _tl24452466_)))
                               (let ((_hd24472472_ (##car _e24462469_))
                                     (_tl24482474_ (##cdr _e24462469_)))
                                 (if (gx#stx-pair? _tl24482474_)
                                     (let ((_e24492477_
                                            (gx#stx-e _tl24482474_)))
                                       (let ((_hd24502480_ (##car _e24492477_))
                                             (_tl24512482_
                                              (##cdr _e24492477_)))
                                         (if (gx#stx-null? _tl24512482_)
                                             ((lambda (_L2485_ _L2486_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L2486_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2485_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd24502480_
                                              _hd24472472_)
                                             (_g24392456_ _g24402459_))))
                                     (_g24392456_ _g24402459_))))
                             (_g24392456_ _g24402459_))))
                     (_g24392456_ _g24402459_)))))
          (_g24382501_ _stx2436_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx2433_ _state2434_)
      (begin
        (gxc#meta-state-add-phi!
         _state2434_
         (gx#current-expander-phi)
         _stx2433_)
        (gxc#generate-meta-define-values% _stx2433_ _state2434_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx2430_ _state2431_)
      (begin
        (gxc#meta-state-add-phi!
         _state2431_
         (gx#current-expander-phi)
         _stx2430_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args2427_
      (apply make-struct-instance gxc#meta-state::t _$args2427_)))
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
    (lambda (_self2424_ _ctx2425_)
      (direct-struct-instance-init!
       _self2424_
       (symbol->string (gx#expander-context-id _ctx2425_))
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
    (lambda _$args2421_
      (apply make-struct-instance gxc#meta-state-block::t _$args2421_)))
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
    (lambda (_state2380_ _phi2381_)
      (let ((_state23822390_ _state2380_))
        (let ((_E23842394_
               (lambda () (error '"No clause matching" _state23822390_))))
          (let ((_K23852403_
                 (lambda (_open2397_ _n2398_ _src2399_)
                   (if (table-ref _open2397_ _phi2381_ '#f)
                       '#f
                       (let ((_block-ref2401_
                              (string-append
                               _src2399_
                               '"__"
                               (number->string _n2398_))))
                         (begin
                           (##structure-set!
                            _state2380_
                            (fx+ _n2398_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open2397_
                            _phi2381_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi2381_
                             _n2398_
                             '()))
                           _block-ref2401_))))))
            (if (struct-instance? gxc#meta-state::t _state23822390_)
                (let ((_e23862406_ (##vector-ref _state23822390_ '1)))
                  (let ((_src2409_ _e23862406_))
                    (let ((_e23872411_ (##vector-ref _state23822390_ '2)))
                      (let ((_n2414_ _e23872411_))
                        (let ((_e23882416_ (##vector-ref _state23822390_ '3)))
                          (let ((_open2419_ _e23882416_))
                            (_K23852403_ _open2419_ _n2414_ _src2409_)))))))
                (_E23842394_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state2374_ _phi2375_ _stx2376_)
      (let ((_block2378_
             (table-ref
              (##structure-ref _state2374_ '3 gxc#meta-state::t '#f)
              _phi2375_
              '#f)))
        (##structure-set!
         _block2378_
         (cons _stx2376_
               (##structure-ref _block2378_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state2369_)
      (begin
        (##structure-set!
         _state2369_
         (hash-fold
          (lambda (_g9303_ _block2371_ _r2372_) (cons _block2371_ _r2372_))
          (##structure-ref _state2369_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2369_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2369_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state2321_)
      (begin
        (gxc#meta-state-end-phi! _state2321_)
        (foldl1 (lambda (_block2323_ _r2324_)
                  (let ((_block23252334_ _block2323_))
                    (let ((_E23272338_
                           (lambda ()
                             (error '"No clause matching" _block23252334_))))
                      (let ((_K23282346_
                             (lambda (_code2341_ _n2342_ _phi2343_ _ctx2344_)
                               (if (null? _code2341_)
                                   _r2324_
                                   (cons (cons _ctx2344_
                                               (cons _phi2343_
                                                     (cons _n2342_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code2341_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r2324_)))))
                        (if (struct-instance?
                             gxc#meta-state-block::t
                             _block23252334_)
                            (let ((_e23292349_
                                   (##vector-ref _block23252334_ '1)))
                              (let ((_ctx2352_ _e23292349_))
                                (let ((_e23302354_
                                       (##vector-ref _block23252334_ '2)))
                                  (let ((_phi2357_ _e23302354_))
                                    (let ((_e23312359_
                                           (##vector-ref _block23252334_ '3)))
                                      (let ((_n2362_ _e23312359_))
                                        (let ((_e23322364_
                                               (##vector-ref
                                                _block23252334_
                                                '4)))
                                          (let ((_code2367_ _e23322364_))
                                            (_K23282346_
                                             _code2367_
                                             _n2362_
                                             _phi2357_
                                             _ctx2352_)))))))))
                            (_E23272338_))))))
                '()
                (##structure-ref _state2321_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx2317_)
      (let ((_ht2319_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx2317_ _ht2319_)
          _ht2319_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx2260_ _ht2261_)
      (let ((_g22632276_
             (lambda (_g22642273_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g22642273_))))
        (let ((_g22622314_
               (lambda (_g22642279_)
                 (if (gx#stx-pair? _g22642279_)
                     (let ((_e22662281_ (gx#stx-e _g22642279_)))
                       (let ((_hd22672284_ (##car _e22662281_))
                             (_tl22682286_ (##cdr _e22662281_)))
                         (if (gx#stx-pair? _tl22682286_)
                             (let ((_e22692289_ (gx#stx-e _tl22682286_)))
                               (let ((_hd22702292_ (##car _e22692289_))
                                     (_tl22712294_ (##cdr _e22692289_)))
                                 (if (gx#stx-null? _tl22712294_)
                                     ((lambda (_L2297_)
                                        (let ((_bind2309_
                                               (gx#resolve-identifier
                                                _L2297_)))
                                          (let ((_eid2311_
                                                 (if _bind2309_
                                                     (gx#binding-id _bind2309_)
                                                     (gx#stx-e _L2297_))))
                                            (let ()
                                              (table-set!
                                               _ht2261_
                                               _eid2311_
                                               _eid2311_)))))
                                      _hd22702292_)
                                     (_g22632276_ _g22642279_))))
                             (_g22632276_ _g22642279_))))
                     (_g22632276_ _g22642279_)))))
          (_g22622314_ _stx2260_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx2187_ _ht2188_)
      (let ((_g21902207_
             (lambda (_g21912204_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g21912204_))))
        (let ((_g21892257_
               (lambda (_g21912210_)
                 (if (gx#stx-pair? _g21912210_)
                     (let ((_e21942212_ (gx#stx-e _g21912210_)))
                       (let ((_hd21952215_ (##car _e21942212_))
                             (_tl21962217_ (##cdr _e21942212_)))
                         (if (gx#stx-pair? _tl21962217_)
                             (let ((_e21972220_ (gx#stx-e _tl21962217_)))
                               (let ((_hd21982223_ (##car _e21972220_))
                                     (_tl21992225_ (##cdr _e21972220_)))
                                 (if (gx#stx-pair? _tl21992225_)
                                     (let ((_e22002228_
                                            (gx#stx-e _tl21992225_)))
                                       (let ((_hd22012231_ (##car _e22002228_))
                                             (_tl22022233_
                                              (##cdr _e22002228_)))
                                         (if (gx#stx-null? _tl22022233_)
                                             ((lambda (_L2236_ _L2237_)
                                                (let ((_bind2252_
                                                       (gx#resolve-identifier
                                                        _L2237_)))
                                                  (let ((_eid2254_
                                                         (if _bind2252_
                                                             (gx#binding-id
                                                              _bind2252_)
                                                             (gx#stx-e
                                                              _L2237_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht2188_
                                                         _eid2254_
                                                         _eid2254_)
                                                        (gxc#compile-e
                                                         _L2236_
                                                         _ht2188_))))))
                                              _hd22012231_
                                              _hd21982223_)
                                             (_g21902207_ _g21912210_))))
                                     (_g21902207_ _g21912210_))))
                             (_g21902207_ _g21912210_))))
                     (_g21902207_ _g21912210_)))))
          (_g21892257_ _stx2187_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx2149_)
      (let ((_g21512161_
             (lambda (_g21522158_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g21522158_))))
        (let ((_g21502184_
               (lambda (_g21522164_)
                 (if (gx#stx-pair? _g21522164_)
                     (let ((_e21542166_ (gx#stx-e _g21522164_)))
                       (let ((_hd21552169_ (##car _e21542166_))
                             (_tl21562171_ (##cdr _e21542166_)))
                         ((lambda (_L2174_) (ormap1 gxc#compile-e _L2174_))
                          _tl21562171_)))
                     (_g21512161_ _g21522164_)))))
          (_g21502184_ _stx2149_))))))
