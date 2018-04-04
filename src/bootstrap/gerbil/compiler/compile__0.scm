(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#current-compile-identifiers (make-parameter '#f))
  (define gxc#make-bound-identifier-table
    (lambda ()
      (letrec ((_hash-e14450_
                (lambda (_id14452_) (symbol-hash (gx#stx-e _id14452_)))))
        (make-table 'test: gx#bound-identifier=? 'hash: _hash-e14450_))))
  (define gxc#compile-e
    (lambda (_stx14405_ . _args14406_)
      (let* ((_g1440814418_
              (lambda (_g1440914415_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1440914415_)))
             (_g1440714446_
              (lambda (_g1440914421_)
                (if (gx#stx-pair? _g1440914421_)
                    (let ((_e1441114423_ (gx#stx-e _g1440914421_)))
                      (let ((_hd1441214426_ (##car _e1441114423_))
                            (_tl1441314428_ (##cdr _e1441114423_)))
                        ((lambda (_L14431_)
                           (let ((_$e14441_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L14431_)
                                   '#f)))
                             (if _$e14441_
                                 ((lambda (_method14444_)
                                    (apply _method14444_
                                           _stx14405_
                                           _args14406_))
                                  _$e14441_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx14405_
                                  _L14431_))))
                         _hd1441214426_)))
                    (_g1440814418_ _g1440914421_)))))
        (_g1440714446_ _stx14405_))))
  (define gxc#&void-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14402_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14402_ '%#begin-annotation void)
           (table-set! _tbl14402_ '%#lambda void)
           (table-set! _tbl14402_ '%#case-lambda void)
           (table-set! _tbl14402_ '%#let-values void)
           (table-set! _tbl14402_ '%#letrec-values void)
           (table-set! _tbl14402_ '%#letrec*-values void)
           (table-set! _tbl14402_ '%#quote void)
           (table-set! _tbl14402_ '%#quote-syntax void)
           (table-set! _tbl14402_ '%#call void)
           (table-set! _tbl14402_ '%#if void)
           (table-set! _tbl14402_ '%#ref void)
           (table-set! _tbl14402_ '%#set! void)
           (table-set! _tbl14402_ '%#struct-instance? void)
           (table-set! _tbl14402_ '%#struct-direct-instance? void)
           (table-set! _tbl14402_ '%#struct-ref void)
           (table-set! _tbl14402_ '%#struct-set! void)
           (table-set! _tbl14402_ '%#struct-direct-ref void)
           (table-set! _tbl14402_ '%#struct-direct-set! void)
           (table-set! _tbl14402_ '%#struct-unchecked-ref void)
           (table-set! _tbl14402_ '%#struct-unchecked-set! void)
           _tbl14402_)))))
  (define gxc#&void-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14398_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14398_ '%#begin void)
           (table-set! _tbl14398_ '%#begin-syntax void)
           (table-set! _tbl14398_ '%#begin-foreign void)
           (table-set! _tbl14398_ '%#module void)
           (table-set! _tbl14398_ '%#import void)
           (table-set! _tbl14398_ '%#export void)
           (table-set! _tbl14398_ '%#provide void)
           (table-set! _tbl14398_ '%#extern void)
           (table-set! _tbl14398_ '%#define-values void)
           (table-set! _tbl14398_ '%#define-syntax void)
           (table-set! _tbl14398_ '%#define-alias void)
           (table-set! _tbl14398_ '%#declare void)
           _tbl14398_)))))
  (define gxc#&void
    (##make-promise
     (lambda ()
       (let ((_tbl14394_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14394_ (force gxc#&void-special-form))
           (hash-copy! _tbl14394_ (force gxc#&void-expression))
           _tbl14394_)))))
  (define gxc#&false-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14390_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14390_ '%#begin-annotation false)
           (table-set! _tbl14390_ '%#lambda false)
           (table-set! _tbl14390_ '%#case-lambda false)
           (table-set! _tbl14390_ '%#let-values false)
           (table-set! _tbl14390_ '%#letrec-values false)
           (table-set! _tbl14390_ '%#letrec*-values false)
           (table-set! _tbl14390_ '%#quote false)
           (table-set! _tbl14390_ '%#quote-syntax false)
           (table-set! _tbl14390_ '%#call false)
           (table-set! _tbl14390_ '%#if false)
           (table-set! _tbl14390_ '%#ref false)
           (table-set! _tbl14390_ '%#set! false)
           (table-set! _tbl14390_ '%#struct-instance? false)
           (table-set! _tbl14390_ '%#struct-direct-instance? false)
           (table-set! _tbl14390_ '%#struct-ref false)
           (table-set! _tbl14390_ '%#struct-set! false)
           (table-set! _tbl14390_ '%#struct-direct-ref false)
           (table-set! _tbl14390_ '%#struct-direct-set! false)
           (table-set! _tbl14390_ '%#struct-unchecked-ref false)
           (table-set! _tbl14390_ '%#struct-unchecked-set! false)
           _tbl14390_)))))
  (define gxc#&false-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl14386_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14386_ '%#begin false)
           (table-set! _tbl14386_ '%#begin-syntax false)
           (table-set! _tbl14386_ '%#begin-foreign false)
           (table-set! _tbl14386_ '%#module false)
           (table-set! _tbl14386_ '%#import false)
           (table-set! _tbl14386_ '%#export false)
           (table-set! _tbl14386_ '%#provide false)
           (table-set! _tbl14386_ '%#extern false)
           (table-set! _tbl14386_ '%#define-values false)
           (table-set! _tbl14386_ '%#define-syntax false)
           (table-set! _tbl14386_ '%#define-alias false)
           (table-set! _tbl14386_ '%#declare false)
           _tbl14386_)))))
  (define gxc#&false
    (##make-promise
     (lambda ()
       (let ((_tbl14382_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14382_ (force gxc#&false-special-form))
           (hash-copy! _tbl14382_ (force gxc#&false-expression))
           _tbl14382_)))))
  (define gxc#&collect-bindings
    (##make-promise
     (lambda ()
       (let ((_tbl14378_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14378_ (force gxc#&void-expression))
           (hash-copy! _tbl14378_ (force gxc#&void-special-form))
           (table-set! _tbl14378_ '%#begin gxc#collect-begin%)
           (table-set! _tbl14378_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl14378_ '%#module gxc#collect-module%)
           (table-set!
            _tbl14378_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl14378_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl14378_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx14371_ . _args14373_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14371_ _args14373_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (##make-promise
     (lambda ()
       (let ((_tbl14368_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14368_ (force gxc#&void))
           (table-set! _tbl14368_ '%#begin gxc#collect-begin%)
           (table-set! _tbl14368_ '%#module gxc#lift-modules-module%)
           _tbl14368_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx14361_ . _args14363_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14361_ _args14363_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (##make-promise
     (lambda ()
       (let ((_tbl14358_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14358_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl14358_ '%#begin-syntax false)
           (table-set! _tbl14358_ '%#begin-foreign true)
           (table-set! _tbl14358_ '%#begin-annotation true)
           (table-set! _tbl14358_ '%#module false)
           (table-set! _tbl14358_ '%#import false)
           (table-set! _tbl14358_ '%#export false)
           (table-set! _tbl14358_ '%#provide false)
           (table-set! _tbl14358_ '%#extern false)
           (table-set! _tbl14358_ '%#define-values true)
           (table-set! _tbl14358_ '%#define-syntax false)
           (table-set! _tbl14358_ '%#define-alias false)
           (table-set! _tbl14358_ '%#declare false)
           (table-set! _tbl14358_ '%#lambda true)
           (table-set! _tbl14358_ '%#case-lambda true)
           (table-set! _tbl14358_ '%#let-values true)
           (table-set! _tbl14358_ '%#letrec-values true)
           (table-set! _tbl14358_ '%#letrec*-values true)
           (table-set! _tbl14358_ '%#quote true)
           (table-set! _tbl14358_ '%#call true)
           (table-set! _tbl14358_ '%#if true)
           (table-set! _tbl14358_ '%#ref true)
           (table-set! _tbl14358_ '%#set! true)
           (table-set! _tbl14358_ '%#struct-instance? true)
           (table-set! _tbl14358_ '%#struct-direct-instance? true)
           (table-set! _tbl14358_ '%#struct-ref true)
           (table-set! _tbl14358_ '%#struct-set! true)
           (table-set! _tbl14358_ '%#struct-direct-ref true)
           (table-set! _tbl14358_ '%#struct-direct-set! true)
           (table-set! _tbl14358_ '%#struct-unchecked-ref true)
           (table-set! _tbl14358_ '%#struct-unchecked-set! true)
           _tbl14358_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx14351_ . _args14353_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14351_ _args14353_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (##make-promise
     (lambda ()
       (let ((_tbl14348_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14348_ (force gxc#&false))
           (table-set! _tbl14348_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl14348_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl14348_ '%#lambda values)
           (table-set! _tbl14348_ '%#case-lambda values)
           (table-set!
            _tbl14348_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl14348_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl14348_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl14348_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx14341_ . _args14343_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14341_ _args14343_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (##make-promise
     (lambda ()
       (let ((_tbl14338_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14338_ (force gxc#&false-expression))
           (table-set! _tbl14338_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl14338_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl14338_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl14338_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl14338_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl14338_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl14338_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl14338_ '%#quote gxc#count-values-single%)
           (table-set! _tbl14338_ '%#call gxc#count-values-call%)
           (table-set! _tbl14338_ '%#if gxc#count-values-if%)
           _tbl14338_)))))
  (define gxc#apply-count-values
    (lambda (_stx14331_ . _args14333_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14331_ _args14333_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (##make-promise
     (lambda ()
       (let ((_tbl14328_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14328_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl14328_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl14328_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl14328_)))))
  (define gxc#&generate-loader
    (##make-promise
     (lambda ()
       (let ((_tbl14324_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14324_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl14324_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl14324_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl14324_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx14317_ . _args14319_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14317_ _args14319_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (##make-promise
     (lambda ()
       (let ((_tbl14314_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14314_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl14314_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl14314_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl14314_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl14314_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl14314_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl14314_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl14314_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl14314_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl14314_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl14314_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl14314_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl14314_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl14314_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl14314_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl14314_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl14314_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl14314_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl14314_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl14314_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl14314_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl14314_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl14314_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl14314_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl14314_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl14314_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx14307_ . _args14309_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14307_ _args14309_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14304_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14304_ (force gxc#&generate-runtime))
           (table-set!
            _tbl14304_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl14304_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx14297_ . _args14299_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14297_ _args14299_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (##make-promise
     (lambda ()
       (let ((_tbl14294_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14294_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl14294_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl14294_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl14294_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl14294_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl14294_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl14294_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl14294_ '%#quote void)
           (table-set! _tbl14294_ '%#quote-syntax void)
           (table-set! _tbl14294_ '%#call gxc#collect-operands)
           (table-set! _tbl14294_ '%#if gxc#collect-operands)
           (table-set! _tbl14294_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl14294_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl14294_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl14294_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl14294_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl14294_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl14294_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl14294_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl14294_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl14294_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl14294_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx14287_ . _args14289_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14287_ _args14289_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (##make-promise
     (lambda ()
       (let ((_tbl14284_ (make-table 'test: eq?)))
         (begin
           (hash-copy! _tbl14284_ (force gxc#&void-expression))
           (table-set! _tbl14284_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl14284_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl14284_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl14284_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl14284_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl14284_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl14284_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl14284_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl14284_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl14284_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl14284_ '%#begin-foreign void)
           (table-set! _tbl14284_ '%#declare void)
           _tbl14284_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx14277_ . _args14279_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14277_ _args14279_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (##make-promise
     (lambda ()
       (let ((_tbl14274_ (make-table 'test: eq?)))
         (begin
           (table-set! _tbl14274_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl14274_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl14274_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl14274_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl14274_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl14274_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14274_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14274_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14274_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14274_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14274_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl14274_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl14274_ '%#declare void)
           _tbl14274_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx14267_ . _args14269_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx14267_ _args14269_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx14224_ . _args14225_)
      (let* ((_g1422714237_
              (lambda (_g1422814234_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1422814234_)))
             (_g1422614264_
              (lambda (_g1422814240_)
                (if (gx#stx-pair? _g1422814240_)
                    (let ((_e1423014242_ (gx#stx-e _g1422814240_)))
                      (let ((_hd1423114245_ (##car _e1423014242_))
                            (_tl1423214247_ (##cdr _e1423014242_)))
                        ((lambda (_L14250_)
                           (for-each
                            (lambda (_g1425914261_)
                              (apply gxc#compile-e _g1425914261_ _args14225_))
                            (gx#stx-e _L14250_)))
                         _tl1423214247_)))
                    (_g1422714237_ _g1422814240_)))))
        (_g1422614264_ _stx14224_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx14220_ . _args14221_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx14220_ _args14221_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx14162_ . _args14163_)
      (let* ((_g1416514179_
              (lambda (_g1416614176_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1416614176_)))
             (_g1416414217_
              (lambda (_g1416614182_)
                (if (gx#stx-pair? _g1416614182_)
                    (let ((_e1416914184_ (gx#stx-e _g1416614182_)))
                      (let ((_hd1417014187_ (##car _e1416914184_))
                            (_tl1417114189_ (##cdr _e1416914184_)))
                        (if (gx#stx-pair? _tl1417114189_)
                            (let ((_e1417214192_ (gx#stx-e _tl1417114189_)))
                              (let ((_hd1417314195_ (##car _e1417214192_))
                                    (_tl1417414197_ (##cdr _e1417214192_)))
                                ((lambda (_L14200_ _L14201_)
                                   (let ((_ctx14214_
                                          (gx#syntax-local-e__0 _L14201_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx14214_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args14163_))
                                      gx#current-expander-context
                                      _ctx14214_)))
                                 _tl1417414197_
                                 _hd1417314195_)))
                            (_g1416514179_ _g1416614182_))))
                    (_g1416514179_ _g1416614182_)))))
        (_g1416414217_ _stx14162_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx14094_ . _args14095_)
      (let* ((_g1409714114_
              (lambda (_g1409814111_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1409814111_)))
             (_g1409614159_
              (lambda (_g1409814117_)
                (if (gx#stx-pair? _g1409814117_)
                    (let ((_e1410114119_ (gx#stx-e _g1409814117_)))
                      (let ((_hd1410214122_ (##car _e1410114119_))
                            (_tl1410314124_ (##cdr _e1410114119_)))
                        (if (gx#stx-pair? _tl1410314124_)
                            (let ((_e1410414127_ (gx#stx-e _tl1410314124_)))
                              (let ((_hd1410514130_ (##car _e1410414127_))
                                    (_tl1410614132_ (##cdr _e1410414127_)))
                                (if (gx#stx-pair? _tl1410614132_)
                                    (let ((_e1410714135_
                                           (gx#stx-e _tl1410614132_)))
                                      (let ((_hd1410814138_
                                             (##car _e1410714135_))
                                            (_tl1410914140_
                                             (##cdr _e1410714135_)))
                                        (if (gx#stx-null? _tl1410914140_)
                                            ((lambda (_L14143_ _L14144_)
                                               (apply gxc#compile-e
                                                      _L14143_
                                                      _args14095_))
                                             _hd1410814138_
                                             _hd1410514130_)
                                            (_g1409714114_ _g1409814117_))))
                                    (_g1409714114_ _g1409814117_))))
                            (_g1409714114_ _g1409814117_))))
                    (_g1409714114_ _g1409814117_)))))
        (_g1409614159_ _stx14094_))))
  (define gxc#collect-define-values%
    (lambda (_stx14026_ . _args14027_)
      (let* ((_g1402914046_
              (lambda (_g1403014043_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1403014043_)))
             (_g1402814091_
              (lambda (_g1403014049_)
                (if (gx#stx-pair? _g1403014049_)
                    (let ((_e1403314051_ (gx#stx-e _g1403014049_)))
                      (let ((_hd1403414054_ (##car _e1403314051_))
                            (_tl1403514056_ (##cdr _e1403314051_)))
                        (if (gx#stx-pair? _tl1403514056_)
                            (let ((_e1403614059_ (gx#stx-e _tl1403514056_)))
                              (let ((_hd1403714062_ (##car _e1403614059_))
                                    (_tl1403814064_ (##cdr _e1403614059_)))
                                (if (gx#stx-pair? _tl1403814064_)
                                    (let ((_e1403914067_
                                           (gx#stx-e _tl1403814064_)))
                                      (let ((_hd1404014070_
                                             (##car _e1403914067_))
                                            (_tl1404114072_
                                             (##cdr _e1403914067_)))
                                        (if (gx#stx-null? _tl1404114072_)
                                            ((lambda (_L14075_ _L14076_)
                                               (apply gxc#compile-e
                                                      _L14075_
                                                      _args14027_))
                                             _hd1404014070_
                                             _hd1403714062_)
                                            (_g1402914046_ _g1403014049_))))
                                    (_g1402914046_ _g1403014049_))))
                            (_g1402914046_ _g1403014049_))))
                    (_g1402914046_ _g1403014049_)))))
        (_g1402814091_ _stx14026_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx13957_ . _args13958_)
      (let* ((_g1396013977_
              (lambda (_g1396113974_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1396113974_)))
             (_g1395914023_
              (lambda (_g1396113980_)
                (if (gx#stx-pair? _g1396113980_)
                    (let ((_e1396413982_ (gx#stx-e _g1396113980_)))
                      (let ((_hd1396513985_ (##car _e1396413982_))
                            (_tl1396613987_ (##cdr _e1396413982_)))
                        (if (gx#stx-pair? _tl1396613987_)
                            (let ((_e1396713990_ (gx#stx-e _tl1396613987_)))
                              (let ((_hd1396813993_ (##car _e1396713990_))
                                    (_tl1396913995_ (##cdr _e1396713990_)))
                                (if (gx#stx-pair? _tl1396913995_)
                                    (let ((_e1397013998_
                                           (gx#stx-e _tl1396913995_)))
                                      (let ((_hd1397114001_
                                             (##car _e1397013998_))
                                            (_tl1397214003_
                                             (##cdr _e1397013998_)))
                                        (if (gx#stx-null? _tl1397214003_)
                                            ((lambda (_L14006_ _L14007_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L14006_
                                                         _args13958_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1397114001_
                                             _hd1396813993_)
                                            (_g1396013977_ _g1396113980_))))
                                    (_g1396013977_ _g1396113980_))))
                            (_g1396013977_ _g1396113980_))))
                    (_g1396013977_ _g1396113980_)))))
        (_g1395914023_ _stx13957_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx13889_ . _args13890_)
      (let* ((_g1389213909_
              (lambda (_g1389313906_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1389313906_)))
             (_g1389113954_
              (lambda (_g1389313912_)
                (if (gx#stx-pair? _g1389313912_)
                    (let ((_e1389613914_ (gx#stx-e _g1389313912_)))
                      (let ((_hd1389713917_ (##car _e1389613914_))
                            (_tl1389813919_ (##cdr _e1389613914_)))
                        (if (gx#stx-pair? _tl1389813919_)
                            (let ((_e1389913922_ (gx#stx-e _tl1389813919_)))
                              (let ((_hd1390013925_ (##car _e1389913922_))
                                    (_tl1390113927_ (##cdr _e1389913922_)))
                                (if (gx#stx-pair? _tl1390113927_)
                                    (let ((_e1390213930_
                                           (gx#stx-e _tl1390113927_)))
                                      (let ((_hd1390313933_
                                             (##car _e1390213930_))
                                            (_tl1390413935_
                                             (##cdr _e1390213930_)))
                                        (if (gx#stx-null? _tl1390413935_)
                                            ((lambda (_L13938_ _L13939_)
                                               (apply gxc#compile-e
                                                      _L13938_
                                                      _args13890_))
                                             _hd1390313933_
                                             _hd1390013925_)
                                            (_g1389213909_ _g1389313912_))))
                                    (_g1389213909_ _g1389313912_))))
                            (_g1389213909_ _g1389313912_))))
                    (_g1389213909_ _g1389313912_)))))
        (_g1389113954_ _stx13889_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx13771_ . _args13772_)
      (let* ((_g1377413802_
              (lambda (_g1377513799_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1377513799_)))
             (_g1377313886_
              (lambda (_g1377513805_)
                (if (gx#stx-pair? _g1377513805_)
                    (let ((_e1377813807_ (gx#stx-e _g1377513805_)))
                      (let ((_hd1377913810_ (##car _e1377813807_))
                            (_tl1378013812_ (##cdr _e1377813807_)))
                        (if (gx#stx-pair/null? _tl1378013812_)
                            (let ((_g15626_
                                   (gx#syntax-split-splice _tl1378013812_ '0)))
                              (begin
                                (let ((_g15627_
                                       (if (##values? _g15626_)
                                           (##vector-length _g15626_)
                                           1)))
                                  (if (not (##fx= _g15627_ 2))
                                      (error "Context expects 2 values"
                                             _g15627_)))
                                (let ((_target1378113815_
                                       (##vector-ref _g15626_ 0))
                                      (_tl1378313817_
                                       (##vector-ref _g15626_ 1)))
                                  (if (gx#stx-null? _tl1378313817_)
                                      (letrec ((_loop1378413820_
                                                (lambda (_hd1378213823_
                                                         _body1378813825_
                                                         _hd1378913827_)
                                                  (if (gx#stx-pair?
                                                       _hd1378213823_)
                                                      (let ((_e1378513830_
                                                             (gx#stx-e
                                                              _hd1378213823_)))
                                                        (let ((_lp-hd1378613833_
                                                               (##car _e1378513830_))
                                                              (_lp-tl1378713835_
                                                               (##cdr _e1378513830_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1378613833_)
                                                              (let ((_e1379213838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1378613833_)))
                        (let ((_hd1379313841_ (##car _e1379213838_))
                              (_tl1379413843_ (##cdr _e1379213838_)))
                          (if (gx#stx-pair? _tl1379413843_)
                              (let ((_e1379513846_ (gx#stx-e _tl1379413843_)))
                                (let ((_hd1379613849_ (##car _e1379513846_))
                                      (_tl1379713851_ (##cdr _e1379513846_)))
                                  (if (gx#stx-null? _tl1379713851_)
                                      (_loop1378413820_
                                       _lp-tl1378713835_
                                       (cons _hd1379613849_ _body1378813825_)
                                       (cons _hd1379313841_ _hd1378913827_))
                                      (_g1377413802_ _g1377513805_))))
                              (_g1377413802_ _g1377513805_))))
                      (_g1377413802_ _g1377513805_))))
              (let ((_body1379013854_ (reverse _body1378813825_))
                    (_hd1379113856_ (reverse _hd1378913827_)))
                ((lambda (_L13859_ _L13860_)
                   (for-each
                    (lambda (_g1387413876_)
                      (apply gxc#compile-e _g1387413876_ _args13772_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1387813881_ _g1387913883_)
                                (cons _g1387813881_ _g1387913883_))
                              '()
                              _L13859_))))
                 _body1379013854_
                 _hd1379113856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1378413820_
                                         _target1378113815_
                                         '()
                                         '()))
                                      (_g1377413802_ _g1377513805_)))))
                            (_g1377413802_ _g1377513805_))))
                    (_g1377413802_ _g1377513805_)))))
        (_g1377313886_ _stx13771_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx13624_ . _args13625_)
      (let* ((_g1362713662_
              (lambda (_g1362813659_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1362813659_)))
             (_g1362613768_
              (lambda (_g1362813665_)
                (if (gx#stx-pair? _g1362813665_)
                    (let ((_e1363213667_ (gx#stx-e _g1362813665_)))
                      (let ((_hd1363313670_ (##car _e1363213667_))
                            (_tl1363413672_ (##cdr _e1363213667_)))
                        (if (gx#stx-pair? _tl1363413672_)
                            (let ((_e1363513675_ (gx#stx-e _tl1363413672_)))
                              (let ((_hd1363613678_ (##car _e1363513675_))
                                    (_tl1363713680_ (##cdr _e1363513675_)))
                                (if (gx#stx-pair/null? _hd1363613678_)
                                    (let ((_g15628_
                                           (gx#syntax-split-splice
                                            _hd1363613678_
                                            '0)))
                                      (begin
                                        (let ((_g15629_
                                               (if (##values? _g15628_)
                                                   (##vector-length _g15628_)
                                                   1)))
                                          (if (not (##fx= _g15629_ 2))
                                              (error "Context expects 2 values"
                                                     _g15629_)))
                                        (let ((_target1363813683_
                                               (##vector-ref _g15628_ 0))
                                              (_tl1364013685_
                                               (##vector-ref _g15628_ 1)))
                                          (if (gx#stx-null? _tl1364013685_)
                                              (letrec ((_loop1364113688_
                                                        (lambda (_hd1363913691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1364513693_
                         _hd1364613695_)
                  (if (gx#stx-pair? _hd1363913691_)
                      (let ((_e1364213698_ (gx#stx-e _hd1363913691_)))
                        (let ((_lp-hd1364313701_ (##car _e1364213698_))
                              (_lp-tl1364413703_ (##cdr _e1364213698_)))
                          (if (gx#stx-pair? _lp-hd1364313701_)
                              (let ((_e1364913706_
                                     (gx#stx-e _lp-hd1364313701_)))
                                (let ((_hd1365013709_ (##car _e1364913706_))
                                      (_tl1365113711_ (##cdr _e1364913706_)))
                                  (if (gx#stx-pair? _tl1365113711_)
                                      (let ((_e1365213714_
                                             (gx#stx-e _tl1365113711_)))
                                        (let ((_hd1365313717_
                                               (##car _e1365213714_))
                                              (_tl1365413719_
                                               (##cdr _e1365213714_)))
                                          (if (gx#stx-null? _tl1365413719_)
                                              (_loop1364113688_
                                               _lp-tl1364413703_
                                               (cons _hd1365313717_
                                                     _expr1364513693_)
                                               (cons _hd1365013709_
                                                     _hd1364613695_))
                                              (_g1362713662_ _g1362813665_))))
                                      (_g1362713662_ _g1362813665_))))
                              (_g1362713662_ _g1362813665_))))
                      (let ((_expr1364713722_ (reverse _expr1364513693_))
                            (_hd1364813724_ (reverse _hd1364613695_)))
                        (if (gx#stx-pair? _tl1363713680_)
                            (let ((_e1365513727_ (gx#stx-e _tl1363713680_)))
                              (let ((_hd1365613730_ (##car _e1365513727_))
                                    (_tl1365713732_ (##cdr _e1365513727_)))
                                (if (gx#stx-null? _tl1365713732_)
                                    ((lambda (_L13735_ _L13736_ _L13737_)
                                       (for-each
                                        (lambda (_g1375613758_)
                                          (apply gxc#compile-e
                                                 _g1375613758_
                                                 _args13625_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1376013763_
                                                           _g1376113765_)
                                                    (cons _g1376013763_
                                                          _g1376113765_))
                                                  (cons _L13735_ '())
                                                  _L13736_))))
                                     _hd1365613730_
                                     _expr1364713722_
                                     _hd1364813724_)
                                    (_g1362713662_ _g1362813665_))))
                            (_g1362713662_ _g1362813665_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1364113688_
                                                 _target1363813683_
                                                 '()
                                                 '()))
                                              (_g1362713662_ _g1362813665_)))))
                                    (_g1362713662_ _g1362813665_))))
                            (_g1362713662_ _g1362813665_))))
                    (_g1362713662_ _g1362813665_)))))
        (_g1362613768_ _stx13624_))))
  (define gxc#collect-body-setq%
    (lambda (_stx13556_ . _args13557_)
      (let* ((_g1355913576_
              (lambda (_g1356013573_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1356013573_)))
             (_g1355813621_
              (lambda (_g1356013579_)
                (if (gx#stx-pair? _g1356013579_)
                    (let ((_e1356313581_ (gx#stx-e _g1356013579_)))
                      (let ((_hd1356413584_ (##car _e1356313581_))
                            (_tl1356513586_ (##cdr _e1356313581_)))
                        (if (gx#stx-pair? _tl1356513586_)
                            (let ((_e1356613589_ (gx#stx-e _tl1356513586_)))
                              (let ((_hd1356713592_ (##car _e1356613589_))
                                    (_tl1356813594_ (##cdr _e1356613589_)))
                                (if (gx#stx-pair? _tl1356813594_)
                                    (let ((_e1356913597_
                                           (gx#stx-e _tl1356813594_)))
                                      (let ((_hd1357013600_
                                             (##car _e1356913597_))
                                            (_tl1357113602_
                                             (##cdr _e1356913597_)))
                                        (if (gx#stx-null? _tl1357113602_)
                                            ((lambda (_L13605_ _L13606_)
                                               (apply gxc#compile-e
                                                      _L13605_
                                                      _args13557_))
                                             _hd1357013600_
                                             _hd1356713592_)
                                            (_g1355913576_ _g1356013579_))))
                                    (_g1355913576_ _g1356013579_))))
                            (_g1355913576_ _g1356013579_))))
                    (_g1355913576_ _g1356013579_)))))
        (_g1355813621_ _stx13556_))))
  (define gxc#collect-operands
    (lambda (_stx13469_ . _args13470_)
      (let* ((_g1347213491_
              (lambda (_g1347313488_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1347313488_)))
             (_g1347113553_
              (lambda (_g1347313494_)
                (if (gx#stx-pair? _g1347313494_)
                    (let ((_e1347513496_ (gx#stx-e _g1347313494_)))
                      (let ((_hd1347613499_ (##car _e1347513496_))
                            (_tl1347713501_ (##cdr _e1347513496_)))
                        (if (gx#stx-pair/null? _tl1347713501_)
                            (let ((_g15630_
                                   (gx#syntax-split-splice _tl1347713501_ '0)))
                              (begin
                                (let ((_g15631_
                                       (if (##values? _g15630_)
                                           (##vector-length _g15630_)
                                           1)))
                                  (if (not (##fx= _g15631_ 2))
                                      (error "Context expects 2 values"
                                             _g15631_)))
                                (let ((_target1347813504_
                                       (##vector-ref _g15630_ 0))
                                      (_tl1348013506_
                                       (##vector-ref _g15630_ 1)))
                                  (if (gx#stx-null? _tl1348013506_)
                                      (letrec ((_loop1348113509_
                                                (lambda (_hd1347913512_
                                                         _rands1348513514_)
                                                  (if (gx#stx-pair?
                                                       _hd1347913512_)
                                                      (let ((_e1348213517_
                                                             (gx#stx-e
                                                              _hd1347913512_)))
                                                        (let ((_lp-hd1348313520_
                                                               (##car _e1348213517_))
                                                              (_lp-tl1348413522_
                                                               (##cdr _e1348213517_)))
                                                          (_loop1348113509_
                                                           _lp-tl1348413522_
                                                           (cons _lp-hd1348313520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1348513514_))))
              (let ((_rands1348613525_ (reverse _rands1348513514_)))
                ((lambda (_L13528_)
                   (for-each
                    (lambda (_g1354113543_)
                      (apply gxc#compile-e _g1354113543_ _args13470_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1354513548_ _g1354613550_)
                                (cons _g1354513548_ _g1354613550_))
                              '()
                              _L13528_))))
                 _rands1348613525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1348113509_
                                         _target1347813504_
                                         '()))
                                      (_g1347213491_ _g1347313494_)))))
                            (_g1347213491_ _g1347313494_))))
                    (_g1347213491_ _g1347313494_)))))
        (_g1347113553_ _stx13469_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx13400_)
      (let* ((_g1340213419_
              (lambda (_g1340313416_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1340313416_)))
             (_g1340113466_
              (lambda (_g1340313422_)
                (if (gx#stx-pair? _g1340313422_)
                    (let ((_e1340613424_ (gx#stx-e _g1340313422_)))
                      (let ((_hd1340713427_ (##car _e1340613424_))
                            (_tl1340813429_ (##cdr _e1340613424_)))
                        (if (gx#stx-pair? _tl1340813429_)
                            (let ((_e1340913432_ (gx#stx-e _tl1340813429_)))
                              (let ((_hd1341013435_ (##car _e1340913432_))
                                    (_tl1341113437_ (##cdr _e1340913432_)))
                                (if (gx#stx-pair? _tl1341113437_)
                                    (let ((_e1341213440_
                                           (gx#stx-e _tl1341113437_)))
                                      (let ((_hd1341313443_
                                             (##car _e1341213440_))
                                            (_tl1341413445_
                                             (##cdr _e1341213440_)))
                                        (if (gx#stx-null? _tl1341413445_)
                                            ((lambda (_L13448_ _L13449_)
                                               (gx#stx-for-each1
                                                (lambda (_bind13464_)
                                                  (if (gx#identifier?
                                                       _bind13464_)
                                                      (gxc#add-module-binding!
                                                       _bind13464_
                                                       '#f)
                                                      '#!void))
                                                _L13449_))
                                             _hd1341313443_
                                             _hd1341013435_)
                                            (_g1340213419_ _g1340313422_))))
                                    (_g1340213419_ _g1340313422_))))
                            (_g1340213419_ _g1340313422_))))
                    (_g1340213419_ _g1340313422_)))))
        (_g1340113466_ _stx13400_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx13333_)
      (let* ((_g1333513352_
              (lambda (_g1333613349_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1333613349_)))
             (_g1333413397_
              (lambda (_g1333613355_)
                (if (gx#stx-pair? _g1333613355_)
                    (let ((_e1333913357_ (gx#stx-e _g1333613355_)))
                      (let ((_hd1334013360_ (##car _e1333913357_))
                            (_tl1334113362_ (##cdr _e1333913357_)))
                        (if (gx#stx-pair? _tl1334113362_)
                            (let ((_e1334213365_ (gx#stx-e _tl1334113362_)))
                              (let ((_hd1334313368_ (##car _e1334213365_))
                                    (_tl1334413370_ (##cdr _e1334213365_)))
                                (if (gx#stx-pair? _tl1334413370_)
                                    (let ((_e1334513373_
                                           (gx#stx-e _tl1334413370_)))
                                      (let ((_hd1334613376_
                                             (##car _e1334513373_))
                                            (_tl1334713378_
                                             (##cdr _e1334513373_)))
                                        (if (gx#stx-null? _tl1334713378_)
                                            ((lambda (_L13381_ _L13382_)
                                               (gxc#add-module-binding!
                                                _L13382_
                                                '#t))
                                             _hd1334613376_
                                             _hd1334313368_)
                                            (_g1333513352_ _g1333613355_))))
                                    (_g1333513352_ _g1333613355_))))
                            (_g1333513352_ _g1333613355_))))
                    (_g1333513352_ _g1333613355_)))))
        (_g1333413397_ _stx13333_))))
  (define gxc#lift-modules-module%
    (lambda (_stx13275_ _modules13276_)
      (let* ((_g1327813292_
              (lambda (_g1327913289_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1327913289_)))
             (_g1327713330_
              (lambda (_g1327913295_)
                (if (gx#stx-pair? _g1327913295_)
                    (let ((_e1328213297_ (gx#stx-e _g1327913295_)))
                      (let ((_hd1328313300_ (##car _e1328213297_))
                            (_tl1328413302_ (##cdr _e1328213297_)))
                        (if (gx#stx-pair? _tl1328413302_)
                            (let ((_e1328513305_ (gx#stx-e _tl1328413302_)))
                              (let ((_hd1328613308_ (##car _e1328513305_))
                                    (_tl1328713310_ (##cdr _e1328513305_)))
                                ((lambda (_L13313_ _L13314_)
                                   (let ((_ctx13327_
                                          (gx#syntax-local-e__0 _L13314_)))
                                     (begin
                                       (set-box!
                                        _modules13276_
                                        (cons _ctx13327_
                                              (unbox _modules13276_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx13327_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules13276_))
                                        gx#current-expander-context
                                        _ctx13327_))))
                                 _tl1328713310_
                                 _hd1328613308_)))
                            (_g1327813292_ _g1327913295_))))
                    (_g1327813292_ _g1327913295_)))))
        (_g1327713330_ _stx13275_))))
  (define gxc#add-module-binding!
    (lambda (_id13269_ _syntax?13270_)
      (let ((_eid13272_
             (##structure-ref
              (gx#resolve-identifier__0 _id13269_)
              '1
              gx#binding::t
              '#f))
            (_ht13273_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid13272_)
            '#!void
            (table-set!
             _ht13273_
             _eid13272_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid13272_)
              _syntax?13270_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id113262_ _id213263_)
      (letrec ((_symbol-e13265_
                (lambda (_id13267_)
                  (if (symbol? _id13267_)
                      _id13267_
                      (gxc#generate-runtime-binding-id _id13267_)))))
        (eq? (_symbol-e13265_ _id113262_) (_symbol-e13265_ _id213263_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id13240_)
      (let ((_$e13242_
             (if (##structure-direct-instance-of?
                  _id13240_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id13240_)
                 '#f)))
        (if _$e13242_
            ((lambda (_bind13245_)
               (let ((_eid13247_
                      (##structure-ref _bind13245_ '1 gx#binding::t '#f))
                     (_ht13248_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid13247_)
                     _eid13247_
                     (let ((_$e13250_ (table-ref _ht13248_ _eid13247_ '#f)))
                       (if _$e13250_
                           (values _$e13250_)
                           (if (##structure-instance-of?
                                _bind13245_
                                'gx#local-binding::t)
                               (let ((_gid13253_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid13247_)))
                                 (begin
                                   (table-set! _ht13248_ _eid13247_ _gid13253_)
                                   _gid13253_))
                               (if (##structure-instance-of?
                                    _bind13245_
                                    'gx#module-binding::t)
                                   (let ((_gid13260_
                                          (let ((_$e13255_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind13245_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e13255_
                                                ((lambda (_ns13258_)
                                                   (make-symbol
                                                    _ns13258_
                                                    '"#"
                                                    _eid13247_))
                                                 _$e13255_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid13247_)))))
                                     (begin
                                       (table-set!
                                        _ht13248_
                                        _eid13247_
                                        _gid13260_)
                                       _gid13260_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id13240_
                                    _eid13247_
                                    _bind13245_))))))))
             _$e13242_)
            (if (interned-symbol? (gx#stx-e _id13240_))
                (gx#stx-e _id13240_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id13240_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id13238_)
      (if (gx#identifier? _id13238_)
          (gxc#generate-runtime-binding-id _id13238_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym13218_ _quote?13219_)
        (let* ((_ht13221_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e13223_ (table-ref _ht13221_ _sym13218_ '#f)))
          (if _$e13223_
              (values _$e13223_)
              (let ((_g13226_
                     (if _quote?13219_
                         (make-symbol
                          '"__"
                          _sym13218_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym13218_ '"_"))))
                (begin
                  (table-set! _ht13221_ _sym13218_ _g13226_)
                  _g13226_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym13231_)
          (let ((_quote?13233_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym13231_
             _quote?13233_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g15633_
          (let ((_g15632_ (length _g15633_)))
            (cond ((##fx= _g15632_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g15633_))
                  ((##fx= _g15632_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g15633_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g15633_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id13215_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id13215_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key13175_)
      (if (interned-symbol? _key13175_)
          _key13175_
          (if (uninterned-symbol? _key13175_)
              (gxc#generate-runtime-gensym-reference__0 _key13175_)
              (let* ((_key1317613183_ _key13175_)
                     (_E1317813187_
                      (lambda ()
                        (error '"No clause matching" _key1317613183_)))
                     (_K1317913203_
                      (lambda (_mark13190_ _eid13191_)
                        (let ((_$e13193_
                               (##structure-ref
                                _mark13190_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e13193_
                              ((lambda (_ht13196_)
                                 (let ((_$e13198_
                                        (table-ref _ht13196_ _eid13191_ '#f)))
                                   (if _$e13198_
                                       ((lambda (_id13201_)
                                          (if (interned-symbol? _id13201_)
                                              _id13201_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id13201_)))
                                        _$e13198_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid13191_))))
                               _$e13193_)
                              (gxc#generate-runtime-identifier-key
                               _eid13191_))))))
                (if (##pair? _key1317613183_)
                    (let ((_hd1318013206_ (##car _key1317613183_))
                          (_tl1318113208_ (##cdr _key1317613183_)))
                      (let* ((_eid13211_ _hd1318013206_)
                             (_mark13213_ _tl1318113208_))
                        (_K1317913203_ _mark13213_ _eid13211_)))
                    (_E1317813187_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top13162_)
        (if _top13162_
            (let ((_ns13164_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi13165_ (gx#current-expander-phi)))
              (if (fxpositive? _phi13165_)
                  (make-symbol
                   _ns13164_
                   '"["
                   (number->string _phi13165_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns13164_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top13171_ '#f))
            (gxc#generate-runtime-temporary__% _top13171_))))
      (define gxc#generate-runtime-temporary
        (lambda _g15635_
          (let ((_g15634_ (length _g15635_)))
            (cond ((##fx= _g15634_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g15635_))
                  ((##fx= _g15634_ 1)
                   (apply gxc#generate-runtime-temporary__% _g15635_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g15635_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx13159_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx13079_)
      (let* ((_g1308113091_
              (lambda (_g1308213088_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1308213088_)))
             (_g1308013156_
              (lambda (_g1308213094_)
                (if (gx#stx-pair? _g1308213094_)
                    (let ((_e1308413096_ (gx#stx-e _g1308213094_)))
                      (let ((_hd1308513099_ (##car _e1308413096_))
                            (_tl1308613101_ (##cdr _e1308413096_)))
                        ((lambda (_L13104_)
                           (let* ((_body13114_
                                   (gx#stx-map1 gxc#compile-e _L13104_))
                                  (_body13153_
                                   (filter (lambda (_stx13116_)
                                             (let* ((___stx1455014551_
                                                     _stx13116_)
                                                    (_g1311913128_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1455014551_))))
                                               (let ((___kont1455214553_
                                                      (lambda () '#f))
                                                     (___kont1455414555_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1455014551_)
                                                     (let ((_e1312113140_
                                                            (gx#stx-e
                                                             ___stx1455014551_)))
                                                       (let ((_tl1312313145_
                                                              (##cdr _e1312113140_))
                                                             (_hd1312213143_
                                                              (##car _e1312113140_)))
                                                         (if (gx#identifier?
                                                              _hd1312213143_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1312213143_)
                         (if (gx#stx-null? _tl1312313145_)
                             (___kont1455214553_)
                             (___kont1455414555_))
                         (___kont1455414555_))
                     (___kont1455414555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1455414555_)))))
                                           _body13114_)))
                             (if (fx= (length _body13153_) '1)
                                 (car _body13153_)
                                 (cons 'begin _body13153_))))
                         _tl1308613101_)))
                    (_g1308113091_ _g1308213094_)))))
        (_g1308013156_ _stx13079_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx13041_)
      (let* ((_g1304313053_
              (lambda (_g1304413050_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1304413050_)))
             (_g1304213076_
              (lambda (_g1304413056_)
                (if (gx#stx-pair? _g1304413056_)
                    (let ((_e1304613058_ (gx#stx-e _g1304413056_)))
                      (let ((_hd1304713061_ (##car _e1304613058_))
                            (_tl1304813063_ (##cdr _e1304613058_)))
                        ((lambda (_L13066_)
                           (cons 'begin (gx#syntax->datum _L13066_)))
                         _tl1304813063_)))
                    (_g1304313053_ _g1304413056_)))))
        (_g1304213076_ _stx13041_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx12918_)
      (let* ((___stx1457014571_ _stx12918_)
             (_g1292112949_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1457014571_))))
        (let ((___kont1457214573_
               (lambda (_L13023_ _L13024_) (gxc#compile-e _L13023_)))
              (___kont1457414575_
               (lambda (_L12978_ _L12979_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L12979_))
                             (cons (gxc#compile-e _L12978_) '()))))))
          (let ((___match1459514596_
                 (lambda (_e1292512999_
                          _hd1292613002_
                          _tl1292713004_
                          _e1292813007_
                          _hd1292913010_
                          _tl1293013012_
                          _e1293113015_
                          _hd1293213018_
                          _tl1293313020_)
                   (let ((_L13023_ _hd1293213018_) (_L13024_ _hd1292913010_))
                     (if (gx#identifier? _L13024_)
                         (___kont1457214573_ _L13023_ _L13024_)
                         (___kont1457414575_
                          _hd1293213018_
                          _hd1292913010_))))))
            (if (gx#stx-pair? ___stx1457014571_)
                (let ((_e1292512999_ (gx#stx-e ___stx1457014571_)))
                  (let ((_tl1292713004_ (##cdr _e1292512999_))
                        (_hd1292613002_ (##car _e1292512999_)))
                    (if (gx#stx-pair? _tl1292713004_)
                        (let ((_e1292813007_ (gx#stx-e _tl1292713004_)))
                          (let ((_tl1293013012_ (##cdr _e1292813007_))
                                (_hd1292913010_ (##car _e1292813007_)))
                            (if (gx#stx-pair? _tl1293013012_)
                                (let ((_e1293113015_
                                       (gx#stx-e _tl1293013012_)))
                                  (let ((_tl1293313020_ (##cdr _e1293113015_))
                                        (_hd1293213018_ (##car _e1293113015_)))
                                    (if (gx#stx-null? _tl1293313020_)
                                        (___match1459514596_
                                         _e1292512999_
                                         _hd1292613002_
                                         _tl1292713004_
                                         _e1292813007_
                                         _hd1292913010_
                                         _tl1293013012_
                                         _e1293113015_
                                         _hd1293213018_
                                         _tl1293313020_)
                                        (_g1292112949_))))
                                (_g1292112949_))))
                        (_g1292112949_))))
                (_g1292112949_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx12880_)
      (let* ((_g1288212892_
              (lambda (_g1288312889_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1288312889_)))
             (_g1288112915_
              (lambda (_g1288312895_)
                (if (gx#stx-pair? _g1288312895_)
                    (let ((_e1288512897_ (gx#stx-e _g1288312895_)))
                      (let ((_hd1288612900_ (##car _e1288512897_))
                            (_tl1288712902_ (##cdr _e1288512897_)))
                        ((lambda (_L12905_)
                           (cons 'declare (map gx#syntax->datum _L12905_)))
                         _tl1288712902_)))
                    (_g1288212892_ _g1288312895_)))))
        (_g1288112915_ _stx12880_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx12627_)
      (let* ((_g1262912646_
              (lambda (_g1263012643_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1263012643_)))
             (_g1262812877_
              (lambda (_g1263012649_)
                (if (gx#stx-pair? _g1263012649_)
                    (let ((_e1263312651_ (gx#stx-e _g1263012649_)))
                      (let ((_hd1263412654_ (##car _e1263312651_))
                            (_tl1263512656_ (##cdr _e1263312651_)))
                        (if (gx#stx-pair? _tl1263512656_)
                            (let ((_e1263612659_ (gx#stx-e _tl1263512656_)))
                              (let ((_hd1263712662_ (##car _e1263612659_))
                                    (_tl1263812664_ (##cdr _e1263612659_)))
                                (if (gx#stx-pair? _tl1263812664_)
                                    (let ((_e1263912667_
                                           (gx#stx-e _tl1263812664_)))
                                      (let ((_hd1264012670_
                                             (##car _e1263912667_))
                                            (_tl1264112672_
                                             (##cdr _e1263912667_)))
                                        (if (gx#stx-null? _tl1264112672_)
                                            ((lambda (_L12675_ _L12676_)
                                               (let* ((___stx1464814649_
                                                       _L12676_)
                                                      (_g1269312707_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1464814649_))))
                                                 (let ((___kont1465014651_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L12675_)))
                                                       (___kont1465214653_
                                                        (lambda (_L12839_)
                                                          (let ((_eid12848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L12839_)))
                    (begin
                      (let ((_lambda-expr1284912851_
                             (gxc#apply-find-lambda-expression _L12675_)))
                        (if _lambda-expr1284912851_
                            (let ((_lambda-expr12854_ _lambda-expr1284912851_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr12854_
                               _eid12848_))
                            '#f))
                      (cons 'define
                            (cons _eid12848_
                                  (cons (gxc#compile-e _L12675_) '())))))))
               (___kont1465414655_
                (lambda ()
                  (let* ((_tmp12714_ (gxc#generate-runtime-temporary__% '#t))
                         (_body12823_
                          (let _lp12716_ ((_rest12718_ _L12676_)
                                          (_k12719_ '0)
                                          (_r12720_ '()))
                            (let* ((___stx1461814619_ _rest12718_)
                                   (_g1272512742_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1461814619_))))
                              (let ((___kont1462014621_
                                     (lambda (_L12810_)
                                       (_lp12716_
                                        _L12810_
                                        (fx+ _k12719_ '1)
                                        _r12720_)))
                                    (___kont1462214623_
                                     (lambda (_L12783_ _L12784_)
                                       (_lp12716_
                                        _L12783_
                                        (fx+ _k12719_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L12784_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp12714_
                         _k12719_
                         _L12783_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r12720_))))
                                    (___kont1462414625_
                                     (lambda (_L12754_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12754_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp12714_
                                _k12719_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r12720_)))
                                    (___kont1462614627_
                                     (lambda () (reverse _r12720_))))
                                (let ((_g1272312770_
                                       (lambda ()
                                         (let ((_L12754_ ___stx1461814619_))
                                           (if (gx#identifier? _L12754_)
                                               (___kont1462414625_ _L12754_)
                                               (___kont1462614627_))))))
                                  (if (gx#stx-pair? ___stx1461814619_)
                                      (let ((_e1272812799_
                                             (gx#stx-e ___stx1461814619_)))
                                        (let ((_tl1273012804_
                                               (##cdr _e1272812799_))
                                              (_hd1272912802_
                                               (##car _e1272812799_)))
                                          (if (gx#stx-datum? _hd1272912802_)
                                              (let ((_e1273112807_
                                                     (gx#stx-e
                                                      _hd1272912802_)))
                                                (if (equal? _e1273112807_ '#f)
                                                    (___kont1462014621_
                                                     _tl1273012804_)
                                                    (___kont1462214623_
                                                     _tl1273012804_
                                                     _hd1272912802_)))
                                              (___kont1462214623_
                                               _tl1273012804_
                                               _hd1272912802_))))
                                      (_g1272312770_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp12714_
                                            (cons (gxc#compile-e _L12675_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp12714_
                                       _L12676_
                                       _L12675_)
                                      _body12823_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1464814649_)
                                                       (let ((_e1269512861_
                                                              (gx#stx-e
                                                               ___stx1464814649_)))
                                                         (let ((_tl1269712866_
                                                                (##cdr _e1269512861_))
                                                               (_hd1269612864_
                                                                (##car _e1269512861_)))
                                                           (if (gx#stx-datum?
                                                                _hd1269612864_)
                                                               (let ((_e1269812869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1269612864_)))
                         (if (equal? _e1269812869_ '#f)
                             (if (gx#stx-null? _tl1269712866_)
                                 (___kont1465014651_)
                                 (___kont1465414655_))
                             (if (gx#stx-null? _tl1269712866_)
                                 (___kont1465214653_ _hd1269612864_)
                                 (___kont1465414655_))))
                       (if (gx#stx-null? _tl1269712866_)
                           (___kont1465214653_ _hd1269612864_)
                           (___kont1465414655_)))))
               (___kont1465414655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1264012670_
                                             _hd1263712662_)
                                            (_g1262912646_ _g1263012649_))))
                                    (_g1262912646_ _g1263012649_))))
                            (_g1262912646_ _g1263012649_))))
                    (_g1262912646_ _g1263012649_)))))
        (_g1262812877_ _stx12627_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals12603_ _hd12604_ _expr12605_)
      (let ((_$e12607_ (gxc#apply-count-values _expr12605_)))
        (if _$e12607_
            ((lambda (_count12610_)
               (let ((_len12612_ (gx#stx-length _hd12604_))
                     (_cmp12613_ (if (gx#stx-list? _hd12604_) fx= fx>=)))
                 (if (let ((_$e12615_ (fx= _len12612_ '0)))
                       (if _$e12615_
                           _$e12615_
                           (_cmp12613_ _count12610_ _len12612_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr12605_
                      _hd12604_))))
             _$e12607_)
            (let* ((_len12618_ (gx#stx-length _hd12604_))
                   (_cmp12620_ (if (gx#stx-list? _hd12604_) '##fx= '##fx>=))
                   (_errmsg12622_
                    (string-append
                     (if (gx#stx-list? _hd12604_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len12618_)
                     '" values"))
                   (_count12624_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd12604_)) (fx= _len12618_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count12624_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals12603_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp12620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12624_ (cons _len12618_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg12622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count12624_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var12601_)
      (cons 'if
            (cons (cons '##values? (cons _var12601_ '()))
                  (cons (cons '##vector-length (cons _var12601_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var12597_ _i12598_ _rest12599_)
      (if (if (fx= _i12598_ '0) (not (gx#stx-pair? _rest12599_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var12597_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var12597_ (cons '0 '())))
                            (cons _var12597_ '()))))
          (cons '##vector-ref (cons _var12597_ (cons _i12598_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var12594_ _i12595_)
      (if (fx= _i12595_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var12594_ '()))
                      (cons (cons '##vector->list (cons _var12594_ '()))
                            (cons (cons 'list (cons _var12594_ '())) '()))))
          (if (fx= _i12595_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var12594_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var12594_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var12594_ '()))
                          (cons _i12595_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx12527_)
      (let* ((_g1252912546_
              (lambda (_g1253012543_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1253012543_)))
             (_g1252812591_
              (lambda (_g1253012549_)
                (if (gx#stx-pair? _g1253012549_)
                    (let ((_e1253312551_ (gx#stx-e _g1253012549_)))
                      (let ((_hd1253412554_ (##car _e1253312551_))
                            (_tl1253512556_ (##cdr _e1253312551_)))
                        (if (gx#stx-pair? _tl1253512556_)
                            (let ((_e1253612559_ (gx#stx-e _tl1253512556_)))
                              (let ((_hd1253712562_ (##car _e1253612559_))
                                    (_tl1253812564_ (##cdr _e1253612559_)))
                                (if (gx#stx-pair? _tl1253812564_)
                                    (let ((_e1253912567_
                                           (gx#stx-e _tl1253812564_)))
                                      (let ((_hd1254012570_
                                             (##car _e1253912567_))
                                            (_tl1254112572_
                                             (##cdr _e1253912567_)))
                                        (if (gx#stx-null? _tl1254112572_)
                                            ((lambda (_L12575_ _L12576_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L12576_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L12575_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1254012570_
                                             _hd1253712562_)
                                            (_g1252912546_ _g1253012549_))))
                                    (_g1252912546_ _g1253012549_))))
                            (_g1252912546_ _g1253012549_))))
                    (_g1252912546_ _g1253012549_)))))
        (_g1252812591_ _stx12527_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd12525_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd12525_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx11068_)
      (letrec ((_dispatch-case?11070_
                (lambda (_hd11755_ _body11756_)
                  (let* ((_form11758_ (cons _hd11755_ (cons _body11756_ '())))
                         (___stx1468014681_ _form11758_)
                         (_g1176311920_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1468014681_))))
                    (let ((___kont1468214683_
                           (lambda (_L12445_ _L12446_ _L12447_) '#t))
                          (___kont1468814689_
                           (lambda (_L12233_
                                    _L12234_
                                    _L12235_
                                    _L12236_
                                    _L12237_
                                    _L12238_)
                             '#t))
                          (___kont1469414695_
                           (lambda (_L12028_ _L12029_ _L12030_ _L12031_) '#t))
                          (___kont1469614697_ (lambda () '#f)))
                      (let* ((___match1482114822_
                              (lambda (_e1188011932_
                                       _hd1188111935_
                                       _tl1188211937_
                                       _e1188311940_
                                       _hd1188411943_
                                       _tl1188511945_
                                       _e1188611948_
                                       _hd1188711951_
                                       _tl1188811953_
                                       _e1188911956_
                                       _hd1189011959_
                                       _tl1189111961_
                                       _e1189211964_
                                       _hd1189311967_
                                       _tl1189411969_
                                       _e1189511972_
                                       _hd1189611975_
                                       _tl1189711977_
                                       _e1189811980_
                                       _hd1189911983_
                                       _tl1190011985_
                                       _e1190111988_
                                       _hd1190211991_
                                       _tl1190311993_
                                       _e1190411996_
                                       _hd1190511999_
                                       _tl1190612001_
                                       _e1190712004_
                                       _hd1190812007_
                                       _tl1190912009_
                                       _e1191012012_
                                       _hd1191112015_
                                       _tl1191212017_
                                       _e1191312020_
                                       _hd1191412023_
                                       _tl1191512025_)
                                (let ((_L12028_ _hd1191412023_)
                                      (_L12029_ _hd1190511999_)
                                      (_L12030_ _hd1189611975_)
                                      (_L12031_ _hd1188111935_))
                                  (if (if (gx#identifier? _L12031_)
                                          (if (gxc#runtime-identifier=?
                                               _L12030_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L12031_
                                                   _L12028_)
                                                  (not (gx#free-identifier=?
                                                        _L12029_
                                                        _L12031_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1469414695_
                                       _L12028_
                                       _L12029_
                                       _L12030_
                                       _L12031_)
                                      (___kont1469614697_)))))
                             (___match1479314794_
                              (lambda (_e1188011932_
                                       _hd1188111935_
                                       _tl1188211937_
                                       _e1188311940_
                                       _hd1188411943_
                                       _tl1188511945_
                                       _e1188611948_
                                       _hd1188711951_
                                       _tl1188811953_
                                       _e1188911956_
                                       _hd1189011959_
                                       _tl1189111961_
                                       _e1189211964_
                                       _hd1189311967_
                                       _tl1189411969_
                                       _e1189511972_
                                       _hd1189611975_
                                       _tl1189711977_
                                       _e1189811980_
                                       _hd1189911983_
                                       _tl1190011985_
                                       _e1190111988_
                                       _hd1190211991_
                                       _tl1190311993_
                                       _e1190411996_
                                       _hd1190511999_
                                       _tl1190612001_)
                                (if (gx#stx-pair? _tl1190011985_)
                                    (let ((_e1190712004_
                                           (gx#stx-e _tl1190011985_)))
                                      (let ((_tl1190912009_
                                             (##cdr _e1190712004_))
                                            (_hd1190812007_
                                             (##car _e1190712004_)))
                                        (if (gx#stx-pair? _hd1190812007_)
                                            (let ((_e1191012012_
                                                   (gx#stx-e _hd1190812007_)))
                                              (let ((_tl1191212017_
                                                     (##cdr _e1191012012_))
                                                    (_hd1191112015_
                                                     (##car _e1191012012_)))
                                                (if (gx#identifier?
                                                     _hd1191112015_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1191112015_)
                                                        (if (gx#stx-pair?
                                                             _tl1191212017_)
                                                            (let ((_e1191312020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1191212017_)))
                      (let ((_tl1191512025_ (##cdr _e1191312020_))
                            (_hd1191412023_ (##car _e1191312020_)))
                        (if (gx#stx-null? _tl1191512025_)
                            (if (gx#stx-null? _tl1190912009_)
                                (if (gx#stx-null? _tl1188511945_)
                                    (___match1482114822_
                                     _e1188011932_
                                     _hd1188111935_
                                     _tl1188211937_
                                     _e1188311940_
                                     _hd1188411943_
                                     _tl1188511945_
                                     _e1188611948_
                                     _hd1188711951_
                                     _tl1188811953_
                                     _e1188911956_
                                     _hd1189011959_
                                     _tl1189111961_
                                     _e1189211964_
                                     _hd1189311967_
                                     _tl1189411969_
                                     _e1189511972_
                                     _hd1189611975_
                                     _tl1189711977_
                                     _e1189811980_
                                     _hd1189911983_
                                     _tl1190011985_
                                     _e1190111988_
                                     _hd1190211991_
                                     _tl1190311993_
                                     _e1190411996_
                                     _hd1190511999_
                                     _tl1190612001_
                                     _e1190712004_
                                     _hd1190812007_
                                     _tl1190912009_
                                     _e1191012012_
                                     _hd1191112015_
                                     _tl1191212017_
                                     _e1191312020_
                                     _hd1191412023_
                                     _tl1191512025_)
                                    (___kont1469614697_))
                                (___kont1469614697_))
                            (___kont1469614697_))))
                    (___kont1469614697_))
                (___kont1469614697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1469614697_))))
                                            (___kont1469614697_))))
                                    (___kont1469614697_))))
                             (___match1472314724_
                              (lambda (_e1181612073_
                                       _hd1181712076_
                                       _tl1181812078_
                                       ___splice1469014691_
                                       _target1181912081_
                                       _tl1182112083_)
                                (letrec ((_loop1182212086_
                                          (lambda (_hd1182012089_
                                                   _arg1182612091_)
                                            (if (gx#stx-pair? _hd1182012089_)
                                                (let ((_e1182312094_
                                                       (gx#stx-e
                                                        _hd1182012089_)))
                                                  (let ((_lp-tl1182512099_
                                                         (##cdr _e1182312094_))
                                                        (_lp-hd1182412097_
                                                         (##car _e1182312094_)))
                                                    (_loop1182212086_
                                                     _lp-tl1182512099_
                                                     (cons _lp-hd1182412097_
                                                           _arg1182612091_))))
                                                (let ((_arg1182712102_
                                                       (reverse _arg1182612091_)))
                                                  (if (gx#stx-pair?
                                                       _tl1181812078_)
                                                      (let ((_e1182812105_
                                                             (gx#stx-e
                                                              _tl1181812078_)))
                                                        (let ((_tl1183012110_
                                                               (##cdr _e1182812105_))
                                                              (_hd1182912108_
                                                               (##car _e1182812105_)))
                                                          (if (gx#stx-pair?
                                                               _hd1182912108_)
                                                              (let ((_e1183112113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1182912108_)))
                        (let ((_tl1183312118_ (##cdr _e1183112113_))
                              (_hd1183212116_ (##car _e1183112113_)))
                          (if (gx#identifier? _hd1183212116_)
                              (if (gx#stx-eq? '%#call _hd1183212116_)
                                  (if (gx#stx-pair? _tl1183312118_)
                                      (let ((_e1183412121_
                                             (gx#stx-e _tl1183312118_)))
                                        (let ((_tl1183612126_
                                               (##cdr _e1183412121_))
                                              (_hd1183512124_
                                               (##car _e1183412121_)))
                                          (if (gx#stx-pair? _hd1183512124_)
                                              (let ((_e1183712129_
                                                     (gx#stx-e
                                                      _hd1183512124_)))
                                                (let ((_tl1183912134_
                                                       (##cdr _e1183712129_))
                                                      (_hd1183812132_
                                                       (##car _e1183712129_)))
                                                  (if (gx#identifier?
                                                       _hd1183812132_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1183812132_)
                                                          (if (gx#stx-pair?
                                                               _tl1183912134_)
                                                              (let ((_e1184012137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1183912134_)))
                        (let ((_tl1184212142_ (##cdr _e1184012137_))
                              (_hd1184112140_ (##car _e1184012137_)))
                          (if (gx#stx-null? _tl1184212142_)
                              (if (gx#stx-pair? _tl1183612126_)
                                  (let ((_e1184312145_
                                         (gx#stx-e _tl1183612126_)))
                                    (let ((_tl1184512150_
                                           (##cdr _e1184312145_))
                                          (_hd1184412148_
                                           (##car _e1184312145_)))
                                      (if (gx#stx-pair? _hd1184412148_)
                                          (let ((_e1184612153_
                                                 (gx#stx-e _hd1184412148_)))
                                            (let ((_tl1184812158_
                                                   (##cdr _e1184612153_))
                                                  (_hd1184712156_
                                                   (##car _e1184612153_)))
                                              (if (gx#identifier?
                                                   _hd1184712156_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1184712156_)
                                                      (if (gx#stx-pair?
                                                           _tl1184812158_)
                                                          (let ((_e1184912161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1184812158_)))
                    (let ((_tl1185112166_ (##cdr _e1184912161_))
                          (_hd1185012164_ (##car _e1184912161_)))
                      (if (gx#stx-null? _tl1185112166_)
                          (if (gx#stx-pair/null? _tl1184512150_)
                              (if (fx>= (gx#stx-length _tl1184512150_) '1)
                                  (let ((___splice1469214693_
                                         (gx#syntax-split-splice
                                          _tl1184512150_
                                          '1)))
                                    (let ((_tl1185412171_
                                           (##vector-ref
                                            ___splice1469214693_
                                            '1))
                                          (_target1185212169_
                                           (##vector-ref
                                            ___splice1469214693_
                                            '0)))
                                      (if (gx#stx-pair? _tl1185412171_)
                                          (let ((_e1186112174_
                                                 (gx#stx-e _tl1185412171_)))
                                            (let ((_tl1186312179_
                                                   (##cdr _e1186112174_))
                                                  (_hd1186212177_
                                                   (##car _e1186112174_)))
                                              (if (gx#stx-pair? _hd1186212177_)
                                                  (let ((_e1186412182_
                                                         (gx#stx-e
                                                          _hd1186212177_)))
                                                    (let ((_tl1186612187_
                                                           (##cdr _e1186412182_))
                                                          (_hd1186512185_
                                                           (##car _e1186412182_)))
                                                      (if (gx#identifier?
                                                           _hd1186512185_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1186512185_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1186612187_)
                          (let ((_e1186712190_ (gx#stx-e _tl1186612187_)))
                            (let ((_tl1186912195_ (##cdr _e1186712190_))
                                  (_hd1186812193_ (##car _e1186712190_)))
                              (if (gx#stx-null? _tl1186912195_)
                                  (if (gx#stx-null? _tl1186312179_)
                                      (letrec ((_loop1185512198_
                                                (lambda (_hd1185312201_
                                                         _xarg1185912203_)
                                                  (if (gx#stx-pair?
                                                       _hd1185312201_)
                                                      (let ((_e1185612206_
                                                             (gx#stx-e
                                                              _hd1185312201_)))
                                                        (let ((_lp-tl1185812211_
                                                               (##cdr _e1185612206_))
                                                              (_lp-hd1185712209_
                                                               (##car _e1185612206_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1185712209_)
                                                              (let ((_e1187012214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1185712209_)))
                        (let ((_tl1187212219_ (##cdr _e1187012214_))
                              (_hd1187112217_ (##car _e1187012214_)))
                          (if (gx#identifier? _hd1187112217_)
                              (if (gx#stx-eq? '%#ref _hd1187112217_)
                                  (if (gx#stx-pair? _tl1187212219_)
                                      (let ((_e1187312222_
                                             (gx#stx-e _tl1187212219_)))
                                        (let ((_tl1187512227_
                                               (##cdr _e1187312222_))
                                              (_hd1187412225_
                                               (##car _e1187312222_)))
                                          (if (gx#stx-null? _tl1187512227_)
                                              (_loop1185512198_
                                               _lp-tl1185812211_
                                               (cons _hd1187412225_
                                                     _xarg1185912203_))
                                              (___match1479314794_
                                               _e1181612073_
                                               _hd1181712076_
                                               _tl1181812078_
                                               _e1182812105_
                                               _hd1182912108_
                                               _tl1183012110_
                                               _e1183112113_
                                               _hd1183212116_
                                               _tl1183312118_
                                               _e1183412121_
                                               _hd1183512124_
                                               _tl1183612126_
                                               _e1183712129_
                                               _hd1183812132_
                                               _tl1183912134_
                                               _e1184012137_
                                               _hd1184112140_
                                               _tl1184212142_
                                               _e1184312145_
                                               _hd1184412148_
                                               _tl1184512150_
                                               _e1184612153_
                                               _hd1184712156_
                                               _tl1184812158_
                                               _e1184912161_
                                               _hd1185012164_
                                               _tl1185112166_))))
                                      (___match1479314794_
                                       _e1181612073_
                                       _hd1181712076_
                                       _tl1181812078_
                                       _e1182812105_
                                       _hd1182912108_
                                       _tl1183012110_
                                       _e1183112113_
                                       _hd1183212116_
                                       _tl1183312118_
                                       _e1183412121_
                                       _hd1183512124_
                                       _tl1183612126_
                                       _e1183712129_
                                       _hd1183812132_
                                       _tl1183912134_
                                       _e1184012137_
                                       _hd1184112140_
                                       _tl1184212142_
                                       _e1184312145_
                                       _hd1184412148_
                                       _tl1184512150_
                                       _e1184612153_
                                       _hd1184712156_
                                       _tl1184812158_
                                       _e1184912161_
                                       _hd1185012164_
                                       _tl1185112166_))
                                  (___match1479314794_
                                   _e1181612073_
                                   _hd1181712076_
                                   _tl1181812078_
                                   _e1182812105_
                                   _hd1182912108_
                                   _tl1183012110_
                                   _e1183112113_
                                   _hd1183212116_
                                   _tl1183312118_
                                   _e1183412121_
                                   _hd1183512124_
                                   _tl1183612126_
                                   _e1183712129_
                                   _hd1183812132_
                                   _tl1183912134_
                                   _e1184012137_
                                   _hd1184112140_
                                   _tl1184212142_
                                   _e1184312145_
                                   _hd1184412148_
                                   _tl1184512150_
                                   _e1184612153_
                                   _hd1184712156_
                                   _tl1184812158_
                                   _e1184912161_
                                   _hd1185012164_
                                   _tl1185112166_))
                              (___match1479314794_
                               _e1181612073_
                               _hd1181712076_
                               _tl1181812078_
                               _e1182812105_
                               _hd1182912108_
                               _tl1183012110_
                               _e1183112113_
                               _hd1183212116_
                               _tl1183312118_
                               _e1183412121_
                               _hd1183512124_
                               _tl1183612126_
                               _e1183712129_
                               _hd1183812132_
                               _tl1183912134_
                               _e1184012137_
                               _hd1184112140_
                               _tl1184212142_
                               _e1184312145_
                               _hd1184412148_
                               _tl1184512150_
                               _e1184612153_
                               _hd1184712156_
                               _tl1184812158_
                               _e1184912161_
                               _hd1185012164_
                               _tl1185112166_))))
                      (___match1479314794_
                       _e1181612073_
                       _hd1181712076_
                       _tl1181812078_
                       _e1182812105_
                       _hd1182912108_
                       _tl1183012110_
                       _e1183112113_
                       _hd1183212116_
                       _tl1183312118_
                       _e1183412121_
                       _hd1183512124_
                       _tl1183612126_
                       _e1183712129_
                       _hd1183812132_
                       _tl1183912134_
                       _e1184012137_
                       _hd1184112140_
                       _tl1184212142_
                       _e1184312145_
                       _hd1184412148_
                       _tl1184512150_
                       _e1184612153_
                       _hd1184712156_
                       _tl1184812158_
                       _e1184912161_
                       _hd1185012164_
                       _tl1185112166_))))
              (let ((_xarg1186012230_ (reverse _xarg1185912203_)))
                (if (gx#stx-null? _tl1183012110_)
                    (let ((_L12233_ _hd1186812193_)
                          (_L12234_ _xarg1186012230_)
                          (_L12235_ _hd1185012164_)
                          (_L12236_ _hd1184112140_)
                          (_L12237_ _tl1182112083_)
                          (_L12238_ _arg1182712102_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1228112284_ _g1228212286_)
                                           (cons _g1228112284_ _g1228212286_))
                                         '()
                                         _L12238_)))
                              (if (gx#identifier? _L12237_)
                                  (if (gxc#runtime-identifier=?
                                       _L12236_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1228812291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1228912293_)
                           (cons _g1228812291_ _g1228912293_))
                         '()
                         _L12238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1229512298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1229612300_)
                           (cons _g1229512298_ _g1229612300_))
                         '()
                         _L12234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1230212305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1230312307_)
                           (cons _g1230212305_ _g1230312307_))
                         '()
                         _L12238_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1230912312_ _g1231012314_)
                           (cons _g1230912312_ _g1231012314_))
                         '()
                         _L12234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L12237_
                                                   _L12233_)
                                                  (not (find (lambda (_g1231612318_)
                                                               (gx#free-identifier=?
                                                                _g1231612318_
                                                                _L12235_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1232012323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1232112325_)
                                 (cons _g1232012323_ _g1232112325_))
                               (cons _L12237_ '())
                               _L12238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1468814689_
                           _L12233_
                           _L12234_
                           _L12235_
                           _L12236_
                           _L12237_
                           _L12238_)
                          (___match1479314794_
                           _e1181612073_
                           _hd1181712076_
                           _tl1181812078_
                           _e1182812105_
                           _hd1182912108_
                           _tl1183012110_
                           _e1183112113_
                           _hd1183212116_
                           _tl1183312118_
                           _e1183412121_
                           _hd1183512124_
                           _tl1183612126_
                           _e1183712129_
                           _hd1183812132_
                           _tl1183912134_
                           _e1184012137_
                           _hd1184112140_
                           _tl1184212142_
                           _e1184312145_
                           _hd1184412148_
                           _tl1184512150_
                           _e1184612153_
                           _hd1184712156_
                           _tl1184812158_
                           _e1184912161_
                           _hd1185012164_
                           _tl1185112166_)))
                    (___match1479314794_
                     _e1181612073_
                     _hd1181712076_
                     _tl1181812078_
                     _e1182812105_
                     _hd1182912108_
                     _tl1183012110_
                     _e1183112113_
                     _hd1183212116_
                     _tl1183312118_
                     _e1183412121_
                     _hd1183512124_
                     _tl1183612126_
                     _e1183712129_
                     _hd1183812132_
                     _tl1183912134_
                     _e1184012137_
                     _hd1184112140_
                     _tl1184212142_
                     _e1184312145_
                     _hd1184412148_
                     _tl1184512150_
                     _e1184612153_
                     _hd1184712156_
                     _tl1184812158_
                     _e1184912161_
                     _hd1185012164_
                     _tl1185112166_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1185512198_
                                         _target1185212169_
                                         '()))
                                      (___match1479314794_
                                       _e1181612073_
                                       _hd1181712076_
                                       _tl1181812078_
                                       _e1182812105_
                                       _hd1182912108_
                                       _tl1183012110_
                                       _e1183112113_
                                       _hd1183212116_
                                       _tl1183312118_
                                       _e1183412121_
                                       _hd1183512124_
                                       _tl1183612126_
                                       _e1183712129_
                                       _hd1183812132_
                                       _tl1183912134_
                                       _e1184012137_
                                       _hd1184112140_
                                       _tl1184212142_
                                       _e1184312145_
                                       _hd1184412148_
                                       _tl1184512150_
                                       _e1184612153_
                                       _hd1184712156_
                                       _tl1184812158_
                                       _e1184912161_
                                       _hd1185012164_
                                       _tl1185112166_))
                                  (___match1479314794_
                                   _e1181612073_
                                   _hd1181712076_
                                   _tl1181812078_
                                   _e1182812105_
                                   _hd1182912108_
                                   _tl1183012110_
                                   _e1183112113_
                                   _hd1183212116_
                                   _tl1183312118_
                                   _e1183412121_
                                   _hd1183512124_
                                   _tl1183612126_
                                   _e1183712129_
                                   _hd1183812132_
                                   _tl1183912134_
                                   _e1184012137_
                                   _hd1184112140_
                                   _tl1184212142_
                                   _e1184312145_
                                   _hd1184412148_
                                   _tl1184512150_
                                   _e1184612153_
                                   _hd1184712156_
                                   _tl1184812158_
                                   _e1184912161_
                                   _hd1185012164_
                                   _tl1185112166_))))
                          (___match1479314794_
                           _e1181612073_
                           _hd1181712076_
                           _tl1181812078_
                           _e1182812105_
                           _hd1182912108_
                           _tl1183012110_
                           _e1183112113_
                           _hd1183212116_
                           _tl1183312118_
                           _e1183412121_
                           _hd1183512124_
                           _tl1183612126_
                           _e1183712129_
                           _hd1183812132_
                           _tl1183912134_
                           _e1184012137_
                           _hd1184112140_
                           _tl1184212142_
                           _e1184312145_
                           _hd1184412148_
                           _tl1184512150_
                           _e1184612153_
                           _hd1184712156_
                           _tl1184812158_
                           _e1184912161_
                           _hd1185012164_
                           _tl1185112166_))
                      (___match1479314794_
                       _e1181612073_
                       _hd1181712076_
                       _tl1181812078_
                       _e1182812105_
                       _hd1182912108_
                       _tl1183012110_
                       _e1183112113_
                       _hd1183212116_
                       _tl1183312118_
                       _e1183412121_
                       _hd1183512124_
                       _tl1183612126_
                       _e1183712129_
                       _hd1183812132_
                       _tl1183912134_
                       _e1184012137_
                       _hd1184112140_
                       _tl1184212142_
                       _e1184312145_
                       _hd1184412148_
                       _tl1184512150_
                       _e1184612153_
                       _hd1184712156_
                       _tl1184812158_
                       _e1184912161_
                       _hd1185012164_
                       _tl1185112166_))
                  (___match1479314794_
                   _e1181612073_
                   _hd1181712076_
                   _tl1181812078_
                   _e1182812105_
                   _hd1182912108_
                   _tl1183012110_
                   _e1183112113_
                   _hd1183212116_
                   _tl1183312118_
                   _e1183412121_
                   _hd1183512124_
                   _tl1183612126_
                   _e1183712129_
                   _hd1183812132_
                   _tl1183912134_
                   _e1184012137_
                   _hd1184112140_
                   _tl1184212142_
                   _e1184312145_
                   _hd1184412148_
                   _tl1184512150_
                   _e1184612153_
                   _hd1184712156_
                   _tl1184812158_
                   _e1184912161_
                   _hd1185012164_
                   _tl1185112166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1479314794_
                                                   _e1181612073_
                                                   _hd1181712076_
                                                   _tl1181812078_
                                                   _e1182812105_
                                                   _hd1182912108_
                                                   _tl1183012110_
                                                   _e1183112113_
                                                   _hd1183212116_
                                                   _tl1183312118_
                                                   _e1183412121_
                                                   _hd1183512124_
                                                   _tl1183612126_
                                                   _e1183712129_
                                                   _hd1183812132_
                                                   _tl1183912134_
                                                   _e1184012137_
                                                   _hd1184112140_
                                                   _tl1184212142_
                                                   _e1184312145_
                                                   _hd1184412148_
                                                   _tl1184512150_
                                                   _e1184612153_
                                                   _hd1184712156_
                                                   _tl1184812158_
                                                   _e1184912161_
                                                   _hd1185012164_
                                                   _tl1185112166_))))
                                          (___match1479314794_
                                           _e1181612073_
                                           _hd1181712076_
                                           _tl1181812078_
                                           _e1182812105_
                                           _hd1182912108_
                                           _tl1183012110_
                                           _e1183112113_
                                           _hd1183212116_
                                           _tl1183312118_
                                           _e1183412121_
                                           _hd1183512124_
                                           _tl1183612126_
                                           _e1183712129_
                                           _hd1183812132_
                                           _tl1183912134_
                                           _e1184012137_
                                           _hd1184112140_
                                           _tl1184212142_
                                           _e1184312145_
                                           _hd1184412148_
                                           _tl1184512150_
                                           _e1184612153_
                                           _hd1184712156_
                                           _tl1184812158_
                                           _e1184912161_
                                           _hd1185012164_
                                           _tl1185112166_))))
                                  (___match1479314794_
                                   _e1181612073_
                                   _hd1181712076_
                                   _tl1181812078_
                                   _e1182812105_
                                   _hd1182912108_
                                   _tl1183012110_
                                   _e1183112113_
                                   _hd1183212116_
                                   _tl1183312118_
                                   _e1183412121_
                                   _hd1183512124_
                                   _tl1183612126_
                                   _e1183712129_
                                   _hd1183812132_
                                   _tl1183912134_
                                   _e1184012137_
                                   _hd1184112140_
                                   _tl1184212142_
                                   _e1184312145_
                                   _hd1184412148_
                                   _tl1184512150_
                                   _e1184612153_
                                   _hd1184712156_
                                   _tl1184812158_
                                   _e1184912161_
                                   _hd1185012164_
                                   _tl1185112166_))
                              (___match1479314794_
                               _e1181612073_
                               _hd1181712076_
                               _tl1181812078_
                               _e1182812105_
                               _hd1182912108_
                               _tl1183012110_
                               _e1183112113_
                               _hd1183212116_
                               _tl1183312118_
                               _e1183412121_
                               _hd1183512124_
                               _tl1183612126_
                               _e1183712129_
                               _hd1183812132_
                               _tl1183912134_
                               _e1184012137_
                               _hd1184112140_
                               _tl1184212142_
                               _e1184312145_
                               _hd1184412148_
                               _tl1184512150_
                               _e1184612153_
                               _hd1184712156_
                               _tl1184812158_
                               _e1184912161_
                               _hd1185012164_
                               _tl1185112166_))
                          (___kont1469614697_))))
                  (___kont1469614697_))
              (___kont1469614697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1469614697_))))
                                          (___kont1469614697_))))
                                  (___kont1469614697_))
                              (___kont1469614697_))))
                      (___kont1469614697_))
                  (___kont1469614697_))
              (___kont1469614697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1469614697_))))
                                      (___kont1469614697_))
                                  (___kont1469614697_))
                              (___kont1469614697_))))
                      (___kont1469614697_))))
              (___kont1469614697_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1182212086_ _target1181912081_ '()))))
                             (___match1471114712_
                              (lambda (_e1176812333_
                                       _hd1176912336_
                                       _tl1177012338_
                                       ___splice1468414685_
                                       _target1177112341_
                                       _tl1177312343_)
                                (letrec ((_loop1177412346_
                                          (lambda (_hd1177212349_
                                                   _arg1177812351_)
                                            (if (gx#stx-pair? _hd1177212349_)
                                                (let ((_e1177512354_
                                                       (gx#stx-e
                                                        _hd1177212349_)))
                                                  (let ((_lp-tl1177712359_
                                                         (##cdr _e1177512354_))
                                                        (_lp-hd1177612357_
                                                         (##car _e1177512354_)))
                                                    (_loop1177412346_
                                                     _lp-tl1177712359_
                                                     (cons _lp-hd1177612357_
                                                           _arg1177812351_))))
                                                (let ((_arg1177912362_
                                                       (reverse _arg1177812351_)))
                                                  (if (gx#stx-pair?
                                                       _tl1177012338_)
                                                      (let ((_e1178012365_
                                                             (gx#stx-e
                                                              _tl1177012338_)))
                                                        (let ((_tl1178212370_
                                                               (##cdr _e1178012365_))
                                                              (_hd1178112368_
                                                               (##car _e1178012365_)))
                                                          (if (gx#stx-pair?
                                                               _hd1178112368_)
                                                              (let ((_e1178312373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1178112368_)))
                        (let ((_tl1178512378_ (##cdr _e1178312373_))
                              (_hd1178412376_ (##car _e1178312373_)))
                          (if (gx#identifier? _hd1178412376_)
                              (if (gx#stx-eq? '%#call _hd1178412376_)
                                  (if (gx#stx-pair? _tl1178512378_)
                                      (let ((_e1178612381_
                                             (gx#stx-e _tl1178512378_)))
                                        (let ((_tl1178812386_
                                               (##cdr _e1178612381_))
                                              (_hd1178712384_
                                               (##car _e1178612381_)))
                                          (if (gx#stx-pair? _hd1178712384_)
                                              (let ((_e1178912389_
                                                     (gx#stx-e
                                                      _hd1178712384_)))
                                                (let ((_tl1179112394_
                                                       (##cdr _e1178912389_))
                                                      (_hd1179012392_
                                                       (##car _e1178912389_)))
                                                  (if (gx#identifier?
                                                       _hd1179012392_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1179012392_)
                                                          (if (gx#stx-pair?
                                                               _tl1179112394_)
                                                              (let ((_e1179212397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1179112394_)))
                        (let ((_tl1179412402_ (##cdr _e1179212397_))
                              (_hd1179312400_ (##car _e1179212397_)))
                          (if (gx#stx-null? _tl1179412402_)
                              (if (gx#stx-pair/null? _tl1178812386_)
                                  (let ((___splice1468614687_
                                         (gx#syntax-split-splice
                                          _tl1178812386_
                                          '0)))
                                    (let ((_tl1179712407_
                                           (##vector-ref
                                            ___splice1468614687_
                                            '1))
                                          (_target1179512405_
                                           (##vector-ref
                                            ___splice1468614687_
                                            '0)))
                                      (if (gx#stx-null? _tl1179712407_)
                                          (letrec ((_loop1179812410_
                                                    (lambda (_hd1179612413_
                                                             _xarg1180212415_)
                                                      (if (gx#stx-pair?
                                                           _hd1179612413_)
                                                          (let ((_e1179912418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1179612413_)))
                    (let ((_lp-tl1180112423_ (##cdr _e1179912418_))
                          (_lp-hd1180012421_ (##car _e1179912418_)))
                      (if (gx#stx-pair? _lp-hd1180012421_)
                          (let ((_e1180412426_ (gx#stx-e _lp-hd1180012421_)))
                            (let ((_tl1180612431_ (##cdr _e1180412426_))
                                  (_hd1180512429_ (##car _e1180412426_)))
                              (if (gx#identifier? _hd1180512429_)
                                  (if (gx#stx-eq? '%#ref _hd1180512429_)
                                      (if (gx#stx-pair? _tl1180612431_)
                                          (let ((_e1180712434_
                                                 (gx#stx-e _tl1180612431_)))
                                            (let ((_tl1180912439_
                                                   (##cdr _e1180712434_))
                                                  (_hd1180812437_
                                                   (##car _e1180712434_)))
                                              (if (gx#stx-null? _tl1180912439_)
                                                  (_loop1179812410_
                                                   _lp-tl1180112423_
                                                   (cons _hd1180812437_
                                                         _xarg1180212415_))
                                                  (___match1472314724_
                                                   _e1176812333_
                                                   _hd1176912336_
                                                   _tl1177012338_
                                                   ___splice1468414685_
                                                   _target1177112341_
                                                   _tl1177312343_))))
                                          (___match1472314724_
                                           _e1176812333_
                                           _hd1176912336_
                                           _tl1177012338_
                                           ___splice1468414685_
                                           _target1177112341_
                                           _tl1177312343_))
                                      (___match1472314724_
                                       _e1176812333_
                                       _hd1176912336_
                                       _tl1177012338_
                                       ___splice1468414685_
                                       _target1177112341_
                                       _tl1177312343_))
                                  (___match1472314724_
                                   _e1176812333_
                                   _hd1176912336_
                                   _tl1177012338_
                                   ___splice1468414685_
                                   _target1177112341_
                                   _tl1177312343_))))
                          (___match1472314724_
                           _e1176812333_
                           _hd1176912336_
                           _tl1177012338_
                           ___splice1468414685_
                           _target1177112341_
                           _tl1177312343_))))
                  (let ((_xarg1180312442_ (reverse _xarg1180212415_)))
                    (if (gx#stx-null? _tl1178212370_)
                        (let ((_L12445_ _xarg1180312442_)
                              (_L12446_ _hd1179312400_)
                              (_L12447_ _arg1177912362_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1247512478_
                                                      _g1247612480_)
                                               (cons _g1247512478_
                                                     _g1247612480_))
                                             '()
                                             _L12447_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1248212485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1248312487_)
                       (cons _g1248212485_ _g1248312487_))
                     '()
                     _L12447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1248912492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1249012494_)
                       (cons _g1248912492_ _g1249012494_))
                     '()
                     _L12445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1249612499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1249712501_)
                       (cons _g1249612499_ _g1249712501_))
                     '()
                     _L12447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1250312506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1250412508_)
                       (cons _g1250312506_ _g1250412508_))
                     '()
                     _L12445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1251012512_)
                                                       (gx#free-identifier=?
                                                        _g1251012512_
                                                        _L12446_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1251412517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1251512519_)
                         (cons _g1251412517_ _g1251512519_))
                       '()
                       _L12447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1468214683_ _L12445_ _L12446_ _L12447_)
                              (___match1472314724_
                               _e1176812333_
                               _hd1176912336_
                               _tl1177012338_
                               ___splice1468414685_
                               _target1177112341_
                               _tl1177312343_)))
                        (___match1472314724_
                         _e1176812333_
                         _hd1176912336_
                         _tl1177012338_
                         ___splice1468414685_
                         _target1177112341_
                         _tl1177312343_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1179812410_
                                             _target1179512405_
                                             '()))
                                          (___match1472314724_
                                           _e1176812333_
                                           _hd1176912336_
                                           _tl1177012338_
                                           ___splice1468414685_
                                           _target1177112341_
                                           _tl1177312343_))))
                                  (___match1472314724_
                                   _e1176812333_
                                   _hd1176912336_
                                   _tl1177012338_
                                   ___splice1468414685_
                                   _target1177112341_
                                   _tl1177312343_))
                              (___match1472314724_
                               _e1176812333_
                               _hd1176912336_
                               _tl1177012338_
                               ___splice1468414685_
                               _target1177112341_
                               _tl1177312343_))))
                      (___match1472314724_
                       _e1176812333_
                       _hd1176912336_
                       _tl1177012338_
                       ___splice1468414685_
                       _target1177112341_
                       _tl1177312343_))
                  (___match1472314724_
                   _e1176812333_
                   _hd1176912336_
                   _tl1177012338_
                   ___splice1468414685_
                   _target1177112341_
                   _tl1177312343_))
              (___match1472314724_
               _e1176812333_
               _hd1176912336_
               _tl1177012338_
               ___splice1468414685_
               _target1177112341_
               _tl1177312343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1472314724_
                                               _e1176812333_
                                               _hd1176912336_
                                               _tl1177012338_
                                               ___splice1468414685_
                                               _target1177112341_
                                               _tl1177312343_))))
                                      (___match1472314724_
                                       _e1176812333_
                                       _hd1176912336_
                                       _tl1177012338_
                                       ___splice1468414685_
                                       _target1177112341_
                                       _tl1177312343_))
                                  (___match1472314724_
                                   _e1176812333_
                                   _hd1176912336_
                                   _tl1177012338_
                                   ___splice1468414685_
                                   _target1177112341_
                                   _tl1177312343_))
                              (___match1472314724_
                               _e1176812333_
                               _hd1176912336_
                               _tl1177012338_
                               ___splice1468414685_
                               _target1177112341_
                               _tl1177312343_))))
                      (___match1472314724_
                       _e1176812333_
                       _hd1176912336_
                       _tl1177012338_
                       ___splice1468414685_
                       _target1177112341_
                       _tl1177312343_))))
              (___match1472314724_
               _e1176812333_
               _hd1176912336_
               _tl1177012338_
               ___splice1468414685_
               _target1177112341_
               _tl1177312343_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1177412346_ _target1177112341_ '())))))
                        (if (gx#stx-pair? ___stx1468014681_)
                            (let ((_e1176812333_ (gx#stx-e ___stx1468014681_)))
                              (let ((_tl1177012338_ (##cdr _e1176812333_))
                                    (_hd1176912336_ (##car _e1176812333_)))
                                (if (gx#stx-pair/null? _hd1176912336_)
                                    (let ((___splice1468414685_
                                           (gx#syntax-split-splice
                                            _hd1176912336_
                                            '0)))
                                      (let ((_tl1177312343_
                                             (##vector-ref
                                              ___splice1468414685_
                                              '1))
                                            (_target1177112341_
                                             (##vector-ref
                                              ___splice1468414685_
                                              '0)))
                                        (if (gx#stx-null? _tl1177312343_)
                                            (___match1471114712_
                                             _e1176812333_
                                             _hd1176912336_
                                             _tl1177012338_
                                             ___splice1468414685_
                                             _target1177112341_
                                             _tl1177312343_)
                                            (___match1472314724_
                                             _e1176812333_
                                             _hd1176912336_
                                             _tl1177012338_
                                             ___splice1468414685_
                                             _target1177112341_
                                             _tl1177312343_))))
                                    (if (gx#stx-pair? _tl1177012338_)
                                        (let ((_e1188311940_
                                               (gx#stx-e _tl1177012338_)))
                                          (let ((_tl1188511945_
                                                 (##cdr _e1188311940_))
                                                (_hd1188411943_
                                                 (##car _e1188311940_)))
                                            (if (gx#stx-pair? _hd1188411943_)
                                                (let ((_e1188611948_
                                                       (gx#stx-e
                                                        _hd1188411943_)))
                                                  (let ((_tl1188811953_
                                                         (##cdr _e1188611948_))
                                                        (_hd1188711951_
                                                         (##car _e1188611948_)))
                                                    (if (gx#identifier?
                                                         _hd1188711951_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1188711951_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1188811953_)
                        (let ((_e1188911956_ (gx#stx-e _tl1188811953_)))
                          (let ((_tl1189111961_ (##cdr _e1188911956_))
                                (_hd1189011959_ (##car _e1188911956_)))
                            (if (gx#stx-pair? _hd1189011959_)
                                (let ((_e1189211964_
                                       (gx#stx-e _hd1189011959_)))
                                  (let ((_tl1189411969_ (##cdr _e1189211964_))
                                        (_hd1189311967_ (##car _e1189211964_)))
                                    (if (gx#identifier? _hd1189311967_)
                                        (if (gx#stx-eq? '%#ref _hd1189311967_)
                                            (if (gx#stx-pair? _tl1189411969_)
                                                (let ((_e1189511972_
                                                       (gx#stx-e
                                                        _tl1189411969_)))
                                                  (let ((_tl1189711977_
                                                         (##cdr _e1189511972_))
                                                        (_hd1189611975_
                                                         (##car _e1189511972_)))
                                                    (if (gx#stx-null?
                                                         _tl1189711977_)
                                                        (if (gx#stx-pair?
                                                             _tl1189111961_)
                                                            (let ((_e1189811980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1189111961_)))
                      (let ((_tl1190011985_ (##cdr _e1189811980_))
                            (_hd1189911983_ (##car _e1189811980_)))
                        (if (gx#stx-pair? _hd1189911983_)
                            (let ((_e1190111988_ (gx#stx-e _hd1189911983_)))
                              (let ((_tl1190311993_ (##cdr _e1190111988_))
                                    (_hd1190211991_ (##car _e1190111988_)))
                                (if (gx#identifier? _hd1190211991_)
                                    (if (gx#stx-eq? '%#ref _hd1190211991_)
                                        (if (gx#stx-pair? _tl1190311993_)
                                            (let ((_e1190411996_
                                                   (gx#stx-e _tl1190311993_)))
                                              (let ((_tl1190612001_
                                                     (##cdr _e1190411996_))
                                                    (_hd1190511999_
                                                     (##car _e1190411996_)))
                                                (if (gx#stx-null?
                                                     _tl1190612001_)
                                                    (if (gx#stx-pair?
                                                         _tl1190011985_)
                                                        (let ((_e1190712004_
                                                               (gx#stx-e
                                                                _tl1190011985_)))
                                                          (let ((_tl1190912009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1190712004_))
                        (_hd1190812007_ (##car _e1190712004_)))
                    (if (gx#stx-pair? _hd1190812007_)
                        (let ((_e1191012012_ (gx#stx-e _hd1190812007_)))
                          (let ((_tl1191212017_ (##cdr _e1191012012_))
                                (_hd1191112015_ (##car _e1191012012_)))
                            (if (gx#identifier? _hd1191112015_)
                                (if (gx#stx-eq? '%#ref _hd1191112015_)
                                    (if (gx#stx-pair? _tl1191212017_)
                                        (let ((_e1191312020_
                                               (gx#stx-e _tl1191212017_)))
                                          (let ((_tl1191512025_
                                                 (##cdr _e1191312020_))
                                                (_hd1191412023_
                                                 (##car _e1191312020_)))
                                            (if (gx#stx-null? _tl1191512025_)
                                                (if (gx#stx-null?
                                                     _tl1190912009_)
                                                    (if (gx#stx-null?
                                                         _tl1188511945_)
                                                        (___match1482114822_
                                                         _e1176812333_
                                                         _hd1176912336_
                                                         _tl1177012338_
                                                         _e1188311940_
                                                         _hd1188411943_
                                                         _tl1188511945_
                                                         _e1188611948_
                                                         _hd1188711951_
                                                         _tl1188811953_
                                                         _e1188911956_
                                                         _hd1189011959_
                                                         _tl1189111961_
                                                         _e1189211964_
                                                         _hd1189311967_
                                                         _tl1189411969_
                                                         _e1189511972_
                                                         _hd1189611975_
                                                         _tl1189711977_
                                                         _e1189811980_
                                                         _hd1189911983_
                                                         _tl1190011985_
                                                         _e1190111988_
                                                         _hd1190211991_
                                                         _tl1190311993_
                                                         _e1190411996_
                                                         _hd1190511999_
                                                         _tl1190612001_
                                                         _e1190712004_
                                                         _hd1190812007_
                                                         _tl1190912009_
                                                         _e1191012012_
                                                         _hd1191112015_
                                                         _tl1191212017_
                                                         _e1191312020_
                                                         _hd1191412023_
                                                         _tl1191512025_)
                                                        (___kont1469614697_))
                                                    (___kont1469614697_))
                                                (___kont1469614697_))))
                                        (___kont1469614697_))
                                    (___kont1469614697_))
                                (___kont1469614697_))))
                        (___kont1469614697_))))
                (___kont1469614697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1469614697_))))
                                            (___kont1469614697_))
                                        (___kont1469614697_))
                                    (___kont1469614697_))))
                            (___kont1469614697_))))
                    (___kont1469614697_))
                (___kont1469614697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1469614697_))
                                            (___kont1469614697_))
                                        (___kont1469614697_))))
                                (___kont1469614697_))))
                        (___kont1469614697_))
                    (___kont1469614697_))
                (___kont1469614697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1469614697_))))
                                        (___kont1469614697_)))))
                            (___kont1469614697_)))))))
               (_dispatch-case-e11071_
                (lambda (_hd11219_ _body11220_)
                  (let* ((_form11222_ (cons _hd11219_ (cons _body11220_ '())))
                         (___stx1482414825_ _form11222_)
                         (_g1122611350_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1482414825_))))
                    (let ((___kont1482614827_
                           (lambda (_L11721_ _L11722_ _L11723_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11722_ '())))))
                          (___kont1483214833_
                           (lambda (_L11569_ _L11570_ _L11571_ _L11572_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11569_ '())))))
                          (___kont1483614837_
                           (lambda (_L11435_ _L11436_ _L11437_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L11435_ '()))))))
                      (let* ((___match1493314934_
                              (lambda (_e1131611355_
                                       _hd1131711358_
                                       _tl1131811360_
                                       _e1131911363_
                                       _hd1132011366_
                                       _tl1132111368_
                                       _e1132211371_
                                       _hd1132311374_
                                       _tl1132411376_
                                       _e1132511379_
                                       _hd1132611382_
                                       _tl1132711384_
                                       _e1132811387_
                                       _hd1132911390_
                                       _tl1133011392_
                                       _e1133111395_
                                       _hd1133211398_
                                       _tl1133311400_
                                       _e1133411403_
                                       _hd1133511406_
                                       _tl1133611408_
                                       _e1133711411_
                                       _hd1133811414_
                                       _tl1133911416_
                                       _e1134011419_
                                       _hd1134111422_
                                       _tl1134211424_)
                                (if (gx#stx-pair? _tl1133611408_)
                                    (let ((_e1134311427_
                                           (gx#stx-e _tl1133611408_)))
                                      (let ((_tl1134511432_
                                             (##cdr _e1134311427_))
                                            (_hd1134411430_
                                             (##car _e1134311427_)))
                                        (if (gx#stx-null? _tl1134511432_)
                                            (if (gx#stx-null? _tl1132111368_)
                                                (___kont1483614837_
                                                 _hd1134111422_
                                                 _hd1133211398_
                                                 _hd1131711358_)
                                                (_g1122611350_))
                                            (_g1122611350_))))
                                    (_g1122611350_))))
                             (___match1486314864_
                              (lambda (_e1127711473_
                                       _hd1127811476_
                                       _tl1127911478_
                                       ___splice1483414835_
                                       _target1128011481_
                                       _tl1128211483_)
                                (letrec ((_loop1128311486_
                                          (lambda (_hd1128111489_
                                                   _arg1128711491_)
                                            (if (gx#stx-pair? _hd1128111489_)
                                                (let ((_e1128411494_
                                                       (gx#stx-e
                                                        _hd1128111489_)))
                                                  (let ((_lp-tl1128611499_
                                                         (##cdr _e1128411494_))
                                                        (_lp-hd1128511497_
                                                         (##car _e1128411494_)))
                                                    (_loop1128311486_
                                                     _lp-tl1128611499_
                                                     (cons _lp-hd1128511497_
                                                           _arg1128711491_))))
                                                (let ((_arg1128811502_
                                                       (reverse _arg1128711491_)))
                                                  (if (gx#stx-pair?
                                                       _tl1127911478_)
                                                      (let ((_e1128911505_
                                                             (gx#stx-e
                                                              _tl1127911478_)))
                                                        (let ((_tl1129111510_
                                                               (##cdr _e1128911505_))
                                                              (_hd1129011508_
                                                               (##car _e1128911505_)))
                                                          (if (gx#stx-pair?
                                                               _hd1129011508_)
                                                              (let ((_e1129211513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1129011508_)))
                        (let ((_tl1129411518_ (##cdr _e1129211513_))
                              (_hd1129311516_ (##car _e1129211513_)))
                          (if (gx#identifier? _hd1129311516_)
                              (if (gx#stx-eq? '%#call _hd1129311516_)
                                  (if (gx#stx-pair? _tl1129411518_)
                                      (let ((_e1129511521_
                                             (gx#stx-e _tl1129411518_)))
                                        (let ((_tl1129711526_
                                               (##cdr _e1129511521_))
                                              (_hd1129611524_
                                               (##car _e1129511521_)))
                                          (if (gx#stx-pair? _hd1129611524_)
                                              (let ((_e1129811529_
                                                     (gx#stx-e
                                                      _hd1129611524_)))
                                                (let ((_tl1130011534_
                                                       (##cdr _e1129811529_))
                                                      (_hd1129911532_
                                                       (##car _e1129811529_)))
                                                  (if (gx#identifier?
                                                       _hd1129911532_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1129911532_)
                                                          (if (gx#stx-pair?
                                                               _tl1130011534_)
                                                              (let ((_e1130111537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1130011534_)))
                        (let ((_tl1130311542_ (##cdr _e1130111537_))
                              (_hd1130211540_ (##car _e1130111537_)))
                          (if (gx#stx-null? _tl1130311542_)
                              (if (gx#stx-pair? _tl1129711526_)
                                  (let ((_e1130411545_
                                         (gx#stx-e _tl1129711526_)))
                                    (let ((_tl1130611550_
                                           (##cdr _e1130411545_))
                                          (_hd1130511548_
                                           (##car _e1130411545_)))
                                      (if (gx#stx-pair? _hd1130511548_)
                                          (let ((_e1130711553_
                                                 (gx#stx-e _hd1130511548_)))
                                            (let ((_tl1130911558_
                                                   (##cdr _e1130711553_))
                                                  (_hd1130811556_
                                                   (##car _e1130711553_)))
                                              (if (gx#identifier?
                                                   _hd1130811556_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1130811556_)
                                                      (if (gx#stx-pair?
                                                           _tl1130911558_)
                                                          (let ((_e1131011561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1130911558_)))
                    (let ((_tl1131211566_ (##cdr _e1131011561_))
                          (_hd1131111564_ (##car _e1131011561_)))
                      (if (gx#stx-null? _tl1131211566_)
                          (if (gx#stx-null? _tl1129111510_)
                              (___kont1483214833_
                               _hd1131111564_
                               _hd1130211540_
                               _tl1128211483_
                               _arg1128811502_)
                              (___match1493314934_
                               _e1127711473_
                               _hd1127811476_
                               _tl1127911478_
                               _e1128911505_
                               _hd1129011508_
                               _tl1129111510_
                               _e1129211513_
                               _hd1129311516_
                               _tl1129411518_
                               _e1129511521_
                               _hd1129611524_
                               _tl1129711526_
                               _e1129811529_
                               _hd1129911532_
                               _tl1130011534_
                               _e1130111537_
                               _hd1130211540_
                               _tl1130311542_
                               _e1130411545_
                               _hd1130511548_
                               _tl1130611550_
                               _e1130711553_
                               _hd1130811556_
                               _tl1130911558_
                               _e1131011561_
                               _hd1131111564_
                               _tl1131211566_))
                          (_g1122611350_))))
                  (_g1122611350_))
              (_g1122611350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1122611350_))))
                                          (_g1122611350_))))
                                  (_g1122611350_))
                              (_g1122611350_))))
                      (_g1122611350_))
                  (_g1122611350_))
              (_g1122611350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1122611350_))))
                                      (_g1122611350_))
                                  (_g1122611350_))
                              (_g1122611350_))))
                      (_g1122611350_))))
              (_g1122611350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1128311486_ _target1128011481_ '()))))
                             (___match1485114852_
                              (lambda (_e1123111609_
                                       _hd1123211612_
                                       _tl1123311614_
                                       ___splice1482814829_
                                       _target1123411617_
                                       _tl1123611619_)
                                (letrec ((_loop1123711622_
                                          (lambda (_hd1123511625_
                                                   _arg1124111627_)
                                            (if (gx#stx-pair? _hd1123511625_)
                                                (let ((_e1123811630_
                                                       (gx#stx-e
                                                        _hd1123511625_)))
                                                  (let ((_lp-tl1124011635_
                                                         (##cdr _e1123811630_))
                                                        (_lp-hd1123911633_
                                                         (##car _e1123811630_)))
                                                    (_loop1123711622_
                                                     _lp-tl1124011635_
                                                     (cons _lp-hd1123911633_
                                                           _arg1124111627_))))
                                                (let ((_arg1124211638_
                                                       (reverse _arg1124111627_)))
                                                  (if (gx#stx-pair?
                                                       _tl1123311614_)
                                                      (let ((_e1124311641_
                                                             (gx#stx-e
                                                              _tl1123311614_)))
                                                        (let ((_tl1124511646_
                                                               (##cdr _e1124311641_))
                                                              (_hd1124411644_
                                                               (##car _e1124311641_)))
                                                          (if (gx#stx-pair?
                                                               _hd1124411644_)
                                                              (let ((_e1124611649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1124411644_)))
                        (let ((_tl1124811654_ (##cdr _e1124611649_))
                              (_hd1124711652_ (##car _e1124611649_)))
                          (if (gx#identifier? _hd1124711652_)
                              (if (gx#stx-eq? '%#call _hd1124711652_)
                                  (if (gx#stx-pair? _tl1124811654_)
                                      (let ((_e1124911657_
                                             (gx#stx-e _tl1124811654_)))
                                        (let ((_tl1125111662_
                                               (##cdr _e1124911657_))
                                              (_hd1125011660_
                                               (##car _e1124911657_)))
                                          (if (gx#stx-pair? _hd1125011660_)
                                              (let ((_e1125211665_
                                                     (gx#stx-e
                                                      _hd1125011660_)))
                                                (let ((_tl1125411670_
                                                       (##cdr _e1125211665_))
                                                      (_hd1125311668_
                                                       (##car _e1125211665_)))
                                                  (if (gx#identifier?
                                                       _hd1125311668_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1125311668_)
                                                          (if (gx#stx-pair?
                                                               _tl1125411670_)
                                                              (let ((_e1125511673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1125411670_)))
                        (let ((_tl1125711678_ (##cdr _e1125511673_))
                              (_hd1125611676_ (##car _e1125511673_)))
                          (if (gx#stx-null? _tl1125711678_)
                              (if (gx#stx-pair/null? _tl1125111662_)
                                  (let ((___splice1483014831_
                                         (gx#syntax-split-splice
                                          _tl1125111662_
                                          '0)))
                                    (let ((_tl1126011683_
                                           (##vector-ref
                                            ___splice1483014831_
                                            '1))
                                          (_target1125811681_
                                           (##vector-ref
                                            ___splice1483014831_
                                            '0)))
                                      (if (gx#stx-null? _tl1126011683_)
                                          (letrec ((_loop1126111686_
                                                    (lambda (_hd1125911689_
                                                             _xarg1126511691_)
                                                      (if (gx#stx-pair?
                                                           _hd1125911689_)
                                                          (let ((_e1126211694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1125911689_)))
                    (let ((_lp-tl1126411699_ (##cdr _e1126211694_))
                          (_lp-hd1126311697_ (##car _e1126211694_)))
                      (if (gx#stx-pair? _lp-hd1126311697_)
                          (let ((_e1126711702_ (gx#stx-e _lp-hd1126311697_)))
                            (let ((_tl1126911707_ (##cdr _e1126711702_))
                                  (_hd1126811705_ (##car _e1126711702_)))
                              (if (gx#identifier? _hd1126811705_)
                                  (if (gx#stx-eq? '%#ref _hd1126811705_)
                                      (if (gx#stx-pair? _tl1126911707_)
                                          (let ((_e1127011710_
                                                 (gx#stx-e _tl1126911707_)))
                                            (let ((_tl1127211715_
                                                   (##cdr _e1127011710_))
                                                  (_hd1127111713_
                                                   (##car _e1127011710_)))
                                              (if (gx#stx-null? _tl1127211715_)
                                                  (_loop1126111686_
                                                   _lp-tl1126411699_
                                                   (cons _hd1127111713_
                                                         _xarg1126511691_))
                                                  (___match1486314864_
                                                   _e1123111609_
                                                   _hd1123211612_
                                                   _tl1123311614_
                                                   ___splice1482814829_
                                                   _target1123411617_
                                                   _tl1123611619_))))
                                          (___match1486314864_
                                           _e1123111609_
                                           _hd1123211612_
                                           _tl1123311614_
                                           ___splice1482814829_
                                           _target1123411617_
                                           _tl1123611619_))
                                      (___match1486314864_
                                       _e1123111609_
                                       _hd1123211612_
                                       _tl1123311614_
                                       ___splice1482814829_
                                       _target1123411617_
                                       _tl1123611619_))
                                  (___match1486314864_
                                   _e1123111609_
                                   _hd1123211612_
                                   _tl1123311614_
                                   ___splice1482814829_
                                   _target1123411617_
                                   _tl1123611619_))))
                          (___match1486314864_
                           _e1123111609_
                           _hd1123211612_
                           _tl1123311614_
                           ___splice1482814829_
                           _target1123411617_
                           _tl1123611619_))))
                  (let ((_xarg1126611718_ (reverse _xarg1126511691_)))
                    (if (gx#stx-null? _tl1124511646_)
                        (___kont1482614827_
                         _xarg1126611718_
                         _hd1125611676_
                         _arg1124211638_)
                        (___match1486314864_
                         _e1123111609_
                         _hd1123211612_
                         _tl1123311614_
                         ___splice1482814829_
                         _target1123411617_
                         _tl1123611619_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1126111686_
                                             _target1125811681_
                                             '()))
                                          (___match1486314864_
                                           _e1123111609_
                                           _hd1123211612_
                                           _tl1123311614_
                                           ___splice1482814829_
                                           _target1123411617_
                                           _tl1123611619_))))
                                  (___match1486314864_
                                   _e1123111609_
                                   _hd1123211612_
                                   _tl1123311614_
                                   ___splice1482814829_
                                   _target1123411617_
                                   _tl1123611619_))
                              (___match1486314864_
                               _e1123111609_
                               _hd1123211612_
                               _tl1123311614_
                               ___splice1482814829_
                               _target1123411617_
                               _tl1123611619_))))
                      (___match1486314864_
                       _e1123111609_
                       _hd1123211612_
                       _tl1123311614_
                       ___splice1482814829_
                       _target1123411617_
                       _tl1123611619_))
                  (___match1486314864_
                   _e1123111609_
                   _hd1123211612_
                   _tl1123311614_
                   ___splice1482814829_
                   _target1123411617_
                   _tl1123611619_))
              (___match1486314864_
               _e1123111609_
               _hd1123211612_
               _tl1123311614_
               ___splice1482814829_
               _target1123411617_
               _tl1123611619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1486314864_
                                               _e1123111609_
                                               _hd1123211612_
                                               _tl1123311614_
                                               ___splice1482814829_
                                               _target1123411617_
                                               _tl1123611619_))))
                                      (___match1486314864_
                                       _e1123111609_
                                       _hd1123211612_
                                       _tl1123311614_
                                       ___splice1482814829_
                                       _target1123411617_
                                       _tl1123611619_))
                                  (___match1486314864_
                                   _e1123111609_
                                   _hd1123211612_
                                   _tl1123311614_
                                   ___splice1482814829_
                                   _target1123411617_
                                   _tl1123611619_))
                              (___match1486314864_
                               _e1123111609_
                               _hd1123211612_
                               _tl1123311614_
                               ___splice1482814829_
                               _target1123411617_
                               _tl1123611619_))))
                      (___match1486314864_
                       _e1123111609_
                       _hd1123211612_
                       _tl1123311614_
                       ___splice1482814829_
                       _target1123411617_
                       _tl1123611619_))))
              (___match1486314864_
               _e1123111609_
               _hd1123211612_
               _tl1123311614_
               ___splice1482814829_
               _target1123411617_
               _tl1123611619_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1123711622_ _target1123411617_ '())))))
                        (if (gx#stx-pair? ___stx1482414825_)
                            (let ((_e1123111609_ (gx#stx-e ___stx1482414825_)))
                              (let ((_tl1123311614_ (##cdr _e1123111609_))
                                    (_hd1123211612_ (##car _e1123111609_)))
                                (if (gx#stx-pair/null? _hd1123211612_)
                                    (let ((___splice1482814829_
                                           (gx#syntax-split-splice
                                            _hd1123211612_
                                            '0)))
                                      (let ((_tl1123611619_
                                             (##vector-ref
                                              ___splice1482814829_
                                              '1))
                                            (_target1123411617_
                                             (##vector-ref
                                              ___splice1482814829_
                                              '0)))
                                        (if (gx#stx-null? _tl1123611619_)
                                            (___match1485114852_
                                             _e1123111609_
                                             _hd1123211612_
                                             _tl1123311614_
                                             ___splice1482814829_
                                             _target1123411617_
                                             _tl1123611619_)
                                            (___match1486314864_
                                             _e1123111609_
                                             _hd1123211612_
                                             _tl1123311614_
                                             ___splice1482814829_
                                             _target1123411617_
                                             _tl1123611619_))))
                                    (if (gx#stx-pair? _tl1123311614_)
                                        (let ((_e1131911363_
                                               (gx#stx-e _tl1123311614_)))
                                          (let ((_tl1132111368_
                                                 (##cdr _e1131911363_))
                                                (_hd1132011366_
                                                 (##car _e1131911363_)))
                                            (if (gx#stx-pair? _hd1132011366_)
                                                (let ((_e1132211371_
                                                       (gx#stx-e
                                                        _hd1132011366_)))
                                                  (let ((_tl1132411376_
                                                         (##cdr _e1132211371_))
                                                        (_hd1132311374_
                                                         (##car _e1132211371_)))
                                                    (if (gx#identifier?
                                                         _hd1132311374_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1132311374_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1132411376_)
                        (let ((_e1132511379_ (gx#stx-e _tl1132411376_)))
                          (let ((_tl1132711384_ (##cdr _e1132511379_))
                                (_hd1132611382_ (##car _e1132511379_)))
                            (if (gx#stx-pair? _hd1132611382_)
                                (let ((_e1132811387_
                                       (gx#stx-e _hd1132611382_)))
                                  (let ((_tl1133011392_ (##cdr _e1132811387_))
                                        (_hd1132911390_ (##car _e1132811387_)))
                                    (if (gx#identifier? _hd1132911390_)
                                        (if (gx#stx-eq? '%#ref _hd1132911390_)
                                            (if (gx#stx-pair? _tl1133011392_)
                                                (let ((_e1133111395_
                                                       (gx#stx-e
                                                        _tl1133011392_)))
                                                  (let ((_tl1133311400_
                                                         (##cdr _e1133111395_))
                                                        (_hd1133211398_
                                                         (##car _e1133111395_)))
                                                    (if (gx#stx-null?
                                                         _tl1133311400_)
                                                        (if (gx#stx-pair?
                                                             _tl1132711384_)
                                                            (let ((_e1133411403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1132711384_)))
                      (let ((_tl1133611408_ (##cdr _e1133411403_))
                            (_hd1133511406_ (##car _e1133411403_)))
                        (if (gx#stx-pair? _hd1133511406_)
                            (let ((_e1133711411_ (gx#stx-e _hd1133511406_)))
                              (let ((_tl1133911416_ (##cdr _e1133711411_))
                                    (_hd1133811414_ (##car _e1133711411_)))
                                (if (gx#identifier? _hd1133811414_)
                                    (if (gx#stx-eq? '%#ref _hd1133811414_)
                                        (if (gx#stx-pair? _tl1133911416_)
                                            (let ((_e1134011419_
                                                   (gx#stx-e _tl1133911416_)))
                                              (let ((_tl1134211424_
                                                     (##cdr _e1134011419_))
                                                    (_hd1134111422_
                                                     (##car _e1134011419_)))
                                                (if (gx#stx-null?
                                                     _tl1134211424_)
                                                    (if (gx#stx-pair?
                                                         _tl1133611408_)
                                                        (let ((_e1134311427_
                                                               (gx#stx-e
                                                                _tl1133611408_)))
                                                          (let ((_tl1134511432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1134311427_))
                        (_hd1134411430_ (##car _e1134311427_)))
                    (if (gx#stx-null? _tl1134511432_)
                        (if (gx#stx-null? _tl1132111368_)
                            (___kont1483614837_
                             _hd1134111422_
                             _hd1133211398_
                             _hd1123211612_)
                            (_g1122611350_))
                        (_g1122611350_))))
                (_g1122611350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1122611350_))))
                                            (_g1122611350_))
                                        (_g1122611350_))
                                    (_g1122611350_))))
                            (_g1122611350_))))
                    (_g1122611350_))
                (_g1122611350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1122611350_))
                                            (_g1122611350_))
                                        (_g1122611350_))))
                                (_g1122611350_))))
                        (_g1122611350_))
                    (_g1122611350_))
                (_g1122611350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1122611350_))))
                                        (_g1122611350_)))))
                            (_g1122611350_)))))))
               (_generate111072_
                (lambda (_args11207_ _arglen11208_ _hd11209_ _body11210_)
                  (let* ((_len11212_ (gx#stx-length _hd11209_))
                         (_condition11214_
                          (if (gx#stx-list? _hd11209_)
                              (cons '##fx=
                                    (cons _arglen11208_ (cons _len11212_ '())))
                              (if (> _len11212_ '0)
                                  (cons '##fx>=
                                        (cons _arglen11208_
                                              (cons _len11212_ '())))
                                  '#t)))
                         (_dispatch11216_
                          (if (_dispatch-case?11070_ _hd11209_ _body11210_)
                              (_dispatch-case-e11071_ _hd11209_ _body11210_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd11209_)
                                          (cons (gxc#compile-e _body11210_)
                                                '()))))))
                    (cons _condition11214_
                          (cons (cons 'apply
                                      (cons _dispatch11216_
                                            (cons _args11207_ '())))
                                '()))))))
        (let* ((_g1107411102_
                (lambda (_g1107511099_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1107511099_)))
               (_g1107311204_
                (lambda (_g1107511105_)
                  (if (gx#stx-pair? _g1107511105_)
                      (let ((_e1107811107_ (gx#stx-e _g1107511105_)))
                        (let ((_hd1107911110_ (##car _e1107811107_))
                              (_tl1108011112_ (##cdr _e1107811107_)))
                          (if (gx#stx-pair/null? _tl1108011112_)
                              (let ((_g15636_
                                     (gx#syntax-split-splice
                                      _tl1108011112_
                                      '0)))
                                (begin
                                  (let ((_g15637_
                                         (if (##values? _g15636_)
                                             (##vector-length _g15636_)
                                             1)))
                                    (if (not (##fx= _g15637_ 2))
                                        (error "Context expects 2 values"
                                               _g15637_)))
                                  (let ((_target1108111115_
                                         (##vector-ref _g15636_ 0))
                                        (_tl1108311117_
                                         (##vector-ref _g15636_ 1)))
                                    (if (gx#stx-null? _tl1108311117_)
                                        (letrec ((_loop1108411120_
                                                  (lambda (_hd1108211123_
                                                           _body1108811125_
                                                           _hd1108911127_)
                                                    (if (gx#stx-pair?
                                                         _hd1108211123_)
                                                        (let ((_e1108511130_
                                                               (gx#stx-e
                                                                _hd1108211123_)))
                                                          (let ((_lp-hd1108611133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1108511130_))
                        (_lp-tl1108711135_ (##cdr _e1108511130_)))
                    (if (gx#stx-pair? _lp-hd1108611133_)
                        (let ((_e1109211138_ (gx#stx-e _lp-hd1108611133_)))
                          (let ((_hd1109311141_ (##car _e1109211138_))
                                (_tl1109411143_ (##cdr _e1109211138_)))
                            (if (gx#stx-pair? _tl1109411143_)
                                (let ((_e1109511146_
                                       (gx#stx-e _tl1109411143_)))
                                  (let ((_hd1109611149_ (##car _e1109511146_))
                                        (_tl1109711151_ (##cdr _e1109511146_)))
                                    (if (gx#stx-null? _tl1109711151_)
                                        (_loop1108411120_
                                         _lp-tl1108711135_
                                         (cons _hd1109611149_ _body1108811125_)
                                         (cons _hd1109311141_ _hd1108911127_))
                                        (_g1107411102_ _g1107511105_))))
                                (_g1107411102_ _g1107511105_))))
                        (_g1107411102_ _g1107511105_))))
                (let ((_body1109011154_ (reverse _body1108811125_))
                      (_hd1109111156_ (reverse _hd1108911127_)))
                  ((lambda (_L11159_ _L11160_)
                     (let ((_args11179_ (gxc#generate-runtime-temporary__0))
                           (_arglen11180_ (gxc#generate-runtime-temporary__0))
                           (_name11181_
                            (let ((_$e11176_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx11068_
                                    '#f)))
                              (if _$e11176_
                                  _$e11176_
                                  ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args11179_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen11180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args11179_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name11181_
                                                               (cons _args11179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g1118211185_ _g1118311187_)
                                        (_generate111072_
                                         _args11179_
                                         _arglen11180_
                                         _g1118211185_
                                         _g1118311187_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1118911192_
                                                         _g1119011194_)
                                                  (cons _g1118911192_
                                                        _g1119011194_))
                                                '()
                                                _L11160_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g1119611199_
                                                         _g1119711201_)
                                                  (cons _g1119611199_
                                                        _g1119711201_))
                                                '()
                                                _L11159_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body1109011154_
                   _hd1109111156_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1108411120_
                                           _target1108111115_
                                           '()
                                           '()))
                                        (_g1107411102_ _g1107511105_)))))
                              (_g1107411102_ _g1107511105_))))
                      (_g1107411102_ _g1107511105_)))))
          (_g1107311204_ _stx11068_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx10133_ _compiled-body?10134_)
        (letrec ((_generate-simple10136_
                  (lambda (_hd11055_ _body11056_)
                    (_coalesce-let*10137_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd11055_
                      _body11056_
                      _compiled-body?10134_))))
                 (_coalesce-let*10137_
                  (lambda (_code10439_)
                    (let* ((___stx1494614947_ _code10439_)
                           (_g1044410579_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1494614947_))))
                      (let ((___kont1494814949_
                             (lambda (_L11014_ _L11015_ _L11016_)
                               (cons 'let
                                     (cons (cons (cons _L11016_
                                                       (cons _L11015_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1104411047_
                                                              _g1104511049_)
                                                       (cons _g1104411047_
                                                             _g1104511049_))
                                                     '()
                                                     _L11014_))))))
                            (___kont1495214953_
                             (lambda (_L10873_
                                      _L10874_
                                      _L10875_
                                      _L10876_
                                      _L10877_)
                               (cons 'let*
                                     (cons (cons (cons _L10877_
                                                       (cons _L10876_ '()))
                                                 (cons (cons _L10875_
                                                             (cons _L10874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1091310916_
                                                              _g1091410918_)
                                                       (cons _g1091310916_
                                                             _g1091410918_))
                                                     '()
                                                     _L10873_))))))
                            (___kont1495614957_
                             (lambda (_L10703_ _L10704_ _L10705_ _L10706_)
                               (cons 'let*
                                     (cons (cons (cons _L10706_
                                                       (cons _L10705_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g1074110744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1074210746_)
                     (cons _g1074110744_ _g1074210746_))
                   '()
                   _L10704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g1074810751_
                                                              _g1074910753_)
                                                       (cons _g1074810751_
                                                             _g1074910753_))
                                                     '()
                                                     _L10703_))))))
                            (___kont1496214963_ (lambda () _code10439_)))
                        (let* ((___match1519115192_
                                (lambda (_e1053310591_
                                         _hd1053410594_
                                         _tl1053510596_
                                         _e1053610599_
                                         _hd1053710602_
                                         _tl1053810604_
                                         _e1053910607_
                                         _hd1054010610_
                                         _tl1054110612_
                                         _e1054210615_
                                         _hd1054310618_
                                         _tl1054410620_
                                         _e1054510623_
                                         _hd1054610626_
                                         _tl1054710628_
                                         _e1054810631_
                                         _hd1054910634_
                                         _tl1055010636_
                                         _e1055110639_
                                         _hd1055210642_
                                         _tl1055310644_
                                         _e1055410647_
                                         _hd1055510650_
                                         _tl1055610652_
                                         ___splice1495814959_
                                         _target1055710655_
                                         _tl1055910657_)
                                  (letrec ((_loop1056010660_
                                            (lambda (_hd1055810663_
                                                     _bind1056410665_)
                                              (if (gx#stx-pair? _hd1055810663_)
                                                  (let ((_e1056110668_
                                                         (gx#stx-e
                                                          _hd1055810663_)))
                                                    (let ((_lp-tl1056310673_
                                                           (##cdr _e1056110668_))
                                                          (_lp-hd1056210671_
                                                           (##car _e1056110668_)))
                                                      (_loop1056010660_
                                                       _lp-tl1056310673_
                                                       (cons _lp-hd1056210671_
                                                             _bind1056410665_))))
                                                  (let ((_bind1056510676_
                                                         (reverse _bind1056410665_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl1055610652_)
                                                        (let ((___splice1496014961_
                                                               (gx#syntax-split-splice
                                                                _tl1055610652_
                                                                '0)))
                                                          (let ((_tl1056810681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1496014961_ '1))
                        (_target1056610679_
                         (##vector-ref ___splice1496014961_ '0)))
                    (if (gx#stx-null? _tl1056810681_)
                        (letrec ((_loop1056910684_
                                  (lambda (_hd1056710687_ _body1057310689_)
                                    (if (gx#stx-pair? _hd1056710687_)
                                        (let ((_e1057010692_
                                               (gx#stx-e _hd1056710687_)))
                                          (let ((_lp-tl1057210697_
                                                 (##cdr _e1057010692_))
                                                (_lp-hd1057110695_
                                                 (##car _e1057010692_)))
                                            (_loop1056910684_
                                             _lp-tl1057210697_
                                             (cons _lp-hd1057110695_
                                                   _body1057310689_))))
                                        (let ((_body1057410700_
                                               (reverse _body1057310689_)))
                                          (if (gx#stx-null? _tl1055010636_)
                                              (___kont1495614957_
                                               _body1057410700_
                                               _bind1056510676_
                                               _hd1054610626_
                                               _hd1054310618_)
                                              (___kont1496214963_)))))))
                          (_loop1056910684_ _target1056610679_ '()))
                        (___kont1496214963_))))
                (___kont1496214963_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1056010660_
                                     _target1055710655_
                                     '()))))
                               (___match1512315124_
                                (lambda (_e1048710761_
                                         _hd1048810764_
                                         _tl1048910766_
                                         _e1049010769_
                                         _hd1049110772_
                                         _tl1049210774_
                                         _e1049310777_
                                         _hd1049410780_
                                         _tl1049510782_
                                         _e1049610785_
                                         _hd1049710788_
                                         _tl1049810790_
                                         _e1049910793_
                                         _hd1050010796_
                                         _tl1050110798_
                                         _e1050210801_
                                         _hd1050310804_
                                         _tl1050410806_
                                         _e1050510809_
                                         _hd1050610812_
                                         _tl1050710814_
                                         _e1050810817_
                                         _hd1050910820_
                                         _tl1051010822_
                                         _e1051110825_
                                         _hd1051210828_
                                         _tl1051310830_
                                         _e1051410833_
                                         _hd1051510836_
                                         _tl1051610838_
                                         _e1051710841_
                                         _hd1051810844_
                                         _tl1051910846_
                                         ___splice1495414955_
                                         _target1052010849_
                                         _tl1052210851_)
                                  (letrec ((_loop1052310854_
                                            (lambda (_hd1052110857_
                                                     _body1052710859_)
                                              (if (gx#stx-pair? _hd1052110857_)
                                                  (let ((_e1052410862_
                                                         (gx#stx-e
                                                          _hd1052110857_)))
                                                    (let ((_lp-tl1052610867_
                                                           (##cdr _e1052410862_))
                                                          (_lp-hd1052510865_
                                                           (##car _e1052410862_)))
                                                      (_loop1052310854_
                                                       _lp-tl1052610867_
                                                       (cons _lp-hd1052510865_
                                                             _body1052710859_))))
                                                  (let ((_body1052810870_
                                                         (reverse _body1052710859_)))
                                                    (if (gx#stx-null?
                                                         _tl1050410806_)
                                                        (___kont1495214953_
                                                         _body1052810870_
                                                         _hd1051810844_
                                                         _hd1051510836_
                                                         _hd1050010796_
                                                         _hd1049710788_)
                                                        (___kont1496214963_)))))))
                                    (_loop1052310854_
                                     _target1052010849_
                                     '()))))
                               (___match1503315034_
                                (lambda (_e1044910926_
                                         _hd1045010929_
                                         _tl1045110931_
                                         _e1045210934_
                                         _hd1045310937_
                                         _tl1045410939_
                                         _e1045510942_
                                         _hd1045610945_
                                         _tl1045710947_
                                         _e1045810950_
                                         _hd1045910953_
                                         _tl1046010955_
                                         _e1046110958_
                                         _hd1046210961_
                                         _tl1046310963_
                                         _e1046410966_
                                         _hd1046510969_
                                         _tl1046610971_
                                         _e1046710974_
                                         _hd1046810977_
                                         _tl1046910979_
                                         _e1047010982_
                                         _hd1047110985_
                                         _tl1047210987_
                                         ___splice1495014951_
                                         _target1047310990_
                                         _tl1047510992_)
                                  (letrec ((_loop1047610995_
                                            (lambda (_hd1047410998_
                                                     _body1048011000_)
                                              (if (gx#stx-pair? _hd1047410998_)
                                                  (let ((_e1047711003_
                                                         (gx#stx-e
                                                          _hd1047410998_)))
                                                    (let ((_lp-tl1047911008_
                                                           (##cdr _e1047711003_))
                                                          (_lp-hd1047811006_
                                                           (##car _e1047711003_)))
                                                      (_loop1047610995_
                                                       _lp-tl1047911008_
                                                       (cons _lp-hd1047811006_
                                                             _body1048011000_))))
                                                  (let ((_body1048111011_
                                                         (reverse _body1048011000_)))
                                                    (if (gx#stx-null?
                                                         _tl1046610971_)
                                                        (___kont1494814949_
                                                         _body1048111011_
                                                         _hd1046210961_
                                                         _hd1045910953_)
                                                        (___kont1496214963_)))))))
                                    (_loop1047610995_
                                     _target1047310990_
                                     '())))))
                          (if (gx#stx-pair? ___stx1494614947_)
                              (let ((_e1044910926_
                                     (gx#stx-e ___stx1494614947_)))
                                (let ((_tl1045110931_ (##cdr _e1044910926_))
                                      (_hd1045010929_ (##car _e1044910926_)))
                                  (if (gx#identifier? _hd1045010929_)
                                      (if (gx#stx-eq? 'let _hd1045010929_)
                                          (if (gx#stx-pair? _tl1045110931_)
                                              (let ((_e1045210934_
                                                     (gx#stx-e
                                                      _tl1045110931_)))
                                                (let ((_tl1045410939_
                                                       (##cdr _e1045210934_))
                                                      (_hd1045310937_
                                                       (##car _e1045210934_)))
                                                  (if (gx#stx-pair?
                                                       _hd1045310937_)
                                                      (let ((_e1045510942_
                                                             (gx#stx-e
                                                              _hd1045310937_)))
                                                        (let ((_tl1045710947_
                                                               (##cdr _e1045510942_))
                                                              (_hd1045610945_
                                                               (##car _e1045510942_)))
                                                          (if (gx#stx-pair?
                                                               _hd1045610945_)
                                                              (let ((_e1045810950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1045610945_)))
                        (let ((_tl1046010955_ (##cdr _e1045810950_))
                              (_hd1045910953_ (##car _e1045810950_)))
                          (if (gx#stx-pair? _tl1046010955_)
                              (let ((_e1046110958_ (gx#stx-e _tl1046010955_)))
                                (let ((_tl1046310963_ (##cdr _e1046110958_))
                                      (_hd1046210961_ (##car _e1046110958_)))
                                  (if (gx#stx-null? _tl1046310963_)
                                      (if (gx#stx-null? _tl1045710947_)
                                          (if (gx#stx-pair? _tl1045410939_)
                                              (let ((_e1046410966_
                                                     (gx#stx-e
                                                      _tl1045410939_)))
                                                (let ((_tl1046610971_
                                                       (##cdr _e1046410966_))
                                                      (_hd1046510969_
                                                       (##car _e1046410966_)))
                                                  (if (gx#stx-pair?
                                                       _hd1046510969_)
                                                      (let ((_e1046710974_
                                                             (gx#stx-e
                                                              _hd1046510969_)))
                                                        (let ((_tl1046910979_
                                                               (##cdr _e1046710974_))
                                                              (_hd1046810977_
                                                               (##car _e1046710974_)))
                                                          (if (gx#identifier?
                                                               _hd1046810977_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd1046810977_)
                          (if (gx#stx-pair? _tl1046910979_)
                              (let ((_e1047010982_ (gx#stx-e _tl1046910979_)))
                                (let ((_tl1047210987_ (##cdr _e1047010982_))
                                      (_hd1047110985_ (##car _e1047010982_)))
                                  (if (gx#stx-null? _hd1047110985_)
                                      (if (gx#stx-pair/null? _tl1047210987_)
                                          (let ((___splice1495014951_
                                                 (gx#syntax-split-splice
                                                  _tl1047210987_
                                                  '0)))
                                            (let ((_tl1047510992_
                                                   (##vector-ref
                                                    ___splice1495014951_
                                                    '1))
                                                  (_target1047310990_
                                                   (##vector-ref
                                                    ___splice1495014951_
                                                    '0)))
                                              (if (gx#stx-null? _tl1047510992_)
                                                  (___match1503315034_
                                                   _e1044910926_
                                                   _hd1045010929_
                                                   _tl1045110931_
                                                   _e1045210934_
                                                   _hd1045310937_
                                                   _tl1045410939_
                                                   _e1045510942_
                                                   _hd1045610945_
                                                   _tl1045710947_
                                                   _e1045810950_
                                                   _hd1045910953_
                                                   _tl1046010955_
                                                   _e1046110958_
                                                   _hd1046210961_
                                                   _tl1046310963_
                                                   _e1046410966_
                                                   _hd1046510969_
                                                   _tl1046610971_
                                                   _e1046710974_
                                                   _hd1046810977_
                                                   _tl1046910979_
                                                   _e1047010982_
                                                   _hd1047110985_
                                                   _tl1047210987_
                                                   ___splice1495014951_
                                                   _target1047310990_
                                                   _tl1047510992_)
                                                  (___kont1496214963_))))
                                          (___kont1496214963_))
                                      (if (gx#stx-pair? _hd1047110985_)
                                          (let ((_e1051110825_
                                                 (gx#stx-e _hd1047110985_)))
                                            (let ((_tl1051310830_
                                                   (##cdr _e1051110825_))
                                                  (_hd1051210828_
                                                   (##car _e1051110825_)))
                                              (if (gx#stx-pair? _hd1051210828_)
                                                  (let ((_e1051410833_
                                                         (gx#stx-e
                                                          _hd1051210828_)))
                                                    (let ((_tl1051610838_
                                                           (##cdr _e1051410833_))
                                                          (_hd1051510836_
                                                           (##car _e1051410833_)))
                                                      (if (gx#stx-pair?
                                                           _tl1051610838_)
                                                          (let ((_e1051710841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1051610838_)))
                    (let ((_tl1051910846_ (##cdr _e1051710841_))
                          (_hd1051810844_ (##car _e1051710841_)))
                      (if (gx#stx-null? _tl1051910846_)
                          (if (gx#stx-null? _tl1051310830_)
                              (if (gx#stx-pair/null? _tl1047210987_)
                                  (let ((___splice1495414955_
                                         (gx#syntax-split-splice
                                          _tl1047210987_
                                          '0)))
                                    (let ((_tl1052210851_
                                           (##vector-ref
                                            ___splice1495414955_
                                            '1))
                                          (_target1052010849_
                                           (##vector-ref
                                            ___splice1495414955_
                                            '0)))
                                      (if (gx#stx-null? _tl1052210851_)
                                          (___match1512315124_
                                           _e1044910926_
                                           _hd1045010929_
                                           _tl1045110931_
                                           _e1045210934_
                                           _hd1045310937_
                                           _tl1045410939_
                                           _e1045510942_
                                           _hd1045610945_
                                           _tl1045710947_
                                           _e1045810950_
                                           _hd1045910953_
                                           _tl1046010955_
                                           _e1046110958_
                                           _hd1046210961_
                                           _tl1046310963_
                                           _e1046410966_
                                           _hd1046510969_
                                           _tl1046610971_
                                           _e1046710974_
                                           _hd1046810977_
                                           _tl1046910979_
                                           _e1047010982_
                                           _hd1047110985_
                                           _tl1047210987_
                                           _e1051110825_
                                           _hd1051210828_
                                           _tl1051310830_
                                           _e1051410833_
                                           _hd1051510836_
                                           _tl1051610838_
                                           _e1051710841_
                                           _hd1051810844_
                                           _tl1051910846_
                                           ___splice1495414955_
                                           _target1052010849_
                                           _tl1052210851_)
                                          (___kont1496214963_))))
                                  (___kont1496214963_))
                              (___kont1496214963_))
                          (___kont1496214963_))))
                  (___kont1496214963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1496214963_))))
                                          (___kont1496214963_)))))
                              (___kont1496214963_))
                          (if (gx#stx-eq? 'let* _hd1046810977_)
                              (if (gx#stx-pair? _tl1046910979_)
                                  (let ((_e1055410647_
                                         (gx#stx-e _tl1046910979_)))
                                    (let ((_tl1055610652_
                                           (##cdr _e1055410647_))
                                          (_hd1055510650_
                                           (##car _e1055410647_)))
                                      (if (gx#stx-pair/null? _hd1055510650_)
                                          (let ((___splice1495814959_
                                                 (gx#syntax-split-splice
                                                  _hd1055510650_
                                                  '0)))
                                            (let ((_tl1055910657_
                                                   (##vector-ref
                                                    ___splice1495814959_
                                                    '1))
                                                  (_target1055710655_
                                                   (##vector-ref
                                                    ___splice1495814959_
                                                    '0)))
                                              (if (gx#stx-null? _tl1055910657_)
                                                  (___match1519115192_
                                                   _e1044910926_
                                                   _hd1045010929_
                                                   _tl1045110931_
                                                   _e1045210934_
                                                   _hd1045310937_
                                                   _tl1045410939_
                                                   _e1045510942_
                                                   _hd1045610945_
                                                   _tl1045710947_
                                                   _e1045810950_
                                                   _hd1045910953_
                                                   _tl1046010955_
                                                   _e1046110958_
                                                   _hd1046210961_
                                                   _tl1046310963_
                                                   _e1046410966_
                                                   _hd1046510969_
                                                   _tl1046610971_
                                                   _e1046710974_
                                                   _hd1046810977_
                                                   _tl1046910979_
                                                   _e1055410647_
                                                   _hd1055510650_
                                                   _tl1055610652_
                                                   ___splice1495814959_
                                                   _target1055710655_
                                                   _tl1055910657_)
                                                  (___kont1496214963_))))
                                          (___kont1496214963_))))
                                  (___kont1496214963_))
                              (___kont1496214963_)))
                      (___kont1496214963_))))
              (___kont1496214963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1496214963_))
                                          (___kont1496214963_))
                                      (___kont1496214963_))))
                              (___kont1496214963_))))
                      (___kont1496214963_))))
              (___kont1496214963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1496214963_))
                                          (___kont1496214963_))
                                      (___kont1496214963_))))
                              (___kont1496214963_)))))))
                 (_generate-values10138_
                  (lambda (_hd10252_ _body10253_)
                    (let _lp10255_ ((_rest10257_ _hd10252_)
                                    (_bind10258_ '())
                                    (_check10259_ '())
                                    (_post10260_ '()))
                      (let* ((___stx1523815239_ _rest10257_)
                             (_g1026310274_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1523815239_))))
                        (let ((___kont1524015241_
                               (lambda (_L10301_ _L10302_)
                                 (let* ((___stx1519415195_ _L10302_)
                                        (_g1031710342_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1519415195_))))
                                   (let ((___kont1519615197_
                                          (lambda (_L10415_ _L10416_)
                                            (let ((_eid10430_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L10416_))
                                                  (_expr10431_
                                                   (gxc#compile-e _L10415_)))
                                              (_lp10255_
                                               _L10301_
                                               (cons (cons _eid10430_
                                                           (cons _expr10431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10258_)
                                               _check10259_
                                               _post10260_))))
                                         (___kont1519815199_
                                          (lambda (_L10363_ _L10364_)
                                            (let* ((_vals10377_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values10379_
                                                    (gxc#generate-runtime-check-values
                                                     _vals10377_
                                                     _L10364_
                                                     _L10363_))
                                                   (_refs10381_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals10377_
                                                     _L10364_))
                                                   (_expr10383_
                                                    (gxc#compile-e _L10363_)))
                                              (_lp10255_
                                               _L10301_
                                               (cons (cons _vals10377_
                                                           (cons _expr10383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10258_)
                                               (cons _check-values10379_
                                                     _check10259_)
                                               (cons _refs10381_
                                                     _post10260_))))))
                                     (if (gx#stx-pair? ___stx1519415195_)
                                         (let ((_e1032110391_
                                                (gx#stx-e ___stx1519415195_)))
                                           (let ((_tl1032310396_
                                                  (##cdr _e1032110391_))
                                                 (_hd1032210394_
                                                  (##car _e1032110391_)))
                                             (if (gx#stx-pair? _hd1032210394_)
                                                 (let ((_e1032410399_
                                                        (gx#stx-e
                                                         _hd1032210394_)))
                                                   (let ((_tl1032610404_
                                                          (##cdr _e1032410399_))
                                                         (_hd1032510402_
                                                          (##car _e1032410399_)))
                                                     (if (gx#stx-null?
                                                          _tl1032610404_)
                                                         (if (gx#stx-pair?
                                                              _tl1032310396_)
                                                             (let ((_e1032710407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1032310396_)))
                       (let ((_tl1032910412_ (##cdr _e1032710407_))
                             (_hd1032810410_ (##car _e1032710407_)))
                         (if (gx#stx-null? _tl1032910412_)
                             (___kont1519615197_ _hd1032810410_ _hd1032510402_)
                             (_g1031710342_))))
                     (_g1031710342_))
                 (if (gx#stx-pair? _tl1032310396_)
                     (let ((_e1033510355_ (gx#stx-e _tl1032310396_)))
                       (let ((_tl1033710360_ (##cdr _e1033510355_))
                             (_hd1033610358_ (##car _e1033510355_)))
                         (if (gx#stx-null? _tl1033710360_)
                             (___kont1519815199_ _hd1033610358_ _hd1032210394_)
                             (_g1031710342_))))
                     (_g1031710342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1032310396_)
                                                     (let ((_e1033510355_
                                                            (gx#stx-e
                                                             _tl1032310396_)))
                                                       (let ((_tl1033710360_
                                                              (##cdr _e1033510355_))
                                                             (_hd1033610358_
                                                              (##car _e1033510355_)))
                                                         (if (gx#stx-null?
                                                              _tl1033710360_)
                                                             (___kont1519815199_
                                                              _hd1033610358_
                                                              _hd1032210394_)
                                                             (_g1031710342_))))
                                                     (_g1031710342_)))))
                                         (_g1031710342_))))))
                              (___kont1524215243_
                               (lambda ()
                                 (let* ((_body10281_
                                         (if _compiled-body?10134_
                                             _body10253_
                                             (gxc#compile-e _body10253_)))
                                        (_body10283_
                                         (_generate-values-post10139_
                                          _post10260_
                                          _body10281_))
                                        (_body10285_
                                         (_generate-values-check10140_
                                          _check10259_
                                          _body10283_)))
                                   (cons 'let
                                         (cons (reverse _bind10258_)
                                               (cons _body10285_ '())))))))
                          (if (gx#stx-pair? ___stx1523815239_)
                              (let ((_e1026710293_
                                     (gx#stx-e ___stx1523815239_)))
                                (let ((_tl1026910298_ (##cdr _e1026710293_))
                                      (_hd1026810296_ (##car _e1026710293_)))
                                  (___kont1524015241_
                                   _tl1026910298_
                                   _hd1026810296_)))
                              (___kont1524215243_)))))))
                 (_generate-values-post10139_
                  (lambda (_post10211_ _body10212_)
                    (let _lp10214_ ((_rest10216_ _post10211_)
                                    (_body10217_ _body10212_))
                      (let* ((_rest1021810226_ _rest10216_)
                             (_else1022010234_ (lambda () _body10217_))
                             (_K1022210240_
                              (lambda (_rest10237_ _bind10238_)
                                (_lp10214_
                                 _rest10237_
                                 (cons 'let
                                       (cons _bind10238_
                                             (cons _body10217_ '())))))))
                        (if (##pair? _rest1021810226_)
                            (let ((_hd1022310243_ (##car _rest1021810226_))
                                  (_tl1022410245_ (##cdr _rest1021810226_)))
                              (let* ((_bind10248_ _hd1022310243_)
                                     (_rest10250_ _tl1022410245_))
                                (_K1022210240_ _rest10250_ _bind10248_)))
                            (_else1022010234_))))))
                 (_generate-values-check10140_
                  (lambda (_check10208_ _body10209_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10209_ '())
                                  (reverse _check10208_))))))
          (let* ((_g1014210159_
                  (lambda (_g1014310156_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1014310156_)))
                 (_g1014110205_
                  (lambda (_g1014310162_)
                    (if (gx#stx-pair? _g1014310162_)
                        (let ((_e1014610164_ (gx#stx-e _g1014310162_)))
                          (let ((_hd1014710167_ (##car _e1014610164_))
                                (_tl1014810169_ (##cdr _e1014610164_)))
                            (if (gx#stx-pair? _tl1014810169_)
                                (let ((_e1014910172_
                                       (gx#stx-e _tl1014810169_)))
                                  (let ((_hd1015010175_ (##car _e1014910172_))
                                        (_tl1015110177_ (##cdr _e1014910172_)))
                                    (if (gx#stx-pair? _tl1015110177_)
                                        (let ((_e1015210180_
                                               (gx#stx-e _tl1015110177_)))
                                          (let ((_hd1015310183_
                                                 (##car _e1015210180_))
                                                (_tl1015410185_
                                                 (##cdr _e1015210180_)))
                                            (if (gx#stx-null? _tl1015410185_)
                                                ((lambda (_L10188_ _L10189_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10189_)
                                                       (_generate-simple10136_
                                                        _L10189_
                                                        _L10188_)
                                                       (_generate-values10138_
                                                        _L10189_
                                                        _L10188_)))
                                                 _hd1015310183_
                                                 _hd1015010175_)
                                                (_g1014210159_
                                                 _g1014310162_))))
                                        (_g1014210159_ _g1014310162_))))
                                (_g1014210159_ _g1014310162_))))
                        (_g1014210159_ _g1014310162_)))))
            (_g1014110205_ _stx10133_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx11061_)
          (let ((_compiled-body?11063_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx11061_
             _compiled-body?11063_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g15639_
          (let ((_g15638_ (length _g15639_)))
            (cond ((##fx= _g15638_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g15639_))
                  ((##fx= _g15638_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g15639_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g15639_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals10027_ _hd10028_)
      (let _lp10030_ ((_rest10032_ _hd10028_) (_k10033_ '0) (_r10034_ '()))
        (let* ((___stx1525215253_ _rest10032_)
               (_g1003910056_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1525215253_))))
          (let ((___kont1525415255_
                 (lambda (_L10119_)
                   (_lp10030_ _L10119_ (fx+ _k10033_ '1) _r10034_)))
                (___kont1525615257_
                 (lambda (_L10092_ _L10093_)
                   (_lp10030_
                    _L10092_
                    (fx+ _k10033_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L10093_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals10027_
                                       _k10033_
                                       _L10092_)
                                      '()))
                          _r10034_))))
                (___kont1525815259_
                 (lambda (_L10068_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L10068_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals10027_
                                              _k10033_)
                                             '()))
                                 '())
                           _r10034_)))
                (___kont1526015261_ (lambda () (reverse _r10034_))))
            (let ((_g1003710079_
                   (lambda ()
                     (let ((_L10068_ ___stx1525215253_))
                       (if (gx#identifier? _L10068_)
                           (___kont1525815259_ _L10068_)
                           (___kont1526015261_))))))
              (if (gx#stx-pair? ___stx1525215253_)
                  (let ((_e1004210108_ (gx#stx-e ___stx1525215253_)))
                    (let ((_tl1004410113_ (##cdr _e1004210108_))
                          (_hd1004310111_ (##car _e1004210108_)))
                      (if (gx#stx-datum? _hd1004310111_)
                          (let ((_e1004510116_ (gx#stx-e _hd1004310111_)))
                            (if (equal? _e1004510116_ '#f)
                                (___kont1525415255_ _tl1004410113_)
                                (___kont1525615257_
                                 _tl1004410113_
                                 _hd1004310111_)))
                          (___kont1525615257_ _tl1004410113_ _hd1004310111_))))
                  (_g1003710079_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx9709_ _compiled-body?9710_)
        (letrec ((_generate-simple9712_
                  (lambda (_hd10014_ _body10015_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd10014_
                     _body10015_
                     _compiled-body?9710_)))
                 (_generate-values9713_
                  (lambda (_hd9793_ _body9794_)
                    (let _lp9796_ ((_rest9798_ _hd9793_)
                                   (_bind9799_ '())
                                   (_check9800_ '())
                                   (_post9801_ '()))
                      (let* ((___stx1532615327_ _rest9798_)
                             (_g98049815_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1532615327_))))
                        (let ((___kont1532815329_
                               (lambda (_L9842_ _L9843_)
                                 (let* ((___stx1528215283_ _L9843_)
                                        (_g98589883_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1528215283_))))
                                   (let ((___kont1528415285_
                                          (lambda (_L9990_ _L9991_)
                                            (let ((_eid10005_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9991_))
                                                  (_expr10006_
                                                   (gxc#compile-e _L9990_)))
                                              (_lp9796_
                                               _L9842_
                                               (cons (cons _eid10005_
                                                           (cons _expr10006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind9799_)
                                               _check9800_
                                               _post9801_))))
                                         (___kont1528615287_
                                          (lambda (_L9904_ _L9905_)
                                            (let* ((_vals9918_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values9920_
                                                    (gxc#generate-runtime-check-values
                                                     _vals9918_
                                                     _L9905_
                                                     _L9904_))
                                                   (_refs9922_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals9918_
                                                     _L9905_))
                                                   (_expr9924_
                                                    (gxc#compile-e _L9904_)))
                                              (_lp9796_
                                               _L9842_
                                               (foldl1 cons
                                                       (cons (cons _vals9918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr9924_ '()))
                     _bind9799_)
               (map (lambda (_e99269928_)
                      (let* ((_g99309939_ _e99269928_)
                             (_E99329943_
                              (lambda ()
                                (error '"No clause matching" _g99309939_)))
                             (_K99339948_
                              (lambda (_eid9946_)
                                (cons _eid9946_ (cons '#!void '())))))
                        (if (##pair? _g99309939_)
                            (let ((_hd99349951_ (##car _g99309939_))
                                  (_tl99359953_ (##cdr _g99309939_)))
                              (let ((_eid9956_ _hd99349951_))
                                (if (##pair? _tl99359953_)
                                    (let ((_tl99379958_ (##cdr _tl99359953_)))
                                      (if (##null? _tl99379958_)
                                          (_K99339948_ _eid9956_)
                                          (_E99329943_)))
                                    (_E99329943_))))
                            (_E99329943_))))
                    _refs9922_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values9920_
                                                     _check9800_)
                                               (foldl1 cons
                                                       _refs9922_
                                                       _post9801_))))))
                                     (if (gx#stx-pair? ___stx1528215283_)
                                         (let ((_e98629966_
                                                (gx#stx-e ___stx1528215283_)))
                                           (let ((_tl98649971_
                                                  (##cdr _e98629966_))
                                                 (_hd98639969_
                                                  (##car _e98629966_)))
                                             (if (gx#stx-pair? _hd98639969_)
                                                 (let ((_e98659974_
                                                        (gx#stx-e
                                                         _hd98639969_)))
                                                   (let ((_tl98679979_
                                                          (##cdr _e98659974_))
                                                         (_hd98669977_
                                                          (##car _e98659974_)))
                                                     (if (gx#stx-null?
                                                          _tl98679979_)
                                                         (if (gx#stx-pair?
                                                              _tl98649971_)
                                                             (let ((_e98689982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl98649971_)))
                       (let ((_tl98709987_ (##cdr _e98689982_))
                             (_hd98699985_ (##car _e98689982_)))
                         (if (gx#stx-null? _tl98709987_)
                             (___kont1528415285_ _hd98699985_ _hd98669977_)
                             (_g98589883_))))
                     (_g98589883_))
                 (if (gx#stx-pair? _tl98649971_)
                     (let ((_e98769896_ (gx#stx-e _tl98649971_)))
                       (let ((_tl98789901_ (##cdr _e98769896_))
                             (_hd98779899_ (##car _e98769896_)))
                         (if (gx#stx-null? _tl98789901_)
                             (___kont1528615287_ _hd98779899_ _hd98639969_)
                             (_g98589883_))))
                     (_g98589883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl98649971_)
                                                     (let ((_e98769896_
                                                            (gx#stx-e
                                                             _tl98649971_)))
                                                       (let ((_tl98789901_
                                                              (##cdr _e98769896_))
                                                             (_hd98779899_
                                                              (##car _e98769896_)))
                                                         (if (gx#stx-null?
                                                              _tl98789901_)
                                                             (___kont1528615287_
                                                              _hd98779899_
                                                              _hd98639969_)
                                                             (_g98589883_))))
                                                     (_g98589883_)))))
                                         (_g98589883_))))))
                              (___kont1533015331_
                               (lambda ()
                                 (let* ((_body9822_
                                         (if _compiled-body?9710_
                                             _body9794_
                                             (gxc#compile-e _body9794_)))
                                        (_body9824_
                                         (_generate-values-post9715_
                                          _post9801_
                                          _body9822_))
                                        (_body9826_
                                         (_generate-values-check9714_
                                          _check9800_
                                          _body9824_)))
                                   (cons 'letrec
                                         (cons (reverse _bind9799_)
                                               (cons _body9826_ '())))))))
                          (if (gx#stx-pair? ___stx1532615327_)
                              (let ((_e98089834_ (gx#stx-e ___stx1532615327_)))
                                (let ((_tl98109839_ (##cdr _e98089834_))
                                      (_hd98099837_ (##car _e98089834_)))
                                  (___kont1532815329_
                                   _tl98109839_
                                   _hd98099837_)))
                              (___kont1533015331_)))))))
                 (_generate-values-check9714_
                  (lambda (_check9790_ _body9791_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9791_ '())
                                  (reverse _check9790_)))))
                 (_generate-values-post9715_
                  (lambda (_post9783_ _body9784_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body9784_ '())
                                  (map (lambda (_g97859787_)
                                         (cons 'set! _g97859787_))
                                       (reverse _post9783_)))))))
          (let* ((_g97179734_
                  (lambda (_g97189731_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g97189731_)))
                 (_g97169780_
                  (lambda (_g97189737_)
                    (if (gx#stx-pair? _g97189737_)
                        (let ((_e97219739_ (gx#stx-e _g97189737_)))
                          (let ((_hd97229742_ (##car _e97219739_))
                                (_tl97239744_ (##cdr _e97219739_)))
                            (if (gx#stx-pair? _tl97239744_)
                                (let ((_e97249747_ (gx#stx-e _tl97239744_)))
                                  (let ((_hd97259750_ (##car _e97249747_))
                                        (_tl97269752_ (##cdr _e97249747_)))
                                    (if (gx#stx-pair? _tl97269752_)
                                        (let ((_e97279755_
                                               (gx#stx-e _tl97269752_)))
                                          (let ((_hd97289758_
                                                 (##car _e97279755_))
                                                (_tl97299760_
                                                 (##cdr _e97279755_)))
                                            (if (gx#stx-null? _tl97299760_)
                                                ((lambda (_L9763_ _L9764_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L9764_)
                                                       (_generate-simple9712_
                                                        _L9764_
                                                        _L9763_)
                                                       (_generate-values9713_
                                                        _L9764_
                                                        _L9763_)))
                                                 _hd97289758_
                                                 _hd97259750_)
                                                (_g97179734_ _g97189737_))))
                                        (_g97179734_ _g97189737_))))
                                (_g97179734_ _g97189737_))))
                        (_g97179734_ _g97189737_)))))
            (_g97169780_ _stx9709_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx10020_)
          (let ((_compiled-body?10022_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx10020_
             _compiled-body?10022_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g15641_
          (let ((_g15640_ (length _g15641_)))
            (cond ((##fx= _g15640_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g15641_))
                  ((##fx= _g15640_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g15641_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g15641_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx9291_)
      (letrec ((_generate-values9293_
                (lambda (_hd9536_ _body9537_)
                  (let _lp9539_ ((_rest9541_ _hd9536_) (_bind9542_ '()))
                    (let* ((_rest95439551_ _rest9541_)
                           (_else95459562_
                            (lambda ()
                              (let ((_bind9559_ (reverse _bind9542_))
                                    (_body9560_ (gxc#compile-e _body9537_)))
                                (cons 'letrec*
                                      (cons _bind9559_
                                            (cons _body9560_ '()))))))
                           (_K95479696_
                            (lambda (_rest9565_ _hd-bind9566_)
                              (let* ((___stx1534015341_ _hd-bind9566_)
                                     (_g95699594_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1534015341_))))
                                (let ((___kont1534215343_
                                       (lambda (_L9675_ _L9676_)
                                         (let ((_eid9690_
                                                (gxc#generate-runtime-binding-id*
                                                 _L9676_))
                                               (_expr9691_
                                                (gxc#compile-e _L9675_)))
                                           (_lp9539_
                                            _rest9565_
                                            (cons (cons _eid9690_
                                                        (cons _expr9691_ '()))
                                                  _bind9542_)))))
                                      (___kont1534415345_
                                       (lambda (_L9615_ _L9616_)
                                         (let* ((_vals9635_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp9637_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values9639_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp9637_
                                                  _L9616_
                                                  _L9615_))
                                                (_refs9641_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals9635_
                                                  _L9616_))
                                                (_expr9643_
                                                 (gxc#compile-e _L9615_)))
                                           (_lp9539_
                                            _rest9565_
                                            (foldl1 cons
                                                    (cons (cons _vals9635_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp9637_
                                                      (cons _expr9643_ '()))
                                                '())
                                          (cons _check-values9639_
                                                (cons _tmp9637_ '()))))
                              '()))
                  _bind9542_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs9641_))))))
                                  (if (gx#stx-pair? ___stx1534015341_)
                                      (let ((_e95739651_
                                             (gx#stx-e ___stx1534015341_)))
                                        (let ((_tl95759656_
                                               (##cdr _e95739651_))
                                              (_hd95749654_
                                               (##car _e95739651_)))
                                          (if (gx#stx-pair? _hd95749654_)
                                              (let ((_e95769659_
                                                     (gx#stx-e _hd95749654_)))
                                                (let ((_tl95789664_
                                                       (##cdr _e95769659_))
                                                      (_hd95779662_
                                                       (##car _e95769659_)))
                                                  (if (gx#stx-null?
                                                       _tl95789664_)
                                                      (if (gx#stx-pair?
                                                           _tl95759656_)
                                                          (let ((_e95799667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl95759656_)))
                    (let ((_tl95819672_ (##cdr _e95799667_))
                          (_hd95809670_ (##car _e95799667_)))
                      (if (gx#stx-null? _tl95819672_)
                          (___kont1534215343_ _hd95809670_ _hd95779662_)
                          (_g95699594_))))
                  (_g95699594_))
              (if (gx#stx-pair? _tl95759656_)
                  (let ((_e95879607_ (gx#stx-e _tl95759656_)))
                    (let ((_tl95899612_ (##cdr _e95879607_))
                          (_hd95889610_ (##car _e95879607_)))
                      (if (gx#stx-null? _tl95899612_)
                          (___kont1534415345_ _hd95889610_ _hd95749654_)
                          (_g95699594_))))
                  (_g95699594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl95759656_)
                                                  (let ((_e95879607_
                                                         (gx#stx-e
                                                          _tl95759656_)))
                                                    (let ((_tl95899612_
                                                           (##cdr _e95879607_))
                                                          (_hd95889610_
                                                           (##car _e95879607_)))
                                                      (if (gx#stx-null?
                                                           _tl95899612_)
                                                          (___kont1534415345_
                                                           _hd95889610_
                                                           _hd95749654_)
                                                          (_g95699594_))))
                                                  (_g95699594_)))))
                                      (_g95699594_)))))))
                      (if (##pair? _rest95439551_)
                          (let ((_hd95489699_ (##car _rest95439551_))
                                (_tl95499701_ (##cdr _rest95439551_)))
                            (let* ((_hd-bind9704_ _hd95489699_)
                                   (_rest9706_ _tl95499701_))
                              (_K95479696_ _rest9706_ _hd-bind9704_)))
                          (_else95459562_))))))
               (_generate-letrec?9294_
                (lambda (_hd9426_)
                  (let _lp9428_ ((_rest9430_ _hd9426_))
                    (let* ((_rest94319439_ _rest9430_)
                           (_else94339447_ (lambda () '#t))
                           (_K94359524_
                            (lambda (_rest9450_ _hd-bind9451_)
                              (let* ((_g94539470_
                                      (lambda (_g94549467_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g94549467_)))
                                     (_g94529521_
                                      (lambda (_g94549473_)
                                        (if (gx#stx-pair? _g94549473_)
                                            (let ((_e94579475_
                                                   (gx#stx-e _g94549473_)))
                                              (let ((_hd94589478_
                                                     (##car _e94579475_))
                                                    (_tl94599480_
                                                     (##cdr _e94579475_)))
                                                (if (gx#stx-pair? _hd94589478_)
                                                    (let ((_e94609483_
                                                           (gx#stx-e
                                                            _hd94589478_)))
                                                      (let ((_hd94619486_
                                                             (##car _e94609483_))
                                                            (_tl94629488_
                                                             (##cdr _e94609483_)))
                                                        (if (gx#stx-null?
                                                             _tl94629488_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl94599480_)
                        (let ((_e94639491_ (gx#stx-e _tl94599480_)))
                          (let ((_hd94649494_ (##car _e94639491_))
                                (_tl94659496_ (##cdr _e94639491_)))
                            (if (gx#stx-null? _tl94659496_)
                                ((lambda (_L9499_ _L9500_)
                                   (if (_is-lambda-expr?9295_ _L9499_)
                                       (_lp9428_ _rest9450_)
                                       '#f))
                                 _hd94649494_
                                 _hd94619486_)
                                (_g94539470_ _g94549473_))))
                        (_g94539470_ _g94549473_))
                    (_g94539470_ _g94549473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g94539470_
                                                     _g94549473_))))
                                            (_g94539470_ _g94549473_)))))
                                (_g94529521_ _hd-bind9451_)))))
                      (if (##pair? _rest94319439_)
                          (let ((_hd94369527_ (##car _rest94319439_))
                                (_tl94379529_ (##cdr _rest94319439_)))
                            (let* ((_hd-bind9532_ _hd94369527_)
                                   (_rest9534_ _tl94379529_))
                              (_K94359524_ _rest9534_ _hd-bind9532_)))
                          (_else94339447_))))))
               (_is-lambda-expr?9295_
                (lambda (_expr9363_)
                  (let* ((___stx1538415385_ _expr9363_)
                         (_g93669380_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1538415385_))))
                    (let ((___kont1538615387_ (lambda (_L9408_ _L9409_) '#t))
                          (___kont1538815389_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1538415385_)
                          (let ((_e93709392_ (gx#stx-e ___stx1538415385_)))
                            (let ((_tl93729397_ (##cdr _e93709392_))
                                  (_hd93719395_ (##car _e93709392_)))
                              (if (gx#identifier? _hd93719395_)
                                  (if (gx#stx-eq? '%#lambda _hd93719395_)
                                      (if (gx#stx-pair? _tl93729397_)
                                          (let ((_e93739400_
                                                 (gx#stx-e _tl93729397_)))
                                            (let ((_tl93759405_
                                                   (##cdr _e93739400_))
                                                  (_hd93749403_
                                                   (##car _e93739400_)))
                                              (___kont1538615387_
                                               _tl93759405_
                                               _hd93749403_)))
                                          (___kont1538815389_))
                                      (___kont1538815389_))
                                  (___kont1538815389_))))
                          (___kont1538815389_)))))))
        (let* ((_g92979314_
                (lambda (_g92989311_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g92989311_)))
               (_g92969360_
                (lambda (_g92989317_)
                  (if (gx#stx-pair? _g92989317_)
                      (let ((_e93019319_ (gx#stx-e _g92989317_)))
                        (let ((_hd93029322_ (##car _e93019319_))
                              (_tl93039324_ (##cdr _e93019319_)))
                          (if (gx#stx-pair? _tl93039324_)
                              (let ((_e93049327_ (gx#stx-e _tl93039324_)))
                                (let ((_hd93059330_ (##car _e93049327_))
                                      (_tl93069332_ (##cdr _e93049327_)))
                                  (if (gx#stx-pair? _tl93069332_)
                                      (let ((_e93079335_
                                             (gx#stx-e _tl93069332_)))
                                        (let ((_hd93089338_
                                               (##car _e93079335_))
                                              (_tl93099340_
                                               (##cdr _e93079335_)))
                                          (if (gx#stx-null? _tl93099340_)
                                              ((lambda (_L9343_ _L9344_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L9344_)
                                                     (if (_generate-letrec?9294_
                                                          _L9344_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L9344_
                                                          _L9343_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L9344_
                                                          _L9343_
                                                          '#f))
                                                     (_generate-values9293_
                                                      _L9344_
                                                      _L9343_)))
                                               _hd93089338_
                                               _hd93059330_)
                                              (_g92979314_ _g92989317_))))
                                      (_g92979314_ _g92989317_))))
                              (_g92979314_ _g92989317_))))
                      (_g92979314_ _g92989317_)))))
          (_g92969360_ _stx9291_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd9184_)
      (let _lp9186_ ((_rest9188_ _hd9184_))
        (let* ((___stx1540815409_ _rest9188_)
               (_g91929213_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1540815409_))))
          (let ((___kont1541015411_
                 (lambda (_L9264_ _L9265_ _L9266_) (_lp9186_ _L9264_)))
                (___kont1541215413_ (lambda () '#t))
                (___kont1541415415_ (lambda () '#f)))
            (let ((_g91909227_
                   (lambda ()
                     (if (gx#stx-null? ___stx1540815409_)
                         (___kont1541215413_)
                         (___kont1541415415_)))))
              (if (gx#stx-pair? ___stx1540815409_)
                  (let ((_e91979232_ (gx#stx-e ___stx1540815409_)))
                    (let ((_tl91999237_ (##cdr _e91979232_))
                          (_hd91989235_ (##car _e91979232_)))
                      (if (gx#stx-pair? _hd91989235_)
                          (let ((_e92009240_ (gx#stx-e _hd91989235_)))
                            (let ((_tl92029245_ (##cdr _e92009240_))
                                  (_hd92019243_ (##car _e92009240_)))
                              (if (gx#stx-pair? _hd92019243_)
                                  (let ((_e92039248_ (gx#stx-e _hd92019243_)))
                                    (let ((_tl92059253_ (##cdr _e92039248_))
                                          (_hd92049251_ (##car _e92039248_)))
                                      (if (gx#stx-null? _tl92059253_)
                                          (if (gx#stx-pair? _tl92029245_)
                                              (let ((_e92069256_
                                                     (gx#stx-e _tl92029245_)))
                                                (let ((_tl92089261_
                                                       (##cdr _e92069256_))
                                                      (_hd92079259_
                                                       (##car _e92069256_)))
                                                  (if (gx#stx-null?
                                                       _tl92089261_)
                                                      (___kont1541015411_
                                                       _tl91999237_
                                                       _hd92079259_
                                                       _hd92049251_)
                                                      (___kont1541415415_))))
                                              (___kont1541415415_))
                                          (___kont1541415415_))))
                                  (___kont1541415415_))))
                          (___kont1541415415_))))
                  (_g91909227_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form9108_ _hd9109_ _body9110_ _compiled-body?9111_)
      (letrec ((_generate19113_
                (lambda (_bind9115_)
                  (let* ((_g91179134_
                          (lambda (_g91189131_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g91189131_)))
                         (_g91169181_
                          (lambda (_g91189137_)
                            (if (gx#stx-pair? _g91189137_)
                                (let ((_e91219139_ (gx#stx-e _g91189137_)))
                                  (let ((_hd91229142_ (##car _e91219139_))
                                        (_tl91239144_ (##cdr _e91219139_)))
                                    (if (gx#stx-pair? _hd91229142_)
                                        (let ((_e91249147_
                                               (gx#stx-e _hd91229142_)))
                                          (let ((_hd91259150_
                                                 (##car _e91249147_))
                                                (_tl91269152_
                                                 (##cdr _e91249147_)))
                                            (if (gx#stx-null? _tl91269152_)
                                                (if (gx#stx-pair? _tl91239144_)
                                                    (let ((_e91279155_
                                                           (gx#stx-e
                                                            _tl91239144_)))
                                                      (let ((_hd91289158_
                                                             (##car _e91279155_))
                                                            (_tl91299160_
                                                             (##cdr _e91279155_)))
                                                        (if (gx#stx-null?
                                                             _tl91299160_)
                                                            ((lambda (_L9163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L9164_)
                       (cons (gxc#generate-runtime-binding-id* _L9164_)
                             (cons (gxc#compile-e _L9163_) '())))
                     _hd91289158_
                     _hd91259150_)
                    (_g91179134_ _g91189137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g91179134_ _g91189137_))
                                                (_g91179134_ _g91189137_))))
                                        (_g91179134_ _g91189137_))))
                                (_g91179134_ _g91189137_)))))
                    (_g91169181_ _bind9115_)))))
        (cons _form9108_
              (cons (map _generate19113_ _hd9109_)
                    (cons (if _compiled-body?9111_
                              _body9110_
                              (gxc#compile-e _body9110_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx9016_)
      (letrec ((_generate19018_
                (lambda (_datum9070_)
                  (if (let ((_$e9072_ (null? _datum9070_)))
                        (if _$e9072_
                            _$e9072_
                            (let ((_$e9075_ (interned-symbol? _datum9070_)))
                              (if _$e9075_
                                  _$e9075_
                                  (let ((_$e9078_
                                         (gx#self-quoting? _datum9070_)))
                                    (if _$e9078_
                                        _$e9078_
                                        (eof-object? _datum9070_)))))))
                      _datum9070_
                      (if (uninterned-symbol? _datum9070_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum9070_
                           '#t)
                          (if (pair? _datum9070_)
                              (cons (_generate19018_ (car _datum9070_))
                                    (_generate19018_ (cdr _datum9070_)))
                              (if (box? _datum9070_)
                                  (box (_generate19018_ (unbox _datum9070_)))
                                  (if (vector? _datum9070_)
                                      (vector-map _generate19018_ _datum9070_)
                                      (if (let ((_$e9081_
                                                 (s8vector? _datum9070_)))
                                            (if _$e9081_
                                                _$e9081_
                                                (let ((_$e9084_
                                                       (u8vector?
                                                        _datum9070_)))
                                                  (if _$e9084_
                                                      _$e9084_
                                                      (let ((_$e9087_
                                                             (s16vector?
                                                              _datum9070_)))
                                                        (if _$e9087_
                                                            _$e9087_
                                                            (let ((_$e9090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum9070_)))
                      (if _$e9090_
                          _$e9090_
                          (let ((_$e9093_ (s32vector? _datum9070_)))
                            (if _$e9093_
                                _$e9093_
                                (let ((_$e9096_ (u32vector? _datum9070_)))
                                  (if _$e9096_
                                      _$e9096_
                                      (let ((_$e9099_
                                             (s64vector? _datum9070_)))
                                        (if _$e9099_
                                            _$e9099_
                                            (let ((_$e9102_
                                                   (u64vector? _datum9070_)))
                                              (if _$e9102_
                                                  _$e9102_
                                                  (let ((_$e9105_
                                                         (f32vector?
                                                          _datum9070_)))
                                                    (if _$e9105_
                                                        _$e9105_
                                                        (f64vector?
                                                         _datum9070_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum9070_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx9016_))))))))))
        (let* ((_g90209033_
                (lambda (_g90219030_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g90219030_)))
               (_g90199067_
                (lambda (_g90219036_)
                  (if (gx#stx-pair? _g90219036_)
                      (let ((_e90239038_ (gx#stx-e _g90219036_)))
                        (let ((_hd90249041_ (##car _e90239038_))
                              (_tl90259043_ (##cdr _e90239038_)))
                          (if (gx#stx-pair? _tl90259043_)
                              (let ((_e90269046_ (gx#stx-e _tl90259043_)))
                                (let ((_hd90279049_ (##car _e90269046_))
                                      (_tl90289051_ (##cdr _e90269046_)))
                                  (if (gx#stx-null? _tl90289051_)
                                      ((lambda (_L9054_)
                                         (cons 'quote
                                               (cons (_generate19018_
                                                      (gx#stx-e _L9054_))
                                                     '())))
                                       _hd90279049_)
                                      (_g90209033_ _g90219036_))))
                              (_g90209033_ _g90219036_))))
                      (_g90209033_ _g90219036_)))))
          (_g90199067_ _stx9016_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx8709_)
      (let* ((_g87118725_
              (lambda (_g87128722_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g87128722_)))
             (_g87109013_
              (lambda (_g87128728_)
                (if (gx#stx-pair? _g87128728_)
                    (let ((_e87158730_ (gx#stx-e _g87128728_)))
                      (let ((_hd87168733_ (##car _e87158730_))
                            (_tl87178735_ (##cdr _e87158730_)))
                        (if (gx#stx-pair? _tl87178735_)
                            (let ((_e87188738_ (gx#stx-e _tl87178735_)))
                              (let ((_hd87198741_ (##car _e87188738_))
                                    (_tl87208743_ (##cdr _e87188738_)))
                                ((lambda (_L8746_ _L8747_)
                                   (let ((_rator8760_ (gxc#compile-e _L8747_))
                                         (_rands8761_
                                          (map gxc#compile-e _L8746_)))
                                     (let* ((___stx1544815449_ _rator8760_)
                                            (_g87648816_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1544815449_))))
                                       (let ((___kont1545015451_
                                              (lambda (_L8940_
                                                       _L8941_
                                                       _L8942_
                                                       _L8943_)
                                                (if (fx= (length _rands8761_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g89798982_ _g89808984_)
                                     (cons _g89798982_ _g89808984_))
                                   '()
                                   _L8942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id8987_ _L8943_)
                                                           (_args8996_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g89888991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g89898993_)
                                (cons _g89888991_ _g89898993_))
                              '()
                              _L8942_)))
                   (_body9005_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g89979000_ _g89989002_)
                                (cons _g89979000_ _g89989002_))
                              '()
                              _L8941_)))
                   (_init9007_ (map list _args8996_ _rands8761_)))
              (cons 'let (cons _id8987_ (cons _init9007_ _body9005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx8709_))))
                                             (___kont1545615457_
                                              (lambda ()
                                                (cons _rator8760_
                                                      _rands8761_))))
                                         (let ((___match1551515516_
                                                (lambda (_e87708828_
                                                         _hd87718831_
                                                         _tl87728833_
                                                         _e87738836_
                                                         _hd87748839_
                                                         _tl87758841_
                                                         _e87768844_
                                                         _hd87778847_
                                                         _tl87788849_
                                                         _e87798852_
                                                         _hd87808855_
                                                         _tl87818857_
                                                         _e87828860_
                                                         _hd87838863_
                                                         _tl87848865_
                                                         _e87858868_
                                                         _hd87868871_
                                                         _tl87878873_
                                                         _e87888876_
                                                         _hd87898879_
                                                         _tl87908881_
                                                         ___splice1545215453_
                                                         _target87918884_
                                                         _tl87938886_)
                                                  (letrec ((_loop87948889_
                                                            (lambda (_hd87928892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg87988894_)
                      (if (gx#stx-pair? _hd87928892_)
                          (let ((_e87958897_ (gx#stx-e _hd87928892_)))
                            (let ((_lp-tl87978902_ (##cdr _e87958897_))
                                  (_lp-hd87968900_ (##car _e87958897_)))
                              (_loop87948889_
                               _lp-tl87978902_
                               (cons _lp-hd87968900_ _arg87988894_))))
                          (let ((_arg87998905_ (reverse _arg87988894_)))
                            (if (gx#stx-pair/null? _tl87908881_)
                                (let ((___splice1545415455_
                                       (gx#syntax-split-splice
                                        _tl87908881_
                                        '0)))
                                  (let ((_tl88028910_
                                         (##vector-ref
                                          ___splice1545415455_
                                          '1))
                                        (_target88008908_
                                         (##vector-ref
                                          ___splice1545415455_
                                          '0)))
                                    (if (gx#stx-null? _tl88028910_)
                                        (letrec ((_loop88038913_
                                                  (lambda (_hd88018916_
                                                           _body88078918_)
                                                    (if (gx#stx-pair?
                                                         _hd88018916_)
                                                        (let ((_e88048921_
                                                               (gx#stx-e
                                                                _hd88018916_)))
                                                          (let ((_lp-tl88068926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e88048921_))
                        (_lp-hd88058924_ (##car _e88048921_)))
                    (_loop88038913_
                     _lp-tl88068926_
                     (cons _lp-hd88058924_ _body88078918_))))
                (let ((_body88088929_ (reverse _body88078918_)))
                  (if (gx#stx-null? _tl87848865_)
                      (if (gx#stx-null? _tl87788849_)
                          (if (gx#stx-pair? _tl87758841_)
                              (let ((_e88098932_ (gx#stx-e _tl87758841_)))
                                (let ((_tl88118937_ (##cdr _e88098932_))
                                      (_hd88108935_ (##car _e88098932_)))
                                  (if (gx#stx-null? _tl88118937_)
                                      (let ((_L8940_ _hd88108935_)
                                            (_L8941_ _body88088929_)
                                            (_L8942_ _arg87998905_)
                                            (_L8943_ _hd87808855_))
                                        (if (eq? _L8943_ _L8940_)
                                            (___kont1545015451_
                                             _L8940_
                                             _L8941_
                                             _L8942_
                                             _L8943_)
                                            (___kont1545615457_)))
                                      (___kont1545615457_))))
                              (___kont1545615457_))
                          (___kont1545615457_))
                      (___kont1545615457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop88038913_
                                           _target88008908_
                                           '()))
                                        (___kont1545615457_))))
                                (___kont1545615457_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop87948889_
                                                     _target87918884_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1544815449_)
                                               (let ((_e87708828_
                                                      (gx#stx-e
                                                       ___stx1544815449_)))
                                                 (let ((_tl87728833_
                                                        (##cdr _e87708828_))
                                                       (_hd87718831_
                                                        (##car _e87708828_)))
                                                   (if (gx#identifier?
                                                        _hd87718831_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd87718831_)
                                                           (if (gx#stx-pair?
                                                                _tl87728833_)
                                                               (let ((_e87738836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl87728833_)))
                         (let ((_tl87758841_ (##cdr _e87738836_))
                               (_hd87748839_ (##car _e87738836_)))
                           (if (gx#stx-pair? _hd87748839_)
                               (let ((_e87768844_ (gx#stx-e _hd87748839_)))
                                 (let ((_tl87788849_ (##cdr _e87768844_))
                                       (_hd87778847_ (##car _e87768844_)))
                                   (if (gx#stx-pair? _hd87778847_)
                                       (let ((_e87798852_
                                              (gx#stx-e _hd87778847_)))
                                         (let ((_tl87818857_
                                                (##cdr _e87798852_))
                                               (_hd87808855_
                                                (##car _e87798852_)))
                                           (if (gx#stx-pair? _tl87818857_)
                                               (let ((_e87828860_
                                                      (gx#stx-e _tl87818857_)))
                                                 (let ((_tl87848865_
                                                        (##cdr _e87828860_))
                                                       (_hd87838863_
                                                        (##car _e87828860_)))
                                                   (if (gx#stx-pair?
                                                        _hd87838863_)
                                                       (let ((_e87858868_
                                                              (gx#stx-e
                                                               _hd87838863_)))
                                                         (let ((_tl87878873_
                                                                (##cdr _e87858868_))
                                                               (_hd87868871_
                                                                (##car _e87858868_)))
                                                           (if (gx#identifier?
                                                                _hd87868871_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd87868871_)
                           (if (gx#stx-pair? _tl87878873_)
                               (let ((_e87888876_ (gx#stx-e _tl87878873_)))
                                 (let ((_tl87908881_ (##cdr _e87888876_))
                                       (_hd87898879_ (##car _e87888876_)))
                                   (if (gx#stx-pair/null? _hd87898879_)
                                       (let ((___splice1545215453_
                                              (gx#syntax-split-splice
                                               _hd87898879_
                                               '0)))
                                         (let ((_tl87938886_
                                                (##vector-ref
                                                 ___splice1545215453_
                                                 '1))
                                               (_target87918884_
                                                (##vector-ref
                                                 ___splice1545215453_
                                                 '0)))
                                           (if (gx#stx-null? _tl87938886_)
                                               (___match1551515516_
                                                _e87708828_
                                                _hd87718831_
                                                _tl87728833_
                                                _e87738836_
                                                _hd87748839_
                                                _tl87758841_
                                                _e87768844_
                                                _hd87778847_
                                                _tl87788849_
                                                _e87798852_
                                                _hd87808855_
                                                _tl87818857_
                                                _e87828860_
                                                _hd87838863_
                                                _tl87848865_
                                                _e87858868_
                                                _hd87868871_
                                                _tl87878873_
                                                _e87888876_
                                                _hd87898879_
                                                _tl87908881_
                                                ___splice1545215453_
                                                _target87918884_
                                                _tl87938886_)
                                               (___kont1545615457_))))
                                       (___kont1545615457_))))
                               (___kont1545615457_))
                           (___kont1545615457_))
                       (___kont1545615457_))))
               (___kont1545615457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1545615457_))))
                                       (___kont1545615457_))))
                               (___kont1545615457_))))
                       (___kont1545615457_))
                   (___kont1545615457_))
               (___kont1545615457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1545615457_)))))))
                                 _tl87208743_
                                 _hd87198741_)))
                            (_g87118725_ _g87128728_))))
                    (_g87118725_ _g87128728_)))))
        (_g87109013_ _stx8709_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx8626_)
      (let* ((_g86288649_
              (lambda (_g86298646_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g86298646_)))
             (_g86278706_
              (lambda (_g86298652_)
                (if (gx#stx-pair? _g86298652_)
                    (let ((_e86338654_ (gx#stx-e _g86298652_)))
                      (let ((_hd86348657_ (##car _e86338654_))
                            (_tl86358659_ (##cdr _e86338654_)))
                        (if (gx#stx-pair? _tl86358659_)
                            (let ((_e86368662_ (gx#stx-e _tl86358659_)))
                              (let ((_hd86378665_ (##car _e86368662_))
                                    (_tl86388667_ (##cdr _e86368662_)))
                                (if (gx#stx-pair? _tl86388667_)
                                    (let ((_e86398670_
                                           (gx#stx-e _tl86388667_)))
                                      (let ((_hd86408673_ (##car _e86398670_))
                                            (_tl86418675_ (##cdr _e86398670_)))
                                        (if (gx#stx-pair? _tl86418675_)
                                            (let ((_e86428678_
                                                   (gx#stx-e _tl86418675_)))
                                              (let ((_hd86438681_
                                                     (##car _e86428678_))
                                                    (_tl86448683_
                                                     (##cdr _e86428678_)))
                                                (if (gx#stx-null? _tl86448683_)
                                                    ((lambda (_L8686_
                                                              _L8687_
                                                              _L8688_)
                                                       (cons 'if
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8688_)
                           (cons (gxc#compile-e _L8687_)
                                 (cons (gxc#compile-e _L8686_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd86438681_
                                                     _hd86408673_
                                                     _hd86378665_)
                                                    (_g86288649_
                                                     _g86298652_))))
                                            (_g86288649_ _g86298652_))))
                                    (_g86288649_ _g86298652_))))
                            (_g86288649_ _g86298652_))))
                    (_g86288649_ _g86298652_)))))
        (_g86278706_ _stx8626_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx8575_)
      (let* ((_g85778590_
              (lambda (_g85788587_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g85788587_)))
             (_g85768623_
              (lambda (_g85788593_)
                (if (gx#stx-pair? _g85788593_)
                    (let ((_e85808595_ (gx#stx-e _g85788593_)))
                      (let ((_hd85818598_ (##car _e85808595_))
                            (_tl85828600_ (##cdr _e85808595_)))
                        (if (gx#stx-pair? _tl85828600_)
                            (let ((_e85838603_ (gx#stx-e _tl85828600_)))
                              (let ((_hd85848606_ (##car _e85838603_))
                                    (_tl85858608_ (##cdr _e85838603_)))
                                (if (gx#stx-null? _tl85858608_)
                                    ((lambda (_L8611_)
                                       (gxc#generate-runtime-binding-id
                                        _L8611_))
                                     _hd85848606_)
                                    (_g85778590_ _g85788593_))))
                            (_g85778590_ _g85788593_))))
                    (_g85778590_ _g85788593_)))))
        (_g85768623_ _stx8575_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx8508_)
      (let* ((_g85108527_
              (lambda (_g85118524_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g85118524_)))
             (_g85098572_
              (lambda (_g85118530_)
                (if (gx#stx-pair? _g85118530_)
                    (let ((_e85148532_ (gx#stx-e _g85118530_)))
                      (let ((_hd85158535_ (##car _e85148532_))
                            (_tl85168537_ (##cdr _e85148532_)))
                        (if (gx#stx-pair? _tl85168537_)
                            (let ((_e85178540_ (gx#stx-e _tl85168537_)))
                              (let ((_hd85188543_ (##car _e85178540_))
                                    (_tl85198545_ (##cdr _e85178540_)))
                                (if (gx#stx-pair? _tl85198545_)
                                    (let ((_e85208548_
                                           (gx#stx-e _tl85198545_)))
                                      (let ((_hd85218551_ (##car _e85208548_))
                                            (_tl85228553_ (##cdr _e85208548_)))
                                        (if (gx#stx-null? _tl85228553_)
                                            ((lambda (_L8556_ _L8557_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L8557_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8556_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd85218551_
                                             _hd85188543_)
                                            (_g85108527_ _g85118530_))))
                                    (_g85108527_ _g85118530_))))
                            (_g85108527_ _g85118530_))))
                    (_g85108527_ _g85118530_)))))
        (_g85098572_ _stx8508_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx8441_)
      (let* ((_g84438460_
              (lambda (_g84448457_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g84448457_)))
             (_g84428505_
              (lambda (_g84448463_)
                (if (gx#stx-pair? _g84448463_)
                    (let ((_e84478465_ (gx#stx-e _g84448463_)))
                      (let ((_hd84488468_ (##car _e84478465_))
                            (_tl84498470_ (##cdr _e84478465_)))
                        (if (gx#stx-pair? _tl84498470_)
                            (let ((_e84508473_ (gx#stx-e _tl84498470_)))
                              (let ((_hd84518476_ (##car _e84508473_))
                                    (_tl84528478_ (##cdr _e84508473_)))
                                (if (gx#stx-pair? _tl84528478_)
                                    (let ((_e84538481_
                                           (gx#stx-e _tl84528478_)))
                                      (let ((_hd84548484_ (##car _e84538481_))
                                            (_tl84558486_ (##cdr _e84538481_)))
                                        (if (gx#stx-null? _tl84558486_)
                                            ((lambda (_L8489_ _L8490_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L8489_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8490_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd84548484_
                                             _hd84518476_)
                                            (_g84438460_ _g84448463_))))
                                    (_g84438460_ _g84448463_))))
                            (_g84438460_ _g84448463_))))
                    (_g84438460_ _g84448463_)))))
        (_g84428505_ _stx8441_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx8374_)
      (let* ((_g83768393_
              (lambda (_g83778390_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g83778390_)))
             (_g83758438_
              (lambda (_g83778396_)
                (if (gx#stx-pair? _g83778396_)
                    (let ((_e83808398_ (gx#stx-e _g83778396_)))
                      (let ((_hd83818401_ (##car _e83808398_))
                            (_tl83828403_ (##cdr _e83808398_)))
                        (if (gx#stx-pair? _tl83828403_)
                            (let ((_e83838406_ (gx#stx-e _tl83828403_)))
                              (let ((_hd83848409_ (##car _e83838406_))
                                    (_tl83858411_ (##cdr _e83838406_)))
                                (if (gx#stx-pair? _tl83858411_)
                                    (let ((_e83868414_
                                           (gx#stx-e _tl83858411_)))
                                      (let ((_hd83878417_ (##car _e83868414_))
                                            (_tl83888419_ (##cdr _e83868414_)))
                                        (if (gx#stx-null? _tl83888419_)
                                            ((lambda (_L8422_ _L8423_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L8422_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8423_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd83878417_
                                             _hd83848409_)
                                            (_g83768393_ _g83778396_))))
                                    (_g83768393_ _g83778396_))))
                            (_g83768393_ _g83778396_))))
                    (_g83768393_ _g83778396_)))))
        (_g83758438_ _stx8374_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx8291_)
      (let* ((_g82938314_
              (lambda (_g82948311_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g82948311_)))
             (_g82928371_
              (lambda (_g82948317_)
                (if (gx#stx-pair? _g82948317_)
                    (let ((_e82988319_ (gx#stx-e _g82948317_)))
                      (let ((_hd82998322_ (##car _e82988319_))
                            (_tl83008324_ (##cdr _e82988319_)))
                        (if (gx#stx-pair? _tl83008324_)
                            (let ((_e83018327_ (gx#stx-e _tl83008324_)))
                              (let ((_hd83028330_ (##car _e83018327_))
                                    (_tl83038332_ (##cdr _e83018327_)))
                                (if (gx#stx-pair? _tl83038332_)
                                    (let ((_e83048335_
                                           (gx#stx-e _tl83038332_)))
                                      (let ((_hd83058338_ (##car _e83048335_))
                                            (_tl83068340_ (##cdr _e83048335_)))
                                        (if (gx#stx-pair? _tl83068340_)
                                            (let ((_e83078343_
                                                   (gx#stx-e _tl83068340_)))
                                              (let ((_hd83088346_
                                                     (##car _e83078343_))
                                                    (_tl83098348_
                                                     (##cdr _e83078343_)))
                                                (if (gx#stx-null? _tl83098348_)
                                                    ((lambda (_L8351_
                                                              _L8352_
                                                              _L8353_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8351_)
                           (cons (gxc#compile-e _L8352_)
                                 (cons (gxc#compile-e _L8353_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd83088346_
                                                     _hd83058338_
                                                     _hd83028330_)
                                                    (_g82938314_
                                                     _g82948317_))))
                                            (_g82938314_ _g82948317_))))
                                    (_g82938314_ _g82948317_))))
                            (_g82938314_ _g82948317_))))
                    (_g82938314_ _g82948317_)))))
        (_g82928371_ _stx8291_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx8192_)
      (let* ((_g81948219_
              (lambda (_g81958216_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g81958216_)))
             (_g81938288_
              (lambda (_g81958222_)
                (if (gx#stx-pair? _g81958222_)
                    (let ((_e82008224_ (gx#stx-e _g81958222_)))
                      (let ((_hd82018227_ (##car _e82008224_))
                            (_tl82028229_ (##cdr _e82008224_)))
                        (if (gx#stx-pair? _tl82028229_)
                            (let ((_e82038232_ (gx#stx-e _tl82028229_)))
                              (let ((_hd82048235_ (##car _e82038232_))
                                    (_tl82058237_ (##cdr _e82038232_)))
                                (if (gx#stx-pair? _tl82058237_)
                                    (let ((_e82068240_
                                           (gx#stx-e _tl82058237_)))
                                      (let ((_hd82078243_ (##car _e82068240_))
                                            (_tl82088245_ (##cdr _e82068240_)))
                                        (if (gx#stx-pair? _tl82088245_)
                                            (let ((_e82098248_
                                                   (gx#stx-e _tl82088245_)))
                                              (let ((_hd82108251_
                                                     (##car _e82098248_))
                                                    (_tl82118253_
                                                     (##cdr _e82098248_)))
                                                (if (gx#stx-pair? _tl82118253_)
                                                    (let ((_e82128256_
                                                           (gx#stx-e
                                                            _tl82118253_)))
                                                      (let ((_hd82138259_
                                                             (##car _e82128256_))
                                                            (_tl82148261_
                                                             (##cdr _e82128256_)))
                                                        (if (gx#stx-null?
                                                             _tl82148261_)
                                                            ((lambda (_L8264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8265_
                              _L8266_
                              _L8267_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L8265_)
                                   (cons (gxc#compile-e _L8264_)
                                         (cons (gxc#compile-e _L8266_)
                                               (cons (gxc#compile-e _L8267_)
                                                     (cons ''#f '())))))))
                     _hd82138259_
                     _hd82108251_
                     _hd82078243_
                     _hd82048235_)
                    (_g81948219_ _g81958222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81948219_
                                                     _g81958222_))))
                                            (_g81948219_ _g81958222_))))
                                    (_g81948219_ _g81958222_))))
                            (_g81948219_ _g81958222_))))
                    (_g81948219_ _g81958222_)))))
        (_g81938288_ _stx8192_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx8109_)
      (let* ((_g81118132_
              (lambda (_g81128129_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g81128129_)))
             (_g81108189_
              (lambda (_g81128135_)
                (if (gx#stx-pair? _g81128135_)
                    (let ((_e81168137_ (gx#stx-e _g81128135_)))
                      (let ((_hd81178140_ (##car _e81168137_))
                            (_tl81188142_ (##cdr _e81168137_)))
                        (if (gx#stx-pair? _tl81188142_)
                            (let ((_e81198145_ (gx#stx-e _tl81188142_)))
                              (let ((_hd81208148_ (##car _e81198145_))
                                    (_tl81218150_ (##cdr _e81198145_)))
                                (if (gx#stx-pair? _tl81218150_)
                                    (let ((_e81228153_
                                           (gx#stx-e _tl81218150_)))
                                      (let ((_hd81238156_ (##car _e81228153_))
                                            (_tl81248158_ (##cdr _e81228153_)))
                                        (if (gx#stx-pair? _tl81248158_)
                                            (let ((_e81258161_
                                                   (gx#stx-e _tl81248158_)))
                                              (let ((_hd81268164_
                                                     (##car _e81258161_))
                                                    (_tl81278166_
                                                     (##cdr _e81258161_)))
                                                (if (gx#stx-null? _tl81278166_)
                                                    ((lambda (_L8169_
                                                              _L8170_
                                                              _L8171_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8169_)
                           (cons (gxc#compile-e _L8170_)
                                 (cons (gxc#compile-e _L8171_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd81268164_
                                                     _hd81238156_
                                                     _hd81208148_)
                                                    (_g81118132_
                                                     _g81128135_))))
                                            (_g81118132_ _g81128135_))))
                                    (_g81118132_ _g81128135_))))
                            (_g81118132_ _g81128135_))))
                    (_g81118132_ _g81128135_)))))
        (_g81108189_ _stx8109_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx8010_)
      (let* ((_g80128037_
              (lambda (_g80138034_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g80138034_)))
             (_g80118106_
              (lambda (_g80138040_)
                (if (gx#stx-pair? _g80138040_)
                    (let ((_e80188042_ (gx#stx-e _g80138040_)))
                      (let ((_hd80198045_ (##car _e80188042_))
                            (_tl80208047_ (##cdr _e80188042_)))
                        (if (gx#stx-pair? _tl80208047_)
                            (let ((_e80218050_ (gx#stx-e _tl80208047_)))
                              (let ((_hd80228053_ (##car _e80218050_))
                                    (_tl80238055_ (##cdr _e80218050_)))
                                (if (gx#stx-pair? _tl80238055_)
                                    (let ((_e80248058_
                                           (gx#stx-e _tl80238055_)))
                                      (let ((_hd80258061_ (##car _e80248058_))
                                            (_tl80268063_ (##cdr _e80248058_)))
                                        (if (gx#stx-pair? _tl80268063_)
                                            (let ((_e80278066_
                                                   (gx#stx-e _tl80268063_)))
                                              (let ((_hd80288069_
                                                     (##car _e80278066_))
                                                    (_tl80298071_
                                                     (##cdr _e80278066_)))
                                                (if (gx#stx-pair? _tl80298071_)
                                                    (let ((_e80308074_
                                                           (gx#stx-e
                                                            _tl80298071_)))
                                                      (let ((_hd80318077_
                                                             (##car _e80308074_))
                                                            (_tl80328079_
                                                             (##cdr _e80308074_)))
                                                        (if (gx#stx-null?
                                                             _tl80328079_)
                                                            ((lambda (_L8082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8083_
                              _L8084_
                              _L8085_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L8083_)
                                   (cons (gxc#compile-e _L8082_)
                                         (cons (gxc#compile-e _L8084_)
                                               (cons (gxc#compile-e _L8085_)
                                                     (cons ''#f '())))))))
                     _hd80318077_
                     _hd80288069_
                     _hd80258061_
                     _hd80228053_)
                    (_g80128037_ _g80138040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80128037_
                                                     _g80138040_))))
                                            (_g80128037_ _g80138040_))))
                                    (_g80128037_ _g80138040_))))
                            (_g80128037_ _g80138040_))))
                    (_g80128037_ _g80138040_)))))
        (_g80118106_ _stx8010_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx7927_)
      (let* ((_g79297950_
              (lambda (_g79307947_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g79307947_)))
             (_g79288007_
              (lambda (_g79307953_)
                (if (gx#stx-pair? _g79307953_)
                    (let ((_e79347955_ (gx#stx-e _g79307953_)))
                      (let ((_hd79357958_ (##car _e79347955_))
                            (_tl79367960_ (##cdr _e79347955_)))
                        (if (gx#stx-pair? _tl79367960_)
                            (let ((_e79377963_ (gx#stx-e _tl79367960_)))
                              (let ((_hd79387966_ (##car _e79377963_))
                                    (_tl79397968_ (##cdr _e79377963_)))
                                (if (gx#stx-pair? _tl79397968_)
                                    (let ((_e79407971_
                                           (gx#stx-e _tl79397968_)))
                                      (let ((_hd79417974_ (##car _e79407971_))
                                            (_tl79427976_ (##cdr _e79407971_)))
                                        (if (gx#stx-pair? _tl79427976_)
                                            (let ((_e79437979_
                                                   (gx#stx-e _tl79427976_)))
                                              (let ((_hd79447982_
                                                     (##car _e79437979_))
                                                    (_tl79457984_
                                                     (##cdr _e79437979_)))
                                                (if (gx#stx-null? _tl79457984_)
                                                    ((lambda (_L7987_
                                                              _L7988_
                                                              _L7989_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7987_)
                           (cons (gxc#compile-e _L7988_)
                                 (cons (gxc#compile-e _L7989_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd79447982_
                                                     _hd79417974_
                                                     _hd79387966_)
                                                    (_g79297950_
                                                     _g79307953_))))
                                            (_g79297950_ _g79307953_))))
                                    (_g79297950_ _g79307953_))))
                            (_g79297950_ _g79307953_))))
                    (_g79297950_ _g79307953_)))))
        (_g79288007_ _stx7927_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx7828_)
      (let* ((_g78307855_
              (lambda (_g78317852_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g78317852_)))
             (_g78297924_
              (lambda (_g78317858_)
                (if (gx#stx-pair? _g78317858_)
                    (let ((_e78367860_ (gx#stx-e _g78317858_)))
                      (let ((_hd78377863_ (##car _e78367860_))
                            (_tl78387865_ (##cdr _e78367860_)))
                        (if (gx#stx-pair? _tl78387865_)
                            (let ((_e78397868_ (gx#stx-e _tl78387865_)))
                              (let ((_hd78407871_ (##car _e78397868_))
                                    (_tl78417873_ (##cdr _e78397868_)))
                                (if (gx#stx-pair? _tl78417873_)
                                    (let ((_e78427876_
                                           (gx#stx-e _tl78417873_)))
                                      (let ((_hd78437879_ (##car _e78427876_))
                                            (_tl78447881_ (##cdr _e78427876_)))
                                        (if (gx#stx-pair? _tl78447881_)
                                            (let ((_e78457884_
                                                   (gx#stx-e _tl78447881_)))
                                              (let ((_hd78467887_
                                                     (##car _e78457884_))
                                                    (_tl78477889_
                                                     (##cdr _e78457884_)))
                                                (if (gx#stx-pair? _tl78477889_)
                                                    (let ((_e78487892_
                                                           (gx#stx-e
                                                            _tl78477889_)))
                                                      (let ((_hd78497895_
                                                             (##car _e78487892_))
                                                            (_tl78507897_
                                                             (##cdr _e78487892_)))
                                                        (if (gx#stx-null?
                                                             _tl78507897_)
                                                            ((lambda (_L7900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7901_
                              _L7902_
                              _L7903_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L7901_)
                                   (cons (gxc#compile-e _L7900_)
                                         (cons (gxc#compile-e _L7902_)
                                               (cons (gxc#compile-e _L7903_)
                                                     (cons ''#f '())))))))
                     _hd78497895_
                     _hd78467887_
                     _hd78437879_
                     _hd78407871_)
                    (_g78307855_ _g78317858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78307855_
                                                     _g78317858_))))
                                            (_g78307855_ _g78317858_))))
                                    (_g78307855_ _g78317858_))))
                            (_g78307855_ _g78317858_))))
                    (_g78307855_ _g78317858_)))))
        (_g78297924_ _stx7828_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx7682_)
      (letrec ((_import-set-template7684_
                (lambda (_in7780_ _phi7781_)
                  (let ((_iphi7783_
                         (fx+ _phi7781_
                              (##direct-structure-ref
                               _in7780_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports7784_
                         (##structure-ref
                          (##direct-structure-ref
                           _in7780_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp7786_ ((_rest7788_ _imports7784_) (_r7789_ '()))
                      (let* ((_rest77907798_ _rest7788_)
                             (_else77927806_ (lambda () _r7789_))
                             (_K77947816_
                              (lambda (_rest7809_ _in7810_)
                                (if (##structure-instance-of?
                                     _in7810_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi7783_)
                                        (_lp7786_
                                         _rest7809_
                                         (cons _in7810_ _r7789_))
                                        (_lp7786_ _rest7809_ _r7789_))
                                    (if (##structure-direct-instance-of?
                                         _in7810_
                                         'gx#module-import::t)
                                        (let ((_iphi7812_
                                               (fx+ _phi7781_
                                                    (##direct-structure-ref
                                                     _in7810_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi7812_)
                                              (_lp7786_
                                               _rest7809_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in7810_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r7789_))
                                              (_lp7786_ _rest7809_ _r7789_)))
                                        (if (##structure-direct-instance-of?
                                             _in7810_
                                             'gx#import-set::t)
                                            (let ((_xphi7814_
                                                   (fx+ _iphi7783_
                                                        (##direct-structure-ref
                                                         _in7810_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi7814_)
                                                  (_lp7786_
                                                   _rest7809_
                                                   (cons (##direct-structure-ref
                                                          _in7810_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r7789_))
                                                  (if (fxpositive? _xphi7814_)
                                                      (_lp7786_
                                                       _rest7809_
                                                       (foldl1 cons
                                                               _r7789_
                                                               (_import-set-template7684_
                                                                _in7810_
                                                                _iphi7783_)))
                                                      (_lp7786_
                                                       _rest7809_
                                                       _r7789_))))
                                            (_lp7786_ _rest7809_ _r7789_)))))))
                        (if (##pair? _rest77907798_)
                            (let ((_hd77957819_ (##car _rest77907798_))
                                  (_tl77967821_ (##cdr _rest77907798_)))
                              (let* ((_in7824_ _hd77957819_)
                                     (_rest7826_ _tl77967821_))
                                (_K77947816_ _rest7826_ _in7824_)))
                            (_else77927806_))))))))
        (let* ((_g76867696_
                (lambda (_g76877693_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76877693_)))
               (_g76857777_
                (lambda (_g76877699_)
                  (if (gx#stx-pair? _g76877699_)
                      (let ((_e76897701_ (gx#stx-e _g76877699_)))
                        (let ((_hd76907704_ (##car _e76897701_))
                              (_tl76917706_ (##cdr _e76897701_)))
                          ((lambda (_L7709_)
                             (let ((_ht7720_ (make-table 'test: eq?)))
                               (let _lp7722_ ((_rest7724_ _L7709_)
                                              (_loads7725_ '()))
                                 (letrec ((_K7727_ (lambda (_ctx7770_
                                                            _rest7771_)
                                                     (let ((_id7773_
                                                            (##structure-ref
                                                             _ctx7770_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht7720_
                                                            _id7773_
                                                            '#f)
                                                           (_lp7722_
                                                            _rest7771_
                                                            _loads7725_)
                                                           (let ((_rt7775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id7773_)
                           '"__rt")))
                     (begin
                       (table-set! _ht7720_ _id7773_ _rt7775_)
                       (_lp7722_ _rest7771_ (cons _rt7775_ _loads7725_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest77287736_ _rest7724_)
                                          (_else77307748_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g77437745_)
                                                          (list 'load-module
                                                                _g77437745_))
                                                        (reverse _loads7725_)))))
                                          (_K77327758_
                                           (lambda (_rest7751_ _in7752_)
                                             (if (##structure-instance-of?
                                                  _in7752_
                                                  'gx#module-context::t)
                                                 (_K7727_ _in7752_ _rest7751_)
                                                 (if (##structure-direct-instance-of?
                                                      _in7752_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in7752_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K7727_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in7752_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest7751_)
                 (_lp7722_ _rest7751_ _loads7725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in7752_
                                                          'gx#import-set::t)
                                                         (let ((_phi7754_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in7752_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi7754_)
                       (_K7727_ (##direct-structure-ref
                                 _in7752_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest7751_)
                       (if (fxpositive? _phi7754_)
                           (let ((_deps7756_
                                  (_import-set-template7684_ _in7752_ '0)))
                             (_lp7722_
                              (foldl1 cons _rest7751_ _deps7756_)
                              _loads7725_))
                           (_lp7722_ _rest7751_ _loads7725_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx7682_
                  _in7752_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest77287736_)
                                         (let ((_hd77337761_
                                                (##car _rest77287736_))
                                               (_tl77347763_
                                                (##cdr _rest77287736_)))
                                           (let* ((_in7766_ _hd77337761_)
                                                  (_rest7768_ _tl77347763_))
                                             (_K77327758_
                                              _rest7768_
                                              _in7766_)))
                                         (_else77307748_)))))))
                           _tl76917706_)))
                      (_g76867696_ _g76877699_)))))
          (_g76857777_ _stx7682_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx7502_)
      (letrec ((_add-lift!7504_
                (lambda (_expr7680_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr7680_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple7505_
                (lambda (_stxq7675_)
                  (let ((_gid7677_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid7678_
                         (gxc#generate-runtime-identifier _stxq7675_)))
                    (begin
                      (_add-lift!7504_
                       (cons 'define
                             (cons _gid7677_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid7678_
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
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7675_
                       _gid7677_)
                      _gid7677_))))
               (_generate-serialized7506_
                (lambda (_stxq7665_ _marks7666_)
                  (let* ((_mark-refs7668_
                          (map _generate-mark7507_ _marks7666_))
                         (_gid7670_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid7672_
                          (gxc#generate-runtime-identifier _stxq7665_)))
                    (begin
                      (_add-lift!7504_
                       (cons 'define
                             (cons _gid7670_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid7672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs7668_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7665_
                       _gid7670_)
                      _gid7670_))))
               (_generate-mark7507_
                (lambda (_mark7651_)
                  (let ((_$e7653_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark7651_
                          '#f)))
                    (if _$e7653_
                        (values _$e7653_)
                        (let* ((_gid7656_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr7658_ (_serialize-mark7508_ _mark7651_))
                               (_ctx7660_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark7651_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref7662_
                                (if (eq? _ctx7660_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref7509_
                                                             _ctx7660_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark7651_
                             _gid7656_)
                            (_add-lift!7504_
                             (cons 'define
                                   (cons _gid7656_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr7658_ '()))
                   (cons _ctx-ref7662_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid7656_))))))
               (_serialize-mark7508_
                (lambda (_mark7598_)
                  (letrec ((_quote-e7600_
                            (lambda (_sym7649_)
                              (if (interned-symbol? _sym7649_)
                                  _sym7649_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym7649_)))))
                    (let* ((_mark76017610_ _mark7598_)
                           (_E76037614_
                            (lambda ()
                              (error '"No clause matching" _mark76017610_)))
                           (_K76047626_
                            (lambda (_trace7617_
                                     _phi7618_
                                     _ctx7619_
                                     _subst7620_)
                              (let ((_subs7622_
                                     (if _subst7620_
                                         (table->list _subst7620_)
                                         '())))
                                (cons _phi7618_
                                      (map (lambda (_pair7624_)
                                             (cons (_quote-e7600_
                                                    (car _pair7624_))
                                                   (_quote-e7600_
                                                    (cdr _pair7624_))))
                                           _subs7622_))))))
                      (if (##structure-instance-of?
                           _mark76017610_
                           'gx#expander-mark::t)
                          (let* ((_e76057629_ (##vector-ref _mark76017610_ '1))
                                 (_subst7632_ _e76057629_)
                                 (_e76067634_ (##vector-ref _mark76017610_ '2))
                                 (_ctx7637_ _e76067634_)
                                 (_e76077639_ (##vector-ref _mark76017610_ '3))
                                 (_phi7642_ _e76077639_)
                                 (_e76087644_ (##vector-ref _mark76017610_ '4))
                                 (_trace7647_ _e76087644_))
                            (_K76047626_
                             _trace7647_
                             _phi7642_
                             _ctx7637_
                             _subst7632_))
                          (_E76037614_))))))
               (_context-ref7509_
                (lambda (_ctx7585_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx7585_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref7587_
                             (_context-ref-nested7511_ _ctx7585_))
                            (_ctx-origin7588_
                             (_context-ref-origin7510_ _ctx7585_))
                            (_origin7589_
                             (_context-ref-origin7510_
                              (gx#current-expander-context))))
                        (if (eq? _origin7589_ _ctx-origin7588_)
                            (let ((_ref7591_
                                   (_context-ref-nested7511_
                                    (gx#current-expander-context))))
                              (let _lp7593_ ((_ref7595_ (cdr _ref7591_))
                                             (_ctx-ref7596_
                                              (cdr _ctx-ref7587_)))
                                (if (if (pair? _ref7595_)
                                        (eq? (car _ref7595_)
                                             (car _ctx-ref7596_))
                                        '#f)
                                    (_lp7593_
                                     (cdr _ref7595_)
                                     (cdr _ctx-ref7596_))
                                    (cons '#f _ctx-ref7596_))))
                            _ctx-ref7587_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx7585_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin7510_
                (lambda (_ctx7577_)
                  (let _lp7579_ ((_ctx7581_ _ctx7577_))
                    (let ((_super7583_
                           (##structure-ref
                            _ctx7581_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super7583_
                           'gx#module-context::t)
                          (_lp7579_ _super7583_)
                          _ctx7581_)))))
               (_context-ref-nested7511_
                (lambda (_ctx7568_)
                  (let _lp7570_ ((_ctx7572_ _ctx7568_) (_r7573_ '()))
                    (let ((_super7575_
                           (##structure-ref
                            _ctx7572_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super7575_
                           'gx#module-context::t)
                          (_lp7570_
                           _super7575_
                           (cons (car (##structure-ref
                                       _ctx7572_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r7573_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx7572_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r7573_)))))))
        (let* ((_g75137526_
                (lambda (_g75147523_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75147523_)))
               (_g75127565_
                (lambda (_g75147529_)
                  (if (gx#stx-pair? _g75147529_)
                      (let ((_e75167531_ (gx#stx-e _g75147529_)))
                        (let ((_hd75177534_ (##car _e75167531_))
                              (_tl75187536_ (##cdr _e75167531_)))
                          (if (gx#stx-pair? _tl75187536_)
                              (let ((_e75197539_ (gx#stx-e _tl75187536_)))
                                (let ((_hd75207542_ (##car _e75197539_))
                                      (_tl75217544_ (##cdr _e75197539_)))
                                  (if (gx#stx-null? _tl75217544_)
                                      ((lambda (_L7547_)
                                         (if (gx#identifier? _L7547_)
                                             (let ((_$e7560_
                                                    (table-ref
                                                     (gxc#current-compile-identifiers)
                                                     _L7547_
                                                     '#f)))
                                               (if _$e7560_
                                                   (values _$e7560_)
                                                   (let ((_marks7563_
                                                          (##direct-structure-ref
                                                           _L7547_
                                                           '4
                                                           gx#syntax-quote::t
                                                           '#f)))
                                                     (if (null? _marks7563_)
                                                         (_generate-simple7505_
                                                          _L7547_)
                                                         (_generate-serialized7506_
                                                          _L7547_
                                                          _marks7563_)))))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L7547_)))
                                       _hd75207542_)
                                      (_g75137526_ _g75147529_))))
                              (_g75137526_ _g75147529_))))
                      (_g75137526_ _g75147529_)))))
          (_g75127565_ _stx7502_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx7435_)
      (let* ((_g74377454_
              (lambda (_g74387451_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g74387451_)))
             (_g74367499_
              (lambda (_g74387457_)
                (if (gx#stx-pair? _g74387457_)
                    (let ((_e74417459_ (gx#stx-e _g74387457_)))
                      (let ((_hd74427462_ (##car _e74417459_))
                            (_tl74437464_ (##cdr _e74417459_)))
                        (if (gx#stx-pair? _tl74437464_)
                            (let ((_e74447467_ (gx#stx-e _tl74437464_)))
                              (let ((_hd74457470_ (##car _e74447467_))
                                    (_tl74467472_ (##cdr _e74447467_)))
                                (if (gx#stx-pair? _tl74467472_)
                                    (let ((_e74477475_
                                           (gx#stx-e _tl74467472_)))
                                      (let ((_hd74487478_ (##car _e74477475_))
                                            (_tl74497480_ (##cdr _e74477475_)))
                                        (if (gx#stx-null? _tl74497480_)
                                            ((lambda (_L7483_ _L7484_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L7484_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7483_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd74487478_
                                             _hd74457470_)
                                            (_g74377454_ _g74387457_))))
                                    (_g74377454_ _g74387457_))))
                            (_g74377454_ _g74387457_))))
                    (_g74377454_ _g74387457_)))))
        (_g74367499_ _stx7435_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx7384_ _state7385_)
      (let* ((_g73877397_
              (lambda (_g73887394_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g73887394_)))
             (_g73867432_
              (lambda (_g73887400_)
                (if (gx#stx-pair? _g73887400_)
                    (let ((_e73907402_ (gx#stx-e _g73887400_)))
                      (let ((_hd73917405_ (##car _e73907402_))
                            (_tl73927407_ (##cdr _e73907402_)))
                        ((lambda (_L7410_)
                           (let* ((_c-body7424_
                                   (map (lambda (_g74197421_)
                                          (gxc#compile-e
                                           _g74197421_
                                           _state7385_))
                                        _L7410_))
                                  (_c-body7429_
                                   (filter (lambda (_$obj7426_)
                                             (not (eq? _$obj7426_ '#!void)))
                                           _c-body7424_)))
                             (cons '%#begin _c-body7429_)))
                         _tl73927407_)))
                    (_g73877397_ _g73887400_)))))
        (_g73867432_ _stx7384_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx7292_ _state7293_)
      (let* ((_g72957305_
              (lambda (_g72967302_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72967302_)))
             (_g72947381_
              (lambda (_g72967308_)
                (if (gx#stx-pair? _g72967308_)
                    (let ((_e72987310_ (gx#stx-e _g72967308_)))
                      (let ((_hd72997313_ (##car _e72987310_))
                            (_tl73007315_ (##cdr _e72987310_)))
                        ((lambda (_L7318_)
                           (let* ((_phi7328_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block7330_
                                   (gxc#meta-state-begin-phi!
                                    _state7293_
                                    _phi7328_))
                                  (_compiled7333_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L7318_)
                                       _state7293_))
                                    gx#current-expander-phi
                                    _phi7328_)))
                             (let* ((_g73367346_
                                     (lambda (_g73377343_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g73377343_)))
                                    (_g73357378_
                                     (lambda (_g73377349_)
                                       (if (gx#stx-pair? _g73377349_)
                                           (let ((_e73397351_
                                                  (gx#stx-e _g73377349_)))
                                             (let ((_hd73407354_
                                                    (##car _e73397351_))
                                                   (_tl73417356_
                                                    (##cdr _e73397351_)))
                                               (if (gx#identifier?
                                                    _hd73407354_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd73407354_)
                                                       ((lambda (_L7359_)
                                                          (let ((_c-body7376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj7373_)
                                   (not (eq? _$obj7373_ '#!void)))
                                 _L7359_)))
                    (if _block7330_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block7330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body7376_))
                        (if (null? _c-body7376_)
                            '#!void
                            (cons '%#begin-syntax _c-body7376_)))))
                _tl73417356_)
               (_g73367346_ _g73377349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g73367346_ _g73377349_))))
                                           (_g73367346_ _g73377349_)))))
                               (_g73357378_ _compiled7333_))))
                         _tl73007315_)))
                    (_g72957305_ _g72967308_)))))
        (_g72947381_ _stx7292_))))
  (define gxc#generate-meta-module%
    (lambda (_stx7223_ _state7224_)
      (begin
        (gxc#meta-state-end-phi! _state7224_)
        (let* ((_g72267240_
                (lambda (_g72277237_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g72277237_)))
               (_g72257289_
                (lambda (_g72277243_)
                  (if (gx#stx-pair? _g72277243_)
                      (let ((_e72307245_ (gx#stx-e _g72277243_)))
                        (let ((_hd72317248_ (##car _e72307245_))
                              (_tl72327250_ (##cdr _e72307245_)))
                          (if (gx#stx-pair? _tl72327250_)
                              (let ((_e72337253_ (gx#stx-e _tl72327250_)))
                                (let ((_hd72347256_ (##car _e72337253_))
                                      (_tl72357258_ (##cdr _e72337253_)))
                                  ((lambda (_L7261_ _L7262_)
                                     (let ((_key7275_
                                            (gx#core-identifier-key _L7262_)))
                                       (begin
                                         (if (interned-symbol? _key7275_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx7223_
                                              _L7262_
                                              _key7275_))
                                         (let* ((_ctx7277_
                                                 (gx#syntax-local-e__0
                                                  _L7262_))
                                                (_code7280_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx7277_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state7224_))
                                                  gx#current-expander-context
                                                  _ctx7277_))
                                                (_rt7282_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx7277_
                                                  '#f))
                                                (_loader7284_
                                                 (if _rt7282_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt7282_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid7286_
                                                 (gx#stx-e _L7262_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state7224_)
                                             (cons '%#module
                                                   (cons _modid7286_
                                                         (cons _code7280_
                                                               _loader7284_))))))))
                                   _tl72357258_
                                   _hd72347256_)))
                              (_g72267240_ _g72277243_))))
                      (_g72267240_ _g72277243_)))))
          (_g72257289_ _stx7223_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx7213_ _context-chain7214_)
      (let _lp7216_ ((_ctx7218_ _ctx7213_) (_path7219_ '()))
        (let ((_super7221_
               (##structure-ref _ctx7218_ '3 gx#phi-context::t '#f)))
          (if (memq _super7221_ _context-chain7214_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx7218_
                                '7
                                gx#module-context::t
                                '#f))
                          _path7219_))
              (if (##structure-instance-of? _super7221_ 'gx#module-context::t)
                  (_lp7216_
                   _super7221_
                   (cons (car (##structure-ref
                               _ctx7218_
                               '7
                               gx#module-context::t
                               '#f))
                         _path7219_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx7218_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path7219_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp7208_ ((_ctx7210_ (gx#current-expander-context)) (_r7211_ '()))
        (if (##structure-instance-of? _ctx7210_ 'gx#module-context::t)
            (_lp7208_
             (##structure-ref _ctx7210_ '3 gx#phi-context::t '#f)
             (cons _ctx7210_ _r7211_))
            _r7211_))))
  (define gxc#generate-meta-import%
    (lambda (_stx6977_ _state6978_)
      (letrec* ((_context-chain6980_ (gxc#current-context-chain))
                (_make-import-spec6981_
                 (lambda (_in7144_)
                   (let* ((_in71457157_ _in7144_)
                          (_E71477161_
                           (lambda ()
                             (error '"No clause matching" _in71457157_)))
                          (_K71487171_
                           (lambda (_phi7164_
                                    _name7165_
                                    _src-name7166_
                                    _src-phi7167_
                                    _src-key7168_
                                    _src-ctx7169_)
                             (cons _phi7164_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name7165_)
                                         (cons _src-phi7167_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name7166_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in71457157_
                          'gx#module-import::t)
                         (let ((_e71497174_ (##vector-ref _in71457157_ '1)))
                           (if (##structure-direct-instance-of?
                                _e71497174_
                                'gx#module-export::t)
                               (let* ((_e71527177_
                                       (##vector-ref _e71497174_ '1))
                                      (_src-ctx7180_ _e71527177_)
                                      (_e71537182_
                                       (##vector-ref _e71497174_ '2))
                                      (_src-key7185_ _e71537182_)
                                      (_e71547187_
                                       (##vector-ref _e71497174_ '3))
                                      (_src-phi7190_ _e71547187_)
                                      (_e71557192_
                                       (##vector-ref _e71497174_ '4))
                                      (_src-name7195_ _e71557192_)
                                      (_e71507197_
                                       (##vector-ref _in71457157_ '2))
                                      (_name7200_ _e71507197_)
                                      (_e71517202_
                                       (##vector-ref _in71457157_ '3))
                                      (_phi7205_ _e71517202_))
                                 (_K71487171_
                                  _phi7205_
                                  _name7200_
                                  _src-name7195_
                                  _src-phi7190_
                                  _src-key7185_
                                  _src-ctx7180_))
                               (_E71477161_)))
                         (_E71477161_)))))
                (_make-import-path6982_
                 (lambda (_ctx7142_)
                   (gxc#generate-meta-import-path
                    _ctx7142_
                    _context-chain6980_)))
                (_make-import-spec-in6983_
                 (lambda (_ctx7139_ _in7140_)
                   (cons 'spec:
                         (cons (_make-import-path6982_ _ctx7139_)
                               (reverse _in7140_))))))
        (begin
          (gxc#meta-state-end-phi! _state6978_)
          (let* ((_g69856995_
                  (lambda (_g69866992_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g69866992_)))
                 (_g69847136_
                  (lambda (_g69866998_)
                    (if (gx#stx-pair? _g69866998_)
                        (let ((_e69887000_ (gx#stx-e _g69866998_)))
                          (let ((_hd69897003_ (##car _e69887000_))
                                (_tl69907005_ (##cdr _e69887000_)))
                            ((lambda (_L7008_)
                               (let _lp7019_ ((_rest7021_ _L7008_)
                                              (_current-src7022_ '#f)
                                              (_current-in7023_ '())
                                              (_r7024_ '()))
                                 (let* ((_rest70257033_ _rest7021_)
                                        (_else70277043_
                                         (lambda ()
                                           (let ((_r7041_ (if _current-src7022_
                                                              (cons (_make-import-spec-in6983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src7022_
                             _current-in7023_)
                            _r7024_)
                      _r7024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r7041_)))))
                                        (_K70297124_
                                         (lambda (_rest7046_ _in7047_)
                                           (if (##structure-direct-instance-of?
                                                _in7047_
                                                'gx#module-import::t)
                                               (let* ((_in70487055_ _in7047_)
                                                      (_E70507059_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in70487055_)))
                                                      (_K70517064_
                                                       (lambda (_src-ctx7062_)
                                                         (if (eq? _current-src7022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx7062_)
                     (_lp7019_
                      _rest7046_
                      _current-src7022_
                      (cons (_make-import-spec6981_ _in7047_) _current-in7023_)
                      _r7024_)
                     (if _current-src7022_
                         (_lp7019_
                          _rest7046_
                          _src-ctx7062_
                          (cons (_make-import-spec6981_ _in7047_) '())
                          (cons (_make-import-spec-in6983_
                                 _current-src7022_
                                 _current-in7023_)
                                _r7024_))
                         (_lp7019_
                          _rest7046_
                          _src-ctx7062_
                          (cons (_make-import-spec6981_ _in7047_) '())
                          _r7024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in70487055_
                                                      'gx#module-import::t)
                                                     (let ((_e70527067_
                                                            (##vector-ref
                                                             _in70487055_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e70527067_
                                                            'gx#module-export::t)
                                                           (let* ((_e70537070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e70527067_ '1))
                          (_src-ctx7073_ _e70537070_))
                     (_K70517064_ _src-ctx7073_))
                   (_E70507059_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E70507059_)))
                                               (if (##structure-direct-instance-of?
                                                    _in7047_
                                                    'gx#import-set::t)
                                                   (let* ((_phi7075_
                                                           (##direct-structure-ref
                                                            _in7047_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7077_
                                                           (##direct-structure-ref
                                                            _in7047_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7117_
                                                           (let* ((_g70787087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path6982_ _src7077_))
                          (_E70817091_
                           (lambda ()
                             (error '"No clause matching" _g70787087_))))
                     (let ((_K70837107_ (lambda (_path7105_) _path7105_))
                           (_K70827097_
                            (lambda (_path7095_) (cons 'in: _path7095_))))
                       (if (##pair? _g70787087_)
                           (let ((_tl70857112_ (##cdr _g70787087_))
                                 (_hd70847110_ (##car _g70787087_)))
                             (if (##null? _tl70857112_)
                                 (let ((_path7115_ _hd70847110_))
                                   (_K70837107_ _path7115_))
                                 (let ((_path7100_ _g70787087_))
                                   (_K70827097_ _path7100_))))
                           (let ((_path7100_ _g70787087_))
                             (_K70827097_ _path7100_))))))
                  (_r7119_ (if _current-src7022_
                               (cons (_make-import-spec-in6983_
                                      _current-src7022_
                                      _current-in7023_)
                                     _r7024_)
                               _r7024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp7019_
                                                      _rest7046_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi7075_)
                                                                _src-in7117_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi7075_ (cons _src-in7117_ '()))))
                    _r7119_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in7047_
                                                        'gx#module-context::t)
                                                       (let ((_r7122_ (if _current-src7022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in6983_
                                         _current-src7022_
                                         _current-in7023_)
                                        _r7024_)
                                  _r7024_)))
                 (_lp7019_
                  _rest7046_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path6982_ _in7047_))
                        _r7122_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest70257033_)
                                       (let ((_hd70307127_
                                              (##car _rest70257033_))
                                             (_tl70317129_
                                              (##cdr _rest70257033_)))
                                         (let* ((_in7132_ _hd70307127_)
                                                (_rest7134_ _tl70317129_))
                                           (_K70297124_ _rest7134_ _in7132_)))
                                       (_else70277043_)))))
                             _tl69907005_)))
                        (_g69856995_ _g69866998_)))))
            (_g69847136_ _stx6977_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx6787_ _state6788_)
      (letrec* ((_context-chain6790_ (gxc#current-context-chain))
                (_make-import-path6791_
                 (lambda (_ctx6975_)
                   (gxc#generate-meta-import-path
                    _ctx6975_
                    _context-chain6790_))))
        (let* ((_g67936803_
                (lambda (_g67946800_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g67946800_)))
               (_g67926972_
                (lambda (_g67946806_)
                  (if (gx#stx-pair? _g67946806_)
                      (let ((_e67966808_ (gx#stx-e _g67946806_)))
                        (let ((_hd67976811_ (##car _e67966808_))
                              (_tl67986813_ (##cdr _e67966808_)))
                          ((lambda (_L6816_)
                             (let _lp6827_ ((_rest6829_ _L6816_) (_r6830_ '()))
                               (let* ((_rest68316839_ _rest6829_)
                                      (_else68336847_
                                       (lambda ()
                                         (cons '%#export (reverse _r6830_))))
                                      (_K68356960_
                                       (lambda (_rest6850_ _out6851_)
                                         (let* ((_out68526865_ _out6851_)
                                                (_E68556869_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out68526865_))))
                                           (let ((_K68596939_
                                                  (lambda (_name6935_
                                                           _phi6936_
                                                           _key6937_)
                                                    (_lp6827_
                                                     _rest6850_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi6936_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key6937_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name6935_)
                                           '()))))
                   _r6830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K68566919_
                                                  (lambda (_phi6873_ _src6874_)
                                                    (let* ((_out6914_
                                                            (if _src6874_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g68756884_
                                            (_make-import-path6791_ _src6874_))
                                           (_E68786888_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g68756884_))))
                                      (let ((_K68806904_
                                             (lambda (_path6902_) _path6902_))
                                            (_K68796894_
                                             (lambda (_path6892_)
                                               (cons 'in: _path6892_))))
                                        (if (##pair? _g68756884_)
                                            (let ((_tl68826909_
                                                   (##cdr _g68756884_))
                                                  (_hd68816907_
                                                   (##car _g68756884_)))
                                              (if (##null? _tl68826909_)
                                                  (let ((_path6912_
                                                         _hd68816907_))
                                                    (_K68806904_ _path6912_))
                                                  (let ((_path6897_
                                                         _g68756884_))
                                                    (_K68796894_ _path6897_))))
                                            (let ((_path6897_ _g68756884_))
                                              (_K68796894_ _path6897_)))))
                                    '()))
                        '#t))
                   (_out6916_
                    (if (fxzero? _phi6873_)
                        _out6914_
                        (cons 'phi: (cons _phi6873_ (cons _out6914_ '()))))))
              (_lp6827_ _rest6850_ (cons _out6916_ _r6830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match68546932_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out68526865_
                                                           'gx#export-set::t)
                                                          (let* ((_e68576922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out68526865_ '1))
                         (_e68586927_ (##vector-ref _out68526865_ '2)))
                    (let ((_src6925_ _e68576922_) (_phi6930_ _e68586927_))
                      (_K68566919_ _phi6930_ _src6925_)))
                  (_E68556869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out68526865_
                                                    'gx#module-export::t)
                                                   (let* ((_e68606942_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '1))
                                                          (_e68616945_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '2))
                                                          (_e68626950_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '3))
                                                          (_e68636955_
                                                           (##vector-ref
                                                            _out68526865_
                                                            '4)))
                                                     (let ((_key6948_
                                                            _e68616945_)
                                                           (_phi6953_
                                                            _e68626950_)
                                                           (_name6958_
                                                            _e68636955_))
                                                       (_K68596939_
                                                        _name6958_
                                                        _phi6953_
                                                        _key6948_)))
                                                   (_try-match68546932_))))))))
                                 (if (##pair? _rest68316839_)
                                     (let ((_hd68366963_
                                            (##car _rest68316839_))
                                           (_tl68376965_
                                            (##cdr _rest68316839_)))
                                       (let* ((_out6968_ _hd68366963_)
                                              (_rest6970_ _tl68376965_))
                                         (_K68356960_ _rest6970_ _out6968_)))
                                     (_else68336847_)))))
                           _tl67986813_)))
                      (_g67936803_ _g67946806_)))))
          (_g67926972_ _stx6787_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx6748_ _state6749_)
      (begin
        (gxc#meta-state-end-phi! _state6749_)
        (let* ((_g67516761_
                (lambda (_g67526758_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g67526758_)))
               (_g67506784_
                (lambda (_g67526764_)
                  (if (gx#stx-pair? _g67526764_)
                      (let ((_e67546766_ (gx#stx-e _g67526764_)))
                        (let ((_hd67556769_ (##car _e67546766_))
                              (_tl67566771_ (##cdr _e67546766_)))
                          ((lambda (_L6774_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L6774_)))
                           _tl67566771_)))
                      (_g67516761_ _g67526764_)))))
          (_g67506784_ _stx6748_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx6619_ _state6620_)
      (letrec ((_generate16622_
                (lambda (_id6743_ _eid6744_)
                  (let ((_eid6746_ (gx#stx-e _eid6744_)))
                    (begin
                      (if (interned-symbol? _eid6746_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx6619_
                           _eid6746_))
                      (cons (gxc#generate-runtime-identifier _id6743_)
                            (cons _eid6746_ '())))))))
        (let* ((_g66246652_
                (lambda (_g66256649_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g66256649_)))
               (_g66236740_
                (lambda (_g66256655_)
                  (if (gx#stx-pair? _g66256655_)
                      (let ((_e66286657_ (gx#stx-e _g66256655_)))
                        (let ((_hd66296660_ (##car _e66286657_))
                              (_tl66306662_ (##cdr _e66286657_)))
                          (if (gx#stx-pair/null? _tl66306662_)
                              (let ((_g15642_
                                     (gx#syntax-split-splice _tl66306662_ '0)))
                                (begin
                                  (let ((_g15643_
                                         (if (##values? _g15642_)
                                             (##vector-length _g15642_)
                                             1)))
                                    (if (not (##fx= _g15643_ 2))
                                        (error "Context expects 2 values"
                                               _g15643_)))
                                  (let ((_target66316665_
                                         (##vector-ref _g15642_ 0))
                                        (_tl66336667_
                                         (##vector-ref _g15642_ 1)))
                                    (if (gx#stx-null? _tl66336667_)
                                        (letrec ((_loop66346670_
                                                  (lambda (_hd66326673_
                                                           _eid66386675_
                                                           _id66396677_)
                                                    (if (gx#stx-pair?
                                                         _hd66326673_)
                                                        (let ((_e66356680_
                                                               (gx#stx-e
                                                                _hd66326673_)))
                                                          (let ((_lp-hd66366683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e66356680_))
                        (_lp-tl66376685_ (##cdr _e66356680_)))
                    (if (gx#stx-pair? _lp-hd66366683_)
                        (let ((_e66426688_ (gx#stx-e _lp-hd66366683_)))
                          (let ((_hd66436691_ (##car _e66426688_))
                                (_tl66446693_ (##cdr _e66426688_)))
                            (if (gx#stx-pair? _tl66446693_)
                                (let ((_e66456696_ (gx#stx-e _tl66446693_)))
                                  (let ((_hd66466699_ (##car _e66456696_))
                                        (_tl66476701_ (##cdr _e66456696_)))
                                    (if (gx#stx-null? _tl66476701_)
                                        (_loop66346670_
                                         _lp-tl66376685_
                                         (cons _hd66466699_ _eid66386675_)
                                         (cons _hd66436691_ _id66396677_))
                                        (_g66246652_ _g66256655_))))
                                (_g66246652_ _g66256655_))))
                        (_g66246652_ _g66256655_))))
                (let ((_eid66406704_ (reverse _eid66386675_))
                      (_id66416706_ (reverse _id66396677_)))
                  ((lambda (_L6709_ _L6710_)
                     (cons '%#extern
                           (map _generate16622_
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g67256728_ _g67266730_)
                                            (cons _g67256728_ _g67266730_))
                                          '()
                                          _L6710_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g67326735_ _g67336737_)
                                            (cons _g67326735_ _g67336737_))
                                          '()
                                          _L6709_)))))
                   _eid66406704_
                   _id66416706_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop66346670_
                                           _target66316665_
                                           '()
                                           '()))
                                        (_g66246652_ _g66256655_)))))
                              (_g66246652_ _g66256655_))))
                      (_g66246652_ _g66256655_)))))
          (_g66236740_ _stx6619_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx6409_ _state6410_)
      (letrec ((_generate16412_
                (lambda (_id6614_)
                  (let ((_eid6616_ (gxc#generate-runtime-binding-id _id6614_))
                        (_ident6617_
                         (gxc#generate-runtime-identifier _id6614_)))
                    (cons '%#define-runtime
                          (cons _ident6617_ (cons _eid6616_ '()))))))
               (_generate*6413_
                (lambda (_all6582_)
                  (let* ((_all65836591_ _all6582_)
                         (_else65856599_ (lambda () (cons '%#begin _all6582_)))
                         (_K65876604_ (lambda (_one6602_) _one6602_)))
                    (if (##pair? _all65836591_)
                        (let ((_hd65886607_ (##car _all65836591_))
                              (_tl65896609_ (##cdr _all65836591_)))
                          (let ((_one6612_ _hd65886607_))
                            (if (##null? _tl65896609_)
                                (_K65876604_ _one6612_)
                                (_else65856599_))))
                        (_else65856599_))))))
        (let* ((_g64156432_
                (lambda (_g64166429_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64166429_)))
               (_g64146579_
                (lambda (_g64166435_)
                  (if (gx#stx-pair? _g64166435_)
                      (let ((_e64196437_ (gx#stx-e _g64166435_)))
                        (let ((_hd64206440_ (##car _e64196437_))
                              (_tl64216442_ (##cdr _e64196437_)))
                          (if (gx#stx-pair? _tl64216442_)
                              (let ((_e64226445_ (gx#stx-e _tl64216442_)))
                                (let ((_hd64236448_ (##car _e64226445_))
                                      (_tl64246450_ (##cdr _e64226445_)))
                                  (if (gx#stx-pair? _tl64246450_)
                                      (let ((_e64256453_
                                             (gx#stx-e _tl64246450_)))
                                        (let ((_hd64266456_
                                               (##car _e64256453_))
                                              (_tl64276458_
                                               (##cdr _e64256453_)))
                                          (if (gx#stx-null? _tl64276458_)
                                              ((lambda (_L6461_ _L6462_)
                                                 (let _lp6478_ ((_rest6480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6462_)
                        (_r6481_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((___stx1554915550_
                                                           _rest6480_)
                                                          (_g64866503_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1554915550_))))
                                                     (let ((___kont1555115552_
                                                            (lambda (_L6566_)
                                                              (_lp6478_
                                                               _L6566_
                                                               _r6481_)))
                                                           (___kont1555315554_
                                                            (lambda (_L6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L6540_)
                      (_lp6478_
                       _L6539_
                       (cons (_generate16412_ _L6540_) _r6481_))))
                   (___kont1555515556_
                    (lambda (_L6515_)
                      (_generate*6413_
                       (foldl1 cons
                               (cons (_generate16412_ _L6515_) '())
                               _r6481_))))
                   (___kont1555715558_
                    (lambda () (_generate*6413_ (reverse _r6481_)))))
               (let ((_g64846526_
                      (lambda ()
                        (let ((_L6515_ ___stx1554915550_))
                          (if (gx#identifier? _L6515_)
                              (___kont1555515556_ _L6515_)
                              (___kont1555715558_))))))
                 (if (gx#stx-pair? ___stx1554915550_)
                     (let ((_e64896555_ (gx#stx-e ___stx1554915550_)))
                       (let ((_tl64916560_ (##cdr _e64896555_))
                             (_hd64906558_ (##car _e64896555_)))
                         (if (gx#stx-datum? _hd64906558_)
                             (let ((_e64926563_ (gx#stx-e _hd64906558_)))
                               (if (equal? _e64926563_ '#f)
                                   (___kont1555115552_ _tl64916560_)
                                   (___kont1555315554_
                                    _tl64916560_
                                    _hd64906558_)))
                             (___kont1555315554_ _tl64916560_ _hd64906558_))))
                     (_g64846526_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd64266456_
                                               _hd64236448_)
                                              (_g64156432_ _g64166435_))))
                                      (_g64156432_ _g64166435_))))
                              (_g64156432_ _g64166435_))))
                      (_g64156432_ _g64166435_)))))
          (_g64146579_ _stx6409_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx6306_ _state6307_)
      (let* ((_g63096326_
              (lambda (_g63106323_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63106323_)))
             (_g63086406_
              (lambda (_g63106329_)
                (if (gx#stx-pair? _g63106329_)
                    (let ((_e63136331_ (gx#stx-e _g63106329_)))
                      (let ((_hd63146334_ (##car _e63136331_))
                            (_tl63156336_ (##cdr _e63136331_)))
                        (if (gx#stx-pair? _tl63156336_)
                            (let ((_e63166339_ (gx#stx-e _tl63156336_)))
                              (let ((_hd63176342_ (##car _e63166339_))
                                    (_tl63186344_ (##cdr _e63166339_)))
                                (if (gx#stx-pair? _tl63186344_)
                                    (let ((_e63196347_
                                           (gx#stx-e _tl63186344_)))
                                      (let ((_hd63206350_ (##car _e63196347_))
                                            (_tl63216352_ (##cdr _e63196347_)))
                                        (if (gx#stx-null? _tl63216352_)
                                            ((lambda (_L6355_ _L6356_)
                                               (let* ((_eid6371_
                                                       (gxc#generate-runtime-binding-id
                                                        _L6356_))
                                                      (_phi6373_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block6375_
                                                       (gxc#meta-state-begin-phi!
                                                        _state6307_
                                                        _phi6373_)))
                                                 (begin
                                                   (let* ((_g63786385_
                                                           (lambda (_g63796382_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g63796382_)))
                                                          (_g63776403_
                                                           (lambda (_g63796388_)
                                                             ((lambda (_L6390_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state6307_
                           _phi6373_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L6390_ (cons _L6355_ '()))))))
                      _g63796388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g63776403_ _eid6371_))
                                                   (if _block6375_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block6375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L6356_)
                                             (cons _eid6371_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L6356_)
                           (cons _eid6371_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63206350_
                                             _hd63176342_)
                                            (_g63096326_ _g63106329_))))
                                    (_g63096326_ _g63106329_))))
                            (_g63096326_ _g63106329_))))
                    (_g63096326_ _g63106329_)))))
        (_g63086406_ _stx6306_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx6238_ _state6239_)
      (let* ((_g62416258_
              (lambda (_g62426255_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62426255_)))
             (_g62406303_
              (lambda (_g62426261_)
                (if (gx#stx-pair? _g62426261_)
                    (let ((_e62456263_ (gx#stx-e _g62426261_)))
                      (let ((_hd62466266_ (##car _e62456263_))
                            (_tl62476268_ (##cdr _e62456263_)))
                        (if (gx#stx-pair? _tl62476268_)
                            (let ((_e62486271_ (gx#stx-e _tl62476268_)))
                              (let ((_hd62496274_ (##car _e62486271_))
                                    (_tl62506276_ (##cdr _e62486271_)))
                                (if (gx#stx-pair? _tl62506276_)
                                    (let ((_e62516279_
                                           (gx#stx-e _tl62506276_)))
                                      (let ((_hd62526282_ (##car _e62516279_))
                                            (_tl62536284_ (##cdr _e62516279_)))
                                        (if (gx#stx-null? _tl62536284_)
                                            ((lambda (_L6287_ _L6288_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L6288_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6287_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62526282_
                                             _hd62496274_)
                                            (_g62416258_ _g62426261_))))
                                    (_g62416258_ _g62426261_))))
                            (_g62416258_ _g62426261_))))
                    (_g62416258_ _g62426261_)))))
        (_g62406303_ _stx6238_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx6235_ _state6236_)
      (begin
        (gxc#meta-state-add-phi!
         _state6236_
         (gx#current-expander-phi)
         _stx6235_)
        (gxc#generate-meta-define-values% _stx6235_ _state6236_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx6232_ _state6233_)
      (begin
        (gxc#meta-state-add-phi!
         _state6233_
         (gx#current-expander-phi)
         _stx6232_)
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
    (lambda _$args6229_
      (apply make-struct-instance gxc#meta-state::t _$args6229_)))
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
    (lambda (_self6226_ _ctx6227_)
      (struct-instance-init!
       _self6226_
       (gxc#module-id->path-string
        (##structure-ref _ctx6227_ '1 gx#expander-context::t '#f))
       '1
       (make-table 'test: eq?)
       '())))
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
    (lambda _$args6101_
      (apply make-struct-instance gxc#meta-state-block::t _$args6101_)))
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
    (lambda (_state6060_ _phi6061_)
      (let* ((_state60626070_ _state6060_)
             (_E60646074_
              (lambda () (error '"No clause matching" _state60626070_)))
             (_K60656083_
              (lambda (_open6077_ _n6078_ _src6079_)
                (if (table-ref _open6077_ _phi6061_ '#f)
                    '#f
                    (let ((_block-ref6081_
                           (string-append
                            _src6079_
                            '"__"
                            (number->string _n6078_))))
                      (begin
                        (##structure-set!
                         _state6060_
                         (fx+ _n6078_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open6077_
                         _phi6061_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi6061_
                          _n6078_
                          '()))
                        _block-ref6081_))))))
        (if (##structure-instance-of? _state60626070_ 'gxc#meta-state::t)
            (let* ((_e60666086_ (##vector-ref _state60626070_ '1))
                   (_src6089_ _e60666086_)
                   (_e60676091_ (##vector-ref _state60626070_ '2))
                   (_n6094_ _e60676091_)
                   (_e60686096_ (##vector-ref _state60626070_ '3))
                   (_open6099_ _e60686096_))
              (_K60656083_ _open6099_ _n6094_ _src6089_))
            (_E60646074_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state6054_ _phi6055_ _stx6056_)
      (let ((_block6058_
             (table-ref
              (##structure-ref _state6054_ '3 gxc#meta-state::t '#f)
              _phi6055_
              '#f)))
        (##structure-set!
         _block6058_
         (cons _stx6056_
               (##structure-ref _block6058_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state6049_)
      (begin
        (##structure-set!
         _state6049_
         (hash-fold
          (lambda (_g15644_ _block6051_ _r6052_) (cons _block6051_ _r6052_))
          (##structure-ref _state6049_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state6049_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6049_
         (make-table 'test: eq?)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state6001_)
      (begin
        (gxc#meta-state-end-phi! _state6001_)
        (foldl1 (lambda (_block6003_ _r6004_)
                  (let* ((_block60056014_ _block6003_)
                         (_E60076018_
                          (lambda ()
                            (error '"No clause matching" _block60056014_)))
                         (_K60086026_
                          (lambda (_code6021_ _n6022_ _phi6023_ _ctx6024_)
                            (if (null? _code6021_)
                                _r6004_
                                (cons (cons _ctx6024_
                                            (cons _phi6023_
                                                  (cons _n6022_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code6021_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r6004_)))))
                    (if (##structure-instance-of?
                         _block60056014_
                         'gxc#meta-state-block::t)
                        (let* ((_e60096029_ (##vector-ref _block60056014_ '1))
                               (_ctx6032_ _e60096029_)
                               (_e60106034_ (##vector-ref _block60056014_ '2))
                               (_phi6037_ _e60106034_)
                               (_e60116039_ (##vector-ref _block60056014_ '3))
                               (_n6042_ _e60116039_)
                               (_e60126044_ (##vector-ref _block60056014_ '4))
                               (_code6047_ _e60126044_))
                          (_K60086026_ _code6047_ _n6042_ _phi6037_ _ctx6032_))
                        (_E60076018_))))
                '()
                (##structure-ref _state6001_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx5997_)
      (let ((_ht5999_ (make-table 'test: eq?)))
        (begin
          (gxc#apply-collect-expression-refs _stx5997_ _ht5999_)
          _ht5999_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx5940_ _ht5941_)
      (let* ((_g59435956_
              (lambda (_g59445953_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59445953_)))
             (_g59425994_
              (lambda (_g59445959_)
                (if (gx#stx-pair? _g59445959_)
                    (let ((_e59465961_ (gx#stx-e _g59445959_)))
                      (let ((_hd59475964_ (##car _e59465961_))
                            (_tl59485966_ (##cdr _e59465961_)))
                        (if (gx#stx-pair? _tl59485966_)
                            (let ((_e59495969_ (gx#stx-e _tl59485966_)))
                              (let ((_hd59505972_ (##car _e59495969_))
                                    (_tl59515974_ (##cdr _e59495969_)))
                                (if (gx#stx-null? _tl59515974_)
                                    ((lambda (_L5977_)
                                       (let* ((_bind5989_
                                               (gx#resolve-identifier__0
                                                _L5977_))
                                              (_eid5991_
                                               (if _bind5989_
                                                   (##structure-ref
                                                    _bind5989_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L5977_))))
                                         (table-set!
                                          _ht5941_
                                          _eid5991_
                                          _eid5991_)))
                                     _hd59505972_)
                                    (_g59435956_ _g59445959_))))
                            (_g59435956_ _g59445959_))))
                    (_g59435956_ _g59445959_)))))
        (_g59425994_ _stx5940_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx5867_ _ht5868_)
      (let* ((_g58705887_
              (lambda (_g58715884_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58715884_)))
             (_g58695937_
              (lambda (_g58715890_)
                (if (gx#stx-pair? _g58715890_)
                    (let ((_e58745892_ (gx#stx-e _g58715890_)))
                      (let ((_hd58755895_ (##car _e58745892_))
                            (_tl58765897_ (##cdr _e58745892_)))
                        (if (gx#stx-pair? _tl58765897_)
                            (let ((_e58775900_ (gx#stx-e _tl58765897_)))
                              (let ((_hd58785903_ (##car _e58775900_))
                                    (_tl58795905_ (##cdr _e58775900_)))
                                (if (gx#stx-pair? _tl58795905_)
                                    (let ((_e58805908_
                                           (gx#stx-e _tl58795905_)))
                                      (let ((_hd58815911_ (##car _e58805908_))
                                            (_tl58825913_ (##cdr _e58805908_)))
                                        (if (gx#stx-null? _tl58825913_)
                                            ((lambda (_L5916_ _L5917_)
                                               (let* ((_bind5932_
                                                       (gx#resolve-identifier__0
                                                        _L5917_))
                                                      (_eid5934_
                                                       (if _bind5932_
                                                           (##structure-ref
                                                            _bind5932_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L5917_))))
                                                 (begin
                                                   (table-set!
                                                    _ht5868_
                                                    _eid5934_
                                                    _eid5934_)
                                                   (gxc#compile-e
                                                    _L5916_
                                                    _ht5868_))))
                                             _hd58815911_
                                             _hd58785903_)
                                            (_g58705887_ _g58715890_))))
                                    (_g58705887_ _g58715890_))))
                            (_g58705887_ _g58715890_))))
                    (_g58705887_ _g58715890_)))))
        (_g58695937_ _stx5867_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx5829_)
      (let* ((_g58315841_
              (lambda (_g58325838_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58325838_)))
             (_g58305864_
              (lambda (_g58325844_)
                (if (gx#stx-pair? _g58325844_)
                    (let ((_e58345846_ (gx#stx-e _g58325844_)))
                      (let ((_hd58355849_ (##car _e58345846_))
                            (_tl58365851_ (##cdr _e58345846_)))
                        ((lambda (_L5854_) (ormap1 gxc#compile-e _L5854_))
                         _tl58365851_)))
                    (_g58315841_ _g58325844_)))))
        (_g58305864_ _stx5829_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx5791_)
      (let* ((_g57935803_
              (lambda (_g57945800_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57945800_)))
             (_g57925826_
              (lambda (_g57945806_)
                (if (gx#stx-pair? _g57945806_)
                    (let ((_e57965808_ (gx#stx-e _g57945806_)))
                      (let ((_hd57975811_ (##car _e57965808_))
                            (_tl57985813_ (##cdr _e57965808_)))
                        ((lambda (_L5816_) (gxc#compile-e (last _L5816_)))
                         _tl57985813_)))
                    (_g57935803_ _g57945806_)))))
        (_g57925826_ _stx5791_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx5724_)
      (let* ((_g57265743_
              (lambda (_g57275740_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57275740_)))
             (_g57255788_
              (lambda (_g57275746_)
                (if (gx#stx-pair? _g57275746_)
                    (let ((_e57305748_ (gx#stx-e _g57275746_)))
                      (let ((_hd57315751_ (##car _e57305748_))
                            (_tl57325753_ (##cdr _e57305748_)))
                        (if (gx#stx-pair? _tl57325753_)
                            (let ((_e57335756_ (gx#stx-e _tl57325753_)))
                              (let ((_hd57345759_ (##car _e57335756_))
                                    (_tl57355761_ (##cdr _e57335756_)))
                                (if (gx#stx-pair? _tl57355761_)
                                    (let ((_e57365764_
                                           (gx#stx-e _tl57355761_)))
                                      (let ((_hd57375767_ (##car _e57365764_))
                                            (_tl57385769_ (##cdr _e57365764_)))
                                        (if (gx#stx-null? _tl57385769_)
                                            ((lambda (_L5772_ _L5773_)
                                               (gxc#compile-e _L5772_))
                                             _hd57375767_
                                             _hd57345759_)
                                            (_g57265743_ _g57275746_))))
                                    (_g57265743_ _g57275746_))))
                            (_g57265743_ _g57275746_))))
                    (_g57265743_ _g57275746_)))))
        (_g57255788_ _stx5724_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx5657_)
      (let* ((_g56595676_
              (lambda (_g56605673_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56605673_)))
             (_g56585721_
              (lambda (_g56605679_)
                (if (gx#stx-pair? _g56605679_)
                    (let ((_e56635681_ (gx#stx-e _g56605679_)))
                      (let ((_hd56645684_ (##car _e56635681_))
                            (_tl56655686_ (##cdr _e56635681_)))
                        (if (gx#stx-pair? _tl56655686_)
                            (let ((_e56665689_ (gx#stx-e _tl56655686_)))
                              (let ((_hd56675692_ (##car _e56665689_))
                                    (_tl56685694_ (##cdr _e56665689_)))
                                (if (gx#stx-pair? _tl56685694_)
                                    (let ((_e56695697_
                                           (gx#stx-e _tl56685694_)))
                                      (let ((_hd56705700_ (##car _e56695697_))
                                            (_tl56715702_ (##cdr _e56695697_)))
                                        (if (gx#stx-null? _tl56715702_)
                                            ((lambda (_L5705_ _L5706_)
                                               (gxc#compile-e _L5705_))
                                             _hd56705700_
                                             _hd56675692_)
                                            (_g56595676_ _g56605679_))))
                                    (_g56595676_ _g56605679_))))
                            (_g56595676_ _g56605679_))))
                    (_g56595676_ _g56605679_)))))
        (_g56585721_ _stx5657_))))
  (define gxc#count-values-single% (lambda (_stx5655_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx5573_)
      (let* ((_g55755594_
              (lambda (_g55765591_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55765591_)))
             (_g55745652_
              (lambda (_g55765597_)
                (if (gx#stx-pair? _g55765597_)
                    (let ((_e55785599_ (gx#stx-e _g55765597_)))
                      (let ((_hd55795602_ (##car _e55785599_))
                            (_tl55805604_ (##cdr _e55785599_)))
                        (if (gx#stx-pair/null? _tl55805604_)
                            (let ((_g15645_
                                   (gx#syntax-split-splice _tl55805604_ '0)))
                              (begin
                                (let ((_g15646_
                                       (if (##values? _g15645_)
                                           (##vector-length _g15645_)
                                           1)))
                                  (if (not (##fx= _g15646_ 2))
                                      (error "Context expects 2 values"
                                             _g15646_)))
                                (let ((_target55815607_
                                       (##vector-ref _g15645_ 0))
                                      (_tl55835609_ (##vector-ref _g15645_ 1)))
                                  (if (gx#stx-null? _tl55835609_)
                                      (letrec ((_loop55845612_
                                                (lambda (_hd55825615_
                                                         _expr55885617_)
                                                  (if (gx#stx-pair?
                                                       _hd55825615_)
                                                      (let ((_e55855620_
                                                             (gx#stx-e
                                                              _hd55825615_)))
                                                        (let ((_lp-hd55865623_
                                                               (##car _e55855620_))
                                                              (_lp-tl55875625_
                                                               (##cdr _e55855620_)))
                                                          (_loop55845612_
                                                           _lp-tl55875625_
                                                           (cons _lp-hd55865623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr55885617_))))
              (let ((_expr55895628_ (reverse _expr55885617_)))
                ((lambda (_L5631_)
                   (gxc#compile-e
                    (last (begin
                            '#!void
                            (foldr1 (lambda (_g56445647_ _g56455649_)
                                      (cons _g56445647_ _g56455649_))
                                    '()
                                    _L5631_)))))
                 _expr55895628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop55845612_ _target55815607_ '()))
                                      (_g55755594_ _g55765597_)))))
                            (_g55755594_ _g55765597_))))
                    (_g55755594_ _g55765597_)))))
        (_g55745652_ _stx5573_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx5506_)
      (let* ((_g55085525_
              (lambda (_g55095522_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55095522_)))
             (_g55075570_
              (lambda (_g55095528_)
                (if (gx#stx-pair? _g55095528_)
                    (let ((_e55125530_ (gx#stx-e _g55095528_)))
                      (let ((_hd55135533_ (##car _e55125530_))
                            (_tl55145535_ (##cdr _e55125530_)))
                        (if (gx#stx-pair? _tl55145535_)
                            (let ((_e55155538_ (gx#stx-e _tl55145535_)))
                              (let ((_hd55165541_ (##car _e55155538_))
                                    (_tl55175543_ (##cdr _e55155538_)))
                                (if (gx#stx-pair? _tl55175543_)
                                    (let ((_e55185546_
                                           (gx#stx-e _tl55175543_)))
                                      (let ((_hd55195549_ (##car _e55185546_))
                                            (_tl55205551_ (##cdr _e55185546_)))
                                        (if (gx#stx-null? _tl55205551_)
                                            ((lambda (_L5554_ _L5555_)
                                               (gxc#compile-e _L5554_))
                                             _hd55195549_
                                             _hd55165541_)
                                            (_g55085525_ _g55095528_))))
                                    (_g55085525_ _g55095528_))))
                            (_g55085525_ _g55095528_))))
                    (_g55085525_ _g55095528_)))))
        (_g55075570_ _stx5506_))))
  (define gxc#count-values-let-values%
    (lambda (_stx5439_)
      (let* ((_g54415458_
              (lambda (_g54425455_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54425455_)))
             (_g54405503_
              (lambda (_g54425461_)
                (if (gx#stx-pair? _g54425461_)
                    (let ((_e54455463_ (gx#stx-e _g54425461_)))
                      (let ((_hd54465466_ (##car _e54455463_))
                            (_tl54475468_ (##cdr _e54455463_)))
                        (if (gx#stx-pair? _tl54475468_)
                            (let ((_e54485471_ (gx#stx-e _tl54475468_)))
                              (let ((_hd54495474_ (##car _e54485471_))
                                    (_tl54505476_ (##cdr _e54485471_)))
                                (if (gx#stx-pair? _tl54505476_)
                                    (let ((_e54515479_
                                           (gx#stx-e _tl54505476_)))
                                      (let ((_hd54525482_ (##car _e54515479_))
                                            (_tl54535484_ (##cdr _e54515479_)))
                                        (if (gx#stx-null? _tl54535484_)
                                            ((lambda (_L5487_ _L5488_)
                                               (gxc#compile-e _L5487_))
                                             _hd54525482_
                                             _hd54495474_)
                                            (_g54415458_ _g54425461_))))
                                    (_g54415458_ _g54425461_))))
                            (_g54415458_ _g54425461_))))
                    (_g54415458_ _g54425461_)))))
        (_g54405503_ _stx5439_))))
  (define gxc#count-values-call%
    (lambda (_stx5306_)
      (let* ((___stx1557915580_ _stx5306_)
             (_g53095338_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1557915580_))))
        (let ((___kont1558115582_
               (lambda (_L5406_ _L5407_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g54285431_ _g54295433_)
                                     (cons _g54285431_ _g54295433_))
                                   '()
                                   _L5406_)))))
              (___kont1558515586_ (lambda () '#f)))
          (let ((___match1562415625_
                 (lambda (_e53135350_
                          _hd53145353_
                          _tl53155355_
                          _e53165358_
                          _hd53175361_
                          _tl53185363_
                          _e53195366_
                          _hd53205369_
                          _tl53215371_
                          _e53225374_
                          _hd53235377_
                          _tl53245379_
                          ___splice1558315584_
                          _target53255382_
                          _tl53275384_)
                   (letrec ((_loop53285387_
                             (lambda (_hd53265390_ _rand53325392_)
                               (if (gx#stx-pair? _hd53265390_)
                                   (let ((_e53295395_ (gx#stx-e _hd53265390_)))
                                     (let ((_lp-tl53315400_
                                            (##cdr _e53295395_))
                                           (_lp-hd53305398_
                                            (##car _e53295395_)))
                                       (_loop53285387_
                                        _lp-tl53315400_
                                        (cons _lp-hd53305398_
                                              _rand53325392_))))
                                   (let ((_rand53335403_
                                          (reverse _rand53325392_)))
                                     (let ((_L5406_ _rand53335403_)
                                           (_L5407_ _hd53235377_))
                                       (if (gx#free-identifier=?
                                            _L5407_
                                            'values)
                                           (___kont1558115582_ _L5406_ _L5407_)
                                           (___kont1558515586_))))))))
                     (_loop53285387_ _target53255382_ '())))))
            (if (gx#stx-pair? ___stx1557915580_)
                (let ((_e53135350_ (gx#stx-e ___stx1557915580_)))
                  (let ((_tl53155355_ (##cdr _e53135350_))
                        (_hd53145353_ (##car _e53135350_)))
                    (if (gx#stx-pair? _tl53155355_)
                        (let ((_e53165358_ (gx#stx-e _tl53155355_)))
                          (let ((_tl53185363_ (##cdr _e53165358_))
                                (_hd53175361_ (##car _e53165358_)))
                            (if (gx#stx-pair? _hd53175361_)
                                (let ((_e53195366_ (gx#stx-e _hd53175361_)))
                                  (let ((_tl53215371_ (##cdr _e53195366_))
                                        (_hd53205369_ (##car _e53195366_)))
                                    (if (gx#identifier? _hd53205369_)
                                        (if (gx#stx-eq? '%#ref _hd53205369_)
                                            (if (gx#stx-pair? _tl53215371_)
                                                (let ((_e53225374_
                                                       (gx#stx-e
                                                        _tl53215371_)))
                                                  (let ((_tl53245379_
                                                         (##cdr _e53225374_))
                                                        (_hd53235377_
                                                         (##car _e53225374_)))
                                                    (if (gx#stx-null?
                                                         _tl53245379_)
                                                        (if (gx#stx-pair/null?
                                                             _tl53185363_)
                                                            (let ((___splice1558315584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl53185363_ '0)))
                      (let ((_tl53275384_
                             (##vector-ref ___splice1558315584_ '1))
                            (_target53255382_
                             (##vector-ref ___splice1558315584_ '0)))
                        (if (gx#stx-null? _tl53275384_)
                            (___match1562415625_
                             _e53135350_
                             _hd53145353_
                             _tl53155355_
                             _e53165358_
                             _hd53175361_
                             _tl53185363_
                             _e53195366_
                             _hd53205369_
                             _tl53215371_
                             _e53225374_
                             _hd53235377_
                             _tl53245379_
                             ___splice1558315584_
                             _target53255382_
                             _tl53275384_)
                            (___kont1558515586_))))
                    (___kont1558515586_))
                (___kont1558515586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1558515586_))
                                            (___kont1558515586_))
                                        (___kont1558515586_))))
                                (___kont1558515586_))))
                        (___kont1558515586_))))
                (___kont1558515586_)))))))
  (define gxc#count-values-if%
    (lambda (_stx5210_)
      (let* ((_g52125233_
              (lambda (_g52135230_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52135230_)))
             (_g52115303_
              (lambda (_g52135236_)
                (if (gx#stx-pair? _g52135236_)
                    (let ((_e52175238_ (gx#stx-e _g52135236_)))
                      (let ((_hd52185241_ (##car _e52175238_))
                            (_tl52195243_ (##cdr _e52175238_)))
                        (if (gx#stx-pair? _tl52195243_)
                            (let ((_e52205246_ (gx#stx-e _tl52195243_)))
                              (let ((_hd52215249_ (##car _e52205246_))
                                    (_tl52225251_ (##cdr _e52205246_)))
                                (if (gx#stx-pair? _tl52225251_)
                                    (let ((_e52235254_
                                           (gx#stx-e _tl52225251_)))
                                      (let ((_hd52245257_ (##car _e52235254_))
                                            (_tl52255259_ (##cdr _e52235254_)))
                                        (if (gx#stx-pair? _tl52255259_)
                                            (let ((_e52265262_
                                                   (gx#stx-e _tl52255259_)))
                                              (let ((_hd52275265_
                                                     (##car _e52265262_))
                                                    (_tl52285267_
                                                     (##cdr _e52265262_)))
                                                (if (gx#stx-null? _tl52285267_)
                                                    ((lambda (_L5270_
                                                              _L5271_
                                                              _L5272_)
                                                       (let ((_c152895291_
                                                              (gxc#compile-e
                                                               _L5271_)))
                                                         (if _c152895291_
                                                             (let* ((_c15294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c152895291_)
                            (_c252955297_ (gxc#compile-e _L5270_)))
                       (if _c252955297_
                           (let ((_c25300_ _c252955297_))
                             (if (fx= _c15294_ _c25300_) _c15294_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd52275265_
                                                     _hd52245257_
                                                     _hd52215249_)
                                                    (_g52125233_
                                                     _g52135236_))))
                                            (_g52125233_ _g52135236_))))
                                    (_g52125233_ _g52135236_))))
                            (_g52125233_ _g52135236_))))
                    (_g52125233_ _g52135236_)))))
        (_g52115303_ _stx5210_)))))
