(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12048_ . _args12049_)
      (let* ((_g1205112061_
              (lambda (_g1205212058_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1205212058_)))
             (_g1205012089_
              (lambda (_g1205212064_)
                (if (gx#stx-pair? _g1205212064_)
                    (let ((_e1205412066_ (gx#stx-e _g1205212064_)))
                      (let ((_hd1205512069_ (##car _e1205412066_))
                            (_tl1205612071_ (##cdr _e1205412066_)))
                        ((lambda (_L12074_)
                           (let ((_$e12084_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12074_)
                                   '#f)))
                             (if _$e12084_
                                 ((lambda (_method12087_)
                                    (apply _method12087_
                                           _stx12048_
                                           _args12049_))
                                  _$e12084_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12048_
                                  _L12074_))))
                         _hd1205512069_)))
                    (_g1205112061_ _g1205212064_)))))
        (_g1205012089_ _stx12048_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12045_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12045_ '%#begin-annotation void)
           (table-set! _tbl12045_ '%#lambda void)
           (table-set! _tbl12045_ '%#case-lambda void)
           (table-set! _tbl12045_ '%#let-values void)
           (table-set! _tbl12045_ '%#letrec-values void)
           (table-set! _tbl12045_ '%#letrec*-values void)
           (table-set! _tbl12045_ '%#quote void)
           (table-set! _tbl12045_ '%#quote-syntax void)
           (table-set! _tbl12045_ '%#call void)
           (table-set! _tbl12045_ '%#if void)
           (table-set! _tbl12045_ '%#ref void)
           (table-set! _tbl12045_ '%#set! void)
           (table-set! _tbl12045_ '%#struct-instance? void)
           (table-set! _tbl12045_ '%#struct-direct-instance? void)
           (table-set! _tbl12045_ '%#struct-ref void)
           (table-set! _tbl12045_ '%#struct-set! void)
           (table-set! _tbl12045_ '%#struct-direct-ref void)
           (table-set! _tbl12045_ '%#struct-direct-set! void)
           (table-set! _tbl12045_ '%#struct-unchecked-ref void)
           (table-set! _tbl12045_ '%#struct-unchecked-set! void)
           _tbl12045_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12041_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12041_ '%#begin void)
           (table-set! _tbl12041_ '%#begin-syntax void)
           (table-set! _tbl12041_ '%#begin-foreign void)
           (table-set! _tbl12041_ '%#module void)
           (table-set! _tbl12041_ '%#import void)
           (table-set! _tbl12041_ '%#export void)
           (table-set! _tbl12041_ '%#provide void)
           (table-set! _tbl12041_ '%#extern void)
           (table-set! _tbl12041_ '%#define-values void)
           (table-set! _tbl12041_ '%#define-syntax void)
           (table-set! _tbl12041_ '%#define-alias void)
           (table-set! _tbl12041_ '%#declare void)
           _tbl12041_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12037_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12037_ (force gxc#&void-special-form))
           (hash-copy! _tbl12037_ (force gxc#&void-expression))
           _tbl12037_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12033_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12033_ '%#begin-annotation false)
           (table-set! _tbl12033_ '%#lambda false)
           (table-set! _tbl12033_ '%#case-lambda false)
           (table-set! _tbl12033_ '%#let-values false)
           (table-set! _tbl12033_ '%#letrec-values false)
           (table-set! _tbl12033_ '%#letrec*-values false)
           (table-set! _tbl12033_ '%#quote false)
           (table-set! _tbl12033_ '%#quote-syntax false)
           (table-set! _tbl12033_ '%#call false)
           (table-set! _tbl12033_ '%#if false)
           (table-set! _tbl12033_ '%#ref false)
           (table-set! _tbl12033_ '%#set! false)
           (table-set! _tbl12033_ '%#struct-instance? false)
           (table-set! _tbl12033_ '%#struct-direct-instance? false)
           (table-set! _tbl12033_ '%#struct-ref false)
           (table-set! _tbl12033_ '%#struct-set! false)
           (table-set! _tbl12033_ '%#struct-direct-ref false)
           (table-set! _tbl12033_ '%#struct-direct-set! false)
           (table-set! _tbl12033_ '%#struct-unchecked-ref false)
           (table-set! _tbl12033_ '%#struct-unchecked-set! false)
           _tbl12033_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12029_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12029_ '%#begin false)
           (table-set! _tbl12029_ '%#begin-syntax false)
           (table-set! _tbl12029_ '%#begin-foreign false)
           (table-set! _tbl12029_ '%#module false)
           (table-set! _tbl12029_ '%#import false)
           (table-set! _tbl12029_ '%#export false)
           (table-set! _tbl12029_ '%#provide false)
           (table-set! _tbl12029_ '%#extern false)
           (table-set! _tbl12029_ '%#define-values false)
           (table-set! _tbl12029_ '%#define-syntax false)
           (table-set! _tbl12029_ '%#define-alias false)
           (table-set! _tbl12029_ '%#declare false)
           _tbl12029_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12025_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12025_ (force gxc#&false-special-form))
           (hash-copy! _tbl12025_ (force gxc#&false-expression))
           _tbl12025_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12021_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12021_ (force gxc#&void-expression))
           (hash-copy! _tbl12021_ (force gxc#&void-special-form))
           (table-set! _tbl12021_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12021_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12021_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12021_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12021_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12021_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12014_ . _args12016_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12014_ _args12016_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12011_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12011_ (force gxc#&void))
           (table-set! _tbl12011_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12011_ '%#module gxc#lift-modules-module%)
           _tbl12011_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12004_ . _args12006_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12004_ _args12006_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12001_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12001_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12001_ '%#begin-syntax false)
           (table-set! _tbl12001_ '%#begin-foreign true)
           (table-set! _tbl12001_ '%#begin-annotation true)
           (table-set! _tbl12001_ '%#module false)
           (table-set! _tbl12001_ '%#import false)
           (table-set! _tbl12001_ '%#export false)
           (table-set! _tbl12001_ '%#provide false)
           (table-set! _tbl12001_ '%#extern false)
           (table-set! _tbl12001_ '%#define-values true)
           (table-set! _tbl12001_ '%#define-syntax false)
           (table-set! _tbl12001_ '%#define-alias false)
           (table-set! _tbl12001_ '%#declare false)
           (table-set! _tbl12001_ '%#lambda true)
           (table-set! _tbl12001_ '%#case-lambda true)
           (table-set! _tbl12001_ '%#let-values true)
           (table-set! _tbl12001_ '%#letrec-values true)
           (table-set! _tbl12001_ '%#letrec*-values true)
           (table-set! _tbl12001_ '%#quote true)
           (table-set! _tbl12001_ '%#call true)
           (table-set! _tbl12001_ '%#if true)
           (table-set! _tbl12001_ '%#ref true)
           (table-set! _tbl12001_ '%#set! true)
           (table-set! _tbl12001_ '%#struct-instance? true)
           (table-set! _tbl12001_ '%#struct-direct-instance? true)
           (table-set! _tbl12001_ '%#struct-ref true)
           (table-set! _tbl12001_ '%#struct-set! true)
           (table-set! _tbl12001_ '%#struct-direct-ref true)
           (table-set! _tbl12001_ '%#struct-direct-set! true)
           (table-set! _tbl12001_ '%#struct-unchecked-ref true)
           (table-set! _tbl12001_ '%#struct-unchecked-set! true)
           _tbl12001_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11994_ . _args11996_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11994_ _args11996_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11991_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11991_ (force gxc#&false))
           (table-set! _tbl11991_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11991_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11991_ '%#lambda values)
           (table-set! _tbl11991_ '%#case-lambda values)
           (table-set!
            _tbl11991_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11991_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11991_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11991_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11984_ . _args11986_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11984_ _args11986_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11981_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11981_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11981_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11981_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11981_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11977_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11977_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11977_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11977_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11977_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11970_ . _args11972_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11970_ _args11972_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11967_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11967_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11967_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11967_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11967_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11967_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11967_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11967_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11967_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11967_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11967_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11967_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11967_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl11967_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl11967_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11967_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11967_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11967_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11967_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11967_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11967_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11967_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11967_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11967_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11967_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11967_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11967_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11960_ . _args11962_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11960_ _args11962_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11957_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11957_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11957_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11957_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11950_ . _args11952_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11950_ _args11952_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11947_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11947_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11947_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11947_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11947_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11947_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11947_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11947_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11947_ '%#quote void)
           (table-set! _tbl11947_ '%#quote-syntax void)
           (table-set! _tbl11947_ '%#call gxc#collect-operands)
           (table-set! _tbl11947_ '%#if gxc#collect-operands)
           (table-set! _tbl11947_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11947_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11947_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11947_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11947_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11947_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11947_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11947_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11947_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11947_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11947_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11940_ . _args11942_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11940_ _args11942_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11937_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11937_ (force gxc#&void-expression))
           (table-set! _tbl11937_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11937_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11937_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11937_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11937_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11937_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11937_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11937_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11937_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11937_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11937_ '%#begin-foreign void)
           (table-set! _tbl11937_ '%#declare void)
           _tbl11937_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11930_ . _args11932_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11930_ _args11932_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11927_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11927_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11927_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11927_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11927_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11927_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11927_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11927_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11927_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11927_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11927_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11927_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11927_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11927_ '%#declare void)
           _tbl11927_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11920_ . _args11922_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11920_ _args11922_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11877_ . _args11878_)
      (let* ((_g1188011890_
              (lambda (_g1188111887_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1188111887_)))
             (_g1187911917_
              (lambda (_g1188111893_)
                (if (gx#stx-pair? _g1188111893_)
                    (let ((_e1188311895_ (gx#stx-e _g1188111893_)))
                      (let ((_hd1188411898_ (##car _e1188311895_))
                            (_tl1188511900_ (##cdr _e1188311895_)))
                        ((lambda (_L11903_)
                           (for-each
                            (lambda (_g1191211914_)
                              (apply gxc#compile-e _g1191211914_ _args11878_))
                            (gx#stx-e _L11903_)))
                         _tl1188511900_)))
                    (_g1188011890_ _g1188111893_)))))
        (_g1187911917_ _stx11877_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11833_ . _args11834_)
      (let* ((_g1183611846_
              (lambda (_g1183711843_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1183711843_)))
             (_g1183511874_
              (lambda (_g1183711849_)
                (if (gx#stx-pair? _g1183711849_)
                    (let ((_e1183911851_ (gx#stx-e _g1183711849_)))
                      (let ((_hd1184011854_ (##car _e1183911851_))
                            (_tl1184111856_ (##cdr _e1183911851_)))
                        ((lambda (_L11859_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1186911871_)
                                 (apply gxc#compile-e
                                        _g1186911871_
                                        _args11834_))
                               (gx#stx-e _L11859_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1184111856_)))
                    (_g1183611846_ _g1183711849_)))))
        (_g1183511874_ _stx11833_))))
  (define gxc#collect-module%
    (lambda (_stx11775_ . _args11776_)
      (let* ((_g1177811792_
              (lambda (_g1177911789_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1177911789_)))
             (_g1177711830_
              (lambda (_g1177911795_)
                (if (gx#stx-pair? _g1177911795_)
                    (let ((_e1178211797_ (gx#stx-e _g1177911795_)))
                      (let ((_hd1178311800_ (##car _e1178211797_))
                            (_tl1178411802_ (##cdr _e1178211797_)))
                        (if (gx#stx-pair? _tl1178411802_)
                            (let ((_e1178511805_ (gx#stx-e _tl1178411802_)))
                              (let ((_hd1178611808_ (##car _e1178511805_))
                                    (_tl1178711810_ (##cdr _e1178511805_)))
                                ((lambda (_L11813_ _L11814_)
                                   (let ((_ctx11827_
                                          (gx#syntax-local-e__0 _L11814_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11827_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11776_))
                                      gx#current-expander-context
                                      _ctx11827_)))
                                 _tl1178711810_
                                 _hd1178611808_)))
                            (_g1177811792_ _g1177911795_))))
                    (_g1177811792_ _g1177911795_)))))
        (_g1177711830_ _stx11775_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11707_ . _args11708_)
      (let* ((_g1171011727_
              (lambda (_g1171111724_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1171111724_)))
             (_g1170911772_
              (lambda (_g1171111730_)
                (if (gx#stx-pair? _g1171111730_)
                    (let ((_e1171411732_ (gx#stx-e _g1171111730_)))
                      (let ((_hd1171511735_ (##car _e1171411732_))
                            (_tl1171611737_ (##cdr _e1171411732_)))
                        (if (gx#stx-pair? _tl1171611737_)
                            (let ((_e1171711740_ (gx#stx-e _tl1171611737_)))
                              (let ((_hd1171811743_ (##car _e1171711740_))
                                    (_tl1171911745_ (##cdr _e1171711740_)))
                                (if (gx#stx-pair? _tl1171911745_)
                                    (let ((_e1172011748_
                                           (gx#stx-e _tl1171911745_)))
                                      (let ((_hd1172111751_
                                             (##car _e1172011748_))
                                            (_tl1172211753_
                                             (##cdr _e1172011748_)))
                                        (if (gx#stx-null? _tl1172211753_)
                                            ((lambda (_L11756_ _L11757_)
                                               (apply gxc#compile-e
                                                      _L11756_
                                                      _args11708_))
                                             _hd1172111751_
                                             _hd1171811743_)
                                            (_g1171011727_ _g1171111730_))))
                                    (_g1171011727_ _g1171111730_))))
                            (_g1171011727_ _g1171111730_))))
                    (_g1171011727_ _g1171111730_)))))
        (_g1170911772_ _stx11707_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11639_ . _args11640_)
      (let* ((_g1164211659_
              (lambda (_g1164311656_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1164311656_)))
             (_g1164111704_
              (lambda (_g1164311662_)
                (if (gx#stx-pair? _g1164311662_)
                    (let ((_e1164611664_ (gx#stx-e _g1164311662_)))
                      (let ((_hd1164711667_ (##car _e1164611664_))
                            (_tl1164811669_ (##cdr _e1164611664_)))
                        (if (gx#stx-pair? _tl1164811669_)
                            (let ((_e1164911672_ (gx#stx-e _tl1164811669_)))
                              (let ((_hd1165011675_ (##car _e1164911672_))
                                    (_tl1165111677_ (##cdr _e1164911672_)))
                                (if (gx#stx-pair? _tl1165111677_)
                                    (let ((_e1165211680_
                                           (gx#stx-e _tl1165111677_)))
                                      (let ((_hd1165311683_
                                             (##car _e1165211680_))
                                            (_tl1165411685_
                                             (##cdr _e1165211680_)))
                                        (if (gx#stx-null? _tl1165411685_)
                                            ((lambda (_L11688_ _L11689_)
                                               (apply gxc#compile-e
                                                      _L11688_
                                                      _args11640_))
                                             _hd1165311683_
                                             _hd1165011675_)
                                            (_g1164211659_ _g1164311662_))))
                                    (_g1164211659_ _g1164311662_))))
                            (_g1164211659_ _g1164311662_))))
                    (_g1164211659_ _g1164311662_)))))
        (_g1164111704_ _stx11639_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11521_ . _args11522_)
      (let* ((_g1152411552_
              (lambda (_g1152511549_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1152511549_)))
             (_g1152311636_
              (lambda (_g1152511555_)
                (if (gx#stx-pair? _g1152511555_)
                    (let ((_e1152811557_ (gx#stx-e _g1152511555_)))
                      (let ((_hd1152911560_ (##car _e1152811557_))
                            (_tl1153011562_ (##cdr _e1152811557_)))
                        (if (gx#stx-pair/null? _tl1153011562_)
                            (if (fx>= (gx#stx-length _tl1153011562_) '0)
                                (let ((_g12091_
                                       (gx#syntax-split-splice
                                        _tl1153011562_
                                        '0)))
                                  (begin
                                    (let ((_g12092_ (values-count _g12091_)))
                                      (if (not (fx= _g12092_ 2))
                                          (error "Context expects 2 values"
                                                 _g12092_)))
                                    (let ((_target1153111565_
                                           (values-ref _g12091_ 0))
                                          (_tl1153311567_
                                           (values-ref _g12091_ 1)))
                                      (if (gx#stx-null? _tl1153311567_)
                                          (letrec ((_loop1153411570_
                                                    (lambda (_hd1153211573_
                                                             _body1153811575_
                                                             _hd1153911577_)
                                                      (if (gx#stx-pair?
                                                           _hd1153211573_)
                                                          (let ((_e1153511580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1153211573_)))
                    (let ((_lp-hd1153611583_ (##car _e1153511580_))
                          (_lp-tl1153711585_ (##cdr _e1153511580_)))
                      (if (gx#stx-pair? _lp-hd1153611583_)
                          (let ((_e1154211588_ (gx#stx-e _lp-hd1153611583_)))
                            (let ((_hd1154311591_ (##car _e1154211588_))
                                  (_tl1154411593_ (##cdr _e1154211588_)))
                              (if (gx#stx-pair? _tl1154411593_)
                                  (let ((_e1154511596_
                                         (gx#stx-e _tl1154411593_)))
                                    (let ((_hd1154611599_
                                           (##car _e1154511596_))
                                          (_tl1154711601_
                                           (##cdr _e1154511596_)))
                                      (if (gx#stx-null? _tl1154711601_)
                                          (_loop1153411570_
                                           _lp-tl1153711585_
                                           (cons _hd1154611599_
                                                 _body1153811575_)
                                           (cons _hd1154311591_
                                                 _hd1153911577_))
                                          (_g1152411552_ _g1152511555_))))
                                  (_g1152411552_ _g1152511555_))))
                          (_g1152411552_ _g1152511555_))))
                  (let ((_body1154011604_ (reverse _body1153811575_))
                        (_hd1154111606_ (reverse _hd1153911577_)))
                    ((lambda (_L11609_ _L11610_)
                       (for-each
                        (lambda (_g1162411626_)
                          (apply gxc#compile-e _g1162411626_ _args11522_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1162811631_ _g1162911633_)
                                    (cons _g1162811631_ _g1162911633_))
                                  '()
                                  _L11609_))))
                     _body1154011604_
                     _hd1154111606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1153411570_
                                             _target1153111565_
                                             '()
                                             '()))
                                          (_g1152411552_ _g1152511555_)))))
                                (_g1152411552_ _g1152511555_))
                            (_g1152411552_ _g1152511555_))))
                    (_g1152411552_ _g1152511555_)))))
        (_g1152311636_ _stx11521_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11374_ . _args11375_)
      (let* ((_g1137711412_
              (lambda (_g1137811409_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1137811409_)))
             (_g1137611518_
              (lambda (_g1137811415_)
                (if (gx#stx-pair? _g1137811415_)
                    (let ((_e1138211417_ (gx#stx-e _g1137811415_)))
                      (let ((_hd1138311420_ (##car _e1138211417_))
                            (_tl1138411422_ (##cdr _e1138211417_)))
                        (if (gx#stx-pair? _tl1138411422_)
                            (let ((_e1138511425_ (gx#stx-e _tl1138411422_)))
                              (let ((_hd1138611428_ (##car _e1138511425_))
                                    (_tl1138711430_ (##cdr _e1138511425_)))
                                (if (gx#stx-pair/null? _hd1138611428_)
                                    (if (fx>= (gx#stx-length _hd1138611428_)
                                              '0)
                                        (let ((_g12093_
                                               (gx#syntax-split-splice
                                                _hd1138611428_
                                                '0)))
                                          (begin
                                            (let ((_g12094_
                                                   (values-count _g12093_)))
                                              (if (not (fx= _g12094_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12094_)))
                                            (let ((_target1138811433_
                                                   (values-ref _g12093_ 0))
                                                  (_tl1139011435_
                                                   (values-ref _g12093_ 1)))
                                              (if (gx#stx-null? _tl1139011435_)
                                                  (letrec ((_loop1139111438_
                                                            (lambda (_hd1138911441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1139511443_
                             _hd1139611445_)
                      (if (gx#stx-pair? _hd1138911441_)
                          (let ((_e1139211448_ (gx#stx-e _hd1138911441_)))
                            (let ((_lp-hd1139311451_ (##car _e1139211448_))
                                  (_lp-tl1139411453_ (##cdr _e1139211448_)))
                              (if (gx#stx-pair? _lp-hd1139311451_)
                                  (let ((_e1139911456_
                                         (gx#stx-e _lp-hd1139311451_)))
                                    (let ((_hd1140011459_
                                           (##car _e1139911456_))
                                          (_tl1140111461_
                                           (##cdr _e1139911456_)))
                                      (if (gx#stx-pair? _tl1140111461_)
                                          (let ((_e1140211464_
                                                 (gx#stx-e _tl1140111461_)))
                                            (let ((_hd1140311467_
                                                   (##car _e1140211464_))
                                                  (_tl1140411469_
                                                   (##cdr _e1140211464_)))
                                              (if (gx#stx-null? _tl1140411469_)
                                                  (_loop1139111438_
                                                   _lp-tl1139411453_
                                                   (cons _hd1140311467_
                                                         _expr1139511443_)
                                                   (cons _hd1140011459_
                                                         _hd1139611445_))
                                                  (_g1137711412_
                                                   _g1137811415_))))
                                          (_g1137711412_ _g1137811415_))))
                                  (_g1137711412_ _g1137811415_))))
                          (let ((_expr1139711472_ (reverse _expr1139511443_))
                                (_hd1139811474_ (reverse _hd1139611445_)))
                            (if (gx#stx-pair? _tl1138711430_)
                                (let ((_e1140511477_
                                       (gx#stx-e _tl1138711430_)))
                                  (let ((_hd1140611480_ (##car _e1140511477_))
                                        (_tl1140711482_ (##cdr _e1140511477_)))
                                    (if (gx#stx-null? _tl1140711482_)
                                        ((lambda (_L11485_ _L11486_ _L11487_)
                                           (for-each
                                            (lambda (_g1150611508_)
                                              (apply gxc#compile-e
                                                     _g1150611508_
                                                     _args11375_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1151011513_
                                                               _g1151111515_)
                                                        (cons _g1151011513_
                                                              _g1151111515_))
                                                      (cons _L11485_ '())
                                                      _L11486_))))
                                         _hd1140611480_
                                         _expr1139711472_
                                         _hd1139811474_)
                                        (_g1137711412_ _g1137811415_))))
                                (_g1137711412_ _g1137811415_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1139111438_
                                                     _target1138811433_
                                                     '()
                                                     '()))
                                                  (_g1137711412_
                                                   _g1137811415_)))))
                                        (_g1137711412_ _g1137811415_))
                                    (_g1137711412_ _g1137811415_))))
                            (_g1137711412_ _g1137811415_))))
                    (_g1137711412_ _g1137811415_)))))
        (_g1137611518_ _stx11374_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11306_ . _args11307_)
      (let* ((_g1130911326_
              (lambda (_g1131011323_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1131011323_)))
             (_g1130811371_
              (lambda (_g1131011329_)
                (if (gx#stx-pair? _g1131011329_)
                    (let ((_e1131311331_ (gx#stx-e _g1131011329_)))
                      (let ((_hd1131411334_ (##car _e1131311331_))
                            (_tl1131511336_ (##cdr _e1131311331_)))
                        (if (gx#stx-pair? _tl1131511336_)
                            (let ((_e1131611339_ (gx#stx-e _tl1131511336_)))
                              (let ((_hd1131711342_ (##car _e1131611339_))
                                    (_tl1131811344_ (##cdr _e1131611339_)))
                                (if (gx#stx-pair? _tl1131811344_)
                                    (let ((_e1131911347_
                                           (gx#stx-e _tl1131811344_)))
                                      (let ((_hd1132011350_
                                             (##car _e1131911347_))
                                            (_tl1132111352_
                                             (##cdr _e1131911347_)))
                                        (if (gx#stx-null? _tl1132111352_)
                                            ((lambda (_L11355_ _L11356_)
                                               (apply gxc#compile-e
                                                      _L11355_
                                                      _args11307_))
                                             _hd1132011350_
                                             _hd1131711342_)
                                            (_g1130911326_ _g1131011329_))))
                                    (_g1130911326_ _g1131011329_))))
                            (_g1130911326_ _g1131011329_))))
                    (_g1130911326_ _g1131011329_)))))
        (_g1130811371_ _stx11306_))))
  (define gxc#collect-operands
    (lambda (_stx11219_ . _args11220_)
      (let* ((_g1122211241_
              (lambda (_g1122311238_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1122311238_)))
             (_g1122111303_
              (lambda (_g1122311244_)
                (if (gx#stx-pair? _g1122311244_)
                    (let ((_e1122511246_ (gx#stx-e _g1122311244_)))
                      (let ((_hd1122611249_ (##car _e1122511246_))
                            (_tl1122711251_ (##cdr _e1122511246_)))
                        (if (gx#stx-pair/null? _tl1122711251_)
                            (if (fx>= (gx#stx-length _tl1122711251_) '0)
                                (let ((_g12095_
                                       (gx#syntax-split-splice
                                        _tl1122711251_
                                        '0)))
                                  (begin
                                    (let ((_g12096_ (values-count _g12095_)))
                                      (if (not (fx= _g12096_ 2))
                                          (error "Context expects 2 values"
                                                 _g12096_)))
                                    (let ((_target1122811254_
                                           (values-ref _g12095_ 0))
                                          (_tl1123011256_
                                           (values-ref _g12095_ 1)))
                                      (if (gx#stx-null? _tl1123011256_)
                                          (letrec ((_loop1123111259_
                                                    (lambda (_hd1122911262_
                                                             _rands1123511264_)
                                                      (if (gx#stx-pair?
                                                           _hd1122911262_)
                                                          (let ((_e1123211267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1122911262_)))
                    (let ((_lp-hd1123311270_ (##car _e1123211267_))
                          (_lp-tl1123411272_ (##cdr _e1123211267_)))
                      (_loop1123111259_
                       _lp-tl1123411272_
                       (cons _lp-hd1123311270_ _rands1123511264_))))
                  (let ((_rands1123611275_ (reverse _rands1123511264_)))
                    ((lambda (_L11278_)
                       (for-each
                        (lambda (_g1129111293_)
                          (apply gxc#compile-e _g1129111293_ _args11220_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1129511298_ _g1129611300_)
                                    (cons _g1129511298_ _g1129611300_))
                                  '()
                                  _L11278_))))
                     _rands1123611275_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1123111259_
                                             _target1122811254_
                                             '()))
                                          (_g1122211241_ _g1122311244_)))))
                                (_g1122211241_ _g1122311244_))
                            (_g1122211241_ _g1122311244_))))
                    (_g1122211241_ _g1122311244_)))))
        (_g1122111303_ _stx11219_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11150_)
      (let* ((_g1115211169_
              (lambda (_g1115311166_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1115311166_)))
             (_g1115111216_
              (lambda (_g1115311172_)
                (if (gx#stx-pair? _g1115311172_)
                    (let ((_e1115611174_ (gx#stx-e _g1115311172_)))
                      (let ((_hd1115711177_ (##car _e1115611174_))
                            (_tl1115811179_ (##cdr _e1115611174_)))
                        (if (gx#stx-pair? _tl1115811179_)
                            (let ((_e1115911182_ (gx#stx-e _tl1115811179_)))
                              (let ((_hd1116011185_ (##car _e1115911182_))
                                    (_tl1116111187_ (##cdr _e1115911182_)))
                                (if (gx#stx-pair? _tl1116111187_)
                                    (let ((_e1116211190_
                                           (gx#stx-e _tl1116111187_)))
                                      (let ((_hd1116311193_
                                             (##car _e1116211190_))
                                            (_tl1116411195_
                                             (##cdr _e1116211190_)))
                                        (if (gx#stx-null? _tl1116411195_)
                                            ((lambda (_L11198_ _L11199_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11214_)
                                                  (if (gx#identifier?
                                                       _bind11214_)
                                                      (gxc#add-module-binding!
                                                       _bind11214_
                                                       '#f)
                                                      '#!void))
                                                _L11199_))
                                             _hd1116311193_
                                             _hd1116011185_)
                                            (_g1115211169_ _g1115311172_))))
                                    (_g1115211169_ _g1115311172_))))
                            (_g1115211169_ _g1115311172_))))
                    (_g1115211169_ _g1115311172_)))))
        (_g1115111216_ _stx11150_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11083_)
      (let* ((_g1108511102_
              (lambda (_g1108611099_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1108611099_)))
             (_g1108411147_
              (lambda (_g1108611105_)
                (if (gx#stx-pair? _g1108611105_)
                    (let ((_e1108911107_ (gx#stx-e _g1108611105_)))
                      (let ((_hd1109011110_ (##car _e1108911107_))
                            (_tl1109111112_ (##cdr _e1108911107_)))
                        (if (gx#stx-pair? _tl1109111112_)
                            (let ((_e1109211115_ (gx#stx-e _tl1109111112_)))
                              (let ((_hd1109311118_ (##car _e1109211115_))
                                    (_tl1109411120_ (##cdr _e1109211115_)))
                                (if (gx#stx-pair? _tl1109411120_)
                                    (let ((_e1109511123_
                                           (gx#stx-e _tl1109411120_)))
                                      (let ((_hd1109611126_
                                             (##car _e1109511123_))
                                            (_tl1109711128_
                                             (##cdr _e1109511123_)))
                                        (if (gx#stx-null? _tl1109711128_)
                                            ((lambda (_L11131_ _L11132_)
                                               (gxc#add-module-binding!
                                                _L11132_
                                                '#t))
                                             _hd1109611126_
                                             _hd1109311118_)
                                            (_g1108511102_ _g1108611105_))))
                                    (_g1108511102_ _g1108611105_))))
                            (_g1108511102_ _g1108611105_))))
                    (_g1108511102_ _g1108611105_)))))
        (_g1108411147_ _stx11083_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11025_ _modules11026_)
      (let* ((_g1102811042_
              (lambda (_g1102911039_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1102911039_)))
             (_g1102711080_
              (lambda (_g1102911045_)
                (if (gx#stx-pair? _g1102911045_)
                    (let ((_e1103211047_ (gx#stx-e _g1102911045_)))
                      (let ((_hd1103311050_ (##car _e1103211047_))
                            (_tl1103411052_ (##cdr _e1103211047_)))
                        (if (gx#stx-pair? _tl1103411052_)
                            (let ((_e1103511055_ (gx#stx-e _tl1103411052_)))
                              (let ((_hd1103611058_ (##car _e1103511055_))
                                    (_tl1103711060_ (##cdr _e1103511055_)))
                                ((lambda (_L11063_ _L11064_)
                                   (let ((_ctx11077_
                                          (gx#syntax-local-e__0 _L11064_)))
                                     (begin
                                       (set-box!
                                        _modules11026_
                                        (cons _ctx11077_
                                              (unbox _modules11026_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11077_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11026_))
                                        gx#current-expander-context
                                        _ctx11077_))))
                                 _tl1103711060_
                                 _hd1103611058_)))
                            (_g1102811042_ _g1102911045_))))
                    (_g1102811042_ _g1102911045_)))))
        (_g1102711080_ _stx11025_))))
  (define gxc#add-module-binding!
    (lambda (_id11019_ _syntax?11020_)
      (let ((_eid11022_
             (##structure-ref
              (gx#resolve-identifier__0 _id11019_)
              '1
              gx#binding::t
              '#f))
            (_ht11023_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11022_)
            '#!void
            (table-set!
             _ht11023_
             _eid11022_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11022_)
              _syntax?11020_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11000_)
      (let ((_bind11002_ (gx#resolve-identifier__0 _id11000_)))
        (if _bind11002_
            (let ((_eid11004_
                   (##structure-ref _bind11002_ '1 gx#binding::t '#f))
                  (_ht11005_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid11004_)
                  _eid11004_
                  (let ((_$e11007_ (table-ref _ht11005_ _eid11004_ '#f)))
                    (if _$e11007_
                        (values _$e11007_)
                        (if (##structure-instance-of?
                             _bind11002_
                             'gx#local-binding::t)
                            (let ((_gid11010_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid11004_)))
                              (begin
                                (table-set! _ht11005_ _eid11004_ _gid11010_)
                                _gid11010_))
                            (if (##structure-instance-of?
                                 _bind11002_
                                 'gx#module-binding::t)
                                (let ((_gid11017_
                                       (let ((_$e11012_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind11002_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e11012_
                                             ((lambda (_ns11015_)
                                                (make-symbol
                                                 _ns11015_
                                                 '"#"
                                                 _eid11004_))
                                              _$e11012_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid11004_)))))
                                  (begin
                                    (table-set!
                                     _ht11005_
                                     _eid11004_
                                     _gid11017_)
                                    _gid11017_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id11000_
                                 _eid11004_
                                 _bind11002_)))))))
            (if (interned-symbol? (gx#stx-e _id11000_))
                (gx#stx-e _id11000_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11000_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10998_)
      (if (gx#identifier? _id10998_)
          (gxc#generate-runtime-binding-id _id10998_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym10978_ _quote?10979_)
        (let* ((_ht10981_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10983_ (table-ref _ht10981_ _sym10978_ '#f)))
          (if _$e10983_
              (values _$e10983_)
              (let ((_g10986_
                     (if _quote?10979_
                         (make-symbol
                          '"__"
                          _sym10978_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10978_ '"_"))))
                (begin
                  (table-set! _ht10981_ _sym10978_ _g10986_)
                  _g10986_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10991_)
          (let ((_quote?10993_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym10991_
             _quote?10993_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12098_
          (let ((_g12097_ (length _g12098_)))
            (cond ((fx= _g12097_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12098_))
                  ((fx= _g12097_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12098_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12098_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10975_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10975_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10935_)
      (if (interned-symbol? _key10935_)
          _key10935_
          (if (uninterned-symbol? _key10935_)
              (gxc#generate-runtime-gensym-reference__0 _key10935_)
              (let* ((_key1093610943_ _key10935_)
                     (_E1093810947_
                      (lambda ()
                        (error '"No clause matching" _key1093610943_)))
                     (_K1093910963_
                      (lambda (_mark10950_ _eid10951_)
                        (let ((_$e10953_
                               (##structure-ref
                                _mark10950_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10953_
                              ((lambda (_ht10956_)
                                 (let ((_$e10958_
                                        (table-ref _ht10956_ _eid10951_ '#f)))
                                   (if _$e10958_
                                       ((lambda (_id10961_)
                                          (if (interned-symbol? _id10961_)
                                              _id10961_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10961_)))
                                        _$e10958_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10951_))))
                               _$e10953_)
                              (gxc#generate-runtime-identifier-key
                               _eid10951_))))))
                (if (##pair? _key1093610943_)
                    (let ((_hd1094010966_ (##car _key1093610943_))
                          (_tl1094110968_ (##cdr _key1093610943_)))
                      (let* ((_eid10971_ _hd1094010966_)
                             (_mark10973_ _tl1094110968_))
                        (_K1093910963_ _mark10973_ _eid10971_)))
                    (_E1093810947_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top10922_)
        (if _top10922_
            (let ((_ns10924_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10925_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10925_)
                  (make-symbol
                   _ns10924_
                   '"["
                   (number->string _phi10925_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10924_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10931_ '#f))
            (gxc#generate-runtime-temporary__% _top10931_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12100_
          (let ((_g12099_ (length _g12100_)))
            (cond ((fx= _g12099_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12100_))
                  ((fx= _g12099_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12100_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12100_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10919_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10839_)
      (let* ((_g1084110851_
              (lambda (_g1084210848_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1084210848_)))
             (_g1084010916_
              (lambda (_g1084210854_)
                (if (gx#stx-pair? _g1084210854_)
                    (let ((_e1084410856_ (gx#stx-e _g1084210854_)))
                      (let ((_hd1084510859_ (##car _e1084410856_))
                            (_tl1084610861_ (##cdr _e1084410856_)))
                        ((lambda (_L10864_)
                           (let* ((_body10874_
                                   (gx#stx-map1 gxc#compile-e _L10864_))
                                  (_body10913_
                                   (filter (lambda (_stx10876_)
                                             (let* ((_g1087910888_
                                                     (lambda (_g1088010885_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1088010885_)))
                                                    (_g1087810895_
                                                     (lambda (_g1088010891_)
                                                       ((lambda () '#t))))
                                                    (_g1087710910_
                                                     (lambda (_g1088010898_)
                                                       (if (gx#stx-pair?
                                                            _g1088010898_)
                                                           (let ((_e1088110900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1088010898_)))
                     (let ((_hd1088210903_ (##car _e1088110900_))
                           (_tl1088310905_ (##cdr _e1088110900_)))
                       (if (gx#identifier? _hd1088210903_)
                           (if (gx#stx-eq? 'begin _hd1088210903_)
                               (if (gx#stx-null? _tl1088310905_)
                                   ((lambda () '#f))
                                   (_g1087810895_ _g1088010898_))
                               (_g1087810895_ _g1088010898_))
                           (_g1087810895_ _g1088010898_))))
                   (_g1087810895_ _g1088010898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1087710910_ _stx10876_)))
                                           _body10874_)))
                             (if (fx= (length _body10913_) '1)
                                 (car _body10913_)
                                 (cons 'begin _body10913_))))
                         _tl1084610861_)))
                    (_g1084110851_ _g1084210854_)))))
        (_g1084010916_ _stx10839_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10801_)
      (let* ((_g1080310813_
              (lambda (_g1080410810_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1080410810_)))
             (_g1080210836_
              (lambda (_g1080410816_)
                (if (gx#stx-pair? _g1080410816_)
                    (let ((_e1080610818_ (gx#stx-e _g1080410816_)))
                      (let ((_hd1080710821_ (##car _e1080610818_))
                            (_tl1080810823_ (##cdr _e1080610818_)))
                        ((lambda (_L10826_)
                           (cons 'begin (gx#syntax->datum _L10826_)))
                         _tl1080810823_)))
                    (_g1080310813_ _g1080410816_)))))
        (_g1080210836_ _stx10801_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10734_)
      (let* ((_g1073610753_
              (lambda (_g1073710750_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1073710750_)))
             (_g1073510798_
              (lambda (_g1073710756_)
                (if (gx#stx-pair? _g1073710756_)
                    (let ((_e1074010758_ (gx#stx-e _g1073710756_)))
                      (let ((_hd1074110761_ (##car _e1074010758_))
                            (_tl1074210763_ (##cdr _e1074010758_)))
                        (if (gx#stx-pair? _tl1074210763_)
                            (let ((_e1074310766_ (gx#stx-e _tl1074210763_)))
                              (let ((_hd1074410769_ (##car _e1074310766_))
                                    (_tl1074510771_ (##cdr _e1074310766_)))
                                (if (gx#stx-pair? _tl1074510771_)
                                    (let ((_e1074610774_
                                           (gx#stx-e _tl1074510771_)))
                                      (let ((_hd1074710777_
                                             (##car _e1074610774_))
                                            (_tl1074810779_
                                             (##cdr _e1074610774_)))
                                        (if (gx#stx-null? _tl1074810779_)
                                            ((lambda (_L10782_ _L10783_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10783_))
                   (cons (gxc#compile-e _L10782_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1074710777_
                                             _hd1074410769_)
                                            (_g1073610753_ _g1073710756_))))
                                    (_g1073610753_ _g1073710756_))))
                            (_g1073610753_ _g1073710756_))))
                    (_g1073610753_ _g1073710756_)))))
        (_g1073510798_ _stx10734_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10696_)
      (let* ((_g1069810708_
              (lambda (_g1069910705_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1069910705_)))
             (_g1069710731_
              (lambda (_g1069910711_)
                (if (gx#stx-pair? _g1069910711_)
                    (let ((_e1070110713_ (gx#stx-e _g1069910711_)))
                      (let ((_hd1070210716_ (##car _e1070110713_))
                            (_tl1070310718_ (##cdr _e1070110713_)))
                        ((lambda (_L10721_)
                           (cons 'declare (map gx#syntax->datum _L10721_)))
                         _tl1070310718_)))
                    (_g1069810708_ _g1069910711_)))))
        (_g1069710731_ _stx10696_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10452_)
      (let* ((_g1045410471_
              (lambda (_g1045510468_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1045510468_)))
             (_g1045310693_
              (lambda (_g1045510474_)
                (if (gx#stx-pair? _g1045510474_)
                    (let ((_e1045810476_ (gx#stx-e _g1045510474_)))
                      (let ((_hd1045910479_ (##car _e1045810476_))
                            (_tl1046010481_ (##cdr _e1045810476_)))
                        (if (gx#stx-pair? _tl1046010481_)
                            (let ((_e1046110484_ (gx#stx-e _tl1046010481_)))
                              (let ((_hd1046210487_ (##car _e1046110484_))
                                    (_tl1046310489_ (##cdr _e1046110484_)))
                                (if (gx#stx-pair? _tl1046310489_)
                                    (let ((_e1046410492_
                                           (gx#stx-e _tl1046310489_)))
                                      (let ((_hd1046510495_
                                             (##car _e1046410492_))
                                            (_tl1046610497_
                                             (##cdr _e1046410492_)))
                                        (if (gx#stx-null? _tl1046610497_)
                                            ((lambda (_L10500_ _L10501_)
                                               (let* ((_g1051810531_
                                                       (lambda (_g1051910528_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1051910528_)))
                                                      (_g1051710645_
                                                       (lambda (_g1051910534_)
                                                         ((lambda ()
                                                            (let* ((_tmp10538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body10642_
                            (let _lp10540_ ((_rest10542_ _L10501_)
                                            (_k10543_ '0)
                                            (_r10544_ '()))
                              (let* ((_g1054910565_
                                      (lambda (_g1055010562_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1055010562_)))
                                     (_g1054810572_
                                      (lambda (_g1055010568_)
                                        ((lambda () (reverse _r10544_)))))
                                     (_g1054710593_
                                      (lambda (_g1055010575_)
                                        ((lambda (_L10577_)
                                           (if (gx#identifier? _L10577_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10577_)
                                 (cons (cons 'values->list
                                             (cons _tmp10538_
                                                   (cons _k10543_ '())))
                                       '())))
                     '())
               _r10544_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1054810572_ _g1055010575_)))
                                         _g1055010575_)))
                                     (_g1054610617_
                                      (lambda (_g1055010596_)
                                        (if (gx#stx-pair? _g1055010596_)
                                            (let ((_e1055710598_
                                                   (gx#stx-e _g1055010596_)))
                                              (let ((_hd1055810601_
                                                     (##car _e1055710598_))
                                                    (_tl1055910603_
                                                     (##cdr _e1055710598_)))
                                                ((lambda (_L10606_ _L10607_)
                                                   (_lp10540_
                                                    _L10606_
                                                    (fx+ _k10543_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10607_)
                              (cons (cons 'values-ref
                                          (cons _tmp10538_
                                                (cons _k10543_ '())))
                                    '())))
                  _r10544_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1055910603_
                                                 _hd1055810601_)))
                                            (_g1054710593_ _g1055010596_))))
                                     (_g1054510639_
                                      (lambda (_g1055010620_)
                                        (if (gx#stx-pair? _g1055010620_)
                                            (let ((_e1055210622_
                                                   (gx#stx-e _g1055010620_)))
                                              (let ((_hd1055310625_
                                                     (##car _e1055210622_))
                                                    (_tl1055410627_
                                                     (##cdr _e1055210622_)))
                                                (if (gx#stx-datum?
                                                     _hd1055310625_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1055310625_)
                        '#f)
                ((lambda (_L10630_)
                   (_lp10540_ _L10630_ (fx+ _k10543_ '1) _r10544_))
                 _tl1055410627_)
                (_g1054610617_ _g1055010620_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1054610617_
                                                     _g1055010620_))))
                                            (_g1054610617_ _g1055010620_)))))
                                (_g1054510639_ _rest10542_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10538_
                                              (cons (gxc#compile-e _L10500_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10538_
                                         _L10501_)
                                        _body10642_))))))))
              (_g1051610675_
               (lambda (_g1051910648_)
                 (if (gx#stx-pair? _g1051910648_)
                     (let ((_e1052410650_ (gx#stx-e _g1051910648_)))
                       (let ((_hd1052510653_ (##car _e1052410650_))
                             (_tl1052610655_ (##cdr _e1052410650_)))
                         (if (gx#stx-null? _tl1052610655_)
                             ((lambda (_L10658_)
                                (let ((_eid10667_
                                       (gxc#generate-runtime-binding-id
                                        _L10658_)))
                                  (begin
                                    (let ((_lambda-expr1066810670_
                                           (gxc#apply-find-lambda-expression
                                            _L10500_)))
                                      (if _lambda-expr1066810670_
                                          (let ((_lambda-expr10673_
                                                 _lambda-expr1066810670_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10673_
                                             _eid10667_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10667_
                                                (cons (gxc#compile-e _L10500_)
                                                      '()))))))
                              _hd1052510653_)
                             (_g1051710645_ _g1051910648_))))
                     (_g1051710645_ _g1051910648_))))
              (_g1051510690_
               (lambda (_g1051910678_)
                 (if (gx#stx-pair? _g1051910678_)
                     (let ((_e1052010680_ (gx#stx-e _g1051910678_)))
                       (let ((_hd1052110683_ (##car _e1052010680_))
                             (_tl1052210685_ (##cdr _e1052010680_)))
                         (if (gx#stx-datum? _hd1052110683_)
                             (if (equal? (gx#stx-e _hd1052110683_) '#f)
                                 (if (gx#stx-null? _tl1052210685_)
                                     ((lambda () (gxc#compile-e _L10500_)))
                                     (_g1051610675_ _g1051910678_))
                                 (_g1051610675_ _g1051910678_))
                             (_g1051610675_ _g1051910678_))))
                     (_g1051610675_ _g1051910678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1051510690_ _L10501_)))
                                             _hd1046510495_
                                             _hd1046210487_)
                                            (_g1045410471_ _g1045510474_))))
                                    (_g1045410471_ _g1045510474_))))
                            (_g1045410471_ _g1045510474_))))
                    (_g1045410471_ _g1045510474_)))))
        (_g1045310693_ _stx10452_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10440_ _hd10441_)
      (let* ((_len10443_ (gx#stx-length _hd10441_))
             (_cmp10445_ (if (gx#stx-list? _hd10441_) 'fx= 'fx>=))
             (_errmsg10447_
              (string-append
               (if (gx#stx-list? _hd10441_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10443_)
               '" values"))
             (_count10449_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10441_)) (fx= _len10443_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10449_
                                    (cons (cons 'values-count
                                                (cons _vals10440_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10445_
                                                            (cons _count10449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10443_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10447_
                                                            (cons _count10449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10373_)
      (let* ((_g1037510392_
              (lambda (_g1037610389_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1037610389_)))
             (_g1037410437_
              (lambda (_g1037610395_)
                (if (gx#stx-pair? _g1037610395_)
                    (let ((_e1037910397_ (gx#stx-e _g1037610395_)))
                      (let ((_hd1038010400_ (##car _e1037910397_))
                            (_tl1038110402_ (##cdr _e1037910397_)))
                        (if (gx#stx-pair? _tl1038110402_)
                            (let ((_e1038210405_ (gx#stx-e _tl1038110402_)))
                              (let ((_hd1038310408_ (##car _e1038210405_))
                                    (_tl1038410410_ (##cdr _e1038210405_)))
                                (if (gx#stx-pair? _tl1038410410_)
                                    (let ((_e1038510413_
                                           (gx#stx-e _tl1038410410_)))
                                      (let ((_hd1038610416_
                                             (##car _e1038510413_))
                                            (_tl1038710418_
                                             (##cdr _e1038510413_)))
                                        (if (gx#stx-null? _tl1038710418_)
                                            ((lambda (_L10421_ _L10422_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10422_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10421_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1038610416_
                                             _hd1038310408_)
                                            (_g1037510392_ _g1037610395_))))
                                    (_g1037510392_ _g1037610395_))))
                            (_g1037510392_ _g1037610395_))))
                    (_g1037510392_ _g1037610395_)))))
        (_g1037410437_ _stx10373_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10371_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10371_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8904_)
      (letrec ((_runtime-identifier=?8906_
                (lambda (_id-stx10362_ _sym10363_)
                  (let ((_bind1036410366_
                         (gx#resolve-identifier__0 _id-stx10362_)))
                    (if _bind1036410366_
                        (let ((_bind10369_ _bind1036410366_))
                          (eq? (##structure-ref
                                _bind10369_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10363_))
                        '#f))))
               (_dispatch-case?8907_
                (lambda (_hd9592_ _body9593_)
                  (let* ((_form9595_ (cons _hd9592_ (cons _body9593_ '())))
                         (_g96009757_
                          (lambda (_g96019754_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g96019754_)))
                         (_g95999764_ (lambda (_g96019760_) ((lambda () '#f))))
                         (_g95989905_
                          (lambda (_g96019767_)
                            (if (gx#stx-pair? _g96019767_)
                                (let ((_e97179769_ (gx#stx-e _g96019767_)))
                                  (let ((_hd97189772_ (##car _e97179769_))
                                        (_tl97199774_ (##cdr _e97179769_)))
                                    (if (gx#stx-pair? _tl97199774_)
                                        (let ((_e97209777_
                                               (gx#stx-e _tl97199774_)))
                                          (let ((_hd97219780_
                                                 (##car _e97209777_))
                                                (_tl97229782_
                                                 (##cdr _e97209777_)))
                                            (if (gx#stx-pair? _hd97219780_)
                                                (let ((_e97239785_
                                                       (gx#stx-e
                                                        _hd97219780_)))
                                                  (let ((_hd97249788_
                                                         (##car _e97239785_))
                                                        (_tl97259790_
                                                         (##cdr _e97239785_)))
                                                    (if (gx#identifier?
                                                         _hd97249788_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd97249788_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97259790_)
                        (let ((_e97269793_ (gx#stx-e _tl97259790_)))
                          (let ((_hd97279796_ (##car _e97269793_))
                                (_tl97289798_ (##cdr _e97269793_)))
                            (if (gx#stx-pair? _hd97279796_)
                                (let ((_e97299801_ (gx#stx-e _hd97279796_)))
                                  (let ((_hd97309804_ (##car _e97299801_))
                                        (_tl97319806_ (##cdr _e97299801_)))
                                    (if (gx#identifier? _hd97309804_)
                                        (if (gx#stx-eq? '%#ref _hd97309804_)
                                            (if (gx#stx-pair? _tl97319806_)
                                                (let ((_e97329809_
                                                       (gx#stx-e
                                                        _tl97319806_)))
                                                  (let ((_hd97339812_
                                                         (##car _e97329809_))
                                                        (_tl97349814_
                                                         (##cdr _e97329809_)))
                                                    (if (gx#stx-null?
                                                         _tl97349814_)
                                                        (if (gx#stx-pair?
                                                             _tl97289798_)
                                                            (let ((_e97359817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl97289798_)))
                      (let ((_hd97369820_ (##car _e97359817_))
                            (_tl97379822_ (##cdr _e97359817_)))
                        (if (gx#stx-pair? _hd97369820_)
                            (let ((_e97389825_ (gx#stx-e _hd97369820_)))
                              (let ((_hd97399828_ (##car _e97389825_))
                                    (_tl97409830_ (##cdr _e97389825_)))
                                (if (gx#identifier? _hd97399828_)
                                    (if (gx#stx-eq? '%#ref _hd97399828_)
                                        (if (gx#stx-pair? _tl97409830_)
                                            (let ((_e97419833_
                                                   (gx#stx-e _tl97409830_)))
                                              (let ((_hd97429836_
                                                     (##car _e97419833_))
                                                    (_tl97439838_
                                                     (##cdr _e97419833_)))
                                                (if (gx#stx-null? _tl97439838_)
                                                    (if (gx#stx-pair?
                                                         _tl97379822_)
                                                        (let ((_e97449841_
                                                               (gx#stx-e
                                                                _tl97379822_)))
                                                          (let ((_hd97459844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97449841_))
                        (_tl97469846_ (##cdr _e97449841_)))
                    (if (gx#stx-pair? _hd97459844_)
                        (let ((_e97479849_ (gx#stx-e _hd97459844_)))
                          (let ((_hd97489852_ (##car _e97479849_))
                                (_tl97499854_ (##cdr _e97479849_)))
                            (if (gx#identifier? _hd97489852_)
                                (if (gx#stx-eq? '%#ref _hd97489852_)
                                    (if (gx#stx-pair? _tl97499854_)
                                        (let ((_e97509857_
                                               (gx#stx-e _tl97499854_)))
                                          (let ((_hd97519860_
                                                 (##car _e97509857_))
                                                (_tl97529862_
                                                 (##cdr _e97509857_)))
                                            (if (gx#stx-null? _tl97529862_)
                                                (if (gx#stx-null? _tl97469846_)
                                                    (if (gx#stx-null?
                                                         _tl97229782_)
                                                        ((lambda (_L9865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9866_
                          _L9867_
                          _L9868_)
                   (if (if (gx#identifier? _L9868_)
                           (if (_runtime-identifier=?8906_ _L9867_ 'apply)
                               (if (gx#free-identifier=? _L9868_ _L9865_)
                                   (not (gx#free-identifier=? _L9866_ _L9868_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g95999764_ _g96019767_)))
                 _hd97519860_
                 _hd97429836_
                 _hd97339812_
                 _hd97189772_)
                (_g95999764_ _g96019767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95999764_ _g96019767_))
                                                (_g95999764_ _g96019767_))))
                                        (_g95999764_ _g96019767_))
                                    (_g95999764_ _g96019767_))
                                (_g95999764_ _g96019767_))))
                        (_g95999764_ _g96019767_))))
                (_g95999764_ _g96019767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95999764_
                                                     _g96019767_))))
                                            (_g95999764_ _g96019767_))
                                        (_g95999764_ _g96019767_))
                                    (_g95999764_ _g96019767_))))
                            (_g95999764_ _g96019767_))))
                    (_g95999764_ _g96019767_))
                (_g95999764_ _g96019767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95999764_ _g96019767_))
                                            (_g95999764_ _g96019767_))
                                        (_g95999764_ _g96019767_))))
                                (_g95999764_ _g96019767_))))
                        (_g95999764_ _g96019767_))
                    (_g95999764_ _g96019767_))
                (_g95999764_ _g96019767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95999764_ _g96019767_))))
                                        (_g95999764_ _g96019767_))))
                                (_g95999764_ _g96019767_))))
                         (_g959710165_
                          (lambda (_g96019908_)
                            (if (gx#stx-pair? _g96019908_)
                                (let ((_e96539910_ (gx#stx-e _g96019908_)))
                                  (let ((_hd96549913_ (##car _e96539910_))
                                        (_tl96559915_ (##cdr _e96539910_)))
                                    (if (gx#stx-pair/null? _hd96549913_)
                                        (if (fx>= (gx#stx-length _hd96549913_)
                                                  '0)
                                            (let ((_g12101_
                                                   (gx#syntax-split-splice
                                                    _hd96549913_
                                                    '0)))
                                              (begin
                                                (let ((_g12102_
                                                       (values-count
                                                        _g12101_)))
                                                  (if (not (fx= _g12102_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12102_)))
                                                (let ((_target96569918_
                                                       (values-ref _g12101_ 0))
                                                      (_tl96589920_
                                                       (values-ref
                                                        _g12101_
                                                        1)))
                                                  (letrec ((_loop96599923_
                                                            (lambda (_hd96579926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg96639928_)
                      (if (gx#stx-pair? _hd96579926_)
                          (let ((_e96609931_ (gx#stx-e _hd96579926_)))
                            (let ((_lp-hd96619934_ (##car _e96609931_))
                                  (_lp-tl96629936_ (##cdr _e96609931_)))
                              (_loop96599923_
                               _lp-tl96629936_
                               (cons _lp-hd96619934_ _arg96639928_))))
                          (let ((_arg96649939_ (reverse _arg96639928_)))
                            (if (gx#stx-pair? _tl96559915_)
                                (let ((_e96659942_ (gx#stx-e _tl96559915_)))
                                  (let ((_hd96669945_ (##car _e96659942_))
                                        (_tl96679947_ (##cdr _e96659942_)))
                                    (if (gx#stx-pair? _hd96669945_)
                                        (let ((_e96689950_
                                               (gx#stx-e _hd96669945_)))
                                          (let ((_hd96699953_
                                                 (##car _e96689950_))
                                                (_tl96709955_
                                                 (##cdr _e96689950_)))
                                            (if (gx#identifier? _hd96699953_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd96699953_)
                                                    (if (gx#stx-pair?
                                                         _tl96709955_)
                                                        (let ((_e96719958_
                                                               (gx#stx-e
                                                                _tl96709955_)))
                                                          (let ((_hd96729961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e96719958_))
                        (_tl96739963_ (##cdr _e96719958_)))
                    (if (gx#stx-pair? _hd96729961_)
                        (let ((_e96749966_ (gx#stx-e _hd96729961_)))
                          (let ((_hd96759969_ (##car _e96749966_))
                                (_tl96769971_ (##cdr _e96749966_)))
                            (if (gx#identifier? _hd96759969_)
                                (if (gx#stx-eq? '%#ref _hd96759969_)
                                    (if (gx#stx-pair? _tl96769971_)
                                        (let ((_e96779974_
                                               (gx#stx-e _tl96769971_)))
                                          (let ((_hd96789977_
                                                 (##car _e96779974_))
                                                (_tl96799979_
                                                 (##cdr _e96779974_)))
                                            (if (gx#stx-null? _tl96799979_)
                                                (if (gx#stx-pair? _tl96739963_)
                                                    (let ((_e96809982_
                                                           (gx#stx-e
                                                            _tl96739963_)))
                                                      (let ((_hd96819985_
                                                             (##car _e96809982_))
                                                            (_tl96829987_
                                                             (##cdr _e96809982_)))
                                                        (if (gx#stx-pair?
                                                             _hd96819985_)
                                                            (let ((_e96839990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96819985_)))
                      (let ((_hd96849993_ (##car _e96839990_))
                            (_tl96859995_ (##cdr _e96839990_)))
                        (if (gx#identifier? _hd96849993_)
                            (if (gx#stx-eq? '%#ref _hd96849993_)
                                (if (gx#stx-pair? _tl96859995_)
                                    (let ((_e96869998_
                                           (gx#stx-e _tl96859995_)))
                                      (let ((_hd968710001_ (##car _e96869998_))
                                            (_tl968810003_
                                             (##cdr _e96869998_)))
                                        (if (gx#stx-null? _tl968810003_)
                                            (if (gx#stx-pair/null?
                                                 _tl96829987_)
                                                (if (fx>= (gx#stx-length
                                                           _tl96829987_)
                                                          '1)
                                                    (let ((_g12103_
                                                           (gx#syntax-split-splice
                                                            _tl96829987_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12104_
                                                               (values-count
                                                                _g12103_)))
                                                          (if (not (fx= _g12104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12104_)))
                (let ((_target968910006_ (values-ref _g12103_ 0))
                      (_tl969110008_ (values-ref _g12103_ 1)))
                  (if (gx#stx-pair? _tl969110008_)
                      (let ((_e969810011_ (gx#stx-e _tl969110008_)))
                        (let ((_hd969910014_ (##car _e969810011_))
                              (_tl970010016_ (##cdr _e969810011_)))
                          (if (gx#stx-pair? _hd969910014_)
                              (let ((_e970110019_ (gx#stx-e _hd969910014_)))
                                (let ((_hd970210022_ (##car _e970110019_))
                                      (_tl970310024_ (##cdr _e970110019_)))
                                  (if (gx#identifier? _hd970210022_)
                                      (if (gx#stx-eq? '%#ref _hd970210022_)
                                          (if (gx#stx-pair? _tl970310024_)
                                              (let ((_e970410027_
                                                     (gx#stx-e _tl970310024_)))
                                                (let ((_hd970510030_
                                                       (##car _e970410027_))
                                                      (_tl970610032_
                                                       (##cdr _e970410027_)))
                                                  (if (gx#stx-null?
                                                       _tl970610032_)
                                                      (if (gx#stx-null?
                                                           _tl970010016_)
                                                          (letrec ((_loop969210035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd969010038_ _xarg969610040_)
                              (if (gx#stx-pair? _hd969010038_)
                                  (let ((_e969310043_
                                         (gx#stx-e _hd969010038_)))
                                    (let ((_lp-hd969410046_
                                           (##car _e969310043_))
                                          (_lp-tl969510048_
                                           (##cdr _e969310043_)))
                                      (if (gx#stx-pair? _lp-hd969410046_)
                                          (let ((_e970710051_
                                                 (gx#stx-e _lp-hd969410046_)))
                                            (let ((_hd970810054_
                                                   (##car _e970710051_))
                                                  (_tl970910056_
                                                   (##cdr _e970710051_)))
                                              (if (gx#identifier?
                                                   _hd970810054_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd970810054_)
                                                      (if (gx#stx-pair?
                                                           _tl970910056_)
                                                          (let ((_e971010059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl970910056_)))
                    (let ((_hd971110062_ (##car _e971010059_))
                          (_tl971210064_ (##cdr _e971010059_)))
                      (if (gx#stx-null? _tl971210064_)
                          (_loop969210035_
                           _lp-tl969510048_
                           (cons _hd971110062_ _xarg969610040_))
                          (_g95989905_ _g96019908_))))
                  (_g95989905_ _g96019908_))
              (_g95989905_ _g96019908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g95989905_ _g96019908_))))
                                          (_g95989905_ _g96019908_))))
                                  (let ((_xarg969710067_
                                         (reverse _xarg969610040_)))
                                    (if (gx#stx-null? _tl96679947_)
                                        ((lambda (_L10070_
                                                  _L10071_
                                                  _L10072_
                                                  _L10073_
                                                  _L10074_
                                                  _L10075_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1011810121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1011910123_)
                        (cons _g1011810121_ _g1011910123_))
                      '()
                      _L10075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10074_)
                                                       (if (_runtime-identifier=?8906_
                                                            _L10073_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1012510128_
                                                       _g1012610130_)
                                                (cons _g1012510128_
                                                      _g1012610130_))
                                              '()
                                              _L10075_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1013210135_
                                                       _g1013310137_)
                                                (cons _g1013210135_
                                                      _g1013310137_))
                                              '()
                                              _L10071_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1013910142_
                                                      _g1014010144_)
                                               (cons _g1013910142_
                                                     _g1014010144_))
                                             '()
                                             _L10075_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1014610149_
                                                      _g1014710151_)
                                               (cons _g1014610149_
                                                     _g1014710151_))
                                             '()
                                             _L10071_)))
                           (if (gx#free-identifier=? _L10074_ _L10070_)
                               (not (find (lambda (_g1015310155_)
                                            (gx#free-identifier=?
                                             _g1015310155_
                                             _L10072_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1015710160_
                                                             _g1015810162_)
                                                      (cons _g1015710160_
                                                            _g1015810162_))
                                                    (cons _L10074_ '())
                                                    _L10075_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g95989905_ _g96019908_)))
                                         _hd970510030_
                                         _xarg969710067_
                                         _hd968710001_
                                         _hd96789977_
                                         _tl96589920_
                                         _arg96649939_)
                                        (_g95989905_ _g96019908_)))))))
                    (_loop969210035_ _target968910006_ '()))
                  (_g95989905_ _g96019908_))
              (_g95989905_ _g96019908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g95989905_ _g96019908_))
                                          (_g95989905_ _g96019908_))
                                      (_g95989905_ _g96019908_))))
                              (_g95989905_ _g96019908_))))
                      (_g95989905_ _g96019908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95989905_ _g96019908_))
                                                (_g95989905_ _g96019908_))
                                            (_g95989905_ _g96019908_))))
                                    (_g95989905_ _g96019908_))
                                (_g95989905_ _g96019908_))
                            (_g95989905_ _g96019908_))))
                    (_g95989905_ _g96019908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95989905_ _g96019908_))
                                                (_g95989905_ _g96019908_))))
                                        (_g95989905_ _g96019908_))
                                    (_g95989905_ _g96019908_))
                                (_g95989905_ _g96019908_))))
                        (_g95989905_ _g96019908_))))
                (_g95989905_ _g96019908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95989905_ _g96019908_))
                                                (_g95989905_ _g96019908_))))
                                        (_g95989905_ _g96019908_))))
                                (_g95989905_ _g96019908_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop96599923_
                                                     _target96569918_
                                                     '())))))
                                            (_g95989905_ _g96019908_))
                                        (_g95989905_ _g96019908_))))
                                (_g95989905_ _g96019908_))))
                         (_g959610359_
                          (lambda (_g960110168_)
                            (if (gx#stx-pair? _g960110168_)
                                (let ((_e960510170_ (gx#stx-e _g960110168_)))
                                  (let ((_hd960610173_ (##car _e960510170_))
                                        (_tl960710175_ (##cdr _e960510170_)))
                                    (if (gx#stx-pair/null? _hd960610173_)
                                        (if (fx>= (gx#stx-length _hd960610173_)
                                                  '0)
                                            (let ((_g12105_
                                                   (gx#syntax-split-splice
                                                    _hd960610173_
                                                    '0)))
                                              (begin
                                                (let ((_g12106_
                                                       (values-count
                                                        _g12105_)))
                                                  (if (not (fx= _g12106_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12106_)))
                                                (let ((_target960810178_
                                                       (values-ref _g12105_ 0))
                                                      (_tl961010180_
                                                       (values-ref
                                                        _g12105_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl961010180_)
                                                      (letrec ((_loop961110183_
                                                                (lambda (_hd960910186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg961510188_)
                          (if (gx#stx-pair? _hd960910186_)
                              (let ((_e961210191_ (gx#stx-e _hd960910186_)))
                                (let ((_lp-hd961310194_ (##car _e961210191_))
                                      (_lp-tl961410196_ (##cdr _e961210191_)))
                                  (_loop961110183_
                                   _lp-tl961410196_
                                   (cons _lp-hd961310194_ _arg961510188_))))
                              (let ((_arg961610199_ (reverse _arg961510188_)))
                                (if (gx#stx-pair? _tl960710175_)
                                    (let ((_e961710202_
                                           (gx#stx-e _tl960710175_)))
                                      (let ((_hd961810205_
                                             (##car _e961710202_))
                                            (_tl961910207_
                                             (##cdr _e961710202_)))
                                        (if (gx#stx-pair? _hd961810205_)
                                            (let ((_e962010210_
                                                   (gx#stx-e _hd961810205_)))
                                              (let ((_hd962110213_
                                                     (##car _e962010210_))
                                                    (_tl962210215_
                                                     (##cdr _e962010210_)))
                                                (if (gx#identifier?
                                                     _hd962110213_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd962110213_)
                                                        (if (gx#stx-pair?
                                                             _tl962210215_)
                                                            (let ((_e962310218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl962210215_)))
                      (let ((_hd962410221_ (##car _e962310218_))
                            (_tl962510223_ (##cdr _e962310218_)))
                        (if (gx#stx-pair? _hd962410221_)
                            (let ((_e962610226_ (gx#stx-e _hd962410221_)))
                              (let ((_hd962710229_ (##car _e962610226_))
                                    (_tl962810231_ (##cdr _e962610226_)))
                                (if (gx#identifier? _hd962710229_)
                                    (if (gx#stx-eq? '%#ref _hd962710229_)
                                        (if (gx#stx-pair? _tl962810231_)
                                            (let ((_e962910234_
                                                   (gx#stx-e _tl962810231_)))
                                              (let ((_hd963010237_
                                                     (##car _e962910234_))
                                                    (_tl963110239_
                                                     (##cdr _e962910234_)))
                                                (if (gx#stx-null?
                                                     _tl963110239_)
                                                    (if (gx#stx-pair/null?
                                                         _tl962510223_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl962510223_)
                          '0)
                    (let ((_g12107_ (gx#syntax-split-splice _tl962510223_ '0)))
                      (begin
                        (let ((_g12108_ (values-count _g12107_)))
                          (if (not (fx= _g12108_ 2))
                              (error "Context expects 2 values" _g12108_)))
                        (let ((_target963210242_ (values-ref _g12107_ 0))
                              (_tl963410244_ (values-ref _g12107_ 1)))
                          (if (gx#stx-null? _tl963410244_)
                              (letrec ((_loop963510247_
                                        (lambda (_hd963310250_ _xarg963910252_)
                                          (if (gx#stx-pair? _hd963310250_)
                                              (let ((_e963610255_
                                                     (gx#stx-e _hd963310250_)))
                                                (let ((_lp-hd963710258_
                                                       (##car _e963610255_))
                                                      (_lp-tl963810260_
                                                       (##cdr _e963610255_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd963710258_)
                                                      (let ((_e964110263_
                                                             (gx#stx-e
                                                              _lp-hd963710258_)))
                                                        (let ((_hd964210266_
                                                               (##car _e964110263_))
                                                              (_tl964310268_
                                                               (##cdr _e964110263_)))
                                                          (if (gx#identifier?
                                                               _hd964210266_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd964210266_)
                          (if (gx#stx-pair? _tl964310268_)
                              (let ((_e964410271_ (gx#stx-e _tl964310268_)))
                                (let ((_hd964510274_ (##car _e964410271_))
                                      (_tl964610276_ (##cdr _e964410271_)))
                                  (if (gx#stx-null? _tl964610276_)
                                      (_loop963510247_
                                       _lp-tl963810260_
                                       (cons _hd964510274_ _xarg963910252_))
                                      (_g959710165_ _g960110168_))))
                              (_g959710165_ _g960110168_))
                          (_g959710165_ _g960110168_))
                      (_g959710165_ _g960110168_))))
              (_g959710165_ _g960110168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg964010279_
                                                     (reverse _xarg963910252_)))
                                                (if (gx#stx-null?
                                                     _tl961910207_)
                                                    ((lambda (_L10282_
                                                              _L10283_
                                                              _L10284_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1031210315_ _g1031310317_)
                                    (cons _g1031210315_ _g1031310317_))
                                  '()
                                  _L10284_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1031910322_
                                                           _g1032010324_)
                                                    (cons _g1031910322_
                                                          _g1032010324_))
                                                  '()
                                                  _L10284_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1032610329_
                                                           _g1032710331_)
                                                    (cons _g1032610329_
                                                          _g1032710331_))
                                                  '()
                                                  _L10282_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1033310336_
                                                          _g1033410338_)
                                                   (cons _g1033310336_
                                                         _g1033410338_))
                                                 '()
                                                 _L10284_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1034010343_
                                                          _g1034110345_)
                                                   (cons _g1034010343_
                                                         _g1034110345_))
                                                 '()
                                                 _L10282_)))
                               (not (find (lambda (_g1034710349_)
                                            (gx#free-identifier=?
                                             _g1034710349_
                                             _L10283_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1035110354_
                                                             _g1035210356_)
                                                      (cons _g1035110354_
                                                            _g1035210356_))
                                                    '()
                                                    _L10284_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g959710165_ _g960110168_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg964010279_
                                                     _hd963010237_
                                                     _arg961610199_)
                                                    (_g959710165_
                                                     _g960110168_)))))))
                                (_loop963510247_ _target963210242_ '()))
                              (_g959710165_ _g960110168_)))))
                    (_g959710165_ _g960110168_))
                (_g959710165_ _g960110168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g959710165_
                                                     _g960110168_))))
                                            (_g959710165_ _g960110168_))
                                        (_g959710165_ _g960110168_))
                                    (_g959710165_ _g960110168_))))
                            (_g959710165_ _g960110168_))))
                    (_g959710165_ _g960110168_))
                (_g959710165_ _g960110168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g959710165_
                                                     _g960110168_))))
                                            (_g959710165_ _g960110168_))))
                                    (_g959710165_ _g960110168_)))))))
                (_loop961110183_ _target960810178_ '()))
              (_g959710165_ _g960110168_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g959710165_ _g960110168_))
                                        (_g959710165_ _g960110168_))))
                                (_g959710165_ _g960110168_)))))
                    (_g959610359_ _form9595_))))
               (_dispatch-case-e8908_
                (lambda (_hd9056_ _body9057_)
                  (let* ((_form9059_ (cons _hd9056_ (cons _body9057_ '())))
                         (_g90639187_
                          (lambda (_g90649184_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g90649184_)))
                         (_g90629305_
                          (lambda (_g90649190_)
                            (if (gx#stx-pair? _g90649190_)
                                (let ((_e91539192_ (gx#stx-e _g90649190_)))
                                  (let ((_hd91549195_ (##car _e91539192_))
                                        (_tl91559197_ (##cdr _e91539192_)))
                                    (if (gx#stx-pair? _tl91559197_)
                                        (let ((_e91569200_
                                               (gx#stx-e _tl91559197_)))
                                          (let ((_hd91579203_
                                                 (##car _e91569200_))
                                                (_tl91589205_
                                                 (##cdr _e91569200_)))
                                            (if (gx#stx-pair? _hd91579203_)
                                                (let ((_e91599208_
                                                       (gx#stx-e
                                                        _hd91579203_)))
                                                  (let ((_hd91609211_
                                                         (##car _e91599208_))
                                                        (_tl91619213_
                                                         (##cdr _e91599208_)))
                                                    (if (gx#identifier?
                                                         _hd91609211_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd91609211_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91619213_)
                        (let ((_e91629216_ (gx#stx-e _tl91619213_)))
                          (let ((_hd91639219_ (##car _e91629216_))
                                (_tl91649221_ (##cdr _e91629216_)))
                            (if (gx#stx-pair? _hd91639219_)
                                (let ((_e91659224_ (gx#stx-e _hd91639219_)))
                                  (let ((_hd91669227_ (##car _e91659224_))
                                        (_tl91679229_ (##cdr _e91659224_)))
                                    (if (gx#identifier? _hd91669227_)
                                        (if (gx#stx-eq? '%#ref _hd91669227_)
                                            (if (gx#stx-pair? _tl91679229_)
                                                (let ((_e91689232_
                                                       (gx#stx-e
                                                        _tl91679229_)))
                                                  (let ((_hd91699235_
                                                         (##car _e91689232_))
                                                        (_tl91709237_
                                                         (##cdr _e91689232_)))
                                                    (if (gx#stx-null?
                                                         _tl91709237_)
                                                        (if (gx#stx-pair?
                                                             _tl91649221_)
                                                            (let ((_e91719240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl91649221_)))
                      (let ((_hd91729243_ (##car _e91719240_))
                            (_tl91739245_ (##cdr _e91719240_)))
                        (if (gx#stx-pair? _hd91729243_)
                            (let ((_e91749248_ (gx#stx-e _hd91729243_)))
                              (let ((_hd91759251_ (##car _e91749248_))
                                    (_tl91769253_ (##cdr _e91749248_)))
                                (if (gx#identifier? _hd91759251_)
                                    (if (gx#stx-eq? '%#ref _hd91759251_)
                                        (if (gx#stx-pair? _tl91769253_)
                                            (let ((_e91779256_
                                                   (gx#stx-e _tl91769253_)))
                                              (let ((_hd91789259_
                                                     (##car _e91779256_))
                                                    (_tl91799261_
                                                     (##cdr _e91779256_)))
                                                (if (gx#stx-null? _tl91799261_)
                                                    (if (gx#stx-pair?
                                                         _tl91739245_)
                                                        (let ((_e91809264_
                                                               (gx#stx-e
                                                                _tl91739245_)))
                                                          (let ((_hd91819267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91809264_))
                        (_tl91829269_ (##cdr _e91809264_)))
                    (if (gx#stx-null? _tl91829269_)
                        (if (gx#stx-null? _tl91589205_)
                            ((lambda (_L9272_ _L9273_ _L9274_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9272_ '()))))
                             _hd91789259_
                             _hd91699235_
                             _hd91549195_)
                            (_g90639187_ _g90649190_))
                        (_g90639187_ _g90649190_))))
                (_g90639187_ _g90649190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90639187_
                                                     _g90649190_))))
                                            (_g90639187_ _g90649190_))
                                        (_g90639187_ _g90649190_))
                                    (_g90639187_ _g90649190_))))
                            (_g90639187_ _g90649190_))))
                    (_g90639187_ _g90649190_))
                (_g90639187_ _g90649190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90639187_ _g90649190_))
                                            (_g90639187_ _g90649190_))
                                        (_g90639187_ _g90649190_))))
                                (_g90639187_ _g90649190_))))
                        (_g90639187_ _g90649190_))
                    (_g90639187_ _g90649190_))
                (_g90639187_ _g90649190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90639187_ _g90649190_))))
                                        (_g90639187_ _g90649190_))))
                                (_g90639187_ _g90649190_))))
                         (_g90619441_
                          (lambda (_g90649308_)
                            (if (gx#stx-pair? _g90649308_)
                                (let ((_e91149310_ (gx#stx-e _g90649308_)))
                                  (let ((_hd91159313_ (##car _e91149310_))
                                        (_tl91169315_ (##cdr _e91149310_)))
                                    (if (gx#stx-pair/null? _hd91159313_)
                                        (if (fx>= (gx#stx-length _hd91159313_)
                                                  '0)
                                            (let ((_g12109_
                                                   (gx#syntax-split-splice
                                                    _hd91159313_
                                                    '0)))
                                              (begin
                                                (let ((_g12110_
                                                       (values-count
                                                        _g12109_)))
                                                  (if (not (fx= _g12110_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12110_)))
                                                (let ((_target91179318_
                                                       (values-ref _g12109_ 0))
                                                      (_tl91199320_
                                                       (values-ref
                                                        _g12109_
                                                        1)))
                                                  (letrec ((_loop91209323_
                                                            (lambda (_hd91189326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg91249328_)
                      (if (gx#stx-pair? _hd91189326_)
                          (let ((_e91219331_ (gx#stx-e _hd91189326_)))
                            (let ((_lp-hd91229334_ (##car _e91219331_))
                                  (_lp-tl91239336_ (##cdr _e91219331_)))
                              (_loop91209323_
                               _lp-tl91239336_
                               (cons _lp-hd91229334_ _arg91249328_))))
                          (let ((_arg91259339_ (reverse _arg91249328_)))
                            (if (gx#stx-pair? _tl91169315_)
                                (let ((_e91269342_ (gx#stx-e _tl91169315_)))
                                  (let ((_hd91279345_ (##car _e91269342_))
                                        (_tl91289347_ (##cdr _e91269342_)))
                                    (if (gx#stx-pair? _hd91279345_)
                                        (let ((_e91299350_
                                               (gx#stx-e _hd91279345_)))
                                          (let ((_hd91309353_
                                                 (##car _e91299350_))
                                                (_tl91319355_
                                                 (##cdr _e91299350_)))
                                            (if (gx#identifier? _hd91309353_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd91309353_)
                                                    (if (gx#stx-pair?
                                                         _tl91319355_)
                                                        (let ((_e91329358_
                                                               (gx#stx-e
                                                                _tl91319355_)))
                                                          (let ((_hd91339361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91329358_))
                        (_tl91349363_ (##cdr _e91329358_)))
                    (if (gx#stx-pair? _hd91339361_)
                        (let ((_e91359366_ (gx#stx-e _hd91339361_)))
                          (let ((_hd91369369_ (##car _e91359366_))
                                (_tl91379371_ (##cdr _e91359366_)))
                            (if (gx#identifier? _hd91369369_)
                                (if (gx#stx-eq? '%#ref _hd91369369_)
                                    (if (gx#stx-pair? _tl91379371_)
                                        (let ((_e91389374_
                                               (gx#stx-e _tl91379371_)))
                                          (let ((_hd91399377_
                                                 (##car _e91389374_))
                                                (_tl91409379_
                                                 (##cdr _e91389374_)))
                                            (if (gx#stx-null? _tl91409379_)
                                                (if (gx#stx-pair? _tl91349363_)
                                                    (let ((_e91419382_
                                                           (gx#stx-e
                                                            _tl91349363_)))
                                                      (let ((_hd91429385_
                                                             (##car _e91419382_))
                                                            (_tl91439387_
                                                             (##cdr _e91419382_)))
                                                        (if (gx#stx-pair?
                                                             _hd91429385_)
                                                            (let ((_e91449390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91429385_)))
                      (let ((_hd91459393_ (##car _e91449390_))
                            (_tl91469395_ (##cdr _e91449390_)))
                        (if (gx#identifier? _hd91459393_)
                            (if (gx#stx-eq? '%#ref _hd91459393_)
                                (if (gx#stx-pair? _tl91469395_)
                                    (let ((_e91479398_
                                           (gx#stx-e _tl91469395_)))
                                      (let ((_hd91489401_ (##car _e91479398_))
                                            (_tl91499403_ (##cdr _e91479398_)))
                                        (if (gx#stx-null? _tl91499403_)
                                            (if (gx#stx-null? _tl91289347_)
                                                ((lambda (_L9406_
                                                          _L9407_
                                                          _L9408_
                                                          _L9409_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9406_ '()))))
                                                 _hd91489401_
                                                 _hd91399377_
                                                 _tl91199320_
                                                 _arg91259339_)
                                                (_g90629305_ _g90649308_))
                                            (_g90629305_ _g90649308_))))
                                    (_g90629305_ _g90649308_))
                                (_g90629305_ _g90649308_))
                            (_g90629305_ _g90649308_))))
                    (_g90629305_ _g90649308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90629305_ _g90649308_))
                                                (_g90629305_ _g90649308_))))
                                        (_g90629305_ _g90649308_))
                                    (_g90629305_ _g90649308_))
                                (_g90629305_ _g90649308_))))
                        (_g90629305_ _g90649308_))))
                (_g90629305_ _g90649308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90629305_ _g90649308_))
                                                (_g90629305_ _g90649308_))))
                                        (_g90629305_ _g90649308_))))
                                (_g90629305_ _g90649308_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop91209323_
                                                     _target91179318_
                                                     '())))))
                                            (_g90629305_ _g90649308_))
                                        (_g90629305_ _g90649308_))))
                                (_g90629305_ _g90649308_))))
                         (_g90609589_
                          (lambda (_g90649444_)
                            (if (gx#stx-pair? _g90649444_)
                                (let ((_e90689446_ (gx#stx-e _g90649444_)))
                                  (let ((_hd90699449_ (##car _e90689446_))
                                        (_tl90709451_ (##cdr _e90689446_)))
                                    (if (gx#stx-pair/null? _hd90699449_)
                                        (if (fx>= (gx#stx-length _hd90699449_)
                                                  '0)
                                            (let ((_g12111_
                                                   (gx#syntax-split-splice
                                                    _hd90699449_
                                                    '0)))
                                              (begin
                                                (let ((_g12112_
                                                       (values-count
                                                        _g12111_)))
                                                  (if (not (fx= _g12112_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12112_)))
                                                (let ((_target90719454_
                                                       (values-ref _g12111_ 0))
                                                      (_tl90739456_
                                                       (values-ref
                                                        _g12111_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl90739456_)
                                                      (letrec ((_loop90749459_
                                                                (lambda (_hd90729462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg90789464_)
                          (if (gx#stx-pair? _hd90729462_)
                              (let ((_e90759467_ (gx#stx-e _hd90729462_)))
                                (let ((_lp-hd90769470_ (##car _e90759467_))
                                      (_lp-tl90779472_ (##cdr _e90759467_)))
                                  (_loop90749459_
                                   _lp-tl90779472_
                                   (cons _lp-hd90769470_ _arg90789464_))))
                              (let ((_arg90799475_ (reverse _arg90789464_)))
                                (if (gx#stx-pair? _tl90709451_)
                                    (let ((_e90809478_
                                           (gx#stx-e _tl90709451_)))
                                      (let ((_hd90819481_ (##car _e90809478_))
                                            (_tl90829483_ (##cdr _e90809478_)))
                                        (if (gx#stx-pair? _hd90819481_)
                                            (let ((_e90839486_
                                                   (gx#stx-e _hd90819481_)))
                                              (let ((_hd90849489_
                                                     (##car _e90839486_))
                                                    (_tl90859491_
                                                     (##cdr _e90839486_)))
                                                (if (gx#identifier?
                                                     _hd90849489_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd90849489_)
                                                        (if (gx#stx-pair?
                                                             _tl90859491_)
                                                            (let ((_e90869494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl90859491_)))
                      (let ((_hd90879497_ (##car _e90869494_))
                            (_tl90889499_ (##cdr _e90869494_)))
                        (if (gx#stx-pair? _hd90879497_)
                            (let ((_e90899502_ (gx#stx-e _hd90879497_)))
                              (let ((_hd90909505_ (##car _e90899502_))
                                    (_tl90919507_ (##cdr _e90899502_)))
                                (if (gx#identifier? _hd90909505_)
                                    (if (gx#stx-eq? '%#ref _hd90909505_)
                                        (if (gx#stx-pair? _tl90919507_)
                                            (let ((_e90929510_
                                                   (gx#stx-e _tl90919507_)))
                                              (let ((_hd90939513_
                                                     (##car _e90929510_))
                                                    (_tl90949515_
                                                     (##cdr _e90929510_)))
                                                (if (gx#stx-null? _tl90949515_)
                                                    (if (gx#stx-pair/null?
                                                         _tl90889499_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl90889499_)
                          '0)
                    (let ((_g12113_ (gx#syntax-split-splice _tl90889499_ '0)))
                      (begin
                        (let ((_g12114_ (values-count _g12113_)))
                          (if (not (fx= _g12114_ 2))
                              (error "Context expects 2 values" _g12114_)))
                        (let ((_target90959518_ (values-ref _g12113_ 0))
                              (_tl90979520_ (values-ref _g12113_ 1)))
                          (if (gx#stx-null? _tl90979520_)
                              (letrec ((_loop90989523_
                                        (lambda (_hd90969526_ _xarg91029528_)
                                          (if (gx#stx-pair? _hd90969526_)
                                              (let ((_e90999531_
                                                     (gx#stx-e _hd90969526_)))
                                                (let ((_lp-hd91009534_
                                                       (##car _e90999531_))
                                                      (_lp-tl91019536_
                                                       (##cdr _e90999531_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd91009534_)
                                                      (let ((_e91049539_
                                                             (gx#stx-e
                                                              _lp-hd91009534_)))
                                                        (let ((_hd91059542_
                                                               (##car _e91049539_))
                                                              (_tl91069544_
                                                               (##cdr _e91049539_)))
                                                          (if (gx#identifier?
                                                               _hd91059542_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd91059542_)
                          (if (gx#stx-pair? _tl91069544_)
                              (let ((_e91079547_ (gx#stx-e _tl91069544_)))
                                (let ((_hd91089550_ (##car _e91079547_))
                                      (_tl91099552_ (##cdr _e91079547_)))
                                  (if (gx#stx-null? _tl91099552_)
                                      (_loop90989523_
                                       _lp-tl91019536_
                                       (cons _hd91089550_ _xarg91029528_))
                                      (_g90619441_ _g90649444_))))
                              (_g90619441_ _g90649444_))
                          (_g90619441_ _g90649444_))
                      (_g90619441_ _g90649444_))))
              (_g90619441_ _g90649444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg91039555_
                                                     (reverse _xarg91029528_)))
                                                (if (gx#stx-null? _tl90829483_)
                                                    ((lambda (_L9558_
                                                              _L9559_
                                                              _L9560_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg91039555_
                                                     _hd90939513_
                                                     _arg90799475_)
                                                    (_g90619441_
                                                     _g90649444_)))))))
                                (_loop90989523_ _target90959518_ '()))
                              (_g90619441_ _g90649444_)))))
                    (_g90619441_ _g90649444_))
                (_g90619441_ _g90649444_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90619441_
                                                     _g90649444_))))
                                            (_g90619441_ _g90649444_))
                                        (_g90619441_ _g90649444_))
                                    (_g90619441_ _g90649444_))))
                            (_g90619441_ _g90649444_))))
                    (_g90619441_ _g90649444_))
                (_g90619441_ _g90649444_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90619441_
                                                     _g90649444_))))
                                            (_g90619441_ _g90649444_))))
                                    (_g90619441_ _g90649444_)))))))
                (_loop90749459_ _target90719454_ '()))
              (_g90619441_ _g90649444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g90619441_ _g90649444_))
                                        (_g90619441_ _g90649444_))))
                                (_g90619441_ _g90649444_)))))
                    (_g90609589_ _form9059_))))
               (_generate18909_
                (lambda (_args9044_ _arglen9045_ _hd9046_ _body9047_)
                  (let* ((_len9049_ (gx#stx-length _hd9046_))
                         (_condition9051_
                          (if (gx#stx-list? _hd9046_)
                              (cons 'fx=
                                    (cons _arglen9045_ (cons _len9049_ '())))
                              (if (> _len9049_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9045_
                                              (cons _len9049_ '())))
                                  '#t)))
                         (_dispatch9053_
                          (if (_dispatch-case?8907_ _hd9046_ _body9047_)
                              (_dispatch-case-e8908_ _hd9046_ _body9047_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9046_)
                                          (cons (gxc#compile-e _body9047_)
                                                '()))))))
                    (cons _condition9051_
                          (cons (cons 'apply
                                      (cons _dispatch9053_
                                            (cons _args9044_ '())))
                                '()))))))
        (let* ((_g89118939_
                (lambda (_g89128936_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g89128936_)))
               (_g89109041_
                (lambda (_g89128942_)
                  (if (gx#stx-pair? _g89128942_)
                      (let ((_e89158944_ (gx#stx-e _g89128942_)))
                        (let ((_hd89168947_ (##car _e89158944_))
                              (_tl89178949_ (##cdr _e89158944_)))
                          (if (gx#stx-pair/null? _tl89178949_)
                              (if (fx>= (gx#stx-length _tl89178949_) '0)
                                  (let ((_g12115_
                                         (gx#syntax-split-splice
                                          _tl89178949_
                                          '0)))
                                    (begin
                                      (let ((_g12116_ (values-count _g12115_)))
                                        (if (not (fx= _g12116_ 2))
                                            (error "Context expects 2 values"
                                                   _g12116_)))
                                      (let ((_target89188952_
                                             (values-ref _g12115_ 0))
                                            (_tl89208954_
                                             (values-ref _g12115_ 1)))
                                        (if (gx#stx-null? _tl89208954_)
                                            (letrec ((_loop89218957_
                                                      (lambda (_hd89198960_
                                                               _body89258962_
                                                               _hd89268964_)
                                                        (if (gx#stx-pair?
                                                             _hd89198960_)
                                                            (let ((_e89228967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd89198960_)))
                      (let ((_lp-hd89238970_ (##car _e89228967_))
                            (_lp-tl89248972_ (##cdr _e89228967_)))
                        (if (gx#stx-pair? _lp-hd89238970_)
                            (let ((_e89298975_ (gx#stx-e _lp-hd89238970_)))
                              (let ((_hd89308978_ (##car _e89298975_))
                                    (_tl89318980_ (##cdr _e89298975_)))
                                (if (gx#stx-pair? _tl89318980_)
                                    (let ((_e89328983_
                                           (gx#stx-e _tl89318980_)))
                                      (let ((_hd89338986_ (##car _e89328983_))
                                            (_tl89348988_ (##cdr _e89328983_)))
                                        (if (gx#stx-null? _tl89348988_)
                                            (_loop89218957_
                                             _lp-tl89248972_
                                             (cons _hd89338986_ _body89258962_)
                                             (cons _hd89308978_ _hd89268964_))
                                            (_g89118939_ _g89128942_))))
                                    (_g89118939_ _g89128942_))))
                            (_g89118939_ _g89128942_))))
                    (let ((_body89278991_ (reverse _body89258962_))
                          (_hd89288993_ (reverse _hd89268964_)))
                      ((lambda (_L8996_ _L8997_)
                         (let ((_args9016_ (gxc#generate-runtime-temporary__0))
                               (_arglen9017_
                                (gxc#generate-runtime-temporary__0))
                               (_name9018_
                                (let ((_$e9013_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8904_
                                        '#f)))
                                  (if _$e9013_
                                      _$e9013_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args9016_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen9017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args9016_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name9018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args9016_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g90199022_ _g90209024_)
                                            (_generate18909_
                                             _args9016_
                                             _arglen9017_
                                             _g90199022_
                                             _g90209024_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g90269029_
                                                             _g90279031_)
                                                      (cons _g90269029_
                                                            _g90279031_))
                                                    '()
                                                    _L8997_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g90339036_
                                                             _g90349038_)
                                                      (cons _g90339036_
                                                            _g90349038_))
                                                    '()
                                                    _L8996_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body89278991_
                       _hd89288993_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop89218957_
                                               _target89188952_
                                               '()
                                               '()))
                                            (_g89118939_ _g89128942_)))))
                                  (_g89118939_ _g89128942_))
                              (_g89118939_ _g89128942_))))
                      (_g89118939_ _g89128942_)))))
          (_g89109041_ _stx8904_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx7969_ _compiled-body?7970_)
        (letrec ((_generate-simple7972_
                  (lambda (_hd8891_ _body8892_)
                    (_coalesce-let*7973_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8891_
                      _body8892_
                      _compiled-body?7970_))))
                 (_coalesce-let*7973_
                  (lambda (_code8275_)
                    (let* ((_g82808415_
                            (lambda (_g82818412_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g82818412_)))
                           (_g82798422_
                            (lambda (_g82818418_) ((lambda () _code8275_))))
                           (_g82788592_
                            (lambda (_g82818425_)
                              (if (gx#stx-pair? _g82818425_)
                                  (let ((_e83698427_ (gx#stx-e _g82818425_)))
                                    (let ((_hd83708430_ (##car _e83698427_))
                                          (_tl83718432_ (##cdr _e83698427_)))
                                      (if (gx#identifier? _hd83708430_)
                                          (if (gx#stx-eq? 'let _hd83708430_)
                                              (if (gx#stx-pair? _tl83718432_)
                                                  (let ((_e83728435_
                                                         (gx#stx-e
                                                          _tl83718432_)))
                                                    (let ((_hd83738438_
                                                           (##car _e83728435_))
                                                          (_tl83748440_
                                                           (##cdr _e83728435_)))
                                                      (if (gx#stx-pair?
                                                           _hd83738438_)
                                                          (let ((_e83758443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83738438_)))
                    (let ((_hd83768446_ (##car _e83758443_))
                          (_tl83778448_ (##cdr _e83758443_)))
                      (if (gx#stx-pair? _hd83768446_)
                          (let ((_e83788451_ (gx#stx-e _hd83768446_)))
                            (let ((_hd83798454_ (##car _e83788451_))
                                  (_tl83808456_ (##cdr _e83788451_)))
                              (if (gx#stx-pair? _tl83808456_)
                                  (let ((_e83818459_ (gx#stx-e _tl83808456_)))
                                    (let ((_hd83828462_ (##car _e83818459_))
                                          (_tl83838464_ (##cdr _e83818459_)))
                                      (if (gx#stx-null? _tl83838464_)
                                          (if (gx#stx-null? _tl83778448_)
                                              (if (gx#stx-pair? _tl83748440_)
                                                  (let ((_e83848467_
                                                         (gx#stx-e
                                                          _tl83748440_)))
                                                    (let ((_hd83858470_
                                                           (##car _e83848467_))
                                                          (_tl83868472_
                                                           (##cdr _e83848467_)))
                                                      (if (gx#stx-pair?
                                                           _hd83858470_)
                                                          (let ((_e83878475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83858470_)))
                    (let ((_hd83888478_ (##car _e83878475_))
                          (_tl83898480_ (##cdr _e83878475_)))
                      (if (gx#identifier? _hd83888478_)
                          (if (gx#stx-eq? 'let* _hd83888478_)
                              (if (gx#stx-pair? _tl83898480_)
                                  (let ((_e83908483_ (gx#stx-e _tl83898480_)))
                                    (let ((_hd83918486_ (##car _e83908483_))
                                          (_tl83928488_ (##cdr _e83908483_)))
                                      (if (gx#stx-pair/null? _hd83918486_)
                                          (if (fx>= (gx#stx-length
                                                     _hd83918486_)
                                                    '0)
                                              (let ((_g12117_
                                                     (gx#syntax-split-splice
                                                      _hd83918486_
                                                      '0)))
                                                (begin
                                                  (let ((_g12118_
                                                         (values-count
                                                          _g12117_)))
                                                    (if (not (fx= _g12118_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12118_)))
                                                  (let ((_target83938491_
                                                         (values-ref
                                                          _g12117_
                                                          0))
                                                        (_tl83958493_
                                                         (values-ref
                                                          _g12117_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl83958493_)
                                                        (letrec ((_loop83968496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd83948499_ _bind84008501_)
                            (if (gx#stx-pair? _hd83948499_)
                                (let ((_e83978504_ (gx#stx-e _hd83948499_)))
                                  (let ((_lp-hd83988507_ (##car _e83978504_))
                                        (_lp-tl83998509_ (##cdr _e83978504_)))
                                    (_loop83968496_
                                     _lp-tl83998509_
                                     (cons _lp-hd83988507_ _bind84008501_))))
                                (let ((_bind84018512_
                                       (reverse _bind84008501_)))
                                  (if (gx#stx-pair/null? _tl83928488_)
                                      (if (fx>= (gx#stx-length _tl83928488_)
                                                '0)
                                          (let ((_g12119_
                                                 (gx#syntax-split-splice
                                                  _tl83928488_
                                                  '0)))
                                            (begin
                                              (let ((_g12120_
                                                     (values-count _g12119_)))
                                                (if (not (fx= _g12120_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12120_)))
                                              (let ((_target84028515_
                                                     (values-ref _g12119_ 0))
                                                    (_tl84048517_
                                                     (values-ref _g12119_ 1)))
                                                (if (gx#stx-null? _tl84048517_)
                                                    (letrec ((_loop84058520_
                                                              (lambda (_hd84038523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body84098525_)
                        (if (gx#stx-pair? _hd84038523_)
                            (let ((_e84068528_ (gx#stx-e _hd84038523_)))
                              (let ((_lp-hd84078531_ (##car _e84068528_))
                                    (_lp-tl84088533_ (##cdr _e84068528_)))
                                (_loop84058520_
                                 _lp-tl84088533_
                                 (cons _lp-hd84078531_ _body84098525_))))
                            (let ((_body84108536_ (reverse _body84098525_)))
                              (if (gx#stx-null? _tl83868472_)
                                  ((lambda (_L8539_ _L8540_ _L8541_ _L8542_)
                                     (cons 'let*
                                           (cons (cons (cons _L8542_
                                                             (cons _L8541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g85778580_ _g85788582_)
                           (cons _g85778580_ _g85788582_))
                         '()
                         _L8540_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g85848587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g85858589_)
                     (cons _g85848587_ _g85858589_))
                   '()
                   _L8539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body84108536_
                                   _bind84018512_
                                   _hd83828462_
                                   _hd83798454_)
                                  (_g82798422_ _g82818425_)))))))
              (_loop84058520_ _target84028515_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82798422_
                                                     _g82818425_)))))
                                          (_g82798422_ _g82818425_))
                                      (_g82798422_ _g82818425_)))))))
                  (_loop83968496_ _target83938491_ '()))
                (_g82798422_ _g82818425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82798422_ _g82818425_))
                                          (_g82798422_ _g82818425_))))
                                  (_g82798422_ _g82818425_))
                              (_g82798422_ _g82818425_))
                          (_g82798422_ _g82818425_))))
                  (_g82798422_ _g82818425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82798422_ _g82818425_))
                                              (_g82798422_ _g82818425_))
                                          (_g82798422_ _g82818425_))))
                                  (_g82798422_ _g82818425_))))
                          (_g82798422_ _g82818425_))))
                  (_g82798422_ _g82818425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82798422_ _g82818425_))
                                              (_g82798422_ _g82818425_))
                                          (_g82798422_ _g82818425_))))
                                  (_g82798422_ _g82818425_))))
                           (_g82778757_
                            (lambda (_g82818595_)
                              (if (gx#stx-pair? _g82818595_)
                                  (let ((_e83238597_ (gx#stx-e _g82818595_)))
                                    (let ((_hd83248600_ (##car _e83238597_))
                                          (_tl83258602_ (##cdr _e83238597_)))
                                      (if (gx#identifier? _hd83248600_)
                                          (if (gx#stx-eq? 'let _hd83248600_)
                                              (if (gx#stx-pair? _tl83258602_)
                                                  (let ((_e83268605_
                                                         (gx#stx-e
                                                          _tl83258602_)))
                                                    (let ((_hd83278608_
                                                           (##car _e83268605_))
                                                          (_tl83288610_
                                                           (##cdr _e83268605_)))
                                                      (if (gx#stx-pair?
                                                           _hd83278608_)
                                                          (let ((_e83298613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83278608_)))
                    (let ((_hd83308616_ (##car _e83298613_))
                          (_tl83318618_ (##cdr _e83298613_)))
                      (if (gx#stx-pair? _hd83308616_)
                          (let ((_e83328621_ (gx#stx-e _hd83308616_)))
                            (let ((_hd83338624_ (##car _e83328621_))
                                  (_tl83348626_ (##cdr _e83328621_)))
                              (if (gx#stx-pair? _tl83348626_)
                                  (let ((_e83358629_ (gx#stx-e _tl83348626_)))
                                    (let ((_hd83368632_ (##car _e83358629_))
                                          (_tl83378634_ (##cdr _e83358629_)))
                                      (if (gx#stx-null? _tl83378634_)
                                          (if (gx#stx-null? _tl83318618_)
                                              (if (gx#stx-pair? _tl83288610_)
                                                  (let ((_e83388637_
                                                         (gx#stx-e
                                                          _tl83288610_)))
                                                    (let ((_hd83398640_
                                                           (##car _e83388637_))
                                                          (_tl83408642_
                                                           (##cdr _e83388637_)))
                                                      (if (gx#stx-pair?
                                                           _hd83398640_)
                                                          (let ((_e83418645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83398640_)))
                    (let ((_hd83428648_ (##car _e83418645_))
                          (_tl83438650_ (##cdr _e83418645_)))
                      (if (gx#identifier? _hd83428648_)
                          (if (gx#stx-eq? 'let _hd83428648_)
                              (if (gx#stx-pair? _tl83438650_)
                                  (let ((_e83448653_ (gx#stx-e _tl83438650_)))
                                    (let ((_hd83458656_ (##car _e83448653_))
                                          (_tl83468658_ (##cdr _e83448653_)))
                                      (if (gx#stx-pair? _hd83458656_)
                                          (let ((_e83478661_
                                                 (gx#stx-e _hd83458656_)))
                                            (let ((_hd83488664_
                                                   (##car _e83478661_))
                                                  (_tl83498666_
                                                   (##cdr _e83478661_)))
                                              (if (gx#stx-pair? _hd83488664_)
                                                  (let ((_e83508669_
                                                         (gx#stx-e
                                                          _hd83488664_)))
                                                    (let ((_hd83518672_
                                                           (##car _e83508669_))
                                                          (_tl83528674_
                                                           (##cdr _e83508669_)))
                                                      (if (gx#stx-pair?
                                                           _tl83528674_)
                                                          (let ((_e83538677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83528674_)))
                    (let ((_hd83548680_ (##car _e83538677_))
                          (_tl83558682_ (##cdr _e83538677_)))
                      (if (gx#stx-null? _tl83558682_)
                          (if (gx#stx-null? _tl83498666_)
                              (if (gx#stx-pair/null? _tl83468658_)
                                  (if (fx>= (gx#stx-length _tl83468658_) '0)
                                      (let ((_g12121_
                                             (gx#syntax-split-splice
                                              _tl83468658_
                                              '0)))
                                        (begin
                                          (let ((_g12122_
                                                 (values-count _g12121_)))
                                            (if (not (fx= _g12122_ 2))
                                                (error "Context expects 2 values"
                                                       _g12122_)))
                                          (let ((_target83568685_
                                                 (values-ref _g12121_ 0))
                                                (_tl83588687_
                                                 (values-ref _g12121_ 1)))
                                            (if (gx#stx-null? _tl83588687_)
                                                (letrec ((_loop83598690_
                                                          (lambda (_hd83578693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body83638695_)
                    (if (gx#stx-pair? _hd83578693_)
                        (let ((_e83608698_ (gx#stx-e _hd83578693_)))
                          (let ((_lp-hd83618701_ (##car _e83608698_))
                                (_lp-tl83628703_ (##cdr _e83608698_)))
                            (_loop83598690_
                             _lp-tl83628703_
                             (cons _lp-hd83618701_ _body83638695_))))
                        (let ((_body83648706_ (reverse _body83638695_)))
                          (if (gx#stx-null? _tl83408642_)
                              ((lambda (_L8709_
                                        _L8710_
                                        _L8711_
                                        _L8712_
                                        _L8713_)
                                 (cons 'let*
                                       (cons (cons (cons _L8713_
                                                         (cons _L8712_ '()))
                                                   (cons (cons _L8711_
                                                               (cons _L8710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g87498752_
                                                                _g87508754_)
                                                         (cons _g87498752_
                                                               _g87508754_))
                                                       '()
                                                       _L8709_)))))
                               _body83648706_
                               _hd83548680_
                               _hd83518672_
                               _hd83368632_
                               _hd83338624_)
                              (_g82788592_ _g82818595_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop83598690_
                                                   _target83568685_
                                                   '()))
                                                (_g82788592_ _g82818595_)))))
                                      (_g82788592_ _g82818595_))
                                  (_g82788592_ _g82818595_))
                              (_g82788592_ _g82818595_))
                          (_g82788592_ _g82818595_))))
                  (_g82788592_ _g82818595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82788592_ _g82818595_))))
                                          (_g82788592_ _g82818595_))))
                                  (_g82788592_ _g82818595_))
                              (_g82788592_ _g82818595_))
                          (_g82788592_ _g82818595_))))
                  (_g82788592_ _g82818595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82788592_ _g82818595_))
                                              (_g82788592_ _g82818595_))
                                          (_g82788592_ _g82818595_))))
                                  (_g82788592_ _g82818595_))))
                          (_g82788592_ _g82818595_))))
                  (_g82788592_ _g82818595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82788592_ _g82818595_))
                                              (_g82788592_ _g82818595_))
                                          (_g82788592_ _g82818595_))))
                                  (_g82788592_ _g82818595_))))
                           (_g82768888_
                            (lambda (_g82818760_)
                              (if (gx#stx-pair? _g82818760_)
                                  (let ((_e82858762_ (gx#stx-e _g82818760_)))
                                    (let ((_hd82868765_ (##car _e82858762_))
                                          (_tl82878767_ (##cdr _e82858762_)))
                                      (if (gx#identifier? _hd82868765_)
                                          (if (gx#stx-eq? 'let _hd82868765_)
                                              (if (gx#stx-pair? _tl82878767_)
                                                  (let ((_e82888770_
                                                         (gx#stx-e
                                                          _tl82878767_)))
                                                    (let ((_hd82898773_
                                                           (##car _e82888770_))
                                                          (_tl82908775_
                                                           (##cdr _e82888770_)))
                                                      (if (gx#stx-pair?
                                                           _hd82898773_)
                                                          (let ((_e82918778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82898773_)))
                    (let ((_hd82928781_ (##car _e82918778_))
                          (_tl82938783_ (##cdr _e82918778_)))
                      (if (gx#stx-pair? _hd82928781_)
                          (let ((_e82948786_ (gx#stx-e _hd82928781_)))
                            (let ((_hd82958789_ (##car _e82948786_))
                                  (_tl82968791_ (##cdr _e82948786_)))
                              (if (gx#stx-pair? _tl82968791_)
                                  (let ((_e82978794_ (gx#stx-e _tl82968791_)))
                                    (let ((_hd82988797_ (##car _e82978794_))
                                          (_tl82998799_ (##cdr _e82978794_)))
                                      (if (gx#stx-null? _tl82998799_)
                                          (if (gx#stx-null? _tl82938783_)
                                              (if (gx#stx-pair? _tl82908775_)
                                                  (let ((_e83008802_
                                                         (gx#stx-e
                                                          _tl82908775_)))
                                                    (let ((_hd83018805_
                                                           (##car _e83008802_))
                                                          (_tl83028807_
                                                           (##cdr _e83008802_)))
                                                      (if (gx#stx-pair?
                                                           _hd83018805_)
                                                          (let ((_e83038810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83018805_)))
                    (let ((_hd83048813_ (##car _e83038810_))
                          (_tl83058815_ (##cdr _e83038810_)))
                      (if (gx#identifier? _hd83048813_)
                          (if (gx#stx-eq? 'let _hd83048813_)
                              (if (gx#stx-pair? _tl83058815_)
                                  (let ((_e83068818_ (gx#stx-e _tl83058815_)))
                                    (let ((_hd83078821_ (##car _e83068818_))
                                          (_tl83088823_ (##cdr _e83068818_)))
                                      (if (gx#stx-null? _hd83078821_)
                                          (if (gx#stx-pair/null? _tl83088823_)
                                              (if (fx>= (gx#stx-length
                                                         _tl83088823_)
                                                        '0)
                                                  (let ((_g12123_
                                                         (gx#syntax-split-splice
                                                          _tl83088823_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12124_
                                                             (values-count
                                                              _g12123_)))
                                                        (if (not (fx= _g12124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12124_)))
              (let ((_target83098826_ (values-ref _g12123_ 0))
                    (_tl83118828_ (values-ref _g12123_ 1)))
                (if (gx#stx-null? _tl83118828_)
                    (letrec ((_loop83128831_
                              (lambda (_hd83108834_ _body83168836_)
                                (if (gx#stx-pair? _hd83108834_)
                                    (let ((_e83138839_
                                           (gx#stx-e _hd83108834_)))
                                      (let ((_lp-hd83148842_
                                             (##car _e83138839_))
                                            (_lp-tl83158844_
                                             (##cdr _e83138839_)))
                                        (_loop83128831_
                                         _lp-tl83158844_
                                         (cons _lp-hd83148842_
                                               _body83168836_))))
                                    (let ((_body83178847_
                                           (reverse _body83168836_)))
                                      (if (gx#stx-null? _tl83028807_)
                                          ((lambda (_L8850_ _L8851_ _L8852_)
                                             (cons 'let
                                                   (cons (cons (cons _L8852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8851_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g88808883_ _g88818885_)
                             (cons _g88808883_ _g88818885_))
                           '()
                           _L8850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body83178847_
                                           _hd82988797_
                                           _hd82958789_)
                                          (_g82778757_ _g82818760_)))))))
                      (_loop83128831_ _target83098826_ '()))
                    (_g82778757_ _g82818760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82778757_ _g82818760_))
                                              (_g82778757_ _g82818760_))
                                          (_g82778757_ _g82818760_))))
                                  (_g82778757_ _g82818760_))
                              (_g82778757_ _g82818760_))
                          (_g82778757_ _g82818760_))))
                  (_g82778757_ _g82818760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82778757_ _g82818760_))
                                              (_g82778757_ _g82818760_))
                                          (_g82778757_ _g82818760_))))
                                  (_g82778757_ _g82818760_))))
                          (_g82778757_ _g82818760_))))
                  (_g82778757_ _g82818760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82778757_ _g82818760_))
                                              (_g82778757_ _g82818760_))
                                          (_g82778757_ _g82818760_))))
                                  (_g82778757_ _g82818760_)))))
                      (_g82768888_ _code8275_))))
                 (_generate-values7974_
                  (lambda (_hd8088_ _body8089_)
                    (let _lp8091_ ((_rest8093_ _hd8088_)
                                   (_bind8094_ '())
                                   (_check8095_ '())
                                   (_post8096_ '()))
                      (let* ((_g80998110_
                              (lambda (_g81008107_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g81008107_)))
                             (_g80988124_
                              (lambda (_g81008113_)
                                ((lambda ()
                                   (let* ((_body8117_
                                           (if _compiled-body?7970_
                                               _body8089_
                                               (gxc#compile-e _body8089_)))
                                          (_body8119_
                                           (_generate-values-post7975_
                                            _post8096_
                                            _body8117_))
                                          (_body8121_
                                           (_generate-values-check7976_
                                            _check8095_
                                            _body8119_)))
                                     (cons 'let
                                           (cons (reverse _bind8094_)
                                                 (cons _body8121_ '()))))))))
                             (_g80978272_
                              (lambda (_g81008127_)
                                (if (gx#stx-pair? _g81008127_)
                                    (let ((_e81038129_ (gx#stx-e _g81008127_)))
                                      (let ((_hd81048132_ (##car _e81038129_))
                                            (_tl81058134_ (##cdr _e81038129_)))
                                        ((lambda (_L8137_ _L8138_)
                                           (let* ((_g81538178_
                                                   (lambda (_g81548175_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g81548175_)))
                                                  (_g81528222_
                                                   (lambda (_g81548181_)
                                                     (if (gx#stx-pair?
                                                          _g81548181_)
                                                         (let ((_e81688183_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81548181_)))
                   (let ((_hd81698186_ (##car _e81688183_))
                         (_tl81708188_ (##cdr _e81688183_)))
                     (if (gx#stx-pair? _tl81708188_)
                         (let ((_e81718191_ (gx#stx-e _tl81708188_)))
                           (let ((_hd81728194_ (##car _e81718191_))
                                 (_tl81738196_ (##cdr _e81718191_)))
                             (if (gx#stx-null? _tl81738196_)
                                 ((lambda (_L8199_ _L8200_)
                                    (let* ((_vals8213_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8215_ (gxc#compile-e _L8199_))
                                           (_check-values8217_
                                            (gxc#generate-runtime-check-values
                                             _vals8213_
                                             _L8200_))
                                           (_refs8219_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8213_
                                             _L8200_)))
                                      (_lp8091_
                                       _L8137_
                                       (cons (cons _vals8213_
                                                   (cons _expr8215_ '()))
                                             _bind8094_)
                                       (cons _check-values8217_ _check8095_)
                                       (cons _refs8219_ _post8096_))))
                                  _hd81728194_
                                  _hd81698186_)
                                 (_g81538178_ _g81548181_))))
                         (_g81538178_ _g81548181_))))
                 (_g81538178_ _g81548181_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g81518269_
                                                   (lambda (_g81548225_)
                                                     (if (gx#stx-pair?
                                                          _g81548225_)
                                                         (let ((_e81578227_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81548225_)))
                   (let ((_hd81588230_ (##car _e81578227_))
                         (_tl81598232_ (##cdr _e81578227_)))
                     (if (gx#stx-pair? _hd81588230_)
                         (let ((_e81608235_ (gx#stx-e _hd81588230_)))
                           (let ((_hd81618238_ (##car _e81608235_))
                                 (_tl81628240_ (##cdr _e81608235_)))
                             (if (gx#stx-null? _tl81628240_)
                                 (if (gx#stx-pair? _tl81598232_)
                                     (let ((_e81638243_
                                            (gx#stx-e _tl81598232_)))
                                       (let ((_hd81648246_ (##car _e81638243_))
                                             (_tl81658248_
                                              (##cdr _e81638243_)))
                                         (if (gx#stx-null? _tl81658248_)
                                             ((lambda (_L8251_ _L8252_)
                                                (let ((_eid8266_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8252_))
                                                      (_expr8267_
                                                       (gxc#compile-e
                                                        _L8251_)))
                                                  (_lp8091_
                                                   _L8137_
                                                   (cons (cons _eid8266_
                                                               (cons _expr8267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8094_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8095_
                                                   _post8096_)))
                                              _hd81648246_
                                              _hd81618238_)
                                             (_g81528222_ _g81548225_))))
                                     (_g81528222_ _g81548225_))
                                 (_g81528222_ _g81548225_))))
                         (_g81528222_ _g81548225_))))
                 (_g81528222_ _g81548225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g81518269_ _L8138_)))
                                         _tl81058134_
                                         _hd81048132_)))
                                    (_g80988124_ _g81008127_)))))
                        (_g80978272_ _rest8093_)))))
                 (_generate-values-post7975_
                  (lambda (_post8047_ _body8048_)
                    (let _lp8050_ ((_rest8052_ _post8047_)
                                   (_body8053_ _body8048_))
                      (let* ((_rest80548062_ _rest8052_)
                             (_E80578066_
                              (lambda ()
                                (error '"No clause matching" _rest80548062_)))
                             (_else80568070_ (lambda () _body8053_))
                             (_K80588076_
                              (lambda (_rest8073_ _bind8074_)
                                (_lp8050_
                                 _rest8073_
                                 (cons 'let
                                       (cons _bind8074_
                                             (cons _body8053_ '())))))))
                        (if (##pair? _rest80548062_)
                            (let ((_hd80598079_ (##car _rest80548062_))
                                  (_tl80608081_ (##cdr _rest80548062_)))
                              (let* ((_bind8084_ _hd80598079_)
                                     (_rest8086_ _tl80608081_))
                                (_K80588076_ _rest8086_ _bind8084_)))
                            (_else80568070_))))))
                 (_generate-values-check7976_
                  (lambda (_check8044_ _body8045_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8045_ '())
                                  (reverse _check8044_))))))
          (let* ((_g79787995_
                  (lambda (_g79797992_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g79797992_)))
                 (_g79778041_
                  (lambda (_g79797998_)
                    (if (gx#stx-pair? _g79797998_)
                        (let ((_e79828000_ (gx#stx-e _g79797998_)))
                          (let ((_hd79838003_ (##car _e79828000_))
                                (_tl79848005_ (##cdr _e79828000_)))
                            (if (gx#stx-pair? _tl79848005_)
                                (let ((_e79858008_ (gx#stx-e _tl79848005_)))
                                  (let ((_hd79868011_ (##car _e79858008_))
                                        (_tl79878013_ (##cdr _e79858008_)))
                                    (if (gx#stx-pair? _tl79878013_)
                                        (let ((_e79888016_
                                               (gx#stx-e _tl79878013_)))
                                          (let ((_hd79898019_
                                                 (##car _e79888016_))
                                                (_tl79908021_
                                                 (##cdr _e79888016_)))
                                            (if (gx#stx-null? _tl79908021_)
                                                ((lambda (_L8024_ _L8025_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8025_)
                                                       (_generate-simple7972_
                                                        _L8025_
                                                        _L8024_)
                                                       (_generate-values7974_
                                                        _L8025_
                                                        _L8024_)))
                                                 _hd79898019_
                                                 _hd79868011_)
                                                (_g79787995_ _g79797998_))))
                                        (_g79787995_ _g79797998_))))
                                (_g79787995_ _g79797998_))))
                        (_g79787995_ _g79797998_)))))
            (_g79778041_ _stx7969_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8897_)
          (let ((_compiled-body?8899_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx8897_
             _compiled-body?8899_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12126_
          (let ((_g12125_ (length _g12126_)))
            (cond ((fx= _g12125_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12126_))
                  ((fx= _g12125_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12126_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12126_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7868_ _hd7869_)
      (let _lp7871_ ((_rest7873_ _hd7869_) (_k7874_ '0) (_r7875_ '()))
        (let* ((_g78807896_
                (lambda (_g78817893_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78817893_)))
               (_g78797903_
                (lambda (_g78817899_) ((lambda () (reverse _r7875_)))))
               (_g78787919_
                (lambda (_g78817906_)
                  ((lambda (_L7908_)
                     (if (gx#identifier? _L7908_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7908_)
                                             (cons (cons 'values->list
                                                         (cons _vals7868_
                                                               (cons _k7874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7875_)
                         (_g78797903_ _g78817906_)))
                   _g78817906_)))
               (_g78777943_
                (lambda (_g78817922_)
                  (if (gx#stx-pair? _g78817922_)
                      (let ((_e78887924_ (gx#stx-e _g78817922_)))
                        (let ((_hd78897927_ (##car _e78887924_))
                              (_tl78907929_ (##cdr _e78887924_)))
                          ((lambda (_L7932_ _L7933_)
                             (_lp7871_
                              _L7932_
                              (fx+ _k7874_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7933_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7868_
                                                            (cons _k7874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7875_)))
                           _tl78907929_
                           _hd78897927_)))
                      (_g78787919_ _g78817922_))))
               (_g78767965_
                (lambda (_g78817946_)
                  (if (gx#stx-pair? _g78817946_)
                      (let ((_e78837948_ (gx#stx-e _g78817946_)))
                        (let ((_hd78847951_ (##car _e78837948_))
                              (_tl78857953_ (##cdr _e78837948_)))
                          (if (gx#stx-datum? _hd78847951_)
                              (if (equal? (gx#stx-e _hd78847951_) '#f)
                                  ((lambda (_L7956_)
                                     (_lp7871_
                                      _L7956_
                                      (fx+ _k7874_ '1)
                                      _r7875_))
                                   _tl78857953_)
                                  (_g78777943_ _g78817946_))
                              (_g78777943_ _g78817946_))))
                      (_g78777943_ _g78817946_)))))
          (_g78767965_ _rest7873_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx7548_ _compiled-body?7549_)
        (letrec ((_generate-simple7551_
                  (lambda (_hd7855_ _body7856_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7855_
                     _body7856_
                     _compiled-body?7549_)))
                 (_generate-values7552_
                  (lambda (_hd7632_ _body7633_)
                    (let _lp7635_ ((_rest7637_ _hd7632_)
                                   (_bind7638_ '())
                                   (_check7639_ '())
                                   (_post7640_ '()))
                      (let* ((_g76437654_
                              (lambda (_g76447651_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g76447651_)))
                             (_g76427668_
                              (lambda (_g76447657_)
                                ((lambda ()
                                   (let* ((_body7661_
                                           (if _compiled-body?7549_
                                               _body7633_
                                               (gxc#compile-e _body7633_)))
                                          (_body7663_
                                           (_generate-values-post7554_
                                            _post7640_
                                            _body7661_))
                                          (_body7665_
                                           (_generate-values-check7553_
                                            _check7639_
                                            _body7663_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7638_)
                                                 (cons _body7665_ '()))))))))
                             (_g76417852_
                              (lambda (_g76447671_)
                                (if (gx#stx-pair? _g76447671_)
                                    (let ((_e76477673_ (gx#stx-e _g76447671_)))
                                      (let ((_hd76487676_ (##car _e76477673_))
                                            (_tl76497678_ (##cdr _e76477673_)))
                                        ((lambda (_L7681_ _L7682_)
                                           (let* ((_g76977722_
                                                   (lambda (_g76987719_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g76987719_)))
                                                  (_g76967802_
                                                   (lambda (_g76987725_)
                                                     (if (gx#stx-pair?
                                                          _g76987725_)
                                                         (let ((_e77127727_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76987725_)))
                   (let ((_hd77137730_ (##car _e77127727_))
                         (_tl77147732_ (##cdr _e77127727_)))
                     (if (gx#stx-pair? _tl77147732_)
                         (let ((_e77157735_ (gx#stx-e _tl77147732_)))
                           (let ((_hd77167738_ (##car _e77157735_))
                                 (_tl77177740_ (##cdr _e77157735_)))
                             (if (gx#stx-null? _tl77177740_)
                                 ((lambda (_L7743_ _L7744_)
                                    (let* ((_vals7757_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7759_ (gxc#compile-e _L7743_))
                                           (_check-values7761_
                                            (gxc#generate-runtime-check-values
                                             _vals7757_
                                             _L7744_))
                                           (_refs7763_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7757_
                                             _L7744_)))
                                      (_lp7635_
                                       _L7681_
                                       (foldl1 cons
                                               (cons (cons _vals7757_
                                                           (cons _expr7759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7638_)
                                               (map (lambda (_e77657767_)
                                                      (let* ((_g77697778_
                                                              _e77657767_)
                                                             (_E77717782_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g77697778_)))
                     (_K77727787_
                      (lambda (_eid7785_)
                        (cons _eid7785_ (cons '#!void '())))))
                (if (##pair? _g77697778_)
                    (let ((_hd77737790_ (##car _g77697778_))
                          (_tl77747792_ (##cdr _g77697778_)))
                      (let ((_eid7795_ _hd77737790_))
                        (if (##pair? _tl77747792_)
                            (let ((_hd77757797_ (##car _tl77747792_))
                                  (_tl77767799_ (##cdr _tl77747792_)))
                              (if (##null? _tl77767799_)
                                  (_K77727787_ _eid7795_)
                                  (_E77717782_)))
                            (_E77717782_))))
                    (_E77717782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7763_))
                                       (cons _check-values7761_ _check7639_)
                                       (foldl1 cons _refs7763_ _post7640_))))
                                  _hd77167738_
                                  _hd77137730_)
                                 (_g76977722_ _g76987725_))))
                         (_g76977722_ _g76987725_))))
                 (_g76977722_ _g76987725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g76957849_
                                                   (lambda (_g76987805_)
                                                     (if (gx#stx-pair?
                                                          _g76987805_)
                                                         (let ((_e77017807_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76987805_)))
                   (let ((_hd77027810_ (##car _e77017807_))
                         (_tl77037812_ (##cdr _e77017807_)))
                     (if (gx#stx-pair? _hd77027810_)
                         (let ((_e77047815_ (gx#stx-e _hd77027810_)))
                           (let ((_hd77057818_ (##car _e77047815_))
                                 (_tl77067820_ (##cdr _e77047815_)))
                             (if (gx#stx-null? _tl77067820_)
                                 (if (gx#stx-pair? _tl77037812_)
                                     (let ((_e77077823_
                                            (gx#stx-e _tl77037812_)))
                                       (let ((_hd77087826_ (##car _e77077823_))
                                             (_tl77097828_
                                              (##cdr _e77077823_)))
                                         (if (gx#stx-null? _tl77097828_)
                                             ((lambda (_L7831_ _L7832_)
                                                (let ((_eid7846_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7832_))
                                                      (_expr7847_
                                                       (gxc#compile-e
                                                        _L7831_)))
                                                  (_lp7635_
                                                   _L7681_
                                                   (cons (cons _eid7846_
                                                               (cons _expr7847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7638_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7639_
                                                   _post7640_)))
                                              _hd77087826_
                                              _hd77057818_)
                                             (_g76967802_ _g76987805_))))
                                     (_g76967802_ _g76987805_))
                                 (_g76967802_ _g76987805_))))
                         (_g76967802_ _g76987805_))))
                 (_g76967802_ _g76987805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g76957849_ _L7682_)))
                                         _tl76497678_
                                         _hd76487676_)))
                                    (_g76427668_ _g76447671_)))))
                        (_g76417852_ _rest7637_)))))
                 (_generate-values-check7553_
                  (lambda (_check7629_ _body7630_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7630_ '())
                                  (reverse _check7629_)))))
                 (_generate-values-post7554_
                  (lambda (_post7622_ _body7623_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7623_ '())
                                  (map (lambda (_g76247626_)
                                         (cons 'set! _g76247626_))
                                       (reverse _post7622_)))))))
          (let* ((_g75567573_
                  (lambda (_g75577570_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75577570_)))
                 (_g75557619_
                  (lambda (_g75577576_)
                    (if (gx#stx-pair? _g75577576_)
                        (let ((_e75607578_ (gx#stx-e _g75577576_)))
                          (let ((_hd75617581_ (##car _e75607578_))
                                (_tl75627583_ (##cdr _e75607578_)))
                            (if (gx#stx-pair? _tl75627583_)
                                (let ((_e75637586_ (gx#stx-e _tl75627583_)))
                                  (let ((_hd75647589_ (##car _e75637586_))
                                        (_tl75657591_ (##cdr _e75637586_)))
                                    (if (gx#stx-pair? _tl75657591_)
                                        (let ((_e75667594_
                                               (gx#stx-e _tl75657591_)))
                                          (let ((_hd75677597_
                                                 (##car _e75667594_))
                                                (_tl75687599_
                                                 (##cdr _e75667594_)))
                                            (if (gx#stx-null? _tl75687599_)
                                                ((lambda (_L7602_ _L7603_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7603_)
                                                       (_generate-simple7551_
                                                        _L7603_
                                                        _L7602_)
                                                       (_generate-values7552_
                                                        _L7603_
                                                        _L7602_)))
                                                 _hd75677597_
                                                 _hd75647589_)
                                                (_g75567573_ _g75577576_))))
                                        (_g75567573_ _g75577576_))))
                                (_g75567573_ _g75577576_))))
                        (_g75567573_ _g75577576_)))))
            (_g75557619_ _stx7548_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7861_)
          (let ((_compiled-body?7863_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx7861_
             _compiled-body?7863_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12128_
          (let ((_g12127_ (length _g12128_)))
            (cond ((fx= _g12127_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12128_))
                  ((fx= _g12127_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12128_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12128_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7130_)
      (letrec ((_generate-values7132_
                (lambda (_hd7375_ _body7376_)
                  (let _lp7378_ ((_rest7380_ _hd7375_) (_bind7381_ '()))
                    (let* ((_rest73827390_ _rest7380_)
                           (_E73857394_
                            (lambda ()
                              (error '"No clause matching" _rest73827390_)))
                           (_else73847401_
                            (lambda ()
                              (let ((_bind7398_ (reverse _bind7381_))
                                    (_body7399_ (gxc#compile-e _body7376_)))
                                (cons 'letrec*
                                      (cons _bind7398_
                                            (cons _body7399_ '()))))))
                           (_K73867535_
                            (lambda (_rest7404_ _hd-bind7405_)
                              (let* ((_g74087433_
                                      (lambda (_g74097430_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g74097430_)))
                                     (_g74077485_
                                      (lambda (_g74097436_)
                                        (if (gx#stx-pair? _g74097436_)
                                            (let ((_e74237438_
                                                   (gx#stx-e _g74097436_)))
                                              (let ((_hd74247441_
                                                     (##car _e74237438_))
                                                    (_tl74257443_
                                                     (##cdr _e74237438_)))
                                                (if (gx#stx-pair? _tl74257443_)
                                                    (let ((_e74267446_
                                                           (gx#stx-e
                                                            _tl74257443_)))
                                                      (let ((_hd74277449_
                                                             (##car _e74267446_))
                                                            (_tl74287451_
                                                             (##cdr _e74267446_)))
                                                        (if (gx#stx-null?
                                                             _tl74287451_)
                                                            ((lambda (_L7454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7455_)
                       (let* ((_vals7474_ (gxc#generate-runtime-temporary__0))
                              (_tmp7476_ (gxc#generate-runtime-temporary__0))
                              (_expr7478_ (gxc#compile-e _L7454_))
                              (_check-values7480_
                               (gxc#generate-runtime-check-values
                                _tmp7476_
                                _L7455_))
                              (_refs7482_
                               (gxc#generate-runtime-let-values-bind
                                _vals7474_
                                _L7455_)))
                         (_lp7378_
                          _rest7404_
                          (foldl1 cons
                                  (cons (cons _vals7474_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7478_ '()))
                              '())
                        (cons _check-values7480_ (cons _tmp7476_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7381_)
                                  _refs7482_))))
                     _hd74277449_
                     _hd74247441_)
                    (_g74087433_ _g74097436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74087433_
                                                     _g74097436_))))
                                            (_g74087433_ _g74097436_))))
                                     (_g74067532_
                                      (lambda (_g74097488_)
                                        (if (gx#stx-pair? _g74097488_)
                                            (let ((_e74127490_
                                                   (gx#stx-e _g74097488_)))
                                              (let ((_hd74137493_
                                                     (##car _e74127490_))
                                                    (_tl74147495_
                                                     (##cdr _e74127490_)))
                                                (if (gx#stx-pair? _hd74137493_)
                                                    (let ((_e74157498_
                                                           (gx#stx-e
                                                            _hd74137493_)))
                                                      (let ((_hd74167501_
                                                             (##car _e74157498_))
                                                            (_tl74177503_
                                                             (##cdr _e74157498_)))
                                                        (if (gx#stx-null?
                                                             _tl74177503_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74147495_)
                        (let ((_e74187506_ (gx#stx-e _tl74147495_)))
                          (let ((_hd74197509_ (##car _e74187506_))
                                (_tl74207511_ (##cdr _e74187506_)))
                            (if (gx#stx-null? _tl74207511_)
                                ((lambda (_L7514_ _L7515_)
                                   (let ((_eid7529_
                                          (gxc#generate-runtime-binding-id*
                                           _L7515_))
                                         (_expr7530_ (gxc#compile-e _L7514_)))
                                     (_lp7378_
                                      _rest7404_
                                      (cons (cons _eid7529_
                                                  (cons _expr7530_ '()))
                                            _bind7381_))))
                                 _hd74197509_
                                 _hd74167501_)
                                (_g74077485_ _g74097488_))))
                        (_g74077485_ _g74097488_))
                    (_g74077485_ _g74097488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74077485_
                                                     _g74097488_))))
                                            (_g74077485_ _g74097488_)))))
                                (_g74067532_ _hd-bind7405_)))))
                      (if (##pair? _rest73827390_)
                          (let ((_hd73877538_ (##car _rest73827390_))
                                (_tl73887540_ (##cdr _rest73827390_)))
                            (let* ((_hd-bind7543_ _hd73877538_)
                                   (_rest7545_ _tl73887540_))
                              (_K73867535_ _rest7545_ _hd-bind7543_)))
                          (_else73847401_))))))
               (_generate-letrec?7133_
                (lambda (_hd7265_)
                  (let _lp7267_ ((_rest7269_ _hd7265_))
                    (let* ((_rest72707278_ _rest7269_)
                           (_E72737282_
                            (lambda ()
                              (error '"No clause matching" _rest72707278_)))
                           (_else72727286_ (lambda () '#t))
                           (_K72747363_
                            (lambda (_rest7289_ _hd-bind7290_)
                              (let* ((_g72927309_
                                      (lambda (_g72937306_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g72937306_)))
                                     (_g72917360_
                                      (lambda (_g72937312_)
                                        (if (gx#stx-pair? _g72937312_)
                                            (let ((_e72967314_
                                                   (gx#stx-e _g72937312_)))
                                              (let ((_hd72977317_
                                                     (##car _e72967314_))
                                                    (_tl72987319_
                                                     (##cdr _e72967314_)))
                                                (if (gx#stx-pair? _hd72977317_)
                                                    (let ((_e72997322_
                                                           (gx#stx-e
                                                            _hd72977317_)))
                                                      (let ((_hd73007325_
                                                             (##car _e72997322_))
                                                            (_tl73017327_
                                                             (##cdr _e72997322_)))
                                                        (if (gx#stx-null?
                                                             _tl73017327_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72987319_)
                        (let ((_e73027330_ (gx#stx-e _tl72987319_)))
                          (let ((_hd73037333_ (##car _e73027330_))
                                (_tl73047335_ (##cdr _e73027330_)))
                            (if (gx#stx-null? _tl73047335_)
                                ((lambda (_L7338_ _L7339_)
                                   (if (_is-lambda-expr?7134_ _L7338_)
                                       (_lp7267_ _rest7289_)
                                       '#f))
                                 _hd73037333_
                                 _hd73007325_)
                                (_g72927309_ _g72937312_))))
                        (_g72927309_ _g72937312_))
                    (_g72927309_ _g72937312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72927309_
                                                     _g72937312_))))
                                            (_g72927309_ _g72937312_)))))
                                (_g72917360_ _hd-bind7290_)))))
                      (if (##pair? _rest72707278_)
                          (let ((_hd72757366_ (##car _rest72707278_))
                                (_tl72767368_ (##cdr _rest72707278_)))
                            (let* ((_hd-bind7371_ _hd72757366_)
                                   (_rest7373_ _tl72767368_))
                              (_K72747363_ _rest7373_ _hd-bind7371_)))
                          (_else72727286_))))))
               (_is-lambda-expr?7134_
                (lambda (_expr7202_)
                  (let* ((_g72057219_
                          (lambda (_g72067216_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g72067216_)))
                         (_g72047226_ (lambda (_g72067222_) ((lambda () '#f))))
                         (_g72037262_
                          (lambda (_g72067229_)
                            (if (gx#stx-pair? _g72067229_)
                                (let ((_e72097231_ (gx#stx-e _g72067229_)))
                                  (let ((_hd72107234_ (##car _e72097231_))
                                        (_tl72117236_ (##cdr _e72097231_)))
                                    (if (gx#identifier? _hd72107234_)
                                        (if (gx#stx-eq? '%#lambda _hd72107234_)
                                            (if (gx#stx-pair? _tl72117236_)
                                                (let ((_e72127239_
                                                       (gx#stx-e
                                                        _tl72117236_)))
                                                  (let ((_hd72137242_
                                                         (##car _e72127239_))
                                                        (_tl72147244_
                                                         (##cdr _e72127239_)))
                                                    ((lambda (_L7247_ _L7248_)
                                                       '#t)
                                                     _tl72147244_
                                                     _hd72137242_)))
                                                (_g72047226_ _g72067229_))
                                            (_g72047226_ _g72067229_))
                                        (_g72047226_ _g72067229_))))
                                (_g72047226_ _g72067229_)))))
                    (_g72037262_ _expr7202_)))))
        (let* ((_g71367153_
                (lambda (_g71377150_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g71377150_)))
               (_g71357199_
                (lambda (_g71377156_)
                  (if (gx#stx-pair? _g71377156_)
                      (let ((_e71407158_ (gx#stx-e _g71377156_)))
                        (let ((_hd71417161_ (##car _e71407158_))
                              (_tl71427163_ (##cdr _e71407158_)))
                          (if (gx#stx-pair? _tl71427163_)
                              (let ((_e71437166_ (gx#stx-e _tl71427163_)))
                                (let ((_hd71447169_ (##car _e71437166_))
                                      (_tl71457171_ (##cdr _e71437166_)))
                                  (if (gx#stx-pair? _tl71457171_)
                                      (let ((_e71467174_
                                             (gx#stx-e _tl71457171_)))
                                        (let ((_hd71477177_
                                               (##car _e71467174_))
                                              (_tl71487179_
                                               (##cdr _e71467174_)))
                                          (if (gx#stx-null? _tl71487179_)
                                              ((lambda (_L7182_ _L7183_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7183_)
                                                     (if (_generate-letrec?7133_
                                                          _L7183_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7183_
                                                          _L7182_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7183_
                                                          _L7182_
                                                          '#f))
                                                     (_generate-values7132_
                                                      _L7183_
                                                      _L7182_)))
                                               _hd71477177_
                                               _hd71447169_)
                                              (_g71367153_ _g71377156_))))
                                      (_g71367153_ _g71377156_))))
                              (_g71367153_ _g71377156_))))
                      (_g71367153_ _g71377156_)))))
          (_g71357199_ _stx7130_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7023_)
      (let _lp7025_ ((_rest7027_ _hd7023_))
        (let* ((_g70317052_
                (lambda (_g70327049_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70327049_)))
               (_g70307059_ (lambda (_g70327055_) ((lambda () '#f))))
               (_g70297066_
                (lambda (_g70327062_)
                  (if (gx#stx-null? _g70327062_)
                      ((lambda () '#t))
                      (_g70307059_ _g70327062_))))
               (_g70287127_
                (lambda (_g70327069_)
                  (if (gx#stx-pair? _g70327069_)
                      (let ((_e70367071_ (gx#stx-e _g70327069_)))
                        (let ((_hd70377074_ (##car _e70367071_))
                              (_tl70387076_ (##cdr _e70367071_)))
                          (if (gx#stx-pair? _hd70377074_)
                              (let ((_e70397079_ (gx#stx-e _hd70377074_)))
                                (let ((_hd70407082_ (##car _e70397079_))
                                      (_tl70417084_ (##cdr _e70397079_)))
                                  (if (gx#stx-pair? _hd70407082_)
                                      (let ((_e70427087_
                                             (gx#stx-e _hd70407082_)))
                                        (let ((_hd70437090_
                                               (##car _e70427087_))
                                              (_tl70447092_
                                               (##cdr _e70427087_)))
                                          (if (gx#stx-null? _tl70447092_)
                                              (if (gx#stx-pair? _tl70417084_)
                                                  (let ((_e70457095_
                                                         (gx#stx-e
                                                          _tl70417084_)))
                                                    (let ((_hd70467098_
                                                           (##car _e70457095_))
                                                          (_tl70477100_
                                                           (##cdr _e70457095_)))
                                                      (if (gx#stx-null?
                                                           _tl70477100_)
                                                          ((lambda (_L7103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7104_
                            _L7105_)
                     (_lp7025_ _L7103_))
                   _tl70387076_
                   _hd70467098_
                   _hd70437090_)
                  (_g70297066_ _g70327069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g70297066_ _g70327069_))
                                              (_g70297066_ _g70327069_))))
                                      (_g70297066_ _g70327069_))))
                              (_g70297066_ _g70327069_))))
                      (_g70297066_ _g70327069_)))))
          (_g70287127_ _rest7027_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6947_ _hd6948_ _body6949_ _compiled-body?6950_)
      (letrec ((_generate16952_
                (lambda (_bind6954_)
                  (let* ((_g69566973_
                          (lambda (_g69576970_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69576970_)))
                         (_g69557020_
                          (lambda (_g69576976_)
                            (if (gx#stx-pair? _g69576976_)
                                (let ((_e69606978_ (gx#stx-e _g69576976_)))
                                  (let ((_hd69616981_ (##car _e69606978_))
                                        (_tl69626983_ (##cdr _e69606978_)))
                                    (if (gx#stx-pair? _hd69616981_)
                                        (let ((_e69636986_
                                               (gx#stx-e _hd69616981_)))
                                          (let ((_hd69646989_
                                                 (##car _e69636986_))
                                                (_tl69656991_
                                                 (##cdr _e69636986_)))
                                            (if (gx#stx-null? _tl69656991_)
                                                (if (gx#stx-pair? _tl69626983_)
                                                    (let ((_e69666994_
                                                           (gx#stx-e
                                                            _tl69626983_)))
                                                      (let ((_hd69676997_
                                                             (##car _e69666994_))
                                                            (_tl69686999_
                                                             (##cdr _e69666994_)))
                                                        (if (gx#stx-null?
                                                             _tl69686999_)
                                                            ((lambda (_L7002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7003_)
                       (cons (gxc#generate-runtime-binding-id* _L7003_)
                             (cons (gxc#compile-e _L7002_) '())))
                     _hd69676997_
                     _hd69646989_)
                    (_g69566973_ _g69576976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69566973_ _g69576976_))
                                                (_g69566973_ _g69576976_))))
                                        (_g69566973_ _g69576976_))))
                                (_g69566973_ _g69576976_)))))
                    (_g69557020_ _bind6954_)))))
        (cons _form6947_
              (cons (map _generate16952_ _hd6948_)
                    (cons (if _compiled-body?6950_
                              _body6949_
                              (gxc#compile-e _body6949_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6855_)
      (letrec ((_generate16857_
                (lambda (_datum6909_)
                  (if (let ((_$e6911_ (null? _datum6909_)))
                        (if _$e6911_
                            _$e6911_
                            (let ((_$e6914_ (interned-symbol? _datum6909_)))
                              (if _$e6914_
                                  _$e6914_
                                  (let ((_$e6917_
                                         (gx#self-quoting? _datum6909_)))
                                    (if _$e6917_
                                        _$e6917_
                                        (eof-object? _datum6909_)))))))
                      _datum6909_
                      (if (uninterned-symbol? _datum6909_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum6909_
                           '#t)
                          (if (pair? _datum6909_)
                              (cons (_generate16857_ (car _datum6909_))
                                    (_generate16857_ (cdr _datum6909_)))
                              (if (box? _datum6909_)
                                  (box (_generate16857_ (unbox _datum6909_)))
                                  (if (vector? _datum6909_)
                                      (vector-map _generate16857_ _datum6909_)
                                      (if (let ((_$e6920_
                                                 (s8vector? _datum6909_)))
                                            (if _$e6920_
                                                _$e6920_
                                                (let ((_$e6923_
                                                       (u8vector?
                                                        _datum6909_)))
                                                  (if _$e6923_
                                                      _$e6923_
                                                      (let ((_$e6926_
                                                             (s16vector?
                                                              _datum6909_)))
                                                        (if _$e6926_
                                                            _$e6926_
                                                            (let ((_$e6929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6909_)))
                      (if _$e6929_
                          _$e6929_
                          (let ((_$e6932_ (s32vector? _datum6909_)))
                            (if _$e6932_
                                _$e6932_
                                (let ((_$e6935_ (u32vector? _datum6909_)))
                                  (if _$e6935_
                                      _$e6935_
                                      (let ((_$e6938_
                                             (s64vector? _datum6909_)))
                                        (if _$e6938_
                                            _$e6938_
                                            (let ((_$e6941_
                                                   (u64vector? _datum6909_)))
                                              (if _$e6941_
                                                  _$e6941_
                                                  (let ((_$e6944_
                                                         (f32vector?
                                                          _datum6909_)))
                                                    (if _$e6944_
                                                        _$e6944_
                                                        (f64vector?
                                                         _datum6909_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6909_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6855_))))))))))
        (let* ((_g68596872_
                (lambda (_g68606869_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g68606869_)))
               (_g68586906_
                (lambda (_g68606875_)
                  (if (gx#stx-pair? _g68606875_)
                      (let ((_e68626877_ (gx#stx-e _g68606875_)))
                        (let ((_hd68636880_ (##car _e68626877_))
                              (_tl68646882_ (##cdr _e68626877_)))
                          (if (gx#stx-pair? _tl68646882_)
                              (let ((_e68656885_ (gx#stx-e _tl68646882_)))
                                (let ((_hd68666888_ (##car _e68656885_))
                                      (_tl68676890_ (##cdr _e68656885_)))
                                  (if (gx#stx-null? _tl68676890_)
                                      ((lambda (_L6893_)
                                         (cons 'quote
                                               (cons (_generate16857_
                                                      (gx#stx-e _L6893_))
                                                     '())))
                                       _hd68666888_)
                                      (_g68596872_ _g68606875_))))
                              (_g68596872_ _g68606875_))))
                      (_g68596872_ _g68606875_)))))
          (_g68586906_ _stx6855_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6548_)
      (let* ((_g65506564_
              (lambda (_g65516561_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65516561_)))
             (_g65496852_
              (lambda (_g65516567_)
                (if (gx#stx-pair? _g65516567_)
                    (let ((_e65546569_ (gx#stx-e _g65516567_)))
                      (let ((_hd65556572_ (##car _e65546569_))
                            (_tl65566574_ (##cdr _e65546569_)))
                        (if (gx#stx-pair? _tl65566574_)
                            (let ((_e65576577_ (gx#stx-e _tl65566574_)))
                              (let ((_hd65586580_ (##car _e65576577_))
                                    (_tl65596582_ (##cdr _e65576577_)))
                                ((lambda (_L6585_ _L6586_)
                                   (let ((_rator6599_ (gxc#compile-e _L6586_))
                                         (_rands6600_
                                          (map gxc#compile-e _L6585_)))
                                     (let* ((_g66036655_
                                             (lambda (_g66046652_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g66046652_)))
                                            (_g66026662_
                                             (lambda (_g66046658_)
                                               ((lambda ()
                                                  (cons _rator6599_
                                                        _rands6600_)))))
                                            (_g66016849_
                                             (lambda (_g66046665_)
                                               (if (gx#stx-pair? _g66046665_)
                                                   (let ((_e66096667_
                                                          (gx#stx-e
                                                           _g66046665_)))
                                                     (let ((_hd66106670_
                                                            (##car _e66096667_))
                                                           (_tl66116672_
                                                            (##cdr _e66096667_)))
                                                       (if (gx#identifier?
                                                            _hd66106670_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd66106670_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl66116672_)
                           (let ((_e66126675_ (gx#stx-e _tl66116672_)))
                             (let ((_hd66136678_ (##car _e66126675_))
                                   (_tl66146680_ (##cdr _e66126675_)))
                               (if (gx#stx-pair? _hd66136678_)
                                   (let ((_e66156683_ (gx#stx-e _hd66136678_)))
                                     (let ((_hd66166686_ (##car _e66156683_))
                                           (_tl66176688_ (##cdr _e66156683_)))
                                       (if (gx#stx-pair? _hd66166686_)
                                           (let ((_e66186691_
                                                  (gx#stx-e _hd66166686_)))
                                             (let ((_hd66196694_
                                                    (##car _e66186691_))
                                                   (_tl66206696_
                                                    (##cdr _e66186691_)))
                                               (if (gx#stx-pair? _tl66206696_)
                                                   (let ((_e66216699_
                                                          (gx#stx-e
                                                           _tl66206696_)))
                                                     (let ((_hd66226702_
                                                            (##car _e66216699_))
                                                           (_tl66236704_
                                                            (##cdr _e66216699_)))
                                                       (if (gx#stx-pair?
                                                            _hd66226702_)
                                                           (let ((_e66246707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd66226702_)))
                     (let ((_hd66256710_ (##car _e66246707_))
                           (_tl66266712_ (##cdr _e66246707_)))
                       (if (gx#identifier? _hd66256710_)
                           (if (gx#stx-eq? 'lambda _hd66256710_)
                               (if (gx#stx-pair? _tl66266712_)
                                   (let ((_e66276715_ (gx#stx-e _tl66266712_)))
                                     (let ((_hd66286718_ (##car _e66276715_))
                                           (_tl66296720_ (##cdr _e66276715_)))
                                       (if (gx#stx-pair/null? _hd66286718_)
                                           (if (fx>= (gx#stx-length
                                                      _hd66286718_)
                                                     '0)
                                               (let ((_g12129_
                                                      (gx#syntax-split-splice
                                                       _hd66286718_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12130_
                                                          (values-count
                                                           _g12129_)))
                                                     (if (not (fx= _g12130_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12130_)))
                                                   (let ((_target66306723_
                                                          (values-ref
                                                           _g12129_
                                                           0))
                                                         (_tl66326725_
                                                          (values-ref
                                                           _g12129_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl66326725_)
                                                         (letrec ((_loop66336728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd66316731_ _arg66376733_)
                             (if (gx#stx-pair? _hd66316731_)
                                 (let ((_e66346736_ (gx#stx-e _hd66316731_)))
                                   (let ((_lp-hd66356739_ (##car _e66346736_))
                                         (_lp-tl66366741_ (##cdr _e66346736_)))
                                     (_loop66336728_
                                      _lp-tl66366741_
                                      (cons _lp-hd66356739_ _arg66376733_))))
                                 (let ((_arg66386744_ (reverse _arg66376733_)))
                                   (if (gx#stx-pair/null? _tl66296720_)
                                       (if (fx>= (gx#stx-length _tl66296720_)
                                                 '0)
                                           (let ((_g12131_
                                                  (gx#syntax-split-splice
                                                   _tl66296720_
                                                   '0)))
                                             (begin
                                               (let ((_g12132_
                                                      (values-count _g12131_)))
                                                 (if (not (fx= _g12132_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12132_)))
                                               (let ((_target66396747_
                                                      (values-ref _g12131_ 0))
                                                     (_tl66416749_
                                                      (values-ref _g12131_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl66416749_)
                                                     (letrec ((_loop66426752_
                                                               (lambda (_hd66406755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body66466757_)
                         (if (gx#stx-pair? _hd66406755_)
                             (let ((_e66436760_ (gx#stx-e _hd66406755_)))
                               (let ((_lp-hd66446763_ (##car _e66436760_))
                                     (_lp-tl66456765_ (##cdr _e66436760_)))
                                 (_loop66426752_
                                  _lp-tl66456765_
                                  (cons _lp-hd66446763_ _body66466757_))))
                             (let ((_body66476768_ (reverse _body66466757_)))
                               (if (gx#stx-null? _tl66236704_)
                                   (if (gx#stx-null? _tl66176688_)
                                       (if (gx#stx-pair? _tl66146680_)
                                           (let ((_e66486771_
                                                  (gx#stx-e _tl66146680_)))
                                             (let ((_hd66496774_
                                                    (##car _e66486771_))
                                                   (_tl66506776_
                                                    (##cdr _e66486771_)))
                                               (if (gx#stx-null? _tl66506776_)
                                                   ((lambda (_L6779_
                                                             _L6780_
                                                             _L6781_
                                                             _L6782_)
                                                      (if (eq? _L6782_ _L6779_)
                                                          (if (fx= (length _rands6600_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g68186821_ _g68196823_)
                                               (cons _g68186821_ _g68196823_))
                                             '()
                                             _L6781_))))
                      (let* ((_id6826_ _L6782_)
                             (_args6835_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g68276830_ _g68286832_)
                                          (cons _g68276830_ _g68286832_))
                                        '()
                                        _L6781_)))
                             (_body6844_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g68366839_ _g68376841_)
                                          (cons _g68366839_ _g68376841_))
                                        '()
                                        _L6780_)))
                             (_init6846_ (map list _args6835_ _rands6600_)))
                        (cons 'let
                              (cons _id6826_ (cons _init6846_ _body6844_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6548_))
                  (_g66026662_ _g66046665_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd66496774_
                                                    _body66476768_
                                                    _arg66386744_
                                                    _hd66196694_)
                                                   (_g66026662_ _g66046665_))))
                                           (_g66026662_ _g66046665_))
                                       (_g66026662_ _g66046665_))
                                   (_g66026662_ _g66046665_)))))))
               (_loop66426752_ _target66396747_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66026662_
                                                      _g66046665_)))))
                                           (_g66026662_ _g66046665_))
                                       (_g66026662_ _g66046665_)))))))
                   (_loop66336728_ _target66306723_ '()))
                 (_g66026662_ _g66046665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66026662_ _g66046665_))
                                           (_g66026662_ _g66046665_))))
                                   (_g66026662_ _g66046665_))
                               (_g66026662_ _g66046665_))
                           (_g66026662_ _g66046665_))))
                   (_g66026662_ _g66046665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g66026662_ _g66046665_))))
                                           (_g66026662_ _g66046665_))))
                                   (_g66026662_ _g66046665_))))
                           (_g66026662_ _g66046665_))
                       (_g66026662_ _g66046665_))
                   (_g66026662_ _g66046665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g66026662_
                                                    _g66046665_)))))
                                       (_g66016849_ _rator6599_))))
                                 _tl65596582_
                                 _hd65586580_)))
                            (_g65506564_ _g65516567_))))
                    (_g65506564_ _g65516567_)))))
        (_g65496852_ _stx6548_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6510_)
      (let* ((_g65126522_
              (lambda (_g65136519_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65136519_)))
             (_g65116545_
              (lambda (_g65136525_)
                (if (gx#stx-pair? _g65136525_)
                    (let ((_e65156527_ (gx#stx-e _g65136525_)))
                      (let ((_hd65166530_ (##car _e65156527_))
                            (_tl65176532_ (##cdr _e65156527_)))
                        ((lambda (_L6535_)
                           (cons 'if (map gxc#compile-e _L6535_)))
                         _tl65176532_)))
                    (_g65126522_ _g65136525_)))))
        (_g65116545_ _stx6510_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6459_)
      (let* ((_g64616474_
              (lambda (_g64626471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64626471_)))
             (_g64606507_
              (lambda (_g64626477_)
                (if (gx#stx-pair? _g64626477_)
                    (let ((_e64646479_ (gx#stx-e _g64626477_)))
                      (let ((_hd64656482_ (##car _e64646479_))
                            (_tl64666484_ (##cdr _e64646479_)))
                        (if (gx#stx-pair? _tl64666484_)
                            (let ((_e64676487_ (gx#stx-e _tl64666484_)))
                              (let ((_hd64686490_ (##car _e64676487_))
                                    (_tl64696492_ (##cdr _e64676487_)))
                                (if (gx#stx-null? _tl64696492_)
                                    ((lambda (_L6495_)
                                       (gxc#generate-runtime-binding-id
                                        _L6495_))
                                     _hd64686490_)
                                    (_g64616474_ _g64626477_))))
                            (_g64616474_ _g64626477_))))
                    (_g64616474_ _g64626477_)))))
        (_g64606507_ _stx6459_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6392_)
      (let* ((_g63946411_
              (lambda (_g63956408_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63956408_)))
             (_g63936456_
              (lambda (_g63956414_)
                (if (gx#stx-pair? _g63956414_)
                    (let ((_e63986416_ (gx#stx-e _g63956414_)))
                      (let ((_hd63996419_ (##car _e63986416_))
                            (_tl64006421_ (##cdr _e63986416_)))
                        (if (gx#stx-pair? _tl64006421_)
                            (let ((_e64016424_ (gx#stx-e _tl64006421_)))
                              (let ((_hd64026427_ (##car _e64016424_))
                                    (_tl64036429_ (##cdr _e64016424_)))
                                (if (gx#stx-pair? _tl64036429_)
                                    (let ((_e64046432_
                                           (gx#stx-e _tl64036429_)))
                                      (let ((_hd64056435_ (##car _e64046432_))
                                            (_tl64066437_ (##cdr _e64046432_)))
                                        (if (gx#stx-null? _tl64066437_)
                                            ((lambda (_L6440_ _L6441_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6441_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6440_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd64056435_
                                             _hd64026427_)
                                            (_g63946411_ _g63956414_))))
                                    (_g63946411_ _g63956414_))))
                            (_g63946411_ _g63956414_))))
                    (_g63946411_ _g63956414_)))))
        (_g63936456_ _stx6392_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6325_)
      (let* ((_g63276344_
              (lambda (_g63286341_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63286341_)))
             (_g63266389_
              (lambda (_g63286347_)
                (if (gx#stx-pair? _g63286347_)
                    (let ((_e63316349_ (gx#stx-e _g63286347_)))
                      (let ((_hd63326352_ (##car _e63316349_))
                            (_tl63336354_ (##cdr _e63316349_)))
                        (if (gx#stx-pair? _tl63336354_)
                            (let ((_e63346357_ (gx#stx-e _tl63336354_)))
                              (let ((_hd63356360_ (##car _e63346357_))
                                    (_tl63366362_ (##cdr _e63346357_)))
                                (if (gx#stx-pair? _tl63366362_)
                                    (let ((_e63376365_
                                           (gx#stx-e _tl63366362_)))
                                      (let ((_hd63386368_ (##car _e63376365_))
                                            (_tl63396370_ (##cdr _e63376365_)))
                                        (if (gx#stx-null? _tl63396370_)
                                            ((lambda (_L6373_ _L6374_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6373_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6374_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63386368_
                                             _hd63356360_)
                                            (_g63276344_ _g63286347_))))
                                    (_g63276344_ _g63286347_))))
                            (_g63276344_ _g63286347_))))
                    (_g63276344_ _g63286347_)))))
        (_g63266389_ _stx6325_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6258_)
      (let* ((_g62606277_
              (lambda (_g62616274_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62616274_)))
             (_g62596322_
              (lambda (_g62616280_)
                (if (gx#stx-pair? _g62616280_)
                    (let ((_e62646282_ (gx#stx-e _g62616280_)))
                      (let ((_hd62656285_ (##car _e62646282_))
                            (_tl62666287_ (##cdr _e62646282_)))
                        (if (gx#stx-pair? _tl62666287_)
                            (let ((_e62676290_ (gx#stx-e _tl62666287_)))
                              (let ((_hd62686293_ (##car _e62676290_))
                                    (_tl62696295_ (##cdr _e62676290_)))
                                (if (gx#stx-pair? _tl62696295_)
                                    (let ((_e62706298_
                                           (gx#stx-e _tl62696295_)))
                                      (let ((_hd62716301_ (##car _e62706298_))
                                            (_tl62726303_ (##cdr _e62706298_)))
                                        (if (gx#stx-null? _tl62726303_)
                                            ((lambda (_L6306_ _L6307_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6306_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6307_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62716301_
                                             _hd62686293_)
                                            (_g62606277_ _g62616280_))))
                                    (_g62606277_ _g62616280_))))
                            (_g62606277_ _g62616280_))))
                    (_g62606277_ _g62616280_)))))
        (_g62596322_ _stx6258_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6175_)
      (let* ((_g61776198_
              (lambda (_g61786195_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61786195_)))
             (_g61766255_
              (lambda (_g61786201_)
                (if (gx#stx-pair? _g61786201_)
                    (let ((_e61826203_ (gx#stx-e _g61786201_)))
                      (let ((_hd61836206_ (##car _e61826203_))
                            (_tl61846208_ (##cdr _e61826203_)))
                        (if (gx#stx-pair? _tl61846208_)
                            (let ((_e61856211_ (gx#stx-e _tl61846208_)))
                              (let ((_hd61866214_ (##car _e61856211_))
                                    (_tl61876216_ (##cdr _e61856211_)))
                                (if (gx#stx-pair? _tl61876216_)
                                    (let ((_e61886219_
                                           (gx#stx-e _tl61876216_)))
                                      (let ((_hd61896222_ (##car _e61886219_))
                                            (_tl61906224_ (##cdr _e61886219_)))
                                        (if (gx#stx-pair? _tl61906224_)
                                            (let ((_e61916227_
                                                   (gx#stx-e _tl61906224_)))
                                              (let ((_hd61926230_
                                                     (##car _e61916227_))
                                                    (_tl61936232_
                                                     (##cdr _e61916227_)))
                                                (if (gx#stx-null? _tl61936232_)
                                                    ((lambda (_L6235_
                                                              _L6236_
                                                              _L6237_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6235_)
                           (cons (gxc#compile-e _L6236_)
                                 (cons (gxc#compile-e _L6237_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd61926230_
                                                     _hd61896222_
                                                     _hd61866214_)
                                                    (_g61776198_
                                                     _g61786201_))))
                                            (_g61776198_ _g61786201_))))
                                    (_g61776198_ _g61786201_))))
                            (_g61776198_ _g61786201_))))
                    (_g61776198_ _g61786201_)))))
        (_g61766255_ _stx6175_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6076_)
      (let* ((_g60786103_
              (lambda (_g60796100_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60796100_)))
             (_g60776172_
              (lambda (_g60796106_)
                (if (gx#stx-pair? _g60796106_)
                    (let ((_e60846108_ (gx#stx-e _g60796106_)))
                      (let ((_hd60856111_ (##car _e60846108_))
                            (_tl60866113_ (##cdr _e60846108_)))
                        (if (gx#stx-pair? _tl60866113_)
                            (let ((_e60876116_ (gx#stx-e _tl60866113_)))
                              (let ((_hd60886119_ (##car _e60876116_))
                                    (_tl60896121_ (##cdr _e60876116_)))
                                (if (gx#stx-pair? _tl60896121_)
                                    (let ((_e60906124_
                                           (gx#stx-e _tl60896121_)))
                                      (let ((_hd60916127_ (##car _e60906124_))
                                            (_tl60926129_ (##cdr _e60906124_)))
                                        (if (gx#stx-pair? _tl60926129_)
                                            (let ((_e60936132_
                                                   (gx#stx-e _tl60926129_)))
                                              (let ((_hd60946135_
                                                     (##car _e60936132_))
                                                    (_tl60956137_
                                                     (##cdr _e60936132_)))
                                                (if (gx#stx-pair? _tl60956137_)
                                                    (let ((_e60966140_
                                                           (gx#stx-e
                                                            _tl60956137_)))
                                                      (let ((_hd60976143_
                                                             (##car _e60966140_))
                                                            (_tl60986145_
                                                             (##cdr _e60966140_)))
                                                        (if (gx#stx-null?
                                                             _tl60986145_)
                                                            ((lambda (_L6148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6149_
                              _L6150_
                              _L6151_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6149_)
                                   (cons (gxc#compile-e _L6148_)
                                         (cons (gxc#compile-e _L6150_)
                                               (cons (gxc#compile-e _L6151_)
                                                     (cons ''#f '())))))))
                     _hd60976143_
                     _hd60946135_
                     _hd60916127_
                     _hd60886119_)
                    (_g60786103_ _g60796106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60786103_
                                                     _g60796106_))))
                                            (_g60786103_ _g60796106_))))
                                    (_g60786103_ _g60796106_))))
                            (_g60786103_ _g60796106_))))
                    (_g60786103_ _g60796106_)))))
        (_g60776172_ _stx6076_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5993_)
      (let* ((_g59956016_
              (lambda (_g59966013_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59966013_)))
             (_g59946073_
              (lambda (_g59966019_)
                (if (gx#stx-pair? _g59966019_)
                    (let ((_e60006021_ (gx#stx-e _g59966019_)))
                      (let ((_hd60016024_ (##car _e60006021_))
                            (_tl60026026_ (##cdr _e60006021_)))
                        (if (gx#stx-pair? _tl60026026_)
                            (let ((_e60036029_ (gx#stx-e _tl60026026_)))
                              (let ((_hd60046032_ (##car _e60036029_))
                                    (_tl60056034_ (##cdr _e60036029_)))
                                (if (gx#stx-pair? _tl60056034_)
                                    (let ((_e60066037_
                                           (gx#stx-e _tl60056034_)))
                                      (let ((_hd60076040_ (##car _e60066037_))
                                            (_tl60086042_ (##cdr _e60066037_)))
                                        (if (gx#stx-pair? _tl60086042_)
                                            (let ((_e60096045_
                                                   (gx#stx-e _tl60086042_)))
                                              (let ((_hd60106048_
                                                     (##car _e60096045_))
                                                    (_tl60116050_
                                                     (##cdr _e60096045_)))
                                                (if (gx#stx-null? _tl60116050_)
                                                    ((lambda (_L6053_
                                                              _L6054_
                                                              _L6055_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6053_)
                           (cons (gxc#compile-e _L6054_)
                                 (cons (gxc#compile-e _L6055_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd60106048_
                                                     _hd60076040_
                                                     _hd60046032_)
                                                    (_g59956016_
                                                     _g59966019_))))
                                            (_g59956016_ _g59966019_))))
                                    (_g59956016_ _g59966019_))))
                            (_g59956016_ _g59966019_))))
                    (_g59956016_ _g59966019_)))))
        (_g59946073_ _stx5993_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5894_)
      (let* ((_g58965921_
              (lambda (_g58975918_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58975918_)))
             (_g58955990_
              (lambda (_g58975924_)
                (if (gx#stx-pair? _g58975924_)
                    (let ((_e59025926_ (gx#stx-e _g58975924_)))
                      (let ((_hd59035929_ (##car _e59025926_))
                            (_tl59045931_ (##cdr _e59025926_)))
                        (if (gx#stx-pair? _tl59045931_)
                            (let ((_e59055934_ (gx#stx-e _tl59045931_)))
                              (let ((_hd59065937_ (##car _e59055934_))
                                    (_tl59075939_ (##cdr _e59055934_)))
                                (if (gx#stx-pair? _tl59075939_)
                                    (let ((_e59085942_
                                           (gx#stx-e _tl59075939_)))
                                      (let ((_hd59095945_ (##car _e59085942_))
                                            (_tl59105947_ (##cdr _e59085942_)))
                                        (if (gx#stx-pair? _tl59105947_)
                                            (let ((_e59115950_
                                                   (gx#stx-e _tl59105947_)))
                                              (let ((_hd59125953_
                                                     (##car _e59115950_))
                                                    (_tl59135955_
                                                     (##cdr _e59115950_)))
                                                (if (gx#stx-pair? _tl59135955_)
                                                    (let ((_e59145958_
                                                           (gx#stx-e
                                                            _tl59135955_)))
                                                      (let ((_hd59155961_
                                                             (##car _e59145958_))
                                                            (_tl59165963_
                                                             (##cdr _e59145958_)))
                                                        (if (gx#stx-null?
                                                             _tl59165963_)
                                                            ((lambda (_L5966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5967_
                              _L5968_
                              _L5969_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5967_)
                                   (cons (gxc#compile-e _L5966_)
                                         (cons (gxc#compile-e _L5968_)
                                               (cons (gxc#compile-e _L5969_)
                                                     (cons ''#f '())))))))
                     _hd59155961_
                     _hd59125953_
                     _hd59095945_
                     _hd59065937_)
                    (_g58965921_ _g58975924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58965921_
                                                     _g58975924_))))
                                            (_g58965921_ _g58975924_))))
                                    (_g58965921_ _g58975924_))))
                            (_g58965921_ _g58975924_))))
                    (_g58965921_ _g58975924_)))))
        (_g58955990_ _stx5894_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5811_)
      (let* ((_g58135834_
              (lambda (_g58145831_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58145831_)))
             (_g58125891_
              (lambda (_g58145837_)
                (if (gx#stx-pair? _g58145837_)
                    (let ((_e58185839_ (gx#stx-e _g58145837_)))
                      (let ((_hd58195842_ (##car _e58185839_))
                            (_tl58205844_ (##cdr _e58185839_)))
                        (if (gx#stx-pair? _tl58205844_)
                            (let ((_e58215847_ (gx#stx-e _tl58205844_)))
                              (let ((_hd58225850_ (##car _e58215847_))
                                    (_tl58235852_ (##cdr _e58215847_)))
                                (if (gx#stx-pair? _tl58235852_)
                                    (let ((_e58245855_
                                           (gx#stx-e _tl58235852_)))
                                      (let ((_hd58255858_ (##car _e58245855_))
                                            (_tl58265860_ (##cdr _e58245855_)))
                                        (if (gx#stx-pair? _tl58265860_)
                                            (let ((_e58275863_
                                                   (gx#stx-e _tl58265860_)))
                                              (let ((_hd58285866_
                                                     (##car _e58275863_))
                                                    (_tl58295868_
                                                     (##cdr _e58275863_)))
                                                (if (gx#stx-null? _tl58295868_)
                                                    ((lambda (_L5871_
                                                              _L5872_
                                                              _L5873_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5871_)
                           (cons (gxc#compile-e _L5872_)
                                 (cons (gxc#compile-e _L5873_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd58285866_
                                                     _hd58255858_
                                                     _hd58225850_)
                                                    (_g58135834_
                                                     _g58145837_))))
                                            (_g58135834_ _g58145837_))))
                                    (_g58135834_ _g58145837_))))
                            (_g58135834_ _g58145837_))))
                    (_g58135834_ _g58145837_)))))
        (_g58125891_ _stx5811_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5712_)
      (let* ((_g57145739_
              (lambda (_g57155736_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57155736_)))
             (_g57135808_
              (lambda (_g57155742_)
                (if (gx#stx-pair? _g57155742_)
                    (let ((_e57205744_ (gx#stx-e _g57155742_)))
                      (let ((_hd57215747_ (##car _e57205744_))
                            (_tl57225749_ (##cdr _e57205744_)))
                        (if (gx#stx-pair? _tl57225749_)
                            (let ((_e57235752_ (gx#stx-e _tl57225749_)))
                              (let ((_hd57245755_ (##car _e57235752_))
                                    (_tl57255757_ (##cdr _e57235752_)))
                                (if (gx#stx-pair? _tl57255757_)
                                    (let ((_e57265760_
                                           (gx#stx-e _tl57255757_)))
                                      (let ((_hd57275763_ (##car _e57265760_))
                                            (_tl57285765_ (##cdr _e57265760_)))
                                        (if (gx#stx-pair? _tl57285765_)
                                            (let ((_e57295768_
                                                   (gx#stx-e _tl57285765_)))
                                              (let ((_hd57305771_
                                                     (##car _e57295768_))
                                                    (_tl57315773_
                                                     (##cdr _e57295768_)))
                                                (if (gx#stx-pair? _tl57315773_)
                                                    (let ((_e57325776_
                                                           (gx#stx-e
                                                            _tl57315773_)))
                                                      (let ((_hd57335779_
                                                             (##car _e57325776_))
                                                            (_tl57345781_
                                                             (##cdr _e57325776_)))
                                                        (if (gx#stx-null?
                                                             _tl57345781_)
                                                            ((lambda (_L5784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5785_
                              _L5786_
                              _L5787_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5785_)
                                   (cons (gxc#compile-e _L5784_)
                                         (cons (gxc#compile-e _L5786_)
                                               (cons (gxc#compile-e _L5787_)
                                                     (cons ''#f '())))))))
                     _hd57335779_
                     _hd57305771_
                     _hd57275763_
                     _hd57245755_)
                    (_g57145739_ _g57155742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g57145739_
                                                     _g57155742_))))
                                            (_g57145739_ _g57155742_))))
                                    (_g57145739_ _g57155742_))))
                            (_g57145739_ _g57155742_))))
                    (_g57145739_ _g57155742_)))))
        (_g57135808_ _stx5712_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5566_)
      (letrec ((_import-set-template5568_
                (lambda (_in5664_ _phi5665_)
                  (let ((_iphi5667_
                         (fx+ _phi5665_
                              (##direct-structure-ref
                               _in5664_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports5668_
                         (##structure-ref
                          (##direct-structure-ref
                           _in5664_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp5670_ ((_rest5672_ _imports5668_) (_r5673_ '()))
                      (let* ((_rest56745682_ _rest5672_)
                             (_E56775686_
                              (lambda ()
                                (error '"No clause matching" _rest56745682_)))
                             (_else56765690_ (lambda () _r5673_))
                             (_K56785700_
                              (lambda (_rest5693_ _in5694_)
                                (if (##structure-instance-of?
                                     _in5694_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi5667_)
                                        (_lp5670_
                                         _rest5693_
                                         (cons _in5694_ _r5673_))
                                        (_lp5670_ _rest5693_ _r5673_))
                                    (if (##structure-direct-instance-of?
                                         _in5694_
                                         'gx#module-import::t)
                                        (let ((_iphi5696_
                                               (fx+ _phi5665_
                                                    (##direct-structure-ref
                                                     _in5694_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi5696_)
                                              (_lp5670_
                                               _rest5693_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in5694_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r5673_))
                                              (_lp5670_ _rest5693_ _r5673_)))
                                        (if (##structure-direct-instance-of?
                                             _in5694_
                                             'gx#import-set::t)
                                            (let ((_xphi5698_
                                                   (fx+ _iphi5667_
                                                        (##direct-structure-ref
                                                         _in5694_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi5698_)
                                                  (_lp5670_
                                                   _rest5693_
                                                   (cons (##direct-structure-ref
                                                          _in5694_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r5673_))
                                                  (if (fxpositive? _xphi5698_)
                                                      (_lp5670_
                                                       _rest5693_
                                                       (foldl1 cons
                                                               _r5673_
                                                               (_import-set-template5568_
                                                                _in5694_
                                                                _iphi5667_)))
                                                      (_lp5670_
                                                       _rest5693_
                                                       _r5673_))))
                                            (_lp5670_ _rest5693_ _r5673_)))))))
                        (if (##pair? _rest56745682_)
                            (let ((_hd56795703_ (##car _rest56745682_))
                                  (_tl56805705_ (##cdr _rest56745682_)))
                              (let* ((_in5708_ _hd56795703_)
                                     (_rest5710_ _tl56805705_))
                                (_K56785700_ _rest5710_ _in5708_)))
                            (_else56765690_))))))))
        (let* ((_g55705580_
                (lambda (_g55715577_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g55715577_)))
               (_g55695661_
                (lambda (_g55715583_)
                  (if (gx#stx-pair? _g55715583_)
                      (let ((_e55735585_ (gx#stx-e _g55715583_)))
                        (let ((_hd55745588_ (##car _e55735585_))
                              (_tl55755590_ (##cdr _e55735585_)))
                          ((lambda (_L5593_)
                             (let ((_ht5604_ (make-hash-table-eq)))
                               (let _lp5606_ ((_rest5608_ _L5593_)
                                              (_loads5609_ '()))
                                 (letrec ((_K5611_ (lambda (_ctx5654_
                                                            _rest5655_)
                                                     (let ((_id5657_
                                                            (##structure-ref
                                                             _ctx5654_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht5604_
                                                            _id5657_
                                                            '#f)
                                                           (_lp5606_
                                                            _rest5655_
                                                            _loads5609_)
                                                           (let ((_rt5659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append (symbol->string _id5657_) '"__rt")))
                     (begin
                       (table-set! _ht5604_ _id5657_ _rt5659_)
                       (_lp5606_ _rest5655_ (cons _rt5659_ _loads5609_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest56125620_ _rest5608_)
                                          (_E56155624_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest56125620_)))
                                          (_else56145632_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g56275629_)
                                                          (list 'load-module
                                                                _g56275629_))
                                                        (reverse _loads5609_)))))
                                          (_K56165642_
                                           (lambda (_rest5635_ _in5636_)
                                             (if (##structure-instance-of?
                                                  _in5636_
                                                  'gx#module-context::t)
                                                 (_K5611_ _in5636_ _rest5635_)
                                                 (if (##structure-direct-instance-of?
                                                      _in5636_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in5636_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K5611_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in5636_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest5635_)
                 (_lp5606_ _rest5635_ _loads5609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in5636_
                                                          'gx#import-set::t)
                                                         (let ((_phi5638_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in5636_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi5638_)
                       (_K5611_ (##direct-structure-ref
                                 _in5636_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest5635_)
                       (if (fxpositive? _phi5638_)
                           (let ((_deps5640_
                                  (_import-set-template5568_ _in5636_ '0)))
                             (_lp5606_
                              (foldl1 cons _rest5635_ _deps5640_)
                              _loads5609_))
                           (_lp5606_ _rest5635_ _loads5609_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx5566_
                  _in5636_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest56125620_)
                                         (let ((_hd56175645_
                                                (##car _rest56125620_))
                                               (_tl56185647_
                                                (##cdr _rest56125620_)))
                                           (let* ((_in5650_ _hd56175645_)
                                                  (_rest5652_ _tl56185647_))
                                             (_K56165642_
                                              _rest5652_
                                              _in5650_)))
                                         (_else56145632_)))))))
                           _tl55755590_)))
                      (_g55705580_ _g55715583_)))))
          (_g55695661_ _stx5566_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx5389_)
      (letrec ((_add-lift!5391_
                (lambda (_expr5564_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5564_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5392_
                (lambda (_stxq5559_)
                  (let ((_gid5561_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid5562_
                         (gxc#generate-runtime-identifier _stxq5559_)))
                    (begin
                      (_add-lift!5391_
                       (cons 'define
                             (cons _gid5561_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'quote (cons '() '())) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5561_))))
               (_generate-serialized5393_
                (lambda (_stxq5549_ _marks5550_)
                  (let* ((_mark-refs5552_
                          (map _generate-mark5394_ _marks5550_))
                         (_gid5554_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid5556_
                          (gxc#generate-runtime-identifier _stxq5549_)))
                    (begin
                      (_add-lift!5391_
                       (cons 'define
                             (cons _gid5554_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5552_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5554_))))
               (_generate-mark5394_
                (lambda (_mark5535_)
                  (let ((_$e5537_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5535_
                          '#f)))
                    (if _$e5537_
                        (values _$e5537_)
                        (let* ((_gid5540_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr5542_ (_serialize-mark5395_ _mark5535_))
                               (_ctx5544_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5535_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5546_
                                (if (eq? _ctx5544_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5396_
                                                             _ctx5544_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5535_
                             _gid5540_)
                            (_add-lift!5391_
                             (cons 'define
                                   (cons _gid5540_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5542_ '()))
                   (cons _ctx-ref5546_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5540_))))))
               (_serialize-mark5395_
                (lambda (_mark5482_)
                  (letrec ((_quote-e5484_
                            (lambda (_sym5533_)
                              (if (interned-symbol? _sym5533_)
                                  _sym5533_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5533_)))))
                    (let* ((_mark54855494_ _mark5482_)
                           (_E54875498_
                            (lambda ()
                              (error '"No clause matching" _mark54855494_)))
                           (_K54885510_
                            (lambda (_trace5501_
                                     _phi5502_
                                     _ctx5503_
                                     _subst5504_)
                              (let ((_subs5506_
                                     (if _subst5504_
                                         (table->list _subst5504_)
                                         '())))
                                (cons _phi5502_
                                      (map (lambda (_pair5508_)
                                             (cons (_quote-e5484_
                                                    (car _pair5508_))
                                                   (_quote-e5484_
                                                    (cdr _pair5508_))))
                                           _subs5506_))))))
                      (if (##structure-instance-of?
                           _mark54855494_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e54895513_ (##vector-ref _mark54855494_ '1))
                                 (_subst5516_ _e54895513_)
                                 (_e54905518_ (##vector-ref _mark54855494_ '2))
                                 (_ctx5521_ _e54905518_)
                                 (_e54915523_ (##vector-ref _mark54855494_ '3))
                                 (_phi5526_ _e54915523_)
                                 (_e54925528_ (##vector-ref _mark54855494_ '4))
                                 (_trace5531_ _e54925528_))
                            (_K54885510_
                             _trace5531_
                             _phi5526_
                             _ctx5521_
                             _subst5516_))
                          (_E54875498_))))))
               (_context-ref5396_
                (lambda (_ctx5469_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5469_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5471_
                             (_context-ref-nested5398_ _ctx5469_))
                            (_ctx-origin5472_
                             (_context-ref-origin5397_ _ctx5469_))
                            (_origin5473_
                             (_context-ref-origin5397_
                              (gx#current-expander-context))))
                        (if (eq? _origin5473_ _ctx-origin5472_)
                            (let ((_ref5475_
                                   (_context-ref-nested5398_
                                    (gx#current-expander-context))))
                              (let _lp5477_ ((_ref5479_ (cdr _ref5475_))
                                             (_ctx-ref5480_
                                              (cdr _ctx-ref5471_)))
                                (if (if (pair? _ref5479_)
                                        (eq? (car _ref5479_)
                                             (car _ctx-ref5480_))
                                        '#f)
                                    (_lp5477_
                                     (cdr _ref5479_)
                                     (cdr _ctx-ref5480_))
                                    (cons '#f _ctx-ref5480_))))
                            _ctx-ref5471_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5469_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5397_
                (lambda (_ctx5461_)
                  (let _lp5463_ ((_ctx5465_ _ctx5461_))
                    (let ((_super5467_
                           (##structure-ref
                            _ctx5465_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5467_
                           'gx#module-context::t)
                          (_lp5463_ _super5467_)
                          _ctx5465_)))))
               (_context-ref-nested5398_
                (lambda (_ctx5452_)
                  (let _lp5454_ ((_ctx5456_ _ctx5452_) (_r5457_ '()))
                    (let ((_super5459_
                           (##structure-ref
                            _ctx5456_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5459_
                           'gx#module-context::t)
                          (_lp5454_
                           _super5459_
                           (cons (car (##structure-ref
                                       _ctx5456_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5457_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5456_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5457_)))))))
        (let* ((_g54005413_
                (lambda (_g54015410_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54015410_)))
               (_g53995449_
                (lambda (_g54015416_)
                  (if (gx#stx-pair? _g54015416_)
                      (let ((_e54035418_ (gx#stx-e _g54015416_)))
                        (let ((_hd54045421_ (##car _e54035418_))
                              (_tl54055423_ (##cdr _e54035418_)))
                          (if (gx#stx-pair? _tl54055423_)
                              (let ((_e54065426_ (gx#stx-e _tl54055423_)))
                                (let ((_hd54075429_ (##car _e54065426_))
                                      (_tl54085431_ (##cdr _e54065426_)))
                                  (if (gx#stx-null? _tl54085431_)
                                      ((lambda (_L5434_)
                                         (if (gx#identifier? _L5434_)
                                             (let ((_marks5447_
                                                    (##direct-structure-ref
                                                     _L5434_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5447_)
                                                   (_generate-simple5392_
                                                    _L5434_)
                                                   (_generate-serialized5393_
                                                    _L5434_
                                                    _marks5447_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5434_)))
                                       _hd54075429_)
                                      (_g54005413_ _g54015416_))))
                              (_g54005413_ _g54015416_))))
                      (_g54005413_ _g54015416_)))))
          (_g53995449_ _stx5389_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5322_)
      (let* ((_g53245341_
              (lambda (_g53255338_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53255338_)))
             (_g53235386_
              (lambda (_g53255344_)
                (if (gx#stx-pair? _g53255344_)
                    (let ((_e53285346_ (gx#stx-e _g53255344_)))
                      (let ((_hd53295349_ (##car _e53285346_))
                            (_tl53305351_ (##cdr _e53285346_)))
                        (if (gx#stx-pair? _tl53305351_)
                            (let ((_e53315354_ (gx#stx-e _tl53305351_)))
                              (let ((_hd53325357_ (##car _e53315354_))
                                    (_tl53335359_ (##cdr _e53315354_)))
                                (if (gx#stx-pair? _tl53335359_)
                                    (let ((_e53345362_
                                           (gx#stx-e _tl53335359_)))
                                      (let ((_hd53355365_ (##car _e53345362_))
                                            (_tl53365367_ (##cdr _e53345362_)))
                                        (if (gx#stx-null? _tl53365367_)
                                            ((lambda (_L5370_ _L5371_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5371_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5370_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd53355365_
                                             _hd53325357_)
                                            (_g53245341_ _g53255344_))))
                                    (_g53245341_ _g53255344_))))
                            (_g53245341_ _g53255344_))))
                    (_g53245341_ _g53255344_)))))
        (_g53235386_ _stx5322_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5271_ _state5272_)
      (let* ((_g52745284_
              (lambda (_g52755281_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52755281_)))
             (_g52735319_
              (lambda (_g52755287_)
                (if (gx#stx-pair? _g52755287_)
                    (let ((_e52775289_ (gx#stx-e _g52755287_)))
                      (let ((_hd52785292_ (##car _e52775289_))
                            (_tl52795294_ (##cdr _e52775289_)))
                        ((lambda (_L5297_)
                           (let* ((_c-body5311_
                                   (map (lambda (_g53065308_)
                                          (gxc#compile-e
                                           _g53065308_
                                           _state5272_))
                                        _L5297_))
                                  (_c-body5316_
                                   (filter (lambda (_$obj5313_)
                                             (not (eq? _$obj5313_ '#!void)))
                                           _c-body5311_)))
                             (cons '%#begin _c-body5316_)))
                         _tl52795294_)))
                    (_g52745284_ _g52755287_)))))
        (_g52735319_ _stx5271_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5179_ _state5180_)
      (let* ((_g51825192_
              (lambda (_g51835189_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51835189_)))
             (_g51815268_
              (lambda (_g51835195_)
                (if (gx#stx-pair? _g51835195_)
                    (let ((_e51855197_ (gx#stx-e _g51835195_)))
                      (let ((_hd51865200_ (##car _e51855197_))
                            (_tl51875202_ (##cdr _e51855197_)))
                        ((lambda (_L5205_)
                           (let* ((_phi5215_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5217_
                                   (gxc#meta-state-begin-phi!
                                    _state5180_
                                    _phi5215_))
                                  (_compiled5220_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5205_)
                                       _state5180_))
                                    gx#current-expander-phi
                                    _phi5215_)))
                             (let* ((_g52235233_
                                     (lambda (_g52245230_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52245230_)))
                                    (_g52225265_
                                     (lambda (_g52245236_)
                                       (if (gx#stx-pair? _g52245236_)
                                           (let ((_e52265238_
                                                  (gx#stx-e _g52245236_)))
                                             (let ((_hd52275241_
                                                    (##car _e52265238_))
                                                   (_tl52285243_
                                                    (##cdr _e52265238_)))
                                               (if (gx#identifier?
                                                    _hd52275241_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd52275241_)
                                                       ((lambda (_L5246_)
                                                          (let ((_c-body5263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5260_)
                                   (not (eq? _$obj5260_ '#!void)))
                                 _L5246_)))
                    (if _block5217_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5263_))
                        (if (null? _c-body5263_)
                            '#!void
                            (cons '%#begin-syntax _c-body5263_)))))
                _tl52285243_)
               (_g52235233_ _g52245236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52235233_ _g52245236_))))
                                           (_g52235233_ _g52245236_)))))
                               (_g52225265_ _compiled5220_))))
                         _tl51875202_)))
                    (_g51825192_ _g51835195_)))))
        (_g51815268_ _stx5179_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5110_ _state5111_)
      (begin
        (gxc#meta-state-end-phi! _state5111_)
        (let* ((_g51135127_
                (lambda (_g51145124_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g51145124_)))
               (_g51125176_
                (lambda (_g51145130_)
                  (if (gx#stx-pair? _g51145130_)
                      (let ((_e51175132_ (gx#stx-e _g51145130_)))
                        (let ((_hd51185135_ (##car _e51175132_))
                              (_tl51195137_ (##cdr _e51175132_)))
                          (if (gx#stx-pair? _tl51195137_)
                              (let ((_e51205140_ (gx#stx-e _tl51195137_)))
                                (let ((_hd51215143_ (##car _e51205140_))
                                      (_tl51225145_ (##cdr _e51205140_)))
                                  ((lambda (_L5148_ _L5149_)
                                     (let ((_key5162_
                                            (gx#core-identifier-key _L5149_)))
                                       (begin
                                         (if (interned-symbol? _key5162_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5110_
                                              _L5149_
                                              _key5162_))
                                         (let* ((_ctx5164_
                                                 (gx#syntax-local-e__0
                                                  _L5149_))
                                                (_code5167_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5164_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5111_))
                                                  gx#current-expander-context
                                                  _ctx5164_))
                                                (_rt5169_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5164_
                                                  '#f))
                                                (_loader5171_
                                                 (if _rt5169_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5169_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5173_
                                                 (gx#stx-e _L5149_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5111_)
                                             (cons '%#module
                                                   (cons _modid5173_
                                                         (cons _code5167_
                                                               _loader5171_))))))))
                                   _tl51225145_
                                   _hd51215143_)))
                              (_g51135127_ _g51145130_))))
                      (_g51135127_ _g51145130_)))))
          (_g51125176_ _stx5110_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5100_ _context-chain5101_)
      (let _lp5103_ ((_ctx5105_ _ctx5100_) (_path5106_ '()))
        (let ((_super5108_
               (##structure-ref _ctx5105_ '3 gx#phi-context::t '#f)))
          (if (memq _super5108_ _context-chain5101_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx5105_
                           '7
                           gx#module-context::t
                           '#f))
                     _path5106_)
              (if (##structure-instance-of? _super5108_ 'gx#module-context::t)
                  (_lp5103_
                   _super5108_
                   (cons (car (##structure-ref
                               _ctx5105_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5106_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5105_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5106_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5095_ ((_ctx5097_ (gx#current-expander-context)) (_r5098_ '()))
        (if (##structure-instance-of? _ctx5097_ 'gx#module-context::t)
            (_lp5095_
             (##structure-ref _ctx5097_ '3 gx#phi-context::t '#f)
             (cons _ctx5097_ _r5098_))
            _r5098_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4864_ _state4865_)
      (letrec* ((_context-chain4867_ (gxc#current-context-chain))
                (_make-import-spec4868_
                 (lambda (_in5031_)
                   (let* ((_in50325044_ _in5031_)
                          (_E50345048_
                           (lambda ()
                             (error '"No clause matching" _in50325044_)))
                          (_K50355058_
                           (lambda (_phi5051_
                                    _name5052_
                                    _src-name5053_
                                    _src-phi5054_
                                    _src-key5055_
                                    _src-ctx5056_)
                             (cons _phi5051_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5052_)
                                         (cons _src-phi5054_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5053_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in50325044_
                          (##type-id gx#module-import::t))
                         (let ((_e50365061_ (##vector-ref _in50325044_ '1)))
                           (if (##structure-direct-instance-of?
                                _e50365061_
                                (##type-id gx#module-export::t))
                               (let* ((_e50395064_
                                       (##vector-ref _e50365061_ '1))
                                      (_src-ctx5067_ _e50395064_)
                                      (_e50405069_
                                       (##vector-ref _e50365061_ '2))
                                      (_src-key5072_ _e50405069_)
                                      (_e50415074_
                                       (##vector-ref _e50365061_ '3))
                                      (_src-phi5077_ _e50415074_)
                                      (_e50425079_
                                       (##vector-ref _e50365061_ '4))
                                      (_src-name5082_ _e50425079_)
                                      (_e50375084_
                                       (##vector-ref _in50325044_ '2))
                                      (_name5087_ _e50375084_)
                                      (_e50385089_
                                       (##vector-ref _in50325044_ '3))
                                      (_phi5092_ _e50385089_))
                                 (_K50355058_
                                  _phi5092_
                                  _name5087_
                                  _src-name5082_
                                  _src-phi5077_
                                  _src-key5072_
                                  _src-ctx5067_))
                               (_E50345048_)))
                         (_E50345048_)))))
                (_make-import-path4869_
                 (lambda (_ctx5029_)
                   (gxc#generate-meta-import-path
                    _ctx5029_
                    _context-chain4867_)))
                (_make-import-spec-in4870_
                 (lambda (_ctx5026_ _in5027_)
                   (cons 'spec:
                         (cons (_make-import-path4869_ _ctx5026_)
                               (reverse _in5027_))))))
        (begin
          (gxc#meta-state-end-phi! _state4865_)
          (let* ((_g48724882_
                  (lambda (_g48734879_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g48734879_)))
                 (_g48715023_
                  (lambda (_g48734885_)
                    (if (gx#stx-pair? _g48734885_)
                        (let ((_e48754887_ (gx#stx-e _g48734885_)))
                          (let ((_hd48764890_ (##car _e48754887_))
                                (_tl48774892_ (##cdr _e48754887_)))
                            ((lambda (_L4895_)
                               (let _lp4906_ ((_rest4908_ _L4895_)
                                              (_current-src4909_ '#f)
                                              (_current-in4910_ '())
                                              (_r4911_ '()))
                                 (let* ((_rest49124920_ _rest4908_)
                                        (_E49154924_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest49124920_)))
                                        (_else49144930_
                                         (lambda ()
                                           (let ((_r4928_ (if _current-src4909_
                                                              (cons (_make-import-spec-in4870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4909_
                             _current-in4910_)
                            _r4911_)
                      _r4911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4928_)))))
                                        (_K49165011_
                                         (lambda (_rest4933_ _in4934_)
                                           (if (##structure-direct-instance-of?
                                                _in4934_
                                                'gx#module-import::t)
                                               (let* ((_in49354942_ _in4934_)
                                                      (_E49374946_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in49354942_)))
                                                      (_K49384951_
                                                       (lambda (_src-ctx4949_)
                                                         (if (eq? _current-src4909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4949_)
                     (_lp4906_
                      _rest4933_
                      _current-src4909_
                      (cons (_make-import-spec4868_ _in4934_) _current-in4910_)
                      _r4911_)
                     (if _current-src4909_
                         (_lp4906_
                          _rest4933_
                          _src-ctx4949_
                          (cons (_make-import-spec4868_ _in4934_) '())
                          (cons (_make-import-spec-in4870_
                                 _current-src4909_
                                 _current-in4910_)
                                _r4911_))
                         (_lp4906_
                          _rest4933_
                          _src-ctx4949_
                          (cons (_make-import-spec4868_ _in4934_) '())
                          _r4911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in49354942_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e49394954_
                                                            (##vector-ref
                                                             _in49354942_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e49394954_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e49404957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e49394954_ '1))
                          (_src-ctx4960_ _e49404957_))
                     (_K49384951_ _src-ctx4960_))
                   (_E49374946_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E49374946_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4934_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4962_
                                                           (##direct-structure-ref
                                                            _in4934_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4964_
                                                           (##direct-structure-ref
                                                            _in4934_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5004_
                                                           (let* ((_g49654974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4869_ _src4964_))
                          (_E49684978_
                           (lambda ()
                             (error '"No clause matching" _g49654974_)))
                          (_try-match49674989_
                           (lambda ()
                             (let* ((_K49694984_
                                     (lambda (_path4982_)
                                       (cons 'in: _path4982_)))
                                    (_path4987_ _g49654974_))
                               (_K49694984_ _path4987_))))
                          (_K49704994_ (lambda (_path4992_) _path4992_)))
                     (if (##pair? _g49654974_)
                         (let ((_hd49714997_ (##car _g49654974_))
                               (_tl49724999_ (##cdr _g49654974_)))
                           (let ((_path5002_ _hd49714997_))
                             (if (##null? _tl49724999_)
                                 (_K49704994_ _path5002_)
                                 (_try-match49674989_))))
                         (_try-match49674989_))))
                  (_r5006_ (if _current-src4909_
                               (cons (_make-import-spec-in4870_
                                      _current-src4909_
                                      _current-in4910_)
                                     _r4911_)
                               _r4911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4906_
                                                      _rest4933_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4962_)
                                                                _src-in5004_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4962_ (cons _src-in5004_ '()))))
                    _r5006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4934_
                                                        'gx#module-context::t)
                                                       (let ((_r5009_ (if _current-src4909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4870_
                                         _current-src4909_
                                         _current-in4910_)
                                        _r4911_)
                                  _r4911_)))
                 (_lp4906_
                  _rest4933_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4869_ _in4934_))
                        _r5009_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest49124920_)
                                       (let ((_hd49175014_
                                              (##car _rest49124920_))
                                             (_tl49185016_
                                              (##cdr _rest49124920_)))
                                         (let* ((_in5019_ _hd49175014_)
                                                (_rest5021_ _tl49185016_))
                                           (_K49165011_ _rest5021_ _in5019_)))
                                       (_else49144930_)))))
                             _tl48774892_)))
                        (_g48724882_ _g48734885_)))))
            (_g48715023_ _stx4864_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4674_ _state4675_)
      (letrec* ((_context-chain4677_ (gxc#current-context-chain))
                (_make-import-path4678_
                 (lambda (_ctx4862_)
                   (gxc#generate-meta-import-path
                    _ctx4862_
                    _context-chain4677_))))
        (let* ((_g46804690_
                (lambda (_g46814687_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46814687_)))
               (_g46794859_
                (lambda (_g46814693_)
                  (if (gx#stx-pair? _g46814693_)
                      (let ((_e46834695_ (gx#stx-e _g46814693_)))
                        (let ((_hd46844698_ (##car _e46834695_))
                              (_tl46854700_ (##cdr _e46834695_)))
                          ((lambda (_L4703_)
                             (let _lp4714_ ((_rest4716_ _L4703_) (_r4717_ '()))
                               (let* ((_rest47184726_ _rest4716_)
                                      (_E47214730_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest47184726_)))
                                      (_else47204734_
                                       (lambda ()
                                         (cons '%#export (reverse _r4717_))))
                                      (_K47224847_
                                       (lambda (_rest4737_ _out4738_)
                                         (let* ((_out47394752_ _out4738_)
                                                (_E47424756_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out47394752_)))
                                                (_try-match47414819_
                                                 (lambda ()
                                                   (let ((_K47434806_
                                                          (lambda (_phi4760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4761_)
                    (let* ((_out4801_
                            (if _src4761_
                                (cons 'import:
                                      (cons (let* ((_g47624771_
                                                    (_make-import-path4678_
                                                     _src4761_))
                                                   (_E47654775_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g47624771_)))
                                                   (_try-match47644786_
                                                    (lambda ()
                                                      (let* ((_K47664781_
                                                              (lambda (_path4779_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4779_)))
                     (_path4784_ _g47624771_))
                (_K47664781_ _path4784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K47674791_
                                                    (lambda (_path4789_)
                                                      _path4789_)))
                                              (if (##pair? _g47624771_)
                                                  (let ((_hd47684794_
                                                         (##car _g47624771_))
                                                        (_tl47694796_
                                                         (##cdr _g47624771_)))
                                                    (let ((_path4799_
                                                           _hd47684794_))
                                                      (if (##null? _tl47694796_)
                                                          (_K47674791_
                                                           _path4799_)
                                                          (_try-match47644786_))))
                                                  (_try-match47644786_)))
                                            '()))
                                '#t))
                           (_out4803_
                            (if (fxzero? _phi4760_)
                                _out4801_
                                (cons 'phi:
                                      (cons _phi4760_ (cons _out4801_ '()))))))
                      (_lp4714_ _rest4737_ (cons _out4803_ _r4717_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out47394752_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e47444809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out47394752_ '1))
                        (_src4812_ _e47444809_)
                        (_e47454814_ (##vector-ref _out47394752_ '2))
                        (_phi4817_ _e47454814_))
                   (_K47434806_ _phi4817_ _src4812_))
                 (_E47424756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K47464826_
                                                 (lambda (_name4822_
                                                          _phi4823_
                                                          _key4824_)
                                                   (_lp4714_
                                                    _rest4737_
                                                    (cons (cons 'spec:
                                                                (cons _phi4823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4824_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4822_)
                                          '()))))
                  _r4717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out47394752_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e47474829_
                                                       (##vector-ref
                                                        _out47394752_
                                                        '1))
                                                      (_e47484832_
                                                       (##vector-ref
                                                        _out47394752_
                                                        '2))
                                                      (_key4835_ _e47484832_)
                                                      (_e47494837_
                                                       (##vector-ref
                                                        _out47394752_
                                                        '3))
                                                      (_phi4840_ _e47494837_)
                                                      (_e47504842_
                                                       (##vector-ref
                                                        _out47394752_
                                                        '4))
                                                      (_name4845_ _e47504842_))
                                                 (_K47464826_
                                                  _name4845_
                                                  _phi4840_
                                                  _key4835_))
                                               (_try-match47414819_))))))
                                 (if (##pair? _rest47184726_)
                                     (let ((_hd47234850_
                                            (##car _rest47184726_))
                                           (_tl47244852_
                                            (##cdr _rest47184726_)))
                                       (let* ((_out4855_ _hd47234850_)
                                              (_rest4857_ _tl47244852_))
                                         (_K47224847_ _rest4857_ _out4855_)))
                                     (_else47204734_)))))
                           _tl46854700_)))
                      (_g46804690_ _g46814693_)))))
          (_g46794859_ _stx4674_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4635_ _state4636_)
      (begin
        (gxc#meta-state-end-phi! _state4636_)
        (let* ((_g46384648_
                (lambda (_g46394645_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46394645_)))
               (_g46374671_
                (lambda (_g46394651_)
                  (if (gx#stx-pair? _g46394651_)
                      (let ((_e46414653_ (gx#stx-e _g46394651_)))
                        (let ((_hd46424656_ (##car _e46414653_))
                              (_tl46434658_ (##cdr _e46414653_)))
                          ((lambda (_L4661_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4661_)))
                           _tl46434658_)))
                      (_g46384648_ _g46394651_)))))
          (_g46374671_ _stx4635_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4506_ _state4507_)
      (letrec ((_generate14509_
                (lambda (_id4630_ _eid4631_)
                  (let ((_eid4633_ (gx#stx-e _eid4631_)))
                    (begin
                      (if (interned-symbol? _eid4633_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4506_
                           _eid4633_))
                      (cons (gxc#generate-runtime-identifier _id4630_)
                            (cons _eid4633_ '())))))))
        (let* ((_g45114539_
                (lambda (_g45124536_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45124536_)))
               (_g45104627_
                (lambda (_g45124542_)
                  (if (gx#stx-pair? _g45124542_)
                      (let ((_e45154544_ (gx#stx-e _g45124542_)))
                        (let ((_hd45164547_ (##car _e45154544_))
                              (_tl45174549_ (##cdr _e45154544_)))
                          (if (gx#stx-pair/null? _tl45174549_)
                              (if (fx>= (gx#stx-length _tl45174549_) '0)
                                  (let ((_g12133_
                                         (gx#syntax-split-splice
                                          _tl45174549_
                                          '0)))
                                    (begin
                                      (let ((_g12134_ (values-count _g12133_)))
                                        (if (not (fx= _g12134_ 2))
                                            (error "Context expects 2 values"
                                                   _g12134_)))
                                      (let ((_target45184552_
                                             (values-ref _g12133_ 0))
                                            (_tl45204554_
                                             (values-ref _g12133_ 1)))
                                        (if (gx#stx-null? _tl45204554_)
                                            (letrec ((_loop45214557_
                                                      (lambda (_hd45194560_
                                                               _eid45254562_
                                                               _id45264564_)
                                                        (if (gx#stx-pair?
                                                             _hd45194560_)
                                                            (let ((_e45224567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd45194560_)))
                      (let ((_lp-hd45234570_ (##car _e45224567_))
                            (_lp-tl45244572_ (##cdr _e45224567_)))
                        (if (gx#stx-pair? _lp-hd45234570_)
                            (let ((_e45294575_ (gx#stx-e _lp-hd45234570_)))
                              (let ((_hd45304578_ (##car _e45294575_))
                                    (_tl45314580_ (##cdr _e45294575_)))
                                (if (gx#stx-pair? _tl45314580_)
                                    (let ((_e45324583_
                                           (gx#stx-e _tl45314580_)))
                                      (let ((_hd45334586_ (##car _e45324583_))
                                            (_tl45344588_ (##cdr _e45324583_)))
                                        (if (gx#stx-null? _tl45344588_)
                                            (_loop45214557_
                                             _lp-tl45244572_
                                             (cons _hd45334586_ _eid45254562_)
                                             (cons _hd45304578_ _id45264564_))
                                            (_g45114539_ _g45124542_))))
                                    (_g45114539_ _g45124542_))))
                            (_g45114539_ _g45124542_))))
                    (let ((_eid45274591_ (reverse _eid45254562_))
                          (_id45284593_ (reverse _id45264564_)))
                      ((lambda (_L4596_ _L4597_)
                         (cons '%#extern
                               (map _generate14509_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g46124615_ _g46134617_)
                                                (cons _g46124615_ _g46134617_))
                                              '()
                                              _L4597_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g46194622_ _g46204624_)
                                                (cons _g46194622_ _g46204624_))
                                              '()
                                              _L4596_)))))
                       _eid45274591_
                       _id45284593_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop45214557_
                                               _target45184552_
                                               '()
                                               '()))
                                            (_g45114539_ _g45124542_)))))
                                  (_g45114539_ _g45124542_))
                              (_g45114539_ _g45124542_))))
                      (_g45114539_ _g45124542_)))))
          (_g45104627_ _stx4506_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4301_ _state4302_)
      (letrec ((_generate14304_
                (lambda (_id4501_)
                  (let ((_eid4503_ (gxc#generate-runtime-binding-id _id4501_))
                        (_ident4504_
                         (gxc#generate-runtime-identifier _id4501_)))
                    (cons '%#define-runtime
                          (cons _ident4504_ (cons _eid4503_ '()))))))
               (_generate*4305_
                (lambda (_all4469_)
                  (let* ((_all44704478_ _all4469_)
                         (_E44734482_
                          (lambda ()
                            (error '"No clause matching" _all44704478_)))
                         (_else44724486_ (lambda () (cons '%#begin _all4469_)))
                         (_K44744491_ (lambda (_one4489_) _one4489_)))
                    (if (##pair? _all44704478_)
                        (let ((_hd44754494_ (##car _all44704478_))
                              (_tl44764496_ (##cdr _all44704478_)))
                          (let ((_one4499_ _hd44754494_))
                            (if (##null? _tl44764496_)
                                (_K44744491_ _one4499_)
                                (_else44724486_))))
                        (_else44724486_))))))
        (let* ((_g43074324_
                (lambda (_g43084321_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43084321_)))
               (_g43064466_
                (lambda (_g43084327_)
                  (if (gx#stx-pair? _g43084327_)
                      (let ((_e43114329_ (gx#stx-e _g43084327_)))
                        (let ((_hd43124332_ (##car _e43114329_))
                              (_tl43134334_ (##cdr _e43114329_)))
                          (if (gx#stx-pair? _tl43134334_)
                              (let ((_e43144337_ (gx#stx-e _tl43134334_)))
                                (let ((_hd43154340_ (##car _e43144337_))
                                      (_tl43164342_ (##cdr _e43144337_)))
                                  (if (gx#stx-pair? _tl43164342_)
                                      (let ((_e43174345_
                                             (gx#stx-e _tl43164342_)))
                                        (let ((_hd43184348_
                                               (##car _e43174345_))
                                              (_tl43194350_
                                               (##cdr _e43174345_)))
                                          (if (gx#stx-null? _tl43194350_)
                                              ((lambda (_L4353_ _L4354_)
                                                 (let _lp4370_ ((_rest4372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4354_)
                        (_r4373_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g43784394_
                                                           (lambda (_g43794391_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g43794391_)))
                                                          (_g43774401_
                                                           (lambda (_g43794397_)
                                                             ((lambda ()
                                                                (_generate*4305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4373_))))))
                  (_g43764417_
                   (lambda (_g43794404_)
                     ((lambda (_L4406_)
                        (if (gx#identifier? _L4406_)
                            (_generate*4305_
                             (foldl1 cons
                                     (cons (_generate14304_ _L4406_) '())
                                     _r4373_))
                            (_g43774401_ _g43794404_)))
                      _g43794404_)))
                  (_g43754441_
                   (lambda (_g43794420_)
                     (if (gx#stx-pair? _g43794420_)
                         (let ((_e43864422_ (gx#stx-e _g43794420_)))
                           (let ((_hd43874425_ (##car _e43864422_))
                                 (_tl43884427_ (##cdr _e43864422_)))
                             ((lambda (_L4430_ _L4431_)
                                (_lp4370_
                                 _L4430_
                                 (cons (_generate14304_ _L4431_) _r4373_)))
                              _tl43884427_
                              _hd43874425_)))
                         (_g43764417_ _g43794420_))))
                  (_g43744463_
                   (lambda (_g43794444_)
                     (if (gx#stx-pair? _g43794444_)
                         (let ((_e43814446_ (gx#stx-e _g43794444_)))
                           (let ((_hd43824449_ (##car _e43814446_))
                                 (_tl43834451_ (##cdr _e43814446_)))
                             (if (gx#stx-datum? _hd43824449_)
                                 (if (equal? (gx#stx-e _hd43824449_) '#f)
                                     ((lambda (_L4454_)
                                        (_lp4370_ _L4454_ _r4373_))
                                      _tl43834451_)
                                     (_g43754441_ _g43794444_))
                                 (_g43754441_ _g43794444_))))
                         (_g43754441_ _g43794444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43744463_
                                                      _rest4372_))))
                                               _hd43184348_
                                               _hd43154340_)
                                              (_g43074324_ _g43084327_))))
                                      (_g43074324_ _g43084327_))))
                              (_g43074324_ _g43084327_))))
                      (_g43074324_ _g43084327_)))))
          (_g43064466_ _stx4301_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4198_ _state4199_)
      (let* ((_g42014218_
              (lambda (_g42024215_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42024215_)))
             (_g42004298_
              (lambda (_g42024221_)
                (if (gx#stx-pair? _g42024221_)
                    (let ((_e42054223_ (gx#stx-e _g42024221_)))
                      (let ((_hd42064226_ (##car _e42054223_))
                            (_tl42074228_ (##cdr _e42054223_)))
                        (if (gx#stx-pair? _tl42074228_)
                            (let ((_e42084231_ (gx#stx-e _tl42074228_)))
                              (let ((_hd42094234_ (##car _e42084231_))
                                    (_tl42104236_ (##cdr _e42084231_)))
                                (if (gx#stx-pair? _tl42104236_)
                                    (let ((_e42114239_
                                           (gx#stx-e _tl42104236_)))
                                      (let ((_hd42124242_ (##car _e42114239_))
                                            (_tl42134244_ (##cdr _e42114239_)))
                                        (if (gx#stx-null? _tl42134244_)
                                            ((lambda (_L4247_ _L4248_)
                                               (let* ((_eid4263_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4248_))
                                                      (_phi4265_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4267_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4199_
                                                        _phi4265_)))
                                                 (begin
                                                   (let* ((_g42704277_
                                                           (lambda (_g42714274_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g42714274_)))
                                                          (_g42694295_
                                                           (lambda (_g42714280_)
                                                             ((lambda (_L4282_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4199_
                           _phi4265_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4282_ (cons _L4247_ '()))))))
                      _g42714280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42694295_ _eid4263_))
                                                   (if _block4267_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4248_)
                                             (cons _eid4263_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4248_)
                           (cons _eid4263_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd42124242_
                                             _hd42094234_)
                                            (_g42014218_ _g42024221_))))
                                    (_g42014218_ _g42024221_))))
                            (_g42014218_ _g42024221_))))
                    (_g42014218_ _g42024221_)))))
        (_g42004298_ _stx4198_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4130_ _state4131_)
      (let* ((_g41334150_
              (lambda (_g41344147_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41344147_)))
             (_g41324195_
              (lambda (_g41344153_)
                (if (gx#stx-pair? _g41344153_)
                    (let ((_e41374155_ (gx#stx-e _g41344153_)))
                      (let ((_hd41384158_ (##car _e41374155_))
                            (_tl41394160_ (##cdr _e41374155_)))
                        (if (gx#stx-pair? _tl41394160_)
                            (let ((_e41404163_ (gx#stx-e _tl41394160_)))
                              (let ((_hd41414166_ (##car _e41404163_))
                                    (_tl41424168_ (##cdr _e41404163_)))
                                (if (gx#stx-pair? _tl41424168_)
                                    (let ((_e41434171_
                                           (gx#stx-e _tl41424168_)))
                                      (let ((_hd41444174_ (##car _e41434171_))
                                            (_tl41454176_ (##cdr _e41434171_)))
                                        (if (gx#stx-null? _tl41454176_)
                                            ((lambda (_L4179_ _L4180_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4180_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4179_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd41444174_
                                             _hd41414166_)
                                            (_g41334150_ _g41344153_))))
                                    (_g41334150_ _g41344153_))))
                            (_g41334150_ _g41344153_))))
                    (_g41334150_ _g41344153_)))))
        (_g41324195_ _stx4130_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4127_ _state4128_)
      (begin
        (gxc#meta-state-add-phi!
         _state4128_
         (gx#current-expander-phi)
         _stx4127_)
        (gxc#generate-meta-define-values% _stx4127_ _state4128_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4124_ _state4125_)
      (begin
        (gxc#meta-state-add-phi!
         _state4125_
         (gx#current-expander-phi)
         _stx4124_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type
     'gxc#meta-state::t
     '#f
     '4
     'meta-state
     '()
     ':init!
     '(src n open blocks)))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args4121_
      (apply make-struct-instance gxc#meta-state::t _$args4121_)))
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
    (lambda (_self4118_ _ctx4119_)
      (if (##fx< '4 (##vector-length _self4118_))
          (begin
            (##vector-set!
             _self4118_
             '1
             (symbol->string
              (##structure-ref _ctx4119_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4118_ '2 '1)
            (##vector-set! _self4118_ '3 (make-hash-table-eq))
            (##vector-set! _self4118_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4118_))))
  (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
  (define gxc#meta-state-block::t
    (make-struct-type
     'gxc#meta-state-block::t
     '#f
     '4
     'meta-state-block
     '()
     '#f
     '(ctx phi n code)))
  (define gxc#meta-state-block?
    (make-struct-predicate gxc#meta-state-block::t))
  (define gxc#make-meta-state-block
    (lambda _$args3993_
      (apply make-struct-instance gxc#meta-state-block::t _$args3993_)))
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
    (lambda (_state3952_ _phi3953_)
      (let* ((_state39543962_ _state3952_)
             (_E39563966_
              (lambda () (error '"No clause matching" _state39543962_)))
             (_K39573975_
              (lambda (_open3969_ _n3970_ _src3971_)
                (if (table-ref _open3969_ _phi3953_ '#f)
                    '#f
                    (let ((_block-ref3973_
                           (string-append
                            _src3971_
                            '"__"
                            (number->string _n3970_))))
                      (begin
                        (##structure-set!
                         _state3952_
                         (fx+ _n3970_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3969_
                         _phi3953_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3953_
                          _n3970_
                          '()))
                        _block-ref3973_))))))
        (if (##structure-instance-of?
             _state39543962_
             (##type-id gxc#meta-state::t))
            (let* ((_e39583978_ (##vector-ref _state39543962_ '1))
                   (_src3981_ _e39583978_)
                   (_e39593983_ (##vector-ref _state39543962_ '2))
                   (_n3986_ _e39593983_)
                   (_e39603988_ (##vector-ref _state39543962_ '3))
                   (_open3991_ _e39603988_))
              (_K39573975_ _open3991_ _n3986_ _src3981_))
            (_E39563966_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3946_ _phi3947_ _stx3948_)
      (let ((_block3950_
             (table-ref
              (##structure-ref _state3946_ '3 gxc#meta-state::t '#f)
              _phi3947_
              '#f)))
        (##structure-set!
         _block3950_
         (cons _stx3948_
               (##structure-ref _block3950_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3941_)
      (begin
        (##structure-set!
         _state3941_
         (hash-fold
          (lambda (_g12135_ _block3943_ _r3944_) (cons _block3943_ _r3944_))
          (##structure-ref _state3941_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3941_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3941_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3893_)
      (begin
        (gxc#meta-state-end-phi! _state3893_)
        (foldl1 (lambda (_block3895_ _r3896_)
                  (let* ((_block38973906_ _block3895_)
                         (_E38993910_
                          (lambda ()
                            (error '"No clause matching" _block38973906_)))
                         (_K39003918_
                          (lambda (_code3913_ _n3914_ _phi3915_ _ctx3916_)
                            (if (null? _code3913_)
                                _r3896_
                                (cons (cons _ctx3916_
                                            (cons _phi3915_
                                                  (cons _n3914_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3913_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3896_)))))
                    (if (##structure-instance-of?
                         _block38973906_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e39013921_ (##vector-ref _block38973906_ '1))
                               (_ctx3924_ _e39013921_)
                               (_e39023926_ (##vector-ref _block38973906_ '2))
                               (_phi3929_ _e39023926_)
                               (_e39033931_ (##vector-ref _block38973906_ '3))
                               (_n3934_ _e39033931_)
                               (_e39043936_ (##vector-ref _block38973906_ '4))
                               (_code3939_ _e39043936_))
                          (_K39003918_ _code3939_ _n3934_ _phi3929_ _ctx3924_))
                        (_E38993910_))))
                '()
                (##structure-ref _state3893_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3889_)
      (let ((_ht3891_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3889_ _ht3891_)
          _ht3891_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3832_ _ht3833_)
      (let* ((_g38353848_
              (lambda (_g38363845_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38363845_)))
             (_g38343886_
              (lambda (_g38363851_)
                (if (gx#stx-pair? _g38363851_)
                    (let ((_e38383853_ (gx#stx-e _g38363851_)))
                      (let ((_hd38393856_ (##car _e38383853_))
                            (_tl38403858_ (##cdr _e38383853_)))
                        (if (gx#stx-pair? _tl38403858_)
                            (let ((_e38413861_ (gx#stx-e _tl38403858_)))
                              (let ((_hd38423864_ (##car _e38413861_))
                                    (_tl38433866_ (##cdr _e38413861_)))
                                (if (gx#stx-null? _tl38433866_)
                                    ((lambda (_L3869_)
                                       (let* ((_bind3881_
                                               (gx#resolve-identifier__0
                                                _L3869_))
                                              (_eid3883_
                                               (if _bind3881_
                                                   (##structure-ref
                                                    _bind3881_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3869_))))
                                         (table-set!
                                          _ht3833_
                                          _eid3883_
                                          _eid3883_)))
                                     _hd38423864_)
                                    (_g38353848_ _g38363851_))))
                            (_g38353848_ _g38363851_))))
                    (_g38353848_ _g38363851_)))))
        (_g38343886_ _stx3832_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3759_ _ht3760_)
      (let* ((_g37623779_
              (lambda (_g37633776_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37633776_)))
             (_g37613829_
              (lambda (_g37633782_)
                (if (gx#stx-pair? _g37633782_)
                    (let ((_e37663784_ (gx#stx-e _g37633782_)))
                      (let ((_hd37673787_ (##car _e37663784_))
                            (_tl37683789_ (##cdr _e37663784_)))
                        (if (gx#stx-pair? _tl37683789_)
                            (let ((_e37693792_ (gx#stx-e _tl37683789_)))
                              (let ((_hd37703795_ (##car _e37693792_))
                                    (_tl37713797_ (##cdr _e37693792_)))
                                (if (gx#stx-pair? _tl37713797_)
                                    (let ((_e37723800_
                                           (gx#stx-e _tl37713797_)))
                                      (let ((_hd37733803_ (##car _e37723800_))
                                            (_tl37743805_ (##cdr _e37723800_)))
                                        (if (gx#stx-null? _tl37743805_)
                                            ((lambda (_L3808_ _L3809_)
                                               (let* ((_bind3824_
                                                       (gx#resolve-identifier__0
                                                        _L3809_))
                                                      (_eid3826_
                                                       (if _bind3824_
                                                           (##structure-ref
                                                            _bind3824_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3809_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3760_
                                                    _eid3826_
                                                    _eid3826_)
                                                   (gxc#compile-e
                                                    _L3808_
                                                    _ht3760_))))
                                             _hd37733803_
                                             _hd37703795_)
                                            (_g37623779_ _g37633782_))))
                                    (_g37623779_ _g37633782_))))
                            (_g37623779_ _g37633782_))))
                    (_g37623779_ _g37633782_)))))
        (_g37613829_ _stx3759_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3721_)
      (let* ((_g37233733_
              (lambda (_g37243730_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37243730_)))
             (_g37223756_
              (lambda (_g37243736_)
                (if (gx#stx-pair? _g37243736_)
                    (let ((_e37263738_ (gx#stx-e _g37243736_)))
                      (let ((_hd37273741_ (##car _e37263738_))
                            (_tl37283743_ (##cdr _e37263738_)))
                        ((lambda (_L3746_) (ormap1 gxc#compile-e _L3746_))
                         _tl37283743_)))
                    (_g37233733_ _g37243736_)))))
        (_g37223756_ _stx3721_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3683_)
      (let* ((_g36853695_
              (lambda (_g36863692_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36863692_)))
             (_g36843718_
              (lambda (_g36863698_)
                (if (gx#stx-pair? _g36863698_)
                    (let ((_e36883700_ (gx#stx-e _g36863698_)))
                      (let ((_hd36893703_ (##car _e36883700_))
                            (_tl36903705_ (##cdr _e36883700_)))
                        ((lambda (_L3708_) (gxc#compile-e (last _L3708_)))
                         _tl36903705_)))
                    (_g36853695_ _g36863698_)))))
        (_g36843718_ _stx3683_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3616_)
      (let* ((_g36183635_
              (lambda (_g36193632_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36193632_)))
             (_g36173680_
              (lambda (_g36193638_)
                (if (gx#stx-pair? _g36193638_)
                    (let ((_e36223640_ (gx#stx-e _g36193638_)))
                      (let ((_hd36233643_ (##car _e36223640_))
                            (_tl36243645_ (##cdr _e36223640_)))
                        (if (gx#stx-pair? _tl36243645_)
                            (let ((_e36253648_ (gx#stx-e _tl36243645_)))
                              (let ((_hd36263651_ (##car _e36253648_))
                                    (_tl36273653_ (##cdr _e36253648_)))
                                (if (gx#stx-pair? _tl36273653_)
                                    (let ((_e36283656_
                                           (gx#stx-e _tl36273653_)))
                                      (let ((_hd36293659_ (##car _e36283656_))
                                            (_tl36303661_ (##cdr _e36283656_)))
                                        (if (gx#stx-null? _tl36303661_)
                                            ((lambda (_L3664_ _L3665_)
                                               (gxc#compile-e _L3664_))
                                             _hd36293659_
                                             _hd36263651_)
                                            (_g36183635_ _g36193638_))))
                                    (_g36183635_ _g36193638_))))
                            (_g36183635_ _g36193638_))))
                    (_g36183635_ _g36193638_)))))
        (_g36173680_ _stx3616_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3549_)
      (let* ((_g35513568_
              (lambda (_g35523565_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35523565_)))
             (_g35503613_
              (lambda (_g35523571_)
                (if (gx#stx-pair? _g35523571_)
                    (let ((_e35553573_ (gx#stx-e _g35523571_)))
                      (let ((_hd35563576_ (##car _e35553573_))
                            (_tl35573578_ (##cdr _e35553573_)))
                        (if (gx#stx-pair? _tl35573578_)
                            (let ((_e35583581_ (gx#stx-e _tl35573578_)))
                              (let ((_hd35593584_ (##car _e35583581_))
                                    (_tl35603586_ (##cdr _e35583581_)))
                                (if (gx#stx-pair? _tl35603586_)
                                    (let ((_e35613589_
                                           (gx#stx-e _tl35603586_)))
                                      (let ((_hd35623592_ (##car _e35613589_))
                                            (_tl35633594_ (##cdr _e35613589_)))
                                        (if (gx#stx-null? _tl35633594_)
                                            ((lambda (_L3597_ _L3598_)
                                               (gxc#compile-e _L3597_))
                                             _hd35623592_
                                             _hd35593584_)
                                            (_g35513568_ _g35523571_))))
                                    (_g35513568_ _g35523571_))))
                            (_g35513568_ _g35523571_))))
                    (_g35513568_ _g35523571_)))))
        (_g35503613_ _stx3549_)))))
