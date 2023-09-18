(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1695067466)
  (begin
    (define gxc#current-compile-methods (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e11127_
                  (lambda (_id11129_) (symbol-hash (gx#stx-e _id11129_)))))
          (make-table 'test: gx#bound-identifier=? 'hash: _hash-e11127_))))
    (define gxc#compile-e
      (lambda (_stx11082_ . _args11083_)
        (let* ((_g1108511095_
                (lambda (_g1108611092_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1108611092_)))
               (_g1108411123_
                (lambda (_g1108611098_)
                  (if (gx#stx-pair? _g1108611098_)
                      (let ((_e1108811100_ (gx#stx-e _g1108611098_)))
                        (let ((_hd1108911103_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1108811100_)))
                              (_tl1109011105_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1108811100_))))
                          ((lambda (_L11108_)
                             (let ((_$e11118_
                                    (table-ref
                                     (gxc#current-compile-methods)
                                     (gx#stx-e _L11108_)
                                     '#f)))
                               (if _$e11118_
                                   ((lambda (_method11121_)
                                      (apply _method11121_
                                             _stx11082_
                                             _args11083_))
                                    _$e11118_)
                                   (gxc#raise-compile-error
                                    '"Cannot compile; missing method"
                                    _stx11082_
                                    _L11108_))))
                           _hd1108911103_)))
                      (_g1108511095_ _g1108611098_)))))
          (_g1108411123_ _stx11082_))))
    (define gxc#&void-expression
      (make-promise
       (lambda ()
         (let ((_tbl11079_ (make-table 'test: eq?)))
           (table-set! _tbl11079_ '%#begin-annotation void)
           (table-set! _tbl11079_ '%#lambda void)
           (table-set! _tbl11079_ '%#case-lambda void)
           (table-set! _tbl11079_ '%#let-values void)
           (table-set! _tbl11079_ '%#letrec-values void)
           (table-set! _tbl11079_ '%#letrec*-values void)
           (table-set! _tbl11079_ '%#quote void)
           (table-set! _tbl11079_ '%#quote-syntax void)
           (table-set! _tbl11079_ '%#call void)
           (table-set! _tbl11079_ '%#if void)
           (table-set! _tbl11079_ '%#ref void)
           (table-set! _tbl11079_ '%#set! void)
           (table-set! _tbl11079_ '%#struct-instance? void)
           (table-set! _tbl11079_ '%#struct-direct-instance? void)
           (table-set! _tbl11079_ '%#struct-ref void)
           (table-set! _tbl11079_ '%#struct-set! void)
           (table-set! _tbl11079_ '%#struct-direct-ref void)
           (table-set! _tbl11079_ '%#struct-direct-set! void)
           (table-set! _tbl11079_ '%#struct-unchecked-ref void)
           (table-set! _tbl11079_ '%#struct-unchecked-set! void)
           _tbl11079_))))
    (define gxc#&void-special-form
      (make-promise
       (lambda ()
         (let ((_tbl11075_ (make-table 'test: eq?)))
           (table-set! _tbl11075_ '%#begin void)
           (table-set! _tbl11075_ '%#begin-syntax void)
           (table-set! _tbl11075_ '%#begin-foreign void)
           (table-set! _tbl11075_ '%#module void)
           (table-set! _tbl11075_ '%#import void)
           (table-set! _tbl11075_ '%#export void)
           (table-set! _tbl11075_ '%#provide void)
           (table-set! _tbl11075_ '%#extern void)
           (table-set! _tbl11075_ '%#define-values void)
           (table-set! _tbl11075_ '%#define-syntax void)
           (table-set! _tbl11075_ '%#define-alias void)
           (table-set! _tbl11075_ '%#declare void)
           _tbl11075_))))
    (define gxc#&void
      (make-promise
       (lambda ()
         (let ((_tbl11071_ (make-table 'test: eq?)))
           (hash-copy! _tbl11071_ (force gxc#&void-special-form))
           (hash-copy! _tbl11071_ (force gxc#&void-expression))
           _tbl11071_))))
    (define gxc#&false-expression
      (make-promise
       (lambda ()
         (let ((_tbl11067_ (make-table 'test: eq?)))
           (table-set! _tbl11067_ '%#begin-annotation false)
           (table-set! _tbl11067_ '%#lambda false)
           (table-set! _tbl11067_ '%#case-lambda false)
           (table-set! _tbl11067_ '%#let-values false)
           (table-set! _tbl11067_ '%#letrec-values false)
           (table-set! _tbl11067_ '%#letrec*-values false)
           (table-set! _tbl11067_ '%#quote false)
           (table-set! _tbl11067_ '%#quote-syntax false)
           (table-set! _tbl11067_ '%#call false)
           (table-set! _tbl11067_ '%#if false)
           (table-set! _tbl11067_ '%#ref false)
           (table-set! _tbl11067_ '%#set! false)
           (table-set! _tbl11067_ '%#struct-instance? false)
           (table-set! _tbl11067_ '%#struct-direct-instance? false)
           (table-set! _tbl11067_ '%#struct-ref false)
           (table-set! _tbl11067_ '%#struct-set! false)
           (table-set! _tbl11067_ '%#struct-direct-ref false)
           (table-set! _tbl11067_ '%#struct-direct-set! false)
           (table-set! _tbl11067_ '%#struct-unchecked-ref false)
           (table-set! _tbl11067_ '%#struct-unchecked-set! false)
           _tbl11067_))))
    (define gxc#&false-special-form
      (make-promise
       (lambda ()
         (let ((_tbl11063_ (make-table 'test: eq?)))
           (table-set! _tbl11063_ '%#begin false)
           (table-set! _tbl11063_ '%#begin-syntax false)
           (table-set! _tbl11063_ '%#begin-foreign false)
           (table-set! _tbl11063_ '%#module false)
           (table-set! _tbl11063_ '%#import false)
           (table-set! _tbl11063_ '%#export false)
           (table-set! _tbl11063_ '%#provide false)
           (table-set! _tbl11063_ '%#extern false)
           (table-set! _tbl11063_ '%#define-values false)
           (table-set! _tbl11063_ '%#define-syntax false)
           (table-set! _tbl11063_ '%#define-alias false)
           (table-set! _tbl11063_ '%#declare false)
           _tbl11063_))))
    (define gxc#&false
      (make-promise
       (lambda ()
         (let ((_tbl11059_ (make-table 'test: eq?)))
           (hash-copy! _tbl11059_ (force gxc#&false-special-form))
           (hash-copy! _tbl11059_ (force gxc#&false-expression))
           _tbl11059_))))
    (define gxc#&collect-bindings
      (make-promise
       (lambda ()
         (let ((_tbl11055_ (make-table 'test: eq?)))
           (hash-copy! _tbl11055_ (force gxc#&void-expression))
           (hash-copy! _tbl11055_ (force gxc#&void-special-form))
           (table-set! _tbl11055_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11055_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11055_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11055_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11055_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11055_))))
    (define gxc#apply-collect-bindings
      (lambda (_stx11048_ . _args11050_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx11048_ _args11050_))
         gxc#current-compile-methods
         (force gxc#&collect-bindings))))
    (define gxc#&lift-modules
      (make-promise
       (lambda ()
         (let ((_tbl11045_ (make-table 'test: eq?)))
           (hash-copy! _tbl11045_ (force gxc#&void))
           (table-set! _tbl11045_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11045_ '%#module gxc#lift-modules-module%)
           _tbl11045_))))
    (define gxc#apply-lift-modules
      (lambda (_stx11038_ . _args11040_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx11038_ _args11040_))
         gxc#current-compile-methods
         (force gxc#&lift-modules))))
    (define gxc#&find-runtime-code
      (make-promise
       (lambda ()
         (let ((_tbl11035_ (make-table 'test: eq?)))
           (table-set! _tbl11035_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11035_ '%#begin-syntax false)
           (table-set! _tbl11035_ '%#begin-foreign true)
           (table-set! _tbl11035_ '%#begin-annotation true)
           (table-set! _tbl11035_ '%#module false)
           (table-set! _tbl11035_ '%#import false)
           (table-set! _tbl11035_ '%#export false)
           (table-set! _tbl11035_ '%#provide false)
           (table-set! _tbl11035_ '%#extern false)
           (table-set! _tbl11035_ '%#define-values true)
           (table-set! _tbl11035_ '%#define-syntax false)
           (table-set! _tbl11035_ '%#define-alias false)
           (table-set! _tbl11035_ '%#declare false)
           (table-set! _tbl11035_ '%#lambda true)
           (table-set! _tbl11035_ '%#case-lambda true)
           (table-set! _tbl11035_ '%#let-values true)
           (table-set! _tbl11035_ '%#letrec-values true)
           (table-set! _tbl11035_ '%#letrec*-values true)
           (table-set! _tbl11035_ '%#quote true)
           (table-set! _tbl11035_ '%#call true)
           (table-set! _tbl11035_ '%#if true)
           (table-set! _tbl11035_ '%#ref true)
           (table-set! _tbl11035_ '%#set! true)
           (table-set! _tbl11035_ '%#struct-instance? true)
           (table-set! _tbl11035_ '%#struct-direct-instance? true)
           (table-set! _tbl11035_ '%#struct-ref true)
           (table-set! _tbl11035_ '%#struct-set! true)
           (table-set! _tbl11035_ '%#struct-direct-ref true)
           (table-set! _tbl11035_ '%#struct-direct-set! true)
           (table-set! _tbl11035_ '%#struct-unchecked-ref true)
           (table-set! _tbl11035_ '%#struct-unchecked-set! true)
           _tbl11035_))))
    (define gxc#apply-find-runtime-code
      (lambda (_stx11028_ . _args11030_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx11028_ _args11030_))
         gxc#current-compile-methods
         (force gxc#&find-runtime-code))))
    (define gxc#&find-lambda-expression
      (make-promise
       (lambda ()
         (let ((_tbl11025_ (make-table 'test: eq?)))
           (hash-copy! _tbl11025_ (force gxc#&false))
           (table-set! _tbl11025_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11025_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11025_ '%#lambda values)
           (table-set! _tbl11025_ '%#case-lambda values)
           (table-set!
            _tbl11025_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11025_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11025_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11025_))))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx11018_ . _args11020_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx11018_ _args11020_))
         gxc#current-compile-methods
         (force gxc#&find-lambda-expression))))
    (define gxc#&count-values
      (make-promise
       (lambda ()
         (let ((_tbl11015_ (make-table 'test: eq?)))
           (hash-copy! _tbl11015_ (force gxc#&false-expression))
           (table-set! _tbl11015_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl11015_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl11015_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl11015_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl11015_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl11015_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl11015_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl11015_ '%#quote gxc#count-values-single%)
           (table-set! _tbl11015_ '%#call gxc#count-values-call%)
           (table-set! _tbl11015_ '%#if gxc#count-values-if%)
           _tbl11015_))))
    (define gxc#apply-count-values
      (lambda (_stx11008_ . _args11010_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx11008_ _args11010_))
         gxc#current-compile-methods
         (force gxc#&count-values))))
    (define gxc#&generate-runtime-empty
      (make-promise
       (lambda ()
         (let ((_tbl11005_ (make-table 'test: eq?)))
           (table-set! _tbl11005_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11005_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11005_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11005_))))
    (define gxc#&generate-loader
      (make-promise
       (lambda ()
         (let ((_tbl11001_ (make-table 'test: eq?)))
           (hash-copy! _tbl11001_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11001_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11001_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11001_))))
    (define gxc#apply-generate-loader
      (lambda (_stx10994_ . _args10996_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx10994_ _args10996_))
         gxc#current-compile-methods
         (force gxc#&generate-loader))))
    (define gxc#&generate-runtime
      (make-promise
       (lambda ()
         (let ((_tbl10991_ (make-table 'test: eq?)))
           (hash-copy! _tbl10991_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10991_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10991_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10991_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl10991_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10991_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10991_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10991_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10991_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10991_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10991_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10991_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl10991_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl10991_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10991_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10991_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10991_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10991_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10991_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10991_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10991_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10991_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10991_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl10991_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl10991_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl10991_))))
    (define gxc#apply-generate-runtime
      (lambda (_stx10984_ . _args10986_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx10984_ _args10986_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime))))
    (define gxc#&generate-runtime-phi
      (make-promise
       (lambda ()
         (let ((_tbl10981_ (make-table 'test: eq?)))
           (hash-copy! _tbl10981_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10981_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10981_))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx10974_ . _args10976_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx10974_ _args10976_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime-phi))))
    (define gxc#&collect-expression-refs
      (make-promise
       (lambda ()
         (let ((_tbl10971_ (make-table 'test: eq?)))
           (table-set! _tbl10971_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl10971_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl10971_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10971_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10971_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10971_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10971_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10971_ '%#quote void)
           (table-set! _tbl10971_ '%#quote-syntax void)
           (table-set! _tbl10971_ '%#call gxc#collect-operands)
           (table-set! _tbl10971_ '%#if gxc#collect-operands)
           (table-set! _tbl10971_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10971_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10971_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10971_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10971_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10971_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10971_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10971_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl10971_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl10971_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl10971_))))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx10964_ . _args10966_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx10964_ _args10966_))
         gxc#current-compile-methods
         (force gxc#&collect-expression-refs))))
    (define gxc#&generate-meta
      (make-promise
       (lambda ()
         (let ((_tbl10961_ (make-table 'test: eq?)))
           (hash-copy! _tbl10961_ (force gxc#&void-expression))
           (table-set! _tbl10961_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10961_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10961_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10961_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10961_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10961_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10961_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10961_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10961_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10961_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10961_ '%#begin-foreign void)
           (table-set! _tbl10961_ '%#declare void)
           _tbl10961_))))
    (define gxc#apply-generate-meta
      (lambda (_stx10954_ . _args10956_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx10954_ _args10956_))
         gxc#current-compile-methods
         (force gxc#&generate-meta))))
    (define gxc#&generate-meta-phi
      (make-promise
       (lambda ()
         (let ((_tbl10951_ (make-table 'test: eq?)))
           (table-set! _tbl10951_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10951_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10951_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10951_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10951_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl10951_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10951_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10951_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10951_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10951_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10951_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10951_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10951_ '%#declare void)
           _tbl10951_))))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx10944_ . _args10946_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx10944_ _args10946_))
         gxc#current-compile-methods
         (force gxc#&generate-meta-phi))))
    (define gxc#collect-begin%
      (lambda (_stx10901_ . _args10902_)
        (let* ((_g1090410914_
                (lambda (_g1090510911_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1090510911_)))
               (_g1090310941_
                (lambda (_g1090510917_)
                  (if (gx#stx-pair? _g1090510917_)
                      (let ((_e1090710919_ (gx#stx-e _g1090510917_)))
                        (let ((_hd1090810922_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1090710919_)))
                              (_tl1090910924_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1090710919_))))
                          ((lambda (_L10927_)
                             (for-each
                              (lambda (_g1093610938_)
                                (apply gxc#compile-e
                                       _g1093610938_
                                       _args10902_))
                              (gx#stx-e _L10927_)))
                           _tl1090910924_)))
                      (_g1090410914_ _g1090510917_)))))
          (_g1090310941_ _stx10901_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx10897_ . _args10898_)
        (call-with-parameters
         (lambda () (apply gxc#collect-begin% _stx10897_ _args10898_))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gxc#collect-module%
      (lambda (_stx10839_ . _args10840_)
        (let* ((_g1084210856_
                (lambda (_g1084310853_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1084310853_)))
               (_g1084110894_
                (lambda (_g1084310859_)
                  (if (gx#stx-pair? _g1084310859_)
                      (let ((_e1084610861_ (gx#stx-e _g1084310859_)))
                        (let ((_hd1084710864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1084610861_)))
                              (_tl1084810866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1084610861_))))
                          (if (gx#stx-pair? _tl1084810866_)
                              (let ((_e1084910869_ (gx#stx-e _tl1084810866_)))
                                (let ((_hd1085010872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1084910869_)))
                                      (_tl1085110874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1084910869_))))
                                  ((lambda (_L10877_ _L10878_)
                                     (let ((_ctx10891_
                                            (gx#syntax-local-e__0 _L10878_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (apply gxc#compile-e
                                                 (##structure-ref
                                                  _ctx10891_
                                                  '11
                                                  gx#module-context::t
                                                  '#f)
                                                 _args10840_))
                                        gx#current-expander-context
                                        _ctx10891_)))
                                   _tl1085110874_
                                   _hd1085010872_)))
                              (_g1084210856_ _g1084310859_))))
                      (_g1084210856_ _g1084310859_)))))
          (_g1084110894_ _stx10839_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx10771_ . _args10772_)
        (let* ((_g1077410791_
                (lambda (_g1077510788_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1077510788_)))
               (_g1077310836_
                (lambda (_g1077510794_)
                  (if (gx#stx-pair? _g1077510794_)
                      (let ((_e1077810796_ (gx#stx-e _g1077510794_)))
                        (let ((_hd1077910799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1077810796_)))
                              (_tl1078010801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1077810796_))))
                          (if (gx#stx-pair? _tl1078010801_)
                              (let ((_e1078110804_ (gx#stx-e _tl1078010801_)))
                                (let ((_hd1078210807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1078110804_)))
                                      (_tl1078310809_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1078110804_))))
                                  (if (gx#stx-pair? _tl1078310809_)
                                      (let ((_e1078410812_
                                             (gx#stx-e _tl1078310809_)))
                                        (let ((_hd1078510815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1078410812_)))
                                              (_tl1078610817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1078410812_))))
                                          (if (gx#stx-null? _tl1078610817_)
                                              ((lambda (_L10820_ _L10821_)
                                                 (apply gxc#compile-e
                                                        _L10820_
                                                        _args10772_))
                                               _hd1078510815_
                                               _hd1078210807_)
                                              (_g1077410791_ _g1077510794_))))
                                      (_g1077410791_ _g1077510794_))))
                              (_g1077410791_ _g1077510794_))))
                      (_g1077410791_ _g1077510794_)))))
          (_g1077310836_ _stx10771_))))
    (define gxc#collect-define-values%
      (lambda (_stx10703_ . _args10704_)
        (let* ((_g1070610723_
                (lambda (_g1070710720_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1070710720_)))
               (_g1070510768_
                (lambda (_g1070710726_)
                  (if (gx#stx-pair? _g1070710726_)
                      (let ((_e1071010728_ (gx#stx-e _g1070710726_)))
                        (let ((_hd1071110731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1071010728_)))
                              (_tl1071210733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1071010728_))))
                          (if (gx#stx-pair? _tl1071210733_)
                              (let ((_e1071310736_ (gx#stx-e _tl1071210733_)))
                                (let ((_hd1071410739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1071310736_)))
                                      (_tl1071510741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1071310736_))))
                                  (if (gx#stx-pair? _tl1071510741_)
                                      (let ((_e1071610744_
                                             (gx#stx-e _tl1071510741_)))
                                        (let ((_hd1071710747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1071610744_)))
                                              (_tl1071810749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1071610744_))))
                                          (if (gx#stx-null? _tl1071810749_)
                                              ((lambda (_L10752_ _L10753_)
                                                 (apply gxc#compile-e
                                                        _L10752_
                                                        _args10704_))
                                               _hd1071710747_
                                               _hd1071410739_)
                                              (_g1070610723_ _g1070710726_))))
                                      (_g1070610723_ _g1070710726_))))
                              (_g1070610723_ _g1070710726_))))
                      (_g1070610723_ _g1070710726_)))))
          (_g1070510768_ _stx10703_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx10634_ . _args10635_)
        (let* ((_g1063710654_
                (lambda (_g1063810651_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1063810651_)))
               (_g1063610700_
                (lambda (_g1063810657_)
                  (if (gx#stx-pair? _g1063810657_)
                      (let ((_e1064110659_ (gx#stx-e _g1063810657_)))
                        (let ((_hd1064210662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1064110659_)))
                              (_tl1064310664_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1064110659_))))
                          (if (gx#stx-pair? _tl1064310664_)
                              (let ((_e1064410667_ (gx#stx-e _tl1064310664_)))
                                (let ((_hd1064510670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1064410667_)))
                                      (_tl1064610672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1064410667_))))
                                  (if (gx#stx-pair? _tl1064610672_)
                                      (let ((_e1064710675_
                                             (gx#stx-e _tl1064610672_)))
                                        (let ((_hd1064810678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1064710675_)))
                                              (_tl1064910680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1064710675_))))
                                          (if (gx#stx-null? _tl1064910680_)
                                              ((lambda (_L10683_ _L10684_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (apply gxc#compile-e
                                                           _L10683_
                                                           _args10635_))
                                                  gx#current-expander-phi
                                                  (fx+ (gx#current-expander-phi)
                                                       '1)))
                                               _hd1064810678_
                                               _hd1064510670_)
                                              (_g1063710654_ _g1063810657_))))
                                      (_g1063710654_ _g1063810657_))))
                              (_g1063710654_ _g1063810657_))))
                      (_g1063710654_ _g1063810657_)))))
          (_g1063610700_ _stx10634_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx10566_ . _args10567_)
        (let* ((_g1056910586_
                (lambda (_g1057010583_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1057010583_)))
               (_g1056810631_
                (lambda (_g1057010589_)
                  (if (gx#stx-pair? _g1057010589_)
                      (let ((_e1057310591_ (gx#stx-e _g1057010589_)))
                        (let ((_hd1057410594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1057310591_)))
                              (_tl1057510596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1057310591_))))
                          (if (gx#stx-pair? _tl1057510596_)
                              (let ((_e1057610599_ (gx#stx-e _tl1057510596_)))
                                (let ((_hd1057710602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1057610599_)))
                                      (_tl1057810604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1057610599_))))
                                  (if (gx#stx-pair? _tl1057810604_)
                                      (let ((_e1057910607_
                                             (gx#stx-e _tl1057810604_)))
                                        (let ((_hd1058010610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1057910607_)))
                                              (_tl1058110612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1057910607_))))
                                          (if (gx#stx-null? _tl1058110612_)
                                              ((lambda (_L10615_ _L10616_)
                                                 (apply gxc#compile-e
                                                        _L10615_
                                                        _args10567_))
                                               _hd1058010610_
                                               _hd1057710602_)
                                              (_g1056910586_ _g1057010589_))))
                                      (_g1056910586_ _g1057010589_))))
                              (_g1056910586_ _g1057010589_))))
                      (_g1056910586_ _g1057010589_)))))
          (_g1056810631_ _stx10566_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx10448_ . _args10449_)
        (let* ((_g1045110479_
                (lambda (_g1045210476_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1045210476_)))
               (_g1045010563_
                (lambda (_g1045210482_)
                  (if (gx#stx-pair? _g1045210482_)
                      (let ((_e1045510484_ (gx#stx-e _g1045210482_)))
                        (let ((_hd1045610487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1045510484_)))
                              (_tl1045710489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1045510484_))))
                          (if (gx#stx-pair/null? _tl1045710489_)
                              (let ((_g16630_
                                     (gx#syntax-split-splice
                                      _tl1045710489_
                                      '0)))
                                (begin
                                  (let ((_g16631_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16630_)
                                               (##vector-length _g16630_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16631_ 2)))
                                        (error "Context expects 2 values"
                                               _g16631_)))
                                  (let ((_target1045810492_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16630_ 0)))
                                        (_tl1046010494_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16630_ 1))))
                                    (if (gx#stx-null? _tl1046010494_)
                                        (letrec ((_loop1046110497_
                                                  (lambda (_hd1045910500_
                                                           _body1046510502_
                                                           _hd1046610504_)
                                                    (if (gx#stx-pair?
                                                         _hd1045910500_)
                                                        (let ((_e1046210507_
                                                               (gx#stx-e
                                                                _hd1045910500_)))
                                                          (let ((_lp-hd1046310510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1046210507_)))
                        (_lp-tl1046410512_
                         (let () (declare (not safe)) (##cdr _e1046210507_))))
                    (if (gx#stx-pair? _lp-hd1046310510_)
                        (let ((_e1046910515_ (gx#stx-e _lp-hd1046310510_)))
                          (let ((_hd1047010518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1046910515_)))
                                (_tl1047110520_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1046910515_))))
                            (if (gx#stx-pair? _tl1047110520_)
                                (let ((_e1047210523_
                                       (gx#stx-e _tl1047110520_)))
                                  (let ((_hd1047310526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1047210523_)))
                                        (_tl1047410528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1047210523_))))
                                    (if (gx#stx-null? _tl1047410528_)
                                        (_loop1046110497_
                                         _lp-tl1046410512_
                                         (cons _hd1047310526_ _body1046510502_)
                                         (cons _hd1047010518_ _hd1046610504_))
                                        (_g1045110479_ _g1045210482_))))
                                (_g1045110479_ _g1045210482_))))
                        (_g1045110479_ _g1045210482_))))
                (let ((_body1046710531_ (reverse _body1046510502_))
                      (_hd1046810533_ (reverse _hd1046610504_)))
                  ((lambda (_L10536_ _L10537_)
                     (for-each
                      (lambda (_g1055110553_)
                        (apply gxc#compile-e _g1055110553_ _args10449_))
                      (foldr1 (lambda (_g1055510558_ _g1055610560_)
                                (cons _g1055510558_ _g1055610560_))
                              '()
                              _L10536_)))
                   _body1046710531_
                   _hd1046810533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1046110497_
                                           _target1045810492_
                                           '()
                                           '()))
                                        (_g1045110479_ _g1045210482_)))))
                              (_g1045110479_ _g1045210482_))))
                      (_g1045110479_ _g1045210482_)))))
          (_g1045010563_ _stx10448_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx10301_ . _args10302_)
        (let* ((_g1030410339_
                (lambda (_g1030510336_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1030510336_)))
               (_g1030310445_
                (lambda (_g1030510342_)
                  (if (gx#stx-pair? _g1030510342_)
                      (let ((_e1030910344_ (gx#stx-e _g1030510342_)))
                        (let ((_hd1031010347_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1030910344_)))
                              (_tl1031110349_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1030910344_))))
                          (if (gx#stx-pair? _tl1031110349_)
                              (let ((_e1031210352_ (gx#stx-e _tl1031110349_)))
                                (let ((_hd1031310355_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1031210352_)))
                                      (_tl1031410357_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1031210352_))))
                                  (if (gx#stx-pair/null? _hd1031310355_)
                                      (let ((_g16632_
                                             (gx#syntax-split-splice
                                              _hd1031310355_
                                              '0)))
                                        (begin
                                          (let ((_g16633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g16632_)
                                                       (##vector-length
                                                        _g16632_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g16633_ 2)))
                                                (error "Context expects 2 values"
                                                       _g16633_)))
                                          (let ((_target1031510360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g16632_ 0)))
                                                (_tl1031710362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g16632_ 1))))
                                            (if (gx#stx-null? _tl1031710362_)
                                                (letrec ((_loop1031810365_
                                                          (lambda (_hd1031610368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1032210370_
                           _hd1032310372_)
                    (if (gx#stx-pair? _hd1031610368_)
                        (let ((_e1031910375_ (gx#stx-e _hd1031610368_)))
                          (let ((_lp-hd1032010378_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1031910375_)))
                                (_lp-tl1032110380_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1031910375_))))
                            (if (gx#stx-pair? _lp-hd1032010378_)
                                (let ((_e1032610383_
                                       (gx#stx-e _lp-hd1032010378_)))
                                  (let ((_hd1032710386_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1032610383_)))
                                        (_tl1032810388_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1032610383_))))
                                    (if (gx#stx-pair? _tl1032810388_)
                                        (let ((_e1032910391_
                                               (gx#stx-e _tl1032810388_)))
                                          (let ((_hd1033010394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1032910391_)))
                                                (_tl1033110396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1032910391_))))
                                            (if (gx#stx-null? _tl1033110396_)
                                                (_loop1031810365_
                                                 _lp-tl1032110380_
                                                 (cons _hd1033010394_
                                                       _expr1032210370_)
                                                 (cons _hd1032710386_
                                                       _hd1032310372_))
                                                (_g1030410339_
                                                 _g1030510342_))))
                                        (_g1030410339_ _g1030510342_))))
                                (_g1030410339_ _g1030510342_))))
                        (let ((_expr1032410399_ (reverse _expr1032210370_))
                              (_hd1032510401_ (reverse _hd1032310372_)))
                          (if (gx#stx-pair? _tl1031410357_)
                              (let ((_e1033210404_ (gx#stx-e _tl1031410357_)))
                                (let ((_hd1033310407_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1033210404_)))
                                      (_tl1033410409_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1033210404_))))
                                  (if (gx#stx-null? _tl1033410409_)
                                      ((lambda (_L10412_ _L10413_ _L10414_)
                                         (for-each
                                          (lambda (_g1043310435_)
                                            (apply gxc#compile-e
                                                   _g1043310435_
                                                   _args10302_))
                                          (foldr1 (lambda (_g1043710440_
                                                           _g1043810442_)
                                                    (cons _g1043710440_
                                                          _g1043810442_))
                                                  (cons _L10412_ '())
                                                  _L10413_)))
                                       _hd1033310407_
                                       _expr1032410399_
                                       _hd1032510401_)
                                      (_g1030410339_ _g1030510342_))))
                              (_g1030410339_ _g1030510342_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1031810365_
                                                   _target1031510360_
                                                   '()
                                                   '()))
                                                (_g1030410339_
                                                 _g1030510342_)))))
                                      (_g1030410339_ _g1030510342_))))
                              (_g1030410339_ _g1030510342_))))
                      (_g1030410339_ _g1030510342_)))))
          (_g1030310445_ _stx10301_))))
    (define gxc#collect-body-setq%
      (lambda (_stx10233_ . _args10234_)
        (let* ((_g1023610253_
                (lambda (_g1023710250_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1023710250_)))
               (_g1023510298_
                (lambda (_g1023710256_)
                  (if (gx#stx-pair? _g1023710256_)
                      (let ((_e1024010258_ (gx#stx-e _g1023710256_)))
                        (let ((_hd1024110261_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1024010258_)))
                              (_tl1024210263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1024010258_))))
                          (if (gx#stx-pair? _tl1024210263_)
                              (let ((_e1024310266_ (gx#stx-e _tl1024210263_)))
                                (let ((_hd1024410269_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1024310266_)))
                                      (_tl1024510271_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1024310266_))))
                                  (if (gx#stx-pair? _tl1024510271_)
                                      (let ((_e1024610274_
                                             (gx#stx-e _tl1024510271_)))
                                        (let ((_hd1024710277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1024610274_)))
                                              (_tl1024810279_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1024610274_))))
                                          (if (gx#stx-null? _tl1024810279_)
                                              ((lambda (_L10282_ _L10283_)
                                                 (apply gxc#compile-e
                                                        _L10282_
                                                        _args10234_))
                                               _hd1024710277_
                                               _hd1024410269_)
                                              (_g1023610253_ _g1023710256_))))
                                      (_g1023610253_ _g1023710256_))))
                              (_g1023610253_ _g1023710256_))))
                      (_g1023610253_ _g1023710256_)))))
          (_g1023510298_ _stx10233_))))
    (define gxc#collect-operands
      (lambda (_stx10146_ . _args10147_)
        (let* ((_g1014910168_
                (lambda (_g1015010165_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1015010165_)))
               (_g1014810230_
                (lambda (_g1015010171_)
                  (if (gx#stx-pair? _g1015010171_)
                      (let ((_e1015210173_ (gx#stx-e _g1015010171_)))
                        (let ((_hd1015310176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1015210173_)))
                              (_tl1015410178_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1015210173_))))
                          (if (gx#stx-pair/null? _tl1015410178_)
                              (let ((_g16634_
                                     (gx#syntax-split-splice
                                      _tl1015410178_
                                      '0)))
                                (begin
                                  (let ((_g16635_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16634_)
                                               (##vector-length _g16634_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16635_ 2)))
                                        (error "Context expects 2 values"
                                               _g16635_)))
                                  (let ((_target1015510181_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16634_ 0)))
                                        (_tl1015710183_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16634_ 1))))
                                    (if (gx#stx-null? _tl1015710183_)
                                        (letrec ((_loop1015810186_
                                                  (lambda (_hd1015610189_
                                                           _rands1016210191_)
                                                    (if (gx#stx-pair?
                                                         _hd1015610189_)
                                                        (let ((_e1015910194_
                                                               (gx#stx-e
                                                                _hd1015610189_)))
                                                          (let ((_lp-hd1016010197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1015910194_)))
                        (_lp-tl1016110199_
                         (let () (declare (not safe)) (##cdr _e1015910194_))))
                    (_loop1015810186_
                     _lp-tl1016110199_
                     (cons _lp-hd1016010197_ _rands1016210191_))))
                (let ((_rands1016310202_ (reverse _rands1016210191_)))
                  ((lambda (_L10205_)
                     (for-each
                      (lambda (_g1021810220_)
                        (apply gxc#compile-e _g1021810220_ _args10147_))
                      (foldr1 (lambda (_g1022210225_ _g1022310227_)
                                (cons _g1022210225_ _g1022310227_))
                              '()
                              _L10205_)))
                   _rands1016310202_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1015810186_
                                           _target1015510181_
                                           '()))
                                        (_g1014910168_ _g1015010171_)))))
                              (_g1014910168_ _g1015010171_))))
                      (_g1014910168_ _g1015010171_)))))
          (_g1014810230_ _stx10146_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx10077_)
        (let* ((_g1007910096_
                (lambda (_g1008010093_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1008010093_)))
               (_g1007810143_
                (lambda (_g1008010099_)
                  (if (gx#stx-pair? _g1008010099_)
                      (let ((_e1008310101_ (gx#stx-e _g1008010099_)))
                        (let ((_hd1008410104_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1008310101_)))
                              (_tl1008510106_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1008310101_))))
                          (if (gx#stx-pair? _tl1008510106_)
                              (let ((_e1008610109_ (gx#stx-e _tl1008510106_)))
                                (let ((_hd1008710112_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1008610109_)))
                                      (_tl1008810114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1008610109_))))
                                  (if (gx#stx-pair? _tl1008810114_)
                                      (let ((_e1008910117_
                                             (gx#stx-e _tl1008810114_)))
                                        (let ((_hd1009010120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1008910117_)))
                                              (_tl1009110122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1008910117_))))
                                          (if (gx#stx-null? _tl1009110122_)
                                              ((lambda (_L10125_ _L10126_)
                                                 (gx#stx-for-each1
                                                  (lambda (_bind10141_)
                                                    (if (gx#identifier?
                                                         _bind10141_)
                                                        (gxc#add-module-binding!
                                                         _bind10141_
                                                         '#f)
                                                        '#!void))
                                                  _L10126_))
                                               _hd1009010120_
                                               _hd1008710112_)
                                              (_g1007910096_ _g1008010099_))))
                                      (_g1007910096_ _g1008010099_))))
                              (_g1007910096_ _g1008010099_))))
                      (_g1007910096_ _g1008010099_)))))
          (_g1007810143_ _stx10077_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx10010_)
        (let* ((_g1001210029_
                (lambda (_g1001310026_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1001310026_)))
               (_g1001110074_
                (lambda (_g1001310032_)
                  (if (gx#stx-pair? _g1001310032_)
                      (let ((_e1001610034_ (gx#stx-e _g1001310032_)))
                        (let ((_hd1001710037_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1001610034_)))
                              (_tl1001810039_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1001610034_))))
                          (if (gx#stx-pair? _tl1001810039_)
                              (let ((_e1001910042_ (gx#stx-e _tl1001810039_)))
                                (let ((_hd1002010045_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1001910042_)))
                                      (_tl1002110047_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1001910042_))))
                                  (if (gx#stx-pair? _tl1002110047_)
                                      (let ((_e1002210050_
                                             (gx#stx-e _tl1002110047_)))
                                        (let ((_hd1002310053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1002210050_)))
                                              (_tl1002410055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1002210050_))))
                                          (if (gx#stx-null? _tl1002410055_)
                                              ((lambda (_L10058_ _L10059_)
                                                 (gxc#add-module-binding!
                                                  _L10059_
                                                  '#t))
                                               _hd1002310053_
                                               _hd1002010045_)
                                              (_g1001210029_ _g1001310032_))))
                                      (_g1001210029_ _g1001310032_))))
                              (_g1001210029_ _g1001310032_))))
                      (_g1001210029_ _g1001310032_)))))
          (_g1001110074_ _stx10010_))))
    (define gxc#lift-modules-module%
      (lambda (_stx9952_ _modules9953_)
        (let* ((_g99559969_
                (lambda (_g99569966_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g99569966_)))
               (_g995410007_
                (lambda (_g99569972_)
                  (if (gx#stx-pair? _g99569972_)
                      (let ((_e99599974_ (gx#stx-e _g99569972_)))
                        (let ((_hd99609977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99599974_)))
                              (_tl99619979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99599974_))))
                          (if (gx#stx-pair? _tl99619979_)
                              (let ((_e99629982_ (gx#stx-e _tl99619979_)))
                                (let ((_hd99639985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99629982_)))
                                      (_tl99649987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99629982_))))
                                  ((lambda (_L9990_ _L9991_)
                                     (let ((_ctx10004_
                                            (gx#syntax-local-e__0 _L9991_)))
                                       (set-box!
                                        _modules9953_
                                        (cons _ctx10004_
                                              (unbox _modules9953_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx10004_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules9953_))
                                        gx#current-expander-context
                                        _ctx10004_)))
                                   _tl99649987_
                                   _hd99639985_)))
                              (_g99559969_ _g99569972_))))
                      (_g99559969_ _g99569972_)))))
          (_g995410007_ _stx9952_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls99089910_ (gxc#current-compile-decls)))
          (if _decls99089910_
              (let ((_decls9913_ _decls99089910_))
                (let _lp9915_ ((_rest9917_ _decls9913_))
                  (let* ((_rest99189926_ _rest9917_)
                         (_else99209934_ (lambda () '#f))
                         (_K99229940_
                          (lambda (_decls9937_ _decl9938_)
                            (if (equal? _decl9938_ '(not safe))
                                '#t
                                (if (equal? _decl9938_ '(safe))
                                    '#f
                                    (_lp9915_ _decls9937_))))))
                    (if (let () (declare (not safe)) (##pair? _rest99189926_))
                        (let ((_hd99239943_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest99189926_)))
                              (_tl99249945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest99189926_))))
                          (let* ((_decl9948_ _hd99239943_)
                                 (_decls9950_ _tl99249945_))
                            (_K99229940_ _decls9950_ _decl9948_)))
                        (_else99209934_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id9902_ _syntax?9903_)
        (let ((_eid9905_
               (##structure-ref
                (gx#resolve-identifier__0 _id9902_)
                '1
                gx#binding::t
                '#f))
              (_ht9906_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid9905_)
              '#!void
              (table-set!
               _ht9906_
               _eid9905_
               (gx#make-binding-id__1
                (gxc#generate-runtime-gensym-reference__0 _eid9905_)
                _syntax?9903_))))))
    (define gxc#runtime-identifier=?
      (lambda (_id19895_ _id29896_)
        (letrec ((_symbol-e9898_
                  (lambda (_id9900_)
                    (if (symbol? _id9900_)
                        _id9900_
                        (gxc#generate-runtime-binding-id _id9900_)))))
          (eq? (_symbol-e9898_ _id19895_) (_symbol-e9898_ _id29896_)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id9873_)
        (let ((_$e9875_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id9873_
                      'gx#syntax-quote::t))
                   (gx#resolve-identifier__0 _id9873_)
                   '#f)))
          (if _$e9875_
              ((lambda (_bind9878_)
                 (let ((_eid9880_
                        (##structure-ref _bind9878_ '1 gx#binding::t '#f))
                       (_ht9881_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid9880_)
                       _eid9880_
                       (let ((_$e9883_ (table-ref _ht9881_ _eid9880_ '#f)))
                         (if _$e9883_
                             (values _$e9883_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind9878_
                                    'gx#local-binding::t))
                                 (let ((_gid9886_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _eid9880_)))
                                   (table-set! _ht9881_ _eid9880_ _gid9886_)
                                   _gid9886_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind9878_
                                        'gx#module-binding::t))
                                     (let ((_gid9893_
                                            (let ((_$e9888_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind9878_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e9888_
                                                  ((lambda (_ns9891_)
                                                     (make-symbol
                                                      _ns9891_
                                                      '"#"
                                                      _eid9880_))
                                                   _$e9888_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _eid9880_)))))
                                       (table-set!
                                        _ht9881_
                                        _eid9880_
                                        _gid9893_)
                                       _gid9893_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _id9873_
                                      _eid9880_
                                      _bind9878_))))))))
               _$e9875_)
              (if (interned-symbol? (gx#stx-e _id9873_))
                  (gx#stx-e _id9873_)
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _id9873_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id9871_)
        (if (gx#identifier? _id9871_)
            (gxc#generate-runtime-binding-id _id9871_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym9851_ _quote?9852_)
        (let* ((_ht9854_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e9856_ (table-ref _ht9854_ _sym9851_ '#f)))
          (if _$e9856_
              (values _$e9856_)
              (let ((_g9859_ (if _quote?9852_
                                 (make-symbol
                                  '"__"
                                  _sym9851_
                                  '"__"
                                  (gxc#current-compile-timestamp))
                                 (make-symbol '"_" _sym9851_ '"_"))))
                (table-set! _ht9854_ _sym9851_ _g9859_)
                _g9859_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym9864_)
        (let ((_quote?9866_ '#f))
          (gxc#generate-runtime-gensym-reference__% _sym9864_ _quote?9866_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g16637_
        (let ((_g16636_ (let () (declare (not safe)) (##length _g16637_))))
          (cond ((let () (declare (not safe)) (##fx= _g16636_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g16637_))
                ((let () (declare (not safe)) (##fx= _g16636_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g16637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g16637_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id9848_)
        (gxc#generate-runtime-identifier-key
         (gx#core-identifier-key _id9848_))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key9808_)
        (if (interned-symbol? _key9808_)
            _key9808_
            (if (uninterned-symbol? _key9808_)
                (gxc#generate-runtime-gensym-reference__0 _key9808_)
                (let* ((_key98099816_ _key9808_)
                       (_E98119820_
                        (lambda ()
                          (error '"No clause matching" _key98099816_)))
                       (_K98129836_
                        (lambda (_mark9823_ _eid9824_)
                          (let ((_$e9826_
                                 (##structure-ref
                                  _mark9823_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e9826_
                                ((lambda (_ht9829_)
                                   (let ((_$e9831_
                                          (table-ref _ht9829_ _eid9824_ '#f)))
                                     (if _$e9831_
                                         ((lambda (_id9834_)
                                            (if (interned-symbol? _id9834_)
                                                _id9834_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _id9834_)))
                                          _$e9831_)
                                         (gxc#generate-runtime-identifier-key
                                          _eid9824_))))
                                 _$e9826_)
                                (gxc#generate-runtime-identifier-key
                                 _eid9824_))))))
                  (if (let () (declare (not safe)) (##pair? _key98099816_))
                      (let ((_hd98139839_
                             (let ()
                               (declare (not safe))
                               (##car _key98099816_)))
                            (_tl98149841_
                             (let ()
                               (declare (not safe))
                               (##cdr _key98099816_))))
                        (let* ((_eid9844_ _hd98139839_)
                               (_mark9846_ _tl98149841_))
                          (_K98129836_ _mark9846_ _eid9844_)))
                      (_E98119820_)))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top9795_)
        (if _top9795_
            (let ((_ns9797_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9798_ (gx#current-expander-phi)))
              (if _ns9797_
                  (if (fxpositive? _phi9798_)
                      (make-symbol
                       _ns9797_
                       '"["
                       (number->string _phi9798_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol _ns9797_ '"#_" (gensym) '"_"))
                  (if (fxpositive? _phi9798_)
                      (make-symbol
                       '"["
                       (number->string _phi9798_)
                       '"]#_"
                       (gensym)
                       '"_")
                      (make-symbol '"_" (gensym) '"_"))))
            (make-symbol '"_" (gensym) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top9804_ '#f)) (gxc#generate-runtime-temporary__% _top9804_))))
    (define gxc#generate-runtime-temporary
      (lambda _g16639_
        (let ((_g16638_ (let () (declare (not safe)) (##length _g16639_))))
          (cond ((let () (declare (not safe)) (##fx= _g16638_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g16639_))
                ((let () (declare (not safe)) (##fx= _g16638_ 1))
                 (apply gxc#generate-runtime-temporary__% _g16639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g16639_))))))
    (define gxc#generate-runtime-empty (lambda (_stx9792_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx9644_)
        (letrec ((_simplify9646_
                  (lambda (_body9690_)
                    (let _lp9692_ ((_rest9694_ _body9690_) (_r9695_ '()))
                      (let* ((_rest96969704_ _rest9694_)
                             (_else96989712_ (lambda () (reverse _r9695_)))
                             (_K97009780_
                              (lambda (_rest9715_ _hd9716_)
                                (let* ((_hd97179733_ _hd9716_)
                                       (_else97219741_
                                        (lambda ()
                                          (_lp9692_
                                           _rest9715_
                                           (cons _hd9716_ _r9695_)))))
                                  (let ((_K97299770_
                                         (lambda (_exprs9768_)
                                           (_lp9692_
                                            (foldr1 cons
                                                    _rest9715_
                                                    _exprs9768_)
                                            _r9695_)))
                                        (_K97249754_
                                         (lambda ()
                                           (if (null? _rest9715_)
                                               (_lp9692_
                                                _rest9715_
                                                (cons _hd9716_ _r9695_))
                                               (_lp9692_ _rest9715_ _r9695_))))
                                        (_K97239746_
                                         (lambda ()
                                           (if (null? _rest9715_)
                                               (_lp9692_
                                                _rest9715_
                                                (cons _hd9716_ _r9695_))
                                               (_lp9692_
                                                _rest9715_
                                                _r9695_)))))
                                    (let ((_try-match97209749_
                                           (lambda ()
                                             (if (symbol? _hd97179733_)
                                                 (_K97239746_)
                                                 (_else97219741_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd97179733_))
                                          (let ((_tl97319775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd97179733_)))
                                                (_hd97309773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd97179733_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd97309773_ 'begin))
                                                (let ((_exprs9778_
                                                       _tl97319775_))
                                                  (_K97299770_ _exprs9778_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd97309773_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl97319775_))
                                                        (let ((_tl97289762_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl97319775_))))
                  (if (let () (declare (not safe)) (##null? _tl97289762_))
                      (_K97249754_)
                      (_try-match97209749_)))
                (_try-match97209749_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_try-match97209749_))))
                                          (_try-match97209749_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest96969704_))
                            (let ((_hd97019783_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest96969704_)))
                                  (_tl97029785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest96969704_))))
                              (let* ((_hd9788_ _hd97019783_)
                                     (_rest9790_ _tl97029785_))
                                (_K97009780_ _rest9790_ _hd9788_)))
                            (_else96989712_)))))))
          (let* ((_g96489658_
                  (lambda (_g96499655_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g96499655_)))
                 (_g96479687_
                  (lambda (_g96499661_)
                    (if (gx#stx-pair? _g96499661_)
                        (let ((_e96519663_ (gx#stx-e _g96499661_)))
                          (let ((_hd96529666_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e96519663_)))
                                (_tl96539668_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e96519663_))))
                            ((lambda (_L9671_)
                               (let* ((_body9682_ (map gxc#compile-e _L9671_))
                                      (_body9684_ (_simplify9646_ _body9682_)))
                                 (if (fx= (length _body9684_) '1)
                                     (car _body9684_)
                                     (cons 'begin _body9684_))))
                             _tl96539668_)))
                        (_g96489658_ _g96499661_)))))
            (_g96479687_ _stx9644_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx9606_)
        (let* ((_g96089618_
                (lambda (_g96099615_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g96099615_)))
               (_g96079641_
                (lambda (_g96099621_)
                  (if (gx#stx-pair? _g96099621_)
                      (let ((_e96119623_ (gx#stx-e _g96099621_)))
                        (let ((_hd96129626_
                               (let ()
                                 (declare (not safe))
                                 (##car _e96119623_)))
                              (_tl96139628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e96119623_))))
                          ((lambda (_L9631_)
                             (cons 'begin (gx#syntax->datum _L9631_)))
                           _tl96139628_)))
                      (_g96089618_ _g96099621_)))))
          (_g96079641_ _stx9606_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx9480_)
        (let* ((___stx1543815439_ _stx9480_)
               (_g94839511_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1543815439_))))
          (let ((___kont1544015441_
                 (lambda (_L9588_ _L9589_) (gxc#compile-e _L9588_)))
                (___kont1544215443_
                 (lambda (_L9540_ _L9541_)
                   (let ((_decls9556_ (map gx#syntax->datum _L9541_)))
                     (call-with-parameters
                      (lambda ()
                        (cons 'begin
                              (cons (cons 'declare _decls9556_)
                                    (cons (gxc#compile-e _L9540_) '()))))
                      gxc#current-compile-decls
                      (foldr1 cons
                              (gxc#current-compile-decls)
                              _decls9556_))))))
            (let ((___match1546315464_
                   (lambda (_e94879564_
                            _hd94889567_
                            _tl94899569_
                            _e94909572_
                            _hd94919575_
                            _tl94929577_
                            _e94939580_
                            _hd94949583_
                            _tl94959585_)
                     (let ((_L9588_ _hd94949583_) (_L9589_ _hd94919575_))
                       (if (gx#identifier? _L9589_)
                           (___kont1544015441_ _L9588_ _L9589_)
                           (___kont1544215443_ _hd94949583_ _hd94919575_))))))
              (if (gx#stx-pair? ___stx1543815439_)
                  (let ((_e94879564_ (gx#stx-e ___stx1543815439_)))
                    (let ((_tl94899569_
                           (let () (declare (not safe)) (##cdr _e94879564_)))
                          (_hd94889567_
                           (let () (declare (not safe)) (##car _e94879564_))))
                      (if (gx#stx-pair? _tl94899569_)
                          (let ((_e94909572_ (gx#stx-e _tl94899569_)))
                            (let ((_tl94929577_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e94909572_)))
                                  (_hd94919575_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e94909572_))))
                              (if (gx#stx-pair? _tl94929577_)
                                  (let ((_e94939580_ (gx#stx-e _tl94929577_)))
                                    (let ((_tl94959585_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e94939580_)))
                                          (_hd94949583_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e94939580_))))
                                      (if (gx#stx-null? _tl94959585_)
                                          (___match1546315464_
                                           _e94879564_
                                           _hd94889567_
                                           _tl94899569_
                                           _e94909572_
                                           _hd94919575_
                                           _tl94929577_
                                           _e94939580_
                                           _hd94949583_
                                           _tl94959585_)
                                          (_g94839511_))))
                                  (_g94839511_))))
                          (_g94839511_))))
                  (_g94839511_)))))))
    (define gxc#generate-runtime-declare%
      (lambda (_stx9440_)
        (let* ((_g94429452_
                (lambda (_g94439449_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g94439449_)))
               (_g94419477_
                (lambda (_g94439455_)
                  (if (gx#stx-pair? _g94439455_)
                      (let ((_e94459457_ (gx#stx-e _g94439455_)))
                        (let ((_hd94469460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e94459457_)))
                              (_tl94479462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e94459457_))))
                          ((lambda (_L9465_)
                             (let ((_decls9475_
                                    (map gx#syntax->datum _L9465_)))
                               (gxc#current-compile-decls
                                (foldr1 cons
                                        (gxc#current-compile-decls)
                                        _decls9475_))
                               (cons 'declare _decls9475_)))
                           _tl94479462_)))
                      (_g94429452_ _g94439455_)))))
          (_g94419477_ _stx9440_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_stx9187_)
        (let* ((_g91899206_
                (lambda (_g91909203_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g91909203_)))
               (_g91889437_
                (lambda (_g91909209_)
                  (if (gx#stx-pair? _g91909209_)
                      (let ((_e91939211_ (gx#stx-e _g91909209_)))
                        (let ((_hd91949214_
                               (let ()
                                 (declare (not safe))
                                 (##car _e91939211_)))
                              (_tl91959216_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e91939211_))))
                          (if (gx#stx-pair? _tl91959216_)
                              (let ((_e91969219_ (gx#stx-e _tl91959216_)))
                                (let ((_hd91979222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e91969219_)))
                                      (_tl91989224_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e91969219_))))
                                  (if (gx#stx-pair? _tl91989224_)
                                      (let ((_e91999227_
                                             (gx#stx-e _tl91989224_)))
                                        (let ((_hd92009230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e91999227_)))
                                              (_tl92019232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e91999227_))))
                                          (if (gx#stx-null? _tl92019232_)
                                              ((lambda (_L9235_ _L9236_)
                                                 (let* ((___stx1551615517_
                                                         _L9236_)
                                                        (_g92539267_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            ___stx1551615517_))))
                                                   (let ((___kont1551815519_
                                                          (lambda ()
                                                            (gxc#compile-e
                                                             _L9235_)))
                                                         (___kont1552015521_
                                                          (lambda (_L9399_)
                                                            (let ((_eid9408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#generate-runtime-binding-id _L9399_)))
                      (let ((_lambda-expr94099411_
                             (gxc#apply-find-lambda-expression _L9235_)))
                        (if _lambda-expr94099411_
                            (let ((_lambda-expr9414_ _lambda-expr94099411_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr9414_
                               _eid9408_))
                            '#f))
                      (cons 'define
                            (cons _eid9408_
                                  (cons (gxc#compile-e _L9235_) '()))))))
                 (___kont1552215523_
                  (lambda ()
                    (let* ((_tmp9274_ (gxc#generate-runtime-temporary__% '#t))
                           (_body9383_
                            (let _lp9276_ ((_rest9278_ _L9236_)
                                           (_k9279_ '0)
                                           (_r9280_ '()))
                              (let* ((___stx1548615487_ _rest9278_)
                                     (_g92859302_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1548615487_))))
                                (let ((___kont1548815489_
                                       (lambda (_L9370_)
                                         (_lp9276_
                                          _L9370_
                                          (fx+ _k9279_ '1)
                                          _r9280_)))
                                      (___kont1549015491_
                                       (lambda (_L9343_ _L9344_)
                                         (_lp9276_
                                          _L9343_
                                          (fx+ _k9279_ '1)
                                          (cons (cons 'define
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L9344_)
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tmp9274_
                           _k9279_
                           _L9343_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _r9280_))))
                                      (___kont1549215493_
                                       (lambda (_L9314_)
                                         (foldl1 cons
                                                 (cons (cons 'define
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9314_)
                           (cons (gxc#generate-runtime-values->list
                                  _tmp9274_
                                  _k9279_)
                                 '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r9280_)))
                                      (___kont1549415495_
                                       (lambda () (reverse _r9280_))))
                                  (let ((_g92839330_
                                         (lambda ()
                                           (let ((_L9314_ ___stx1548615487_))
                                             (if (gx#identifier? _L9314_)
                                                 (___kont1549215493_ _L9314_)
                                                 (___kont1549415495_))))))
                                    (if (gx#stx-pair? ___stx1548615487_)
                                        (let ((_e92889359_
                                               (gx#stx-e ___stx1548615487_)))
                                          (let ((_tl92909364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e92889359_)))
                                                (_hd92899362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e92889359_))))
                                            (if (gx#stx-datum? _hd92899362_)
                                                (let ((_e92919367_
                                                       (gx#stx-e
                                                        _hd92899362_)))
                                                  (if (equal? _e92919367_ '#f)
                                                      (___kont1548815489_
                                                       _tl92909364_)
                                                      (___kont1549015491_
                                                       _tl92909364_
                                                       _hd92899362_)))
                                                (___kont1549015491_
                                                 _tl92909364_
                                                 _hd92899362_))))
                                        (_g92839330_))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp9274_
                                              (cons (gxc#compile-e _L9235_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp9274_
                                         _L9236_
                                         _L9235_)
                                        _body9383_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          ___stx1551615517_)
                                                         (let ((_e92559421_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___stx1551615517_)))
                   (let ((_tl92579426_
                          (let () (declare (not safe)) (##cdr _e92559421_)))
                         (_hd92569424_
                          (let () (declare (not safe)) (##car _e92559421_))))
                     (if (gx#stx-datum? _hd92569424_)
                         (let ((_e92589429_ (gx#stx-e _hd92569424_)))
                           (if (equal? _e92589429_ '#f)
                               (if (gx#stx-null? _tl92579426_)
                                   (___kont1551815519_)
                                   (___kont1552215523_))
                               (if (gx#stx-null? _tl92579426_)
                                   (___kont1552015521_ _hd92569424_)
                                   (___kont1552215523_))))
                         (if (gx#stx-null? _tl92579426_)
                             (___kont1552015521_ _hd92569424_)
                             (___kont1552215523_)))))
                 (___kont1552215523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd92009230_
                                               _hd91979222_)
                                              (_g91899206_ _g91909209_))))
                                      (_g91899206_ _g91909209_))))
                              (_g91899206_ _g91909209_))))
                      (_g91899206_ _g91909209_)))))
          (_g91889437_ _stx9187_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals9163_ _hd9164_ _expr9165_)
        (let ((_$e9167_ (gxc#apply-count-values _expr9165_)))
          (if _$e9167_
              ((lambda (_count9170_)
                 (let ((_len9172_ (gx#stx-length _hd9164_))
                       (_cmp9173_ (if (gx#stx-list? _hd9164_) fx= fx>=)))
                   (if (or (fx= _len9172_ '0)
                           (_cmp9173_ _count9170_ _len9172_))
                       '#!void
                       (gxc#raise-compile-error
                        '"Value count mismatch"
                        _expr9165_
                        _hd9164_))))
               _$e9167_)
              (let* ((_len9178_ (gx#stx-length _hd9164_))
                     (_cmp9180_ (if (gx#stx-list? _hd9164_) '##fx= '##fx>=))
                     (_errmsg9182_
                      (string-append
                       (if (gx#stx-list? _hd9164_)
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len9178_)
                       '" values"))
                     (_count9184_ (gxc#generate-runtime-temporary__0)))
                (if (and (not (gx#stx-list? _hd9164_)) (fx= _len9178_ '0))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count9184_
                                            (cons (gxc#generate-runtime-values-count
                                                   _vals9163_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _cmp9180_
                                (cons _count9184_ (cons _len9178_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _cmp9180_
                                                        (cons _count9184_
                                                              (cons _len9178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg9182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9184_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var9158_)
        (letrec ((_generate-inline9160_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _var9158_ '()))
                                (cons (cons '##vector-length
                                            (cons _var9158_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_generate-inline9160_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_generate-inline9160_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var9151_ _i9152_ _rest9153_)
        (letrec ((_generate-inline9155_
                  (lambda ()
                    (if (and (fx= _i9152_ '0) (not (gx#stx-pair? _rest9153_)))
                        (cons 'if
                              (cons (cons '##values? (cons _var9151_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _var9151_ (cons '0 '())))
                                          (cons _var9151_ '()))))
                        (cons '##vector-ref
                              (cons _var9151_ (cons _i9152_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_generate-inline9155_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_generate-inline9155_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var9148_ _i9149_)
        (if (fx= _i9149_ '0)
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _var9148_ '()))
                            (cons (cons '##vector->list (cons _var9148_ '()))
                                  (cons (cons 'list (cons _var9148_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _var9148_ '()))
                                                    (cons (cons '##vector->list
                                                                (cons _var9148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _var9148_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (fx= _i9149_ '1)
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _var9148_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _var9148_ '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _var9148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list (cons _var9148_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _var9148_ '()))
                                (cons _i9149_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _var9148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _i9149_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_stx9081_)
        (let* ((_g90839100_
                (lambda (_g90849097_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g90849097_)))
               (_g90829145_
                (lambda (_g90849103_)
                  (if (gx#stx-pair? _g90849103_)
                      (let ((_e90879105_ (gx#stx-e _g90849103_)))
                        (let ((_hd90889108_
                               (let ()
                                 (declare (not safe))
                                 (##car _e90879105_)))
                              (_tl90899110_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e90879105_))))
                          (if (gx#stx-pair? _tl90899110_)
                              (let ((_e90909113_ (gx#stx-e _tl90899110_)))
                                (let ((_hd90919116_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e90909113_)))
                                      (_tl90929118_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e90909113_))))
                                  (if (gx#stx-pair? _tl90929118_)
                                      (let ((_e90939121_
                                             (gx#stx-e _tl90929118_)))
                                        (let ((_hd90949124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e90939121_)))
                                              (_tl90959126_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e90939121_))))
                                          (if (gx#stx-null? _tl90959126_)
                                              ((lambda (_L9129_ _L9130_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _L9130_
                                                  _L9129_))
                                               _hd90949124_
                                               _hd90919116_)
                                              (_g90839100_ _g90849103_))))
                                      (_g90839100_ _g90849103_))))
                              (_g90839100_ _g90849103_))))
                      (_g90839100_ _g90849103_)))))
          (_g90829145_ _stx9081_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_hd9041_ _body9042_)
        (let* ((_hd9044_ (gxc#generate-runtime-lambda-head _hd9041_))
               (_body9046_ (gxc#compile-e _body9042_))
               (_body9078_
                (let* ((_body90479055_ _body9046_)
                       (_else90499063_ (lambda () (cons _body9046_ '())))
                       (_K90519068_ (lambda (_exprs9066_) _exprs9066_)))
                  (if (let () (declare (not safe)) (##pair? _body90479055_))
                      (let ((_hd90529071_
                             (let ()
                               (declare (not safe))
                               (##car _body90479055_)))
                            (_tl90539073_
                             (let ()
                               (declare (not safe))
                               (##cdr _body90479055_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd90529071_ 'begin))
                            (let ((_exprs9076_ _tl90539073_))
                              (_K90519068_ _exprs9076_))
                            (_else90499063_)))
                      (_else90499063_)))))
          (cons 'lambda (cons _hd9044_ _body9078_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd9039_)
        (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9039_)))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_stx7582_)
        (letrec ((_dispatch-case?7584_
                  (lambda (_hd8269_ _body8270_)
                    (let* ((_form8272_ (cons _hd8269_ (cons _body8270_ '())))
                           (___stx1554815549_ _form8272_)
                           (_g82778434_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1554815549_))))
                      (let ((___kont1555015551_
                             (lambda (_L8959_ _L8960_ _L8961_) '#t))
                            (___kont1555615557_
                             (lambda (_L8747_
                                      _L8748_
                                      _L8749_
                                      _L8750_
                                      _L8751_
                                      _L8752_)
                               '#t))
                            (___kont1556215563_
                             (lambda (_L8542_ _L8543_ _L8544_ _L8545_) '#t))
                            (___kont1556415565_ (lambda () '#f)))
                        (let* ((___match1568915690_
                                (lambda (_e83948446_
                                         _hd83958449_
                                         _tl83968451_
                                         _e83978454_
                                         _hd83988457_
                                         _tl83998459_
                                         _e84008462_
                                         _hd84018465_
                                         _tl84028467_
                                         _e84038470_
                                         _hd84048473_
                                         _tl84058475_
                                         _e84068478_
                                         _hd84078481_
                                         _tl84088483_
                                         _e84098486_
                                         _hd84108489_
                                         _tl84118491_
                                         _e84128494_
                                         _hd84138497_
                                         _tl84148499_
                                         _e84158502_
                                         _hd84168505_
                                         _tl84178507_
                                         _e84188510_
                                         _hd84198513_
                                         _tl84208515_
                                         _e84218518_
                                         _hd84228521_
                                         _tl84238523_
                                         _e84248526_
                                         _hd84258529_
                                         _tl84268531_
                                         _e84278534_
                                         _hd84288537_
                                         _tl84298539_)
                                  (let ((_L8542_ _hd84288537_)
                                        (_L8543_ _hd84198513_)
                                        (_L8544_ _hd84108489_)
                                        (_L8545_ _hd83958449_))
                                    (if (and (gx#identifier? _L8545_)
                                             (gxc#runtime-identifier=?
                                              _L8544_
                                              'apply)
                                             (gx#free-identifier=?
                                              _L8545_
                                              _L8542_)
                                             (not (gx#free-identifier=?
                                                   _L8543_
                                                   _L8545_)))
                                        (___kont1556215563_
                                         _L8542_
                                         _L8543_
                                         _L8544_
                                         _L8545_)
                                        (___kont1556415565_)))))
                               (___match1566115662_
                                (lambda (_e83948446_
                                         _hd83958449_
                                         _tl83968451_
                                         _e83978454_
                                         _hd83988457_
                                         _tl83998459_
                                         _e84008462_
                                         _hd84018465_
                                         _tl84028467_
                                         _e84038470_
                                         _hd84048473_
                                         _tl84058475_
                                         _e84068478_
                                         _hd84078481_
                                         _tl84088483_
                                         _e84098486_
                                         _hd84108489_
                                         _tl84118491_
                                         _e84128494_
                                         _hd84138497_
                                         _tl84148499_
                                         _e84158502_
                                         _hd84168505_
                                         _tl84178507_
                                         _e84188510_
                                         _hd84198513_
                                         _tl84208515_)
                                  (if (gx#stx-pair? _tl84148499_)
                                      (let ((_e84218518_
                                             (gx#stx-e _tl84148499_)))
                                        (let ((_tl84238523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e84218518_)))
                                              (_hd84228521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e84218518_))))
                                          (if (gx#stx-pair? _hd84228521_)
                                              (let ((_e84248526_
                                                     (gx#stx-e _hd84228521_)))
                                                (let ((_tl84268531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e84248526_)))
                                                      (_hd84258529_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e84248526_))))
                                                  (if (gx#identifier?
                                                       _hd84258529_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd84258529_)
                                                          (if (gx#stx-pair?
                                                               _tl84268531_)
                                                              (let ((_e84278534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl84268531_)))
                        (let ((_tl84298539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84278534_)))
                              (_hd84288537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84278534_))))
                          (if (gx#stx-null? _tl84298539_)
                              (if (gx#stx-null? _tl84238523_)
                                  (if (gx#stx-null? _tl83998459_)
                                      (___match1568915690_
                                       _e83948446_
                                       _hd83958449_
                                       _tl83968451_
                                       _e83978454_
                                       _hd83988457_
                                       _tl83998459_
                                       _e84008462_
                                       _hd84018465_
                                       _tl84028467_
                                       _e84038470_
                                       _hd84048473_
                                       _tl84058475_
                                       _e84068478_
                                       _hd84078481_
                                       _tl84088483_
                                       _e84098486_
                                       _hd84108489_
                                       _tl84118491_
                                       _e84128494_
                                       _hd84138497_
                                       _tl84148499_
                                       _e84158502_
                                       _hd84168505_
                                       _tl84178507_
                                       _e84188510_
                                       _hd84198513_
                                       _tl84208515_
                                       _e84218518_
                                       _hd84228521_
                                       _tl84238523_
                                       _e84248526_
                                       _hd84258529_
                                       _tl84268531_
                                       _e84278534_
                                       _hd84288537_
                                       _tl84298539_)
                                      (___kont1556415565_))
                                  (___kont1556415565_))
                              (___kont1556415565_))))
                      (___kont1556415565_))
                  (___kont1556415565_))
              (___kont1556415565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1556415565_))))
                                      (___kont1556415565_))))
                               (___match1559115592_
                                (lambda (_e83308587_
                                         _hd83318590_
                                         _tl83328592_
                                         ___splice1555815559_
                                         _target83338595_
                                         _tl83358597_)
                                  (letrec ((_loop83368600_
                                            (lambda (_hd83348603_
                                                     _arg83408605_)
                                              (if (gx#stx-pair? _hd83348603_)
                                                  (let ((_e83378608_
                                                         (gx#stx-e
                                                          _hd83348603_)))
                                                    (let ((_lp-tl83398613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e83378608_)))
                                                          (_lp-hd83388611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e83378608_))))
                                                      (_loop83368600_
                                                       _lp-tl83398613_
                                                       (cons _lp-hd83388611_
                                                             _arg83408605_))))
                                                  (let ((_arg83418616_
                                                         (reverse _arg83408605_)))
                                                    (if (gx#stx-pair?
                                                         _tl83328592_)
                                                        (let ((_e83428619_
                                                               (gx#stx-e
                                                                _tl83328592_)))
                                                          (let ((_tl83448624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e83428619_)))
                        (_hd83438622_
                         (let () (declare (not safe)) (##car _e83428619_))))
                    (if (gx#stx-pair? _hd83438622_)
                        (let ((_e83458627_ (gx#stx-e _hd83438622_)))
                          (let ((_tl83478632_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83458627_)))
                                (_hd83468630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83458627_))))
                            (if (gx#identifier? _hd83468630_)
                                (if (gx#stx-eq? '%#call _hd83468630_)
                                    (if (gx#stx-pair? _tl83478632_)
                                        (let ((_e83488635_
                                               (gx#stx-e _tl83478632_)))
                                          (let ((_tl83508640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e83488635_)))
                                                (_hd83498638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e83488635_))))
                                            (if (gx#stx-pair? _hd83498638_)
                                                (let ((_e83518643_
                                                       (gx#stx-e
                                                        _hd83498638_)))
                                                  (let ((_tl83538648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e83518643_)))
                                                        (_hd83528646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e83518643_))))
                                                    (if (gx#identifier?
                                                         _hd83528646_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd83528646_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83538648_)
                        (let ((_e83548651_ (gx#stx-e _tl83538648_)))
                          (let ((_tl83568656_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83548651_)))
                                (_hd83558654_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83548651_))))
                            (if (gx#stx-null? _tl83568656_)
                                (if (gx#stx-pair? _tl83508640_)
                                    (let ((_e83578659_
                                           (gx#stx-e _tl83508640_)))
                                      (let ((_tl83598664_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e83578659_)))
                                            (_hd83588662_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e83578659_))))
                                        (if (gx#stx-pair? _hd83588662_)
                                            (let ((_e83608667_
                                                   (gx#stx-e _hd83588662_)))
                                              (let ((_tl83628672_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e83608667_)))
                                                    (_hd83618670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e83608667_))))
                                                (if (gx#identifier?
                                                     _hd83618670_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd83618670_)
                                                        (if (gx#stx-pair?
                                                             _tl83628672_)
                                                            (let ((_e83638675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl83628672_)))
                      (let ((_tl83658680_
                             (let () (declare (not safe)) (##cdr _e83638675_)))
                            (_hd83648678_
                             (let ()
                               (declare (not safe))
                               (##car _e83638675_))))
                        (if (gx#stx-null? _tl83658680_)
                            (if (gx#stx-pair/null? _tl83598664_)
                                (if (fx>= (gx#stx-length _tl83598664_) '1)
                                    (let ((___splice1556015561_
                                           (gx#syntax-split-splice
                                            _tl83598664_
                                            '1)))
                                      (let ((_tl83688685_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1556015561_
                                                '1)))
                                            (_target83668683_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1556015561_
                                                '0))))
                                        (if (gx#stx-pair? _tl83688685_)
                                            (let ((_e83758688_
                                                   (gx#stx-e _tl83688685_)))
                                              (let ((_tl83778693_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e83758688_)))
                                                    (_hd83768691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e83758688_))))
                                                (if (gx#stx-pair? _hd83768691_)
                                                    (let ((_e83788696_
                                                           (gx#stx-e
                                                            _hd83768691_)))
                                                      (let ((_tl83808701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e83788696_)))
                    (_hd83798699_
                     (let () (declare (not safe)) (##car _e83788696_))))
                (if (gx#identifier? _hd83798699_)
                    (if (gx#stx-eq? '%#ref _hd83798699_)
                        (if (gx#stx-pair? _tl83808701_)
                            (let ((_e83818704_ (gx#stx-e _tl83808701_)))
                              (let ((_tl83838709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e83818704_)))
                                    (_hd83828707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e83818704_))))
                                (if (gx#stx-null? _tl83838709_)
                                    (if (gx#stx-null? _tl83778693_)
                                        (letrec ((_loop83698712_
                                                  (lambda (_hd83678715_
                                                           _xarg83738717_)
                                                    (if (gx#stx-pair?
                                                         _hd83678715_)
                                                        (let ((_e83708720_
                                                               (gx#stx-e
                                                                _hd83678715_)))
                                                          (let ((_lp-tl83728725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e83708720_)))
                        (_lp-hd83718723_
                         (let () (declare (not safe)) (##car _e83708720_))))
                    (if (gx#stx-pair? _lp-hd83718723_)
                        (let ((_e83848728_ (gx#stx-e _lp-hd83718723_)))
                          (let ((_tl83868733_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83848728_)))
                                (_hd83858731_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83848728_))))
                            (if (gx#identifier? _hd83858731_)
                                (if (gx#stx-eq? '%#ref _hd83858731_)
                                    (if (gx#stx-pair? _tl83868733_)
                                        (let ((_e83878736_
                                               (gx#stx-e _tl83868733_)))
                                          (let ((_tl83898741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e83878736_)))
                                                (_hd83888739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e83878736_))))
                                            (if (gx#stx-null? _tl83898741_)
                                                (_loop83698712_
                                                 _lp-tl83728725_
                                                 (cons _hd83888739_
                                                       _xarg83738717_))
                                                (___match1566115662_
                                                 _e83308587_
                                                 _hd83318590_
                                                 _tl83328592_
                                                 _e83428619_
                                                 _hd83438622_
                                                 _tl83448624_
                                                 _e83458627_
                                                 _hd83468630_
                                                 _tl83478632_
                                                 _e83488635_
                                                 _hd83498638_
                                                 _tl83508640_
                                                 _e83518643_
                                                 _hd83528646_
                                                 _tl83538648_
                                                 _e83548651_
                                                 _hd83558654_
                                                 _tl83568656_
                                                 _e83578659_
                                                 _hd83588662_
                                                 _tl83598664_
                                                 _e83608667_
                                                 _hd83618670_
                                                 _tl83628672_
                                                 _e83638675_
                                                 _hd83648678_
                                                 _tl83658680_))))
                                        (___match1566115662_
                                         _e83308587_
                                         _hd83318590_
                                         _tl83328592_
                                         _e83428619_
                                         _hd83438622_
                                         _tl83448624_
                                         _e83458627_
                                         _hd83468630_
                                         _tl83478632_
                                         _e83488635_
                                         _hd83498638_
                                         _tl83508640_
                                         _e83518643_
                                         _hd83528646_
                                         _tl83538648_
                                         _e83548651_
                                         _hd83558654_
                                         _tl83568656_
                                         _e83578659_
                                         _hd83588662_
                                         _tl83598664_
                                         _e83608667_
                                         _hd83618670_
                                         _tl83628672_
                                         _e83638675_
                                         _hd83648678_
                                         _tl83658680_))
                                    (___match1566115662_
                                     _e83308587_
                                     _hd83318590_
                                     _tl83328592_
                                     _e83428619_
                                     _hd83438622_
                                     _tl83448624_
                                     _e83458627_
                                     _hd83468630_
                                     _tl83478632_
                                     _e83488635_
                                     _hd83498638_
                                     _tl83508640_
                                     _e83518643_
                                     _hd83528646_
                                     _tl83538648_
                                     _e83548651_
                                     _hd83558654_
                                     _tl83568656_
                                     _e83578659_
                                     _hd83588662_
                                     _tl83598664_
                                     _e83608667_
                                     _hd83618670_
                                     _tl83628672_
                                     _e83638675_
                                     _hd83648678_
                                     _tl83658680_))
                                (___match1566115662_
                                 _e83308587_
                                 _hd83318590_
                                 _tl83328592_
                                 _e83428619_
                                 _hd83438622_
                                 _tl83448624_
                                 _e83458627_
                                 _hd83468630_
                                 _tl83478632_
                                 _e83488635_
                                 _hd83498638_
                                 _tl83508640_
                                 _e83518643_
                                 _hd83528646_
                                 _tl83538648_
                                 _e83548651_
                                 _hd83558654_
                                 _tl83568656_
                                 _e83578659_
                                 _hd83588662_
                                 _tl83598664_
                                 _e83608667_
                                 _hd83618670_
                                 _tl83628672_
                                 _e83638675_
                                 _hd83648678_
                                 _tl83658680_))))
                        (___match1566115662_
                         _e83308587_
                         _hd83318590_
                         _tl83328592_
                         _e83428619_
                         _hd83438622_
                         _tl83448624_
                         _e83458627_
                         _hd83468630_
                         _tl83478632_
                         _e83488635_
                         _hd83498638_
                         _tl83508640_
                         _e83518643_
                         _hd83528646_
                         _tl83538648_
                         _e83548651_
                         _hd83558654_
                         _tl83568656_
                         _e83578659_
                         _hd83588662_
                         _tl83598664_
                         _e83608667_
                         _hd83618670_
                         _tl83628672_
                         _e83638675_
                         _hd83648678_
                         _tl83658680_))))
                (let ((_xarg83748744_ (reverse _xarg83738717_)))
                  (if (gx#stx-null? _tl83448624_)
                      (let ((_L8747_ _hd83828707_)
                            (_L8748_ _xarg83748744_)
                            (_L8749_ _hd83648678_)
                            (_L8750_ _hd83558654_)
                            (_L8751_ _tl83358597_)
                            (_L8752_ _arg83418616_))
                        (if (and (gx#identifier-list?
                                  (foldr1 (lambda (_g87958798_ _g87968800_)
                                            (cons _g87958798_ _g87968800_))
                                          '()
                                          _L8752_))
                                 (gx#identifier? _L8751_)
                                 (gxc#runtime-identifier=? _L8750_ 'apply)
                                 (fx= (length (foldr1 (lambda (_g88028805_
                                                               _g88038807_)
                                                        (cons _g88028805_
                                                              _g88038807_))
                                                      '()
                                                      _L8752_))
                                      (length (foldr1 (lambda (_g88098812_
                                                               _g88108814_)
                                                        (cons _g88098812_
                                                              _g88108814_))
                                                      '()
                                                      _L8748_)))
                                 (andmap2 gx#free-identifier=?
                                          (foldr1 (lambda (_g88168819_
                                                           _g88178821_)
                                                    (cons _g88168819_
                                                          _g88178821_))
                                                  '()
                                                  _L8752_)
                                          (foldr1 (lambda (_g88238826_
                                                           _g88248828_)
                                                    (cons _g88238826_
                                                          _g88248828_))
                                                  '()
                                                  _L8748_))
                                 (gx#free-identifier=? _L8751_ _L8747_)
                                 (not (find (lambda (_g88308832_)
                                              (gx#free-identifier=?
                                               _g88308832_
                                               _L8749_))
                                            (foldr1 (lambda (_g88348837_
                                                             _g88358839_)
                                                      (cons _g88348837_
                                                            _g88358839_))
                                                    (cons _L8751_ '())
                                                    _L8752_))))
                            (___kont1555615557_
                             _L8747_
                             _L8748_
                             _L8749_
                             _L8750_
                             _L8751_
                             _L8752_)
                            (___match1566115662_
                             _e83308587_
                             _hd83318590_
                             _tl83328592_
                             _e83428619_
                             _hd83438622_
                             _tl83448624_
                             _e83458627_
                             _hd83468630_
                             _tl83478632_
                             _e83488635_
                             _hd83498638_
                             _tl83508640_
                             _e83518643_
                             _hd83528646_
                             _tl83538648_
                             _e83548651_
                             _hd83558654_
                             _tl83568656_
                             _e83578659_
                             _hd83588662_
                             _tl83598664_
                             _e83608667_
                             _hd83618670_
                             _tl83628672_
                             _e83638675_
                             _hd83648678_
                             _tl83658680_)))
                      (___match1566115662_
                       _e83308587_
                       _hd83318590_
                       _tl83328592_
                       _e83428619_
                       _hd83438622_
                       _tl83448624_
                       _e83458627_
                       _hd83468630_
                       _tl83478632_
                       _e83488635_
                       _hd83498638_
                       _tl83508640_
                       _e83518643_
                       _hd83528646_
                       _tl83538648_
                       _e83548651_
                       _hd83558654_
                       _tl83568656_
                       _e83578659_
                       _hd83588662_
                       _tl83598664_
                       _e83608667_
                       _hd83618670_
                       _tl83628672_
                       _e83638675_
                       _hd83648678_
                       _tl83658680_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop83698712_
                                           _target83668683_
                                           '()))
                                        (___match1566115662_
                                         _e83308587_
                                         _hd83318590_
                                         _tl83328592_
                                         _e83428619_
                                         _hd83438622_
                                         _tl83448624_
                                         _e83458627_
                                         _hd83468630_
                                         _tl83478632_
                                         _e83488635_
                                         _hd83498638_
                                         _tl83508640_
                                         _e83518643_
                                         _hd83528646_
                                         _tl83538648_
                                         _e83548651_
                                         _hd83558654_
                                         _tl83568656_
                                         _e83578659_
                                         _hd83588662_
                                         _tl83598664_
                                         _e83608667_
                                         _hd83618670_
                                         _tl83628672_
                                         _e83638675_
                                         _hd83648678_
                                         _tl83658680_))
                                    (___match1566115662_
                                     _e83308587_
                                     _hd83318590_
                                     _tl83328592_
                                     _e83428619_
                                     _hd83438622_
                                     _tl83448624_
                                     _e83458627_
                                     _hd83468630_
                                     _tl83478632_
                                     _e83488635_
                                     _hd83498638_
                                     _tl83508640_
                                     _e83518643_
                                     _hd83528646_
                                     _tl83538648_
                                     _e83548651_
                                     _hd83558654_
                                     _tl83568656_
                                     _e83578659_
                                     _hd83588662_
                                     _tl83598664_
                                     _e83608667_
                                     _hd83618670_
                                     _tl83628672_
                                     _e83638675_
                                     _hd83648678_
                                     _tl83658680_))))
                            (___match1566115662_
                             _e83308587_
                             _hd83318590_
                             _tl83328592_
                             _e83428619_
                             _hd83438622_
                             _tl83448624_
                             _e83458627_
                             _hd83468630_
                             _tl83478632_
                             _e83488635_
                             _hd83498638_
                             _tl83508640_
                             _e83518643_
                             _hd83528646_
                             _tl83538648_
                             _e83548651_
                             _hd83558654_
                             _tl83568656_
                             _e83578659_
                             _hd83588662_
                             _tl83598664_
                             _e83608667_
                             _hd83618670_
                             _tl83628672_
                             _e83638675_
                             _hd83648678_
                             _tl83658680_))
                        (___match1566115662_
                         _e83308587_
                         _hd83318590_
                         _tl83328592_
                         _e83428619_
                         _hd83438622_
                         _tl83448624_
                         _e83458627_
                         _hd83468630_
                         _tl83478632_
                         _e83488635_
                         _hd83498638_
                         _tl83508640_
                         _e83518643_
                         _hd83528646_
                         _tl83538648_
                         _e83548651_
                         _hd83558654_
                         _tl83568656_
                         _e83578659_
                         _hd83588662_
                         _tl83598664_
                         _e83608667_
                         _hd83618670_
                         _tl83628672_
                         _e83638675_
                         _hd83648678_
                         _tl83658680_))
                    (___match1566115662_
                     _e83308587_
                     _hd83318590_
                     _tl83328592_
                     _e83428619_
                     _hd83438622_
                     _tl83448624_
                     _e83458627_
                     _hd83468630_
                     _tl83478632_
                     _e83488635_
                     _hd83498638_
                     _tl83508640_
                     _e83518643_
                     _hd83528646_
                     _tl83538648_
                     _e83548651_
                     _hd83558654_
                     _tl83568656_
                     _e83578659_
                     _hd83588662_
                     _tl83598664_
                     _e83608667_
                     _hd83618670_
                     _tl83628672_
                     _e83638675_
                     _hd83648678_
                     _tl83658680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1566115662_
                                                     _e83308587_
                                                     _hd83318590_
                                                     _tl83328592_
                                                     _e83428619_
                                                     _hd83438622_
                                                     _tl83448624_
                                                     _e83458627_
                                                     _hd83468630_
                                                     _tl83478632_
                                                     _e83488635_
                                                     _hd83498638_
                                                     _tl83508640_
                                                     _e83518643_
                                                     _hd83528646_
                                                     _tl83538648_
                                                     _e83548651_
                                                     _hd83558654_
                                                     _tl83568656_
                                                     _e83578659_
                                                     _hd83588662_
                                                     _tl83598664_
                                                     _e83608667_
                                                     _hd83618670_
                                                     _tl83628672_
                                                     _e83638675_
                                                     _hd83648678_
                                                     _tl83658680_))))
                                            (___match1566115662_
                                             _e83308587_
                                             _hd83318590_
                                             _tl83328592_
                                             _e83428619_
                                             _hd83438622_
                                             _tl83448624_
                                             _e83458627_
                                             _hd83468630_
                                             _tl83478632_
                                             _e83488635_
                                             _hd83498638_
                                             _tl83508640_
                                             _e83518643_
                                             _hd83528646_
                                             _tl83538648_
                                             _e83548651_
                                             _hd83558654_
                                             _tl83568656_
                                             _e83578659_
                                             _hd83588662_
                                             _tl83598664_
                                             _e83608667_
                                             _hd83618670_
                                             _tl83628672_
                                             _e83638675_
                                             _hd83648678_
                                             _tl83658680_))))
                                    (___match1566115662_
                                     _e83308587_
                                     _hd83318590_
                                     _tl83328592_
                                     _e83428619_
                                     _hd83438622_
                                     _tl83448624_
                                     _e83458627_
                                     _hd83468630_
                                     _tl83478632_
                                     _e83488635_
                                     _hd83498638_
                                     _tl83508640_
                                     _e83518643_
                                     _hd83528646_
                                     _tl83538648_
                                     _e83548651_
                                     _hd83558654_
                                     _tl83568656_
                                     _e83578659_
                                     _hd83588662_
                                     _tl83598664_
                                     _e83608667_
                                     _hd83618670_
                                     _tl83628672_
                                     _e83638675_
                                     _hd83648678_
                                     _tl83658680_))
                                (___match1566115662_
                                 _e83308587_
                                 _hd83318590_
                                 _tl83328592_
                                 _e83428619_
                                 _hd83438622_
                                 _tl83448624_
                                 _e83458627_
                                 _hd83468630_
                                 _tl83478632_
                                 _e83488635_
                                 _hd83498638_
                                 _tl83508640_
                                 _e83518643_
                                 _hd83528646_
                                 _tl83538648_
                                 _e83548651_
                                 _hd83558654_
                                 _tl83568656_
                                 _e83578659_
                                 _hd83588662_
                                 _tl83598664_
                                 _e83608667_
                                 _hd83618670_
                                 _tl83628672_
                                 _e83638675_
                                 _hd83648678_
                                 _tl83658680_))
                            (___kont1556415565_))))
                    (___kont1556415565_))
                (___kont1556415565_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1556415565_))))
                                            (___kont1556415565_))))
                                    (___kont1556415565_))
                                (___kont1556415565_))))
                        (___kont1556415565_))
                    (___kont1556415565_))
                (___kont1556415565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1556415565_))))
                                        (___kont1556415565_))
                                    (___kont1556415565_))
                                (___kont1556415565_))))
                        (___kont1556415565_))))
                (___kont1556415565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop83368600_ _target83338595_ '()))))
                               (___match1557915580_
                                (lambda (_e82828847_
                                         _hd82838850_
                                         _tl82848852_
                                         ___splice1555215553_
                                         _target82858855_
                                         _tl82878857_)
                                  (letrec ((_loop82888860_
                                            (lambda (_hd82868863_
                                                     _arg82928865_)
                                              (if (gx#stx-pair? _hd82868863_)
                                                  (let ((_e82898868_
                                                         (gx#stx-e
                                                          _hd82868863_)))
                                                    (let ((_lp-tl82918873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e82898868_)))
                                                          (_lp-hd82908871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e82898868_))))
                                                      (_loop82888860_
                                                       _lp-tl82918873_
                                                       (cons _lp-hd82908871_
                                                             _arg82928865_))))
                                                  (let ((_arg82938876_
                                                         (reverse _arg82928865_)))
                                                    (if (gx#stx-pair?
                                                         _tl82848852_)
                                                        (let ((_e82948879_
                                                               (gx#stx-e
                                                                _tl82848852_)))
                                                          (let ((_tl82968884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e82948879_)))
                        (_hd82958882_
                         (let () (declare (not safe)) (##car _e82948879_))))
                    (if (gx#stx-pair? _hd82958882_)
                        (let ((_e82978887_ (gx#stx-e _hd82958882_)))
                          (let ((_tl82998892_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e82978887_)))
                                (_hd82988890_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e82978887_))))
                            (if (gx#identifier? _hd82988890_)
                                (if (gx#stx-eq? '%#call _hd82988890_)
                                    (if (gx#stx-pair? _tl82998892_)
                                        (let ((_e83008895_
                                               (gx#stx-e _tl82998892_)))
                                          (let ((_tl83028900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e83008895_)))
                                                (_hd83018898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e83008895_))))
                                            (if (gx#stx-pair? _hd83018898_)
                                                (let ((_e83038903_
                                                       (gx#stx-e
                                                        _hd83018898_)))
                                                  (let ((_tl83058908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e83038903_)))
                                                        (_hd83048906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e83038903_))))
                                                    (if (gx#identifier?
                                                         _hd83048906_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd83048906_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83058908_)
                        (let ((_e83068911_ (gx#stx-e _tl83058908_)))
                          (let ((_tl83088916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e83068911_)))
                                (_hd83078914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e83068911_))))
                            (if (gx#stx-null? _tl83088916_)
                                (if (gx#stx-pair/null? _tl83028900_)
                                    (let ((___splice1555415555_
                                           (gx#syntax-split-splice
                                            _tl83028900_
                                            '0)))
                                      (let ((_tl83118921_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1555415555_
                                                '1)))
                                            (_target83098919_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1555415555_
                                                '0))))
                                        (if (gx#stx-null? _tl83118921_)
                                            (letrec ((_loop83128924_
                                                      (lambda (_hd83108927_
                                                               _xarg83168929_)
                                                        (if (gx#stx-pair?
                                                             _hd83108927_)
                                                            (let ((_e83138932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd83108927_)))
                      (let ((_lp-tl83158937_
                             (let () (declare (not safe)) (##cdr _e83138932_)))
                            (_lp-hd83148935_
                             (let ()
                               (declare (not safe))
                               (##car _e83138932_))))
                        (if (gx#stx-pair? _lp-hd83148935_)
                            (let ((_e83188940_ (gx#stx-e _lp-hd83148935_)))
                              (let ((_tl83208945_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e83188940_)))
                                    (_hd83198943_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e83188940_))))
                                (if (gx#identifier? _hd83198943_)
                                    (if (gx#stx-eq? '%#ref _hd83198943_)
                                        (if (gx#stx-pair? _tl83208945_)
                                            (let ((_e83218948_
                                                   (gx#stx-e _tl83208945_)))
                                              (let ((_tl83238953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e83218948_)))
                                                    (_hd83228951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e83218948_))))
                                                (if (gx#stx-null? _tl83238953_)
                                                    (_loop83128924_
                                                     _lp-tl83158937_
                                                     (cons _hd83228951_
                                                           _xarg83168929_))
                                                    (___match1559115592_
                                                     _e82828847_
                                                     _hd82838850_
                                                     _tl82848852_
                                                     ___splice1555215553_
                                                     _target82858855_
                                                     _tl82878857_))))
                                            (___match1559115592_
                                             _e82828847_
                                             _hd82838850_
                                             _tl82848852_
                                             ___splice1555215553_
                                             _target82858855_
                                             _tl82878857_))
                                        (___match1559115592_
                                         _e82828847_
                                         _hd82838850_
                                         _tl82848852_
                                         ___splice1555215553_
                                         _target82858855_
                                         _tl82878857_))
                                    (___match1559115592_
                                     _e82828847_
                                     _hd82838850_
                                     _tl82848852_
                                     ___splice1555215553_
                                     _target82858855_
                                     _tl82878857_))))
                            (___match1559115592_
                             _e82828847_
                             _hd82838850_
                             _tl82848852_
                             ___splice1555215553_
                             _target82858855_
                             _tl82878857_))))
                    (let ((_xarg83178956_ (reverse _xarg83168929_)))
                      (if (gx#stx-null? _tl82968884_)
                          (let ((_L8959_ _xarg83178956_)
                                (_L8960_ _hd83078914_)
                                (_L8961_ _arg82938876_))
                            (if (and (gx#identifier-list?
                                      (foldr1 (lambda (_g89898992_ _g89908994_)
                                                (cons _g89898992_ _g89908994_))
                                              '()
                                              _L8961_))
                                     (fx= (length (foldr1 (lambda (_g89968999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g89979001_)
                    (cons _g89968999_ _g89979001_))
                  '()
                  _L8961_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (length (foldr1 (lambda (_g90039006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90049008_)
                    (cons _g90039006_ _g90049008_))
                  '()
                  _L8959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (andmap2 gx#free-identifier=?
                                              (foldr1 (lambda (_g90109013_
                                                               _g90119015_)
                                                        (cons _g90109013_
                                                              _g90119015_))
                                                      '()
                                                      _L8961_)
                                              (foldr1 (lambda (_g90179020_
                                                               _g90189022_)
                                                        (cons _g90179020_
                                                              _g90189022_))
                                                      '()
                                                      _L8959_))
                                     (not (find (lambda (_g90249026_)
                                                  (gx#free-identifier=?
                                                   _g90249026_
                                                   _L8960_))
                                                (foldr1 (lambda (_g90289031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g90299033_)
                  (cons _g90289031_ _g90299033_))
                '()
                _L8961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (___kont1555015551_ _L8959_ _L8960_ _L8961_)
                                (___match1559115592_
                                 _e82828847_
                                 _hd82838850_
                                 _tl82848852_
                                 ___splice1555215553_
                                 _target82858855_
                                 _tl82878857_)))
                          (___match1559115592_
                           _e82828847_
                           _hd82838850_
                           _tl82848852_
                           ___splice1555215553_
                           _target82858855_
                           _tl82878857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop83128924_
                                               _target83098919_
                                               '()))
                                            (___match1559115592_
                                             _e82828847_
                                             _hd82838850_
                                             _tl82848852_
                                             ___splice1555215553_
                                             _target82858855_
                                             _tl82878857_))))
                                    (___match1559115592_
                                     _e82828847_
                                     _hd82838850_
                                     _tl82848852_
                                     ___splice1555215553_
                                     _target82858855_
                                     _tl82878857_))
                                (___match1559115592_
                                 _e82828847_
                                 _hd82838850_
                                 _tl82848852_
                                 ___splice1555215553_
                                 _target82858855_
                                 _tl82878857_))))
                        (___match1559115592_
                         _e82828847_
                         _hd82838850_
                         _tl82848852_
                         ___splice1555215553_
                         _target82858855_
                         _tl82878857_))
                    (___match1559115592_
                     _e82828847_
                     _hd82838850_
                     _tl82848852_
                     ___splice1555215553_
                     _target82858855_
                     _tl82878857_))
                (___match1559115592_
                 _e82828847_
                 _hd82838850_
                 _tl82848852_
                 ___splice1555215553_
                 _target82858855_
                 _tl82878857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1559115592_
                                                 _e82828847_
                                                 _hd82838850_
                                                 _tl82848852_
                                                 ___splice1555215553_
                                                 _target82858855_
                                                 _tl82878857_))))
                                        (___match1559115592_
                                         _e82828847_
                                         _hd82838850_
                                         _tl82848852_
                                         ___splice1555215553_
                                         _target82858855_
                                         _tl82878857_))
                                    (___match1559115592_
                                     _e82828847_
                                     _hd82838850_
                                     _tl82848852_
                                     ___splice1555215553_
                                     _target82858855_
                                     _tl82878857_))
                                (___match1559115592_
                                 _e82828847_
                                 _hd82838850_
                                 _tl82848852_
                                 ___splice1555215553_
                                 _target82858855_
                                 _tl82878857_))))
                        (___match1559115592_
                         _e82828847_
                         _hd82838850_
                         _tl82848852_
                         ___splice1555215553_
                         _target82858855_
                         _tl82878857_))))
                (___match1559115592_
                 _e82828847_
                 _hd82838850_
                 _tl82848852_
                 ___splice1555215553_
                 _target82858855_
                 _tl82878857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop82888860_ _target82858855_ '())))))
                          (if (gx#stx-pair? ___stx1554815549_)
                              (let ((_e82828847_ (gx#stx-e ___stx1554815549_)))
                                (let ((_tl82848852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e82828847_)))
                                      (_hd82838850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e82828847_))))
                                  (if (gx#stx-pair/null? _hd82838850_)
                                      (let ((___splice1555215553_
                                             (gx#syntax-split-splice
                                              _hd82838850_
                                              '0)))
                                        (let ((_tl82878857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1555215553_
                                                  '1)))
                                              (_target82858855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1555215553_
                                                  '0))))
                                          (if (gx#stx-null? _tl82878857_)
                                              (___match1557915580_
                                               _e82828847_
                                               _hd82838850_
                                               _tl82848852_
                                               ___splice1555215553_
                                               _target82858855_
                                               _tl82878857_)
                                              (___match1559115592_
                                               _e82828847_
                                               _hd82838850_
                                               _tl82848852_
                                               ___splice1555215553_
                                               _target82858855_
                                               _tl82878857_))))
                                      (if (gx#stx-pair? _tl82848852_)
                                          (let ((_e83978454_
                                                 (gx#stx-e _tl82848852_)))
                                            (let ((_tl83998459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e83978454_)))
                                                  (_hd83988457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e83978454_))))
                                              (if (gx#stx-pair? _hd83988457_)
                                                  (let ((_e84008462_
                                                         (gx#stx-e
                                                          _hd83988457_)))
                                                    (let ((_tl84028467_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e84008462_)))
                                                          (_hd84018465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e84008462_))))
                                                      (if (gx#identifier?
                                                           _hd84018465_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd84018465_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl84028467_)
                          (let ((_e84038470_ (gx#stx-e _tl84028467_)))
                            (let ((_tl84058475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e84038470_)))
                                  (_hd84048473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e84038470_))))
                              (if (gx#stx-pair? _hd84048473_)
                                  (let ((_e84068478_ (gx#stx-e _hd84048473_)))
                                    (let ((_tl84088483_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e84068478_)))
                                          (_hd84078481_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e84068478_))))
                                      (if (gx#identifier? _hd84078481_)
                                          (if (gx#stx-eq? '%#ref _hd84078481_)
                                              (if (gx#stx-pair? _tl84088483_)
                                                  (let ((_e84098486_
                                                         (gx#stx-e
                                                          _tl84088483_)))
                                                    (let ((_tl84118491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e84098486_)))
                                                          (_hd84108489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e84098486_))))
                                                      (if (gx#stx-null?
                                                           _tl84118491_)
                                                          (if (gx#stx-pair?
                                                               _tl84058475_)
                                                              (let ((_e84128494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl84058475_)))
                        (let ((_tl84148499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e84128494_)))
                              (_hd84138497_
                               (let ()
                                 (declare (not safe))
                                 (##car _e84128494_))))
                          (if (gx#stx-pair? _hd84138497_)
                              (let ((_e84158502_ (gx#stx-e _hd84138497_)))
                                (let ((_tl84178507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e84158502_)))
                                      (_hd84168505_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e84158502_))))
                                  (if (gx#identifier? _hd84168505_)
                                      (if (gx#stx-eq? '%#ref _hd84168505_)
                                          (if (gx#stx-pair? _tl84178507_)
                                              (let ((_e84188510_
                                                     (gx#stx-e _tl84178507_)))
                                                (let ((_tl84208515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e84188510_)))
                                                      (_hd84198513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e84188510_))))
                                                  (if (gx#stx-null?
                                                       _tl84208515_)
                                                      (if (gx#stx-pair?
                                                           _tl84148499_)
                                                          (let ((_e84218518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl84148499_)))
                    (let ((_tl84238523_
                           (let () (declare (not safe)) (##cdr _e84218518_)))
                          (_hd84228521_
                           (let () (declare (not safe)) (##car _e84218518_))))
                      (if (gx#stx-pair? _hd84228521_)
                          (let ((_e84248526_ (gx#stx-e _hd84228521_)))
                            (let ((_tl84268531_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e84248526_)))
                                  (_hd84258529_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e84248526_))))
                              (if (gx#identifier? _hd84258529_)
                                  (if (gx#stx-eq? '%#ref _hd84258529_)
                                      (if (gx#stx-pair? _tl84268531_)
                                          (let ((_e84278534_
                                                 (gx#stx-e _tl84268531_)))
                                            (let ((_tl84298539_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e84278534_)))
                                                  (_hd84288537_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e84278534_))))
                                              (if (gx#stx-null? _tl84298539_)
                                                  (if (gx#stx-null?
                                                       _tl84238523_)
                                                      (if (gx#stx-null?
                                                           _tl83998459_)
                                                          (___match1568915690_
                                                           _e82828847_
                                                           _hd82838850_
                                                           _tl82848852_
                                                           _e83978454_
                                                           _hd83988457_
                                                           _tl83998459_
                                                           _e84008462_
                                                           _hd84018465_
                                                           _tl84028467_
                                                           _e84038470_
                                                           _hd84048473_
                                                           _tl84058475_
                                                           _e84068478_
                                                           _hd84078481_
                                                           _tl84088483_
                                                           _e84098486_
                                                           _hd84108489_
                                                           _tl84118491_
                                                           _e84128494_
                                                           _hd84138497_
                                                           _tl84148499_
                                                           _e84158502_
                                                           _hd84168505_
                                                           _tl84178507_
                                                           _e84188510_
                                                           _hd84198513_
                                                           _tl84208515_
                                                           _e84218518_
                                                           _hd84228521_
                                                           _tl84238523_
                                                           _e84248526_
                                                           _hd84258529_
                                                           _tl84268531_
                                                           _e84278534_
                                                           _hd84288537_
                                                           _tl84298539_)
                                                          (___kont1556415565_))
                                                      (___kont1556415565_))
                                                  (___kont1556415565_))))
                                          (___kont1556415565_))
                                      (___kont1556415565_))
                                  (___kont1556415565_))))
                          (___kont1556415565_))))
                  (___kont1556415565_))
              (___kont1556415565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1556415565_))
                                          (___kont1556415565_))
                                      (___kont1556415565_))))
                              (___kont1556415565_))))
                      (___kont1556415565_))
                  (___kont1556415565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1556415565_))
                                              (___kont1556415565_))
                                          (___kont1556415565_))))
                                  (___kont1556415565_))))
                          (___kont1556415565_))
                      (___kont1556415565_))
                  (___kont1556415565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1556415565_))))
                                          (___kont1556415565_)))))
                              (___kont1556415565_)))))))
                 (_dispatch-case-e7585_
                  (lambda (_hd7733_ _body7734_)
                    (let* ((_form7736_ (cons _hd7733_ (cons _body7734_ '())))
                           (___stx1569215693_ _form7736_)
                           (_g77407864_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1569215693_))))
                      (let ((___kont1569415695_
                             (lambda (_L8235_ _L8236_ _L8237_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8236_ '())))))
                            (___kont1570015701_
                             (lambda (_L8083_ _L8084_ _L8085_ _L8086_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8083_ '())))))
                            (___kont1570415705_
                             (lambda (_L7949_ _L7950_ _L7951_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L7949_ '()))))))
                        (let* ((___match1580115802_
                                (lambda (_e78307869_
                                         _hd78317872_
                                         _tl78327874_
                                         _e78337877_
                                         _hd78347880_
                                         _tl78357882_
                                         _e78367885_
                                         _hd78377888_
                                         _tl78387890_
                                         _e78397893_
                                         _hd78407896_
                                         _tl78417898_
                                         _e78427901_
                                         _hd78437904_
                                         _tl78447906_
                                         _e78457909_
                                         _hd78467912_
                                         _tl78477914_
                                         _e78487917_
                                         _hd78497920_
                                         _tl78507922_
                                         _e78517925_
                                         _hd78527928_
                                         _tl78537930_
                                         _e78547933_
                                         _hd78557936_
                                         _tl78567938_)
                                  (if (gx#stx-pair? _tl78507922_)
                                      (let ((_e78577941_
                                             (gx#stx-e _tl78507922_)))
                                        (let ((_tl78597946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e78577941_)))
                                              (_hd78587944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e78577941_))))
                                          (if (gx#stx-null? _tl78597946_)
                                              (if (gx#stx-null? _tl78357882_)
                                                  (___kont1570415705_
                                                   _hd78557936_
                                                   _hd78467912_
                                                   _hd78317872_)
                                                  (_g77407864_))
                                              (_g77407864_))))
                                      (_g77407864_))))
                               (___match1573115732_
                                (lambda (_e77917987_
                                         _hd77927990_
                                         _tl77937992_
                                         ___splice1570215703_
                                         _target77947995_
                                         _tl77967997_)
                                  (letrec ((_loop77978000_
                                            (lambda (_hd77958003_
                                                     _arg78018005_)
                                              (if (gx#stx-pair? _hd77958003_)
                                                  (let ((_e77988008_
                                                         (gx#stx-e
                                                          _hd77958003_)))
                                                    (let ((_lp-tl78008013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e77988008_)))
                                                          (_lp-hd77998011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e77988008_))))
                                                      (_loop77978000_
                                                       _lp-tl78008013_
                                                       (cons _lp-hd77998011_
                                                             _arg78018005_))))
                                                  (let ((_arg78028016_
                                                         (reverse _arg78018005_)))
                                                    (if (gx#stx-pair?
                                                         _tl77937992_)
                                                        (let ((_e78038019_
                                                               (gx#stx-e
                                                                _tl77937992_)))
                                                          (let ((_tl78058024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e78038019_)))
                        (_hd78048022_
                         (let () (declare (not safe)) (##car _e78038019_))))
                    (if (gx#stx-pair? _hd78048022_)
                        (let ((_e78068027_ (gx#stx-e _hd78048022_)))
                          (let ((_tl78088032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e78068027_)))
                                (_hd78078030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e78068027_))))
                            (if (gx#identifier? _hd78078030_)
                                (if (gx#stx-eq? '%#call _hd78078030_)
                                    (if (gx#stx-pair? _tl78088032_)
                                        (let ((_e78098035_
                                               (gx#stx-e _tl78088032_)))
                                          (let ((_tl78118040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e78098035_)))
                                                (_hd78108038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e78098035_))))
                                            (if (gx#stx-pair? _hd78108038_)
                                                (let ((_e78128043_
                                                       (gx#stx-e
                                                        _hd78108038_)))
                                                  (let ((_tl78148048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e78128043_)))
                                                        (_hd78138046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e78128043_))))
                                                    (if (gx#identifier?
                                                         _hd78138046_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd78138046_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78148048_)
                        (let ((_e78158051_ (gx#stx-e _tl78148048_)))
                          (let ((_tl78178056_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e78158051_)))
                                (_hd78168054_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e78158051_))))
                            (if (gx#stx-null? _tl78178056_)
                                (if (gx#stx-pair? _tl78118040_)
                                    (let ((_e78188059_
                                           (gx#stx-e _tl78118040_)))
                                      (let ((_tl78208064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e78188059_)))
                                            (_hd78198062_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e78188059_))))
                                        (if (gx#stx-pair? _hd78198062_)
                                            (let ((_e78218067_
                                                   (gx#stx-e _hd78198062_)))
                                              (let ((_tl78238072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e78218067_)))
                                                    (_hd78228070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e78218067_))))
                                                (if (gx#identifier?
                                                     _hd78228070_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd78228070_)
                                                        (if (gx#stx-pair?
                                                             _tl78238072_)
                                                            (let ((_e78248075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl78238072_)))
                      (let ((_tl78268080_
                             (let () (declare (not safe)) (##cdr _e78248075_)))
                            (_hd78258078_
                             (let ()
                               (declare (not safe))
                               (##car _e78248075_))))
                        (if (gx#stx-null? _tl78268080_)
                            (if (gx#stx-null? _tl78058024_)
                                (___kont1570015701_
                                 _hd78258078_
                                 _hd78168054_
                                 _tl77967997_
                                 _arg78028016_)
                                (___match1580115802_
                                 _e77917987_
                                 _hd77927990_
                                 _tl77937992_
                                 _e78038019_
                                 _hd78048022_
                                 _tl78058024_
                                 _e78068027_
                                 _hd78078030_
                                 _tl78088032_
                                 _e78098035_
                                 _hd78108038_
                                 _tl78118040_
                                 _e78128043_
                                 _hd78138046_
                                 _tl78148048_
                                 _e78158051_
                                 _hd78168054_
                                 _tl78178056_
                                 _e78188059_
                                 _hd78198062_
                                 _tl78208064_
                                 _e78218067_
                                 _hd78228070_
                                 _tl78238072_
                                 _e78248075_
                                 _hd78258078_
                                 _tl78268080_))
                            (_g77407864_))))
                    (_g77407864_))
                (_g77407864_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77407864_))))
                                            (_g77407864_))))
                                    (_g77407864_))
                                (_g77407864_))))
                        (_g77407864_))
                    (_g77407864_))
                (_g77407864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77407864_))))
                                        (_g77407864_))
                                    (_g77407864_))
                                (_g77407864_))))
                        (_g77407864_))))
                (_g77407864_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop77978000_ _target77947995_ '()))))
                               (___match1571915720_
                                (lambda (_e77458123_
                                         _hd77468126_
                                         _tl77478128_
                                         ___splice1569615697_
                                         _target77488131_
                                         _tl77508133_)
                                  (letrec ((_loop77518136_
                                            (lambda (_hd77498139_
                                                     _arg77558141_)
                                              (if (gx#stx-pair? _hd77498139_)
                                                  (let ((_e77528144_
                                                         (gx#stx-e
                                                          _hd77498139_)))
                                                    (let ((_lp-tl77548149_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e77528144_)))
                                                          (_lp-hd77538147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e77528144_))))
                                                      (_loop77518136_
                                                       _lp-tl77548149_
                                                       (cons _lp-hd77538147_
                                                             _arg77558141_))))
                                                  (let ((_arg77568152_
                                                         (reverse _arg77558141_)))
                                                    (if (gx#stx-pair?
                                                         _tl77478128_)
                                                        (let ((_e77578155_
                                                               (gx#stx-e
                                                                _tl77478128_)))
                                                          (let ((_tl77598160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e77578155_)))
                        (_hd77588158_
                         (let () (declare (not safe)) (##car _e77578155_))))
                    (if (gx#stx-pair? _hd77588158_)
                        (let ((_e77608163_ (gx#stx-e _hd77588158_)))
                          (let ((_tl77628168_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e77608163_)))
                                (_hd77618166_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e77608163_))))
                            (if (gx#identifier? _hd77618166_)
                                (if (gx#stx-eq? '%#call _hd77618166_)
                                    (if (gx#stx-pair? _tl77628168_)
                                        (let ((_e77638171_
                                               (gx#stx-e _tl77628168_)))
                                          (let ((_tl77658176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e77638171_)))
                                                (_hd77648174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e77638171_))))
                                            (if (gx#stx-pair? _hd77648174_)
                                                (let ((_e77668179_
                                                       (gx#stx-e
                                                        _hd77648174_)))
                                                  (let ((_tl77688184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e77668179_)))
                                                        (_hd77678182_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e77668179_))))
                                                    (if (gx#identifier?
                                                         _hd77678182_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd77678182_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77688184_)
                        (let ((_e77698187_ (gx#stx-e _tl77688184_)))
                          (let ((_tl77718192_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e77698187_)))
                                (_hd77708190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e77698187_))))
                            (if (gx#stx-null? _tl77718192_)
                                (if (gx#stx-pair/null? _tl77658176_)
                                    (let ((___splice1569815699_
                                           (gx#syntax-split-splice
                                            _tl77658176_
                                            '0)))
                                      (let ((_tl77748197_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1569815699_
                                                '1)))
                                            (_target77728195_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1569815699_
                                                '0))))
                                        (if (gx#stx-null? _tl77748197_)
                                            (letrec ((_loop77758200_
                                                      (lambda (_hd77738203_
                                                               _xarg77798205_)
                                                        (if (gx#stx-pair?
                                                             _hd77738203_)
                                                            (let ((_e77768208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd77738203_)))
                      (let ((_lp-tl77788213_
                             (let () (declare (not safe)) (##cdr _e77768208_)))
                            (_lp-hd77778211_
                             (let ()
                               (declare (not safe))
                               (##car _e77768208_))))
                        (if (gx#stx-pair? _lp-hd77778211_)
                            (let ((_e77818216_ (gx#stx-e _lp-hd77778211_)))
                              (let ((_tl77838221_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e77818216_)))
                                    (_hd77828219_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e77818216_))))
                                (if (gx#identifier? _hd77828219_)
                                    (if (gx#stx-eq? '%#ref _hd77828219_)
                                        (if (gx#stx-pair? _tl77838221_)
                                            (let ((_e77848224_
                                                   (gx#stx-e _tl77838221_)))
                                              (let ((_tl77868229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e77848224_)))
                                                    (_hd77858227_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e77848224_))))
                                                (if (gx#stx-null? _tl77868229_)
                                                    (_loop77758200_
                                                     _lp-tl77788213_
                                                     (cons _hd77858227_
                                                           _xarg77798205_))
                                                    (___match1573115732_
                                                     _e77458123_
                                                     _hd77468126_
                                                     _tl77478128_
                                                     ___splice1569615697_
                                                     _target77488131_
                                                     _tl77508133_))))
                                            (___match1573115732_
                                             _e77458123_
                                             _hd77468126_
                                             _tl77478128_
                                             ___splice1569615697_
                                             _target77488131_
                                             _tl77508133_))
                                        (___match1573115732_
                                         _e77458123_
                                         _hd77468126_
                                         _tl77478128_
                                         ___splice1569615697_
                                         _target77488131_
                                         _tl77508133_))
                                    (___match1573115732_
                                     _e77458123_
                                     _hd77468126_
                                     _tl77478128_
                                     ___splice1569615697_
                                     _target77488131_
                                     _tl77508133_))))
                            (___match1573115732_
                             _e77458123_
                             _hd77468126_
                             _tl77478128_
                             ___splice1569615697_
                             _target77488131_
                             _tl77508133_))))
                    (let ((_xarg77808232_ (reverse _xarg77798205_)))
                      (if (gx#stx-null? _tl77598160_)
                          (___kont1569415695_
                           _xarg77808232_
                           _hd77708190_
                           _arg77568152_)
                          (___match1573115732_
                           _e77458123_
                           _hd77468126_
                           _tl77478128_
                           ___splice1569615697_
                           _target77488131_
                           _tl77508133_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop77758200_
                                               _target77728195_
                                               '()))
                                            (___match1573115732_
                                             _e77458123_
                                             _hd77468126_
                                             _tl77478128_
                                             ___splice1569615697_
                                             _target77488131_
                                             _tl77508133_))))
                                    (___match1573115732_
                                     _e77458123_
                                     _hd77468126_
                                     _tl77478128_
                                     ___splice1569615697_
                                     _target77488131_
                                     _tl77508133_))
                                (___match1573115732_
                                 _e77458123_
                                 _hd77468126_
                                 _tl77478128_
                                 ___splice1569615697_
                                 _target77488131_
                                 _tl77508133_))))
                        (___match1573115732_
                         _e77458123_
                         _hd77468126_
                         _tl77478128_
                         ___splice1569615697_
                         _target77488131_
                         _tl77508133_))
                    (___match1573115732_
                     _e77458123_
                     _hd77468126_
                     _tl77478128_
                     ___splice1569615697_
                     _target77488131_
                     _tl77508133_))
                (___match1573115732_
                 _e77458123_
                 _hd77468126_
                 _tl77478128_
                 ___splice1569615697_
                 _target77488131_
                 _tl77508133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1573115732_
                                                 _e77458123_
                                                 _hd77468126_
                                                 _tl77478128_
                                                 ___splice1569615697_
                                                 _target77488131_
                                                 _tl77508133_))))
                                        (___match1573115732_
                                         _e77458123_
                                         _hd77468126_
                                         _tl77478128_
                                         ___splice1569615697_
                                         _target77488131_
                                         _tl77508133_))
                                    (___match1573115732_
                                     _e77458123_
                                     _hd77468126_
                                     _tl77478128_
                                     ___splice1569615697_
                                     _target77488131_
                                     _tl77508133_))
                                (___match1573115732_
                                 _e77458123_
                                 _hd77468126_
                                 _tl77478128_
                                 ___splice1569615697_
                                 _target77488131_
                                 _tl77508133_))))
                        (___match1573115732_
                         _e77458123_
                         _hd77468126_
                         _tl77478128_
                         ___splice1569615697_
                         _target77488131_
                         _tl77508133_))))
                (___match1573115732_
                 _e77458123_
                 _hd77468126_
                 _tl77478128_
                 ___splice1569615697_
                 _target77488131_
                 _tl77508133_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop77518136_ _target77488131_ '())))))
                          (if (gx#stx-pair? ___stx1569215693_)
                              (let ((_e77458123_ (gx#stx-e ___stx1569215693_)))
                                (let ((_tl77478128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e77458123_)))
                                      (_hd77468126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e77458123_))))
                                  (if (gx#stx-pair/null? _hd77468126_)
                                      (let ((___splice1569615697_
                                             (gx#syntax-split-splice
                                              _hd77468126_
                                              '0)))
                                        (let ((_tl77508133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1569615697_
                                                  '1)))
                                              (_target77488131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1569615697_
                                                  '0))))
                                          (if (gx#stx-null? _tl77508133_)
                                              (___match1571915720_
                                               _e77458123_
                                               _hd77468126_
                                               _tl77478128_
                                               ___splice1569615697_
                                               _target77488131_
                                               _tl77508133_)
                                              (___match1573115732_
                                               _e77458123_
                                               _hd77468126_
                                               _tl77478128_
                                               ___splice1569615697_
                                               _target77488131_
                                               _tl77508133_))))
                                      (if (gx#stx-pair? _tl77478128_)
                                          (let ((_e78337877_
                                                 (gx#stx-e _tl77478128_)))
                                            (let ((_tl78357882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e78337877_)))
                                                  (_hd78347880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e78337877_))))
                                              (if (gx#stx-pair? _hd78347880_)
                                                  (let ((_e78367885_
                                                         (gx#stx-e
                                                          _hd78347880_)))
                                                    (let ((_tl78387890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e78367885_)))
                                                          (_hd78377888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e78367885_))))
                                                      (if (gx#identifier?
                                                           _hd78377888_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd78377888_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl78387890_)
                          (let ((_e78397893_ (gx#stx-e _tl78387890_)))
                            (let ((_tl78417898_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e78397893_)))
                                  (_hd78407896_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e78397893_))))
                              (if (gx#stx-pair? _hd78407896_)
                                  (let ((_e78427901_ (gx#stx-e _hd78407896_)))
                                    (let ((_tl78447906_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e78427901_)))
                                          (_hd78437904_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e78427901_))))
                                      (if (gx#identifier? _hd78437904_)
                                          (if (gx#stx-eq? '%#ref _hd78437904_)
                                              (if (gx#stx-pair? _tl78447906_)
                                                  (let ((_e78457909_
                                                         (gx#stx-e
                                                          _tl78447906_)))
                                                    (let ((_tl78477914_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e78457909_)))
                                                          (_hd78467912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e78457909_))))
                                                      (if (gx#stx-null?
                                                           _tl78477914_)
                                                          (if (gx#stx-pair?
                                                               _tl78417898_)
                                                              (let ((_e78487917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78417898_)))
                        (let ((_tl78507922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e78487917_)))
                              (_hd78497920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e78487917_))))
                          (if (gx#stx-pair? _hd78497920_)
                              (let ((_e78517925_ (gx#stx-e _hd78497920_)))
                                (let ((_tl78537930_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e78517925_)))
                                      (_hd78527928_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e78517925_))))
                                  (if (gx#identifier? _hd78527928_)
                                      (if (gx#stx-eq? '%#ref _hd78527928_)
                                          (if (gx#stx-pair? _tl78537930_)
                                              (let ((_e78547933_
                                                     (gx#stx-e _tl78537930_)))
                                                (let ((_tl78567938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e78547933_)))
                                                      (_hd78557936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e78547933_))))
                                                  (if (gx#stx-null?
                                                       _tl78567938_)
                                                      (if (gx#stx-pair?
                                                           _tl78507922_)
                                                          (let ((_e78577941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78507922_)))
                    (let ((_tl78597946_
                           (let () (declare (not safe)) (##cdr _e78577941_)))
                          (_hd78587944_
                           (let () (declare (not safe)) (##car _e78577941_))))
                      (if (gx#stx-null? _tl78597946_)
                          (if (gx#stx-null? _tl78357882_)
                              (___kont1570415705_
                               _hd78557936_
                               _hd78467912_
                               _hd77468126_)
                              (_g77407864_))
                          (_g77407864_))))
                  (_g77407864_))
              (_g77407864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77407864_))
                                          (_g77407864_))
                                      (_g77407864_))))
                              (_g77407864_))))
                      (_g77407864_))
                  (_g77407864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77407864_))
                                              (_g77407864_))
                                          (_g77407864_))))
                                  (_g77407864_))))
                          (_g77407864_))
                      (_g77407864_))
                  (_g77407864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77407864_))))
                                          (_g77407864_)))))
                              (_g77407864_)))))))
                 (_generate17586_
                  (lambda (_args7721_ _arglen7722_ _hd7723_ _body7724_)
                    (let* ((_len7726_ (gx#stx-length _hd7723_))
                           (_condition7728_
                            (if (gx#stx-list? _hd7723_)
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _arglen7722_
                                                (cons _len7726_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _arglen7722_ (cons _len7726_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _len7726_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _arglen7722_
                                                    (cons _len7726_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _arglen7722_ (cons _len7726_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_dispatch7730_
                            (if (_dispatch-case?7584_ _hd7723_ _body7724_)
                                (_dispatch-case-e7585_ _hd7723_ _body7724_)
                                (gxc#generate-runtime-lambda-form
                                 _hd7723_
                                 _body7724_))))
                      (cons _condition7728_
                            (cons (cons 'apply
                                        (cons _dispatch7730_
                                              (cons _args7721_ '())))
                                  '()))))))
          (let* ((_g75887616_
                  (lambda (_g75897613_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75897613_)))
                 (_g75877718_
                  (lambda (_g75897619_)
                    (if (gx#stx-pair? _g75897619_)
                        (let ((_e75927621_ (gx#stx-e _g75897619_)))
                          (let ((_hd75937624_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e75927621_)))
                                (_tl75947626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e75927621_))))
                            (if (gx#stx-pair/null? _tl75947626_)
                                (let ((_g16640_
                                       (gx#syntax-split-splice
                                        _tl75947626_
                                        '0)))
                                  (begin
                                    (let ((_g16641_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g16640_)
                                                 (##vector-length _g16640_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g16641_ 2)))
                                          (error "Context expects 2 values"
                                                 _g16641_)))
                                    (let ((_target75957629_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16640_ 0)))
                                          (_tl75977631_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16640_ 1))))
                                      (if (gx#stx-null? _tl75977631_)
                                          (letrec ((_loop75987634_
                                                    (lambda (_hd75967637_
                                                             _body76027639_
                                                             _hd76037641_)
                                                      (if (gx#stx-pair?
                                                           _hd75967637_)
                                                          (let ((_e75997644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd75967637_)))
                    (let ((_lp-hd76007647_
                           (let () (declare (not safe)) (##car _e75997644_)))
                          (_lp-tl76017649_
                           (let () (declare (not safe)) (##cdr _e75997644_))))
                      (if (gx#stx-pair? _lp-hd76007647_)
                          (let ((_e76067652_ (gx#stx-e _lp-hd76007647_)))
                            (let ((_hd76077655_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e76067652_)))
                                  (_tl76087657_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e76067652_))))
                              (if (gx#stx-pair? _tl76087657_)
                                  (let ((_e76097660_ (gx#stx-e _tl76087657_)))
                                    (let ((_hd76107663_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e76097660_)))
                                          (_tl76117665_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e76097660_))))
                                      (if (gx#stx-null? _tl76117665_)
                                          (_loop75987634_
                                           _lp-tl76017649_
                                           (cons _hd76107663_ _body76027639_)
                                           (cons _hd76077655_ _hd76037641_))
                                          (_g75887616_ _g75897619_))))
                                  (_g75887616_ _g75897619_))))
                          (_g75887616_ _g75897619_))))
                  (let ((_body76047668_ (reverse _body76027639_))
                        (_hd76057670_ (reverse _hd76037641_)))
                    ((lambda (_L7673_ _L7674_)
                       (let ((_args7693_ (gxc#generate-runtime-temporary__0))
                             (_arglen7694_ (gxc#generate-runtime-temporary__0))
                             (_name7695_
                              (let ((_$e7690_
                                     (table-ref
                                      (gxc#current-compile-runtime-names)
                                      _stx7582_
                                      '#f)))
                                (if _$e7690_
                                    _$e7690_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _args7693_
                                     (cons (cons 'let
                                                 (cons (cons (cons _arglen7694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _args7693_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args7693_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (foldr1 cons
                                   (cons (cons 'else
                                               (cons (cons '##raise-wrong-number-of-arguments-exception
                                                           (cons _name7695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _args7693_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (map (lambda (_g76967699_ _g76977701_)
                                          (_generate17586_
                                           _args7693_
                                           _arglen7694_
                                           _g76967699_
                                           _g76977701_))
                                        (foldr1 (lambda (_g77037706_
                                                         _g77047708_)
                                                  (cons _g77037706_
                                                        _g77047708_))
                                                '()
                                                _L7674_)
                                        (foldr1 (lambda (_g77107713_
                                                         _g77117715_)
                                                  (cons _g77107713_
                                                        _g77117715_))
                                                '()
                                                _L7673_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _body76047668_
                     _hd76057670_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop75987634_
                                             _target75957629_
                                             '()
                                             '()))
                                          (_g75887616_ _g75897619_)))))
                                (_g75887616_ _g75897619_))))
                        (_g75887616_ _g75897619_)))))
            (_g75877718_ _stx7582_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx6856_ _compiled-body?6857_)
        (letrec ((_generate-simple6859_
                  (lambda (_hd7569_ _body7570_)
                    (_coalesce-boolean6860_
                     (_coalesce-let*6861_
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd7569_
                       _body7570_
                       _compiled-body?6857_)))))
                 (_coalesce-boolean6860_
                  (lambda (_code7430_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code74317457_ _code7430_)
                               (_else74337465_ (lambda () _code7430_))
                               (_K74357502_
                                (lambda (_expr27468_ _expr17469_ _id7470_)
                                  (let* ((_expr274717479_ _expr27468_)
                                         (_else74737487_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _expr17469_
                                                        (cons _expr27468_
                                                              '())))))
                                         (_K74757492_
                                          (lambda (_exprs7490_)
                                            (cons 'or
                                                  (cons _expr17469_
                                                        _exprs7490_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr274717479_))
                                        (let ((_hd74767495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr274717479_)))
                                              (_tl74777497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr274717479_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd74767495_ 'or))
                                              (let ((_exprs7500_ _tl74777497_))
                                                (_K74757492_ _exprs7500_))
                                              (_else74737487_)))
                                        (_else74737487_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code74317457_))
                              (let ((_hd74367505_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code74317457_)))
                                    (_tl74377507_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code74317457_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd74367505_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl74377507_))
                                        (let ((_hd74387510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl74377507_)))
                                              (_tl74397512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl74377507_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd74387510_))
                                              (let ((_hd74507515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd74387510_)))
                                                    (_tl74517517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd74387510_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd74507515_))
                                                    (let ((_hd74527520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd74507515_)))
                                                          (_tl74537522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd74507515_))))
                                                      (let ((_id7525_
                                                             _hd74527520_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl74537522_))
                                                            (let ((_hd74547527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (##car _tl74537522_)))
                          (_tl74557529_
                           (let () (declare (not safe)) (##cdr _tl74537522_))))
                      (let ((_expr17532_ _hd74547527_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl74557529_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl74517517_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl74397512_))
                                    (let ((_hd74407534_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl74397512_)))
                                          (_tl74417536_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl74397512_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd74407534_))
                                          (let ((_hd74427539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd74407534_)))
                                                (_tl74437541_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd74407534_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd74427539_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl74437541_))
                                                    (let ((_hd74447544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl74437541_)))
                                                          (_tl74457546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl74437541_))))
                                                      (if ((lambda (_g75487550_)
                                                             (eq? _g75487550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7525_))
                   _hd74447544_)
                  (if (let () (declare (not safe)) (##pair? _tl74457546_))
                      (let ((_hd74467553_
                             (let ()
                               (declare (not safe))
                               (##car _tl74457546_)))
                            (_tl74477555_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl74457546_))))
                        (if ((lambda (_g75577559_) (eq? _g75577559_ _id7525_))
                             _hd74467553_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl74477555_))
                                (let ((_hd74487562_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl74477555_)))
                                      (_tl74497564_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl74477555_))))
                                  (let ((_expr27567_ _hd74487562_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl74497564_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl74417536_))
                                            (_K74357502_
                                             _expr27567_
                                             _expr17532_
                                             _id7525_)
                                            (_else74337465_))
                                        (_else74337465_))))
                                (_else74337465_))
                            (_else74337465_)))
                      (_else74337465_))
                  (_else74337465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else74337465_))
                                                (_else74337465_)))
                                          (_else74337465_)))
                                    (_else74337465_))
                                (_else74337465_))
                            (_else74337465_))))
                    (_else74337465_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else74337465_)))
                                              (_else74337465_)))
                                        (_else74337465_))
                                    (_else74337465_)))
                              (_else74337465_)))
                        _code7430_)))
                 (_coalesce-let*6861_
                  (lambda (_code7163_)
                    (let* ((_code71647228_ _code7163_)
                           (_else71687236_ (lambda () _code7163_)))
                      (let ((_K72107381_
                             (lambda (_body7377_ _expr7378_ _id7379_)
                               (cons 'let
                                     (cons (cons (cons _id7379_
                                                       (cons _expr7378_ '()))
                                                 '())
                                           _body7377_))))
                            (_K71877306_
                             (lambda (_body7300_
                                      _expr27301_
                                      _id27302_
                                      _expr17303_
                                      _id17304_)
                               (cons 'let*
                                     (cons (cons (cons _id17304_
                                                       (cons _expr17303_ '()))
                                                 (cons (cons _id27302_
                                                             (cons _expr27301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body7300_))))
                            (_K71707245_
                             (lambda (_body7240_
                                      _bind7241_
                                      _expr17242_
                                      _id17243_)
                               (cons 'let*
                                     (cons (cons (cons _id17243_
                                                       (cons _expr17242_ '()))
                                                 _bind7241_)
                                           _body7240_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code71647228_))
                            (let ((_tl72127386_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code71647228_)))
                                  (_hd72117384_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code71647228_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd72117384_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl72127386_))
                                      (let ((_tl72147391_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl72127386_)))
                                            (_hd72137389_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl72127386_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd72137389_))
                                            (let ((_tl72227396_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd72137389_)))
                                                  (_hd72217394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd72137389_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd72217394_))
                                                  (let ((_tl72247401_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd72217394_)))
                                                        (_hd72237399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd72217394_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl72247401_))
                                                        (let ((_tl72267408_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl72247401_)))
                      (_hd72257406_
                       (let () (declare (not safe)) (##car _tl72247401_))))
                  (if (let () (declare (not safe)) (##null? _tl72267408_))
                      (if (let () (declare (not safe)) (##null? _tl72227396_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl72147391_))
                              (let ((_tl72167415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl72147391_)))
                                    (_hd72157413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl72147391_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd72157413_))
                                    (let ((_tl72187420_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd72157413_)))
                                          (_hd72177418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd72157413_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd72177418_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl72187420_))
                                              (let ((_tl72207425_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl72187420_)))
                                                    (_hd72197423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl72187420_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd72197423_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl72167415_))
                                                        (let ((_id7404_
                                                               _hd72237399_)
                                                              (_expr7411_
                                                               _hd72257406_)
                                                              (_body7428_
                                                               _tl72207425_))
                                                          (_K72107381_
                                                           _body7428_
                                                           _expr7411_
                                                           _id7404_))
                                                        (_else71687236_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd72197423_))
                                                        (let ((_tl71997355_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd72197423_)))
                      (_hd71987353_
                       (let () (declare (not safe)) (##car _hd72197423_))))
                  (if (let () (declare (not safe)) (##pair? _hd71987353_))
                      (let ((_tl72017360_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd71987353_)))
                            (_hd72007358_
                             (let ()
                               (declare (not safe))
                               (##car _hd71987353_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl72017360_))
                            (let ((_tl72037367_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl72017360_)))
                                  (_hd72027365_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl72017360_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl72037367_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl71997355_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl72167415_))
                                          (let ((_id17329_ _hd72237399_)
                                                (_expr17336_ _hd72257406_)
                                                (_id27363_ _hd72007358_)
                                                (_expr27370_ _hd72027365_)
                                                (_body7372_ _tl72207425_))
                                            (_K71877306_
                                             _body7372_
                                             _expr27370_
                                             _id27363_
                                             _expr17336_
                                             _id17329_))
                                          (_else71687236_))
                                      (_else71687236_))
                                  (_else71687236_)))
                            (_else71687236_)))
                      (_else71687236_)))
                (_else71687236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_else71687236_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd72177418_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl72187420_))
                                                  (let ((_tl71807289_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl72187420_)))
                                                        (_hd71797287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl72187420_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl72167415_))
                                                        (let ((_id17268_
                                                               _hd72237399_)
                                                              (_expr17275_
                                                               _hd72257406_)
                                                              (_bind7292_
                                                               _hd71797287_)
                                                              (_body7294_
                                                               _tl71807289_))
                                                          (_K71707245_
                                                           _body7294_
                                                           _bind7292_
                                                           _expr17275_
                                                           _id17268_))
                                                        (_else71687236_)))
                                                  (_else71687236_))
                                              (_else71687236_))))
                                    (_else71687236_)))
                              (_else71687236_))
                          (_else71687236_))
                      (_else71687236_)))
                (_else71687236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else71687236_)))
                                            (_else71687236_)))
                                      (_else71687236_))
                                  (_else71687236_)))
                            (_else71687236_))))))
                 (_generate-values6862_
                  (lambda (_hd6976_ _body6977_)
                    (let _lp6979_ ((_rest6981_ _hd6976_)
                                   (_bind6982_ '())
                                   (_check6983_ '())
                                   (_post6984_ '()))
                      (let* ((___stx1600316004_ _rest6981_)
                             (_g69876998_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1600316004_))))
                        (let ((___kont1600516006_
                               (lambda (_L7025_ _L7026_)
                                 (let* ((___stx1595915960_ _L7026_)
                                        (_g70417066_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1595915960_))))
                                   (let ((___kont1596115962_
                                          (lambda (_L7139_ _L7140_)
                                            (let ((_eid7154_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L7140_))
                                                  (_expr7155_
                                                   (gxc#compile-e _L7139_)))
                                              (_lp6979_
                                               _L7025_
                                               (cons (cons _eid7154_
                                                           (cons _expr7155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6982_)
                                               _check6983_
                                               _post6984_))))
                                         (___kont1596315964_
                                          (lambda (_L7087_ _L7088_)
                                            (let* ((_vals7101_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values7103_
                                                    (gxc#generate-runtime-check-values
                                                     _vals7101_
                                                     _L7088_
                                                     _L7087_))
                                                   (_refs7105_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals7101_
                                                     _L7088_))
                                                   (_expr7107_
                                                    (gxc#compile-e _L7087_)))
                                              (_lp6979_
                                               _L7025_
                                               (cons (cons _vals7101_
                                                           (cons _expr7107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6982_)
                                               (cons _check-values7103_
                                                     _check6983_)
                                               (cons _refs7105_
                                                     _post6984_))))))
                                     (if (gx#stx-pair? ___stx1595915960_)
                                         (let ((_e70457115_
                                                (gx#stx-e ___stx1595915960_)))
                                           (let ((_tl70477120_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e70457115_)))
                                                 (_hd70467118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e70457115_))))
                                             (if (gx#stx-pair? _hd70467118_)
                                                 (let ((_e70487123_
                                                        (gx#stx-e
                                                         _hd70467118_)))
                                                   (let ((_tl70507128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e70487123_)))
                                                         (_hd70497126_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e70487123_))))
                                                     (if (gx#stx-null?
                                                          _tl70507128_)
                                                         (if (gx#stx-pair?
                                                              _tl70477120_)
                                                             (let ((_e70517131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl70477120_)))
                       (let ((_tl70537136_
                              (let ()
                                (declare (not safe))
                                (##cdr _e70517131_)))
                             (_hd70527134_
                              (let ()
                                (declare (not safe))
                                (##car _e70517131_))))
                         (if (gx#stx-null? _tl70537136_)
                             (___kont1596115962_ _hd70527134_ _hd70497126_)
                             (_g70417066_))))
                     (_g70417066_))
                 (if (gx#stx-pair? _tl70477120_)
                     (let ((_e70597079_ (gx#stx-e _tl70477120_)))
                       (let ((_tl70617084_
                              (let ()
                                (declare (not safe))
                                (##cdr _e70597079_)))
                             (_hd70607082_
                              (let ()
                                (declare (not safe))
                                (##car _e70597079_))))
                         (if (gx#stx-null? _tl70617084_)
                             (___kont1596315964_ _hd70607082_ _hd70467118_)
                             (_g70417066_))))
                     (_g70417066_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl70477120_)
                                                     (let ((_e70597079_
                                                            (gx#stx-e
                                                             _tl70477120_)))
                                                       (let ((_tl70617084_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e70597079_)))
                     (_hd70607082_
                      (let () (declare (not safe)) (##car _e70597079_))))
                 (if (gx#stx-null? _tl70617084_)
                     (___kont1596315964_ _hd70607082_ _hd70467118_)
                     (_g70417066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g70417066_)))))
                                         (_g70417066_))))))
                              (___kont1600716008_
                               (lambda ()
                                 (let* ((_body7005_
                                         (if _compiled-body?6857_
                                             _body6977_
                                             (gxc#compile-e _body6977_)))
                                        (_body7007_
                                         (_generate-values-post6863_
                                          _post6984_
                                          _body7005_))
                                        (_body7009_
                                         (_generate-values-check6864_
                                          _check6983_
                                          _body7007_)))
                                   (cons 'let
                                         (cons (reverse _bind6982_)
                                               (cons _body7009_ '())))))))
                          (if (gx#stx-pair? ___stx1600316004_)
                              (let ((_e69917017_ (gx#stx-e ___stx1600316004_)))
                                (let ((_tl69937022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e69917017_)))
                                      (_hd69927020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e69917017_))))
                                  (___kont1600516006_
                                   _tl69937022_
                                   _hd69927020_)))
                              (___kont1600716008_)))))))
                 (_generate-values-post6863_
                  (lambda (_post6935_ _body6936_)
                    (let _lp6938_ ((_rest6940_ _post6935_)
                                   (_body6941_ _body6936_))
                      (let* ((_rest69426950_ _rest6940_)
                             (_else69446958_ (lambda () _body6941_))
                             (_K69466964_
                              (lambda (_rest6961_ _bind6962_)
                                (_lp6938_
                                 _rest6961_
                                 (cons 'let
                                       (cons _bind6962_
                                             (cons _body6941_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest69426950_))
                            (let ((_hd69476967_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest69426950_)))
                                  (_tl69486969_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest69426950_))))
                              (let* ((_bind6972_ _hd69476967_)
                                     (_rest6974_ _tl69486969_))
                                (_K69466964_ _rest6974_ _bind6972_)))
                            (_else69446958_))))))
                 (_generate-values-check6864_
                  (lambda (_check6932_ _body6933_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6933_ '())
                                  (reverse _check6932_))))))
          (let* ((_g68666883_
                  (lambda (_g68676880_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g68676880_)))
                 (_g68656929_
                  (lambda (_g68676886_)
                    (if (gx#stx-pair? _g68676886_)
                        (let ((_e68706888_ (gx#stx-e _g68676886_)))
                          (let ((_hd68716891_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68706888_)))
                                (_tl68726893_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68706888_))))
                            (if (gx#stx-pair? _tl68726893_)
                                (let ((_e68736896_ (gx#stx-e _tl68726893_)))
                                  (let ((_hd68746899_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e68736896_)))
                                        (_tl68756901_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e68736896_))))
                                    (if (gx#stx-pair? _tl68756901_)
                                        (let ((_e68766904_
                                               (gx#stx-e _tl68756901_)))
                                          (let ((_hd68776907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e68766904_)))
                                                (_tl68786909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e68766904_))))
                                            (if (gx#stx-null? _tl68786909_)
                                                ((lambda (_L6912_ _L6913_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L6913_)
                                                       (_generate-simple6859_
                                                        _L6913_
                                                        _L6912_)
                                                       (_generate-values6862_
                                                        _L6913_
                                                        _L6912_)))
                                                 _hd68776907_
                                                 _hd68746899_)
                                                (_g68666883_ _g68676886_))))
                                        (_g68666883_ _g68676886_))))
                                (_g68666883_ _g68676886_))))
                        (_g68666883_ _g68676886_)))))
            (_g68656929_ _stx6856_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_stx7575_)
        (let ((_compiled-body?7577_ '#f))
          (gxc#generate-runtime-let-values%__%
           _stx7575_
           _compiled-body?7577_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g16643_
        (let ((_g16642_ (let () (declare (not safe)) (##length _g16643_))))
          (cond ((let () (declare (not safe)) (##fx= _g16642_ 1))
                 (apply gxc#generate-runtime-let-values%__0 _g16643_))
                ((let () (declare (not safe)) (##fx= _g16642_ 2))
                 (apply gxc#generate-runtime-let-values%__% _g16643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g16643_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals6750_ _hd6751_)
        (let _lp6753_ ((_rest6755_ _hd6751_) (_k6756_ '0) (_r6757_ '()))
          (let* ((___stx1601716018_ _rest6755_)
                 (_g67626779_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1601716018_))))
            (let ((___kont1601916020_
                   (lambda (_L6842_)
                     (_lp6753_ _L6842_ (fx+ _k6756_ '1) _r6757_)))
                  (___kont1602116022_
                   (lambda (_L6815_ _L6816_)
                     (_lp6753_
                      _L6815_
                      (fx+ _k6756_ '1)
                      (cons (cons (gxc#generate-runtime-binding-id _L6816_)
                                  (cons (gxc#generate-runtime-values-ref
                                         _vals6750_
                                         _k6756_
                                         _L6815_)
                                        '()))
                            _r6757_))))
                  (___kont1602316024_
                   (lambda (_L6791_)
                     (foldl1 cons
                             (cons (cons (gxc#generate-runtime-binding-id
                                          _L6791_)
                                         (cons (gxc#generate-runtime-values->list
                                                _vals6750_
                                                _k6756_)
                                               '()))
                                   '())
                             _r6757_)))
                  (___kont1602516026_ (lambda () (reverse _r6757_))))
              (let ((_g67606802_
                     (lambda ()
                       (let ((_L6791_ ___stx1601716018_))
                         (if (gx#identifier? _L6791_)
                             (___kont1602316024_ _L6791_)
                             (___kont1602516026_))))))
                (if (gx#stx-pair? ___stx1601716018_)
                    (let ((_e67656831_ (gx#stx-e ___stx1601716018_)))
                      (let ((_tl67676836_
                             (let () (declare (not safe)) (##cdr _e67656831_)))
                            (_hd67666834_
                             (let ()
                               (declare (not safe))
                               (##car _e67656831_))))
                        (if (gx#stx-datum? _hd67666834_)
                            (let ((_e67686839_ (gx#stx-e _hd67666834_)))
                              (if (equal? _e67686839_ '#f)
                                  (___kont1601916020_ _tl67676836_)
                                  (___kont1602116022_
                                   _tl67676836_
                                   _hd67666834_)))
                            (___kont1602116022_ _tl67676836_ _hd67666834_))))
                    (_g67606802_))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx6432_ _compiled-body?6433_)
        (letrec ((_generate-simple6435_
                  (lambda (_hd6737_ _body6738_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd6737_
                     _body6738_
                     _compiled-body?6433_)))
                 (_generate-values6436_
                  (lambda (_hd6516_ _body6517_)
                    (let _lp6519_ ((_rest6521_ _hd6516_)
                                   (_bind6522_ '())
                                   (_check6523_ '())
                                   (_post6524_ '()))
                      (let* ((___stx1609116092_ _rest6521_)
                             (_g65276538_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1609116092_))))
                        (let ((___kont1609316094_
                               (lambda (_L6565_ _L6566_)
                                 (let* ((___stx1604716048_ _L6566_)
                                        (_g65816606_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1604716048_))))
                                   (let ((___kont1604916050_
                                          (lambda (_L6713_ _L6714_)
                                            (let ((_eid6728_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L6714_))
                                                  (_expr6729_
                                                   (gxc#compile-e _L6713_)))
                                              (_lp6519_
                                               _L6565_
                                               (cons (cons _eid6728_
                                                           (cons _expr6729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6522_)
                                               _check6523_
                                               _post6524_))))
                                         (___kont1605116052_
                                          (lambda (_L6627_ _L6628_)
                                            (let* ((_vals6641_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values6643_
                                                    (gxc#generate-runtime-check-values
                                                     _vals6641_
                                                     _L6628_
                                                     _L6627_))
                                                   (_refs6645_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals6641_
                                                     _L6628_))
                                                   (_expr6647_
                                                    (gxc#compile-e _L6627_)))
                                              (_lp6519_
                                               _L6565_
                                               (foldl1 cons
                                                       (cons (cons _vals6641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6647_ '()))
                     _bind6522_)
               (map (lambda (_e66496651_)
                      (let* ((_g66536662_ _e66496651_)
                             (_E66556666_
                              (lambda ()
                                (error '"No clause matching" _g66536662_)))
                             (_K66566671_
                              (lambda (_eid6669_)
                                (cons _eid6669_ (cons '#!void '())))))
                        (if (let () (declare (not safe)) (##pair? _g66536662_))
                            (let ((_hd66576674_
                                   (let ()
                                     (declare (not safe))
                                     (##car _g66536662_)))
                                  (_tl66586676_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _g66536662_))))
                              (let ((_eid6679_ _hd66576674_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl66586676_))
                                    (let ((_tl66606681_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl66586676_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl66606681_))
                                          (_K66566671_ _eid6679_)
                                          (_E66556666_)))
                                    (_E66556666_))))
                            (_E66556666_))))
                    _refs6645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values6643_
                                                     _check6523_)
                                               (foldl1 cons
                                                       _refs6645_
                                                       _post6524_))))))
                                     (if (gx#stx-pair? ___stx1604716048_)
                                         (let ((_e65856689_
                                                (gx#stx-e ___stx1604716048_)))
                                           (let ((_tl65876694_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e65856689_)))
                                                 (_hd65866692_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e65856689_))))
                                             (if (gx#stx-pair? _hd65866692_)
                                                 (let ((_e65886697_
                                                        (gx#stx-e
                                                         _hd65866692_)))
                                                   (let ((_tl65906702_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e65886697_)))
                                                         (_hd65896700_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e65886697_))))
                                                     (if (gx#stx-null?
                                                          _tl65906702_)
                                                         (if (gx#stx-pair?
                                                              _tl65876694_)
                                                             (let ((_e65916705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl65876694_)))
                       (let ((_tl65936710_
                              (let ()
                                (declare (not safe))
                                (##cdr _e65916705_)))
                             (_hd65926708_
                              (let ()
                                (declare (not safe))
                                (##car _e65916705_))))
                         (if (gx#stx-null? _tl65936710_)
                             (___kont1604916050_ _hd65926708_ _hd65896700_)
                             (_g65816606_))))
                     (_g65816606_))
                 (if (gx#stx-pair? _tl65876694_)
                     (let ((_e65996619_ (gx#stx-e _tl65876694_)))
                       (let ((_tl66016624_
                              (let ()
                                (declare (not safe))
                                (##cdr _e65996619_)))
                             (_hd66006622_
                              (let ()
                                (declare (not safe))
                                (##car _e65996619_))))
                         (if (gx#stx-null? _tl66016624_)
                             (___kont1605116052_ _hd66006622_ _hd65866692_)
                             (_g65816606_))))
                     (_g65816606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl65876694_)
                                                     (let ((_e65996619_
                                                            (gx#stx-e
                                                             _tl65876694_)))
                                                       (let ((_tl66016624_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e65996619_)))
                     (_hd66006622_
                      (let () (declare (not safe)) (##car _e65996619_))))
                 (if (gx#stx-null? _tl66016624_)
                     (___kont1605116052_ _hd66006622_ _hd65866692_)
                     (_g65816606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65816606_)))))
                                         (_g65816606_))))))
                              (___kont1609516096_
                               (lambda ()
                                 (let* ((_body6545_
                                         (if _compiled-body?6433_
                                             _body6517_
                                             (gxc#compile-e _body6517_)))
                                        (_body6547_
                                         (_generate-values-post6438_
                                          _post6524_
                                          _body6545_))
                                        (_body6549_
                                         (_generate-values-check6437_
                                          _check6523_
                                          _body6547_)))
                                   (cons 'letrec
                                         (cons (reverse _bind6522_)
                                               (cons _body6549_ '())))))))
                          (if (gx#stx-pair? ___stx1609116092_)
                              (let ((_e65316557_ (gx#stx-e ___stx1609116092_)))
                                (let ((_tl65336562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65316557_)))
                                      (_hd65326560_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65316557_))))
                                  (___kont1609316094_
                                   _tl65336562_
                                   _hd65326560_)))
                              (___kont1609516096_)))))))
                 (_generate-values-check6437_
                  (lambda (_check6513_ _body6514_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6514_ '())
                                  (reverse _check6513_)))))
                 (_generate-values-post6438_
                  (lambda (_post6506_ _body6507_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6507_ '())
                                  (map (lambda (_g65086510_)
                                         (cons 'set! _g65086510_))
                                       (reverse _post6506_)))))))
          (let* ((_g64406457_
                  (lambda (_g64416454_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g64416454_)))
                 (_g64396503_
                  (lambda (_g64416460_)
                    (if (gx#stx-pair? _g64416460_)
                        (let ((_e64446462_ (gx#stx-e _g64416460_)))
                          (let ((_hd64456465_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e64446462_)))
                                (_tl64466467_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e64446462_))))
                            (if (gx#stx-pair? _tl64466467_)
                                (let ((_e64476470_ (gx#stx-e _tl64466467_)))
                                  (let ((_hd64486473_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e64476470_)))
                                        (_tl64496475_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e64476470_))))
                                    (if (gx#stx-pair? _tl64496475_)
                                        (let ((_e64506478_
                                               (gx#stx-e _tl64496475_)))
                                          (let ((_hd64516481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e64506478_)))
                                                (_tl64526483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e64506478_))))
                                            (if (gx#stx-null? _tl64526483_)
                                                ((lambda (_L6486_ _L6487_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L6487_)
                                                       (_generate-simple6435_
                                                        _L6487_
                                                        _L6486_)
                                                       (_generate-values6436_
                                                        _L6487_
                                                        _L6486_)))
                                                 _hd64516481_
                                                 _hd64486473_)
                                                (_g64406457_ _g64416460_))))
                                        (_g64406457_ _g64416460_))))
                                (_g64406457_ _g64416460_))))
                        (_g64406457_ _g64416460_)))))
            (_g64396503_ _stx6432_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_stx6743_)
        (let ((_compiled-body?6745_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _stx6743_
           _compiled-body?6745_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g16645_
        (let ((_g16644_ (let () (declare (not safe)) (##length _g16645_))))
          (cond ((let () (declare (not safe)) (##fx= _g16644_ 1))
                 (apply gxc#generate-runtime-letrec-values%__0 _g16645_))
                ((let () (declare (not safe)) (##fx= _g16644_ 2))
                 (apply gxc#generate-runtime-letrec-values%__% _g16645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g16645_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_stx6014_)
        (letrec ((_generate-values6016_
                  (lambda (_hd6259_ _body6260_)
                    (let _lp6262_ ((_rest6264_ _hd6259_) (_bind6265_ '()))
                      (let* ((_rest62666274_ _rest6264_)
                             (_else62686285_
                              (lambda ()
                                (let ((_bind6282_ (reverse _bind6265_))
                                      (_body6283_ (gxc#compile-e _body6260_)))
                                  (cons 'letrec*
                                        (cons _bind6282_
                                              (cons _body6283_ '()))))))
                             (_K62706419_
                              (lambda (_rest6288_ _hd-bind6289_)
                                (let* ((___stx1610516106_ _hd-bind6289_)
                                       (_g62926317_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1610516106_))))
                                  (let ((___kont1610716108_
                                         (lambda (_L6398_ _L6399_)
                                           (let ((_eid6413_
                                                  (gxc#generate-runtime-binding-id*
                                                   _L6399_))
                                                 (_expr6414_
                                                  (gxc#compile-e _L6398_)))
                                             (_lp6262_
                                              _rest6288_
                                              (cons (cons _eid6413_
                                                          (cons _expr6414_
                                                                '()))
                                                    _bind6265_)))))
                                        (___kont1610916110_
                                         (lambda (_L6338_ _L6339_)
                                           (let* ((_vals6358_
                                                   (gxc#generate-runtime-temporary__0))
                                                  (_tmp6360_
                                                   (gxc#generate-runtime-temporary__0))
                                                  (_check-values6362_
                                                   (gxc#generate-runtime-check-values
                                                    _tmp6360_
                                                    _L6339_
                                                    _L6338_))
                                                  (_refs6364_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _vals6358_
                                                    _L6339_))
                                                  (_expr6366_
                                                   (gxc#compile-e _L6338_)))
                                             (_lp6262_
                                              _rest6288_
                                              (foldl1 cons
                                                      (cons (cons _vals6358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons 'let
                                      (cons (cons (cons _tmp6360_
                                                        (cons _expr6366_ '()))
                                                  '())
                                            (cons _check-values6362_
                                                  (cons _tmp6360_ '()))))
                                '()))
                    _bind6265_)
              _refs6364_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (gx#stx-pair? ___stx1610516106_)
                                        (let ((_e62966374_
                                               (gx#stx-e ___stx1610516106_)))
                                          (let ((_tl62986379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e62966374_)))
                                                (_hd62976377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e62966374_))))
                                            (if (gx#stx-pair? _hd62976377_)
                                                (let ((_e62996382_
                                                       (gx#stx-e
                                                        _hd62976377_)))
                                                  (let ((_tl63016387_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e62996382_)))
                                                        (_hd63006385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e62996382_))))
                                                    (if (gx#stx-null?
                                                         _tl63016387_)
                                                        (if (gx#stx-pair?
                                                             _tl62986379_)
                                                            (let ((_e63026390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl62986379_)))
                      (let ((_tl63046395_
                             (let () (declare (not safe)) (##cdr _e63026390_)))
                            (_hd63036393_
                             (let ()
                               (declare (not safe))
                               (##car _e63026390_))))
                        (if (gx#stx-null? _tl63046395_)
                            (___kont1610716108_ _hd63036393_ _hd63006385_)
                            (_g62926317_))))
                    (_g62926317_))
                (if (gx#stx-pair? _tl62986379_)
                    (let ((_e63106330_ (gx#stx-e _tl62986379_)))
                      (let ((_tl63126335_
                             (let () (declare (not safe)) (##cdr _e63106330_)))
                            (_hd63116333_
                             (let ()
                               (declare (not safe))
                               (##car _e63106330_))))
                        (if (gx#stx-null? _tl63126335_)
                            (___kont1610916110_ _hd63116333_ _hd62976377_)
                            (_g62926317_))))
                    (_g62926317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair? _tl62986379_)
                                                    (let ((_e63106330_
                                                           (gx#stx-e
                                                            _tl62986379_)))
                                                      (let ((_tl63126335_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e63106330_)))
                    (_hd63116333_
                     (let () (declare (not safe)) (##car _e63106330_))))
                (if (gx#stx-null? _tl63126335_)
                    (___kont1610916110_ _hd63116333_ _hd62976377_)
                    (_g62926317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62926317_)))))
                                        (_g62926317_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest62666274_))
                            (let ((_hd62716422_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest62666274_)))
                                  (_tl62726424_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest62666274_))))
                              (let* ((_hd-bind6427_ _hd62716422_)
                                     (_rest6429_ _tl62726424_))
                                (_K62706419_ _rest6429_ _hd-bind6427_)))
                            (_else62686285_))))))
                 (_generate-letrec?6017_
                  (lambda (_hd6149_)
                    (let _lp6151_ ((_rest6153_ _hd6149_))
                      (let* ((_rest61546162_ _rest6153_)
                             (_else61566170_ (lambda () '#t))
                             (_K61586247_
                              (lambda (_rest6173_ _hd-bind6174_)
                                (let* ((_g61766193_
                                        (lambda (_g61776190_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g61776190_)))
                                       (_g61756244_
                                        (lambda (_g61776196_)
                                          (if (gx#stx-pair? _g61776196_)
                                              (let ((_e61806198_
                                                     (gx#stx-e _g61776196_)))
                                                (let ((_hd61816201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e61806198_)))
                                                      (_tl61826203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e61806198_))))
                                                  (if (gx#stx-pair?
                                                       _hd61816201_)
                                                      (let ((_e61836206_
                                                             (gx#stx-e
                                                              _hd61816201_)))
                                                        (let ((_hd61846209_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e61836206_)))
                      (_tl61856211_
                       (let () (declare (not safe)) (##cdr _e61836206_))))
                  (if (gx#stx-null? _tl61856211_)
                      (if (gx#stx-pair? _tl61826203_)
                          (let ((_e61866214_ (gx#stx-e _tl61826203_)))
                            (let ((_hd61876217_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e61866214_)))
                                  (_tl61886219_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e61866214_))))
                              (if (gx#stx-null? _tl61886219_)
                                  ((lambda (_L6222_ _L6223_)
                                     (if (_is-lambda-expr?6018_ _L6222_)
                                         (_lp6151_ _rest6173_)
                                         '#f))
                                   _hd61876217_
                                   _hd61846209_)
                                  (_g61766193_ _g61776196_))))
                          (_g61766193_ _g61776196_))
                      (_g61766193_ _g61776196_))))
              (_g61766193_ _g61776196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g61766193_ _g61776196_)))))
                                  (_g61756244_ _hd-bind6174_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest61546162_))
                            (let ((_hd61596250_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest61546162_)))
                                  (_tl61606252_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest61546162_))))
                              (let* ((_hd-bind6255_ _hd61596250_)
                                     (_rest6257_ _tl61606252_))
                                (_K61586247_ _rest6257_ _hd-bind6255_)))
                            (_else61566170_))))))
                 (_is-lambda-expr?6018_
                  (lambda (_expr6086_)
                    (let* ((___stx1614916150_ _expr6086_)
                           (_g60896103_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1614916150_))))
                      (let ((___kont1615116152_ (lambda (_L6131_ _L6132_) '#t))
                            (___kont1615316154_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx1614916150_)
                            (let ((_e60936115_ (gx#stx-e ___stx1614916150_)))
                              (let ((_tl60956120_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e60936115_)))
                                    (_hd60946118_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e60936115_))))
                                (if (gx#identifier? _hd60946118_)
                                    (if (gx#stx-eq? '%#lambda _hd60946118_)
                                        (if (gx#stx-pair? _tl60956120_)
                                            (let ((_e60966123_
                                                   (gx#stx-e _tl60956120_)))
                                              (let ((_tl60986128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e60966123_)))
                                                    (_hd60976126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e60966123_))))
                                                (___kont1615116152_
                                                 _tl60986128_
                                                 _hd60976126_)))
                                            (___kont1615316154_))
                                        (___kont1615316154_))
                                    (___kont1615316154_))))
                            (___kont1615316154_)))))))
          (let* ((_g60206037_
                  (lambda (_g60216034_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g60216034_)))
                 (_g60196083_
                  (lambda (_g60216040_)
                    (if (gx#stx-pair? _g60216040_)
                        (let ((_e60246042_ (gx#stx-e _g60216040_)))
                          (let ((_hd60256045_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e60246042_)))
                                (_tl60266047_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e60246042_))))
                            (if (gx#stx-pair? _tl60266047_)
                                (let ((_e60276050_ (gx#stx-e _tl60266047_)))
                                  (let ((_hd60286053_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e60276050_)))
                                        (_tl60296055_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e60276050_))))
                                    (if (gx#stx-pair? _tl60296055_)
                                        (let ((_e60306058_
                                               (gx#stx-e _tl60296055_)))
                                          (let ((_hd60316061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e60306058_)))
                                                (_tl60326063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e60306058_))))
                                            (if (gx#stx-null? _tl60326063_)
                                                ((lambda (_L6066_ _L6067_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L6067_)
                                                       (if (_generate-letrec?6017_
                                                            _L6067_)
                                                           (gxc#generate-runtime-simple-let
                                                            'letrec
                                                            _L6067_
                                                            _L6066_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            'letrec*
                                                            _L6067_
                                                            _L6066_
                                                            '#f))
                                                       (_generate-values6016_
                                                        _L6067_
                                                        _L6066_)))
                                                 _hd60316061_
                                                 _hd60286053_)
                                                (_g60206037_ _g60216040_))))
                                        (_g60206037_ _g60216040_))))
                                (_g60206037_ _g60216040_))))
                        (_g60206037_ _g60216040_)))))
            (_g60196083_ _stx6014_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd5951_)
        (let _lp5953_ ((_rest5955_ _hd5951_))
          (let* ((_rest59565972_ _rest5955_) (_else59595980_ (lambda () '#f)))
            (let ((_K59625993_ (lambda (_rest5991_) (_lp5953_ _rest5991_)))
                  (_K59615985_ (lambda () '#t)))
              (let ((_try-match59585988_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest59565972_))
                           (_K59615985_)
                           (_else59595980_)))))
                (if (let () (declare (not safe)) (##pair? _rest59565972_))
                    (let ((_tl59645998_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest59565972_)))
                          (_hd59635996_
                           (let ()
                             (declare (not safe))
                             (##car _rest59565972_))))
                      (if (let () (declare (not safe)) (##pair? _hd59635996_))
                          (let ((_tl59666003_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd59635996_)))
                                (_hd59656001_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd59635996_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd59656001_))
                                (let ((_tl59706006_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd59656001_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl59706006_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl59666003_))
                                          (let ((_tl59686009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl59666003_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl59686009_))
                                                (let ((_rest6012_
                                                       _tl59645998_))
                                                  (_lp5953_ _rest6012_))
                                                (_else59595980_)))
                                          (_else59595980_))
                                      (_else59595980_)))
                                (_else59595980_)))
                          (_else59595980_)))
                    (_try-match59585988_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_form5863_ _hd5864_ _body5865_ _compiled-body?5866_)
        (letrec ((_generate15868_
                  (lambda (_bind5907_)
                    (let* ((_bind59085919_ _bind5907_)
                           (_E59105923_
                            (lambda ()
                              (error '"No clause matching" _bind59085919_)))
                           (_K59115929_
                            (lambda (_expr5926_ _id5927_)
                              (cons (gxc#generate-runtime-binding-id* _id5927_)
                                    (cons (gxc#compile-e _expr5926_) '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind59085919_))
                          (let ((_hd59125932_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind59085919_)))
                                (_tl59135934_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind59085919_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd59125932_))
                                (let ((_hd59165937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd59125932_)))
                                      (_tl59175939_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd59125932_))))
                                  (let ((_id5942_ _hd59165937_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl59175939_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl59135934_))
                                            (let ((_hd59145944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl59135934_)))
                                                  (_tl59155946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl59135934_))))
                                              (let ((_expr5949_ _hd59145944_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl59155946_))
                                                    (_K59115929_
                                                     _expr5949_
                                                     _id5942_)
                                                    (_E59105923_))))
                                            (_E59105923_))
                                        (_E59105923_))))
                                (_E59105923_)))
                          (_E59105923_))))))
          (let* ((_bind5870_ (map _generate15868_ _hd5864_))
                 (_body5872_
                  (if _compiled-body?5866_
                      _body5865_
                      (gxc#compile-e _body5865_)))
                 (_body5904_
                  (let* ((_body58735881_ _body5872_)
                         (_else58755889_ (lambda () (cons _body5872_ '())))
                         (_K58775894_ (lambda (_exprs5892_) _exprs5892_)))
                    (if (let () (declare (not safe)) (##pair? _body58735881_))
                        (let ((_hd58785897_
                               (let ()
                                 (declare (not safe))
                                 (##car _body58735881_)))
                              (_tl58795899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body58735881_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd58785897_ 'begin))
                              (let ((_exprs5902_ _tl58795899_))
                                (_K58775894_ _exprs5902_))
                              (_else58755889_)))
                        (_else58755889_)))))
            (cons _form5863_ (cons _bind5870_ _body5904_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_stx5771_)
        (letrec ((_generate15773_
                  (lambda (_datum5825_)
                    (if (or (null? _datum5825_)
                            (interned-symbol? _datum5825_)
                            (gx#self-quoting? _datum5825_)
                            (eof-object? _datum5825_))
                        _datum5825_
                        (if (uninterned-symbol? _datum5825_)
                            (gxc#generate-runtime-gensym-reference__%
                             _datum5825_
                             '#t)
                            (if (pair? _datum5825_)
                                (cons (_generate15773_ (car _datum5825_))
                                      (_generate15773_ (cdr _datum5825_)))
                                (if (box? _datum5825_)
                                    (box (_generate15773_ (unbox _datum5825_)))
                                    (if (vector? _datum5825_)
                                        (vector-map
                                         _generate15773_
                                         _datum5825_)
                                        (if (or (s8vector? _datum5825_)
                                                (u8vector? _datum5825_)
                                                (s16vector? _datum5825_)
                                                (u16vector? _datum5825_)
                                                (s32vector? _datum5825_)
                                                (u32vector? _datum5825_)
                                                (s64vector? _datum5825_)
                                                (u64vector? _datum5825_)
                                                (f32vector? _datum5825_)
                                                (f64vector? _datum5825_))
                                            _datum5825_
                                            (gxc#raise-compile-error
                                             '"Cannot compile non-primitive quote"
                                             _stx5771_))))))))))
          (let* ((_g57755788_
                  (lambda (_g57765785_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g57765785_)))
                 (_g57745822_
                  (lambda (_g57765791_)
                    (if (gx#stx-pair? _g57765791_)
                        (let ((_e57785793_ (gx#stx-e _g57765791_)))
                          (let ((_hd57795796_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e57785793_)))
                                (_tl57805798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e57785793_))))
                            (if (gx#stx-pair? _tl57805798_)
                                (let ((_e57815801_ (gx#stx-e _tl57805798_)))
                                  (let ((_hd57825804_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e57815801_)))
                                        (_tl57835806_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e57815801_))))
                                    (if (gx#stx-null? _tl57835806_)
                                        ((lambda (_L5809_)
                                           (cons 'quote
                                                 (cons (_generate15773_
                                                        (gx#stx-e _L5809_))
                                                       '())))
                                         _hd57825804_)
                                        (_g57755788_ _g57765791_))))
                                (_g57755788_ _g57765791_))))
                        (_g57755788_ _g57765791_)))))
            (_g57745822_ _stx5771_)))))
    (define gxc#generate-runtime-call%
      (lambda (_stx5289_)
        (letrec ((_compile-call5291_
                  (lambda (_rator5515_ _rands5516_)
                    (let ((_rator5518_ (gxc#compile-e _rator5515_))
                          (_rands5519_ (map gxc#compile-e _rands5516_)))
                      (let* ((___stx1619616197_ _rator5518_)
                             (_g55225574_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1619616197_))))
                        (let ((___kont1619816199_
                               (lambda (_L5698_ _L5699_ _L5700_ _L5701_)
                                 (if (fx= (length _rands5519_)
                                          (length (foldr1 (lambda (_g57375740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g57385742_)
                    (cons _g57375740_ _g57385742_))
                  '()
                  _L5700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_id5745_ _L5701_)
                                            (_args5754_
                                             (foldr1 (lambda (_g57465749_
                                                              _g57475751_)
                                                       (cons _g57465749_
                                                             _g57475751_))
                                                     '()
                                                     _L5700_))
                                            (_body5763_
                                             (foldr1 (lambda (_g57555758_
                                                              _g57565760_)
                                                       (cons _g57555758_
                                                             _g57565760_))
                                                     '()
                                                     _L5699_))
                                            (_init5765_
                                             (map list
                                                  _args5754_
                                                  _rands5519_)))
                                       (cons 'let
                                             (cons _id5745_
                                                   (cons _init5765_
                                                         _body5763_))))
                                     (gxc#raise-compile-error
                                      '"Illegal loop application; arity mismatch"
                                      _stx5289_))))
                              (___kont1620416205_
                               (lambda () (cons _rator5518_ _rands5519_))))
                          (let ((___match1626316264_
                                 (lambda (_e55285586_
                                          _hd55295589_
                                          _tl55305591_
                                          _e55315594_
                                          _hd55325597_
                                          _tl55335599_
                                          _e55345602_
                                          _hd55355605_
                                          _tl55365607_
                                          _e55375610_
                                          _hd55385613_
                                          _tl55395615_
                                          _e55405618_
                                          _hd55415621_
                                          _tl55425623_
                                          _e55435626_
                                          _hd55445629_
                                          _tl55455631_
                                          _e55465634_
                                          _hd55475637_
                                          _tl55485639_
                                          ___splice1620016201_
                                          _target55495642_
                                          _tl55515644_)
                                   (letrec ((_loop55525647_
                                             (lambda (_hd55505650_
                                                      _arg55565652_)
                                               (if (gx#stx-pair? _hd55505650_)
                                                   (let ((_e55535655_
                                                          (gx#stx-e
                                                           _hd55505650_)))
                                                     (let ((_lp-tl55555660_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e55535655_)))
                                                           (_lp-hd55545658_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e55535655_))))
                                                       (_loop55525647_
                                                        _lp-tl55555660_
                                                        (cons _lp-hd55545658_
                                                              _arg55565652_))))
                                                   (let ((_arg55575663_
                                                          (reverse _arg55565652_)))
                                                     (if (gx#stx-pair/null?
                                                          _tl55485639_)
                                                         (let ((___splice1620216203_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl55485639_
                         '0)))
                   (let ((_tl55605668_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1620216203_ '1)))
                         (_target55585666_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1620216203_ '0))))
                     (if (gx#stx-null? _tl55605668_)
                         (letrec ((_loop55615671_
                                   (lambda (_hd55595674_ _body55655676_)
                                     (if (gx#stx-pair? _hd55595674_)
                                         (let ((_e55625679_
                                                (gx#stx-e _hd55595674_)))
                                           (let ((_lp-tl55645684_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e55625679_)))
                                                 (_lp-hd55635682_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e55625679_))))
                                             (_loop55615671_
                                              _lp-tl55645684_
                                              (cons _lp-hd55635682_
                                                    _body55655676_))))
                                         (let ((_body55665687_
                                                (reverse _body55655676_)))
                                           (if (gx#stx-null? _tl55425623_)
                                               (if (gx#stx-null? _tl55365607_)
                                                   (if (gx#stx-pair?
                                                        _tl55335599_)
                                                       (let ((_e55675690_
                                                              (gx#stx-e
                                                               _tl55335599_)))
                                                         (let ((_tl55695695_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e55675690_)))
                       (_hd55685693_
                        (let () (declare (not safe)) (##car _e55675690_))))
                   (if (gx#stx-null? _tl55695695_)
                       (let ((_L5698_ _hd55685693_)
                             (_L5699_ _body55665687_)
                             (_L5700_ _arg55575663_)
                             (_L5701_ _hd55385613_))
                         (if (eq? _L5701_ _L5698_)
                             (___kont1619816199_
                              _L5698_
                              _L5699_
                              _L5700_
                              _L5701_)
                             (___kont1620416205_)))
                       (___kont1620416205_))))
               (___kont1620416205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1620416205_))
                                               (___kont1620416205_)))))))
                           (_loop55615671_ _target55585666_ '()))
                         (___kont1620416205_))))
                 (___kont1620416205_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop55525647_ _target55495642_ '())))))
                            (if (gx#stx-pair? ___stx1619616197_)
                                (let ((_e55285586_
                                       (gx#stx-e ___stx1619616197_)))
                                  (let ((_tl55305591_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e55285586_)))
                                        (_hd55295589_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e55285586_))))
                                    (if (gx#identifier? _hd55295589_)
                                        (if (gx#stx-eq? 'letrec _hd55295589_)
                                            (if (gx#stx-pair? _tl55305591_)
                                                (let ((_e55315594_
                                                       (gx#stx-e
                                                        _tl55305591_)))
                                                  (let ((_tl55335599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e55315594_)))
                                                        (_hd55325597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e55315594_))))
                                                    (if (gx#stx-pair?
                                                         _hd55325597_)
                                                        (let ((_e55345602_
                                                               (gx#stx-e
                                                                _hd55325597_)))
                                                          (let ((_tl55365607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e55345602_)))
                        (_hd55355605_
                         (let () (declare (not safe)) (##car _e55345602_))))
                    (if (gx#stx-pair? _hd55355605_)
                        (let ((_e55375610_ (gx#stx-e _hd55355605_)))
                          (let ((_tl55395615_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e55375610_)))
                                (_hd55385613_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e55375610_))))
                            (if (gx#stx-pair? _tl55395615_)
                                (let ((_e55405618_ (gx#stx-e _tl55395615_)))
                                  (let ((_tl55425623_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e55405618_)))
                                        (_hd55415621_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e55405618_))))
                                    (if (gx#stx-pair? _hd55415621_)
                                        (let ((_e55435626_
                                               (gx#stx-e _hd55415621_)))
                                          (let ((_tl55455631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e55435626_)))
                                                (_hd55445629_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e55435626_))))
                                            (if (gx#identifier? _hd55445629_)
                                                (if (gx#stx-eq?
                                                     'lambda
                                                     _hd55445629_)
                                                    (if (gx#stx-pair?
                                                         _tl55455631_)
                                                        (let ((_e55465634_
                                                               (gx#stx-e
                                                                _tl55455631_)))
                                                          (let ((_tl55485639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e55465634_)))
                        (_hd55475637_
                         (let () (declare (not safe)) (##car _e55465634_))))
                    (if (gx#stx-pair/null? _hd55475637_)
                        (let ((___splice1620016201_
                               (gx#syntax-split-splice _hd55475637_ '0)))
                          (let ((_tl55515644_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1620016201_ '1)))
                                (_target55495642_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1620016201_ '0))))
                            (if (gx#stx-null? _tl55515644_)
                                (___match1626316264_
                                 _e55285586_
                                 _hd55295589_
                                 _tl55305591_
                                 _e55315594_
                                 _hd55325597_
                                 _tl55335599_
                                 _e55345602_
                                 _hd55355605_
                                 _tl55365607_
                                 _e55375610_
                                 _hd55385613_
                                 _tl55395615_
                                 _e55405618_
                                 _hd55415621_
                                 _tl55425623_
                                 _e55435626_
                                 _hd55445629_
                                 _tl55455631_
                                 _e55465634_
                                 _hd55475637_
                                 _tl55485639_
                                 ___splice1620016201_
                                 _target55495642_
                                 _tl55515644_)
                                (___kont1620416205_))))
                        (___kont1620416205_))))
                (___kont1620416205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1620416205_))
                                                (___kont1620416205_))))
                                        (___kont1620416205_))))
                                (___kont1620416205_))))
                        (___kont1620416205_))))
                (___kont1620416205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1620416205_))
                                            (___kont1620416205_))
                                        (___kont1620416205_))))
                                (___kont1620416205_)))))))))
          (let* ((_g52935307_
                  (lambda (_g52945304_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g52945304_)))
                 (_g52925512_
                  (lambda (_g52945310_)
                    (if (gx#stx-pair? _g52945310_)
                        (let ((_e52975312_ (gx#stx-e _g52945310_)))
                          (let ((_hd52985315_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e52975312_)))
                                (_tl52995317_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e52975312_))))
                            (if (gx#stx-pair? _tl52995317_)
                                (let ((_e53005320_ (gx#stx-e _tl52995317_)))
                                  (let ((_hd53015323_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e53005320_)))
                                        (_tl53025325_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e53005320_))))
                                    ((lambda (_L5328_ _L5329_)
                                       (if (gxc#current-compile-decls-unsafe?)
                                           (_compile-call5291_ _L5329_ _L5328_)
                                           (let* ((___stx1631216313_ _L5329_)
                                                  (_g53445356_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1631216313_))))
                                             (let ((___kont1631416315_
                                                    (lambda ()
                                                      (let ((_f5386_ (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5329_)))
                (if (string-prefix? '"##" (symbol->string _f5386_))
                    (let _lp5388_ ((_rest5391_ (reverse _L5328_))
                                   (_bind5393_ '())
                                   (_args5394_ '()))
                      (let* ((_rest53955403_ _rest5391_)
                             (_else53975411_
                              (lambda ()
                                (cons 'let
                                      (cons _bind5393_
                                            (cons '(declare (not safe))
                                                  (cons (cons _f5386_
                                                              _args5394_)
                                                        '()))))))
                             (_K53995497_
                              (lambda (_rest5414_ _e5415_)
                                (let* ((___stx1626616267_ _e5415_)
                                       (_g54205438_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1626616267_))))
                                  (let ((___kont1626816269_
                                         (lambda ()
                                           (_lp5388_
                                            _rest5414_
                                            _bind5393_
                                            (cons (gxc#compile-e _e5415_)
                                                  _args5394_))))
                                        (___kont1627016271_
                                         (lambda ()
                                           (_lp5388_
                                            _rest5414_
                                            _bind5393_
                                            (cons (gxc#compile-e _e5415_)
                                                  _args5394_))))
                                        (___kont1627216273_
                                         (lambda ()
                                           (let ((_tmp5445_
                                                  (make-symbol
                                                   (gensym '__tmp))))
                                             (_lp5388_
                                              _rest5414_
                                              (cons (cons _tmp5445_
                                                          (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e5415_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind5393_)
                                              (cons _tmp5445_ _args5394_))))))
                                    (if (gx#stx-pair? ___stx1626616267_)
                                        (let ((_e54225476_
                                               (gx#stx-e ___stx1626616267_)))
                                          (let ((_tl54245481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e54225476_)))
                                                (_hd54235479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e54225476_))))
                                            (if (gx#identifier? _hd54235479_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd54235479_)
                                                    (if (gx#stx-pair?
                                                         _tl54245481_)
                                                        (let ((_e54255484_
                                                               (gx#stx-e
                                                                _tl54245481_)))
                                                          (let ((_tl54275489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e54255484_)))
                        (_hd54265487_
                         (let () (declare (not safe)) (##car _e54255484_))))
                    (if (gx#stx-null? _tl54275489_)
                        (___kont1626816269_)
                        (___kont1627216273_))))
                (___kont1627216273_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#quote
                                                         _hd54235479_)
                                                        (if (gx#stx-pair?
                                                             _tl54245481_)
                                                            (let ((_e54315461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl54245481_)))
                      (let ((_tl54335466_
                             (let () (declare (not safe)) (##cdr _e54315461_)))
                            (_hd54325464_
                             (let ()
                               (declare (not safe))
                               (##car _e54315461_))))
                        (if (gx#stx-null? _tl54335466_)
                            (___kont1627016271_)
                            (___kont1627216273_))))
                    (___kont1627216273_))
                (___kont1627216273_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1627216273_))))
                                        (___kont1627216273_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest53955403_))
                            (let ((_hd54005500_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest53955403_)))
                                  (_tl54015502_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest53955403_))))
                              (let* ((_e5505_ _hd54005500_)
                                     (_rest5507_ _tl54015502_))
                                (_K53995497_ _rest5507_ _e5505_)))
                            (_else53975411_))))
                    (_compile-call5291_ _L5329_ _L5328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1631616317_
                                                    (lambda ()
                                                      (_compile-call5291_
                                                       _L5329_
                                                       _L5328_))))
                                               (if (gx#stx-pair?
                                                    ___stx1631216313_)
                                                   (let ((_e53465368_
                                                          (gx#stx-e
                                                           ___stx1631216313_)))
                                                     (let ((_tl53485373_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e53465368_)))
                                                           (_hd53475371_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e53465368_))))
                                                       (if (gx#identifier?
                                                            _hd53475371_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd53475371_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl53485373_)
                           (let ((_e53495376_ (gx#stx-e _tl53485373_)))
                             (let ((_tl53515381_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e53495376_)))
                                   (_hd53505379_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e53495376_))))
                               (if (gx#stx-null? _tl53515381_)
                                   (___kont1631416315_)
                                   (___kont1631616317_))))
                           (___kont1631616317_))
                       (___kont1631616317_))
                   (___kont1631616317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1631616317_))))))
                                     _tl53025325_
                                     _hd53015323_)))
                                (_g52935307_ _g52945310_))))
                        (_g52935307_ _g52945310_)))))
            (_g52925512_ _stx5289_)))))
    (define gxc#generate-runtime-if%
      (lambda (_stx5102_)
        (letrec ((_simplify5104_
                  (lambda (_code5189_)
                    (let* ((_code51905208_ _code5189_)
                           (_else51925216_ (lambda () _code5189_))
                           (_K51945252_
                            (lambda (_expr5219_ _test5220_)
                              (let* ((_expr52215229_ _expr5219_)
                                     (_else52235237_
                                      (lambda ()
                                        (cons 'and
                                              (cons _test5220_
                                                    (cons _expr5219_ '())))))
                                     (_K52255242_
                                      (lambda (_exprs5240_)
                                        (cons 'and
                                              (cons _test5220_ _exprs5240_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr52215229_))
                                    (let ((_hd52265245_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr52215229_)))
                                          (_tl52275247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr52215229_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd52265245_ 'and))
                                          (let ((_exprs5250_ _tl52275247_))
                                            (_K52255242_ _exprs5250_))
                                          (_else52235237_)))
                                    (_else52235237_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code51905208_))
                          (let ((_hd51955255_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code51905208_)))
                                (_tl51965257_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code51905208_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd51955255_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl51965257_))
                                    (let ((_hd51975260_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl51965257_)))
                                          (_tl51985262_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl51965257_))))
                                      (let ((_test5265_ _hd51975260_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl51985262_))
                                            (let ((_hd51995267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl51985262_)))
                                                  (_tl52005269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl51985262_))))
                                              (let ((_expr5272_ _hd51995267_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl52005269_))
                                                    (let ((_hd52015274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl52005269_)))
                                                          (_tl52025276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl52005269_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd52015274_))
                                                          (let ((_hd52035279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _hd52015274_)))
                        (_tl52045281_
                         (let () (declare (not safe)) (##cdr _hd52015274_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd52035279_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl52045281_))
                            (let ((_hd52055284_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl52045281_)))
                                  (_tl52065286_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl52045281_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd52055284_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl52065286_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl52025276_))
                                          (_K51945252_ _expr5272_ _test5265_)
                                          (_else51925216_))
                                      (_else51925216_))
                                  (_else51925216_)))
                            (_else51925216_))
                        (_else51925216_)))
                  (_else51925216_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else51925216_))))
                                            (_else51925216_))))
                                    (_else51925216_))
                                (_else51925216_)))
                          (_else51925216_))))))
          (let* ((_g51065127_
                  (lambda (_g51075124_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g51075124_)))
                 (_g51055186_
                  (lambda (_g51075130_)
                    (if (gx#stx-pair? _g51075130_)
                        (let ((_e51115132_ (gx#stx-e _g51075130_)))
                          (let ((_hd51125135_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e51115132_)))
                                (_tl51135137_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e51115132_))))
                            (if (gx#stx-pair? _tl51135137_)
                                (let ((_e51145140_ (gx#stx-e _tl51135137_)))
                                  (let ((_hd51155143_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e51145140_)))
                                        (_tl51165145_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e51145140_))))
                                    (if (gx#stx-pair? _tl51165145_)
                                        (let ((_e51175148_
                                               (gx#stx-e _tl51165145_)))
                                          (let ((_hd51185151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e51175148_)))
                                                (_tl51195153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e51175148_))))
                                            (if (gx#stx-pair? _tl51195153_)
                                                (let ((_e51205156_
                                                       (gx#stx-e
                                                        _tl51195153_)))
                                                  (let ((_hd51215159_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e51205156_)))
                                                        (_tl51225161_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e51205156_))))
                                                    (if (gx#stx-null?
                                                         _tl51225161_)
                                                        ((lambda (_L5164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5165_
                          _L5166_)
                   (if (gxc#current-compile-boolean-context)
                       (_simplify5104_
                        (cons 'if
                              (cons (gxc#compile-e _L5166_)
                                    (cons (gxc#compile-e _L5165_)
                                          (cons (gxc#compile-e _L5164_)
                                                '())))))
                       (cons 'if
                             (cons (call-with-parameters
                                    (lambda () (gxc#compile-e _L5166_))
                                    gxc#current-compile-boolean-context
                                    '#t)
                                   (cons (gxc#compile-e _L5165_)
                                         (cons (gxc#compile-e _L5164_)
                                               '()))))))
                 _hd51215159_
                 _hd51185151_
                 _hd51155143_)
                (_g51065127_ _g51075130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g51065127_ _g51075130_))))
                                        (_g51065127_ _g51075130_))))
                                (_g51065127_ _g51075130_))))
                        (_g51065127_ _g51075130_)))))
            (_g51055186_ _stx5102_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_stx5051_)
        (let* ((_g50535066_
                (lambda (_g50545063_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50545063_)))
               (_g50525099_
                (lambda (_g50545069_)
                  (if (gx#stx-pair? _g50545069_)
                      (let ((_e50565071_ (gx#stx-e _g50545069_)))
                        (let ((_hd50575074_
                               (let ()
                                 (declare (not safe))
                                 (##car _e50565071_)))
                              (_tl50585076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e50565071_))))
                          (if (gx#stx-pair? _tl50585076_)
                              (let ((_e50595079_ (gx#stx-e _tl50585076_)))
                                (let ((_hd50605082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e50595079_)))
                                      (_tl50615084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e50595079_))))
                                  (if (gx#stx-null? _tl50615084_)
                                      ((lambda (_L5087_)
                                         (gxc#generate-runtime-binding-id
                                          _L5087_))
                                       _hd50605082_)
                                      (_g50535066_ _g50545069_))))
                              (_g50535066_ _g50545069_))))
                      (_g50535066_ _g50545069_)))))
          (_g50525099_ _stx5051_))))
    (define gxc#generate-runtime-setq%
      (lambda (_stx4984_)
        (let* ((_g49865003_
                (lambda (_g49875000_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g49875000_)))
               (_g49855048_
                (lambda (_g49875006_)
                  (if (gx#stx-pair? _g49875006_)
                      (let ((_e49905008_ (gx#stx-e _g49875006_)))
                        (let ((_hd49915011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e49905008_)))
                              (_tl49925013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e49905008_))))
                          (if (gx#stx-pair? _tl49925013_)
                              (let ((_e49935016_ (gx#stx-e _tl49925013_)))
                                (let ((_hd49945019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e49935016_)))
                                      (_tl49955021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e49935016_))))
                                  (if (gx#stx-pair? _tl49955021_)
                                      (let ((_e49965024_
                                             (gx#stx-e _tl49955021_)))
                                        (let ((_hd49975027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49965024_)))
                                              (_tl49985029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49965024_))))
                                          (if (gx#stx-null? _tl49985029_)
                                              ((lambda (_L5032_ _L5033_)
                                                 (cons 'set!
                                                       (cons (gxc#generate-runtime-binding-id
                                                              _L5033_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5032_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd49975027_
                                               _hd49945019_)
                                              (_g49865003_ _g49875006_))))
                                      (_g49865003_ _g49875006_))))
                              (_g49865003_ _g49875006_))))
                      (_g49865003_ _g49875006_)))))
          (_g49855048_ _stx4984_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_stx4796_)
        (let* ((_g47984815_
                (lambda (_g47994812_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47994812_)))
               (_g47974981_
                (lambda (_g47994818_)
                  (if (gx#stx-pair? _g47994818_)
                      (let ((_e48024820_ (gx#stx-e _g47994818_)))
                        (let ((_hd48034823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e48024820_)))
                              (_tl48044825_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e48024820_))))
                          (if (gx#stx-pair? _tl48044825_)
                              (let ((_e48054828_ (gx#stx-e _tl48044825_)))
                                (let ((_hd48064831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e48054828_)))
                                      (_tl48074833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e48054828_))))
                                  (if (gx#stx-pair? _tl48074833_)
                                      (let ((_e48084836_
                                             (gx#stx-e _tl48074833_)))
                                        (let ((_hd48094839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48084836_)))
                                              (_tl48104841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48084836_))))
                                          (if (gx#stx-null? _tl48104841_)
                                              ((lambda (_L4844_ _L4845_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4844_)
                         (cons (gxc#compile-e _L4845_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp4860_ ((_rest4863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L4845_ (cons _L4844_ '())))
                            (_bind4865_ '())
                            (_args4866_ '()))
               (let* ((_rest48674875_ _rest4863_)
                      (_else48694883_
                       (lambda ()
                         (cons 'let
                               (cons _bind4865_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _args4866_)
                                                 '()))))))
                      (_K48714969_
                       (lambda (_rest4886_ _e4887_)
                         (let* ((___stx1633816339_ _e4887_)
                                (_g48924910_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx1633816339_))))
                           (let ((___kont1634016341_
                                  (lambda ()
                                    (_lp4860_
                                     _rest4886_
                                     _bind4865_
                                     (cons (gxc#compile-e _e4887_)
                                           _args4866_))))
                                 (___kont1634216343_
                                  (lambda ()
                                    (_lp4860_
                                     _rest4886_
                                     _bind4865_
                                     (cons (gxc#compile-e _e4887_)
                                           _args4866_))))
                                 (___kont1634416345_
                                  (lambda ()
                                    (let ((_tmp4917_
                                           (make-symbol (gensym '__tmp))))
                                      (_lp4860_
                                       _rest4886_
                                       (cons (cons _tmp4917_
                                                   (cons (gxc#compile-e
                                                          _e4887_)
                                                         '()))
                                             _bind4865_)
                                       (cons _tmp4917_ _args4866_))))))
                             (if (gx#stx-pair? ___stx1633816339_)
                                 (let ((_e48944948_
                                        (gx#stx-e ___stx1633816339_)))
                                   (let ((_tl48964953_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e48944948_)))
                                         (_hd48954951_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e48944948_))))
                                     (if (gx#identifier? _hd48954951_)
                                         (if (gx#stx-eq? '%#ref _hd48954951_)
                                             (if (gx#stx-pair? _tl48964953_)
                                                 (let ((_e48974956_
                                                        (gx#stx-e
                                                         _tl48964953_)))
                                                   (let ((_tl48994961_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e48974956_)))
                                                         (_hd48984959_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e48974956_))))
                                                     (if (gx#stx-null?
                                                          _tl48994961_)
                                                         (___kont1634016341_)
                                                         (___kont1634416345_))))
                                                 (___kont1634416345_))
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd48954951_)
                                                 (if (gx#stx-pair?
                                                      _tl48964953_)
                                                     (let ((_e49034933_
                                                            (gx#stx-e
                                                             _tl48964953_)))
                                                       (let ((_tl49054938_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e49034933_)))
                     (_hd49044936_
                      (let () (declare (not safe)) (##car _e49034933_))))
                 (if (gx#stx-null? _tl49054938_)
                     (___kont1634216343_)
                     (___kont1634416345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1634416345_))
                                                 (___kont1634416345_)))
                                         (___kont1634416345_))))
                                 (___kont1634416345_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest48674875_))
                     (let ((_hd48724972_
                            (let ()
                              (declare (not safe))
                              (##car _rest48674875_)))
                           (_tl48734974_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest48674875_))))
                       (let* ((_e4977_ _hd48724972_) (_rest4979_ _tl48734974_))
                         (_K48714969_ _rest4979_ _e4977_)))
                     (_else48694883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd48094839_
                                               _hd48064831_)
                                              (_g47984815_ _g47994818_))))
                                      (_g47984815_ _g47994818_))))
                              (_g47984815_ _g47994818_))))
                      (_g47984815_ _g47994818_)))))
          (_g47974981_ _stx4796_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_stx4608_)
        (let* ((_g46104627_
                (lambda (_g46114624_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46114624_)))
               (_g46094793_
                (lambda (_g46114630_)
                  (if (gx#stx-pair? _g46114630_)
                      (let ((_e46144632_ (gx#stx-e _g46114630_)))
                        (let ((_hd46154635_
                               (let ()
                                 (declare (not safe))
                                 (##car _e46144632_)))
                              (_tl46164637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e46144632_))))
                          (if (gx#stx-pair? _tl46164637_)
                              (let ((_e46174640_ (gx#stx-e _tl46164637_)))
                                (let ((_hd46184643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e46174640_)))
                                      (_tl46194645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e46174640_))))
                                  (if (gx#stx-pair? _tl46194645_)
                                      (let ((_e46204648_
                                             (gx#stx-e _tl46194645_)))
                                        (let ((_hd46214651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e46204648_)))
                                              (_tl46224653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e46204648_))))
                                          (if (gx#stx-null? _tl46224653_)
                                              ((lambda (_L4656_ _L4657_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4656_)
                         (cons (gxc#compile-e _L4657_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp4672_ ((_rest4675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L4657_ (cons _L4656_ '())))
                            (_bind4677_ '())
                            (_args4678_ '()))
               (let* ((_rest46794687_ _rest4675_)
                      (_else46814695_
                       (lambda ()
                         (cons 'let
                               (cons _bind4677_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _args4678_)
                                                 '()))))))
                      (_K46834781_
                       (lambda (_rest4698_ _e4699_)
                         (let* ((___stx1638416385_ _e4699_)
                                (_g47044722_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx1638416385_))))
                           (let ((___kont1638616387_
                                  (lambda ()
                                    (_lp4672_
                                     _rest4698_
                                     _bind4677_
                                     (cons (gxc#compile-e _e4699_)
                                           _args4678_))))
                                 (___kont1638816389_
                                  (lambda ()
                                    (_lp4672_
                                     _rest4698_
                                     _bind4677_
                                     (cons (gxc#compile-e _e4699_)
                                           _args4678_))))
                                 (___kont1639016391_
                                  (lambda ()
                                    (let ((_tmp4729_
                                           (make-symbol (gensym '__tmp))))
                                      (_lp4672_
                                       _rest4698_
                                       (cons (cons _tmp4729_
                                                   (cons (gxc#compile-e
                                                          _e4699_)
                                                         '()))
                                             _bind4677_)
                                       (cons _tmp4729_ _args4678_))))))
                             (if (gx#stx-pair? ___stx1638416385_)
                                 (let ((_e47064760_
                                        (gx#stx-e ___stx1638416385_)))
                                   (let ((_tl47084765_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e47064760_)))
                                         (_hd47074763_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e47064760_))))
                                     (if (gx#identifier? _hd47074763_)
                                         (if (gx#stx-eq? '%#ref _hd47074763_)
                                             (if (gx#stx-pair? _tl47084765_)
                                                 (let ((_e47094768_
                                                        (gx#stx-e
                                                         _tl47084765_)))
                                                   (let ((_tl47114773_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e47094768_)))
                                                         (_hd47104771_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e47094768_))))
                                                     (if (gx#stx-null?
                                                          _tl47114773_)
                                                         (___kont1638616387_)
                                                         (___kont1639016391_))))
                                                 (___kont1639016391_))
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd47074763_)
                                                 (if (gx#stx-pair?
                                                      _tl47084765_)
                                                     (let ((_e47154745_
                                                            (gx#stx-e
                                                             _tl47084765_)))
                                                       (let ((_tl47174750_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e47154745_)))
                     (_hd47164748_
                      (let () (declare (not safe)) (##car _e47154745_))))
                 (if (gx#stx-null? _tl47174750_)
                     (___kont1638816389_)
                     (___kont1639016391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1639016391_))
                                                 (___kont1639016391_)))
                                         (___kont1639016391_))))
                                 (___kont1639016391_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest46794687_))
                     (let ((_hd46844784_
                            (let ()
                              (declare (not safe))
                              (##car _rest46794687_)))
                           (_tl46854786_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest46794687_))))
                       (let* ((_e4789_ _hd46844784_) (_rest4791_ _tl46854786_))
                         (_K46834781_ _rest4791_ _e4789_)))
                     (_else46814695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd46214651_
                                               _hd46184643_)
                                              (_g46104627_ _g46114630_))))
                                      (_g46104627_ _g46114630_))))
                              (_g46104627_ _g46114630_))))
                      (_g46104627_ _g46114630_)))))
          (_g46094793_ _stx4608_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_stx4525_)
        (let* ((_g45274548_
                (lambda (_g45284545_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45284545_)))
               (_g45264605_
                (lambda (_g45284551_)
                  (if (gx#stx-pair? _g45284551_)
                      (let ((_e45324553_ (gx#stx-e _g45284551_)))
                        (let ((_hd45334556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e45324553_)))
                              (_tl45344558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e45324553_))))
                          (if (gx#stx-pair? _tl45344558_)
                              (let ((_e45354561_ (gx#stx-e _tl45344558_)))
                                (let ((_hd45364564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e45354561_)))
                                      (_tl45374566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e45354561_))))
                                  (if (gx#stx-pair? _tl45374566_)
                                      (let ((_e45384569_
                                             (gx#stx-e _tl45374566_)))
                                        (let ((_hd45394572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45384569_)))
                                              (_tl45404574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45384569_))))
                                          (if (gx#stx-pair? _tl45404574_)
                                              (let ((_e45414577_
                                                     (gx#stx-e _tl45404574_)))
                                                (let ((_hd45424580_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e45414577_)))
                                                      (_tl45434582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e45414577_))))
                                                  (if (gx#stx-null?
                                                       _tl45434582_)
                                                      ((lambda (_L4585_
                                                                _L4586_
                                                                _L4587_)
                                                         (cons '##structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4585_)
                             (cons (gxc#compile-e _L4586_)
                                   (cons (gxc#compile-e _L4587_)
                                         (cons ''#f '()))))))
               _hd45424580_
               _hd45394572_
               _hd45364564_)
              (_g45274548_ _g45284551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g45274548_ _g45284551_))))
                                      (_g45274548_ _g45284551_))))
                              (_g45274548_ _g45284551_))))
                      (_g45274548_ _g45284551_)))))
          (_g45264605_ _stx4525_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_stx4426_)
        (let* ((_g44284453_
                (lambda (_g44294450_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44294450_)))
               (_g44274522_
                (lambda (_g44294456_)
                  (if (gx#stx-pair? _g44294456_)
                      (let ((_e44344458_ (gx#stx-e _g44294456_)))
                        (let ((_hd44354461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44344458_)))
                              (_tl44364463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44344458_))))
                          (if (gx#stx-pair? _tl44364463_)
                              (let ((_e44374466_ (gx#stx-e _tl44364463_)))
                                (let ((_hd44384469_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44374466_)))
                                      (_tl44394471_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44374466_))))
                                  (if (gx#stx-pair? _tl44394471_)
                                      (let ((_e44404474_
                                             (gx#stx-e _tl44394471_)))
                                        (let ((_hd44414477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44404474_)))
                                              (_tl44424479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44404474_))))
                                          (if (gx#stx-pair? _tl44424479_)
                                              (let ((_e44434482_
                                                     (gx#stx-e _tl44424479_)))
                                                (let ((_hd44444485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e44434482_)))
                                                      (_tl44454487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e44434482_))))
                                                  (if (gx#stx-pair?
                                                       _tl44454487_)
                                                      (let ((_e44464490_
                                                             (gx#stx-e
                                                              _tl44454487_)))
                                                        (let ((_hd44474493_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e44464490_)))
                      (_tl44484495_
                       (let () (declare (not safe)) (##cdr _e44464490_))))
                  (if (gx#stx-null? _tl44484495_)
                      ((lambda (_L4498_ _L4499_ _L4500_ _L4501_)
                         (cons '##structure-set!
                               (cons (gxc#compile-e _L4499_)
                                     (cons (gxc#compile-e _L4498_)
                                           (cons (gxc#compile-e _L4500_)
                                                 (cons (gxc#compile-e _L4501_)
                                                       (cons ''#f '())))))))
                       _hd44474493_
                       _hd44444485_
                       _hd44414477_
                       _hd44384469_)
                      (_g44284453_ _g44294456_))))
              (_g44284453_ _g44294456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g44284453_ _g44294456_))))
                                      (_g44284453_ _g44294456_))))
                              (_g44284453_ _g44294456_))))
                      (_g44284453_ _g44294456_)))))
          (_g44274522_ _stx4426_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_stx4343_)
        (let* ((_g43454366_
                (lambda (_g43464363_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43464363_)))
               (_g43444423_
                (lambda (_g43464369_)
                  (if (gx#stx-pair? _g43464369_)
                      (let ((_e43504371_ (gx#stx-e _g43464369_)))
                        (let ((_hd43514374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e43504371_)))
                              (_tl43524376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e43504371_))))
                          (if (gx#stx-pair? _tl43524376_)
                              (let ((_e43534379_ (gx#stx-e _tl43524376_)))
                                (let ((_hd43544382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e43534379_)))
                                      (_tl43554384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e43534379_))))
                                  (if (gx#stx-pair? _tl43554384_)
                                      (let ((_e43564387_
                                             (gx#stx-e _tl43554384_)))
                                        (let ((_hd43574390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e43564387_)))
                                              (_tl43584392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e43564387_))))
                                          (if (gx#stx-pair? _tl43584392_)
                                              (let ((_e43594395_
                                                     (gx#stx-e _tl43584392_)))
                                                (let ((_hd43604398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e43594395_)))
                                                      (_tl43614400_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e43594395_))))
                                                  (if (gx#stx-null?
                                                       _tl43614400_)
                                                      ((lambda (_L4403_
                                                                _L4404_
                                                                _L4405_)
                                                         (cons '##direct-structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4403_)
                             (cons (gxc#compile-e _L4404_)
                                   (cons (gxc#compile-e _L4405_)
                                         (cons ''#f '()))))))
               _hd43604398_
               _hd43574390_
               _hd43544382_)
              (_g43454366_ _g43464369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g43454366_ _g43464369_))))
                                      (_g43454366_ _g43464369_))))
                              (_g43454366_ _g43464369_))))
                      (_g43454366_ _g43464369_)))))
          (_g43444423_ _stx4343_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_stx4244_)
        (let* ((_g42464271_
                (lambda (_g42474268_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g42474268_)))
               (_g42454340_
                (lambda (_g42474274_)
                  (if (gx#stx-pair? _g42474274_)
                      (let ((_e42524276_ (gx#stx-e _g42474274_)))
                        (let ((_hd42534279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42524276_)))
                              (_tl42544281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42524276_))))
                          (if (gx#stx-pair? _tl42544281_)
                              (let ((_e42554284_ (gx#stx-e _tl42544281_)))
                                (let ((_hd42564287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42554284_)))
                                      (_tl42574289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42554284_))))
                                  (if (gx#stx-pair? _tl42574289_)
                                      (let ((_e42584292_
                                             (gx#stx-e _tl42574289_)))
                                        (let ((_hd42594295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e42584292_)))
                                              (_tl42604297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e42584292_))))
                                          (if (gx#stx-pair? _tl42604297_)
                                              (let ((_e42614300_
                                                     (gx#stx-e _tl42604297_)))
                                                (let ((_hd42624303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e42614300_)))
                                                      (_tl42634305_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e42614300_))))
                                                  (if (gx#stx-pair?
                                                       _tl42634305_)
                                                      (let ((_e42644308_
                                                             (gx#stx-e
                                                              _tl42634305_)))
                                                        (let ((_hd42654311_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e42644308_)))
                      (_tl42664313_
                       (let () (declare (not safe)) (##cdr _e42644308_))))
                  (if (gx#stx-null? _tl42664313_)
                      ((lambda (_L4316_ _L4317_ _L4318_ _L4319_)
                         (cons '##direct-structure-set!
                               (cons (gxc#compile-e _L4317_)
                                     (cons (gxc#compile-e _L4316_)
                                           (cons (gxc#compile-e _L4318_)
                                                 (cons (gxc#compile-e _L4319_)
                                                       (cons ''#f '())))))))
                       _hd42654311_
                       _hd42624303_
                       _hd42594295_
                       _hd42564287_)
                      (_g42464271_ _g42474274_))))
              (_g42464271_ _g42474274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g42464271_ _g42474274_))))
                                      (_g42464271_ _g42474274_))))
                              (_g42464271_ _g42474274_))))
                      (_g42464271_ _g42474274_)))))
          (_g42454340_ _stx4244_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_stx4040_)
        (let* ((_g40424063_
                (lambda (_g40434060_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40434060_)))
               (_g40414241_
                (lambda (_g40434066_)
                  (if (gx#stx-pair? _g40434066_)
                      (let ((_e40474068_ (gx#stx-e _g40434066_)))
                        (let ((_hd40484071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e40474068_)))
                              (_tl40494073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e40474068_))))
                          (if (gx#stx-pair? _tl40494073_)
                              (let ((_e40504076_ (gx#stx-e _tl40494073_)))
                                (let ((_hd40514079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e40504076_)))
                                      (_tl40524081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e40504076_))))
                                  (if (gx#stx-pair? _tl40524081_)
                                      (let ((_e40534084_
                                             (gx#stx-e _tl40524081_)))
                                        (let ((_hd40544087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e40534084_)))
                                              (_tl40554089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e40534084_))))
                                          (if (gx#stx-pair? _tl40554089_)
                                              (let ((_e40564092_
                                                     (gx#stx-e _tl40554089_)))
                                                (let ((_hd40574095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e40564092_)))
                                                      (_tl40584097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e40564092_))))
                                                  (if (gx#stx-null?
                                                       _tl40584097_)
                                                      ((lambda (_L4100_
                                                                _L4101_
                                                                _L4102_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e _L4100_)
                                 (cons (gxc#compile-e _L4101_)
                                       (cons (gxc#compile-e _L4102_)
                                             (cons ''#f '())))))
                     (let _lp4120_ ((_rest4123_
                                     (cons _L4102_
                                           (cons _L4101_ (cons _L4100_ '()))))
                                    (_bind4125_ '())
                                    (_args4126_ '()))
                       (let* ((_rest41274135_ _rest4123_)
                              (_else41294143_
                               (lambda ()
                                 (cons 'let
                                       (cons _bind4125_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons ''#f '())
                               _args4126_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_K41314229_
                               (lambda (_rest4146_ _e4147_)
                                 (let* ((___stx1643016431_ _e4147_)
                                        (_g41524170_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1643016431_))))
                                   (let ((___kont1643216433_
                                          (lambda ()
                                            (_lp4120_
                                             _rest4146_
                                             _bind4125_
                                             (cons (gxc#compile-e _e4147_)
                                                   _args4126_))))
                                         (___kont1643416435_
                                          (lambda ()
                                            (_lp4120_
                                             _rest4146_
                                             _bind4125_
                                             (cons (gxc#compile-e _e4147_)
                                                   _args4126_))))
                                         (___kont1643616437_
                                          (lambda ()
                                            (let ((_tmp4177_
                                                   (make-symbol
                                                    (gensym '__tmp))))
                                              (_lp4120_
                                               _rest4146_
                                               (cons (cons _tmp4177_
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e4147_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind4125_)
                                               (cons _tmp4177_ _args4126_))))))
                                     (if (gx#stx-pair? ___stx1643016431_)
                                         (let ((_e41544208_
                                                (gx#stx-e ___stx1643016431_)))
                                           (let ((_tl41564213_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e41544208_)))
                                                 (_hd41554211_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e41544208_))))
                                             (if (gx#identifier? _hd41554211_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd41554211_)
                                                     (if (gx#stx-pair?
                                                          _tl41564213_)
                                                         (let ((_e41574216_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl41564213_)))
                   (let ((_tl41594221_
                          (let () (declare (not safe)) (##cdr _e41574216_)))
                         (_hd41584219_
                          (let () (declare (not safe)) (##car _e41574216_))))
                     (if (gx#stx-null? _tl41594221_)
                         (___kont1643216433_)
                         (___kont1643616437_))))
                 (___kont1643616437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd41554211_)
                                                         (if (gx#stx-pair?
                                                              _tl41564213_)
                                                             (let ((_e41634193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl41564213_)))
                       (let ((_tl41654198_
                              (let ()
                                (declare (not safe))
                                (##cdr _e41634193_)))
                             (_hd41644196_
                              (let ()
                                (declare (not safe))
                                (##car _e41634193_))))
                         (if (gx#stx-null? _tl41654198_)
                             (___kont1643416435_)
                             (___kont1643616437_))))
                     (___kont1643616437_))
                 (___kont1643616437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1643616437_))))
                                         (___kont1643616437_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest41274135_))
                             (let ((_hd41324232_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest41274135_)))
                                   (_tl41334234_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest41274135_))))
                               (let* ((_e4237_ _hd41324232_)
                                      (_rest4239_ _tl41334234_))
                                 (_K41314229_ _rest4239_ _e4237_)))
                             (_else41294143_))))))
               _hd40574095_
               _hd40544087_
               _hd40514079_)
              (_g40424063_ _g40434066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g40424063_ _g40434066_))))
                                      (_g40424063_ _g40434066_))))
                              (_g40424063_ _g40434066_))))
                      (_g40424063_ _g40434066_)))))
          (_g40414241_ _stx4040_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_stx3820_)
        (let* ((_g38223847_
                (lambda (_g38233844_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g38233844_)))
               (_g38214037_
                (lambda (_g38233850_)
                  (if (gx#stx-pair? _g38233850_)
                      (let ((_e38283852_ (gx#stx-e _g38233850_)))
                        (let ((_hd38293855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e38283852_)))
                              (_tl38303857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e38283852_))))
                          (if (gx#stx-pair? _tl38303857_)
                              (let ((_e38313860_ (gx#stx-e _tl38303857_)))
                                (let ((_hd38323863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e38313860_)))
                                      (_tl38333865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e38313860_))))
                                  (if (gx#stx-pair? _tl38333865_)
                                      (let ((_e38343868_
                                             (gx#stx-e _tl38333865_)))
                                        (let ((_hd38353871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e38343868_)))
                                              (_tl38363873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e38343868_))))
                                          (if (gx#stx-pair? _tl38363873_)
                                              (let ((_e38373876_
                                                     (gx#stx-e _tl38363873_)))
                                                (let ((_hd38383879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e38373876_)))
                                                      (_tl38393881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e38373876_))))
                                                  (if (gx#stx-pair?
                                                       _tl38393881_)
                                                      (let ((_e38403884_
                                                             (gx#stx-e
                                                              _tl38393881_)))
                                                        (let ((_hd38413887_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e38403884_)))
                      (_tl38423889_
                       (let () (declare (not safe)) (##cdr _e38403884_))))
                  (if (gx#stx-null? _tl38423889_)
                      ((lambda (_L3892_ _L3893_ _L3894_ _L3895_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (gxc#compile-e _L3893_)
                                         (cons (gxc#compile-e _L3892_)
                                               (cons (gxc#compile-e _L3894_)
                                                     (cons (gxc#compile-e
                                                            _L3895_)
                                                           (cons ''#f '()))))))
                             (let _lp3916_ ((_rest3919_
                                             (cons _L3895_
                                                   (cons _L3894_
                                                         (cons _L3892_
                                                               (cons _L3893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_bind3921_ '())
                                            (_args3922_ '()))
                               (let* ((_rest39233931_ _rest3919_)
                                      (_else39253939_
                                       (lambda ()
                                         (cons 'let
                                               (cons _bind3921_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr1 cons (cons ''#f '()) _args3922_))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_K39274025_
                                       (lambda (_rest3942_ _e3943_)
                                         (let* ((___stx1647616477_ _e3943_)
                                                (_g39483966_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    ___stx1647616477_))))
                                           (let ((___kont1647816479_
                                                  (lambda ()
                                                    (_lp3916_
                                                     _rest3942_
                                                     _bind3921_
                                                     (cons (gxc#compile-e
                                                            _e3943_)
                                                           _args3922_))))
                                                 (___kont1648016481_
                                                  (lambda ()
                                                    (_lp3916_
                                                     _rest3942_
                                                     _bind3921_
                                                     (cons (gxc#compile-e
                                                            _e3943_)
                                                           _args3922_))))
                                                 (___kont1648216483_
                                                  (lambda ()
                                                    (let ((_tmp3973_
                                                           (make-symbol
                                                            (gensym '__tmp))))
                                                      (_lp3916_
                                                       _rest3942_
                                                       (cons (cons _tmp3973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e _e3943_) '()))
                     _bind3921_)
               (cons _tmp3973_ _args3922_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  ___stx1647616477_)
                                                 (let ((_e39504004_
                                                        (gx#stx-e
                                                         ___stx1647616477_)))
                                                   (let ((_tl39524009_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e39504004_)))
                                                         (_hd39514007_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e39504004_))))
                                                     (if (gx#identifier?
                                                          _hd39514007_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd39514007_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl39524009_)
                         (let ((_e39534012_ (gx#stx-e _tl39524009_)))
                           (let ((_tl39554017_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e39534012_)))
                                 (_hd39544015_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e39534012_))))
                             (if (gx#stx-null? _tl39554017_)
                                 (___kont1647816479_)
                                 (___kont1648216483_))))
                         (___kont1648216483_))
                     (if (gx#stx-eq? '%#quote _hd39514007_)
                         (if (gx#stx-pair? _tl39524009_)
                             (let ((_e39593989_ (gx#stx-e _tl39524009_)))
                               (let ((_tl39613994_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e39593989_)))
                                     (_hd39603992_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e39593989_))))
                                 (if (gx#stx-null? _tl39613994_)
                                     (___kont1648016481_)
                                     (___kont1648216483_))))
                             (___kont1648216483_))
                         (___kont1648216483_)))
                 (___kont1648216483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1648216483_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest39233931_))
                                     (let ((_hd39284028_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest39233931_)))
                                           (_tl39294030_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest39233931_))))
                                       (let* ((_e4033_ _hd39284028_)
                                              (_rest4035_ _tl39294030_))
                                         (_K39274025_ _rest4035_ _e4033_)))
                                     (_else39253939_))))))
                       _hd38413887_
                       _hd38383879_
                       _hd38353871_
                       _hd38323863_)
                      (_g38223847_ _g38233850_))))
              (_g38223847_ _g38233850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g38223847_ _g38233850_))))
                                      (_g38223847_ _g38233850_))))
                              (_g38223847_ _g38233850_))))
                      (_g38223847_ _g38233850_)))))
          (_g38214037_ _stx3820_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_stx3674_)
        (letrec ((_import-set-template3676_
                  (lambda (_in3772_ _phi3773_)
                    (let ((_iphi3775_
                           (fx+ _phi3773_
                                (##direct-structure-ref
                                 _in3772_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports3776_
                           (##structure-ref
                            (##direct-structure-ref
                             _in3772_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp3778_ ((_rest3780_ _imports3776_) (_r3781_ '()))
                        (let* ((_rest37823790_ _rest3780_)
                               (_else37843798_ (lambda () _r3781_))
                               (_K37863808_
                                (lambda (_rest3801_ _in3802_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in3802_
                                         'gx#module-context::t))
                                      (if (fxzero? _iphi3775_)
                                          (_lp3778_
                                           _rest3801_
                                           (cons _in3802_ _r3781_))
                                          (_lp3778_ _rest3801_ _r3781_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in3802_
                                             'gx#module-import::t))
                                          (let ((_iphi3804_
                                                 (fx+ _phi3773_
                                                      (##direct-structure-ref
                                                       _in3802_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (fxzero? _iphi3804_)
                                                (_lp3778_
                                                 _rest3801_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _in3802_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _r3781_))
                                                (_lp3778_ _rest3801_ _r3781_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in3802_
                                                 'gx#import-set::t))
                                              (let ((_xphi3806_
                                                     (fx+ _iphi3775_
                                                          (##direct-structure-ref
                                                           _in3802_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (fxzero? _xphi3806_)
                                                    (_lp3778_
                                                     _rest3801_
                                                     (cons (##direct-structure-ref
                                                            _in3802_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _r3781_))
                                                    (if (fxpositive?
                                                         _xphi3806_)
                                                        (_lp3778_
                                                         _rest3801_
                                                         (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _r3781_
                         (_import-set-template3676_ _in3802_ _iphi3775_)))
                (_lp3778_ _rest3801_ _r3781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp3778_
                                               _rest3801_
                                               _r3781_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest37823790_))
                              (let ((_hd37873811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest37823790_)))
                                    (_tl37883813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest37823790_))))
                                (let* ((_in3816_ _hd37873811_)
                                       (_rest3818_ _tl37883813_))
                                  (_K37863808_ _rest3818_ _in3816_)))
                              (_else37843798_))))))))
          (let* ((_g36783688_
                  (lambda (_g36793685_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g36793685_)))
                 (_g36773769_
                  (lambda (_g36793691_)
                    (if (gx#stx-pair? _g36793691_)
                        (let ((_e36813693_ (gx#stx-e _g36793691_)))
                          (let ((_hd36823696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e36813693_)))
                                (_tl36833698_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e36813693_))))
                            ((lambda (_L3701_)
                               (let ((_ht3712_ (make-table 'test: eq?)))
                                 (let _lp3714_ ((_rest3716_ _L3701_)
                                                (_loads3717_ '()))
                                   (letrec ((_K3719_ (lambda (_ctx3762_
                                                              _rest3763_)
                                                       (let ((_id3765_
                                                              (##structure-ref
                                                               _ctx3762_
                                                               '1
                                                               gx#expander-context::t
                                                               '#f)))
                                                         (if (table-ref
                                                              _ht3712_
                                                              _id3765_
                                                              '#f)
                                                             (_lp3714_
                                                              _rest3763_
                                                              _loads3717_)
                                                             (let ((_rt3767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (string-append
                             (gxc#module-id->path-string _id3765_)
                             '"__rt")))
                       (table-set! _ht3712_ _id3765_ _rt3767_)
                       (_lp3714_ _rest3763_ (cons _rt3767_ _loads3717_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest37203728_ _rest3716_)
                                            (_else37223740_
                                             (lambda ()
                                               (cons 'begin
                                                     (map (lambda (_g37353737_)
                                                            (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g37353737_))
                  (reverse _loads3717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_K37243750_
                                             (lambda (_rest3743_ _in3744_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in3744_
                                                      'gx#module-context::t))
                                                   (_K3719_ _in3744_
                                                            _rest3743_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in3744_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in3744_
                             '3
                             gx#module-import::t
                             '#f))
                   (_K3719_ (##direct-structure-ref
                             (##direct-structure-ref
                              _in3744_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)
                            _rest3743_)
                   (_lp3714_ _rest3743_ _loads3717_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in3744_
                      'gx#import-set::t))
                   (let ((_phi3746_
                          (##direct-structure-ref
                           _in3744_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _phi3746_)
                         (_K3719_ (##direct-structure-ref
                                   _in3744_
                                   '1
                                   gx#import-set::t
                                   '#f)
                                  _rest3743_)
                         (if (fxpositive? _phi3746_)
                             (let ((_deps3748_
                                    (_import-set-template3676_ _in3744_ '0)))
                               (_lp3714_
                                (foldl1 cons _rest3743_ _deps3748_)
                                _loads3717_))
                             (_lp3714_ _rest3743_ _loads3717_))))
                   (gxc#raise-compile-error
                    '"Unexpected import"
                    _stx3674_
                    _in3744_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest37203728_))
                                           (let ((_hd37253753_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest37203728_)))
                                                 (_tl37263755_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest37203728_))))
                                             (let* ((_in3758_ _hd37253753_)
                                                    (_rest3760_ _tl37263755_))
                                               (_K37243750_
                                                _rest3760_
                                                _in3758_)))
                                           (_else37223740_)))))))
                             _tl36833698_)))
                        (_g36783688_ _g36793691_)))))
            (_g36773769_ _stx3674_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_stx3490_)
        (letrec ((_add-lift!3492_
                  (lambda (_expr3672_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (cons _expr3672_ (unbox (gxc#current-compile-lift))))))
                 (_generate-syntax-quote3493_
                  (lambda (_id3669_ _marks3670_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _id3669_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _marks3670_ '()))))))))
                 (_generate-simple3494_
                  (lambda (_stxq3664_)
                    (let ((_gid3666_ (gxc#generate-runtime-temporary__% '#t))
                          (_qid3667_
                           (gxc#generate-runtime-identifier _stxq3664_)))
                      (_add-lift!3492_
                       (cons 'define
                             (cons _gid3666_
                                   (cons (_generate-syntax-quote3493_
                                          _qid3667_
                                          ''())
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq3664_
                       _gid3666_)
                      _gid3666_)))
                 (_generate-serialized3495_
                  (lambda (_stxq3654_ _marks3655_)
                    (let* ((_mark-refs3657_
                            (map _generate-mark3496_ _marks3655_))
                           (_gid3659_ (gxc#generate-runtime-temporary__% '#t))
                           (_qid3661_
                            (gxc#generate-runtime-identifier _stxq3654_)))
                      (_add-lift!3492_
                       (cons 'define
                             (cons _gid3659_
                                   (cons (_generate-syntax-quote3493_
                                          _qid3661_
                                          (cons 'list _mark-refs3657_))
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq3654_
                       _gid3659_)
                      _gid3659_)))
                 (_generate-mark3496_
                  (lambda (_mark3640_)
                    (let ((_$e3642_
                           (table-ref
                            (gxc#current-compile-marks)
                            _mark3640_
                            '#f)))
                      (if _$e3642_
                          (values _$e3642_)
                          (let* ((_gid3645_
                                  (gxc#generate-runtime-temporary__% '#t))
                                 (_repr3647_ (_serialize-mark3497_ _mark3640_))
                                 (_ctx3649_
                                  (gx#core-context-top__1
                                   (##structure-ref
                                    _mark3640_
                                    '2
                                    gx#expander-mark::t
                                    '#f)))
                                 (_ctx-ref3651_
                                  (if (eq? _ctx3649_
                                           (gx#current-expander-context))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_context-ref3498_
                                                               _ctx3649_)
                                                              '()))
                                                  '())))))
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark3640_
                             _gid3645_)
                            (_add-lift!3492_
                             (cons 'define
                                   (cons _gid3645_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr3647_ '()))
                   (cons _ctx-ref3651_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid3645_)))))
                 (_serialize-mark3497_
                  (lambda (_mark3587_)
                    (letrec ((_quote-e3589_
                              (lambda (_sym3638_)
                                (if (interned-symbol? _sym3638_)
                                    _sym3638_
                                    (gxc#generate-runtime-gensym-reference__0
                                     _sym3638_)))))
                      (let* ((_mark35903599_ _mark3587_)
                             (_E35923603_
                              (lambda ()
                                (error '"No clause matching" _mark35903599_)))
                             (_K35933615_
                              (lambda (_trace3606_
                                       _phi3607_
                                       _ctx3608_
                                       _subst3609_)
                                (let ((_subs3611_
                                       (if _subst3609_
                                           (table->list _subst3609_)
                                           '())))
                                  (cons _phi3607_
                                        (map (lambda (_pair3613_)
                                               (cons (_quote-e3589_
                                                      (car _pair3613_))
                                                     (_quote-e3589_
                                                      (cdr _pair3613_))))
                                             _subs3611_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark35903599_
                               'gx#expander-mark::t))
                            (let* ((_e35943618_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark35903599_ '1)))
                                   (_subst3621_ _e35943618_)
                                   (_e35953623_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark35903599_ '2)))
                                   (_ctx3626_ _e35953623_)
                                   (_e35963628_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark35903599_ '3)))
                                   (_phi3631_ _e35963628_)
                                   (_e35973633_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark35903599_ '4)))
                                   (_trace3636_ _e35973633_))
                              (_K35933615_
                               _trace3636_
                               _phi3631_
                               _ctx3626_
                               _subst3621_))
                            (_E35923603_))))))
                 (_context-ref3498_
                  (lambda (_ctx3574_)
                    (if (let ((__tmp16646
                               (##structure-ref
                                _ctx3574_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp16646
                           'gx#module-context::t))
                        (let ((_ctx-ref3576_
                               (_context-ref-nested3500_ _ctx3574_))
                              (_ctx-origin3577_
                               (_context-ref-origin3499_ _ctx3574_))
                              (_origin3578_
                               (_context-ref-origin3499_
                                (gx#current-expander-context))))
                          (if (eq? _origin3578_ _ctx-origin3577_)
                              (let ((_ref3580_
                                     (_context-ref-nested3500_
                                      (gx#current-expander-context))))
                                (let _lp3582_ ((_ref3584_ (cdr _ref3580_))
                                               (_ctx-ref3585_
                                                (cdr _ctx-ref3576_)))
                                  (if (and (pair? _ref3584_)
                                           (eq? (car _ref3584_)
                                                (car _ctx-ref3585_)))
                                      (_lp3582_
                                       (cdr _ref3584_)
                                       (cdr _ctx-ref3585_))
                                      (cons '#f _ctx-ref3585_))))
                              _ctx-ref3576_))
                        (make-symbol
                         '":"
                         (##structure-ref
                          _ctx3574_
                          '1
                          gx#expander-context::t
                          '#f)))))
                 (_context-ref-origin3499_
                  (lambda (_ctx3566_)
                    (let _lp3568_ ((_ctx3570_ _ctx3566_))
                      (let ((_super3572_
                             (##structure-ref
                              _ctx3570_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super3572_
                               'gx#module-context::t))
                            (_lp3568_ _super3572_)
                            _ctx3570_)))))
                 (_context-ref-nested3500_
                  (lambda (_ctx3557_)
                    (let _lp3559_ ((_ctx3561_ _ctx3557_) (_r3562_ '()))
                      (let ((_super3564_
                             (##structure-ref
                              _ctx3561_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super3564_
                               'gx#module-context::t))
                            (_lp3559_
                             _super3564_
                             (cons (car (##structure-ref
                                         _ctx3561_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _r3562_))
                            (cons (make-symbol
                                   '":"
                                   (##structure-ref
                                    _ctx3561_
                                    '1
                                    gx#expander-context::t
                                    '#f))
                                  _r3562_)))))))
          (let* ((_g35023515_
                  (lambda (_g35033512_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g35033512_)))
                 (_g35013554_
                  (lambda (_g35033518_)
                    (if (gx#stx-pair? _g35033518_)
                        (let ((_e35053520_ (gx#stx-e _g35033518_)))
                          (let ((_hd35063523_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e35053520_)))
                                (_tl35073525_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e35053520_))))
                            (if (gx#stx-pair? _tl35073525_)
                                (let ((_e35083528_ (gx#stx-e _tl35073525_)))
                                  (let ((_hd35093531_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e35083528_)))
                                        (_tl35103533_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e35083528_))))
                                    (if (gx#stx-null? _tl35103533_)
                                        ((lambda (_L3536_)
                                           (if (gx#identifier? _L3536_)
                                               (let ((_$e3549_
                                                      (table-ref
                                                       (gxc#current-compile-identifiers)
                                                       _L3536_
                                                       '#f)))
                                                 (if _$e3549_
                                                     (values _$e3549_)
                                                     (let ((_marks3552_
                                                            (##direct-structure-ref
                                                             _L3536_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _marks3552_)
                                                           (_generate-simple3494_
                                                            _L3536_)
                                                           (_generate-serialized3495_
                                                            _L3536_
                                                            _marks3552_)))))
                                               (gxc#raise-compile-error
                                                '"Cannot quote non-identifier syntax"
                                                _L3536_)))
                                         _hd35093531_)
                                        (_g35023515_ _g35033518_))))
                                (_g35023515_ _g35033518_))))
                        (_g35023515_ _g35033518_)))))
            (_g35013554_ _stx3490_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_stx3423_)
        (let* ((_g34253442_
                (lambda (_g34263439_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g34263439_)))
               (_g34243487_
                (lambda (_g34263445_)
                  (if (gx#stx-pair? _g34263445_)
                      (let ((_e34293447_ (gx#stx-e _g34263445_)))
                        (let ((_hd34303450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e34293447_)))
                              (_tl34313452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e34293447_))))
                          (if (gx#stx-pair? _tl34313452_)
                              (let ((_e34323455_ (gx#stx-e _tl34313452_)))
                                (let ((_hd34333458_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e34323455_)))
                                      (_tl34343460_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e34323455_))))
                                  (if (gx#stx-pair? _tl34343460_)
                                      (let ((_e34353463_
                                             (gx#stx-e _tl34343460_)))
                                        (let ((_hd34363466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e34353463_)))
                                              (_tl34373468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e34353463_))))
                                          (if (gx#stx-null? _tl34373468_)
                                              ((lambda (_L3471_ _L3472_)
                                                 (cons 'define
                                                       (cons (gx#stx-e _L3472_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L3471_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd34363466_
                                               _hd34333458_)
                                              (_g34253442_ _g34263445_))))
                                      (_g34253442_ _g34263445_))))
                              (_g34253442_ _g34263445_))))
                      (_g34253442_ _g34263445_)))))
          (_g34243487_ _stx3423_))))
    (define gxc#generate-meta-begin%
      (lambda (_stx3372_ _state3373_)
        (let* ((_g33753385_
                (lambda (_g33763382_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g33763382_)))
               (_g33743420_
                (lambda (_g33763388_)
                  (if (gx#stx-pair? _g33763388_)
                      (let ((_e33783390_ (gx#stx-e _g33763388_)))
                        (let ((_hd33793393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e33783390_)))
                              (_tl33803395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e33783390_))))
                          ((lambda (_L3398_)
                             (let* ((_c-body3412_
                                     (map (lambda (_g34073409_)
                                            (gxc#compile-e
                                             _g34073409_
                                             _state3373_))
                                          _L3398_))
                                    (_c-body3417_
                                     (filter (lambda (_$obj3414_)
                                               (not (eq? _$obj3414_ '#!void)))
                                             _c-body3412_)))
                               (cons '%#begin _c-body3417_)))
                           _tl33803395_)))
                      (_g33753385_ _g33763388_)))))
          (_g33743420_ _stx3372_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_stx3280_ _state3281_)
        (let* ((_g32833293_
                (lambda (_g32843290_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g32843290_)))
               (_g32823369_
                (lambda (_g32843296_)
                  (if (gx#stx-pair? _g32843296_)
                      (let ((_e32863298_ (gx#stx-e _g32843296_)))
                        (let ((_hd32873301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e32863298_)))
                              (_tl32883303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e32863298_))))
                          ((lambda (_L3306_)
                             (let* ((_phi3316_
                                     (fx+ (gx#current-expander-phi) '1))
                                    (_block3318_
                                     (gxc#meta-state-begin-phi!
                                      _state3281_
                                      _phi3316_))
                                    (_compiled3321_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#apply-generate-meta-phi
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#begin)
                                               _L3306_)
                                         _state3281_))
                                      gx#current-expander-phi
                                      _phi3316_)))
                               (let* ((_g33243334_
                                       (lambda (_g33253331_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g33253331_)))
                                      (_g33233366_
                                       (lambda (_g33253337_)
                                         (if (gx#stx-pair? _g33253337_)
                                             (let ((_e33273339_
                                                    (gx#stx-e _g33253337_)))
                                               (let ((_hd33283342_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e33273339_)))
                                                     (_tl33293344_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e33273339_))))
                                                 (if (gx#identifier?
                                                      _hd33283342_)
                                                     (if (gx#stx-eq?
                                                          '%#begin
                                                          _hd33283342_)
                                                         ((lambda (_L3347_)
                                                            (let ((_c-body3364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj3361_)
                                     (not (eq? _$obj3361_ '#!void)))
                                   _L3347_)))
                      (if _block3318_
                          (cons '%#begin-syntax
                                (cons (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'load-module
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _block3318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _c-body3364_))
                          (if (null? _c-body3364_)
                              '#!void
                              (cons '%#begin-syntax _c-body3364_)))))
                  _tl33293344_)
                 (_g33243334_ _g33253337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g33243334_
                                                      _g33253337_))))
                                             (_g33243334_ _g33253337_)))))
                                 (_g33233366_ _compiled3321_))))
                           _tl32883303_)))
                      (_g32833293_ _g32843296_)))))
          (_g32823369_ _stx3280_))))
    (define gxc#generate-meta-module%
      (lambda (_stx3211_ _state3212_)
        (gxc#meta-state-end-phi! _state3212_)
        (let* ((_g32143228_
                (lambda (_g32153225_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g32153225_)))
               (_g32133277_
                (lambda (_g32153231_)
                  (if (gx#stx-pair? _g32153231_)
                      (let ((_e32183233_ (gx#stx-e _g32153231_)))
                        (let ((_hd32193236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e32183233_)))
                              (_tl32203238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e32183233_))))
                          (if (gx#stx-pair? _tl32203238_)
                              (let ((_e32213241_ (gx#stx-e _tl32203238_)))
                                (let ((_hd32223244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e32213241_)))
                                      (_tl32233246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e32213241_))))
                                  ((lambda (_L3249_ _L3250_)
                                     (let ((_key3263_
                                            (gx#core-identifier-key _L3250_)))
                                       (if (interned-symbol? _key3263_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"Cannot compile module with uninterned id"
                                            _stx3211_
                                            _L3250_
                                            _key3263_))
                                       (let* ((_ctx3265_
                                               (gx#syntax-local-e__0 _L3250_))
                                              (_code3268_
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e
                                                   (##structure-ref
                                                    _ctx3265_
                                                    '11
                                                    gx#module-context::t
                                                    '#f)
                                                   _state3212_))
                                                gx#current-expander-context
                                                _ctx3265_))
                                              (_rt3270_
                                               (table-ref
                                                (gxc#current-compile-runtime-sections)
                                                _ctx3265_
                                                '#f))
                                              (_loader3272_
                                               (if _rt3270_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _rt3270_ '())) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_modid3274_ (gx#stx-e _L3250_)))
                                         (gxc#meta-state-end-phi! _state3212_)
                                         (cons '%#module
                                               (cons _modid3274_
                                                     (cons _code3268_
                                                           _loader3272_))))))
                                   _tl32233246_
                                   _hd32223244_)))
                              (_g32143228_ _g32153231_))))
                      (_g32143228_ _g32153231_)))))
          (_g32133277_ _stx3211_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx3201_ _context-chain3202_)
        (let _lp3204_ ((_ctx3206_ _ctx3201_) (_path3207_ '()))
          (let ((_super3209_
                 (##structure-ref _ctx3206_ '3 gx#phi-context::t '#f)))
            (if (memq _super3209_ _context-chain3202_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _ctx3206_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _path3207_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super3209_
                       'gx#module-context::t))
                    (_lp3204_
                     _super3209_
                     (cons (car (##structure-ref
                                 _ctx3206_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _path3207_))
                    (cons (make-symbol
                           '":"
                           (##structure-ref
                            _ctx3206_
                            '1
                            gx#expander-context::t
                            '#f))
                          _path3207_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp3196_ ((_ctx3198_ (gx#current-expander-context)) (_r3199_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx3198_ 'gx#module-context::t))
              (_lp3196_
               (##structure-ref _ctx3198_ '3 gx#phi-context::t '#f)
               (cons _ctx3198_ _r3199_))
              _r3199_))))
    (define gxc#generate-meta-import%
      (lambda (_stx2965_ _state2966_)
        (letrec* ((_context-chain2968_ (gxc#current-context-chain))
                  (_make-import-spec2969_
                   (lambda (_in3132_)
                     (let* ((_in31333145_ _in3132_)
                            (_E31353149_
                             (lambda ()
                               (error '"No clause matching" _in31333145_)))
                            (_K31363159_
                             (lambda (_phi3152_
                                      _name3153_
                                      _src-name3154_
                                      _src-phi3155_
                                      _src-key3156_
                                      _src-ctx3157_)
                               (cons _phi3152_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name3153_)
                                           (cons _src-phi3155_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _src-name3154_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in31333145_
                              'gx#module-import::t))
                           (let ((_e31373162_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _in31333145_ '1))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e31373162_
                                    'gx#module-export::t))
                                 (let* ((_e31403165_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e31373162_ '1)))
                                        (_src-ctx3168_ _e31403165_)
                                        (_e31413170_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e31373162_ '2)))
                                        (_src-key3173_ _e31413170_)
                                        (_e31423175_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e31373162_ '3)))
                                        (_src-phi3178_ _e31423175_)
                                        (_e31433180_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e31373162_ '4)))
                                        (_src-name3183_ _e31433180_)
                                        (_e31383185_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in31333145_ '2)))
                                        (_name3188_ _e31383185_)
                                        (_e31393190_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in31333145_ '3)))
                                        (_phi3193_ _e31393190_))
                                   (_K31363159_
                                    _phi3193_
                                    _name3188_
                                    _src-name3183_
                                    _src-phi3178_
                                    _src-key3173_
                                    _src-ctx3168_))
                                 (_E31353149_)))
                           (_E31353149_)))))
                  (_make-import-path2970_
                   (lambda (_ctx3130_)
                     (gxc#generate-meta-import-path
                      _ctx3130_
                      _context-chain2968_)))
                  (_make-import-spec-in2971_
                   (lambda (_ctx3127_ _in3128_)
                     (cons 'spec:
                           (cons (_make-import-path2970_ _ctx3127_)
                                 (reverse _in3128_))))))
          (gxc#meta-state-end-phi! _state2966_)
          (let* ((_g29732983_
                  (lambda (_g29742980_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g29742980_)))
                 (_g29723124_
                  (lambda (_g29742986_)
                    (if (gx#stx-pair? _g29742986_)
                        (let ((_e29762988_ (gx#stx-e _g29742986_)))
                          (let ((_hd29772991_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e29762988_)))
                                (_tl29782993_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e29762988_))))
                            ((lambda (_L2996_)
                               (let _lp3007_ ((_rest3009_ _L2996_)
                                              (_current-src3010_ '#f)
                                              (_current-in3011_ '())
                                              (_r3012_ '()))
                                 (let* ((_rest30133021_ _rest3009_)
                                        (_else30153031_
                                         (lambda ()
                                           (let ((_r3029_ (if _current-src3010_
                                                              (cons (_make-import-spec-in2971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src3010_
                             _current-in3011_)
                            _r3012_)
                      _r3012_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r3029_)))))
                                        (_K30173112_
                                         (lambda (_rest3034_ _in3035_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in3035_
                                                  'gx#module-import::t))
                                               (let* ((_in30363043_ _in3035_)
                                                      (_E30383047_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in30363043_)))
                                                      (_K30393052_
                                                       (lambda (_src-ctx3050_)
                                                         (if (eq? _current-src3010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx3050_)
                     (_lp3007_
                      _rest3034_
                      _current-src3010_
                      (cons (_make-import-spec2969_ _in3035_) _current-in3011_)
                      _r3012_)
                     (if _current-src3010_
                         (_lp3007_
                          _rest3034_
                          _src-ctx3050_
                          (cons (_make-import-spec2969_ _in3035_) '())
                          (cons (_make-import-spec-in2971_
                                 _current-src3010_
                                 _current-in3011_)
                                _r3012_))
                         (_lp3007_
                          _rest3034_
                          _src-ctx3050_
                          (cons (_make-import-spec2969_ _in3035_) '())
                          _r3012_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in30363043_
                                                        'gx#module-import::t))
                                                     (let ((_e30403055_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _in30363043_
                                                               '1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e30403055_
                                                              'gx#module-export::t))
                                                           (let* ((_e30413058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##vector-ref _e30403055_ '1)))
                          (_src-ctx3061_ _e30413058_))
                     (_K30393052_ _src-ctx3061_))
                   (_E30383047_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E30383047_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in3035_
                                                      'gx#import-set::t))
                                                   (let* ((_phi3063_
                                                           (##direct-structure-ref
                                                            _in3035_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src3065_
                                                           (##direct-structure-ref
                                                            _in3035_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in3105_
                                                           (let* ((_g30663075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path2970_ _src3065_))
                          (_E30693079_
                           (lambda ()
                             (error '"No clause matching" _g30663075_))))
                     (let ((_K30713095_ (lambda (_path3093_) _path3093_))
                           (_K30703085_
                            (lambda (_path3083_) (cons 'in: _path3083_))))
                       (if (let () (declare (not safe)) (##pair? _g30663075_))
                           (let ((_tl30733100_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g30663075_)))
                                 (_hd30723098_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g30663075_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl30733100_))
                                 (let ((_path3103_ _hd30723098_))
                                   (_K30713095_ _path3103_))
                                 (let ((_path3088_ _g30663075_))
                                   (_K30703085_ _path3088_))))
                           (let ((_path3088_ _g30663075_))
                             (_K30703085_ _path3088_))))))
                  (_r3107_ (if _current-src3010_
                               (cons (_make-import-spec-in2971_
                                      _current-src3010_
                                      _current-in3011_)
                                     _r3012_)
                               _r3012_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp3007_
                                                      _rest3034_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi3063_)
                                                                _src-in3105_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi3063_ (cons _src-in3105_ '()))))
                    _r3107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in3035_
                                                          'gx#module-context::t))
                                                       (let ((_r3110_ (if _current-src3010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in2971_
                                         _current-src3010_
                                         _current-in3011_)
                                        _r3012_)
                                  _r3012_)))
                 (_lp3007_
                  _rest3034_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path2970_ _in3035_))
                        _r3110_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest30133021_))
                                       (let ((_hd30183115_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest30133021_)))
                                             (_tl30193117_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest30133021_))))
                                         (let* ((_in3120_ _hd30183115_)
                                                (_rest3122_ _tl30193117_))
                                           (_K30173112_ _rest3122_ _in3120_)))
                                       (_else30153031_)))))
                             _tl29782993_)))
                        (_g29732983_ _g29742986_)))))
            (_g29723124_ _stx2965_)))))
    (define gxc#generate-meta-export%
      (lambda (_stx2775_ _state2776_)
        (letrec* ((_context-chain2778_ (gxc#current-context-chain))
                  (_make-import-path2779_
                   (lambda (_ctx2963_)
                     (gxc#generate-meta-import-path
                      _ctx2963_
                      _context-chain2778_))))
          (let* ((_g27812791_
                  (lambda (_g27822788_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g27822788_)))
                 (_g27802960_
                  (lambda (_g27822794_)
                    (if (gx#stx-pair? _g27822794_)
                        (let ((_e27842796_ (gx#stx-e _g27822794_)))
                          (let ((_hd27852799_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e27842796_)))
                                (_tl27862801_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e27842796_))))
                            ((lambda (_L2804_)
                               (let _lp2815_ ((_rest2817_ _L2804_)
                                              (_r2818_ '()))
                                 (let* ((_rest28192827_ _rest2817_)
                                        (_else28212835_
                                         (lambda ()
                                           (cons '%#export (reverse _r2818_))))
                                        (_K28232948_
                                         (lambda (_rest2838_ _out2839_)
                                           (let* ((_out28402853_ _out2839_)
                                                  (_E28432857_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _out28402853_))))
                                             (let ((_K28472927_
                                                    (lambda (_name2923_
                                                             _phi2924_
                                                             _key2925_)
                                                      (_lp2815_
                                                       _rest2838_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _phi2924_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _key2925_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _name2923_)
                                             '()))))
                     _r2818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K28442907_
                                                    (lambda (_phi2861_
                                                             _src2862_)
                                                      (let* ((_out2902_
                                                              (if _src2862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_g28632872_
                                              (_make-import-path2779_
                                               _src2862_))
                                             (_E28662876_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _g28632872_))))
                                        (let ((_K28682892_
                                               (lambda (_path2890_)
                                                 _path2890_))
                                              (_K28672882_
                                               (lambda (_path2880_)
                                                 (cons 'in: _path2880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _g28632872_))
                                              (let ((_tl28702897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _g28632872_)))
                                                    (_hd28692895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _g28632872_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl28702897_))
                                                    (let ((_path2900_
                                                           _hd28692895_))
                                                      (_K28682892_ _path2900_))
                                                    (let ((_path2885_
                                                           _g28632872_))
                                                      (_K28672882_
                                                       _path2885_))))
                                              (let ((_path2885_ _g28632872_))
                                                (_K28672882_ _path2885_)))))
                                      '()))
                          '#t))
                     (_out2904_
                      (if (fxzero? _phi2861_)
                          _out2902_
                          (cons 'phi: (cons _phi2861_ (cons _out2902_ '()))))))
                (_lp2815_ _rest2838_ (cons _out2904_ _r2818_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match28422920_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out28402853_
                                                               'gx#export-set::t))
                                                            (let* ((_e28452910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out28402853_ '1)))
                           (_e28462915_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out28402853_ '2))))
                      (let ((_src2913_ _e28452910_) (_phi2918_ _e28462915_))
                        (_K28442907_ _phi2918_ _src2913_)))
                    (_E28432857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out28402853_
                                                        'gx#module-export::t))
                                                     (let* ((_e28482930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _out28402853_ '1)))
                    (_e28492933_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out28402853_ '2)))
                    (_e28502938_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out28402853_ '3)))
                    (_e28512943_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out28402853_ '4))))
               (let ((_key2936_ _e28492933_)
                     (_phi2941_ _e28502938_)
                     (_name2946_ _e28512943_))
                 (_K28472927_ _name2946_ _phi2941_ _key2936_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_try-match28422920_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest28192827_))
                                       (let ((_hd28242951_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest28192827_)))
                                             (_tl28252953_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest28192827_))))
                                         (let* ((_out2956_ _hd28242951_)
                                                (_rest2958_ _tl28252953_))
                                           (_K28232948_ _rest2958_ _out2956_)))
                                       (_else28212835_)))))
                             _tl27862801_)))
                        (_g27812791_ _g27822794_)))))
            (_g27802960_ _stx2775_)))))
    (define gxc#generate-meta-provide%
      (lambda (_stx2736_ _state2737_)
        (gxc#meta-state-end-phi! _state2737_)
        (let* ((_g27392749_
                (lambda (_g27402746_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g27402746_)))
               (_g27382772_
                (lambda (_g27402752_)
                  (if (gx#stx-pair? _g27402752_)
                      (let ((_e27422754_ (gx#stx-e _g27402752_)))
                        (let ((_hd27432757_
                               (let ()
                                 (declare (not safe))
                                 (##car _e27422754_)))
                              (_tl27442759_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e27422754_))))
                          ((lambda (_L2762_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L2762_)))
                           _tl27442759_)))
                      (_g27392749_ _g27402752_)))))
          (_g27382772_ _stx2736_))))
    (define gxc#generate-meta-extern%
      (lambda (_stx2607_ _state2608_)
        (letrec ((_generate12610_
                  (lambda (_id2731_ _eid2732_)
                    (let ((_eid2734_ (gx#stx-e _eid2732_)))
                      (if (interned-symbol? _eid2734_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx2607_
                           _eid2734_))
                      (cons (gxc#generate-runtime-identifier _id2731_)
                            (cons _eid2734_ '()))))))
          (let* ((_g26122640_
                  (lambda (_g26132637_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g26132637_)))
                 (_g26112728_
                  (lambda (_g26132643_)
                    (if (gx#stx-pair? _g26132643_)
                        (let ((_e26162645_ (gx#stx-e _g26132643_)))
                          (let ((_hd26172648_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e26162645_)))
                                (_tl26182650_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e26162645_))))
                            (if (gx#stx-pair/null? _tl26182650_)
                                (let ((_g16647_
                                       (gx#syntax-split-splice
                                        _tl26182650_
                                        '0)))
                                  (begin
                                    (let ((_g16648_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g16647_)
                                                 (##vector-length _g16647_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g16648_ 2)))
                                          (error "Context expects 2 values"
                                                 _g16648_)))
                                    (let ((_target26192653_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16647_ 0)))
                                          (_tl26212655_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16647_ 1))))
                                      (if (gx#stx-null? _tl26212655_)
                                          (letrec ((_loop26222658_
                                                    (lambda (_hd26202661_
                                                             _eid26262663_
                                                             _id26272665_)
                                                      (if (gx#stx-pair?
                                                           _hd26202661_)
                                                          (let ((_e26232668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd26202661_)))
                    (let ((_lp-hd26242671_
                           (let () (declare (not safe)) (##car _e26232668_)))
                          (_lp-tl26252673_
                           (let () (declare (not safe)) (##cdr _e26232668_))))
                      (if (gx#stx-pair? _lp-hd26242671_)
                          (let ((_e26302676_ (gx#stx-e _lp-hd26242671_)))
                            (let ((_hd26312679_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e26302676_)))
                                  (_tl26322681_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e26302676_))))
                              (if (gx#stx-pair? _tl26322681_)
                                  (let ((_e26332684_ (gx#stx-e _tl26322681_)))
                                    (let ((_hd26342687_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e26332684_)))
                                          (_tl26352689_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e26332684_))))
                                      (if (gx#stx-null? _tl26352689_)
                                          (_loop26222658_
                                           _lp-tl26252673_
                                           (cons _hd26342687_ _eid26262663_)
                                           (cons _hd26312679_ _id26272665_))
                                          (_g26122640_ _g26132643_))))
                                  (_g26122640_ _g26132643_))))
                          (_g26122640_ _g26132643_))))
                  (let ((_eid26282692_ (reverse _eid26262663_))
                        (_id26292694_ (reverse _id26272665_)))
                    ((lambda (_L2697_ _L2698_)
                       (cons '%#extern
                             (map _generate12610_
                                  (foldr1 (lambda (_g27132716_ _g27142718_)
                                            (cons _g27132716_ _g27142718_))
                                          '()
                                          _L2698_)
                                  (foldr1 (lambda (_g27202723_ _g27212725_)
                                            (cons _g27202723_ _g27212725_))
                                          '()
                                          _L2697_))))
                     _eid26282692_
                     _id26292694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop26222658_
                                             _target26192653_
                                             '()
                                             '()))
                                          (_g26122640_ _g26132643_)))))
                                (_g26122640_ _g26132643_))))
                        (_g26122640_ _g26132643_)))))
            (_g26112728_ _stx2607_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_stx2397_ _state2398_)
        (letrec ((_generate12400_
                  (lambda (_id2602_)
                    (let ((_eid2604_
                           (gxc#generate-runtime-binding-id _id2602_))
                          (_ident2605_
                           (gxc#generate-runtime-identifier _id2602_)))
                      (cons '%#define-runtime
                            (cons _ident2605_ (cons _eid2604_ '()))))))
                 (_generate*2401_
                  (lambda (_all2570_)
                    (let* ((_all25712579_ _all2570_)
                           (_else25732587_
                            (lambda () (cons '%#begin _all2570_)))
                           (_K25752592_ (lambda (_one2590_) _one2590_)))
                      (if (let () (declare (not safe)) (##pair? _all25712579_))
                          (let ((_hd25762595_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all25712579_)))
                                (_tl25772597_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all25712579_))))
                            (let ((_one2600_ _hd25762595_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl25772597_))
                                  (_K25752592_ _one2600_)
                                  (_else25732587_))))
                          (_else25732587_))))))
          (let* ((_g24032420_
                  (lambda (_g24042417_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g24042417_)))
                 (_g24022567_
                  (lambda (_g24042423_)
                    (if (gx#stx-pair? _g24042423_)
                        (let ((_e24072425_ (gx#stx-e _g24042423_)))
                          (let ((_hd24082428_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e24072425_)))
                                (_tl24092430_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e24072425_))))
                            (if (gx#stx-pair? _tl24092430_)
                                (let ((_e24102433_ (gx#stx-e _tl24092430_)))
                                  (let ((_hd24112436_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e24102433_)))
                                        (_tl24122438_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e24102433_))))
                                    (if (gx#stx-pair? _tl24122438_)
                                        (let ((_e24132441_
                                               (gx#stx-e _tl24122438_)))
                                          (let ((_hd24142444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e24132441_)))
                                                (_tl24152446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e24132441_))))
                                            (if (gx#stx-null? _tl24152446_)
                                                ((lambda (_L2449_ _L2450_)
                                                   (let _lp2466_ ((_rest2468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L2450_)
                          (_r2469_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx1655316554_
                                                             _rest2468_)
                                                            (_g24742491_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx1655316554_))))
                                                       (let ((___kont1655516556_
                                                              (lambda (_L2554_)
                                                                (_lp2466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L2554_
                         _r2469_)))
                     (___kont1655716558_
                      (lambda (_L2527_ _L2528_)
                        (_lp2466_
                         _L2527_
                         (cons (_generate12400_ _L2528_) _r2469_))))
                     (___kont1655916560_
                      (lambda (_L2503_)
                        (_generate*2401_
                         (foldl1 cons
                                 (cons (_generate12400_ _L2503_) '())
                                 _r2469_))))
                     (___kont1656116562_
                      (lambda () (_generate*2401_ (reverse _r2469_)))))
                 (let ((_g24722514_
                        (lambda ()
                          (let ((_L2503_ ___stx1655316554_))
                            (if (gx#identifier? _L2503_)
                                (___kont1655916560_ _L2503_)
                                (___kont1656116562_))))))
                   (if (gx#stx-pair? ___stx1655316554_)
                       (let ((_e24772543_ (gx#stx-e ___stx1655316554_)))
                         (let ((_tl24792548_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e24772543_)))
                               (_hd24782546_
                                (let ()
                                  (declare (not safe))
                                  (##car _e24772543_))))
                           (if (gx#stx-datum? _hd24782546_)
                               (let ((_e24802551_ (gx#stx-e _hd24782546_)))
                                 (if (equal? _e24802551_ '#f)
                                     (___kont1655516556_ _tl24792548_)
                                     (___kont1655716558_
                                      _tl24792548_
                                      _hd24782546_)))
                               (___kont1655716558_
                                _tl24792548_
                                _hd24782546_))))
                       (_g24722514_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd24142444_
                                                 _hd24112436_)
                                                (_g24032420_ _g24042423_))))
                                        (_g24032420_ _g24042423_))))
                                (_g24032420_ _g24042423_))))
                        (_g24032420_ _g24042423_)))))
            (_g24022567_ _stx2397_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_stx2294_ _state2295_)
        (let* ((_g22972314_
                (lambda (_g22982311_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g22982311_)))
               (_g22962394_
                (lambda (_g22982317_)
                  (if (gx#stx-pair? _g22982317_)
                      (let ((_e23012319_ (gx#stx-e _g22982317_)))
                        (let ((_hd23022322_
                               (let ()
                                 (declare (not safe))
                                 (##car _e23012319_)))
                              (_tl23032324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e23012319_))))
                          (if (gx#stx-pair? _tl23032324_)
                              (let ((_e23042327_ (gx#stx-e _tl23032324_)))
                                (let ((_hd23052330_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e23042327_)))
                                      (_tl23062332_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e23042327_))))
                                  (if (gx#stx-pair? _tl23062332_)
                                      (let ((_e23072335_
                                             (gx#stx-e _tl23062332_)))
                                        (let ((_hd23082338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e23072335_)))
                                              (_tl23092340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e23072335_))))
                                          (if (gx#stx-null? _tl23092340_)
                                              ((lambda (_L2343_ _L2344_)
                                                 (let* ((_eid2359_
                                                         (gxc#generate-runtime-binding-id
                                                          _L2344_))
                                                        (_phi2361_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1))
                                                        (_block2363_
                                                         (gxc#meta-state-begin-phi!
                                                          _state2295_
                                                          _phi2361_)))
                                                   (let* ((_g23662373_
                                                           (lambda (_g23672370_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g23672370_)))
                                                          (_g23652391_
                                                           (lambda (_g23672376_)
                                                             ((lambda (_L2378_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state2295_
                           _phi2361_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L2378_ (cons _L2343_ '()))))))
                      _g23672376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g23652391_ _eid2359_))
                                                   (if _block2363_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block2363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L2344_)
                                             (cons _eid2359_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L2344_)
                           (cons _eid2359_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd23082338_
                                               _hd23052330_)
                                              (_g22972314_ _g22982317_))))
                                      (_g22972314_ _g22982317_))))
                              (_g22972314_ _g22982317_))))
                      (_g22972314_ _g22982317_)))))
          (_g22962394_ _stx2294_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_stx2226_ _state2227_)
        (let* ((_g22292246_
                (lambda (_g22302243_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g22302243_)))
               (_g22282291_
                (lambda (_g22302249_)
                  (if (gx#stx-pair? _g22302249_)
                      (let ((_e22332251_ (gx#stx-e _g22302249_)))
                        (let ((_hd22342254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e22332251_)))
                              (_tl22352256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e22332251_))))
                          (if (gx#stx-pair? _tl22352256_)
                              (let ((_e22362259_ (gx#stx-e _tl22352256_)))
                                (let ((_hd22372262_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e22362259_)))
                                      (_tl22382264_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e22362259_))))
                                  (if (gx#stx-pair? _tl22382264_)
                                      (let ((_e22392267_
                                             (gx#stx-e _tl22382264_)))
                                        (let ((_hd22402270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e22392267_)))
                                              (_tl22412272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e22392267_))))
                                          (if (gx#stx-null? _tl22412272_)
                                              ((lambda (_L2275_ _L2276_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _L2276_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L2275_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd22402270_
                                               _hd22372262_)
                                              (_g22292246_ _g22302249_))))
                                      (_g22292246_ _g22302249_))))
                              (_g22292246_ _g22302249_))))
                      (_g22292246_ _g22302249_)))))
          (_g22282291_ _stx2226_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_stx2223_ _state2224_)
        (gxc#meta-state-add-phi!
         _state2224_
         (gx#current-expander-phi)
         _stx2223_)
        (gxc#generate-meta-define-values% _stx2223_ _state2224_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx2220_ _state2221_)
        (gxc#meta-state-add-phi!
         _state2221_
         (gx#current-expander-phi)
         _stx2220_)
        '#!void))
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
      (lambda _$args2217_
        (apply make-struct-instance gxc#meta-state::t _$args2217_)))
    (define gxc#meta-state-src
      (make-struct-field-accessor gxc#meta-state::t '0))
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
      (lambda (_self2214_ _ctx2215_)
        (if (let ((__tmp16649
                   (let () (declare (not safe)) (##vector-length _self2214_))))
              (declare (not safe))
              (##fx< '4 __tmp16649))
            (begin
              (let ((__tmp16650
                     (gxc#module-id->path-string
                      (##structure-ref
                       _ctx2215_
                       '1
                       gx#expander-context::t
                       '#f))))
                (declare (not safe))
                (##vector-set! _self2214_ '1 __tmp16650))
              (let () (declare (not safe)) (##vector-set! _self2214_ '2 '1))
              (let ((__tmp16651 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self2214_ '3 __tmp16651))
              (let () (declare (not safe)) (##vector-set! _self2214_ '4 '())))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self2214_))))
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
      (lambda _$args2089_
        (apply make-struct-instance gxc#meta-state-block::t _$args2089_)))
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
      (lambda (_state2048_ _phi2049_)
        (let* ((_state20502058_ _state2048_)
               (_E20522062_
                (lambda () (error '"No clause matching" _state20502058_)))
               (_K20532071_
                (lambda (_open2065_ _n2066_ _src2067_)
                  (if (table-ref _open2065_ _phi2049_ '#f)
                      '#f
                      (let ((_block-ref2069_
                             (string-append
                              _src2067_
                              '"__"
                              (number->string _n2066_))))
                        (##structure-set!
                         _state2048_
                         (fx+ _n2066_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open2065_
                         _phi2049_
                         (let ((__tmp16652 (gx#current-expander-context)))
                           (declare (not safe))
                           (##structure
                            gxc#meta-state-block::t
                            __tmp16652
                            _phi2049_
                            _n2066_
                            '())))
                        _block-ref2069_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _state20502058_ 'gxc#meta-state::t))
              (let* ((_e20542074_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state20502058_ '1)))
                     (_src2077_ _e20542074_)
                     (_e20552079_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state20502058_ '2)))
                     (_n2082_ _e20552079_)
                     (_e20562084_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state20502058_ '3)))
                     (_open2087_ _e20562084_))
                (_K20532071_ _open2087_ _n2082_ _src2077_))
              (_E20522062_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_state2042_ _phi2043_ _stx2044_)
        (let ((_block2046_
               (table-ref
                (##structure-ref _state2042_ '3 gxc#meta-state::t '#f)
                _phi2043_
                '#f)))
          (##structure-set!
           _block2046_
           (cons _stx2044_
                 (##structure-ref _block2046_ '4 gxc#meta-state-block::t '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state2037_)
        (##structure-set!
         _state2037_
         (hash-fold
          (lambda (_g16653_ _block2039_ _r2040_) (cons _block2039_ _r2040_))
          (##structure-ref _state2037_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state2037_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state2037_
         (make-table 'test: eq?)
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state1989_)
        (gxc#meta-state-end-phi! _state1989_)
        (foldl1 (lambda (_block1991_ _r1992_)
                  (let* ((_block19932002_ _block1991_)
                         (_E19952006_
                          (lambda ()
                            (error '"No clause matching" _block19932002_)))
                         (_K19962014_
                          (lambda (_code2009_ _n2010_ _phi2011_ _ctx2012_)
                            (if (null? _code2009_)
                                _r1992_
                                (cons (cons _ctx2012_
                                            (cons _phi2011_
                                                  (cons _n2010_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code2009_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r1992_)))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _block19932002_
                           'gxc#meta-state-block::t))
                        (let* ((_e19972017_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block19932002_ '1)))
                               (_ctx2020_ _e19972017_)
                               (_e19982022_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block19932002_ '2)))
                               (_phi2025_ _e19982022_)
                               (_e19992027_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block19932002_ '3)))
                               (_n2030_ _e19992027_)
                               (_e20002032_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block19932002_ '4)))
                               (_code2035_ _e20002032_))
                          (_K19962014_ _code2035_ _n2030_ _phi2025_ _ctx2020_))
                        (_E19952006_))))
                '()
                (##structure-ref _state1989_ '4 gxc#meta-state::t '#f))))
    (define gxc#collect-expression-refs
      (lambda (_stx1985_)
        (let ((_ht1987_ (make-table 'test: eq?)))
          (gxc#apply-collect-expression-refs _stx1985_ _ht1987_)
          _ht1987_)))
    (define gxc#collect-refs-ref%
      (lambda (_stx1928_ _ht1929_)
        (let* ((_g19311944_
                (lambda (_g19321941_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g19321941_)))
               (_g19301982_
                (lambda (_g19321947_)
                  (if (gx#stx-pair? _g19321947_)
                      (let ((_e19341949_ (gx#stx-e _g19321947_)))
                        (let ((_hd19351952_
                               (let ()
                                 (declare (not safe))
                                 (##car _e19341949_)))
                              (_tl19361954_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e19341949_))))
                          (if (gx#stx-pair? _tl19361954_)
                              (let ((_e19371957_ (gx#stx-e _tl19361954_)))
                                (let ((_hd19381960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e19371957_)))
                                      (_tl19391962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e19371957_))))
                                  (if (gx#stx-null? _tl19391962_)
                                      ((lambda (_L1965_)
                                         (let* ((_bind1977_
                                                 (gx#resolve-identifier__0
                                                  _L1965_))
                                                (_eid1979_
                                                 (if _bind1977_
                                                     (##structure-ref
                                                      _bind1977_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L1965_))))
                                           (table-set!
                                            _ht1929_
                                            _eid1979_
                                            _eid1979_)))
                                       _hd19381960_)
                                      (_g19311944_ _g19321947_))))
                              (_g19311944_ _g19321947_))))
                      (_g19311944_ _g19321947_)))))
          (_g19301982_ _stx1928_))))
    (define gxc#collect-refs-setq%
      (lambda (_stx1855_ _ht1856_)
        (let* ((_g18581875_
                (lambda (_g18591872_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g18591872_)))
               (_g18571925_
                (lambda (_g18591878_)
                  (if (gx#stx-pair? _g18591878_)
                      (let ((_e18621880_ (gx#stx-e _g18591878_)))
                        (let ((_hd18631883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e18621880_)))
                              (_tl18641885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e18621880_))))
                          (if (gx#stx-pair? _tl18641885_)
                              (let ((_e18651888_ (gx#stx-e _tl18641885_)))
                                (let ((_hd18661891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e18651888_)))
                                      (_tl18671893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e18651888_))))
                                  (if (gx#stx-pair? _tl18671893_)
                                      (let ((_e18681896_
                                             (gx#stx-e _tl18671893_)))
                                        (let ((_hd18691899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e18681896_)))
                                              (_tl18701901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e18681896_))))
                                          (if (gx#stx-null? _tl18701901_)
                                              ((lambda (_L1904_ _L1905_)
                                                 (let* ((_bind1920_
                                                         (gx#resolve-identifier__0
                                                          _L1905_))
                                                        (_eid1922_
                                                         (if _bind1920_
                                                             (##structure-ref
                                                              _bind1920_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L1905_))))
                                                   (table-set!
                                                    _ht1856_
                                                    _eid1922_
                                                    _eid1922_)
                                                   (gxc#compile-e
                                                    _L1904_
                                                    _ht1856_)))
                                               _hd18691899_
                                               _hd18661891_)
                                              (_g18581875_ _g18591878_))))
                                      (_g18581875_ _g18591878_))))
                              (_g18581875_ _g18591878_))))
                      (_g18581875_ _g18591878_)))))
          (_g18571925_ _stx1855_))))
    (define gxc#find-runtime-begin%
      (lambda (_stx1817_)
        (let* ((_g18191829_
                (lambda (_g18201826_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g18201826_)))
               (_g18181852_
                (lambda (_g18201832_)
                  (if (gx#stx-pair? _g18201832_)
                      (let ((_e18221834_ (gx#stx-e _g18201832_)))
                        (let ((_hd18231837_
                               (let ()
                                 (declare (not safe))
                                 (##car _e18221834_)))
                              (_tl18241839_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e18221834_))))
                          ((lambda (_L1842_) (ormap1 gxc#compile-e _L1842_))
                           _tl18241839_)))
                      (_g18191829_ _g18201832_)))))
          (_g18181852_ _stx1817_))))
    (define gxc#find-lambda-expression-begin%
      (lambda (_stx1779_)
        (let* ((_g17811791_
                (lambda (_g17821788_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g17821788_)))
               (_g17801814_
                (lambda (_g17821794_)
                  (if (gx#stx-pair? _g17821794_)
                      (let ((_e17841796_ (gx#stx-e _g17821794_)))
                        (let ((_hd17851799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e17841796_)))
                              (_tl17861801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e17841796_))))
                          ((lambda (_L1804_) (gxc#compile-e (last _L1804_)))
                           _tl17861801_)))
                      (_g17811791_ _g17821794_)))))
          (_g17801814_ _stx1779_))))
    (define gxc#find-lambda-expression-begin-annotation%
      (lambda (_stx1712_)
        (let* ((_g17141731_
                (lambda (_g17151728_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g17151728_)))
               (_g17131776_
                (lambda (_g17151734_)
                  (if (gx#stx-pair? _g17151734_)
                      (let ((_e17181736_ (gx#stx-e _g17151734_)))
                        (let ((_hd17191739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e17181736_)))
                              (_tl17201741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e17181736_))))
                          (if (gx#stx-pair? _tl17201741_)
                              (let ((_e17211744_ (gx#stx-e _tl17201741_)))
                                (let ((_hd17221747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e17211744_)))
                                      (_tl17231749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e17211744_))))
                                  (if (gx#stx-pair? _tl17231749_)
                                      (let ((_e17241752_
                                             (gx#stx-e _tl17231749_)))
                                        (let ((_hd17251755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e17241752_)))
                                              (_tl17261757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e17241752_))))
                                          (if (gx#stx-null? _tl17261757_)
                                              ((lambda (_L1760_ _L1761_)
                                                 (gxc#compile-e _L1760_))
                                               _hd17251755_
                                               _hd17221747_)
                                              (_g17141731_ _g17151734_))))
                                      (_g17141731_ _g17151734_))))
                              (_g17141731_ _g17151734_))))
                      (_g17141731_ _g17151734_)))))
          (_g17131776_ _stx1712_))))
    (define gxc#find-lambda-expression-let-values%
      (lambda (_stx1645_)
        (let* ((_g16471664_
                (lambda (_g16481661_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16481661_)))
               (_g16461709_
                (lambda (_g16481667_)
                  (if (gx#stx-pair? _g16481667_)
                      (let ((_e16511669_ (gx#stx-e _g16481667_)))
                        (let ((_hd16521672_
                               (let ()
                                 (declare (not safe))
                                 (##car _e16511669_)))
                              (_tl16531674_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e16511669_))))
                          (if (gx#stx-pair? _tl16531674_)
                              (let ((_e16541677_ (gx#stx-e _tl16531674_)))
                                (let ((_hd16551680_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e16541677_)))
                                      (_tl16561682_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e16541677_))))
                                  (if (gx#stx-pair? _tl16561682_)
                                      (let ((_e16571685_
                                             (gx#stx-e _tl16561682_)))
                                        (let ((_hd16581688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e16571685_)))
                                              (_tl16591690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e16571685_))))
                                          (if (gx#stx-null? _tl16591690_)
                                              ((lambda (_L1693_ _L1694_)
                                                 (gxc#compile-e _L1693_))
                                               _hd16581688_
                                               _hd16551680_)
                                              (_g16471664_ _g16481667_))))
                                      (_g16471664_ _g16481667_))))
                              (_g16471664_ _g16481667_))))
                      (_g16471664_ _g16481667_)))))
          (_g16461709_ _stx1645_))))
    (define gxc#count-values-single% (lambda (_stx1643_) '1))
    (define gxc#count-values-begin%
      (lambda (_stx1561_)
        (let* ((_g15631582_
                (lambda (_g15641579_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g15641579_)))
               (_g15621640_
                (lambda (_g15641585_)
                  (if (gx#stx-pair? _g15641585_)
                      (let ((_e15661587_ (gx#stx-e _g15641585_)))
                        (let ((_hd15671590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e15661587_)))
                              (_tl15681592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e15661587_))))
                          (if (gx#stx-pair/null? _tl15681592_)
                              (let ((_g16654_
                                     (gx#syntax-split-splice _tl15681592_ '0)))
                                (begin
                                  (let ((_g16655_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16654_)
                                               (##vector-length _g16654_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16655_ 2)))
                                        (error "Context expects 2 values"
                                               _g16655_)))
                                  (let ((_target15691595_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16654_ 0)))
                                        (_tl15711597_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16654_ 1))))
                                    (if (gx#stx-null? _tl15711597_)
                                        (letrec ((_loop15721600_
                                                  (lambda (_hd15701603_
                                                           _expr15761605_)
                                                    (if (gx#stx-pair?
                                                         _hd15701603_)
                                                        (let ((_e15731608_
                                                               (gx#stx-e
                                                                _hd15701603_)))
                                                          (let ((_lp-hd15741611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e15731608_)))
                        (_lp-tl15751613_
                         (let () (declare (not safe)) (##cdr _e15731608_))))
                    (_loop15721600_
                     _lp-tl15751613_
                     (cons _lp-hd15741611_ _expr15761605_))))
                (let ((_expr15771616_ (reverse _expr15761605_)))
                  ((lambda (_L1619_)
                     (gxc#compile-e
                      (last (foldr1 (lambda (_g16321635_ _g16331637_)
                                      (cons _g16321635_ _g16331637_))
                                    '()
                                    _L1619_))))
                   _expr15771616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop15721600_
                                           _target15691595_
                                           '()))
                                        (_g15631582_ _g15641585_)))))
                              (_g15631582_ _g15641585_))))
                      (_g15631582_ _g15641585_)))))
          (_g15621640_ _stx1561_))))
    (define gxc#count-values-begin-annotation%
      (lambda (_stx1494_)
        (let* ((_g14961513_
                (lambda (_g14971510_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g14971510_)))
               (_g14951558_
                (lambda (_g14971516_)
                  (if (gx#stx-pair? _g14971516_)
                      (let ((_e15001518_ (gx#stx-e _g14971516_)))
                        (let ((_hd15011521_
                               (let ()
                                 (declare (not safe))
                                 (##car _e15001518_)))
                              (_tl15021523_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e15001518_))))
                          (if (gx#stx-pair? _tl15021523_)
                              (let ((_e15031526_ (gx#stx-e _tl15021523_)))
                                (let ((_hd15041529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e15031526_)))
                                      (_tl15051531_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e15031526_))))
                                  (if (gx#stx-pair? _tl15051531_)
                                      (let ((_e15061534_
                                             (gx#stx-e _tl15051531_)))
                                        (let ((_hd15071537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e15061534_)))
                                              (_tl15081539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e15061534_))))
                                          (if (gx#stx-null? _tl15081539_)
                                              ((lambda (_L1542_ _L1543_)
                                                 (gxc#compile-e _L1542_))
                                               _hd15071537_
                                               _hd15041529_)
                                              (_g14961513_ _g14971516_))))
                                      (_g14961513_ _g14971516_))))
                              (_g14961513_ _g14971516_))))
                      (_g14961513_ _g14971516_)))))
          (_g14951558_ _stx1494_))))
    (define gxc#count-values-let-values%
      (lambda (_stx1427_)
        (let* ((_g14291446_
                (lambda (_g14301443_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g14301443_)))
               (_g14281491_
                (lambda (_g14301449_)
                  (if (gx#stx-pair? _g14301449_)
                      (let ((_e14331451_ (gx#stx-e _g14301449_)))
                        (let ((_hd14341454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e14331451_)))
                              (_tl14351456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e14331451_))))
                          (if (gx#stx-pair? _tl14351456_)
                              (let ((_e14361459_ (gx#stx-e _tl14351456_)))
                                (let ((_hd14371462_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e14361459_)))
                                      (_tl14381464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e14361459_))))
                                  (if (gx#stx-pair? _tl14381464_)
                                      (let ((_e14391467_
                                             (gx#stx-e _tl14381464_)))
                                        (let ((_hd14401470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e14391467_)))
                                              (_tl14411472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e14391467_))))
                                          (if (gx#stx-null? _tl14411472_)
                                              ((lambda (_L1475_ _L1476_)
                                                 (gxc#compile-e _L1475_))
                                               _hd14401470_
                                               _hd14371462_)
                                              (_g14291446_ _g14301449_))))
                                      (_g14291446_ _g14301449_))))
                              (_g14291446_ _g14301449_))))
                      (_g14291446_ _g14301449_)))))
          (_g14281491_ _stx1427_))))
    (define gxc#count-values-call%
      (lambda (_stx1294_)
        (let* ((___stx1658316584_ _stx1294_)
               (_g12971326_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1658316584_))))
          (let ((___kont1658516586_
                 (lambda (_L1394_ _L1395_)
                   (length (foldr1 (lambda (_g14161419_ _g14171421_)
                                     (cons _g14161419_ _g14171421_))
                                   '()
                                   _L1394_))))
                (___kont1658916590_ (lambda () '#f)))
            (let ((___match1662816629_
                   (lambda (_e13011338_
                            _hd13021341_
                            _tl13031343_
                            _e13041346_
                            _hd13051349_
                            _tl13061351_
                            _e13071354_
                            _hd13081357_
                            _tl13091359_
                            _e13101362_
                            _hd13111365_
                            _tl13121367_
                            ___splice1658716588_
                            _target13131370_
                            _tl13151372_)
                     (letrec ((_loop13161375_
                               (lambda (_hd13141378_ _rand13201380_)
                                 (if (gx#stx-pair? _hd13141378_)
                                     (let ((_e13171383_
                                            (gx#stx-e _hd13141378_)))
                                       (let ((_lp-tl13191388_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e13171383_)))
                                             (_lp-hd13181386_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e13171383_))))
                                         (_loop13161375_
                                          _lp-tl13191388_
                                          (cons _lp-hd13181386_
                                                _rand13201380_))))
                                     (let ((_rand13211391_
                                            (reverse _rand13201380_)))
                                       (let ((_L1394_ _rand13211391_)
                                             (_L1395_ _hd13111365_))
                                         (if (gx#free-identifier=?
                                              _L1395_
                                              'values)
                                             (___kont1658516586_
                                              _L1394_
                                              _L1395_)
                                             (___kont1658916590_))))))))
                       (_loop13161375_ _target13131370_ '())))))
              (if (gx#stx-pair? ___stx1658316584_)
                  (let ((_e13011338_ (gx#stx-e ___stx1658316584_)))
                    (let ((_tl13031343_
                           (let () (declare (not safe)) (##cdr _e13011338_)))
                          (_hd13021341_
                           (let () (declare (not safe)) (##car _e13011338_))))
                      (if (gx#stx-pair? _tl13031343_)
                          (let ((_e13041346_ (gx#stx-e _tl13031343_)))
                            (let ((_tl13061351_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e13041346_)))
                                  (_hd13051349_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e13041346_))))
                              (if (gx#stx-pair? _hd13051349_)
                                  (let ((_e13071354_ (gx#stx-e _hd13051349_)))
                                    (let ((_tl13091359_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e13071354_)))
                                          (_hd13081357_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e13071354_))))
                                      (if (gx#identifier? _hd13081357_)
                                          (if (gx#stx-eq? '%#ref _hd13081357_)
                                              (if (gx#stx-pair? _tl13091359_)
                                                  (let ((_e13101362_
                                                         (gx#stx-e
                                                          _tl13091359_)))
                                                    (let ((_tl13121367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e13101362_)))
                                                          (_hd13111365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e13101362_))))
                                                      (if (gx#stx-null?
                                                           _tl13121367_)
                                                          (if (gx#stx-pair/null?
                                                               _tl13061351_)
                                                              (let ((___splice1658716588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl13061351_ '0)))
                        (let ((_tl13151372_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1658716588_ '1)))
                              (_target13131370_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1658716588_ '0))))
                          (if (gx#stx-null? _tl13151372_)
                              (___match1662816629_
                               _e13011338_
                               _hd13021341_
                               _tl13031343_
                               _e13041346_
                               _hd13051349_
                               _tl13061351_
                               _e13071354_
                               _hd13081357_
                               _tl13091359_
                               _e13101362_
                               _hd13111365_
                               _tl13121367_
                               ___splice1658716588_
                               _target13131370_
                               _tl13151372_)
                              (___kont1658916590_))))
                      (___kont1658916590_))
                  (___kont1658916590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1658916590_))
                                              (___kont1658916590_))
                                          (___kont1658916590_))))
                                  (___kont1658916590_))))
                          (___kont1658916590_))))
                  (___kont1658916590_)))))))
    (define gxc#count-values-if%
      (lambda (_stx1198_)
        (let* ((_g12001221_
                (lambda (_g12011218_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g12011218_)))
               (_g11991291_
                (lambda (_g12011224_)
                  (if (gx#stx-pair? _g12011224_)
                      (let ((_e12051226_ (gx#stx-e _g12011224_)))
                        (let ((_hd12061229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e12051226_)))
                              (_tl12071231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e12051226_))))
                          (if (gx#stx-pair? _tl12071231_)
                              (let ((_e12081234_ (gx#stx-e _tl12071231_)))
                                (let ((_hd12091237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e12081234_)))
                                      (_tl12101239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e12081234_))))
                                  (if (gx#stx-pair? _tl12101239_)
                                      (let ((_e12111242_
                                             (gx#stx-e _tl12101239_)))
                                        (let ((_hd12121245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e12111242_)))
                                              (_tl12131247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e12111242_))))
                                          (if (gx#stx-pair? _tl12131247_)
                                              (let ((_e12141250_
                                                     (gx#stx-e _tl12131247_)))
                                                (let ((_hd12151253_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e12141250_)))
                                                      (_tl12161255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e12141250_))))
                                                  (if (gx#stx-null?
                                                       _tl12161255_)
                                                      ((lambda (_L1258_
                                                                _L1259_
                                                                _L1260_)
                                                         (let ((_c112771279_
                                                                (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L1259_)))
                   (if _c112771279_
                       (let* ((_c11282_ _c112771279_)
                              (_c212831285_ (gxc#compile-e _L1258_)))
                         (if _c212831285_
                             (let ((_c21288_ _c212831285_))
                               (if (fx= _c11282_ _c21288_) _c11282_ '#f))
                             '#f))
                       '#f)))
               _hd12151253_
               _hd12121245_
               _hd12091237_)
              (_g12001221_ _g12011224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g12001221_ _g12011224_))))
                                      (_g12001221_ _g12011224_))))
                              (_g12001221_ _g12011224_))))
                      (_g12001221_ _g12011224_)))))
          (_g11991291_ _stx1198_))))))
