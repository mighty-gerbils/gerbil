(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1693679900)
  (begin
    (define gxc#current-compile-methods (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e15375_
                  (lambda (_id15377_) (symbol-hash (gx#stx-e _id15377_)))))
          (make-table 'test: gx#bound-identifier=? 'hash: _hash-e15375_))))
    (define gxc#compile-e
      (lambda (_stx15330_ . _args15331_)
        (let* ((_g1533315343_
                (lambda (_g1533415340_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1533415340_)))
               (_g1533215371_
                (lambda (_g1533415346_)
                  (if (gx#stx-pair? _g1533415346_)
                      (let ((_e1533615348_ (gx#stx-e _g1533415346_)))
                        (let ((_hd1533715351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1533615348_)))
                              (_tl1533815353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1533615348_))))
                          ((lambda (_L15356_)
                             (let ((_$e15366_
                                    (table-ref
                                     (gxc#current-compile-methods)
                                     (gx#stx-e _L15356_)
                                     '#f)))
                               (if _$e15366_
                                   ((lambda (_method15369_)
                                      (apply _method15369_
                                             _stx15330_
                                             _args15331_))
                                    _$e15366_)
                                   (gxc#raise-compile-error
                                    '"Cannot compile; missing method"
                                    _stx15330_
                                    _L15356_))))
                           _hd1533715351_)))
                      (_g1533315343_ _g1533415346_)))))
          (_g1533215371_ _stx15330_))))
    (define gxc#&void-expression
      (make-promise
       (lambda ()
         (let ((_tbl15327_ (make-table 'test: eq?)))
           (table-set! _tbl15327_ '%#begin-annotation void)
           (table-set! _tbl15327_ '%#lambda void)
           (table-set! _tbl15327_ '%#case-lambda void)
           (table-set! _tbl15327_ '%#let-values void)
           (table-set! _tbl15327_ '%#letrec-values void)
           (table-set! _tbl15327_ '%#letrec*-values void)
           (table-set! _tbl15327_ '%#quote void)
           (table-set! _tbl15327_ '%#quote-syntax void)
           (table-set! _tbl15327_ '%#call void)
           (table-set! _tbl15327_ '%#if void)
           (table-set! _tbl15327_ '%#ref void)
           (table-set! _tbl15327_ '%#set! void)
           (table-set! _tbl15327_ '%#struct-instance? void)
           (table-set! _tbl15327_ '%#struct-direct-instance? void)
           (table-set! _tbl15327_ '%#struct-ref void)
           (table-set! _tbl15327_ '%#struct-set! void)
           (table-set! _tbl15327_ '%#struct-direct-ref void)
           (table-set! _tbl15327_ '%#struct-direct-set! void)
           (table-set! _tbl15327_ '%#struct-unchecked-ref void)
           (table-set! _tbl15327_ '%#struct-unchecked-set! void)
           _tbl15327_))))
    (define gxc#&void-special-form
      (make-promise
       (lambda ()
         (let ((_tbl15323_ (make-table 'test: eq?)))
           (table-set! _tbl15323_ '%#begin void)
           (table-set! _tbl15323_ '%#begin-syntax void)
           (table-set! _tbl15323_ '%#begin-foreign void)
           (table-set! _tbl15323_ '%#module void)
           (table-set! _tbl15323_ '%#import void)
           (table-set! _tbl15323_ '%#export void)
           (table-set! _tbl15323_ '%#provide void)
           (table-set! _tbl15323_ '%#extern void)
           (table-set! _tbl15323_ '%#define-values void)
           (table-set! _tbl15323_ '%#define-syntax void)
           (table-set! _tbl15323_ '%#define-alias void)
           (table-set! _tbl15323_ '%#declare void)
           _tbl15323_))))
    (define gxc#&void
      (make-promise
       (lambda ()
         (let ((_tbl15319_ (make-table 'test: eq?)))
           (hash-copy! _tbl15319_ (force gxc#&void-special-form))
           (hash-copy! _tbl15319_ (force gxc#&void-expression))
           _tbl15319_))))
    (define gxc#&false-expression
      (make-promise
       (lambda ()
         (let ((_tbl15315_ (make-table 'test: eq?)))
           (table-set! _tbl15315_ '%#begin-annotation false)
           (table-set! _tbl15315_ '%#lambda false)
           (table-set! _tbl15315_ '%#case-lambda false)
           (table-set! _tbl15315_ '%#let-values false)
           (table-set! _tbl15315_ '%#letrec-values false)
           (table-set! _tbl15315_ '%#letrec*-values false)
           (table-set! _tbl15315_ '%#quote false)
           (table-set! _tbl15315_ '%#quote-syntax false)
           (table-set! _tbl15315_ '%#call false)
           (table-set! _tbl15315_ '%#if false)
           (table-set! _tbl15315_ '%#ref false)
           (table-set! _tbl15315_ '%#set! false)
           (table-set! _tbl15315_ '%#struct-instance? false)
           (table-set! _tbl15315_ '%#struct-direct-instance? false)
           (table-set! _tbl15315_ '%#struct-ref false)
           (table-set! _tbl15315_ '%#struct-set! false)
           (table-set! _tbl15315_ '%#struct-direct-ref false)
           (table-set! _tbl15315_ '%#struct-direct-set! false)
           (table-set! _tbl15315_ '%#struct-unchecked-ref false)
           (table-set! _tbl15315_ '%#struct-unchecked-set! false)
           _tbl15315_))))
    (define gxc#&false-special-form
      (make-promise
       (lambda ()
         (let ((_tbl15311_ (make-table 'test: eq?)))
           (table-set! _tbl15311_ '%#begin false)
           (table-set! _tbl15311_ '%#begin-syntax false)
           (table-set! _tbl15311_ '%#begin-foreign false)
           (table-set! _tbl15311_ '%#module false)
           (table-set! _tbl15311_ '%#import false)
           (table-set! _tbl15311_ '%#export false)
           (table-set! _tbl15311_ '%#provide false)
           (table-set! _tbl15311_ '%#extern false)
           (table-set! _tbl15311_ '%#define-values false)
           (table-set! _tbl15311_ '%#define-syntax false)
           (table-set! _tbl15311_ '%#define-alias false)
           (table-set! _tbl15311_ '%#declare false)
           _tbl15311_))))
    (define gxc#&false
      (make-promise
       (lambda ()
         (let ((_tbl15307_ (make-table 'test: eq?)))
           (hash-copy! _tbl15307_ (force gxc#&false-special-form))
           (hash-copy! _tbl15307_ (force gxc#&false-expression))
           _tbl15307_))))
    (define gxc#&collect-bindings
      (make-promise
       (lambda ()
         (let ((_tbl15303_ (make-table 'test: eq?)))
           (hash-copy! _tbl15303_ (force gxc#&void-expression))
           (hash-copy! _tbl15303_ (force gxc#&void-special-form))
           (table-set! _tbl15303_ '%#begin gxc#collect-begin%)
           (table-set! _tbl15303_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl15303_ '%#module gxc#collect-module%)
           (table-set!
            _tbl15303_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl15303_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl15303_))))
    (define gxc#apply-collect-bindings
      (lambda (_stx15296_ . _args15298_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15296_ _args15298_))
         gxc#current-compile-methods
         (force gxc#&collect-bindings))))
    (define gxc#&lift-modules
      (make-promise
       (lambda ()
         (let ((_tbl15293_ (make-table 'test: eq?)))
           (hash-copy! _tbl15293_ (force gxc#&void))
           (table-set! _tbl15293_ '%#begin gxc#collect-begin%)
           (table-set! _tbl15293_ '%#module gxc#lift-modules-module%)
           _tbl15293_))))
    (define gxc#apply-lift-modules
      (lambda (_stx15286_ . _args15288_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15286_ _args15288_))
         gxc#current-compile-methods
         (force gxc#&lift-modules))))
    (define gxc#&find-runtime-code
      (make-promise
       (lambda ()
         (let ((_tbl15283_ (make-table 'test: eq?)))
           (table-set! _tbl15283_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl15283_ '%#begin-syntax false)
           (table-set! _tbl15283_ '%#begin-foreign true)
           (table-set! _tbl15283_ '%#begin-annotation true)
           (table-set! _tbl15283_ '%#module false)
           (table-set! _tbl15283_ '%#import false)
           (table-set! _tbl15283_ '%#export false)
           (table-set! _tbl15283_ '%#provide false)
           (table-set! _tbl15283_ '%#extern false)
           (table-set! _tbl15283_ '%#define-values true)
           (table-set! _tbl15283_ '%#define-syntax false)
           (table-set! _tbl15283_ '%#define-alias false)
           (table-set! _tbl15283_ '%#declare false)
           (table-set! _tbl15283_ '%#lambda true)
           (table-set! _tbl15283_ '%#case-lambda true)
           (table-set! _tbl15283_ '%#let-values true)
           (table-set! _tbl15283_ '%#letrec-values true)
           (table-set! _tbl15283_ '%#letrec*-values true)
           (table-set! _tbl15283_ '%#quote true)
           (table-set! _tbl15283_ '%#call true)
           (table-set! _tbl15283_ '%#if true)
           (table-set! _tbl15283_ '%#ref true)
           (table-set! _tbl15283_ '%#set! true)
           (table-set! _tbl15283_ '%#struct-instance? true)
           (table-set! _tbl15283_ '%#struct-direct-instance? true)
           (table-set! _tbl15283_ '%#struct-ref true)
           (table-set! _tbl15283_ '%#struct-set! true)
           (table-set! _tbl15283_ '%#struct-direct-ref true)
           (table-set! _tbl15283_ '%#struct-direct-set! true)
           (table-set! _tbl15283_ '%#struct-unchecked-ref true)
           (table-set! _tbl15283_ '%#struct-unchecked-set! true)
           _tbl15283_))))
    (define gxc#apply-find-runtime-code
      (lambda (_stx15276_ . _args15278_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15276_ _args15278_))
         gxc#current-compile-methods
         (force gxc#&find-runtime-code))))
    (define gxc#&find-lambda-expression
      (make-promise
       (lambda ()
         (let ((_tbl15273_ (make-table 'test: eq?)))
           (hash-copy! _tbl15273_ (force gxc#&false))
           (table-set! _tbl15273_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl15273_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl15273_ '%#lambda values)
           (table-set! _tbl15273_ '%#case-lambda values)
           (table-set!
            _tbl15273_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl15273_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl15273_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl15273_))))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx15266_ . _args15268_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15266_ _args15268_))
         gxc#current-compile-methods
         (force gxc#&find-lambda-expression))))
    (define gxc#&count-values
      (make-promise
       (lambda ()
         (let ((_tbl15263_ (make-table 'test: eq?)))
           (hash-copy! _tbl15263_ (force gxc#&false-expression))
           (table-set! _tbl15263_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl15263_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl15263_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl15263_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl15263_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl15263_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl15263_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl15263_ '%#quote gxc#count-values-single%)
           (table-set! _tbl15263_ '%#call gxc#count-values-call%)
           (table-set! _tbl15263_ '%#if gxc#count-values-if%)
           _tbl15263_))))
    (define gxc#apply-count-values
      (lambda (_stx15256_ . _args15258_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15256_ _args15258_))
         gxc#current-compile-methods
         (force gxc#&count-values))))
    (define gxc#&generate-runtime-empty
      (make-promise
       (lambda ()
         (let ((_tbl15253_ (make-table 'test: eq?)))
           (table-set! _tbl15253_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl15253_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl15253_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl15253_))))
    (define gxc#&generate-loader
      (make-promise
       (lambda ()
         (let ((_tbl15249_ (make-table 'test: eq?)))
           (hash-copy! _tbl15249_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl15249_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl15249_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl15249_))))
    (define gxc#apply-generate-loader
      (lambda (_stx15242_ . _args15244_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15242_ _args15244_))
         gxc#current-compile-methods
         (force gxc#&generate-loader))))
    (define gxc#&generate-runtime
      (make-promise
       (lambda ()
         (let ((_tbl15239_ (make-table 'test: eq?)))
           (hash-copy! _tbl15239_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl15239_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl15239_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl15239_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl15239_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl15239_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl15239_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl15239_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl15239_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl15239_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl15239_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl15239_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl15239_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl15239_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl15239_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl15239_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl15239_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl15239_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl15239_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl15239_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl15239_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl15239_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl15239_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl15239_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl15239_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl15239_))))
    (define gxc#apply-generate-runtime
      (lambda (_stx15232_ . _args15234_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15232_ _args15234_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime))))
    (define gxc#&generate-runtime-phi
      (make-promise
       (lambda ()
         (let ((_tbl15229_ (make-table 'test: eq?)))
           (hash-copy! _tbl15229_ (force gxc#&generate-runtime))
           (table-set!
            _tbl15229_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl15229_))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx15222_ . _args15224_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15222_ _args15224_))
         gxc#current-compile-methods
         (force gxc#&generate-runtime-phi))))
    (define gxc#&collect-expression-refs
      (make-promise
       (lambda ()
         (let ((_tbl15219_ (make-table 'test: eq?)))
           (table-set! _tbl15219_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl15219_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl15219_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl15219_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl15219_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl15219_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl15219_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl15219_ '%#quote void)
           (table-set! _tbl15219_ '%#quote-syntax void)
           (table-set! _tbl15219_ '%#call gxc#collect-operands)
           (table-set! _tbl15219_ '%#if gxc#collect-operands)
           (table-set! _tbl15219_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl15219_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl15219_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl15219_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl15219_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl15219_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl15219_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl15219_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl15219_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl15219_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl15219_))))
    (define gxc#apply-collect-expression-refs
      (lambda (_stx15212_ . _args15214_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15212_ _args15214_))
         gxc#current-compile-methods
         (force gxc#&collect-expression-refs))))
    (define gxc#&generate-meta
      (make-promise
       (lambda ()
         (let ((_tbl15209_ (make-table 'test: eq?)))
           (hash-copy! _tbl15209_ (force gxc#&void-expression))
           (table-set! _tbl15209_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl15209_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl15209_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl15209_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl15209_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl15209_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl15209_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl15209_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl15209_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl15209_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl15209_ '%#begin-foreign void)
           (table-set! _tbl15209_ '%#declare void)
           _tbl15209_))))
    (define gxc#apply-generate-meta
      (lambda (_stx15202_ . _args15204_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15202_ _args15204_))
         gxc#current-compile-methods
         (force gxc#&generate-meta))))
    (define gxc#&generate-meta-phi
      (make-promise
       (lambda ()
         (let ((_tbl15199_ (make-table 'test: eq?)))
           (table-set! _tbl15199_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl15199_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl15199_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl15199_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl15199_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl15199_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15199_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15199_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15199_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15199_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15199_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl15199_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl15199_ '%#declare void)
           _tbl15199_))))
    (define gxc#apply-generate-meta-phi
      (lambda (_stx15192_ . _args15194_)
        (call-with-parameters
         (lambda () (apply gxc#compile-e _stx15192_ _args15194_))
         gxc#current-compile-methods
         (force gxc#&generate-meta-phi))))
    (define gxc#collect-begin%
      (lambda (_stx15149_ . _args15150_)
        (let* ((_g1515215162_
                (lambda (_g1515315159_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1515315159_)))
               (_g1515115189_
                (lambda (_g1515315165_)
                  (if (gx#stx-pair? _g1515315165_)
                      (let ((_e1515515167_ (gx#stx-e _g1515315165_)))
                        (let ((_hd1515615170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1515515167_)))
                              (_tl1515715172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1515515167_))))
                          ((lambda (_L15175_)
                             (for-each
                              (lambda (_g1518415186_)
                                (apply gxc#compile-e
                                       _g1518415186_
                                       _args15150_))
                              (gx#stx-e _L15175_)))
                           _tl1515715172_)))
                      (_g1515215162_ _g1515315165_)))))
          (_g1515115189_ _stx15149_))))
    (define gxc#collect-begin-syntax%
      (lambda (_stx15145_ . _args15146_)
        (call-with-parameters
         (lambda () (apply gxc#collect-begin% _stx15145_ _args15146_))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1))))
    (define gxc#collect-module%
      (lambda (_stx15087_ . _args15088_)
        (let* ((_g1509015104_
                (lambda (_g1509115101_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1509115101_)))
               (_g1508915142_
                (lambda (_g1509115107_)
                  (if (gx#stx-pair? _g1509115107_)
                      (let ((_e1509415109_ (gx#stx-e _g1509115107_)))
                        (let ((_hd1509515112_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1509415109_)))
                              (_tl1509615114_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1509415109_))))
                          (if (gx#stx-pair? _tl1509615114_)
                              (let ((_e1509715117_ (gx#stx-e _tl1509615114_)))
                                (let ((_hd1509815120_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1509715117_)))
                                      (_tl1509915122_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1509715117_))))
                                  ((lambda (_L15125_ _L15126_)
                                     (let ((_ctx15139_
                                            (gx#syntax-local-e__0 _L15126_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (apply gxc#compile-e
                                                 (##structure-ref
                                                  _ctx15139_
                                                  '11
                                                  gx#module-context::t
                                                  '#f)
                                                 _args15088_))
                                        gx#current-expander-context
                                        _ctx15139_)))
                                   _tl1509915122_
                                   _hd1509815120_)))
                              (_g1509015104_ _g1509115107_))))
                      (_g1509015104_ _g1509115107_)))))
          (_g1508915142_ _stx15087_))))
    (define gxc#collect-begin-annotation%
      (lambda (_stx15019_ . _args15020_)
        (let* ((_g1502215039_
                (lambda (_g1502315036_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1502315036_)))
               (_g1502115084_
                (lambda (_g1502315042_)
                  (if (gx#stx-pair? _g1502315042_)
                      (let ((_e1502615044_ (gx#stx-e _g1502315042_)))
                        (let ((_hd1502715047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1502615044_)))
                              (_tl1502815049_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1502615044_))))
                          (if (gx#stx-pair? _tl1502815049_)
                              (let ((_e1502915052_ (gx#stx-e _tl1502815049_)))
                                (let ((_hd1503015055_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1502915052_)))
                                      (_tl1503115057_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1502915052_))))
                                  (if (gx#stx-pair? _tl1503115057_)
                                      (let ((_e1503215060_
                                             (gx#stx-e _tl1503115057_)))
                                        (let ((_hd1503315063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1503215060_)))
                                              (_tl1503415065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1503215060_))))
                                          (if (gx#stx-null? _tl1503415065_)
                                              ((lambda (_L15068_ _L15069_)
                                                 (apply gxc#compile-e
                                                        _L15068_
                                                        _args15020_))
                                               _hd1503315063_
                                               _hd1503015055_)
                                              (_g1502215039_ _g1502315042_))))
                                      (_g1502215039_ _g1502315042_))))
                              (_g1502215039_ _g1502315042_))))
                      (_g1502215039_ _g1502315042_)))))
          (_g1502115084_ _stx15019_))))
    (define gxc#collect-define-values%
      (lambda (_stx14951_ . _args14952_)
        (let* ((_g1495414971_
                (lambda (_g1495514968_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1495514968_)))
               (_g1495315016_
                (lambda (_g1495514974_)
                  (if (gx#stx-pair? _g1495514974_)
                      (let ((_e1495814976_ (gx#stx-e _g1495514974_)))
                        (let ((_hd1495914979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1495814976_)))
                              (_tl1496014981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1495814976_))))
                          (if (gx#stx-pair? _tl1496014981_)
                              (let ((_e1496114984_ (gx#stx-e _tl1496014981_)))
                                (let ((_hd1496214987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1496114984_)))
                                      (_tl1496314989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1496114984_))))
                                  (if (gx#stx-pair? _tl1496314989_)
                                      (let ((_e1496414992_
                                             (gx#stx-e _tl1496314989_)))
                                        (let ((_hd1496514995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1496414992_)))
                                              (_tl1496614997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1496414992_))))
                                          (if (gx#stx-null? _tl1496614997_)
                                              ((lambda (_L15000_ _L15001_)
                                                 (apply gxc#compile-e
                                                        _L15000_
                                                        _args14952_))
                                               _hd1496514995_
                                               _hd1496214987_)
                                              (_g1495414971_ _g1495514974_))))
                                      (_g1495414971_ _g1495514974_))))
                              (_g1495414971_ _g1495514974_))))
                      (_g1495414971_ _g1495514974_)))))
          (_g1495315016_ _stx14951_))))
    (define gxc#collect-define-syntax%
      (lambda (_stx14882_ . _args14883_)
        (let* ((_g1488514902_
                (lambda (_g1488614899_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1488614899_)))
               (_g1488414948_
                (lambda (_g1488614905_)
                  (if (gx#stx-pair? _g1488614905_)
                      (let ((_e1488914907_ (gx#stx-e _g1488614905_)))
                        (let ((_hd1489014910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1488914907_)))
                              (_tl1489114912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1488914907_))))
                          (if (gx#stx-pair? _tl1489114912_)
                              (let ((_e1489214915_ (gx#stx-e _tl1489114912_)))
                                (let ((_hd1489314918_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1489214915_)))
                                      (_tl1489414920_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1489214915_))))
                                  (if (gx#stx-pair? _tl1489414920_)
                                      (let ((_e1489514923_
                                             (gx#stx-e _tl1489414920_)))
                                        (let ((_hd1489614926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1489514923_)))
                                              (_tl1489714928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1489514923_))))
                                          (if (gx#stx-null? _tl1489714928_)
                                              ((lambda (_L14931_ _L14932_)
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (apply gxc#compile-e
                                                           _L14931_
                                                           _args14883_))
                                                  gx#current-expander-phi
                                                  (fx+ (gx#current-expander-phi)
                                                       '1)))
                                               _hd1489614926_
                                               _hd1489314918_)
                                              (_g1488514902_ _g1488614905_))))
                                      (_g1488514902_ _g1488614905_))))
                              (_g1488514902_ _g1488614905_))))
                      (_g1488514902_ _g1488614905_)))))
          (_g1488414948_ _stx14882_))))
    (define gxc#collect-body-lambda%
      (lambda (_stx14814_ . _args14815_)
        (let* ((_g1481714834_
                (lambda (_g1481814831_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1481814831_)))
               (_g1481614879_
                (lambda (_g1481814837_)
                  (if (gx#stx-pair? _g1481814837_)
                      (let ((_e1482114839_ (gx#stx-e _g1481814837_)))
                        (let ((_hd1482214842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1482114839_)))
                              (_tl1482314844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1482114839_))))
                          (if (gx#stx-pair? _tl1482314844_)
                              (let ((_e1482414847_ (gx#stx-e _tl1482314844_)))
                                (let ((_hd1482514850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1482414847_)))
                                      (_tl1482614852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1482414847_))))
                                  (if (gx#stx-pair? _tl1482614852_)
                                      (let ((_e1482714855_
                                             (gx#stx-e _tl1482614852_)))
                                        (let ((_hd1482814858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1482714855_)))
                                              (_tl1482914860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1482714855_))))
                                          (if (gx#stx-null? _tl1482914860_)
                                              ((lambda (_L14863_ _L14864_)
                                                 (apply gxc#compile-e
                                                        _L14863_
                                                        _args14815_))
                                               _hd1482814858_
                                               _hd1482514850_)
                                              (_g1481714834_ _g1481814837_))))
                                      (_g1481714834_ _g1481814837_))))
                              (_g1481714834_ _g1481814837_))))
                      (_g1481714834_ _g1481814837_)))))
          (_g1481614879_ _stx14814_))))
    (define gxc#collect-body-case-lambda%
      (lambda (_stx14696_ . _args14697_)
        (let* ((_g1469914727_
                (lambda (_g1470014724_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1470014724_)))
               (_g1469814811_
                (lambda (_g1470014730_)
                  (if (gx#stx-pair? _g1470014730_)
                      (let ((_e1470314732_ (gx#stx-e _g1470014730_)))
                        (let ((_hd1470414735_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1470314732_)))
                              (_tl1470514737_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1470314732_))))
                          (if (gx#stx-pair/null? _tl1470514737_)
                              (let ((_g16688_
                                     (gx#syntax-split-splice
                                      _tl1470514737_
                                      '0)))
                                (begin
                                  (let ((_g16689_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16688_)
                                               (##vector-length _g16688_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16689_ 2)))
                                        (error "Context expects 2 values"
                                               _g16689_)))
                                  (let ((_target1470614740_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16688_ 0)))
                                        (_tl1470814742_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16688_ 1))))
                                    (if (gx#stx-null? _tl1470814742_)
                                        (letrec ((_loop1470914745_
                                                  (lambda (_hd1470714748_
                                                           _body1471314750_
                                                           _hd1471414752_)
                                                    (if (gx#stx-pair?
                                                         _hd1470714748_)
                                                        (let ((_e1471014755_
                                                               (gx#stx-e
                                                                _hd1470714748_)))
                                                          (let ((_lp-hd1471114758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1471014755_)))
                        (_lp-tl1471214760_
                         (let () (declare (not safe)) (##cdr _e1471014755_))))
                    (if (gx#stx-pair? _lp-hd1471114758_)
                        (let ((_e1471714763_ (gx#stx-e _lp-hd1471114758_)))
                          (let ((_hd1471814766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1471714763_)))
                                (_tl1471914768_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1471714763_))))
                            (if (gx#stx-pair? _tl1471914768_)
                                (let ((_e1472014771_
                                       (gx#stx-e _tl1471914768_)))
                                  (let ((_hd1472114774_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1472014771_)))
                                        (_tl1472214776_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1472014771_))))
                                    (if (gx#stx-null? _tl1472214776_)
                                        (_loop1470914745_
                                         _lp-tl1471214760_
                                         (cons _hd1472114774_ _body1471314750_)
                                         (cons _hd1471814766_ _hd1471414752_))
                                        (_g1469914727_ _g1470014730_))))
                                (_g1469914727_ _g1470014730_))))
                        (_g1469914727_ _g1470014730_))))
                (let ((_body1471514779_ (reverse _body1471314750_))
                      (_hd1471614781_ (reverse _hd1471414752_)))
                  ((lambda (_L14784_ _L14785_)
                     (for-each
                      (lambda (_g1479914801_)
                        (apply gxc#compile-e _g1479914801_ _args14697_))
                      (foldr1 (lambda (_g1480314806_ _g1480414808_)
                                (cons _g1480314806_ _g1480414808_))
                              '()
                              _L14784_)))
                   _body1471514779_
                   _hd1471614781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1470914745_
                                           _target1470614740_
                                           '()
                                           '()))
                                        (_g1469914727_ _g1470014730_)))))
                              (_g1469914727_ _g1470014730_))))
                      (_g1469914727_ _g1470014730_)))))
          (_g1469814811_ _stx14696_))))
    (define gxc#collect-body-let-values%
      (lambda (_stx14549_ . _args14550_)
        (let* ((_g1455214587_
                (lambda (_g1455314584_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1455314584_)))
               (_g1455114693_
                (lambda (_g1455314590_)
                  (if (gx#stx-pair? _g1455314590_)
                      (let ((_e1455714592_ (gx#stx-e _g1455314590_)))
                        (let ((_hd1455814595_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1455714592_)))
                              (_tl1455914597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1455714592_))))
                          (if (gx#stx-pair? _tl1455914597_)
                              (let ((_e1456014600_ (gx#stx-e _tl1455914597_)))
                                (let ((_hd1456114603_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1456014600_)))
                                      (_tl1456214605_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1456014600_))))
                                  (if (gx#stx-pair/null? _hd1456114603_)
                                      (let ((_g16690_
                                             (gx#syntax-split-splice
                                              _hd1456114603_
                                              '0)))
                                        (begin
                                          (let ((_g16691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g16690_)
                                                       (##vector-length
                                                        _g16690_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g16691_ 2)))
                                                (error "Context expects 2 values"
                                                       _g16691_)))
                                          (let ((_target1456314608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g16690_ 0)))
                                                (_tl1456514610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g16690_ 1))))
                                            (if (gx#stx-null? _tl1456514610_)
                                                (letrec ((_loop1456614613_
                                                          (lambda (_hd1456414616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1457014618_
                           _hd1457114620_)
                    (if (gx#stx-pair? _hd1456414616_)
                        (let ((_e1456714623_ (gx#stx-e _hd1456414616_)))
                          (let ((_lp-hd1456814626_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1456714623_)))
                                (_lp-tl1456914628_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1456714623_))))
                            (if (gx#stx-pair? _lp-hd1456814626_)
                                (let ((_e1457414631_
                                       (gx#stx-e _lp-hd1456814626_)))
                                  (let ((_hd1457514634_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1457414631_)))
                                        (_tl1457614636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1457414631_))))
                                    (if (gx#stx-pair? _tl1457614636_)
                                        (let ((_e1457714639_
                                               (gx#stx-e _tl1457614636_)))
                                          (let ((_hd1457814642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1457714639_)))
                                                (_tl1457914644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1457714639_))))
                                            (if (gx#stx-null? _tl1457914644_)
                                                (_loop1456614613_
                                                 _lp-tl1456914628_
                                                 (cons _hd1457814642_
                                                       _expr1457014618_)
                                                 (cons _hd1457514634_
                                                       _hd1457114620_))
                                                (_g1455214587_
                                                 _g1455314590_))))
                                        (_g1455214587_ _g1455314590_))))
                                (_g1455214587_ _g1455314590_))))
                        (let ((_expr1457214647_ (reverse _expr1457014618_))
                              (_hd1457314649_ (reverse _hd1457114620_)))
                          (if (gx#stx-pair? _tl1456214605_)
                              (let ((_e1458014652_ (gx#stx-e _tl1456214605_)))
                                (let ((_hd1458114655_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1458014652_)))
                                      (_tl1458214657_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1458014652_))))
                                  (if (gx#stx-null? _tl1458214657_)
                                      ((lambda (_L14660_ _L14661_ _L14662_)
                                         (for-each
                                          (lambda (_g1468114683_)
                                            (apply gxc#compile-e
                                                   _g1468114683_
                                                   _args14550_))
                                          (foldr1 (lambda (_g1468514688_
                                                           _g1468614690_)
                                                    (cons _g1468514688_
                                                          _g1468614690_))
                                                  (cons _L14660_ '())
                                                  _L14661_)))
                                       _hd1458114655_
                                       _expr1457214647_
                                       _hd1457314649_)
                                      (_g1455214587_ _g1455314590_))))
                              (_g1455214587_ _g1455314590_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1456614613_
                                                   _target1456314608_
                                                   '()
                                                   '()))
                                                (_g1455214587_
                                                 _g1455314590_)))))
                                      (_g1455214587_ _g1455314590_))))
                              (_g1455214587_ _g1455314590_))))
                      (_g1455214587_ _g1455314590_)))))
          (_g1455114693_ _stx14549_))))
    (define gxc#collect-body-setq%
      (lambda (_stx14481_ . _args14482_)
        (let* ((_g1448414501_
                (lambda (_g1448514498_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1448514498_)))
               (_g1448314546_
                (lambda (_g1448514504_)
                  (if (gx#stx-pair? _g1448514504_)
                      (let ((_e1448814506_ (gx#stx-e _g1448514504_)))
                        (let ((_hd1448914509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1448814506_)))
                              (_tl1449014511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1448814506_))))
                          (if (gx#stx-pair? _tl1449014511_)
                              (let ((_e1449114514_ (gx#stx-e _tl1449014511_)))
                                (let ((_hd1449214517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1449114514_)))
                                      (_tl1449314519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1449114514_))))
                                  (if (gx#stx-pair? _tl1449314519_)
                                      (let ((_e1449414522_
                                             (gx#stx-e _tl1449314519_)))
                                        (let ((_hd1449514525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1449414522_)))
                                              (_tl1449614527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1449414522_))))
                                          (if (gx#stx-null? _tl1449614527_)
                                              ((lambda (_L14530_ _L14531_)
                                                 (apply gxc#compile-e
                                                        _L14530_
                                                        _args14482_))
                                               _hd1449514525_
                                               _hd1449214517_)
                                              (_g1448414501_ _g1448514504_))))
                                      (_g1448414501_ _g1448514504_))))
                              (_g1448414501_ _g1448514504_))))
                      (_g1448414501_ _g1448514504_)))))
          (_g1448314546_ _stx14481_))))
    (define gxc#collect-operands
      (lambda (_stx14394_ . _args14395_)
        (let* ((_g1439714416_
                (lambda (_g1439814413_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1439814413_)))
               (_g1439614478_
                (lambda (_g1439814419_)
                  (if (gx#stx-pair? _g1439814419_)
                      (let ((_e1440014421_ (gx#stx-e _g1439814419_)))
                        (let ((_hd1440114424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1440014421_)))
                              (_tl1440214426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1440014421_))))
                          (if (gx#stx-pair/null? _tl1440214426_)
                              (let ((_g16692_
                                     (gx#syntax-split-splice
                                      _tl1440214426_
                                      '0)))
                                (begin
                                  (let ((_g16693_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16692_)
                                               (##vector-length _g16692_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16693_ 2)))
                                        (error "Context expects 2 values"
                                               _g16693_)))
                                  (let ((_target1440314429_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16692_ 0)))
                                        (_tl1440514431_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16692_ 1))))
                                    (if (gx#stx-null? _tl1440514431_)
                                        (letrec ((_loop1440614434_
                                                  (lambda (_hd1440414437_
                                                           _rands1441014439_)
                                                    (if (gx#stx-pair?
                                                         _hd1440414437_)
                                                        (let ((_e1440714442_
                                                               (gx#stx-e
                                                                _hd1440414437_)))
                                                          (let ((_lp-hd1440814445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1440714442_)))
                        (_lp-tl1440914447_
                         (let () (declare (not safe)) (##cdr _e1440714442_))))
                    (_loop1440614434_
                     _lp-tl1440914447_
                     (cons _lp-hd1440814445_ _rands1441014439_))))
                (let ((_rands1441114450_ (reverse _rands1441014439_)))
                  ((lambda (_L14453_)
                     (for-each
                      (lambda (_g1446614468_)
                        (apply gxc#compile-e _g1446614468_ _args14395_))
                      (foldr1 (lambda (_g1447014473_ _g1447114475_)
                                (cons _g1447014473_ _g1447114475_))
                              '()
                              _L14453_)))
                   _rands1441114450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1440614434_
                                           _target1440314429_
                                           '()))
                                        (_g1439714416_ _g1439814419_)))))
                              (_g1439714416_ _g1439814419_))))
                      (_g1439714416_ _g1439814419_)))))
          (_g1439614478_ _stx14394_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_stx14325_)
        (let* ((_g1432714344_
                (lambda (_g1432814341_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1432814341_)))
               (_g1432614391_
                (lambda (_g1432814347_)
                  (if (gx#stx-pair? _g1432814347_)
                      (let ((_e1433114349_ (gx#stx-e _g1432814347_)))
                        (let ((_hd1433214352_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1433114349_)))
                              (_tl1433314354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1433114349_))))
                          (if (gx#stx-pair? _tl1433314354_)
                              (let ((_e1433414357_ (gx#stx-e _tl1433314354_)))
                                (let ((_hd1433514360_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1433414357_)))
                                      (_tl1433614362_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1433414357_))))
                                  (if (gx#stx-pair? _tl1433614362_)
                                      (let ((_e1433714365_
                                             (gx#stx-e _tl1433614362_)))
                                        (let ((_hd1433814368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1433714365_)))
                                              (_tl1433914370_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1433714365_))))
                                          (if (gx#stx-null? _tl1433914370_)
                                              ((lambda (_L14373_ _L14374_)
                                                 (gx#stx-for-each1
                                                  (lambda (_bind14389_)
                                                    (if (gx#identifier?
                                                         _bind14389_)
                                                        (gxc#add-module-binding!
                                                         _bind14389_
                                                         '#f)
                                                        '#!void))
                                                  _L14374_))
                                               _hd1433814368_
                                               _hd1433514360_)
                                              (_g1432714344_ _g1432814347_))))
                                      (_g1432714344_ _g1432814347_))))
                              (_g1432714344_ _g1432814347_))))
                      (_g1432714344_ _g1432814347_)))))
          (_g1432614391_ _stx14325_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_stx14258_)
        (let* ((_g1426014277_
                (lambda (_g1426114274_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1426114274_)))
               (_g1425914322_
                (lambda (_g1426114280_)
                  (if (gx#stx-pair? _g1426114280_)
                      (let ((_e1426414282_ (gx#stx-e _g1426114280_)))
                        (let ((_hd1426514285_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1426414282_)))
                              (_tl1426614287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1426414282_))))
                          (if (gx#stx-pair? _tl1426614287_)
                              (let ((_e1426714290_ (gx#stx-e _tl1426614287_)))
                                (let ((_hd1426814293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1426714290_)))
                                      (_tl1426914295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1426714290_))))
                                  (if (gx#stx-pair? _tl1426914295_)
                                      (let ((_e1427014298_
                                             (gx#stx-e _tl1426914295_)))
                                        (let ((_hd1427114301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1427014298_)))
                                              (_tl1427214303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1427014298_))))
                                          (if (gx#stx-null? _tl1427214303_)
                                              ((lambda (_L14306_ _L14307_)
                                                 (gxc#add-module-binding!
                                                  _L14307_
                                                  '#t))
                                               _hd1427114301_
                                               _hd1426814293_)
                                              (_g1426014277_ _g1426114280_))))
                                      (_g1426014277_ _g1426114280_))))
                              (_g1426014277_ _g1426114280_))))
                      (_g1426014277_ _g1426114280_)))))
          (_g1425914322_ _stx14258_))))
    (define gxc#lift-modules-module%
      (lambda (_stx14200_ _modules14201_)
        (let* ((_g1420314217_
                (lambda (_g1420414214_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1420414214_)))
               (_g1420214255_
                (lambda (_g1420414220_)
                  (if (gx#stx-pair? _g1420414220_)
                      (let ((_e1420714222_ (gx#stx-e _g1420414220_)))
                        (let ((_hd1420814225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1420714222_)))
                              (_tl1420914227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1420714222_))))
                          (if (gx#stx-pair? _tl1420914227_)
                              (let ((_e1421014230_ (gx#stx-e _tl1420914227_)))
                                (let ((_hd1421114233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1421014230_)))
                                      (_tl1421214235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1421014230_))))
                                  ((lambda (_L14238_ _L14239_)
                                     (let ((_ctx14252_
                                            (gx#syntax-local-e__0 _L14239_)))
                                       (set-box!
                                        _modules14201_
                                        (cons _ctx14252_
                                              (unbox _modules14201_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx14252_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules14201_))
                                        gx#current-expander-context
                                        _ctx14252_)))
                                   _tl1421214235_
                                   _hd1421114233_)))
                              (_g1420314217_ _g1420414220_))))
                      (_g1420314217_ _g1420414220_)))))
          (_g1420214255_ _stx14200_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls1415614158_ (gxc#current-compile-decls)))
          (if _decls1415614158_
              (let ((_decls14161_ _decls1415614158_))
                (let _lp14163_ ((_rest14165_ _decls14161_))
                  (let* ((_rest1416614174_ _rest14165_)
                         (_else1416814182_ (lambda () '#f))
                         (_K1417014188_
                          (lambda (_decls14185_ _decl14186_)
                            (if (equal? _decl14186_ '(not safe))
                                '#t
                                (if (equal? _decl14186_ '(safe))
                                    '#f
                                    (_lp14163_ _decls14185_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest1416614174_))
                        (let ((_hd1417114191_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest1416614174_)))
                              (_tl1417214193_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1416614174_))))
                          (let* ((_decl14196_ _hd1417114191_)
                                 (_decls14198_ _tl1417214193_))
                            (_K1417014188_ _decls14198_ _decl14196_)))
                        (_else1416814182_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id14150_ _syntax?14151_)
        (let ((_eid14153_
               (##structure-ref
                (gx#resolve-identifier__0 _id14150_)
                '1
                gx#binding::t
                '#f))
              (_ht14154_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid14153_)
              '#!void
              (table-set!
               _ht14154_
               _eid14153_
               (gx#make-binding-id__1
                (gxc#generate-runtime-gensym-reference__0 _eid14153_)
                _syntax?14151_))))))
    (define gxc#runtime-identifier=?
      (lambda (_id114143_ _id214144_)
        (letrec ((_symbol-e14146_
                  (lambda (_id14148_)
                    (if (symbol? _id14148_)
                        _id14148_
                        (gxc#generate-runtime-binding-id _id14148_)))))
          (eq? (_symbol-e14146_ _id114143_) (_symbol-e14146_ _id214144_)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id14121_)
        (let ((_$e14123_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id14121_
                      'gx#syntax-quote::t))
                   (gx#resolve-identifier__0 _id14121_)
                   '#f)))
          (if _$e14123_
              ((lambda (_bind14126_)
                 (let ((_eid14128_
                        (##structure-ref _bind14126_ '1 gx#binding::t '#f))
                       (_ht14129_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid14128_)
                       _eid14128_
                       (let ((_$e14131_ (table-ref _ht14129_ _eid14128_ '#f)))
                         (if _$e14131_
                             (values _$e14131_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind14126_
                                    'gx#local-binding::t))
                                 (let ((_gid14134_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _eid14128_)))
                                   (table-set! _ht14129_ _eid14128_ _gid14134_)
                                   _gid14134_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind14126_
                                        'gx#module-binding::t))
                                     (let ((_gid14141_
                                            (let ((_$e14136_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind14126_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e14136_
                                                  ((lambda (_ns14139_)
                                                     (make-symbol
                                                      _ns14139_
                                                      '"#"
                                                      _eid14128_))
                                                   _$e14136_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _eid14128_)))))
                                       (table-set!
                                        _ht14129_
                                        _eid14128_
                                        _gid14141_)
                                       _gid14141_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _id14121_
                                      _eid14128_
                                      _bind14126_))))))))
               _$e14123_)
              (if (interned-symbol? (gx#stx-e _id14121_))
                  (gx#stx-e _id14121_)
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _id14121_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id14119_)
        (if (gx#identifier? _id14119_)
            (gxc#generate-runtime-binding-id _id14119_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym14099_ _quote?14100_)
        (let* ((_ht14102_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e14104_ (table-ref _ht14102_ _sym14099_ '#f)))
          (if _$e14104_
              (values _$e14104_)
              (let ((_g14107_
                     (if _quote?14100_
                         (make-symbol
                          '"__"
                          _sym14099_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym14099_ '"_"))))
                (table-set! _ht14102_ _sym14099_ _g14107_)
                _g14107_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym14112_)
        (let ((_quote?14114_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _sym14112_
           _quote?14114_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g16695_
        (let ((_g16694_ (let () (declare (not safe)) (##length _g16695_))))
          (cond ((let () (declare (not safe)) (##fx= _g16694_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g16695_))
                ((let () (declare (not safe)) (##fx= _g16694_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g16695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g16695_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id14096_)
        (gxc#generate-runtime-identifier-key
         (gx#core-identifier-key _id14096_))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key14056_)
        (if (interned-symbol? _key14056_)
            _key14056_
            (if (uninterned-symbol? _key14056_)
                (gxc#generate-runtime-gensym-reference__0 _key14056_)
                (let* ((_key1405714064_ _key14056_)
                       (_E1405914068_
                        (lambda ()
                          (error '"No clause matching" _key1405714064_)))
                       (_K1406014084_
                        (lambda (_mark14071_ _eid14072_)
                          (let ((_$e14074_
                                 (##structure-ref
                                  _mark14071_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e14074_
                                ((lambda (_ht14077_)
                                   (let ((_$e14079_
                                          (table-ref
                                           _ht14077_
                                           _eid14072_
                                           '#f)))
                                     (if _$e14079_
                                         ((lambda (_id14082_)
                                            (if (interned-symbol? _id14082_)
                                                _id14082_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _id14082_)))
                                          _$e14079_)
                                         (gxc#generate-runtime-identifier-key
                                          _eid14072_))))
                                 _$e14074_)
                                (gxc#generate-runtime-identifier-key
                                 _eid14072_))))))
                  (if (let () (declare (not safe)) (##pair? _key1405714064_))
                      (let ((_hd1406114087_
                             (let ()
                               (declare (not safe))
                               (##car _key1405714064_)))
                            (_tl1406214089_
                             (let ()
                               (declare (not safe))
                               (##cdr _key1405714064_))))
                        (let* ((_eid14092_ _hd1406114087_)
                               (_mark14094_ _tl1406214089_))
                          (_K1406014084_ _mark14094_ _eid14092_)))
                      (_E1405914068_)))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top14043_)
        (if _top14043_
            (let ((_ns14045_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi14046_ (gx#current-expander-phi)))
              (if (fxpositive? _phi14046_)
                  (make-symbol
                   _ns14045_
                   '"["
                   (number->string _phi14046_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns14045_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top14052_ '#f))
          (gxc#generate-runtime-temporary__% _top14052_))))
    (define gxc#generate-runtime-temporary
      (lambda _g16697_
        (let ((_g16696_ (let () (declare (not safe)) (##length _g16697_))))
          (cond ((let () (declare (not safe)) (##fx= _g16696_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g16697_))
                ((let () (declare (not safe)) (##fx= _g16696_ 1))
                 (apply gxc#generate-runtime-temporary__% _g16697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g16697_))))))
    (define gxc#generate-runtime-empty (lambda (_stx14040_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_stx13892_)
        (letrec ((_simplify13894_
                  (lambda (_body13938_)
                    (let _lp13940_ ((_rest13942_ _body13938_) (_r13943_ '()))
                      (let* ((_rest1394413952_ _rest13942_)
                             (_else1394613960_ (lambda () (reverse _r13943_)))
                             (_K1394814028_
                              (lambda (_rest13963_ _hd13964_)
                                (let* ((_hd1396513981_ _hd13964_)
                                       (_else1396913989_
                                        (lambda ()
                                          (_lp13940_
                                           _rest13963_
                                           (cons _hd13964_ _r13943_)))))
                                  (let ((_K1397714018_
                                         (lambda (_exprs14016_)
                                           (_lp13940_
                                            (foldr1 cons
                                                    _rest13963_
                                                    _exprs14016_)
                                            _r13943_)))
                                        (_K1397214002_
                                         (lambda ()
                                           (if (null? _rest13963_)
                                               (_lp13940_
                                                _rest13963_
                                                (cons _hd13964_ _r13943_))
                                               (_lp13940_
                                                _rest13963_
                                                _r13943_))))
                                        (_K1397113994_
                                         (lambda ()
                                           (if (null? _rest13963_)
                                               (_lp13940_
                                                _rest13963_
                                                (cons _hd13964_ _r13943_))
                                               (_lp13940_
                                                _rest13963_
                                                _r13943_)))))
                                    (let ((_try-match1396813997_
                                           (lambda ()
                                             (if (symbol? _hd1396513981_)
                                                 (_K1397113994_)
                                                 (_else1396913989_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1396513981_))
                                          (let ((_tl1397914023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1396513981_)))
                                                (_hd1397814021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1396513981_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1397814021_
                                                         'begin))
                                                (let ((_exprs14026_
                                                       _tl1397914023_))
                                                  (_K1397714018_ _exprs14026_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd1397814021_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1397914023_))
                                                        (let ((_tl1397614010_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1397914023_))))
                  (if (let () (declare (not safe)) (##null? _tl1397614010_))
                      (_K1397214002_)
                      (_try-match1396813997_)))
                (_try-match1396813997_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_try-match1396813997_))))
                                          (_try-match1396813997_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1394413952_))
                            (let ((_hd1394914031_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1394413952_)))
                                  (_tl1395014033_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1394413952_))))
                              (let* ((_hd14036_ _hd1394914031_)
                                     (_rest14038_ _tl1395014033_))
                                (_K1394814028_ _rest14038_ _hd14036_)))
                            (_else1394613960_)))))))
          (let* ((_g1389613906_
                  (lambda (_g1389713903_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1389713903_)))
                 (_g1389513935_
                  (lambda (_g1389713909_)
                    (if (gx#stx-pair? _g1389713909_)
                        (let ((_e1389913911_ (gx#stx-e _g1389713909_)))
                          (let ((_hd1390013914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1389913911_)))
                                (_tl1390113916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1389913911_))))
                            ((lambda (_L13919_)
                               (let* ((_body13930_
                                       (map gxc#compile-e _L13919_))
                                      (_body13932_
                                       (_simplify13894_ _body13930_)))
                                 (if (fx= (length _body13932_) '1)
                                     (car _body13932_)
                                     (cons 'begin _body13932_))))
                             _tl1390113916_)))
                        (_g1389613906_ _g1389713909_)))))
            (_g1389513935_ _stx13892_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_stx13854_)
        (let* ((_g1385613866_
                (lambda (_g1385713863_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1385713863_)))
               (_g1385513889_
                (lambda (_g1385713869_)
                  (if (gx#stx-pair? _g1385713869_)
                      (let ((_e1385913871_ (gx#stx-e _g1385713869_)))
                        (let ((_hd1386013874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1385913871_)))
                              (_tl1386113876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1385913871_))))
                          ((lambda (_L13879_)
                             (cons 'begin (gx#syntax->datum _L13879_)))
                           _tl1386113876_)))
                      (_g1385613866_ _g1385713869_)))))
          (_g1385513889_ _stx13854_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_stx13728_)
        (let* ((___stx1549615497_ _stx13728_)
               (_g1373113759_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1549615497_))))
          (let ((___kont1549815499_
                 (lambda (_L13836_ _L13837_) (gxc#compile-e _L13836_)))
                (___kont1550015501_
                 (lambda (_L13788_ _L13789_)
                   (let ((_decls13804_ (map gx#syntax->datum _L13789_)))
                     (call-with-parameters
                      (lambda ()
                        (cons 'begin
                              (cons (cons 'declare _decls13804_)
                                    (cons (gxc#compile-e _L13788_) '()))))
                      gxc#current-compile-decls
                      (foldr1 cons
                              (gxc#current-compile-decls)
                              _decls13804_))))))
            (let ((___match1552115522_
                   (lambda (_e1373513812_
                            _hd1373613815_
                            _tl1373713817_
                            _e1373813820_
                            _hd1373913823_
                            _tl1374013825_
                            _e1374113828_
                            _hd1374213831_
                            _tl1374313833_)
                     (let ((_L13836_ _hd1374213831_) (_L13837_ _hd1373913823_))
                       (if (gx#identifier? _L13837_)
                           (___kont1549815499_ _L13836_ _L13837_)
                           (___kont1550015501_
                            _hd1374213831_
                            _hd1373913823_))))))
              (if (gx#stx-pair? ___stx1549615497_)
                  (let ((_e1373513812_ (gx#stx-e ___stx1549615497_)))
                    (let ((_tl1373713817_
                           (let () (declare (not safe)) (##cdr _e1373513812_)))
                          (_hd1373613815_
                           (let ()
                             (declare (not safe))
                             (##car _e1373513812_))))
                      (if (gx#stx-pair? _tl1373713817_)
                          (let ((_e1373813820_ (gx#stx-e _tl1373713817_)))
                            (let ((_tl1374013825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1373813820_)))
                                  (_hd1373913823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1373813820_))))
                              (if (gx#stx-pair? _tl1374013825_)
                                  (let ((_e1374113828_
                                         (gx#stx-e _tl1374013825_)))
                                    (let ((_tl1374313833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1374113828_)))
                                          (_hd1374213831_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1374113828_))))
                                      (if (gx#stx-null? _tl1374313833_)
                                          (___match1552115522_
                                           _e1373513812_
                                           _hd1373613815_
                                           _tl1373713817_
                                           _e1373813820_
                                           _hd1373913823_
                                           _tl1374013825_
                                           _e1374113828_
                                           _hd1374213831_
                                           _tl1374313833_)
                                          (_g1373113759_))))
                                  (_g1373113759_))))
                          (_g1373113759_))))
                  (_g1373113759_)))))))
    (define gxc#generate-runtime-declare%
      (lambda (_stx13688_)
        (let* ((_g1369013700_
                (lambda (_g1369113697_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1369113697_)))
               (_g1368913725_
                (lambda (_g1369113703_)
                  (if (gx#stx-pair? _g1369113703_)
                      (let ((_e1369313705_ (gx#stx-e _g1369113703_)))
                        (let ((_hd1369413708_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1369313705_)))
                              (_tl1369513710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1369313705_))))
                          ((lambda (_L13713_)
                             (let ((_decls13723_
                                    (map gx#syntax->datum _L13713_)))
                               (gxc#current-compile-decls
                                (foldr1 cons
                                        (gxc#current-compile-decls)
                                        _decls13723_))
                               (cons 'declare _decls13723_)))
                           _tl1369513710_)))
                      (_g1369013700_ _g1369113703_)))))
          (_g1368913725_ _stx13688_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_stx13435_)
        (let* ((_g1343713454_
                (lambda (_g1343813451_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1343813451_)))
               (_g1343613685_
                (lambda (_g1343813457_)
                  (if (gx#stx-pair? _g1343813457_)
                      (let ((_e1344113459_ (gx#stx-e _g1343813457_)))
                        (let ((_hd1344213462_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1344113459_)))
                              (_tl1344313464_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1344113459_))))
                          (if (gx#stx-pair? _tl1344313464_)
                              (let ((_e1344413467_ (gx#stx-e _tl1344313464_)))
                                (let ((_hd1344513470_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1344413467_)))
                                      (_tl1344613472_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1344413467_))))
                                  (if (gx#stx-pair? _tl1344613472_)
                                      (let ((_e1344713475_
                                             (gx#stx-e _tl1344613472_)))
                                        (let ((_hd1344813478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1344713475_)))
                                              (_tl1344913480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1344713475_))))
                                          (if (gx#stx-null? _tl1344913480_)
                                              ((lambda (_L13483_ _L13484_)
                                                 (let* ((___stx1557415575_
                                                         _L13484_)
                                                        (_g1350113515_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            ___stx1557415575_))))
                                                   (let ((___kont1557615577_
                                                          (lambda ()
                                                            (gxc#compile-e
                                                             _L13483_)))
                                                         (___kont1557815579_
                                                          (lambda (_L13647_)
                                                            (let ((_eid13656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#generate-runtime-binding-id _L13647_)))
                      (let ((_lambda-expr1365713659_
                             (gxc#apply-find-lambda-expression _L13483_)))
                        (if _lambda-expr1365713659_
                            (let ((_lambda-expr13662_ _lambda-expr1365713659_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr13662_
                               _eid13656_))
                            '#f))
                      (cons 'define
                            (cons _eid13656_
                                  (cons (gxc#compile-e _L13483_) '()))))))
                 (___kont1558015581_
                  (lambda ()
                    (let* ((_tmp13522_ (gxc#generate-runtime-temporary__% '#t))
                           (_body13631_
                            (let _lp13524_ ((_rest13526_ _L13484_)
                                            (_k13527_ '0)
                                            (_r13528_ '()))
                              (let* ((___stx1554415545_ _rest13526_)
                                     (_g1353313550_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1554415545_))))
                                (let ((___kont1554615547_
                                       (lambda (_L13618_)
                                         (_lp13524_
                                          _L13618_
                                          (fx+ _k13527_ '1)
                                          _r13528_)))
                                      (___kont1554815549_
                                       (lambda (_L13591_ _L13592_)
                                         (_lp13524_
                                          _L13591_
                                          (fx+ _k13527_ '1)
                                          (cons (cons 'define
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L13592_)
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tmp13522_
                           _k13527_
                           _L13591_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _r13528_))))
                                      (___kont1555015551_
                                       (lambda (_L13562_)
                                         (foldl1 cons
                                                 (cons (cons 'define
                                                             (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13562_)
                           (cons (gxc#generate-runtime-values->list
                                  _tmp13522_
                                  _k13527_)
                                 '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r13528_)))
                                      (___kont1555215553_
                                       (lambda () (reverse _r13528_))))
                                  (let ((_g1353113578_
                                         (lambda ()
                                           (let ((_L13562_ ___stx1554415545_))
                                             (if (gx#identifier? _L13562_)
                                                 (___kont1555015551_ _L13562_)
                                                 (___kont1555215553_))))))
                                    (if (gx#stx-pair? ___stx1554415545_)
                                        (let ((_e1353613607_
                                               (gx#stx-e ___stx1554415545_)))
                                          (let ((_tl1353813612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1353613607_)))
                                                (_hd1353713610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1353613607_))))
                                            (if (gx#stx-datum? _hd1353713610_)
                                                (let ((_e1353913615_
                                                       (gx#stx-e
                                                        _hd1353713610_)))
                                                  (if (equal? _e1353913615_
                                                              '#f)
                                                      (___kont1554615547_
                                                       _tl1353813612_)
                                                      (___kont1554815549_
                                                       _tl1353813612_
                                                       _hd1353713610_)))
                                                (___kont1554815549_
                                                 _tl1353813612_
                                                 _hd1353713610_))))
                                        (_g1353113578_))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp13522_
                                              (cons (gxc#compile-e _L13483_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp13522_
                                         _L13484_
                                         _L13483_)
                                        _body13631_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair?
                                                          ___stx1557415575_)
                                                         (let ((_e1350313669_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___stx1557415575_)))
                   (let ((_tl1350513674_
                          (let () (declare (not safe)) (##cdr _e1350313669_)))
                         (_hd1350413672_
                          (let () (declare (not safe)) (##car _e1350313669_))))
                     (if (gx#stx-datum? _hd1350413672_)
                         (let ((_e1350613677_ (gx#stx-e _hd1350413672_)))
                           (if (equal? _e1350613677_ '#f)
                               (if (gx#stx-null? _tl1350513674_)
                                   (___kont1557615577_)
                                   (___kont1558015581_))
                               (if (gx#stx-null? _tl1350513674_)
                                   (___kont1557815579_ _hd1350413672_)
                                   (___kont1558015581_))))
                         (if (gx#stx-null? _tl1350513674_)
                             (___kont1557815579_ _hd1350413672_)
                             (___kont1558015581_)))))
                 (___kont1558015581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1344813478_
                                               _hd1344513470_)
                                              (_g1343713454_ _g1343813457_))))
                                      (_g1343713454_ _g1343813457_))))
                              (_g1343713454_ _g1343813457_))))
                      (_g1343713454_ _g1343813457_)))))
          (_g1343613685_ _stx13435_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals13411_ _hd13412_ _expr13413_)
        (let ((_$e13415_ (gxc#apply-count-values _expr13413_)))
          (if _$e13415_
              ((lambda (_count13418_)
                 (let ((_len13420_ (gx#stx-length _hd13412_))
                       (_cmp13421_ (if (gx#stx-list? _hd13412_) fx= fx>=)))
                   (if (or (fx= _len13420_ '0)
                           (_cmp13421_ _count13418_ _len13420_))
                       '#!void
                       (gxc#raise-compile-error
                        '"Value count mismatch"
                        _expr13413_
                        _hd13412_))))
               _$e13415_)
              (let* ((_len13426_ (gx#stx-length _hd13412_))
                     (_cmp13428_ (if (gx#stx-list? _hd13412_) '##fx= '##fx>=))
                     (_errmsg13430_
                      (string-append
                       (if (gx#stx-list? _hd13412_)
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len13426_)
                       '" values"))
                     (_count13432_ (gxc#generate-runtime-temporary__0)))
                (if (and (not (gx#stx-list? _hd13412_)) (fx= _len13426_ '0))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count13432_
                                            (cons (gxc#generate-runtime-values-count
                                                   _vals13411_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _cmp13428_
                                (cons _count13432_ (cons _len13426_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _cmp13428_
                                                        (cons _count13432_
                                                              (cons _len13426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg13430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count13432_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var13406_)
        (letrec ((_generate-inline13408_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _var13406_ '()))
                                (cons (cons '##vector-length
                                            (cons _var13406_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_generate-inline13408_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_generate-inline13408_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var13399_ _i13400_ _rest13401_)
        (letrec ((_generate-inline13403_
                  (lambda ()
                    (if (and (fx= _i13400_ '0)
                             (not (gx#stx-pair? _rest13401_)))
                        (cons 'if
                              (cons (cons '##values? (cons _var13399_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _var13399_
                                                      (cons '0 '())))
                                          (cons _var13399_ '()))))
                        (cons '##vector-ref
                              (cons _var13399_ (cons _i13400_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_generate-inline13403_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_generate-inline13403_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var13396_ _i13397_)
        (if (fx= _i13397_ '0)
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _var13396_ '()))
                            (cons (cons '##vector->list (cons _var13396_ '()))
                                  (cons (cons 'list (cons _var13396_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _var13396_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _var13396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _var13396_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (fx= _i13397_ '1)
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _var13396_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _var13396_ '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _var13396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list (cons _var13396_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _var13396_ '()))
                                (cons _i13397_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _var13396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _i13397_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_stx13329_)
        (let* ((_g1333113348_
                (lambda (_g1333213345_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1333213345_)))
               (_g1333013393_
                (lambda (_g1333213351_)
                  (if (gx#stx-pair? _g1333213351_)
                      (let ((_e1333513353_ (gx#stx-e _g1333213351_)))
                        (let ((_hd1333613356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1333513353_)))
                              (_tl1333713358_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1333513353_))))
                          (if (gx#stx-pair? _tl1333713358_)
                              (let ((_e1333813361_ (gx#stx-e _tl1333713358_)))
                                (let ((_hd1333913364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1333813361_)))
                                      (_tl1334013366_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1333813361_))))
                                  (if (gx#stx-pair? _tl1334013366_)
                                      (let ((_e1334113369_
                                             (gx#stx-e _tl1334013366_)))
                                        (let ((_hd1334213372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1334113369_)))
                                              (_tl1334313374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1334113369_))))
                                          (if (gx#stx-null? _tl1334313374_)
                                              ((lambda (_L13377_ _L13378_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _L13378_
                                                  _L13377_))
                                               _hd1334213372_
                                               _hd1333913364_)
                                              (_g1333113348_ _g1333213351_))))
                                      (_g1333113348_ _g1333213351_))))
                              (_g1333113348_ _g1333213351_))))
                      (_g1333113348_ _g1333213351_)))))
          (_g1333013393_ _stx13329_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_hd13289_ _body13290_)
        (let* ((_hd13292_ (gxc#generate-runtime-lambda-head _hd13289_))
               (_body13294_ (gxc#compile-e _body13290_))
               (_body13326_
                (let* ((_body1329513303_ _body13294_)
                       (_else1329713311_ (lambda () (cons _body13294_ '())))
                       (_K1329913316_ (lambda (_exprs13314_) _exprs13314_)))
                  (if (let () (declare (not safe)) (##pair? _body1329513303_))
                      (let ((_hd1330013319_
                             (let ()
                               (declare (not safe))
                               (##car _body1329513303_)))
                            (_tl1330113321_
                             (let ()
                               (declare (not safe))
                               (##cdr _body1329513303_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd1330013319_ 'begin))
                            (let ((_exprs13324_ _tl1330113321_))
                              (_K1329913316_ _exprs13324_))
                            (_else1329713311_)))
                      (_else1329713311_)))))
          (cons 'lambda (cons _hd13292_ _body13326_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd13287_)
        (gx#stx-map1 gxc#generate-runtime-binding-id* _hd13287_)))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_stx11830_)
        (letrec ((_dispatch-case?11832_
                  (lambda (_hd12517_ _body12518_)
                    (let* ((_form12520_
                            (cons _hd12517_ (cons _body12518_ '())))
                           (___stx1560615607_ _form12520_)
                           (_g1252512682_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1560615607_))))
                      (let ((___kont1560815609_
                             (lambda (_L13207_ _L13208_ _L13209_) '#t))
                            (___kont1561415615_
                             (lambda (_L12995_
                                      _L12996_
                                      _L12997_
                                      _L12998_
                                      _L12999_
                                      _L13000_)
                               '#t))
                            (___kont1562015621_
                             (lambda (_L12790_ _L12791_ _L12792_ _L12793_)
                               '#t))
                            (___kont1562215623_ (lambda () '#f)))
                        (let* ((___match1574715748_
                                (lambda (_e1264212694_
                                         _hd1264312697_
                                         _tl1264412699_
                                         _e1264512702_
                                         _hd1264612705_
                                         _tl1264712707_
                                         _e1264812710_
                                         _hd1264912713_
                                         _tl1265012715_
                                         _e1265112718_
                                         _hd1265212721_
                                         _tl1265312723_
                                         _e1265412726_
                                         _hd1265512729_
                                         _tl1265612731_
                                         _e1265712734_
                                         _hd1265812737_
                                         _tl1265912739_
                                         _e1266012742_
                                         _hd1266112745_
                                         _tl1266212747_
                                         _e1266312750_
                                         _hd1266412753_
                                         _tl1266512755_
                                         _e1266612758_
                                         _hd1266712761_
                                         _tl1266812763_
                                         _e1266912766_
                                         _hd1267012769_
                                         _tl1267112771_
                                         _e1267212774_
                                         _hd1267312777_
                                         _tl1267412779_
                                         _e1267512782_
                                         _hd1267612785_
                                         _tl1267712787_)
                                  (let ((_L12790_ _hd1267612785_)
                                        (_L12791_ _hd1266712761_)
                                        (_L12792_ _hd1265812737_)
                                        (_L12793_ _hd1264312697_))
                                    (if (and (gx#identifier? _L12793_)
                                             (gxc#runtime-identifier=?
                                              _L12792_
                                              'apply)
                                             (gx#free-identifier=?
                                              _L12793_
                                              _L12790_)
                                             (not (gx#free-identifier=?
                                                   _L12791_
                                                   _L12793_)))
                                        (___kont1562015621_
                                         _L12790_
                                         _L12791_
                                         _L12792_
                                         _L12793_)
                                        (___kont1562215623_)))))
                               (___match1571915720_
                                (lambda (_e1264212694_
                                         _hd1264312697_
                                         _tl1264412699_
                                         _e1264512702_
                                         _hd1264612705_
                                         _tl1264712707_
                                         _e1264812710_
                                         _hd1264912713_
                                         _tl1265012715_
                                         _e1265112718_
                                         _hd1265212721_
                                         _tl1265312723_
                                         _e1265412726_
                                         _hd1265512729_
                                         _tl1265612731_
                                         _e1265712734_
                                         _hd1265812737_
                                         _tl1265912739_
                                         _e1266012742_
                                         _hd1266112745_
                                         _tl1266212747_
                                         _e1266312750_
                                         _hd1266412753_
                                         _tl1266512755_
                                         _e1266612758_
                                         _hd1266712761_
                                         _tl1266812763_)
                                  (if (gx#stx-pair? _tl1266212747_)
                                      (let ((_e1266912766_
                                             (gx#stx-e _tl1266212747_)))
                                        (let ((_tl1267112771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1266912766_)))
                                              (_hd1267012769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1266912766_))))
                                          (if (gx#stx-pair? _hd1267012769_)
                                              (let ((_e1267212774_
                                                     (gx#stx-e
                                                      _hd1267012769_)))
                                                (let ((_tl1267412779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1267212774_)))
                                                      (_hd1267312777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1267212774_))))
                                                  (if (gx#identifier?
                                                       _hd1267312777_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1267312777_)
                                                          (if (gx#stx-pair?
                                                               _tl1267412779_)
                                                              (let ((_e1267512782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1267412779_)))
                        (let ((_tl1267712787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1267512782_)))
                              (_hd1267612785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1267512782_))))
                          (if (gx#stx-null? _tl1267712787_)
                              (if (gx#stx-null? _tl1267112771_)
                                  (if (gx#stx-null? _tl1264712707_)
                                      (___match1574715748_
                                       _e1264212694_
                                       _hd1264312697_
                                       _tl1264412699_
                                       _e1264512702_
                                       _hd1264612705_
                                       _tl1264712707_
                                       _e1264812710_
                                       _hd1264912713_
                                       _tl1265012715_
                                       _e1265112718_
                                       _hd1265212721_
                                       _tl1265312723_
                                       _e1265412726_
                                       _hd1265512729_
                                       _tl1265612731_
                                       _e1265712734_
                                       _hd1265812737_
                                       _tl1265912739_
                                       _e1266012742_
                                       _hd1266112745_
                                       _tl1266212747_
                                       _e1266312750_
                                       _hd1266412753_
                                       _tl1266512755_
                                       _e1266612758_
                                       _hd1266712761_
                                       _tl1266812763_
                                       _e1266912766_
                                       _hd1267012769_
                                       _tl1267112771_
                                       _e1267212774_
                                       _hd1267312777_
                                       _tl1267412779_
                                       _e1267512782_
                                       _hd1267612785_
                                       _tl1267712787_)
                                      (___kont1562215623_))
                                  (___kont1562215623_))
                              (___kont1562215623_))))
                      (___kont1562215623_))
                  (___kont1562215623_))
              (___kont1562215623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1562215623_))))
                                      (___kont1562215623_))))
                               (___match1564915650_
                                (lambda (_e1257812835_
                                         _hd1257912838_
                                         _tl1258012840_
                                         ___splice1561615617_
                                         _target1258112843_
                                         _tl1258312845_)
                                  (letrec ((_loop1258412848_
                                            (lambda (_hd1258212851_
                                                     _arg1258812853_)
                                              (if (gx#stx-pair? _hd1258212851_)
                                                  (let ((_e1258512856_
                                                         (gx#stx-e
                                                          _hd1258212851_)))
                                                    (let ((_lp-tl1258712861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1258512856_)))
                                                          (_lp-hd1258612859_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1258512856_))))
                                                      (_loop1258412848_
                                                       _lp-tl1258712861_
                                                       (cons _lp-hd1258612859_
                                                             _arg1258812853_))))
                                                  (let ((_arg1258912864_
                                                         (reverse _arg1258812853_)))
                                                    (if (gx#stx-pair?
                                                         _tl1258012840_)
                                                        (let ((_e1259012867_
                                                               (gx#stx-e
                                                                _tl1258012840_)))
                                                          (let ((_tl1259212872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1259012867_)))
                        (_hd1259112870_
                         (let () (declare (not safe)) (##car _e1259012867_))))
                    (if (gx#stx-pair? _hd1259112870_)
                        (let ((_e1259312875_ (gx#stx-e _hd1259112870_)))
                          (let ((_tl1259512880_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1259312875_)))
                                (_hd1259412878_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1259312875_))))
                            (if (gx#identifier? _hd1259412878_)
                                (if (gx#stx-eq? '%#call _hd1259412878_)
                                    (if (gx#stx-pair? _tl1259512880_)
                                        (let ((_e1259612883_
                                               (gx#stx-e _tl1259512880_)))
                                          (let ((_tl1259812888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1259612883_)))
                                                (_hd1259712886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1259612883_))))
                                            (if (gx#stx-pair? _hd1259712886_)
                                                (let ((_e1259912891_
                                                       (gx#stx-e
                                                        _hd1259712886_)))
                                                  (let ((_tl1260112896_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1259912891_)))
                                                        (_hd1260012894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1259912891_))))
                                                    (if (gx#identifier?
                                                         _hd1260012894_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1260012894_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1260112896_)
                        (let ((_e1260212899_ (gx#stx-e _tl1260112896_)))
                          (let ((_tl1260412904_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1260212899_)))
                                (_hd1260312902_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1260212899_))))
                            (if (gx#stx-null? _tl1260412904_)
                                (if (gx#stx-pair? _tl1259812888_)
                                    (let ((_e1260512907_
                                           (gx#stx-e _tl1259812888_)))
                                      (let ((_tl1260712912_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1260512907_)))
                                            (_hd1260612910_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1260512907_))))
                                        (if (gx#stx-pair? _hd1260612910_)
                                            (let ((_e1260812915_
                                                   (gx#stx-e _hd1260612910_)))
                                              (let ((_tl1261012920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1260812915_)))
                                                    (_hd1260912918_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1260812915_))))
                                                (if (gx#identifier?
                                                     _hd1260912918_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1260912918_)
                                                        (if (gx#stx-pair?
                                                             _tl1261012920_)
                                                            (let ((_e1261112923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1261012920_)))
                      (let ((_tl1261312928_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1261112923_)))
                            (_hd1261212926_
                             (let ()
                               (declare (not safe))
                               (##car _e1261112923_))))
                        (if (gx#stx-null? _tl1261312928_)
                            (if (gx#stx-pair/null? _tl1260712912_)
                                (if (fx>= (gx#stx-length _tl1260712912_) '1)
                                    (let ((___splice1561815619_
                                           (gx#syntax-split-splice
                                            _tl1260712912_
                                            '1)))
                                      (let ((_tl1261612933_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1561815619_
                                                '1)))
                                            (_target1261412931_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1561815619_
                                                '0))))
                                        (if (gx#stx-pair? _tl1261612933_)
                                            (let ((_e1262312936_
                                                   (gx#stx-e _tl1261612933_)))
                                              (let ((_tl1262512941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1262312936_)))
                                                    (_hd1262412939_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1262312936_))))
                                                (if (gx#stx-pair?
                                                     _hd1262412939_)
                                                    (let ((_e1262612944_
                                                           (gx#stx-e
                                                            _hd1262412939_)))
                                                      (let ((_tl1262812949_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1262612944_)))
                    (_hd1262712947_
                     (let () (declare (not safe)) (##car _e1262612944_))))
                (if (gx#identifier? _hd1262712947_)
                    (if (gx#stx-eq? '%#ref _hd1262712947_)
                        (if (gx#stx-pair? _tl1262812949_)
                            (let ((_e1262912952_ (gx#stx-e _tl1262812949_)))
                              (let ((_tl1263112957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1262912952_)))
                                    (_hd1263012955_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1262912952_))))
                                (if (gx#stx-null? _tl1263112957_)
                                    (if (gx#stx-null? _tl1262512941_)
                                        (letrec ((_loop1261712960_
                                                  (lambda (_hd1261512963_
                                                           _xarg1262112965_)
                                                    (if (gx#stx-pair?
                                                         _hd1261512963_)
                                                        (let ((_e1261812968_
                                                               (gx#stx-e
                                                                _hd1261512963_)))
                                                          (let ((_lp-tl1262012973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1261812968_)))
                        (_lp-hd1261912971_
                         (let () (declare (not safe)) (##car _e1261812968_))))
                    (if (gx#stx-pair? _lp-hd1261912971_)
                        (let ((_e1263212976_ (gx#stx-e _lp-hd1261912971_)))
                          (let ((_tl1263412981_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1263212976_)))
                                (_hd1263312979_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1263212976_))))
                            (if (gx#identifier? _hd1263312979_)
                                (if (gx#stx-eq? '%#ref _hd1263312979_)
                                    (if (gx#stx-pair? _tl1263412981_)
                                        (let ((_e1263512984_
                                               (gx#stx-e _tl1263412981_)))
                                          (let ((_tl1263712989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1263512984_)))
                                                (_hd1263612987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1263512984_))))
                                            (if (gx#stx-null? _tl1263712989_)
                                                (_loop1261712960_
                                                 _lp-tl1262012973_
                                                 (cons _hd1263612987_
                                                       _xarg1262112965_))
                                                (___match1571915720_
                                                 _e1257812835_
                                                 _hd1257912838_
                                                 _tl1258012840_
                                                 _e1259012867_
                                                 _hd1259112870_
                                                 _tl1259212872_
                                                 _e1259312875_
                                                 _hd1259412878_
                                                 _tl1259512880_
                                                 _e1259612883_
                                                 _hd1259712886_
                                                 _tl1259812888_
                                                 _e1259912891_
                                                 _hd1260012894_
                                                 _tl1260112896_
                                                 _e1260212899_
                                                 _hd1260312902_
                                                 _tl1260412904_
                                                 _e1260512907_
                                                 _hd1260612910_
                                                 _tl1260712912_
                                                 _e1260812915_
                                                 _hd1260912918_
                                                 _tl1261012920_
                                                 _e1261112923_
                                                 _hd1261212926_
                                                 _tl1261312928_))))
                                        (___match1571915720_
                                         _e1257812835_
                                         _hd1257912838_
                                         _tl1258012840_
                                         _e1259012867_
                                         _hd1259112870_
                                         _tl1259212872_
                                         _e1259312875_
                                         _hd1259412878_
                                         _tl1259512880_
                                         _e1259612883_
                                         _hd1259712886_
                                         _tl1259812888_
                                         _e1259912891_
                                         _hd1260012894_
                                         _tl1260112896_
                                         _e1260212899_
                                         _hd1260312902_
                                         _tl1260412904_
                                         _e1260512907_
                                         _hd1260612910_
                                         _tl1260712912_
                                         _e1260812915_
                                         _hd1260912918_
                                         _tl1261012920_
                                         _e1261112923_
                                         _hd1261212926_
                                         _tl1261312928_))
                                    (___match1571915720_
                                     _e1257812835_
                                     _hd1257912838_
                                     _tl1258012840_
                                     _e1259012867_
                                     _hd1259112870_
                                     _tl1259212872_
                                     _e1259312875_
                                     _hd1259412878_
                                     _tl1259512880_
                                     _e1259612883_
                                     _hd1259712886_
                                     _tl1259812888_
                                     _e1259912891_
                                     _hd1260012894_
                                     _tl1260112896_
                                     _e1260212899_
                                     _hd1260312902_
                                     _tl1260412904_
                                     _e1260512907_
                                     _hd1260612910_
                                     _tl1260712912_
                                     _e1260812915_
                                     _hd1260912918_
                                     _tl1261012920_
                                     _e1261112923_
                                     _hd1261212926_
                                     _tl1261312928_))
                                (___match1571915720_
                                 _e1257812835_
                                 _hd1257912838_
                                 _tl1258012840_
                                 _e1259012867_
                                 _hd1259112870_
                                 _tl1259212872_
                                 _e1259312875_
                                 _hd1259412878_
                                 _tl1259512880_
                                 _e1259612883_
                                 _hd1259712886_
                                 _tl1259812888_
                                 _e1259912891_
                                 _hd1260012894_
                                 _tl1260112896_
                                 _e1260212899_
                                 _hd1260312902_
                                 _tl1260412904_
                                 _e1260512907_
                                 _hd1260612910_
                                 _tl1260712912_
                                 _e1260812915_
                                 _hd1260912918_
                                 _tl1261012920_
                                 _e1261112923_
                                 _hd1261212926_
                                 _tl1261312928_))))
                        (___match1571915720_
                         _e1257812835_
                         _hd1257912838_
                         _tl1258012840_
                         _e1259012867_
                         _hd1259112870_
                         _tl1259212872_
                         _e1259312875_
                         _hd1259412878_
                         _tl1259512880_
                         _e1259612883_
                         _hd1259712886_
                         _tl1259812888_
                         _e1259912891_
                         _hd1260012894_
                         _tl1260112896_
                         _e1260212899_
                         _hd1260312902_
                         _tl1260412904_
                         _e1260512907_
                         _hd1260612910_
                         _tl1260712912_
                         _e1260812915_
                         _hd1260912918_
                         _tl1261012920_
                         _e1261112923_
                         _hd1261212926_
                         _tl1261312928_))))
                (let ((_xarg1262212992_ (reverse _xarg1262112965_)))
                  (if (gx#stx-null? _tl1259212872_)
                      (let ((_L12995_ _hd1263012955_)
                            (_L12996_ _xarg1262212992_)
                            (_L12997_ _hd1261212926_)
                            (_L12998_ _hd1260312902_)
                            (_L12999_ _tl1258312845_)
                            (_L13000_ _arg1258912864_))
                        (if (and (gx#identifier-list?
                                  (foldr1 (lambda (_g1304313046_ _g1304413048_)
                                            (cons _g1304313046_ _g1304413048_))
                                          '()
                                          _L13000_))
                                 (gx#identifier? _L12999_)
                                 (gxc#runtime-identifier=? _L12998_ 'apply)
                                 (fx= (length (foldr1 (lambda (_g1305013053_
                                                               _g1305113055_)
                                                        (cons _g1305013053_
                                                              _g1305113055_))
                                                      '()
                                                      _L13000_))
                                      (length (foldr1 (lambda (_g1305713060_
                                                               _g1305813062_)
                                                        (cons _g1305713060_
                                                              _g1305813062_))
                                                      '()
                                                      _L12996_)))
                                 (andmap2 gx#free-identifier=?
                                          (foldr1 (lambda (_g1306413067_
                                                           _g1306513069_)
                                                    (cons _g1306413067_
                                                          _g1306513069_))
                                                  '()
                                                  _L13000_)
                                          (foldr1 (lambda (_g1307113074_
                                                           _g1307213076_)
                                                    (cons _g1307113074_
                                                          _g1307213076_))
                                                  '()
                                                  _L12996_))
                                 (gx#free-identifier=? _L12999_ _L12995_)
                                 (not (find (lambda (_g1307813080_)
                                              (gx#free-identifier=?
                                               _g1307813080_
                                               _L12997_))
                                            (foldr1 (lambda (_g1308213085_
                                                             _g1308313087_)
                                                      (cons _g1308213085_
                                                            _g1308313087_))
                                                    (cons _L12999_ '())
                                                    _L13000_))))
                            (___kont1561415615_
                             _L12995_
                             _L12996_
                             _L12997_
                             _L12998_
                             _L12999_
                             _L13000_)
                            (___match1571915720_
                             _e1257812835_
                             _hd1257912838_
                             _tl1258012840_
                             _e1259012867_
                             _hd1259112870_
                             _tl1259212872_
                             _e1259312875_
                             _hd1259412878_
                             _tl1259512880_
                             _e1259612883_
                             _hd1259712886_
                             _tl1259812888_
                             _e1259912891_
                             _hd1260012894_
                             _tl1260112896_
                             _e1260212899_
                             _hd1260312902_
                             _tl1260412904_
                             _e1260512907_
                             _hd1260612910_
                             _tl1260712912_
                             _e1260812915_
                             _hd1260912918_
                             _tl1261012920_
                             _e1261112923_
                             _hd1261212926_
                             _tl1261312928_)))
                      (___match1571915720_
                       _e1257812835_
                       _hd1257912838_
                       _tl1258012840_
                       _e1259012867_
                       _hd1259112870_
                       _tl1259212872_
                       _e1259312875_
                       _hd1259412878_
                       _tl1259512880_
                       _e1259612883_
                       _hd1259712886_
                       _tl1259812888_
                       _e1259912891_
                       _hd1260012894_
                       _tl1260112896_
                       _e1260212899_
                       _hd1260312902_
                       _tl1260412904_
                       _e1260512907_
                       _hd1260612910_
                       _tl1260712912_
                       _e1260812915_
                       _hd1260912918_
                       _tl1261012920_
                       _e1261112923_
                       _hd1261212926_
                       _tl1261312928_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1261712960_
                                           _target1261412931_
                                           '()))
                                        (___match1571915720_
                                         _e1257812835_
                                         _hd1257912838_
                                         _tl1258012840_
                                         _e1259012867_
                                         _hd1259112870_
                                         _tl1259212872_
                                         _e1259312875_
                                         _hd1259412878_
                                         _tl1259512880_
                                         _e1259612883_
                                         _hd1259712886_
                                         _tl1259812888_
                                         _e1259912891_
                                         _hd1260012894_
                                         _tl1260112896_
                                         _e1260212899_
                                         _hd1260312902_
                                         _tl1260412904_
                                         _e1260512907_
                                         _hd1260612910_
                                         _tl1260712912_
                                         _e1260812915_
                                         _hd1260912918_
                                         _tl1261012920_
                                         _e1261112923_
                                         _hd1261212926_
                                         _tl1261312928_))
                                    (___match1571915720_
                                     _e1257812835_
                                     _hd1257912838_
                                     _tl1258012840_
                                     _e1259012867_
                                     _hd1259112870_
                                     _tl1259212872_
                                     _e1259312875_
                                     _hd1259412878_
                                     _tl1259512880_
                                     _e1259612883_
                                     _hd1259712886_
                                     _tl1259812888_
                                     _e1259912891_
                                     _hd1260012894_
                                     _tl1260112896_
                                     _e1260212899_
                                     _hd1260312902_
                                     _tl1260412904_
                                     _e1260512907_
                                     _hd1260612910_
                                     _tl1260712912_
                                     _e1260812915_
                                     _hd1260912918_
                                     _tl1261012920_
                                     _e1261112923_
                                     _hd1261212926_
                                     _tl1261312928_))))
                            (___match1571915720_
                             _e1257812835_
                             _hd1257912838_
                             _tl1258012840_
                             _e1259012867_
                             _hd1259112870_
                             _tl1259212872_
                             _e1259312875_
                             _hd1259412878_
                             _tl1259512880_
                             _e1259612883_
                             _hd1259712886_
                             _tl1259812888_
                             _e1259912891_
                             _hd1260012894_
                             _tl1260112896_
                             _e1260212899_
                             _hd1260312902_
                             _tl1260412904_
                             _e1260512907_
                             _hd1260612910_
                             _tl1260712912_
                             _e1260812915_
                             _hd1260912918_
                             _tl1261012920_
                             _e1261112923_
                             _hd1261212926_
                             _tl1261312928_))
                        (___match1571915720_
                         _e1257812835_
                         _hd1257912838_
                         _tl1258012840_
                         _e1259012867_
                         _hd1259112870_
                         _tl1259212872_
                         _e1259312875_
                         _hd1259412878_
                         _tl1259512880_
                         _e1259612883_
                         _hd1259712886_
                         _tl1259812888_
                         _e1259912891_
                         _hd1260012894_
                         _tl1260112896_
                         _e1260212899_
                         _hd1260312902_
                         _tl1260412904_
                         _e1260512907_
                         _hd1260612910_
                         _tl1260712912_
                         _e1260812915_
                         _hd1260912918_
                         _tl1261012920_
                         _e1261112923_
                         _hd1261212926_
                         _tl1261312928_))
                    (___match1571915720_
                     _e1257812835_
                     _hd1257912838_
                     _tl1258012840_
                     _e1259012867_
                     _hd1259112870_
                     _tl1259212872_
                     _e1259312875_
                     _hd1259412878_
                     _tl1259512880_
                     _e1259612883_
                     _hd1259712886_
                     _tl1259812888_
                     _e1259912891_
                     _hd1260012894_
                     _tl1260112896_
                     _e1260212899_
                     _hd1260312902_
                     _tl1260412904_
                     _e1260512907_
                     _hd1260612910_
                     _tl1260712912_
                     _e1260812915_
                     _hd1260912918_
                     _tl1261012920_
                     _e1261112923_
                     _hd1261212926_
                     _tl1261312928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1571915720_
                                                     _e1257812835_
                                                     _hd1257912838_
                                                     _tl1258012840_
                                                     _e1259012867_
                                                     _hd1259112870_
                                                     _tl1259212872_
                                                     _e1259312875_
                                                     _hd1259412878_
                                                     _tl1259512880_
                                                     _e1259612883_
                                                     _hd1259712886_
                                                     _tl1259812888_
                                                     _e1259912891_
                                                     _hd1260012894_
                                                     _tl1260112896_
                                                     _e1260212899_
                                                     _hd1260312902_
                                                     _tl1260412904_
                                                     _e1260512907_
                                                     _hd1260612910_
                                                     _tl1260712912_
                                                     _e1260812915_
                                                     _hd1260912918_
                                                     _tl1261012920_
                                                     _e1261112923_
                                                     _hd1261212926_
                                                     _tl1261312928_))))
                                            (___match1571915720_
                                             _e1257812835_
                                             _hd1257912838_
                                             _tl1258012840_
                                             _e1259012867_
                                             _hd1259112870_
                                             _tl1259212872_
                                             _e1259312875_
                                             _hd1259412878_
                                             _tl1259512880_
                                             _e1259612883_
                                             _hd1259712886_
                                             _tl1259812888_
                                             _e1259912891_
                                             _hd1260012894_
                                             _tl1260112896_
                                             _e1260212899_
                                             _hd1260312902_
                                             _tl1260412904_
                                             _e1260512907_
                                             _hd1260612910_
                                             _tl1260712912_
                                             _e1260812915_
                                             _hd1260912918_
                                             _tl1261012920_
                                             _e1261112923_
                                             _hd1261212926_
                                             _tl1261312928_))))
                                    (___match1571915720_
                                     _e1257812835_
                                     _hd1257912838_
                                     _tl1258012840_
                                     _e1259012867_
                                     _hd1259112870_
                                     _tl1259212872_
                                     _e1259312875_
                                     _hd1259412878_
                                     _tl1259512880_
                                     _e1259612883_
                                     _hd1259712886_
                                     _tl1259812888_
                                     _e1259912891_
                                     _hd1260012894_
                                     _tl1260112896_
                                     _e1260212899_
                                     _hd1260312902_
                                     _tl1260412904_
                                     _e1260512907_
                                     _hd1260612910_
                                     _tl1260712912_
                                     _e1260812915_
                                     _hd1260912918_
                                     _tl1261012920_
                                     _e1261112923_
                                     _hd1261212926_
                                     _tl1261312928_))
                                (___match1571915720_
                                 _e1257812835_
                                 _hd1257912838_
                                 _tl1258012840_
                                 _e1259012867_
                                 _hd1259112870_
                                 _tl1259212872_
                                 _e1259312875_
                                 _hd1259412878_
                                 _tl1259512880_
                                 _e1259612883_
                                 _hd1259712886_
                                 _tl1259812888_
                                 _e1259912891_
                                 _hd1260012894_
                                 _tl1260112896_
                                 _e1260212899_
                                 _hd1260312902_
                                 _tl1260412904_
                                 _e1260512907_
                                 _hd1260612910_
                                 _tl1260712912_
                                 _e1260812915_
                                 _hd1260912918_
                                 _tl1261012920_
                                 _e1261112923_
                                 _hd1261212926_
                                 _tl1261312928_))
                            (___kont1562215623_))))
                    (___kont1562215623_))
                (___kont1562215623_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1562215623_))))
                                            (___kont1562215623_))))
                                    (___kont1562215623_))
                                (___kont1562215623_))))
                        (___kont1562215623_))
                    (___kont1562215623_))
                (___kont1562215623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1562215623_))))
                                        (___kont1562215623_))
                                    (___kont1562215623_))
                                (___kont1562215623_))))
                        (___kont1562215623_))))
                (___kont1562215623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1258412848_
                                     _target1258112843_
                                     '()))))
                               (___match1563715638_
                                (lambda (_e1253013095_
                                         _hd1253113098_
                                         _tl1253213100_
                                         ___splice1561015611_
                                         _target1253313103_
                                         _tl1253513105_)
                                  (letrec ((_loop1253613108_
                                            (lambda (_hd1253413111_
                                                     _arg1254013113_)
                                              (if (gx#stx-pair? _hd1253413111_)
                                                  (let ((_e1253713116_
                                                         (gx#stx-e
                                                          _hd1253413111_)))
                                                    (let ((_lp-tl1253913121_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1253713116_)))
                                                          (_lp-hd1253813119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1253713116_))))
                                                      (_loop1253613108_
                                                       _lp-tl1253913121_
                                                       (cons _lp-hd1253813119_
                                                             _arg1254013113_))))
                                                  (let ((_arg1254113124_
                                                         (reverse _arg1254013113_)))
                                                    (if (gx#stx-pair?
                                                         _tl1253213100_)
                                                        (let ((_e1254213127_
                                                               (gx#stx-e
                                                                _tl1253213100_)))
                                                          (let ((_tl1254413132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1254213127_)))
                        (_hd1254313130_
                         (let () (declare (not safe)) (##car _e1254213127_))))
                    (if (gx#stx-pair? _hd1254313130_)
                        (let ((_e1254513135_ (gx#stx-e _hd1254313130_)))
                          (let ((_tl1254713140_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1254513135_)))
                                (_hd1254613138_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1254513135_))))
                            (if (gx#identifier? _hd1254613138_)
                                (if (gx#stx-eq? '%#call _hd1254613138_)
                                    (if (gx#stx-pair? _tl1254713140_)
                                        (let ((_e1254813143_
                                               (gx#stx-e _tl1254713140_)))
                                          (let ((_tl1255013148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1254813143_)))
                                                (_hd1254913146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1254813143_))))
                                            (if (gx#stx-pair? _hd1254913146_)
                                                (let ((_e1255113151_
                                                       (gx#stx-e
                                                        _hd1254913146_)))
                                                  (let ((_tl1255313156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1255113151_)))
                                                        (_hd1255213154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1255113151_))))
                                                    (if (gx#identifier?
                                                         _hd1255213154_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1255213154_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1255313156_)
                        (let ((_e1255413159_ (gx#stx-e _tl1255313156_)))
                          (let ((_tl1255613164_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1255413159_)))
                                (_hd1255513162_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1255413159_))))
                            (if (gx#stx-null? _tl1255613164_)
                                (if (gx#stx-pair/null? _tl1255013148_)
                                    (let ((___splice1561215613_
                                           (gx#syntax-split-splice
                                            _tl1255013148_
                                            '0)))
                                      (let ((_tl1255913169_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1561215613_
                                                '1)))
                                            (_target1255713167_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1561215613_
                                                '0))))
                                        (if (gx#stx-null? _tl1255913169_)
                                            (letrec ((_loop1256013172_
                                                      (lambda (_hd1255813175_
                                                               _xarg1256413177_)
                                                        (if (gx#stx-pair?
                                                             _hd1255813175_)
                                                            (let ((_e1256113180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1255813175_)))
                      (let ((_lp-tl1256313185_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1256113180_)))
                            (_lp-hd1256213183_
                             (let ()
                               (declare (not safe))
                               (##car _e1256113180_))))
                        (if (gx#stx-pair? _lp-hd1256213183_)
                            (let ((_e1256613188_ (gx#stx-e _lp-hd1256213183_)))
                              (let ((_tl1256813193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1256613188_)))
                                    (_hd1256713191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1256613188_))))
                                (if (gx#identifier? _hd1256713191_)
                                    (if (gx#stx-eq? '%#ref _hd1256713191_)
                                        (if (gx#stx-pair? _tl1256813193_)
                                            (let ((_e1256913196_
                                                   (gx#stx-e _tl1256813193_)))
                                              (let ((_tl1257113201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1256913196_)))
                                                    (_hd1257013199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1256913196_))))
                                                (if (gx#stx-null?
                                                     _tl1257113201_)
                                                    (_loop1256013172_
                                                     _lp-tl1256313185_
                                                     (cons _hd1257013199_
                                                           _xarg1256413177_))
                                                    (___match1564915650_
                                                     _e1253013095_
                                                     _hd1253113098_
                                                     _tl1253213100_
                                                     ___splice1561015611_
                                                     _target1253313103_
                                                     _tl1253513105_))))
                                            (___match1564915650_
                                             _e1253013095_
                                             _hd1253113098_
                                             _tl1253213100_
                                             ___splice1561015611_
                                             _target1253313103_
                                             _tl1253513105_))
                                        (___match1564915650_
                                         _e1253013095_
                                         _hd1253113098_
                                         _tl1253213100_
                                         ___splice1561015611_
                                         _target1253313103_
                                         _tl1253513105_))
                                    (___match1564915650_
                                     _e1253013095_
                                     _hd1253113098_
                                     _tl1253213100_
                                     ___splice1561015611_
                                     _target1253313103_
                                     _tl1253513105_))))
                            (___match1564915650_
                             _e1253013095_
                             _hd1253113098_
                             _tl1253213100_
                             ___splice1561015611_
                             _target1253313103_
                             _tl1253513105_))))
                    (let ((_xarg1256513204_ (reverse _xarg1256413177_)))
                      (if (gx#stx-null? _tl1254413132_)
                          (let ((_L13207_ _xarg1256513204_)
                                (_L13208_ _hd1255513162_)
                                (_L13209_ _arg1254113124_))
                            (if (and (gx#identifier-list?
                                      (foldr1 (lambda (_g1323713240_
                                                       _g1323813242_)
                                                (cons _g1323713240_
                                                      _g1323813242_))
                                              '()
                                              _L13209_))
                                     (fx= (length (foldr1 (lambda (_g1324413247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1324513249_)
                    (cons _g1324413247_ _g1324513249_))
                  '()
                  _L13209_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (length (foldr1 (lambda (_g1325113254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1325213256_)
                    (cons _g1325113254_ _g1325213256_))
                  '()
                  _L13207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (andmap2 gx#free-identifier=?
                                              (foldr1 (lambda (_g1325813261_
                                                               _g1325913263_)
                                                        (cons _g1325813261_
                                                              _g1325913263_))
                                                      '()
                                                      _L13209_)
                                              (foldr1 (lambda (_g1326513268_
                                                               _g1326613270_)
                                                        (cons _g1326513268_
                                                              _g1326613270_))
                                                      '()
                                                      _L13207_))
                                     (not (find (lambda (_g1327213274_)
                                                  (gx#free-identifier=?
                                                   _g1327213274_
                                                   _L13208_))
                                                (foldr1 (lambda (_g1327613279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1327713281_)
                  (cons _g1327613279_ _g1327713281_))
                '()
                _L13209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (___kont1560815609_ _L13207_ _L13208_ _L13209_)
                                (___match1564915650_
                                 _e1253013095_
                                 _hd1253113098_
                                 _tl1253213100_
                                 ___splice1561015611_
                                 _target1253313103_
                                 _tl1253513105_)))
                          (___match1564915650_
                           _e1253013095_
                           _hd1253113098_
                           _tl1253213100_
                           ___splice1561015611_
                           _target1253313103_
                           _tl1253513105_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1256013172_
                                               _target1255713167_
                                               '()))
                                            (___match1564915650_
                                             _e1253013095_
                                             _hd1253113098_
                                             _tl1253213100_
                                             ___splice1561015611_
                                             _target1253313103_
                                             _tl1253513105_))))
                                    (___match1564915650_
                                     _e1253013095_
                                     _hd1253113098_
                                     _tl1253213100_
                                     ___splice1561015611_
                                     _target1253313103_
                                     _tl1253513105_))
                                (___match1564915650_
                                 _e1253013095_
                                 _hd1253113098_
                                 _tl1253213100_
                                 ___splice1561015611_
                                 _target1253313103_
                                 _tl1253513105_))))
                        (___match1564915650_
                         _e1253013095_
                         _hd1253113098_
                         _tl1253213100_
                         ___splice1561015611_
                         _target1253313103_
                         _tl1253513105_))
                    (___match1564915650_
                     _e1253013095_
                     _hd1253113098_
                     _tl1253213100_
                     ___splice1561015611_
                     _target1253313103_
                     _tl1253513105_))
                (___match1564915650_
                 _e1253013095_
                 _hd1253113098_
                 _tl1253213100_
                 ___splice1561015611_
                 _target1253313103_
                 _tl1253513105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1564915650_
                                                 _e1253013095_
                                                 _hd1253113098_
                                                 _tl1253213100_
                                                 ___splice1561015611_
                                                 _target1253313103_
                                                 _tl1253513105_))))
                                        (___match1564915650_
                                         _e1253013095_
                                         _hd1253113098_
                                         _tl1253213100_
                                         ___splice1561015611_
                                         _target1253313103_
                                         _tl1253513105_))
                                    (___match1564915650_
                                     _e1253013095_
                                     _hd1253113098_
                                     _tl1253213100_
                                     ___splice1561015611_
                                     _target1253313103_
                                     _tl1253513105_))
                                (___match1564915650_
                                 _e1253013095_
                                 _hd1253113098_
                                 _tl1253213100_
                                 ___splice1561015611_
                                 _target1253313103_
                                 _tl1253513105_))))
                        (___match1564915650_
                         _e1253013095_
                         _hd1253113098_
                         _tl1253213100_
                         ___splice1561015611_
                         _target1253313103_
                         _tl1253513105_))))
                (___match1564915650_
                 _e1253013095_
                 _hd1253113098_
                 _tl1253213100_
                 ___splice1561015611_
                 _target1253313103_
                 _tl1253513105_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1253613108_
                                     _target1253313103_
                                     '())))))
                          (if (gx#stx-pair? ___stx1560615607_)
                              (let ((_e1253013095_
                                     (gx#stx-e ___stx1560615607_)))
                                (let ((_tl1253213100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1253013095_)))
                                      (_hd1253113098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1253013095_))))
                                  (if (gx#stx-pair/null? _hd1253113098_)
                                      (let ((___splice1561015611_
                                             (gx#syntax-split-splice
                                              _hd1253113098_
                                              '0)))
                                        (let ((_tl1253513105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1561015611_
                                                  '1)))
                                              (_target1253313103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1561015611_
                                                  '0))))
                                          (if (gx#stx-null? _tl1253513105_)
                                              (___match1563715638_
                                               _e1253013095_
                                               _hd1253113098_
                                               _tl1253213100_
                                               ___splice1561015611_
                                               _target1253313103_
                                               _tl1253513105_)
                                              (___match1564915650_
                                               _e1253013095_
                                               _hd1253113098_
                                               _tl1253213100_
                                               ___splice1561015611_
                                               _target1253313103_
                                               _tl1253513105_))))
                                      (if (gx#stx-pair? _tl1253213100_)
                                          (let ((_e1264512702_
                                                 (gx#stx-e _tl1253213100_)))
                                            (let ((_tl1264712707_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1264512702_)))
                                                  (_hd1264612705_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1264512702_))))
                                              (if (gx#stx-pair? _hd1264612705_)
                                                  (let ((_e1264812710_
                                                         (gx#stx-e
                                                          _hd1264612705_)))
                                                    (let ((_tl1265012715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1264812710_)))
                                                          (_hd1264912713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1264812710_))))
                                                      (if (gx#identifier?
                                                           _hd1264912713_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1264912713_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1265012715_)
                          (let ((_e1265112718_ (gx#stx-e _tl1265012715_)))
                            (let ((_tl1265312723_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1265112718_)))
                                  (_hd1265212721_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1265112718_))))
                              (if (gx#stx-pair? _hd1265212721_)
                                  (let ((_e1265412726_
                                         (gx#stx-e _hd1265212721_)))
                                    (let ((_tl1265612731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1265412726_)))
                                          (_hd1265512729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1265412726_))))
                                      (if (gx#identifier? _hd1265512729_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1265512729_)
                                              (if (gx#stx-pair? _tl1265612731_)
                                                  (let ((_e1265712734_
                                                         (gx#stx-e
                                                          _tl1265612731_)))
                                                    (let ((_tl1265912739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1265712734_)))
                                                          (_hd1265812737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1265712734_))))
                                                      (if (gx#stx-null?
                                                           _tl1265912739_)
                                                          (if (gx#stx-pair?
                                                               _tl1265312723_)
                                                              (let ((_e1266012742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1265312723_)))
                        (let ((_tl1266212747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1266012742_)))
                              (_hd1266112745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1266012742_))))
                          (if (gx#stx-pair? _hd1266112745_)
                              (let ((_e1266312750_ (gx#stx-e _hd1266112745_)))
                                (let ((_tl1266512755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1266312750_)))
                                      (_hd1266412753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1266312750_))))
                                  (if (gx#identifier? _hd1266412753_)
                                      (if (gx#stx-eq? '%#ref _hd1266412753_)
                                          (if (gx#stx-pair? _tl1266512755_)
                                              (let ((_e1266612758_
                                                     (gx#stx-e
                                                      _tl1266512755_)))
                                                (let ((_tl1266812763_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1266612758_)))
                                                      (_hd1266712761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1266612758_))))
                                                  (if (gx#stx-null?
                                                       _tl1266812763_)
                                                      (if (gx#stx-pair?
                                                           _tl1266212747_)
                                                          (let ((_e1266912766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1266212747_)))
                    (let ((_tl1267112771_
                           (let () (declare (not safe)) (##cdr _e1266912766_)))
                          (_hd1267012769_
                           (let ()
                             (declare (not safe))
                             (##car _e1266912766_))))
                      (if (gx#stx-pair? _hd1267012769_)
                          (let ((_e1267212774_ (gx#stx-e _hd1267012769_)))
                            (let ((_tl1267412779_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1267212774_)))
                                  (_hd1267312777_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1267212774_))))
                              (if (gx#identifier? _hd1267312777_)
                                  (if (gx#stx-eq? '%#ref _hd1267312777_)
                                      (if (gx#stx-pair? _tl1267412779_)
                                          (let ((_e1267512782_
                                                 (gx#stx-e _tl1267412779_)))
                                            (let ((_tl1267712787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1267512782_)))
                                                  (_hd1267612785_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1267512782_))))
                                              (if (gx#stx-null? _tl1267712787_)
                                                  (if (gx#stx-null?
                                                       _tl1267112771_)
                                                      (if (gx#stx-null?
                                                           _tl1264712707_)
                                                          (___match1574715748_
                                                           _e1253013095_
                                                           _hd1253113098_
                                                           _tl1253213100_
                                                           _e1264512702_
                                                           _hd1264612705_
                                                           _tl1264712707_
                                                           _e1264812710_
                                                           _hd1264912713_
                                                           _tl1265012715_
                                                           _e1265112718_
                                                           _hd1265212721_
                                                           _tl1265312723_
                                                           _e1265412726_
                                                           _hd1265512729_
                                                           _tl1265612731_
                                                           _e1265712734_
                                                           _hd1265812737_
                                                           _tl1265912739_
                                                           _e1266012742_
                                                           _hd1266112745_
                                                           _tl1266212747_
                                                           _e1266312750_
                                                           _hd1266412753_
                                                           _tl1266512755_
                                                           _e1266612758_
                                                           _hd1266712761_
                                                           _tl1266812763_
                                                           _e1266912766_
                                                           _hd1267012769_
                                                           _tl1267112771_
                                                           _e1267212774_
                                                           _hd1267312777_
                                                           _tl1267412779_
                                                           _e1267512782_
                                                           _hd1267612785_
                                                           _tl1267712787_)
                                                          (___kont1562215623_))
                                                      (___kont1562215623_))
                                                  (___kont1562215623_))))
                                          (___kont1562215623_))
                                      (___kont1562215623_))
                                  (___kont1562215623_))))
                          (___kont1562215623_))))
                  (___kont1562215623_))
              (___kont1562215623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1562215623_))
                                          (___kont1562215623_))
                                      (___kont1562215623_))))
                              (___kont1562215623_))))
                      (___kont1562215623_))
                  (___kont1562215623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1562215623_))
                                              (___kont1562215623_))
                                          (___kont1562215623_))))
                                  (___kont1562215623_))))
                          (___kont1562215623_))
                      (___kont1562215623_))
                  (___kont1562215623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1562215623_))))
                                          (___kont1562215623_)))))
                              (___kont1562215623_)))))))
                 (_dispatch-case-e11833_
                  (lambda (_hd11981_ _body11982_)
                    (let* ((_form11984_
                            (cons _hd11981_ (cons _body11982_ '())))
                           (___stx1575015751_ _form11984_)
                           (_g1198812112_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1575015751_))))
                      (let ((___kont1575215753_
                             (lambda (_L12483_ _L12484_ _L12485_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L12484_ '())))))
                            (___kont1575815759_
                             (lambda (_L12331_ _L12332_ _L12333_ _L12334_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L12331_ '())))))
                            (___kont1576215763_
                             (lambda (_L12197_ _L12198_ _L12199_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L12197_ '()))))))
                        (let* ((___match1585915860_
                                (lambda (_e1207812117_
                                         _hd1207912120_
                                         _tl1208012122_
                                         _e1208112125_
                                         _hd1208212128_
                                         _tl1208312130_
                                         _e1208412133_
                                         _hd1208512136_
                                         _tl1208612138_
                                         _e1208712141_
                                         _hd1208812144_
                                         _tl1208912146_
                                         _e1209012149_
                                         _hd1209112152_
                                         _tl1209212154_
                                         _e1209312157_
                                         _hd1209412160_
                                         _tl1209512162_
                                         _e1209612165_
                                         _hd1209712168_
                                         _tl1209812170_
                                         _e1209912173_
                                         _hd1210012176_
                                         _tl1210112178_
                                         _e1210212181_
                                         _hd1210312184_
                                         _tl1210412186_)
                                  (if (gx#stx-pair? _tl1209812170_)
                                      (let ((_e1210512189_
                                             (gx#stx-e _tl1209812170_)))
                                        (let ((_tl1210712194_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1210512189_)))
                                              (_hd1210612192_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1210512189_))))
                                          (if (gx#stx-null? _tl1210712194_)
                                              (if (gx#stx-null? _tl1208312130_)
                                                  (___kont1576215763_
                                                   _hd1210312184_
                                                   _hd1209412160_
                                                   _hd1207912120_)
                                                  (_g1198812112_))
                                              (_g1198812112_))))
                                      (_g1198812112_))))
                               (___match1578915790_
                                (lambda (_e1203912235_
                                         _hd1204012238_
                                         _tl1204112240_
                                         ___splice1576015761_
                                         _target1204212243_
                                         _tl1204412245_)
                                  (letrec ((_loop1204512248_
                                            (lambda (_hd1204312251_
                                                     _arg1204912253_)
                                              (if (gx#stx-pair? _hd1204312251_)
                                                  (let ((_e1204612256_
                                                         (gx#stx-e
                                                          _hd1204312251_)))
                                                    (let ((_lp-tl1204812261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1204612256_)))
                                                          (_lp-hd1204712259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1204612256_))))
                                                      (_loop1204512248_
                                                       _lp-tl1204812261_
                                                       (cons _lp-hd1204712259_
                                                             _arg1204912253_))))
                                                  (let ((_arg1205012264_
                                                         (reverse _arg1204912253_)))
                                                    (if (gx#stx-pair?
                                                         _tl1204112240_)
                                                        (let ((_e1205112267_
                                                               (gx#stx-e
                                                                _tl1204112240_)))
                                                          (let ((_tl1205312272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1205112267_)))
                        (_hd1205212270_
                         (let () (declare (not safe)) (##car _e1205112267_))))
                    (if (gx#stx-pair? _hd1205212270_)
                        (let ((_e1205412275_ (gx#stx-e _hd1205212270_)))
                          (let ((_tl1205612280_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1205412275_)))
                                (_hd1205512278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1205412275_))))
                            (if (gx#identifier? _hd1205512278_)
                                (if (gx#stx-eq? '%#call _hd1205512278_)
                                    (if (gx#stx-pair? _tl1205612280_)
                                        (let ((_e1205712283_
                                               (gx#stx-e _tl1205612280_)))
                                          (let ((_tl1205912288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1205712283_)))
                                                (_hd1205812286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1205712283_))))
                                            (if (gx#stx-pair? _hd1205812286_)
                                                (let ((_e1206012291_
                                                       (gx#stx-e
                                                        _hd1205812286_)))
                                                  (let ((_tl1206212296_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1206012291_)))
                                                        (_hd1206112294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1206012291_))))
                                                    (if (gx#identifier?
                                                         _hd1206112294_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1206112294_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1206212296_)
                        (let ((_e1206312299_ (gx#stx-e _tl1206212296_)))
                          (let ((_tl1206512304_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1206312299_)))
                                (_hd1206412302_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1206312299_))))
                            (if (gx#stx-null? _tl1206512304_)
                                (if (gx#stx-pair? _tl1205912288_)
                                    (let ((_e1206612307_
                                           (gx#stx-e _tl1205912288_)))
                                      (let ((_tl1206812312_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1206612307_)))
                                            (_hd1206712310_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1206612307_))))
                                        (if (gx#stx-pair? _hd1206712310_)
                                            (let ((_e1206912315_
                                                   (gx#stx-e _hd1206712310_)))
                                              (let ((_tl1207112320_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1206912315_)))
                                                    (_hd1207012318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1206912315_))))
                                                (if (gx#identifier?
                                                     _hd1207012318_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1207012318_)
                                                        (if (gx#stx-pair?
                                                             _tl1207112320_)
                                                            (let ((_e1207212323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1207112320_)))
                      (let ((_tl1207412328_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1207212323_)))
                            (_hd1207312326_
                             (let ()
                               (declare (not safe))
                               (##car _e1207212323_))))
                        (if (gx#stx-null? _tl1207412328_)
                            (if (gx#stx-null? _tl1205312272_)
                                (___kont1575815759_
                                 _hd1207312326_
                                 _hd1206412302_
                                 _tl1204412245_
                                 _arg1205012264_)
                                (___match1585915860_
                                 _e1203912235_
                                 _hd1204012238_
                                 _tl1204112240_
                                 _e1205112267_
                                 _hd1205212270_
                                 _tl1205312272_
                                 _e1205412275_
                                 _hd1205512278_
                                 _tl1205612280_
                                 _e1205712283_
                                 _hd1205812286_
                                 _tl1205912288_
                                 _e1206012291_
                                 _hd1206112294_
                                 _tl1206212296_
                                 _e1206312299_
                                 _hd1206412302_
                                 _tl1206512304_
                                 _e1206612307_
                                 _hd1206712310_
                                 _tl1206812312_
                                 _e1206912315_
                                 _hd1207012318_
                                 _tl1207112320_
                                 _e1207212323_
                                 _hd1207312326_
                                 _tl1207412328_))
                            (_g1198812112_))))
                    (_g1198812112_))
                (_g1198812112_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1198812112_))))
                                            (_g1198812112_))))
                                    (_g1198812112_))
                                (_g1198812112_))))
                        (_g1198812112_))
                    (_g1198812112_))
                (_g1198812112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1198812112_))))
                                        (_g1198812112_))
                                    (_g1198812112_))
                                (_g1198812112_))))
                        (_g1198812112_))))
                (_g1198812112_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1204512248_
                                     _target1204212243_
                                     '()))))
                               (___match1577715778_
                                (lambda (_e1199312371_
                                         _hd1199412374_
                                         _tl1199512376_
                                         ___splice1575415755_
                                         _target1199612379_
                                         _tl1199812381_)
                                  (letrec ((_loop1199912384_
                                            (lambda (_hd1199712387_
                                                     _arg1200312389_)
                                              (if (gx#stx-pair? _hd1199712387_)
                                                  (let ((_e1200012392_
                                                         (gx#stx-e
                                                          _hd1199712387_)))
                                                    (let ((_lp-tl1200212397_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1200012392_)))
                                                          (_lp-hd1200112395_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1200012392_))))
                                                      (_loop1199912384_
                                                       _lp-tl1200212397_
                                                       (cons _lp-hd1200112395_
                                                             _arg1200312389_))))
                                                  (let ((_arg1200412400_
                                                         (reverse _arg1200312389_)))
                                                    (if (gx#stx-pair?
                                                         _tl1199512376_)
                                                        (let ((_e1200512403_
                                                               (gx#stx-e
                                                                _tl1199512376_)))
                                                          (let ((_tl1200712408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1200512403_)))
                        (_hd1200612406_
                         (let () (declare (not safe)) (##car _e1200512403_))))
                    (if (gx#stx-pair? _hd1200612406_)
                        (let ((_e1200812411_ (gx#stx-e _hd1200612406_)))
                          (let ((_tl1201012416_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1200812411_)))
                                (_hd1200912414_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1200812411_))))
                            (if (gx#identifier? _hd1200912414_)
                                (if (gx#stx-eq? '%#call _hd1200912414_)
                                    (if (gx#stx-pair? _tl1201012416_)
                                        (let ((_e1201112419_
                                               (gx#stx-e _tl1201012416_)))
                                          (let ((_tl1201312424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1201112419_)))
                                                (_hd1201212422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1201112419_))))
                                            (if (gx#stx-pair? _hd1201212422_)
                                                (let ((_e1201412427_
                                                       (gx#stx-e
                                                        _hd1201212422_)))
                                                  (let ((_tl1201612432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1201412427_)))
                                                        (_hd1201512430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1201412427_))))
                                                    (if (gx#identifier?
                                                         _hd1201512430_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1201512430_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1201612432_)
                        (let ((_e1201712435_ (gx#stx-e _tl1201612432_)))
                          (let ((_tl1201912440_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1201712435_)))
                                (_hd1201812438_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1201712435_))))
                            (if (gx#stx-null? _tl1201912440_)
                                (if (gx#stx-pair/null? _tl1201312424_)
                                    (let ((___splice1575615757_
                                           (gx#syntax-split-splice
                                            _tl1201312424_
                                            '0)))
                                      (let ((_tl1202212445_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1575615757_
                                                '1)))
                                            (_target1202012443_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice1575615757_
                                                '0))))
                                        (if (gx#stx-null? _tl1202212445_)
                                            (letrec ((_loop1202312448_
                                                      (lambda (_hd1202112451_
                                                               _xarg1202712453_)
                                                        (if (gx#stx-pair?
                                                             _hd1202112451_)
                                                            (let ((_e1202412456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1202112451_)))
                      (let ((_lp-tl1202612461_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1202412456_)))
                            (_lp-hd1202512459_
                             (let ()
                               (declare (not safe))
                               (##car _e1202412456_))))
                        (if (gx#stx-pair? _lp-hd1202512459_)
                            (let ((_e1202912464_ (gx#stx-e _lp-hd1202512459_)))
                              (let ((_tl1203112469_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1202912464_)))
                                    (_hd1203012467_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1202912464_))))
                                (if (gx#identifier? _hd1203012467_)
                                    (if (gx#stx-eq? '%#ref _hd1203012467_)
                                        (if (gx#stx-pair? _tl1203112469_)
                                            (let ((_e1203212472_
                                                   (gx#stx-e _tl1203112469_)))
                                              (let ((_tl1203412477_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1203212472_)))
                                                    (_hd1203312475_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1203212472_))))
                                                (if (gx#stx-null?
                                                     _tl1203412477_)
                                                    (_loop1202312448_
                                                     _lp-tl1202612461_
                                                     (cons _hd1203312475_
                                                           _xarg1202712453_))
                                                    (___match1578915790_
                                                     _e1199312371_
                                                     _hd1199412374_
                                                     _tl1199512376_
                                                     ___splice1575415755_
                                                     _target1199612379_
                                                     _tl1199812381_))))
                                            (___match1578915790_
                                             _e1199312371_
                                             _hd1199412374_
                                             _tl1199512376_
                                             ___splice1575415755_
                                             _target1199612379_
                                             _tl1199812381_))
                                        (___match1578915790_
                                         _e1199312371_
                                         _hd1199412374_
                                         _tl1199512376_
                                         ___splice1575415755_
                                         _target1199612379_
                                         _tl1199812381_))
                                    (___match1578915790_
                                     _e1199312371_
                                     _hd1199412374_
                                     _tl1199512376_
                                     ___splice1575415755_
                                     _target1199612379_
                                     _tl1199812381_))))
                            (___match1578915790_
                             _e1199312371_
                             _hd1199412374_
                             _tl1199512376_
                             ___splice1575415755_
                             _target1199612379_
                             _tl1199812381_))))
                    (let ((_xarg1202812480_ (reverse _xarg1202712453_)))
                      (if (gx#stx-null? _tl1200712408_)
                          (___kont1575215753_
                           _xarg1202812480_
                           _hd1201812438_
                           _arg1200412400_)
                          (___match1578915790_
                           _e1199312371_
                           _hd1199412374_
                           _tl1199512376_
                           ___splice1575415755_
                           _target1199612379_
                           _tl1199812381_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1202312448_
                                               _target1202012443_
                                               '()))
                                            (___match1578915790_
                                             _e1199312371_
                                             _hd1199412374_
                                             _tl1199512376_
                                             ___splice1575415755_
                                             _target1199612379_
                                             _tl1199812381_))))
                                    (___match1578915790_
                                     _e1199312371_
                                     _hd1199412374_
                                     _tl1199512376_
                                     ___splice1575415755_
                                     _target1199612379_
                                     _tl1199812381_))
                                (___match1578915790_
                                 _e1199312371_
                                 _hd1199412374_
                                 _tl1199512376_
                                 ___splice1575415755_
                                 _target1199612379_
                                 _tl1199812381_))))
                        (___match1578915790_
                         _e1199312371_
                         _hd1199412374_
                         _tl1199512376_
                         ___splice1575415755_
                         _target1199612379_
                         _tl1199812381_))
                    (___match1578915790_
                     _e1199312371_
                     _hd1199412374_
                     _tl1199512376_
                     ___splice1575415755_
                     _target1199612379_
                     _tl1199812381_))
                (___match1578915790_
                 _e1199312371_
                 _hd1199412374_
                 _tl1199512376_
                 ___splice1575415755_
                 _target1199612379_
                 _tl1199812381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match1578915790_
                                                 _e1199312371_
                                                 _hd1199412374_
                                                 _tl1199512376_
                                                 ___splice1575415755_
                                                 _target1199612379_
                                                 _tl1199812381_))))
                                        (___match1578915790_
                                         _e1199312371_
                                         _hd1199412374_
                                         _tl1199512376_
                                         ___splice1575415755_
                                         _target1199612379_
                                         _tl1199812381_))
                                    (___match1578915790_
                                     _e1199312371_
                                     _hd1199412374_
                                     _tl1199512376_
                                     ___splice1575415755_
                                     _target1199612379_
                                     _tl1199812381_))
                                (___match1578915790_
                                 _e1199312371_
                                 _hd1199412374_
                                 _tl1199512376_
                                 ___splice1575415755_
                                 _target1199612379_
                                 _tl1199812381_))))
                        (___match1578915790_
                         _e1199312371_
                         _hd1199412374_
                         _tl1199512376_
                         ___splice1575415755_
                         _target1199612379_
                         _tl1199812381_))))
                (___match1578915790_
                 _e1199312371_
                 _hd1199412374_
                 _tl1199512376_
                 ___splice1575415755_
                 _target1199612379_
                 _tl1199812381_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop1199912384_
                                     _target1199612379_
                                     '())))))
                          (if (gx#stx-pair? ___stx1575015751_)
                              (let ((_e1199312371_
                                     (gx#stx-e ___stx1575015751_)))
                                (let ((_tl1199512376_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1199312371_)))
                                      (_hd1199412374_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1199312371_))))
                                  (if (gx#stx-pair/null? _hd1199412374_)
                                      (let ((___splice1575415755_
                                             (gx#syntax-split-splice
                                              _hd1199412374_
                                              '0)))
                                        (let ((_tl1199812381_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1575415755_
                                                  '1)))
                                              (_target1199612379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice1575415755_
                                                  '0))))
                                          (if (gx#stx-null? _tl1199812381_)
                                              (___match1577715778_
                                               _e1199312371_
                                               _hd1199412374_
                                               _tl1199512376_
                                               ___splice1575415755_
                                               _target1199612379_
                                               _tl1199812381_)
                                              (___match1578915790_
                                               _e1199312371_
                                               _hd1199412374_
                                               _tl1199512376_
                                               ___splice1575415755_
                                               _target1199612379_
                                               _tl1199812381_))))
                                      (if (gx#stx-pair? _tl1199512376_)
                                          (let ((_e1208112125_
                                                 (gx#stx-e _tl1199512376_)))
                                            (let ((_tl1208312130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1208112125_)))
                                                  (_hd1208212128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1208112125_))))
                                              (if (gx#stx-pair? _hd1208212128_)
                                                  (let ((_e1208412133_
                                                         (gx#stx-e
                                                          _hd1208212128_)))
                                                    (let ((_tl1208612138_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1208412133_)))
                                                          (_hd1208512136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1208412133_))))
                                                      (if (gx#identifier?
                                                           _hd1208512136_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd1208512136_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1208612138_)
                          (let ((_e1208712141_ (gx#stx-e _tl1208612138_)))
                            (let ((_tl1208912146_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1208712141_)))
                                  (_hd1208812144_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1208712141_))))
                              (if (gx#stx-pair? _hd1208812144_)
                                  (let ((_e1209012149_
                                         (gx#stx-e _hd1208812144_)))
                                    (let ((_tl1209212154_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1209012149_)))
                                          (_hd1209112152_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1209012149_))))
                                      (if (gx#identifier? _hd1209112152_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd1209112152_)
                                              (if (gx#stx-pair? _tl1209212154_)
                                                  (let ((_e1209312157_
                                                         (gx#stx-e
                                                          _tl1209212154_)))
                                                    (let ((_tl1209512162_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1209312157_)))
                                                          (_hd1209412160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1209312157_))))
                                                      (if (gx#stx-null?
                                                           _tl1209512162_)
                                                          (if (gx#stx-pair?
                                                               _tl1208912146_)
                                                              (let ((_e1209612165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1208912146_)))
                        (let ((_tl1209812170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1209612165_)))
                              (_hd1209712168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1209612165_))))
                          (if (gx#stx-pair? _hd1209712168_)
                              (let ((_e1209912173_ (gx#stx-e _hd1209712168_)))
                                (let ((_tl1210112178_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1209912173_)))
                                      (_hd1210012176_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1209912173_))))
                                  (if (gx#identifier? _hd1210012176_)
                                      (if (gx#stx-eq? '%#ref _hd1210012176_)
                                          (if (gx#stx-pair? _tl1210112178_)
                                              (let ((_e1210212181_
                                                     (gx#stx-e
                                                      _tl1210112178_)))
                                                (let ((_tl1210412186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1210212181_)))
                                                      (_hd1210312184_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1210212181_))))
                                                  (if (gx#stx-null?
                                                       _tl1210412186_)
                                                      (if (gx#stx-pair?
                                                           _tl1209812170_)
                                                          (let ((_e1210512189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1209812170_)))
                    (let ((_tl1210712194_
                           (let () (declare (not safe)) (##cdr _e1210512189_)))
                          (_hd1210612192_
                           (let ()
                             (declare (not safe))
                             (##car _e1210512189_))))
                      (if (gx#stx-null? _tl1210712194_)
                          (if (gx#stx-null? _tl1208312130_)
                              (___kont1576215763_
                               _hd1210312184_
                               _hd1209412160_
                               _hd1199412374_)
                              (_g1198812112_))
                          (_g1198812112_))))
                  (_g1198812112_))
              (_g1198812112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1198812112_))
                                          (_g1198812112_))
                                      (_g1198812112_))))
                              (_g1198812112_))))
                      (_g1198812112_))
                  (_g1198812112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1198812112_))
                                              (_g1198812112_))
                                          (_g1198812112_))))
                                  (_g1198812112_))))
                          (_g1198812112_))
                      (_g1198812112_))
                  (_g1198812112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1198812112_))))
                                          (_g1198812112_)))))
                              (_g1198812112_)))))))
                 (_generate111834_
                  (lambda (_args11969_ _arglen11970_ _hd11971_ _body11972_)
                    (let* ((_len11974_ (gx#stx-length _hd11971_))
                           (_condition11976_
                            (if (gx#stx-list? _hd11971_)
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _arglen11970_
                                                (cons _len11974_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _arglen11970_ (cons _len11974_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _len11974_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _arglen11970_
                                                    (cons _len11974_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _arglen11970_ (cons _len11974_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_dispatch11978_
                            (if (_dispatch-case?11832_ _hd11971_ _body11972_)
                                (_dispatch-case-e11833_ _hd11971_ _body11972_)
                                (gxc#generate-runtime-lambda-form
                                 _hd11971_
                                 _body11972_))))
                      (cons _condition11976_
                            (cons (cons 'apply
                                        (cons _dispatch11978_
                                              (cons _args11969_ '())))
                                  '()))))))
          (let* ((_g1183611864_
                  (lambda (_g1183711861_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1183711861_)))
                 (_g1183511966_
                  (lambda (_g1183711867_)
                    (if (gx#stx-pair? _g1183711867_)
                        (let ((_e1184011869_ (gx#stx-e _g1183711867_)))
                          (let ((_hd1184111872_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1184011869_)))
                                (_tl1184211874_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1184011869_))))
                            (if (gx#stx-pair/null? _tl1184211874_)
                                (let ((_g16698_
                                       (gx#syntax-split-splice
                                        _tl1184211874_
                                        '0)))
                                  (begin
                                    (let ((_g16699_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g16698_)
                                                 (##vector-length _g16698_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g16699_ 2)))
                                          (error "Context expects 2 values"
                                                 _g16699_)))
                                    (let ((_target1184311877_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16698_ 0)))
                                          (_tl1184511879_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16698_ 1))))
                                      (if (gx#stx-null? _tl1184511879_)
                                          (letrec ((_loop1184611882_
                                                    (lambda (_hd1184411885_
                                                             _body1185011887_
                                                             _hd1185111889_)
                                                      (if (gx#stx-pair?
                                                           _hd1184411885_)
                                                          (let ((_e1184711892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1184411885_)))
                    (let ((_lp-hd1184811895_
                           (let () (declare (not safe)) (##car _e1184711892_)))
                          (_lp-tl1184911897_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1184711892_))))
                      (if (gx#stx-pair? _lp-hd1184811895_)
                          (let ((_e1185411900_ (gx#stx-e _lp-hd1184811895_)))
                            (let ((_hd1185511903_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1185411900_)))
                                  (_tl1185611905_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1185411900_))))
                              (if (gx#stx-pair? _tl1185611905_)
                                  (let ((_e1185711908_
                                         (gx#stx-e _tl1185611905_)))
                                    (let ((_hd1185811911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1185711908_)))
                                          (_tl1185911913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1185711908_))))
                                      (if (gx#stx-null? _tl1185911913_)
                                          (_loop1184611882_
                                           _lp-tl1184911897_
                                           (cons _hd1185811911_
                                                 _body1185011887_)
                                           (cons _hd1185511903_
                                                 _hd1185111889_))
                                          (_g1183611864_ _g1183711867_))))
                                  (_g1183611864_ _g1183711867_))))
                          (_g1183611864_ _g1183711867_))))
                  (let ((_body1185211916_ (reverse _body1185011887_))
                        (_hd1185311918_ (reverse _hd1185111889_)))
                    ((lambda (_L11921_ _L11922_)
                       (let ((_args11941_ (gxc#generate-runtime-temporary__0))
                             (_arglen11942_
                              (gxc#generate-runtime-temporary__0))
                             (_name11943_
                              (let ((_$e11938_
                                     (table-ref
                                      (gxc#current-compile-runtime-names)
                                      _stx11830_
                                      '#f)))
                                (if _$e11938_
                                    _$e11938_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _args11941_
                                     (cons (cons 'let
                                                 (cons (cons (cons _arglen11942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _args11941_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args11941_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (foldr1 cons
                                   (cons (cons 'else
                                               (cons (cons '##raise-wrong-number-of-arguments-exception
                                                           (cons _name11943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _args11941_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (map (lambda (_g1194411947_ _g1194511949_)
                                          (_generate111834_
                                           _args11941_
                                           _arglen11942_
                                           _g1194411947_
                                           _g1194511949_))
                                        (foldr1 (lambda (_g1195111954_
                                                         _g1195211956_)
                                                  (cons _g1195111954_
                                                        _g1195211956_))
                                                '()
                                                _L11922_)
                                        (foldr1 (lambda (_g1195811961_
                                                         _g1195911963_)
                                                  (cons _g1195811961_
                                                        _g1195911963_))
                                                '()
                                                _L11921_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _body1185211916_
                     _hd1185311918_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1184611882_
                                             _target1184311877_
                                             '()
                                             '()))
                                          (_g1183611864_ _g1183711867_)))))
                                (_g1183611864_ _g1183711867_))))
                        (_g1183611864_ _g1183711867_)))))
            (_g1183511966_ _stx11830_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx11104_ _compiled-body?11105_)
        (letrec ((_generate-simple11107_
                  (lambda (_hd11817_ _body11818_)
                    (_coalesce-boolean11108_
                     (_coalesce-let*11109_
                      (gxc#generate-runtime-simple-let
                       'let
                       _hd11817_
                       _body11818_
                       _compiled-body?11105_)))))
                 (_coalesce-boolean11108_
                  (lambda (_code11678_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code1167911705_ _code11678_)
                               (_else1168111713_ (lambda () _code11678_))
                               (_K1168311750_
                                (lambda (_expr211716_ _expr111717_ _id11718_)
                                  (let* ((_expr21171911727_ _expr211716_)
                                         (_else1172111735_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _expr111717_
                                                        (cons _expr211716_
                                                              '())))))
                                         (_K1172311740_
                                          (lambda (_exprs11738_)
                                            (cons 'or
                                                  (cons _expr111717_
                                                        _exprs11738_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr21171911727_))
                                        (let ((_hd1172411743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr21171911727_)))
                                              (_tl1172511745_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr21171911727_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1172411743_ 'or))
                                              (let ((_exprs11748_
                                                     _tl1172511745_))
                                                (_K1172311740_ _exprs11748_))
                                              (_else1172111735_)))
                                        (_else1172111735_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code1167911705_))
                              (let ((_hd1168411753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code1167911705_)))
                                    (_tl1168511755_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code1167911705_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd1168411753_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl1168511755_))
                                        (let ((_hd1168611758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl1168511755_)))
                                              (_tl1168711760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl1168511755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd1168611758_))
                                              (let ((_hd1169811763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd1168611758_)))
                                                    (_tl1169911765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd1168611758_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd1169811763_))
                                                    (let ((_hd1170011768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd1169811763_)))
                                                          (_tl1170111770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd1169811763_))))
                                                      (let ((_id11773_
                                                             _hd1170011768_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl1170111770_))
                                                            (let ((_hd1170211775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl1170111770_)))
                          (_tl1170311777_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl1170111770_))))
                      (let ((_expr111780_ _hd1170211775_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl1170311777_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl1169911765_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1168711760_))
                                    (let ((_hd1168811782_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl1168711760_)))
                                          (_tl1168911784_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1168711760_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd1168811782_))
                                          (let ((_hd1169011787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd1168811782_)))
                                                (_tl1169111789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd1168811782_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd1169011787_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl1169111789_))
                                                    (let ((_hd1169211792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl1169111789_)))
                                                          (_tl1169311794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl1169111789_))))
                                                      (if ((lambda (_g1179611798_)
                                                             (eq? _g1179611798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id11773_))
                   _hd1169211792_)
                  (if (let () (declare (not safe)) (##pair? _tl1169311794_))
                      (let ((_hd1169411801_
                             (let ()
                               (declare (not safe))
                               (##car _tl1169311794_)))
                            (_tl1169511803_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl1169311794_))))
                        (if ((lambda (_g1180511807_)
                               (eq? _g1180511807_ _id11773_))
                             _hd1169411801_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl1169511803_))
                                (let ((_hd1169611810_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl1169511803_)))
                                      (_tl1169711812_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl1169511803_))))
                                  (let ((_expr211815_ _hd1169611810_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1169711812_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl1168911784_))
                                            (_K1168311750_
                                             _expr211815_
                                             _expr111780_
                                             _id11773_)
                                            (_else1168111713_))
                                        (_else1168111713_))))
                                (_else1168111713_))
                            (_else1168111713_)))
                      (_else1168111713_))
                  (_else1168111713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1168111713_))
                                                (_else1168111713_)))
                                          (_else1168111713_)))
                                    (_else1168111713_))
                                (_else1168111713_))
                            (_else1168111713_))))
                    (_else1168111713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else1168111713_)))
                                              (_else1168111713_)))
                                        (_else1168111713_))
                                    (_else1168111713_)))
                              (_else1168111713_)))
                        _code11678_)))
                 (_coalesce-let*11109_
                  (lambda (_code11411_)
                    (let* ((_code1141211476_ _code11411_)
                           (_else1141611484_ (lambda () _code11411_)))
                      (let ((_K1145811629_
                             (lambda (_body11625_ _expr11626_ _id11627_)
                               (cons 'let
                                     (cons (cons (cons _id11627_
                                                       (cons _expr11626_ '()))
                                                 '())
                                           _body11625_))))
                            (_K1143511554_
                             (lambda (_body11548_
                                      _expr211549_
                                      _id211550_
                                      _expr111551_
                                      _id111552_)
                               (cons 'let*
                                     (cons (cons (cons _id111552_
                                                       (cons _expr111551_ '()))
                                                 (cons (cons _id211550_
                                                             (cons _expr211549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body11548_))))
                            (_K1141811493_
                             (lambda (_body11488_
                                      _bind11489_
                                      _expr111490_
                                      _id111491_)
                               (cons 'let*
                                     (cons (cons (cons _id111491_
                                                       (cons _expr111490_ '()))
                                                 _bind11489_)
                                           _body11488_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code1141211476_))
                            (let ((_tl1146011634_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code1141211476_)))
                                  (_hd1145911632_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code1141211476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd1145911632_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1146011634_))
                                      (let ((_tl1146211639_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1146011634_)))
                                            (_hd1146111637_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1146011634_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd1146111637_))
                                            (let ((_tl1147011644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd1146111637_)))
                                                  (_hd1146911642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd1146111637_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd1146911642_))
                                                  (let ((_tl1147211649_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd1146911642_)))
                                                        (_hd1147111647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd1146911642_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl1147211649_))
                                                        (let ((_tl1147411656_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl1147211649_)))
                      (_hd1147311654_
                       (let () (declare (not safe)) (##car _tl1147211649_))))
                  (if (let () (declare (not safe)) (##null? _tl1147411656_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl1147011644_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl1146211639_))
                              (let ((_tl1146411663_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl1146211639_)))
                                    (_hd1146311661_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl1146211639_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1146311661_))
                                    (let ((_tl1146611668_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1146311661_)))
                                          (_hd1146511666_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1146311661_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd1146511666_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl1146611668_))
                                              (let ((_tl1146811673_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl1146611668_)))
                                                    (_hd1146711671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl1146611668_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd1146711671_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1146411663_))
                                                        (let ((_id11652_
                                                               _hd1147111647_)
                                                              (_expr11659_
                                                               _hd1147311654_)
                                                              (_body11676_
                                                               _tl1146811673_))
                                                          (_K1145811629_
                                                           _body11676_
                                                           _expr11659_
                                                           _id11652_))
                                                        (_else1141611484_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd1146711671_))
                                                        (let ((_tl1144711603_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd1146711671_)))
                      (_hd1144611601_
                       (let () (declare (not safe)) (##car _hd1146711671_))))
                  (if (let () (declare (not safe)) (##pair? _hd1144611601_))
                      (let ((_tl1144911608_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd1144611601_)))
                            (_hd1144811606_
                             (let ()
                               (declare (not safe))
                               (##car _hd1144611601_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1144911608_))
                            (let ((_tl1145111615_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1144911608_)))
                                  (_hd1145011613_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1144911608_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1145111615_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1144711603_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1146411663_))
                                          (let ((_id111577_ _hd1147111647_)
                                                (_expr111584_ _hd1147311654_)
                                                (_id211611_ _hd1144811606_)
                                                (_expr211618_ _hd1145011613_)
                                                (_body11620_ _tl1146811673_))
                                            (_K1143511554_
                                             _body11620_
                                             _expr211618_
                                             _id211611_
                                             _expr111584_
                                             _id111577_))
                                          (_else1141611484_))
                                      (_else1141611484_))
                                  (_else1141611484_)))
                            (_else1141611484_)))
                      (_else1141611484_)))
                (_else1141611484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_else1141611484_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd1146511666_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl1146611668_))
                                                  (let ((_tl1142811537_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl1146611668_)))
                                                        (_hd1142711535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl1146611668_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl1146411663_))
                                                        (let ((_id111516_
                                                               _hd1147111647_)
                                                              (_expr111523_
                                                               _hd1147311654_)
                                                              (_bind11540_
                                                               _hd1142711535_)
                                                              (_body11542_
                                                               _tl1142811537_))
                                                          (_K1141811493_
                                                           _body11542_
                                                           _bind11540_
                                                           _expr111523_
                                                           _id111516_))
                                                        (_else1141611484_)))
                                                  (_else1141611484_))
                                              (_else1141611484_))))
                                    (_else1141611484_)))
                              (_else1141611484_))
                          (_else1141611484_))
                      (_else1141611484_)))
                (_else1141611484_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_else1141611484_)))
                                            (_else1141611484_)))
                                      (_else1141611484_))
                                  (_else1141611484_)))
                            (_else1141611484_))))))
                 (_generate-values11110_
                  (lambda (_hd11224_ _body11225_)
                    (let _lp11227_ ((_rest11229_ _hd11224_)
                                    (_bind11230_ '())
                                    (_check11231_ '())
                                    (_post11232_ '()))
                      (let* ((___stx1606116062_ _rest11229_)
                             (_g1123511246_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1606116062_))))
                        (let ((___kont1606316064_
                               (lambda (_L11273_ _L11274_)
                                 (let* ((___stx1601716018_ _L11274_)
                                        (_g1128911314_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1601716018_))))
                                   (let ((___kont1601916020_
                                          (lambda (_L11387_ _L11388_)
                                            (let ((_eid11402_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L11388_))
                                                  (_expr11403_
                                                   (gxc#compile-e _L11387_)))
                                              (_lp11227_
                                               _L11273_
                                               (cons (cons _eid11402_
                                                           (cons _expr11403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind11230_)
                                               _check11231_
                                               _post11232_))))
                                         (___kont1602116022_
                                          (lambda (_L11335_ _L11336_)
                                            (let* ((_vals11349_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values11351_
                                                    (gxc#generate-runtime-check-values
                                                     _vals11349_
                                                     _L11336_
                                                     _L11335_))
                                                   (_refs11353_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals11349_
                                                     _L11336_))
                                                   (_expr11355_
                                                    (gxc#compile-e _L11335_)))
                                              (_lp11227_
                                               _L11273_
                                               (cons (cons _vals11349_
                                                           (cons _expr11355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind11230_)
                                               (cons _check-values11351_
                                                     _check11231_)
                                               (cons _refs11353_
                                                     _post11232_))))))
                                     (if (gx#stx-pair? ___stx1601716018_)
                                         (let ((_e1129311363_
                                                (gx#stx-e ___stx1601716018_)))
                                           (let ((_tl1129511368_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1129311363_)))
                                                 (_hd1129411366_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1129311363_))))
                                             (if (gx#stx-pair? _hd1129411366_)
                                                 (let ((_e1129611371_
                                                        (gx#stx-e
                                                         _hd1129411366_)))
                                                   (let ((_tl1129811376_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1129611371_)))
                                                         (_hd1129711374_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1129611371_))))
                                                     (if (gx#stx-null?
                                                          _tl1129811376_)
                                                         (if (gx#stx-pair?
                                                              _tl1129511368_)
                                                             (let ((_e1129911379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1129511368_)))
                       (let ((_tl1130111384_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1129911379_)))
                             (_hd1130011382_
                              (let ()
                                (declare (not safe))
                                (##car _e1129911379_))))
                         (if (gx#stx-null? _tl1130111384_)
                             (___kont1601916020_ _hd1130011382_ _hd1129711374_)
                             (_g1128911314_))))
                     (_g1128911314_))
                 (if (gx#stx-pair? _tl1129511368_)
                     (let ((_e1130711327_ (gx#stx-e _tl1129511368_)))
                       (let ((_tl1130911332_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1130711327_)))
                             (_hd1130811330_
                              (let ()
                                (declare (not safe))
                                (##car _e1130711327_))))
                         (if (gx#stx-null? _tl1130911332_)
                             (___kont1602116022_ _hd1130811330_ _hd1129411366_)
                             (_g1128911314_))))
                     (_g1128911314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1129511368_)
                                                     (let ((_e1130711327_
                                                            (gx#stx-e
                                                             _tl1129511368_)))
                                                       (let ((_tl1130911332_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1130711327_)))
                     (_hd1130811330_
                      (let () (declare (not safe)) (##car _e1130711327_))))
                 (if (gx#stx-null? _tl1130911332_)
                     (___kont1602116022_ _hd1130811330_ _hd1129411366_)
                     (_g1128911314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1128911314_)))))
                                         (_g1128911314_))))))
                              (___kont1606516066_
                               (lambda ()
                                 (let* ((_body11253_
                                         (if _compiled-body?11105_
                                             _body11225_
                                             (gxc#compile-e _body11225_)))
                                        (_body11255_
                                         (_generate-values-post11111_
                                          _post11232_
                                          _body11253_))
                                        (_body11257_
                                         (_generate-values-check11112_
                                          _check11231_
                                          _body11255_)))
                                   (cons 'let
                                         (cons (reverse _bind11230_)
                                               (cons _body11257_ '())))))))
                          (if (gx#stx-pair? ___stx1606116062_)
                              (let ((_e1123911265_
                                     (gx#stx-e ___stx1606116062_)))
                                (let ((_tl1124111270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1123911265_)))
                                      (_hd1124011268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1123911265_))))
                                  (___kont1606316064_
                                   _tl1124111270_
                                   _hd1124011268_)))
                              (___kont1606516066_)))))))
                 (_generate-values-post11111_
                  (lambda (_post11183_ _body11184_)
                    (let _lp11186_ ((_rest11188_ _post11183_)
                                    (_body11189_ _body11184_))
                      (let* ((_rest1119011198_ _rest11188_)
                             (_else1119211206_ (lambda () _body11189_))
                             (_K1119411212_
                              (lambda (_rest11209_ _bind11210_)
                                (_lp11186_
                                 _rest11209_
                                 (cons 'let
                                       (cons _bind11210_
                                             (cons _body11189_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1119011198_))
                            (let ((_hd1119511215_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1119011198_)))
                                  (_tl1119611217_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1119011198_))))
                              (let* ((_bind11220_ _hd1119511215_)
                                     (_rest11222_ _tl1119611217_))
                                (_K1119411212_ _rest11222_ _bind11220_)))
                            (_else1119211206_))))))
                 (_generate-values-check11112_
                  (lambda (_check11180_ _body11181_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body11181_ '())
                                  (reverse _check11180_))))))
          (let* ((_g1111411131_
                  (lambda (_g1111511128_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1111511128_)))
                 (_g1111311177_
                  (lambda (_g1111511134_)
                    (if (gx#stx-pair? _g1111511134_)
                        (let ((_e1111811136_ (gx#stx-e _g1111511134_)))
                          (let ((_hd1111911139_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1111811136_)))
                                (_tl1112011141_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1111811136_))))
                            (if (gx#stx-pair? _tl1112011141_)
                                (let ((_e1112111144_
                                       (gx#stx-e _tl1112011141_)))
                                  (let ((_hd1112211147_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1112111144_)))
                                        (_tl1112311149_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1112111144_))))
                                    (if (gx#stx-pair? _tl1112311149_)
                                        (let ((_e1112411152_
                                               (gx#stx-e _tl1112311149_)))
                                          (let ((_hd1112511155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1112411152_)))
                                                (_tl1112611157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1112411152_))))
                                            (if (gx#stx-null? _tl1112611157_)
                                                ((lambda (_L11160_ _L11161_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L11161_)
                                                       (_generate-simple11107_
                                                        _L11161_
                                                        _L11160_)
                                                       (_generate-values11110_
                                                        _L11161_
                                                        _L11160_)))
                                                 _hd1112511155_
                                                 _hd1112211147_)
                                                (_g1111411131_
                                                 _g1111511134_))))
                                        (_g1111411131_ _g1111511134_))))
                                (_g1111411131_ _g1111511134_))))
                        (_g1111411131_ _g1111511134_)))))
            (_g1111311177_ _stx11104_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_stx11823_)
        (let ((_compiled-body?11825_ '#f))
          (gxc#generate-runtime-let-values%__%
           _stx11823_
           _compiled-body?11825_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g16701_
        (let ((_g16700_ (let () (declare (not safe)) (##length _g16701_))))
          (cond ((let () (declare (not safe)) (##fx= _g16700_ 1))
                 (apply gxc#generate-runtime-let-values%__0 _g16701_))
                ((let () (declare (not safe)) (##fx= _g16700_ 2))
                 (apply gxc#generate-runtime-let-values%__% _g16701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g16701_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals10998_ _hd10999_)
        (let _lp11001_ ((_rest11003_ _hd10999_) (_k11004_ '0) (_r11005_ '()))
          (let* ((___stx1607516076_ _rest11003_)
                 (_g1101011027_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx1607516076_))))
            (let ((___kont1607716078_
                   (lambda (_L11090_)
                     (_lp11001_ _L11090_ (fx+ _k11004_ '1) _r11005_)))
                  (___kont1607916080_
                   (lambda (_L11063_ _L11064_)
                     (_lp11001_
                      _L11063_
                      (fx+ _k11004_ '1)
                      (cons (cons (gxc#generate-runtime-binding-id _L11064_)
                                  (cons (gxc#generate-runtime-values-ref
                                         _vals10998_
                                         _k11004_
                                         _L11063_)
                                        '()))
                            _r11005_))))
                  (___kont1608116082_
                   (lambda (_L11039_)
                     (foldl1 cons
                             (cons (cons (gxc#generate-runtime-binding-id
                                          _L11039_)
                                         (cons (gxc#generate-runtime-values->list
                                                _vals10998_
                                                _k11004_)
                                               '()))
                                   '())
                             _r11005_)))
                  (___kont1608316084_ (lambda () (reverse _r11005_))))
              (let ((_g1100811050_
                     (lambda ()
                       (let ((_L11039_ ___stx1607516076_))
                         (if (gx#identifier? _L11039_)
                             (___kont1608116082_ _L11039_)
                             (___kont1608316084_))))))
                (if (gx#stx-pair? ___stx1607516076_)
                    (let ((_e1101311079_ (gx#stx-e ___stx1607516076_)))
                      (let ((_tl1101511084_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1101311079_)))
                            (_hd1101411082_
                             (let ()
                               (declare (not safe))
                               (##car _e1101311079_))))
                        (if (gx#stx-datum? _hd1101411082_)
                            (let ((_e1101611087_ (gx#stx-e _hd1101411082_)))
                              (if (equal? _e1101611087_ '#f)
                                  (___kont1607716078_ _tl1101511084_)
                                  (___kont1607916080_
                                   _tl1101511084_
                                   _hd1101411082_)))
                            (___kont1607916080_
                             _tl1101511084_
                             _hd1101411082_))))
                    (_g1100811050_))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx10680_ _compiled-body?10681_)
        (letrec ((_generate-simple10683_
                  (lambda (_hd10985_ _body10986_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd10985_
                     _body10986_
                     _compiled-body?10681_)))
                 (_generate-values10684_
                  (lambda (_hd10764_ _body10765_)
                    (let _lp10767_ ((_rest10769_ _hd10764_)
                                    (_bind10770_ '())
                                    (_check10771_ '())
                                    (_post10772_ '()))
                      (let* ((___stx1614916150_ _rest10769_)
                             (_g1077510786_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1614916150_))))
                        (let ((___kont1615116152_
                               (lambda (_L10813_ _L10814_)
                                 (let* ((___stx1610516106_ _L10814_)
                                        (_g1082910854_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1610516106_))))
                                   (let ((___kont1610716108_
                                          (lambda (_L10961_ _L10962_)
                                            (let ((_eid10976_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L10962_))
                                                  (_expr10977_
                                                   (gxc#compile-e _L10961_)))
                                              (_lp10767_
                                               _L10813_
                                               (cons (cons _eid10976_
                                                           (cons _expr10977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind10770_)
                                               _check10771_
                                               _post10772_))))
                                         (___kont1610916110_
                                          (lambda (_L10875_ _L10876_)
                                            (let* ((_vals10889_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values10891_
                                                    (gxc#generate-runtime-check-values
                                                     _vals10889_
                                                     _L10876_
                                                     _L10875_))
                                                   (_refs10893_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals10889_
                                                     _L10876_))
                                                   (_expr10895_
                                                    (gxc#compile-e _L10875_)))
                                              (_lp10767_
                                               _L10813_
                                               (foldl1 cons
                                                       (cons (cons _vals10889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr10895_ '()))
                     _bind10770_)
               (map (lambda (_e1089710899_)
                      (let* ((_g1090110910_ _e1089710899_)
                             (_E1090310914_
                              (lambda ()
                                (error '"No clause matching" _g1090110910_)))
                             (_K1090410919_
                              (lambda (_eid10917_)
                                (cons _eid10917_ (cons '#!void '())))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _g1090110910_))
                            (let ((_hd1090510922_
                                   (let ()
                                     (declare (not safe))
                                     (##car _g1090110910_)))
                                  (_tl1090610924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _g1090110910_))))
                              (let ((_eid10927_ _hd1090510922_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl1090610924_))
                                    (let ((_tl1090810929_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl1090610924_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1090810929_))
                                          (_K1090410919_ _eid10927_)
                                          (_E1090310914_)))
                                    (_E1090310914_))))
                            (_E1090310914_))))
                    _refs10893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values10891_
                                                     _check10771_)
                                               (foldl1 cons
                                                       _refs10893_
                                                       _post10772_))))))
                                     (if (gx#stx-pair? ___stx1610516106_)
                                         (let ((_e1083310937_
                                                (gx#stx-e ___stx1610516106_)))
                                           (let ((_tl1083510942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1083310937_)))
                                                 (_hd1083410940_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1083310937_))))
                                             (if (gx#stx-pair? _hd1083410940_)
                                                 (let ((_e1083610945_
                                                        (gx#stx-e
                                                         _hd1083410940_)))
                                                   (let ((_tl1083810950_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1083610945_)))
                                                         (_hd1083710948_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1083610945_))))
                                                     (if (gx#stx-null?
                                                          _tl1083810950_)
                                                         (if (gx#stx-pair?
                                                              _tl1083510942_)
                                                             (let ((_e1083910953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1083510942_)))
                       (let ((_tl1084110958_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1083910953_)))
                             (_hd1084010956_
                              (let ()
                                (declare (not safe))
                                (##car _e1083910953_))))
                         (if (gx#stx-null? _tl1084110958_)
                             (___kont1610716108_ _hd1084010956_ _hd1083710948_)
                             (_g1082910854_))))
                     (_g1082910854_))
                 (if (gx#stx-pair? _tl1083510942_)
                     (let ((_e1084710867_ (gx#stx-e _tl1083510942_)))
                       (let ((_tl1084910872_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1084710867_)))
                             (_hd1084810870_
                              (let ()
                                (declare (not safe))
                                (##car _e1084710867_))))
                         (if (gx#stx-null? _tl1084910872_)
                             (___kont1610916110_ _hd1084810870_ _hd1083410940_)
                             (_g1082910854_))))
                     (_g1082910854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1083510942_)
                                                     (let ((_e1084710867_
                                                            (gx#stx-e
                                                             _tl1083510942_)))
                                                       (let ((_tl1084910872_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1084710867_)))
                     (_hd1084810870_
                      (let () (declare (not safe)) (##car _e1084710867_))))
                 (if (gx#stx-null? _tl1084910872_)
                     (___kont1610916110_ _hd1084810870_ _hd1083410940_)
                     (_g1082910854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1082910854_)))))
                                         (_g1082910854_))))))
                              (___kont1615316154_
                               (lambda ()
                                 (let* ((_body10793_
                                         (if _compiled-body?10681_
                                             _body10765_
                                             (gxc#compile-e _body10765_)))
                                        (_body10795_
                                         (_generate-values-post10686_
                                          _post10772_
                                          _body10793_))
                                        (_body10797_
                                         (_generate-values-check10685_
                                          _check10771_
                                          _body10795_)))
                                   (cons 'letrec
                                         (cons (reverse _bind10770_)
                                               (cons _body10797_ '())))))))
                          (if (gx#stx-pair? ___stx1614916150_)
                              (let ((_e1077910805_
                                     (gx#stx-e ___stx1614916150_)))
                                (let ((_tl1078110810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1077910805_)))
                                      (_hd1078010808_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1077910805_))))
                                  (___kont1615116152_
                                   _tl1078110810_
                                   _hd1078010808_)))
                              (___kont1615316154_)))))))
                 (_generate-values-check10685_
                  (lambda (_check10761_ _body10762_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10762_ '())
                                  (reverse _check10761_)))))
                 (_generate-values-post10686_
                  (lambda (_post10754_ _body10755_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body10755_ '())
                                  (map (lambda (_g1075610758_)
                                         (cons 'set! _g1075610758_))
                                       (reverse _post10754_)))))))
          (let* ((_g1068810705_
                  (lambda (_g1068910702_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1068910702_)))
                 (_g1068710751_
                  (lambda (_g1068910708_)
                    (if (gx#stx-pair? _g1068910708_)
                        (let ((_e1069210710_ (gx#stx-e _g1068910708_)))
                          (let ((_hd1069310713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1069210710_)))
                                (_tl1069410715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1069210710_))))
                            (if (gx#stx-pair? _tl1069410715_)
                                (let ((_e1069510718_
                                       (gx#stx-e _tl1069410715_)))
                                  (let ((_hd1069610721_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1069510718_)))
                                        (_tl1069710723_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1069510718_))))
                                    (if (gx#stx-pair? _tl1069710723_)
                                        (let ((_e1069810726_
                                               (gx#stx-e _tl1069710723_)))
                                          (let ((_hd1069910729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1069810726_)))
                                                (_tl1070010731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1069810726_))))
                                            (if (gx#stx-null? _tl1070010731_)
                                                ((lambda (_L10734_ _L10735_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10735_)
                                                       (_generate-simple10683_
                                                        _L10735_
                                                        _L10734_)
                                                       (_generate-values10684_
                                                        _L10735_
                                                        _L10734_)))
                                                 _hd1069910729_
                                                 _hd1069610721_)
                                                (_g1068810705_
                                                 _g1068910708_))))
                                        (_g1068810705_ _g1068910708_))))
                                (_g1068810705_ _g1068910708_))))
                        (_g1068810705_ _g1068910708_)))))
            (_g1068710751_ _stx10680_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_stx10991_)
        (let ((_compiled-body?10993_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _stx10991_
           _compiled-body?10993_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g16703_
        (let ((_g16702_ (let () (declare (not safe)) (##length _g16703_))))
          (cond ((let () (declare (not safe)) (##fx= _g16702_ 1))
                 (apply gxc#generate-runtime-letrec-values%__0 _g16703_))
                ((let () (declare (not safe)) (##fx= _g16702_ 2))
                 (apply gxc#generate-runtime-letrec-values%__% _g16703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g16703_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_stx10262_)
        (letrec ((_generate-values10264_
                  (lambda (_hd10507_ _body10508_)
                    (let _lp10510_ ((_rest10512_ _hd10507_) (_bind10513_ '()))
                      (let* ((_rest1051410522_ _rest10512_)
                             (_else1051610533_
                              (lambda ()
                                (let ((_bind10530_ (reverse _bind10513_))
                                      (_body10531_
                                       (gxc#compile-e _body10508_)))
                                  (cons 'letrec*
                                        (cons _bind10530_
                                              (cons _body10531_ '()))))))
                             (_K1051810667_
                              (lambda (_rest10536_ _hd-bind10537_)
                                (let* ((___stx1616316164_ _hd-bind10537_)
                                       (_g1054010565_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1616316164_))))
                                  (let ((___kont1616516166_
                                         (lambda (_L10646_ _L10647_)
                                           (let ((_eid10661_
                                                  (gxc#generate-runtime-binding-id*
                                                   _L10647_))
                                                 (_expr10662_
                                                  (gxc#compile-e _L10646_)))
                                             (_lp10510_
                                              _rest10536_
                                              (cons (cons _eid10661_
                                                          (cons _expr10662_
                                                                '()))
                                                    _bind10513_)))))
                                        (___kont1616716168_
                                         (lambda (_L10586_ _L10587_)
                                           (let* ((_vals10606_
                                                   (gxc#generate-runtime-temporary__0))
                                                  (_tmp10608_
                                                   (gxc#generate-runtime-temporary__0))
                                                  (_check-values10610_
                                                   (gxc#generate-runtime-check-values
                                                    _tmp10608_
                                                    _L10587_
                                                    _L10586_))
                                                  (_refs10612_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _vals10606_
                                                    _L10587_))
                                                  (_expr10614_
                                                   (gxc#compile-e _L10586_)))
                                             (_lp10510_
                                              _rest10536_
                                              (foldl1 cons
                                                      (cons (cons _vals10606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons 'let
                                      (cons (cons (cons _tmp10608_
                                                        (cons _expr10614_ '()))
                                                  '())
                                            (cons _check-values10610_
                                                  (cons _tmp10608_ '()))))
                                '()))
                    _bind10513_)
              _refs10612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (gx#stx-pair? ___stx1616316164_)
                                        (let ((_e1054410622_
                                               (gx#stx-e ___stx1616316164_)))
                                          (let ((_tl1054610627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1054410622_)))
                                                (_hd1054510625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1054410622_))))
                                            (if (gx#stx-pair? _hd1054510625_)
                                                (let ((_e1054710630_
                                                       (gx#stx-e
                                                        _hd1054510625_)))
                                                  (let ((_tl1054910635_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1054710630_)))
                                                        (_hd1054810633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1054710630_))))
                                                    (if (gx#stx-null?
                                                         _tl1054910635_)
                                                        (if (gx#stx-pair?
                                                             _tl1054610627_)
                                                            (let ((_e1055010638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1054610627_)))
                      (let ((_tl1055210643_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1055010638_)))
                            (_hd1055110641_
                             (let ()
                               (declare (not safe))
                               (##car _e1055010638_))))
                        (if (gx#stx-null? _tl1055210643_)
                            (___kont1616516166_ _hd1055110641_ _hd1054810633_)
                            (_g1054010565_))))
                    (_g1054010565_))
                (if (gx#stx-pair? _tl1054610627_)
                    (let ((_e1055810578_ (gx#stx-e _tl1054610627_)))
                      (let ((_tl1056010583_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1055810578_)))
                            (_hd1055910581_
                             (let ()
                               (declare (not safe))
                               (##car _e1055810578_))))
                        (if (gx#stx-null? _tl1056010583_)
                            (___kont1616716168_ _hd1055910581_ _hd1054510625_)
                            (_g1054010565_))))
                    (_g1054010565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _tl1054610627_)
                                                    (let ((_e1055810578_
                                                           (gx#stx-e
                                                            _tl1054610627_)))
                                                      (let ((_tl1056010583_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1055810578_)))
                    (_hd1055910581_
                     (let () (declare (not safe)) (##car _e1055810578_))))
                (if (gx#stx-null? _tl1056010583_)
                    (___kont1616716168_ _hd1055910581_ _hd1054510625_)
                    (_g1054010565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1054010565_)))))
                                        (_g1054010565_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1051410522_))
                            (let ((_hd1051910670_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1051410522_)))
                                  (_tl1052010672_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1051410522_))))
                              (let* ((_hd-bind10675_ _hd1051910670_)
                                     (_rest10677_ _tl1052010672_))
                                (_K1051810667_ _rest10677_ _hd-bind10675_)))
                            (_else1051610533_))))))
                 (_generate-letrec?10265_
                  (lambda (_hd10397_)
                    (let _lp10399_ ((_rest10401_ _hd10397_))
                      (let* ((_rest1040210410_ _rest10401_)
                             (_else1040410418_ (lambda () '#t))
                             (_K1040610495_
                              (lambda (_rest10421_ _hd-bind10422_)
                                (let* ((_g1042410441_
                                        (lambda (_g1042510438_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1042510438_)))
                                       (_g1042310492_
                                        (lambda (_g1042510444_)
                                          (if (gx#stx-pair? _g1042510444_)
                                              (let ((_e1042810446_
                                                     (gx#stx-e _g1042510444_)))
                                                (let ((_hd1042910449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1042810446_)))
                                                      (_tl1043010451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1042810446_))))
                                                  (if (gx#stx-pair?
                                                       _hd1042910449_)
                                                      (let ((_e1043110454_
                                                             (gx#stx-e
                                                              _hd1042910449_)))
                                                        (let ((_hd1043210457_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1043110454_)))
                      (_tl1043310459_
                       (let () (declare (not safe)) (##cdr _e1043110454_))))
                  (if (gx#stx-null? _tl1043310459_)
                      (if (gx#stx-pair? _tl1043010451_)
                          (let ((_e1043410462_ (gx#stx-e _tl1043010451_)))
                            (let ((_hd1043510465_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1043410462_)))
                                  (_tl1043610467_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1043410462_))))
                              (if (gx#stx-null? _tl1043610467_)
                                  ((lambda (_L10470_ _L10471_)
                                     (if (_is-lambda-expr?10266_ _L10470_)
                                         (_lp10399_ _rest10421_)
                                         '#f))
                                   _hd1043510465_
                                   _hd1043210457_)
                                  (_g1042410441_ _g1042510444_))))
                          (_g1042410441_ _g1042510444_))
                      (_g1042410441_ _g1042510444_))))
              (_g1042410441_ _g1042510444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1042410441_ _g1042510444_)))))
                                  (_g1042310492_ _hd-bind10422_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1040210410_))
                            (let ((_hd1040710498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1040210410_)))
                                  (_tl1040810500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1040210410_))))
                              (let* ((_hd-bind10503_ _hd1040710498_)
                                     (_rest10505_ _tl1040810500_))
                                (_K1040610495_ _rest10505_ _hd-bind10503_)))
                            (_else1040410418_))))))
                 (_is-lambda-expr?10266_
                  (lambda (_expr10334_)
                    (let* ((___stx1620716208_ _expr10334_)
                           (_g1033710351_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1620716208_))))
                      (let ((___kont1620916210_
                             (lambda (_L10379_ _L10380_) '#t))
                            (___kont1621116212_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx1620716208_)
                            (let ((_e1034110363_ (gx#stx-e ___stx1620716208_)))
                              (let ((_tl1034310368_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1034110363_)))
                                    (_hd1034210366_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1034110363_))))
                                (if (gx#identifier? _hd1034210366_)
                                    (if (gx#stx-eq? '%#lambda _hd1034210366_)
                                        (if (gx#stx-pair? _tl1034310368_)
                                            (let ((_e1034410371_
                                                   (gx#stx-e _tl1034310368_)))
                                              (let ((_tl1034610376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1034410371_)))
                                                    (_hd1034510374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1034410371_))))
                                                (___kont1620916210_
                                                 _tl1034610376_
                                                 _hd1034510374_)))
                                            (___kont1621116212_))
                                        (___kont1621116212_))
                                    (___kont1621116212_))))
                            (___kont1621116212_)))))))
          (let* ((_g1026810285_
                  (lambda (_g1026910282_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1026910282_)))
                 (_g1026710331_
                  (lambda (_g1026910288_)
                    (if (gx#stx-pair? _g1026910288_)
                        (let ((_e1027210290_ (gx#stx-e _g1026910288_)))
                          (let ((_hd1027310293_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1027210290_)))
                                (_tl1027410295_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1027210290_))))
                            (if (gx#stx-pair? _tl1027410295_)
                                (let ((_e1027510298_
                                       (gx#stx-e _tl1027410295_)))
                                  (let ((_hd1027610301_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1027510298_)))
                                        (_tl1027710303_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1027510298_))))
                                    (if (gx#stx-pair? _tl1027710303_)
                                        (let ((_e1027810306_
                                               (gx#stx-e _tl1027710303_)))
                                          (let ((_hd1027910309_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1027810306_)))
                                                (_tl1028010311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1027810306_))))
                                            (if (gx#stx-null? _tl1028010311_)
                                                ((lambda (_L10314_ _L10315_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L10315_)
                                                       (if (_generate-letrec?10265_
                                                            _L10315_)
                                                           (gxc#generate-runtime-simple-let
                                                            'letrec
                                                            _L10315_
                                                            _L10314_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            'letrec*
                                                            _L10315_
                                                            _L10314_
                                                            '#f))
                                                       (_generate-values10264_
                                                        _L10315_
                                                        _L10314_)))
                                                 _hd1027910309_
                                                 _hd1027610301_)
                                                (_g1026810285_
                                                 _g1026910288_))))
                                        (_g1026810285_ _g1026910288_))))
                                (_g1026810285_ _g1026910288_))))
                        (_g1026810285_ _g1026910288_)))))
            (_g1026710331_ _stx10262_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd10199_)
        (let _lp10201_ ((_rest10203_ _hd10199_))
          (let* ((_rest1020410220_ _rest10203_)
                 (_else1020710228_ (lambda () '#f)))
            (let ((_K1021010241_
                   (lambda (_rest10239_) (_lp10201_ _rest10239_)))
                  (_K1020910233_ (lambda () '#t)))
              (let ((_try-match1020610236_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest1020410220_))
                           (_K1020910233_)
                           (_else1020710228_)))))
                (if (let () (declare (not safe)) (##pair? _rest1020410220_))
                    (let ((_tl1021210246_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest1020410220_)))
                          (_hd1021110244_
                           (let ()
                             (declare (not safe))
                             (##car _rest1020410220_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd1021110244_))
                          (let ((_tl1021410251_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd1021110244_)))
                                (_hd1021310249_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd1021110244_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1021310249_))
                                (let ((_tl1021810254_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1021310249_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl1021810254_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1021410251_))
                                          (let ((_tl1021610257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1021410251_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl1021610257_))
                                                (let ((_rest10260_
                                                       _tl1021210246_))
                                                  (_lp10201_ _rest10260_))
                                                (_else1020710228_)))
                                          (_else1020710228_))
                                      (_else1020710228_)))
                                (_else1020710228_)))
                          (_else1020710228_)))
                    (_try-match1020610236_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_form10111_ _hd10112_ _body10113_ _compiled-body?10114_)
        (letrec ((_generate110116_
                  (lambda (_bind10155_)
                    (let* ((_bind1015610167_ _bind10155_)
                           (_E1015810171_
                            (lambda ()
                              (error '"No clause matching" _bind1015610167_)))
                           (_K1015910177_
                            (lambda (_expr10174_ _id10175_)
                              (cons (gxc#generate-runtime-binding-id*
                                     _id10175_)
                                    (cons (gxc#compile-e _expr10174_) '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind1015610167_))
                          (let ((_hd1016010180_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind1015610167_)))
                                (_tl1016110182_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind1015610167_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd1016010180_))
                                (let ((_hd1016410185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd1016010180_)))
                                      (_tl1016510187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd1016010180_))))
                                  (let ((_id10190_ _hd1016410185_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl1016510187_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl1016110182_))
                                            (let ((_hd1016210192_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl1016110182_)))
                                                  (_tl1016310194_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl1016110182_))))
                                              (let ((_expr10197_
                                                     _hd1016210192_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl1016310194_))
                                                    (_K1015910177_
                                                     _expr10197_
                                                     _id10190_)
                                                    (_E1015810171_))))
                                            (_E1015810171_))
                                        (_E1015810171_))))
                                (_E1015810171_)))
                          (_E1015810171_))))))
          (let* ((_bind10118_ (map _generate110116_ _hd10112_))
                 (_body10120_
                  (if _compiled-body?10114_
                      _body10113_
                      (gxc#compile-e _body10113_)))
                 (_body10152_
                  (let* ((_body1012110129_ _body10120_)
                         (_else1012310137_ (lambda () (cons _body10120_ '())))
                         (_K1012510142_ (lambda (_exprs10140_) _exprs10140_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body1012110129_))
                        (let ((_hd1012610145_
                               (let ()
                                 (declare (not safe))
                                 (##car _body1012110129_)))
                              (_tl1012710147_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body1012110129_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd1012610145_ 'begin))
                              (let ((_exprs10150_ _tl1012710147_))
                                (_K1012510142_ _exprs10150_))
                              (_else1012310137_)))
                        (_else1012310137_)))))
            (cons _form10111_ (cons _bind10118_ _body10152_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_stx10019_)
        (letrec ((_generate110021_
                  (lambda (_datum10073_)
                    (if (or (null? _datum10073_)
                            (interned-symbol? _datum10073_)
                            (gx#self-quoting? _datum10073_)
                            (eof-object? _datum10073_))
                        _datum10073_
                        (if (uninterned-symbol? _datum10073_)
                            (gxc#generate-runtime-gensym-reference__%
                             _datum10073_
                             '#t)
                            (if (pair? _datum10073_)
                                (cons (_generate110021_ (car _datum10073_))
                                      (_generate110021_ (cdr _datum10073_)))
                                (if (box? _datum10073_)
                                    (box (_generate110021_
                                          (unbox _datum10073_)))
                                    (if (vector? _datum10073_)
                                        (vector-map
                                         _generate110021_
                                         _datum10073_)
                                        (if (or (s8vector? _datum10073_)
                                                (u8vector? _datum10073_)
                                                (s16vector? _datum10073_)
                                                (u16vector? _datum10073_)
                                                (s32vector? _datum10073_)
                                                (u32vector? _datum10073_)
                                                (s64vector? _datum10073_)
                                                (u64vector? _datum10073_)
                                                (f32vector? _datum10073_)
                                                (f64vector? _datum10073_))
                                            _datum10073_
                                            (gxc#raise-compile-error
                                             '"Cannot compile non-primitive quote"
                                             _stx10019_))))))))))
          (let* ((_g1002310036_
                  (lambda (_g1002410033_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1002410033_)))
                 (_g1002210070_
                  (lambda (_g1002410039_)
                    (if (gx#stx-pair? _g1002410039_)
                        (let ((_e1002610041_ (gx#stx-e _g1002410039_)))
                          (let ((_hd1002710044_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1002610041_)))
                                (_tl1002810046_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1002610041_))))
                            (if (gx#stx-pair? _tl1002810046_)
                                (let ((_e1002910049_
                                       (gx#stx-e _tl1002810046_)))
                                  (let ((_hd1003010052_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1002910049_)))
                                        (_tl1003110054_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1002910049_))))
                                    (if (gx#stx-null? _tl1003110054_)
                                        ((lambda (_L10057_)
                                           (cons 'quote
                                                 (cons (_generate110021_
                                                        (gx#stx-e _L10057_))
                                                       '())))
                                         _hd1003010052_)
                                        (_g1002310036_ _g1002410039_))))
                                (_g1002310036_ _g1002410039_))))
                        (_g1002310036_ _g1002410039_)))))
            (_g1002210070_ _stx10019_)))))
    (define gxc#generate-runtime-call%
      (lambda (_stx9537_)
        (letrec ((_compile-call9539_
                  (lambda (_rator9763_ _rands9764_)
                    (let ((_rator9766_ (gxc#compile-e _rator9763_))
                          (_rands9767_ (map gxc#compile-e _rands9764_)))
                      (let* ((___stx1625416255_ _rator9766_)
                             (_g97709822_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1625416255_))))
                        (let ((___kont1625616257_
                               (lambda (_L9946_ _L9947_ _L9948_ _L9949_)
                                 (if (fx= (length _rands9767_)
                                          (length (foldr1 (lambda (_g99859988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g99869990_)
                    (cons _g99859988_ _g99869990_))
                  '()
                  _L9948_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_id9993_ _L9949_)
                                            (_args10002_
                                             (foldr1 (lambda (_g99949997_
                                                              _g99959999_)
                                                       (cons _g99949997_
                                                             _g99959999_))
                                                     '()
                                                     _L9948_))
                                            (_body10011_
                                             (foldr1 (lambda (_g1000310006_
                                                              _g1000410008_)
                                                       (cons _g1000310006_
                                                             _g1000410008_))
                                                     '()
                                                     _L9947_))
                                            (_init10013_
                                             (map list
                                                  _args10002_
                                                  _rands9767_)))
                                       (cons 'let
                                             (cons _id9993_
                                                   (cons _init10013_
                                                         _body10011_))))
                                     (gxc#raise-compile-error
                                      '"Illegal loop application; arity mismatch"
                                      _stx9537_))))
                              (___kont1626216263_
                               (lambda () (cons _rator9766_ _rands9767_))))
                          (let ((___match1632116322_
                                 (lambda (_e97769834_
                                          _hd97779837_
                                          _tl97789839_
                                          _e97799842_
                                          _hd97809845_
                                          _tl97819847_
                                          _e97829850_
                                          _hd97839853_
                                          _tl97849855_
                                          _e97859858_
                                          _hd97869861_
                                          _tl97879863_
                                          _e97889866_
                                          _hd97899869_
                                          _tl97909871_
                                          _e97919874_
                                          _hd97929877_
                                          _tl97939879_
                                          _e97949882_
                                          _hd97959885_
                                          _tl97969887_
                                          ___splice1625816259_
                                          _target97979890_
                                          _tl97999892_)
                                   (letrec ((_loop98009895_
                                             (lambda (_hd97989898_
                                                      _arg98049900_)
                                               (if (gx#stx-pair? _hd97989898_)
                                                   (let ((_e98019903_
                                                          (gx#stx-e
                                                           _hd97989898_)))
                                                     (let ((_lp-tl98039908_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e98019903_)))
                                                           (_lp-hd98029906_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e98019903_))))
                                                       (_loop98009895_
                                                        _lp-tl98039908_
                                                        (cons _lp-hd98029906_
                                                              _arg98049900_))))
                                                   (let ((_arg98059911_
                                                          (reverse _arg98049900_)))
                                                     (if (gx#stx-pair/null?
                                                          _tl97969887_)
                                                         (let ((___splice1626016261_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97969887_
                         '0)))
                   (let ((_tl98089916_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1626016261_ '1)))
                         (_target98069914_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice1626016261_ '0))))
                     (if (gx#stx-null? _tl98089916_)
                         (letrec ((_loop98099919_
                                   (lambda (_hd98079922_ _body98139924_)
                                     (if (gx#stx-pair? _hd98079922_)
                                         (let ((_e98109927_
                                                (gx#stx-e _hd98079922_)))
                                           (let ((_lp-tl98129932_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e98109927_)))
                                                 (_lp-hd98119930_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e98109927_))))
                                             (_loop98099919_
                                              _lp-tl98129932_
                                              (cons _lp-hd98119930_
                                                    _body98139924_))))
                                         (let ((_body98149935_
                                                (reverse _body98139924_)))
                                           (if (gx#stx-null? _tl97909871_)
                                               (if (gx#stx-null? _tl97849855_)
                                                   (if (gx#stx-pair?
                                                        _tl97819847_)
                                                       (let ((_e98159938_
                                                              (gx#stx-e
                                                               _tl97819847_)))
                                                         (let ((_tl98179943_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e98159938_)))
                       (_hd98169941_
                        (let () (declare (not safe)) (##car _e98159938_))))
                   (if (gx#stx-null? _tl98179943_)
                       (let ((_L9946_ _hd98169941_)
                             (_L9947_ _body98149935_)
                             (_L9948_ _arg98059911_)
                             (_L9949_ _hd97869861_))
                         (if (eq? _L9949_ _L9946_)
                             (___kont1625616257_
                              _L9946_
                              _L9947_
                              _L9948_
                              _L9949_)
                             (___kont1626216263_)))
                       (___kont1626216263_))))
               (___kont1626216263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1626216263_))
                                               (___kont1626216263_)))))))
                           (_loop98099919_ _target98069914_ '()))
                         (___kont1626216263_))))
                 (___kont1626216263_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop98009895_ _target97979890_ '())))))
                            (if (gx#stx-pair? ___stx1625416255_)
                                (let ((_e97769834_
                                       (gx#stx-e ___stx1625416255_)))
                                  (let ((_tl97789839_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e97769834_)))
                                        (_hd97779837_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e97769834_))))
                                    (if (gx#identifier? _hd97779837_)
                                        (if (gx#stx-eq? 'letrec _hd97779837_)
                                            (if (gx#stx-pair? _tl97789839_)
                                                (let ((_e97799842_
                                                       (gx#stx-e
                                                        _tl97789839_)))
                                                  (let ((_tl97819847_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e97799842_)))
                                                        (_hd97809845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e97799842_))))
                                                    (if (gx#stx-pair?
                                                         _hd97809845_)
                                                        (let ((_e97829850_
                                                               (gx#stx-e
                                                                _hd97809845_)))
                                                          (let ((_tl97849855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e97829850_)))
                        (_hd97839853_
                         (let () (declare (not safe)) (##car _e97829850_))))
                    (if (gx#stx-pair? _hd97839853_)
                        (let ((_e97859858_ (gx#stx-e _hd97839853_)))
                          (let ((_tl97879863_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e97859858_)))
                                (_hd97869861_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e97859858_))))
                            (if (gx#stx-pair? _tl97879863_)
                                (let ((_e97889866_ (gx#stx-e _tl97879863_)))
                                  (let ((_tl97909871_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e97889866_)))
                                        (_hd97899869_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e97889866_))))
                                    (if (gx#stx-pair? _hd97899869_)
                                        (let ((_e97919874_
                                               (gx#stx-e _hd97899869_)))
                                          (let ((_tl97939879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e97919874_)))
                                                (_hd97929877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e97919874_))))
                                            (if (gx#identifier? _hd97929877_)
                                                (if (gx#stx-eq?
                                                     'lambda
                                                     _hd97929877_)
                                                    (if (gx#stx-pair?
                                                         _tl97939879_)
                                                        (let ((_e97949882_
                                                               (gx#stx-e
                                                                _tl97939879_)))
                                                          (let ((_tl97969887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e97949882_)))
                        (_hd97959885_
                         (let () (declare (not safe)) (##car _e97949882_))))
                    (if (gx#stx-pair/null? _hd97959885_)
                        (let ((___splice1625816259_
                               (gx#syntax-split-splice _hd97959885_ '0)))
                          (let ((_tl97999892_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1625816259_ '1)))
                                (_target97979890_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice1625816259_ '0))))
                            (if (gx#stx-null? _tl97999892_)
                                (___match1632116322_
                                 _e97769834_
                                 _hd97779837_
                                 _tl97789839_
                                 _e97799842_
                                 _hd97809845_
                                 _tl97819847_
                                 _e97829850_
                                 _hd97839853_
                                 _tl97849855_
                                 _e97859858_
                                 _hd97869861_
                                 _tl97879863_
                                 _e97889866_
                                 _hd97899869_
                                 _tl97909871_
                                 _e97919874_
                                 _hd97929877_
                                 _tl97939879_
                                 _e97949882_
                                 _hd97959885_
                                 _tl97969887_
                                 ___splice1625816259_
                                 _target97979890_
                                 _tl97999892_)
                                (___kont1626216263_))))
                        (___kont1626216263_))))
                (___kont1626216263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1626216263_))
                                                (___kont1626216263_))))
                                        (___kont1626216263_))))
                                (___kont1626216263_))))
                        (___kont1626216263_))))
                (___kont1626216263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1626216263_))
                                            (___kont1626216263_))
                                        (___kont1626216263_))))
                                (___kont1626216263_)))))))))
          (let* ((_g95419555_
                  (lambda (_g95429552_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g95429552_)))
                 (_g95409760_
                  (lambda (_g95429558_)
                    (if (gx#stx-pair? _g95429558_)
                        (let ((_e95459560_ (gx#stx-e _g95429558_)))
                          (let ((_hd95469563_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e95459560_)))
                                (_tl95479565_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e95459560_))))
                            (if (gx#stx-pair? _tl95479565_)
                                (let ((_e95489568_ (gx#stx-e _tl95479565_)))
                                  (let ((_hd95499571_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e95489568_)))
                                        (_tl95509573_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e95489568_))))
                                    ((lambda (_L9576_ _L9577_)
                                       (if (gxc#current-compile-decls-unsafe?)
                                           (_compile-call9539_ _L9577_ _L9576_)
                                           (let* ((___stx1637016371_ _L9577_)
                                                  (_g95929604_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      ___stx1637016371_))))
                                             (let ((___kont1637216373_
                                                    (lambda ()
                                                      (let ((_f9634_ (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L9577_)))
                (if (string-prefix? '"##" (symbol->string _f9634_))
                    (let _lp9636_ ((_rest9639_ (reverse _L9576_))
                                   (_bind9641_ '())
                                   (_args9642_ '()))
                      (let* ((_rest96439651_ _rest9639_)
                             (_else96459659_
                              (lambda ()
                                (cons 'let
                                      (cons _bind9641_
                                            (cons '(declare (not safe))
                                                  (cons (cons _f9634_
                                                              _args9642_)
                                                        '()))))))
                             (_K96479745_
                              (lambda (_rest9662_ _e9663_)
                                (let* ((___stx1632416325_ _e9663_)
                                       (_g96689686_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           ___stx1632416325_))))
                                  (let ((___kont1632616327_
                                         (lambda ()
                                           (_lp9636_
                                            _rest9662_
                                            _bind9641_
                                            (cons (gxc#compile-e _e9663_)
                                                  _args9642_))))
                                        (___kont1632816329_
                                         (lambda ()
                                           (_lp9636_
                                            _rest9662_
                                            _bind9641_
                                            (cons (gxc#compile-e _e9663_)
                                                  _args9642_))))
                                        (___kont1633016331_
                                         (lambda ()
                                           (let ((_tmp9693_
                                                  (make-symbol
                                                   (gensym '__tmp))))
                                             (_lp9636_
                                              _rest9662_
                                              (cons (cons _tmp9693_
                                                          (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e9663_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _bind9641_)
                                              (cons _tmp9693_ _args9642_))))))
                                    (if (gx#stx-pair? ___stx1632416325_)
                                        (let ((_e96709724_
                                               (gx#stx-e ___stx1632416325_)))
                                          (let ((_tl96729729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e96709724_)))
                                                (_hd96719727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e96709724_))))
                                            (if (gx#identifier? _hd96719727_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd96719727_)
                                                    (if (gx#stx-pair?
                                                         _tl96729729_)
                                                        (let ((_e96739732_
                                                               (gx#stx-e
                                                                _tl96729729_)))
                                                          (let ((_tl96759737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e96739732_)))
                        (_hd96749735_
                         (let () (declare (not safe)) (##car _e96739732_))))
                    (if (gx#stx-null? _tl96759737_)
                        (___kont1632616327_)
                        (___kont1633016331_))))
                (___kont1633016331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-eq?
                                                         '%#quote
                                                         _hd96719727_)
                                                        (if (gx#stx-pair?
                                                             _tl96729729_)
                                                            (let ((_e96799709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl96729729_)))
                      (let ((_tl96819714_
                             (let () (declare (not safe)) (##cdr _e96799709_)))
                            (_hd96809712_
                             (let ()
                               (declare (not safe))
                               (##car _e96799709_))))
                        (if (gx#stx-null? _tl96819714_)
                            (___kont1632816329_)
                            (___kont1633016331_))))
                    (___kont1633016331_))
                (___kont1633016331_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1633016331_))))
                                        (___kont1633016331_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest96439651_))
                            (let ((_hd96489748_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest96439651_)))
                                  (_tl96499750_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest96439651_))))
                              (let* ((_e9753_ _hd96489748_)
                                     (_rest9755_ _tl96499750_))
                                (_K96479745_ _rest9755_ _e9753_)))
                            (_else96459659_))))
                    (_compile-call9539_ _L9577_ _L9576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1637416375_
                                                    (lambda ()
                                                      (_compile-call9539_
                                                       _L9577_
                                                       _L9576_))))
                                               (if (gx#stx-pair?
                                                    ___stx1637016371_)
                                                   (let ((_e95949616_
                                                          (gx#stx-e
                                                           ___stx1637016371_)))
                                                     (let ((_tl95969621_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e95949616_)))
                                                           (_hd95959619_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e95949616_))))
                                                       (if (gx#identifier?
                                                            _hd95959619_)
                                                           (if (gx#stx-eq?
                                                                '%#ref
                                                                _hd95959619_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl95969621_)
                           (let ((_e95979624_ (gx#stx-e _tl95969621_)))
                             (let ((_tl95999629_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e95979624_)))
                                   (_hd95989627_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e95979624_))))
                               (if (gx#stx-null? _tl95999629_)
                                   (___kont1637216373_)
                                   (___kont1637416375_))))
                           (___kont1637416375_))
                       (___kont1637416375_))
                   (___kont1637416375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont1637416375_))))))
                                     _tl95509573_
                                     _hd95499571_)))
                                (_g95419555_ _g95429558_))))
                        (_g95419555_ _g95429558_)))))
            (_g95409760_ _stx9537_)))))
    (define gxc#generate-runtime-if%
      (lambda (_stx9350_)
        (letrec ((_simplify9352_
                  (lambda (_code9437_)
                    (let* ((_code94389456_ _code9437_)
                           (_else94409464_ (lambda () _code9437_))
                           (_K94429500_
                            (lambda (_expr9467_ _test9468_)
                              (let* ((_expr94699477_ _expr9467_)
                                     (_else94719485_
                                      (lambda ()
                                        (cons 'and
                                              (cons _test9468_
                                                    (cons _expr9467_ '())))))
                                     (_K94739490_
                                      (lambda (_exprs9488_)
                                        (cons 'and
                                              (cons _test9468_ _exprs9488_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr94699477_))
                                    (let ((_hd94749493_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr94699477_)))
                                          (_tl94759495_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr94699477_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd94749493_ 'and))
                                          (let ((_exprs9498_ _tl94759495_))
                                            (_K94739490_ _exprs9498_))
                                          (_else94719485_)))
                                    (_else94719485_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code94389456_))
                          (let ((_hd94439503_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code94389456_)))
                                (_tl94449505_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code94389456_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd94439503_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl94449505_))
                                    (let ((_hd94459508_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl94449505_)))
                                          (_tl94469510_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl94449505_))))
                                      (let ((_test9513_ _hd94459508_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl94469510_))
                                            (let ((_hd94479515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl94469510_)))
                                                  (_tl94489517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl94469510_))))
                                              (let ((_expr9520_ _hd94479515_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl94489517_))
                                                    (let ((_hd94499522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl94489517_)))
                                                          (_tl94509524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl94489517_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd94499522_))
                                                          (let ((_hd94519527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _hd94499522_)))
                        (_tl94529529_
                         (let () (declare (not safe)) (##cdr _hd94499522_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd94519527_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl94529529_))
                            (let ((_hd94539532_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl94529529_)))
                                  (_tl94549534_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl94529529_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd94539532_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl94549534_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl94509524_))
                                          (_K94429500_ _expr9520_ _test9513_)
                                          (_else94409464_))
                                      (_else94409464_))
                                  (_else94409464_)))
                            (_else94409464_))
                        (_else94409464_)))
                  (_else94409464_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_else94409464_))))
                                            (_else94409464_))))
                                    (_else94409464_))
                                (_else94409464_)))
                          (_else94409464_))))))
          (let* ((_g93549375_
                  (lambda (_g93559372_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g93559372_)))
                 (_g93539434_
                  (lambda (_g93559378_)
                    (if (gx#stx-pair? _g93559378_)
                        (let ((_e93599380_ (gx#stx-e _g93559378_)))
                          (let ((_hd93609383_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e93599380_)))
                                (_tl93619385_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e93599380_))))
                            (if (gx#stx-pair? _tl93619385_)
                                (let ((_e93629388_ (gx#stx-e _tl93619385_)))
                                  (let ((_hd93639391_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e93629388_)))
                                        (_tl93649393_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e93629388_))))
                                    (if (gx#stx-pair? _tl93649393_)
                                        (let ((_e93659396_
                                               (gx#stx-e _tl93649393_)))
                                          (let ((_hd93669399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e93659396_)))
                                                (_tl93679401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e93659396_))))
                                            (if (gx#stx-pair? _tl93679401_)
                                                (let ((_e93689404_
                                                       (gx#stx-e
                                                        _tl93679401_)))
                                                  (let ((_hd93699407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e93689404_)))
                                                        (_tl93709409_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e93689404_))))
                                                    (if (gx#stx-null?
                                                         _tl93709409_)
                                                        ((lambda (_L9412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9413_
                          _L9414_)
                   (if (gxc#current-compile-boolean-context)
                       (_simplify9352_
                        (cons 'if
                              (cons (gxc#compile-e _L9414_)
                                    (cons (gxc#compile-e _L9413_)
                                          (cons (gxc#compile-e _L9412_)
                                                '())))))
                       (cons 'if
                             (cons (call-with-parameters
                                    (lambda () (gxc#compile-e _L9414_))
                                    gxc#current-compile-boolean-context
                                    '#t)
                                   (cons (gxc#compile-e _L9413_)
                                         (cons (gxc#compile-e _L9412_)
                                               '()))))))
                 _hd93699407_
                 _hd93669399_
                 _hd93639391_)
                (_g93549375_ _g93559378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g93549375_ _g93559378_))))
                                        (_g93549375_ _g93559378_))))
                                (_g93549375_ _g93559378_))))
                        (_g93549375_ _g93559378_)))))
            (_g93539434_ _stx9350_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_stx9299_)
        (let* ((_g93019314_
                (lambda (_g93029311_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g93029311_)))
               (_g93009347_
                (lambda (_g93029317_)
                  (if (gx#stx-pair? _g93029317_)
                      (let ((_e93049319_ (gx#stx-e _g93029317_)))
                        (let ((_hd93059322_
                               (let ()
                                 (declare (not safe))
                                 (##car _e93049319_)))
                              (_tl93069324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e93049319_))))
                          (if (gx#stx-pair? _tl93069324_)
                              (let ((_e93079327_ (gx#stx-e _tl93069324_)))
                                (let ((_hd93089330_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e93079327_)))
                                      (_tl93099332_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e93079327_))))
                                  (if (gx#stx-null? _tl93099332_)
                                      ((lambda (_L9335_)
                                         (gxc#generate-runtime-binding-id
                                          _L9335_))
                                       _hd93089330_)
                                      (_g93019314_ _g93029317_))))
                              (_g93019314_ _g93029317_))))
                      (_g93019314_ _g93029317_)))))
          (_g93009347_ _stx9299_))))
    (define gxc#generate-runtime-setq%
      (lambda (_stx9232_)
        (let* ((_g92349251_
                (lambda (_g92359248_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g92359248_)))
               (_g92339296_
                (lambda (_g92359254_)
                  (if (gx#stx-pair? _g92359254_)
                      (let ((_e92389256_ (gx#stx-e _g92359254_)))
                        (let ((_hd92399259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e92389256_)))
                              (_tl92409261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e92389256_))))
                          (if (gx#stx-pair? _tl92409261_)
                              (let ((_e92419264_ (gx#stx-e _tl92409261_)))
                                (let ((_hd92429267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e92419264_)))
                                      (_tl92439269_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e92419264_))))
                                  (if (gx#stx-pair? _tl92439269_)
                                      (let ((_e92449272_
                                             (gx#stx-e _tl92439269_)))
                                        (let ((_hd92459275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e92449272_)))
                                              (_tl92469277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e92449272_))))
                                          (if (gx#stx-null? _tl92469277_)
                                              ((lambda (_L9280_ _L9281_)
                                                 (cons 'set!
                                                       (cons (gxc#generate-runtime-binding-id
                                                              _L9281_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9280_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd92459275_
                                               _hd92429267_)
                                              (_g92349251_ _g92359254_))))
                                      (_g92349251_ _g92359254_))))
                              (_g92349251_ _g92359254_))))
                      (_g92349251_ _g92359254_)))))
          (_g92339296_ _stx9232_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_stx9044_)
        (let* ((_g90469063_
                (lambda (_g90479060_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g90479060_)))
               (_g90459229_
                (lambda (_g90479066_)
                  (if (gx#stx-pair? _g90479066_)
                      (let ((_e90509068_ (gx#stx-e _g90479066_)))
                        (let ((_hd90519071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e90509068_)))
                              (_tl90529073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e90509068_))))
                          (if (gx#stx-pair? _tl90529073_)
                              (let ((_e90539076_ (gx#stx-e _tl90529073_)))
                                (let ((_hd90549079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e90539076_)))
                                      (_tl90559081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e90539076_))))
                                  (if (gx#stx-pair? _tl90559081_)
                                      (let ((_e90569084_
                                             (gx#stx-e _tl90559081_)))
                                        (let ((_hd90579087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e90569084_)))
                                              (_tl90589089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e90569084_))))
                                          (if (gx#stx-null? _tl90589089_)
                                              ((lambda (_L9092_ _L9093_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9092_)
                         (cons (gxc#compile-e _L9093_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp9108_ ((_rest9111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L9093_ (cons _L9092_ '())))
                            (_bind9113_ '())
                            (_args9114_ '()))
               (let* ((_rest91159123_ _rest9111_)
                      (_else91179131_
                       (lambda ()
                         (cons 'let
                               (cons _bind9113_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _args9114_)
                                                 '()))))))
                      (_K91199217_
                       (lambda (_rest9134_ _e9135_)
                         (let* ((___stx1639616397_ _e9135_)
                                (_g91409158_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx1639616397_))))
                           (let ((___kont1639816399_
                                  (lambda ()
                                    (_lp9108_
                                     _rest9134_
                                     _bind9113_
                                     (cons (gxc#compile-e _e9135_)
                                           _args9114_))))
                                 (___kont1640016401_
                                  (lambda ()
                                    (_lp9108_
                                     _rest9134_
                                     _bind9113_
                                     (cons (gxc#compile-e _e9135_)
                                           _args9114_))))
                                 (___kont1640216403_
                                  (lambda ()
                                    (let ((_tmp9165_
                                           (make-symbol (gensym '__tmp))))
                                      (_lp9108_
                                       _rest9134_
                                       (cons (cons _tmp9165_
                                                   (cons (gxc#compile-e
                                                          _e9135_)
                                                         '()))
                                             _bind9113_)
                                       (cons _tmp9165_ _args9114_))))))
                             (if (gx#stx-pair? ___stx1639616397_)
                                 (let ((_e91429196_
                                        (gx#stx-e ___stx1639616397_)))
                                   (let ((_tl91449201_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e91429196_)))
                                         (_hd91439199_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e91429196_))))
                                     (if (gx#identifier? _hd91439199_)
                                         (if (gx#stx-eq? '%#ref _hd91439199_)
                                             (if (gx#stx-pair? _tl91449201_)
                                                 (let ((_e91459204_
                                                        (gx#stx-e
                                                         _tl91449201_)))
                                                   (let ((_tl91479209_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e91459204_)))
                                                         (_hd91469207_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e91459204_))))
                                                     (if (gx#stx-null?
                                                          _tl91479209_)
                                                         (___kont1639816399_)
                                                         (___kont1640216403_))))
                                                 (___kont1640216403_))
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd91439199_)
                                                 (if (gx#stx-pair?
                                                      _tl91449201_)
                                                     (let ((_e91519181_
                                                            (gx#stx-e
                                                             _tl91449201_)))
                                                       (let ((_tl91539186_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e91519181_)))
                     (_hd91529184_
                      (let () (declare (not safe)) (##car _e91519181_))))
                 (if (gx#stx-null? _tl91539186_)
                     (___kont1640016401_)
                     (___kont1640216403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1640216403_))
                                                 (___kont1640216403_)))
                                         (___kont1640216403_))))
                                 (___kont1640216403_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest91159123_))
                     (let ((_hd91209220_
                            (let ()
                              (declare (not safe))
                              (##car _rest91159123_)))
                           (_tl91219222_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest91159123_))))
                       (let* ((_e9225_ _hd91209220_) (_rest9227_ _tl91219222_))
                         (_K91199217_ _rest9227_ _e9225_)))
                     (_else91179131_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd90579087_
                                               _hd90549079_)
                                              (_g90469063_ _g90479066_))))
                                      (_g90469063_ _g90479066_))))
                              (_g90469063_ _g90479066_))))
                      (_g90469063_ _g90479066_)))))
          (_g90459229_ _stx9044_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_stx8856_)
        (let* ((_g88588875_
                (lambda (_g88598872_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g88598872_)))
               (_g88579041_
                (lambda (_g88598878_)
                  (if (gx#stx-pair? _g88598878_)
                      (let ((_e88628880_ (gx#stx-e _g88598878_)))
                        (let ((_hd88638883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e88628880_)))
                              (_tl88648885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e88628880_))))
                          (if (gx#stx-pair? _tl88648885_)
                              (let ((_e88658888_ (gx#stx-e _tl88648885_)))
                                (let ((_hd88668891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e88658888_)))
                                      (_tl88678893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e88658888_))))
                                  (if (gx#stx-pair? _tl88678893_)
                                      (let ((_e88688896_
                                             (gx#stx-e _tl88678893_)))
                                        (let ((_hd88698899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e88688896_)))
                                              (_tl88708901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e88688896_))))
                                          (if (gx#stx-null? _tl88708901_)
                                              ((lambda (_L8904_ _L8905_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8904_)
                         (cons (gxc#compile-e _L8905_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp8920_ ((_rest8923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8905_ (cons _L8904_ '())))
                            (_bind8925_ '())
                            (_args8926_ '()))
               (let* ((_rest89278935_ _rest8923_)
                      (_else89298943_
                       (lambda ()
                         (cons 'let
                               (cons _bind8925_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _args8926_)
                                                 '()))))))
                      (_K89319029_
                       (lambda (_rest8946_ _e8947_)
                         (let* ((___stx1644216443_ _e8947_)
                                (_g89528970_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    ___stx1644216443_))))
                           (let ((___kont1644416445_
                                  (lambda ()
                                    (_lp8920_
                                     _rest8946_
                                     _bind8925_
                                     (cons (gxc#compile-e _e8947_)
                                           _args8926_))))
                                 (___kont1644616447_
                                  (lambda ()
                                    (_lp8920_
                                     _rest8946_
                                     _bind8925_
                                     (cons (gxc#compile-e _e8947_)
                                           _args8926_))))
                                 (___kont1644816449_
                                  (lambda ()
                                    (let ((_tmp8977_
                                           (make-symbol (gensym '__tmp))))
                                      (_lp8920_
                                       _rest8946_
                                       (cons (cons _tmp8977_
                                                   (cons (gxc#compile-e
                                                          _e8947_)
                                                         '()))
                                             _bind8925_)
                                       (cons _tmp8977_ _args8926_))))))
                             (if (gx#stx-pair? ___stx1644216443_)
                                 (let ((_e89549008_
                                        (gx#stx-e ___stx1644216443_)))
                                   (let ((_tl89569013_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e89549008_)))
                                         (_hd89559011_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e89549008_))))
                                     (if (gx#identifier? _hd89559011_)
                                         (if (gx#stx-eq? '%#ref _hd89559011_)
                                             (if (gx#stx-pair? _tl89569013_)
                                                 (let ((_e89579016_
                                                        (gx#stx-e
                                                         _tl89569013_)))
                                                   (let ((_tl89599021_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e89579016_)))
                                                         (_hd89589019_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e89579016_))))
                                                     (if (gx#stx-null?
                                                          _tl89599021_)
                                                         (___kont1644416445_)
                                                         (___kont1644816449_))))
                                                 (___kont1644816449_))
                                             (if (gx#stx-eq?
                                                  '%#quote
                                                  _hd89559011_)
                                                 (if (gx#stx-pair?
                                                      _tl89569013_)
                                                     (let ((_e89638993_
                                                            (gx#stx-e
                                                             _tl89569013_)))
                                                       (let ((_tl89658998_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e89638993_)))
                     (_hd89648996_
                      (let () (declare (not safe)) (##car _e89638993_))))
                 (if (gx#stx-null? _tl89658998_)
                     (___kont1644616447_)
                     (___kont1644816449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1644816449_))
                                                 (___kont1644816449_)))
                                         (___kont1644816449_))))
                                 (___kont1644816449_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest89278935_))
                     (let ((_hd89329032_
                            (let ()
                              (declare (not safe))
                              (##car _rest89278935_)))
                           (_tl89339034_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest89278935_))))
                       (let* ((_e9037_ _hd89329032_) (_rest9039_ _tl89339034_))
                         (_K89319029_ _rest9039_ _e9037_)))
                     (_else89298943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd88698899_
                                               _hd88668891_)
                                              (_g88588875_ _g88598878_))))
                                      (_g88588875_ _g88598878_))))
                              (_g88588875_ _g88598878_))))
                      (_g88588875_ _g88598878_)))))
          (_g88579041_ _stx8856_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_stx8773_)
        (let* ((_g87758796_
                (lambda (_g87768793_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g87768793_)))
               (_g87748853_
                (lambda (_g87768799_)
                  (if (gx#stx-pair? _g87768799_)
                      (let ((_e87808801_ (gx#stx-e _g87768799_)))
                        (let ((_hd87818804_
                               (let ()
                                 (declare (not safe))
                                 (##car _e87808801_)))
                              (_tl87828806_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e87808801_))))
                          (if (gx#stx-pair? _tl87828806_)
                              (let ((_e87838809_ (gx#stx-e _tl87828806_)))
                                (let ((_hd87848812_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e87838809_)))
                                      (_tl87858814_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e87838809_))))
                                  (if (gx#stx-pair? _tl87858814_)
                                      (let ((_e87868817_
                                             (gx#stx-e _tl87858814_)))
                                        (let ((_hd87878820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e87868817_)))
                                              (_tl87888822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e87868817_))))
                                          (if (gx#stx-pair? _tl87888822_)
                                              (let ((_e87898825_
                                                     (gx#stx-e _tl87888822_)))
                                                (let ((_hd87908828_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e87898825_)))
                                                      (_tl87918830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e87898825_))))
                                                  (if (gx#stx-null?
                                                       _tl87918830_)
                                                      ((lambda (_L8833_
                                                                _L8834_
                                                                _L8835_)
                                                         (cons '##structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8833_)
                             (cons (gxc#compile-e _L8834_)
                                   (cons (gxc#compile-e _L8835_)
                                         (cons ''#f '()))))))
               _hd87908828_
               _hd87878820_
               _hd87848812_)
              (_g87758796_ _g87768799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87758796_ _g87768799_))))
                                      (_g87758796_ _g87768799_))))
                              (_g87758796_ _g87768799_))))
                      (_g87758796_ _g87768799_)))))
          (_g87748853_ _stx8773_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_stx8674_)
        (let* ((_g86768701_
                (lambda (_g86778698_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86778698_)))
               (_g86758770_
                (lambda (_g86778704_)
                  (if (gx#stx-pair? _g86778704_)
                      (let ((_e86828706_ (gx#stx-e _g86778704_)))
                        (let ((_hd86838709_
                               (let ()
                                 (declare (not safe))
                                 (##car _e86828706_)))
                              (_tl86848711_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e86828706_))))
                          (if (gx#stx-pair? _tl86848711_)
                              (let ((_e86858714_ (gx#stx-e _tl86848711_)))
                                (let ((_hd86868717_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86858714_)))
                                      (_tl86878719_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86858714_))))
                                  (if (gx#stx-pair? _tl86878719_)
                                      (let ((_e86888722_
                                             (gx#stx-e _tl86878719_)))
                                        (let ((_hd86898725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e86888722_)))
                                              (_tl86908727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e86888722_))))
                                          (if (gx#stx-pair? _tl86908727_)
                                              (let ((_e86918730_
                                                     (gx#stx-e _tl86908727_)))
                                                (let ((_hd86928733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e86918730_)))
                                                      (_tl86938735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e86918730_))))
                                                  (if (gx#stx-pair?
                                                       _tl86938735_)
                                                      (let ((_e86948738_
                                                             (gx#stx-e
                                                              _tl86938735_)))
                                                        (let ((_hd86958741_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e86948738_)))
                      (_tl86968743_
                       (let () (declare (not safe)) (##cdr _e86948738_))))
                  (if (gx#stx-null? _tl86968743_)
                      ((lambda (_L8746_ _L8747_ _L8748_ _L8749_)
                         (cons '##structure-set!
                               (cons (gxc#compile-e _L8747_)
                                     (cons (gxc#compile-e _L8746_)
                                           (cons (gxc#compile-e _L8748_)
                                                 (cons (gxc#compile-e _L8749_)
                                                       (cons ''#f '())))))))
                       _hd86958741_
                       _hd86928733_
                       _hd86898725_
                       _hd86868717_)
                      (_g86768701_ _g86778704_))))
              (_g86768701_ _g86778704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g86768701_ _g86778704_))))
                                      (_g86768701_ _g86778704_))))
                              (_g86768701_ _g86778704_))))
                      (_g86768701_ _g86778704_)))))
          (_g86758770_ _stx8674_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_stx8591_)
        (let* ((_g85938614_
                (lambda (_g85948611_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85948611_)))
               (_g85928671_
                (lambda (_g85948617_)
                  (if (gx#stx-pair? _g85948617_)
                      (let ((_e85988619_ (gx#stx-e _g85948617_)))
                        (let ((_hd85998622_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85988619_)))
                              (_tl86008624_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85988619_))))
                          (if (gx#stx-pair? _tl86008624_)
                              (let ((_e86018627_ (gx#stx-e _tl86008624_)))
                                (let ((_hd86028630_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e86018627_)))
                                      (_tl86038632_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e86018627_))))
                                  (if (gx#stx-pair? _tl86038632_)
                                      (let ((_e86048635_
                                             (gx#stx-e _tl86038632_)))
                                        (let ((_hd86058638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e86048635_)))
                                              (_tl86068640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e86048635_))))
                                          (if (gx#stx-pair? _tl86068640_)
                                              (let ((_e86078643_
                                                     (gx#stx-e _tl86068640_)))
                                                (let ((_hd86088646_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e86078643_)))
                                                      (_tl86098648_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e86078643_))))
                                                  (if (gx#stx-null?
                                                       _tl86098648_)
                                                      ((lambda (_L8651_
                                                                _L8652_
                                                                _L8653_)
                                                         (cons '##direct-structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8651_)
                             (cons (gxc#compile-e _L8652_)
                                   (cons (gxc#compile-e _L8653_)
                                         (cons ''#f '()))))))
               _hd86088646_
               _hd86058638_
               _hd86028630_)
              (_g85938614_ _g85948617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g85938614_ _g85948617_))))
                                      (_g85938614_ _g85948617_))))
                              (_g85938614_ _g85948617_))))
                      (_g85938614_ _g85948617_)))))
          (_g85928671_ _stx8591_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_stx8492_)
        (let* ((_g84948519_
                (lambda (_g84958516_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g84958516_)))
               (_g84938588_
                (lambda (_g84958522_)
                  (if (gx#stx-pair? _g84958522_)
                      (let ((_e85008524_ (gx#stx-e _g84958522_)))
                        (let ((_hd85018527_
                               (let ()
                                 (declare (not safe))
                                 (##car _e85008524_)))
                              (_tl85028529_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e85008524_))))
                          (if (gx#stx-pair? _tl85028529_)
                              (let ((_e85038532_ (gx#stx-e _tl85028529_)))
                                (let ((_hd85048535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e85038532_)))
                                      (_tl85058537_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e85038532_))))
                                  (if (gx#stx-pair? _tl85058537_)
                                      (let ((_e85068540_
                                             (gx#stx-e _tl85058537_)))
                                        (let ((_hd85078543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e85068540_)))
                                              (_tl85088545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e85068540_))))
                                          (if (gx#stx-pair? _tl85088545_)
                                              (let ((_e85098548_
                                                     (gx#stx-e _tl85088545_)))
                                                (let ((_hd85108551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e85098548_)))
                                                      (_tl85118553_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e85098548_))))
                                                  (if (gx#stx-pair?
                                                       _tl85118553_)
                                                      (let ((_e85128556_
                                                             (gx#stx-e
                                                              _tl85118553_)))
                                                        (let ((_hd85138559_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e85128556_)))
                      (_tl85148561_
                       (let () (declare (not safe)) (##cdr _e85128556_))))
                  (if (gx#stx-null? _tl85148561_)
                      ((lambda (_L8564_ _L8565_ _L8566_ _L8567_)
                         (cons '##direct-structure-set!
                               (cons (gxc#compile-e _L8565_)
                                     (cons (gxc#compile-e _L8564_)
                                           (cons (gxc#compile-e _L8566_)
                                                 (cons (gxc#compile-e _L8567_)
                                                       (cons ''#f '())))))))
                       _hd85138559_
                       _hd85108551_
                       _hd85078543_
                       _hd85048535_)
                      (_g84948519_ _g84958522_))))
              (_g84948519_ _g84958522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g84948519_ _g84958522_))))
                                      (_g84948519_ _g84958522_))))
                              (_g84948519_ _g84958522_))))
                      (_g84948519_ _g84958522_)))))
          (_g84938588_ _stx8492_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_stx8288_)
        (let* ((_g82908311_
                (lambda (_g82918308_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g82918308_)))
               (_g82898489_
                (lambda (_g82918314_)
                  (if (gx#stx-pair? _g82918314_)
                      (let ((_e82958316_ (gx#stx-e _g82918314_)))
                        (let ((_hd82968319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e82958316_)))
                              (_tl82978321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e82958316_))))
                          (if (gx#stx-pair? _tl82978321_)
                              (let ((_e82988324_ (gx#stx-e _tl82978321_)))
                                (let ((_hd82998327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e82988324_)))
                                      (_tl83008329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e82988324_))))
                                  (if (gx#stx-pair? _tl83008329_)
                                      (let ((_e83018332_
                                             (gx#stx-e _tl83008329_)))
                                        (let ((_hd83028335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e83018332_)))
                                              (_tl83038337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e83018332_))))
                                          (if (gx#stx-pair? _tl83038337_)
                                              (let ((_e83048340_
                                                     (gx#stx-e _tl83038337_)))
                                                (let ((_hd83058343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e83048340_)))
                                                      (_tl83068345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e83048340_))))
                                                  (if (gx#stx-null?
                                                       _tl83068345_)
                                                      ((lambda (_L8348_
                                                                _L8349_
                                                                _L8350_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e _L8348_)
                                 (cons (gxc#compile-e _L8349_)
                                       (cons (gxc#compile-e _L8350_)
                                             (cons ''#f '())))))
                     (let _lp8368_ ((_rest8371_
                                     (cons _L8350_
                                           (cons _L8349_ (cons _L8348_ '()))))
                                    (_bind8373_ '())
                                    (_args8374_ '()))
                       (let* ((_rest83758383_ _rest8371_)
                              (_else83778391_
                               (lambda ()
                                 (cons 'let
                                       (cons _bind8373_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons ''#f '())
                               _args8374_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_K83798477_
                               (lambda (_rest8394_ _e8395_)
                                 (let* ((___stx1648816489_ _e8395_)
                                        (_g84008418_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1648816489_))))
                                   (let ((___kont1649016491_
                                          (lambda ()
                                            (_lp8368_
                                             _rest8394_
                                             _bind8373_
                                             (cons (gxc#compile-e _e8395_)
                                                   _args8374_))))
                                         (___kont1649216493_
                                          (lambda ()
                                            (_lp8368_
                                             _rest8394_
                                             _bind8373_
                                             (cons (gxc#compile-e _e8395_)
                                                   _args8374_))))
                                         (___kont1649416495_
                                          (lambda ()
                                            (let ((_tmp8425_
                                                   (make-symbol
                                                    (gensym '__tmp))))
                                              (_lp8368_
                                               _rest8394_
                                               (cons (cons _tmp8425_
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e8395_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8373_)
                                               (cons _tmp8425_ _args8374_))))))
                                     (if (gx#stx-pair? ___stx1648816489_)
                                         (let ((_e84028456_
                                                (gx#stx-e ___stx1648816489_)))
                                           (let ((_tl84048461_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e84028456_)))
                                                 (_hd84038459_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e84028456_))))
                                             (if (gx#identifier? _hd84038459_)
                                                 (if (gx#stx-eq?
                                                      '%#ref
                                                      _hd84038459_)
                                                     (if (gx#stx-pair?
                                                          _tl84048461_)
                                                         (let ((_e84058464_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl84048461_)))
                   (let ((_tl84078469_
                          (let () (declare (not safe)) (##cdr _e84058464_)))
                         (_hd84068467_
                          (let () (declare (not safe)) (##car _e84058464_))))
                     (if (gx#stx-null? _tl84078469_)
                         (___kont1649016491_)
                         (___kont1649416495_))))
                 (___kont1649416495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-eq?
                                                          '%#quote
                                                          _hd84038459_)
                                                         (if (gx#stx-pair?
                                                              _tl84048461_)
                                                             (let ((_e84118441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl84048461_)))
                       (let ((_tl84138446_
                              (let ()
                                (declare (not safe))
                                (##cdr _e84118441_)))
                             (_hd84128444_
                              (let ()
                                (declare (not safe))
                                (##car _e84118441_))))
                         (if (gx#stx-null? _tl84138446_)
                             (___kont1649216493_)
                             (___kont1649416495_))))
                     (___kont1649416495_))
                 (___kont1649416495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1649416495_))))
                                         (___kont1649416495_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest83758383_))
                             (let ((_hd83808480_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest83758383_)))
                                   (_tl83818482_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest83758383_))))
                               (let* ((_e8485_ _hd83808480_)
                                      (_rest8487_ _tl83818482_))
                                 (_K83798477_ _rest8487_ _e8485_)))
                             (_else83778391_))))))
               _hd83058343_
               _hd83028335_
               _hd82998327_)
              (_g82908311_ _g82918314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82908311_ _g82918314_))))
                                      (_g82908311_ _g82918314_))))
                              (_g82908311_ _g82918314_))))
                      (_g82908311_ _g82918314_)))))
          (_g82898489_ _stx8288_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_stx8068_)
        (let* ((_g80708095_
                (lambda (_g80718092_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g80718092_)))
               (_g80698285_
                (lambda (_g80718098_)
                  (if (gx#stx-pair? _g80718098_)
                      (let ((_e80768100_ (gx#stx-e _g80718098_)))
                        (let ((_hd80778103_
                               (let ()
                                 (declare (not safe))
                                 (##car _e80768100_)))
                              (_tl80788105_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e80768100_))))
                          (if (gx#stx-pair? _tl80788105_)
                              (let ((_e80798108_ (gx#stx-e _tl80788105_)))
                                (let ((_hd80808111_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e80798108_)))
                                      (_tl80818113_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e80798108_))))
                                  (if (gx#stx-pair? _tl80818113_)
                                      (let ((_e80828116_
                                             (gx#stx-e _tl80818113_)))
                                        (let ((_hd80838119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e80828116_)))
                                              (_tl80848121_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e80828116_))))
                                          (if (gx#stx-pair? _tl80848121_)
                                              (let ((_e80858124_
                                                     (gx#stx-e _tl80848121_)))
                                                (let ((_hd80868127_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e80858124_)))
                                                      (_tl80878129_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e80858124_))))
                                                  (if (gx#stx-pair?
                                                       _tl80878129_)
                                                      (let ((_e80888132_
                                                             (gx#stx-e
                                                              _tl80878129_)))
                                                        (let ((_hd80898135_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e80888132_)))
                      (_tl80908137_
                       (let () (declare (not safe)) (##cdr _e80888132_))))
                  (if (gx#stx-null? _tl80908137_)
                      ((lambda (_L8140_ _L8141_ _L8142_ _L8143_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (gxc#compile-e _L8141_)
                                         (cons (gxc#compile-e _L8140_)
                                               (cons (gxc#compile-e _L8142_)
                                                     (cons (gxc#compile-e
                                                            _L8143_)
                                                           (cons ''#f '()))))))
                             (let _lp8164_ ((_rest8167_
                                             (cons _L8143_
                                                   (cons _L8142_
                                                         (cons _L8140_
                                                               (cons _L8141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_bind8169_ '())
                                            (_args8170_ '()))
                               (let* ((_rest81718179_ _rest8167_)
                                      (_else81738187_
                                       (lambda ()
                                         (cons 'let
                                               (cons _bind8169_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr1 cons (cons ''#f '()) _args8170_))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_K81758273_
                                       (lambda (_rest8190_ _e8191_)
                                         (let* ((___stx1653416535_ _e8191_)
                                                (_g81968214_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    ___stx1653416535_))))
                                           (let ((___kont1653616537_
                                                  (lambda ()
                                                    (_lp8164_
                                                     _rest8190_
                                                     _bind8169_
                                                     (cons (gxc#compile-e
                                                            _e8191_)
                                                           _args8170_))))
                                                 (___kont1653816539_
                                                  (lambda ()
                                                    (_lp8164_
                                                     _rest8190_
                                                     _bind8169_
                                                     (cons (gxc#compile-e
                                                            _e8191_)
                                                           _args8170_))))
                                                 (___kont1654016541_
                                                  (lambda ()
                                                    (let ((_tmp8221_
                                                           (make-symbol
                                                            (gensym '__tmp))))
                                                      (_lp8164_
                                                       _rest8190_
                                                       (cons (cons _tmp8221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e _e8191_) '()))
                     _bind8169_)
               (cons _tmp8221_ _args8170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair?
                                                  ___stx1653416535_)
                                                 (let ((_e81988252_
                                                        (gx#stx-e
                                                         ___stx1653416535_)))
                                                   (let ((_tl82008257_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e81988252_)))
                                                         (_hd81998255_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e81988252_))))
                                                     (if (gx#identifier?
                                                          _hd81998255_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _hd81998255_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl82008257_)
                         (let ((_e82018260_ (gx#stx-e _tl82008257_)))
                           (let ((_tl82038265_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e82018260_)))
                                 (_hd82028263_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e82018260_))))
                             (if (gx#stx-null? _tl82038265_)
                                 (___kont1653616537_)
                                 (___kont1654016541_))))
                         (___kont1654016541_))
                     (if (gx#stx-eq? '%#quote _hd81998255_)
                         (if (gx#stx-pair? _tl82008257_)
                             (let ((_e82078237_ (gx#stx-e _tl82008257_)))
                               (let ((_tl82098242_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e82078237_)))
                                     (_hd82088240_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e82078237_))))
                                 (if (gx#stx-null? _tl82098242_)
                                     (___kont1653816539_)
                                     (___kont1654016541_))))
                             (___kont1654016541_))
                         (___kont1654016541_)))
                 (___kont1654016541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont1654016541_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest81718179_))
                                     (let ((_hd81768276_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest81718179_)))
                                           (_tl81778278_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest81718179_))))
                                       (let* ((_e8281_ _hd81768276_)
                                              (_rest8283_ _tl81778278_))
                                         (_K81758273_ _rest8283_ _e8281_)))
                                     (_else81738187_))))))
                       _hd80898135_
                       _hd80868127_
                       _hd80838119_
                       _hd80808111_)
                      (_g80708095_ _g80718098_))))
              (_g80708095_ _g80718098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g80708095_ _g80718098_))))
                                      (_g80708095_ _g80718098_))))
                              (_g80708095_ _g80718098_))))
                      (_g80708095_ _g80718098_)))))
          (_g80698285_ _stx8068_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_stx7922_)
        (letrec ((_import-set-template7924_
                  (lambda (_in8020_ _phi8021_)
                    (let ((_iphi8023_
                           (fx+ _phi8021_
                                (##direct-structure-ref
                                 _in8020_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports8024_
                           (##structure-ref
                            (##direct-structure-ref
                             _in8020_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp8026_ ((_rest8028_ _imports8024_) (_r8029_ '()))
                        (let* ((_rest80308038_ _rest8028_)
                               (_else80328046_ (lambda () _r8029_))
                               (_K80348056_
                                (lambda (_rest8049_ _in8050_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in8050_
                                         'gx#module-context::t))
                                      (if (fxzero? _iphi8023_)
                                          (_lp8026_
                                           _rest8049_
                                           (cons _in8050_ _r8029_))
                                          (_lp8026_ _rest8049_ _r8029_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in8050_
                                             'gx#module-import::t))
                                          (let ((_iphi8052_
                                                 (fx+ _phi8021_
                                                      (##direct-structure-ref
                                                       _in8050_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (fxzero? _iphi8052_)
                                                (_lp8026_
                                                 _rest8049_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _in8050_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _r8029_))
                                                (_lp8026_ _rest8049_ _r8029_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in8050_
                                                 'gx#import-set::t))
                                              (let ((_xphi8054_
                                                     (fx+ _iphi8023_
                                                          (##direct-structure-ref
                                                           _in8050_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (fxzero? _xphi8054_)
                                                    (_lp8026_
                                                     _rest8049_
                                                     (cons (##direct-structure-ref
                                                            _in8050_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _r8029_))
                                                    (if (fxpositive?
                                                         _xphi8054_)
                                                        (_lp8026_
                                                         _rest8049_
                                                         (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _r8029_
                         (_import-set-template7924_ _in8050_ _iphi8023_)))
                (_lp8026_ _rest8049_ _r8029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp8026_
                                               _rest8049_
                                               _r8029_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest80308038_))
                              (let ((_hd80358059_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest80308038_)))
                                    (_tl80368061_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest80308038_))))
                                (let* ((_in8064_ _hd80358059_)
                                       (_rest8066_ _tl80368061_))
                                  (_K80348056_ _rest8066_ _in8064_)))
                              (_else80328046_))))))))
          (let* ((_g79267936_
                  (lambda (_g79277933_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g79277933_)))
                 (_g79258017_
                  (lambda (_g79277939_)
                    (if (gx#stx-pair? _g79277939_)
                        (let ((_e79297941_ (gx#stx-e _g79277939_)))
                          (let ((_hd79307944_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e79297941_)))
                                (_tl79317946_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e79297941_))))
                            ((lambda (_L7949_)
                               (let ((_ht7960_ (make-table 'test: eq?)))
                                 (let _lp7962_ ((_rest7964_ _L7949_)
                                                (_loads7965_ '()))
                                   (letrec ((_K7967_ (lambda (_ctx8010_
                                                              _rest8011_)
                                                       (let ((_id8013_
                                                              (##structure-ref
                                                               _ctx8010_
                                                               '1
                                                               gx#expander-context::t
                                                               '#f)))
                                                         (if (table-ref
                                                              _ht7960_
                                                              _id8013_
                                                              '#f)
                                                             (_lp7962_
                                                              _rest8011_
                                                              _loads7965_)
                                                             (let ((_rt8015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (string-append
                             (gxc#module-id->path-string _id8013_)
                             '"__rt")))
                       (table-set! _ht7960_ _id8013_ _rt8015_)
                       (_lp7962_ _rest8011_ (cons _rt8015_ _loads7965_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest79687976_ _rest7964_)
                                            (_else79707988_
                                             (lambda ()
                                               (cons 'begin
                                                     (map (lambda (_g79837985_)
                                                            (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g79837985_))
                  (reverse _loads7965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_K79727998_
                                             (lambda (_rest7991_ _in7992_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in7992_
                                                      'gx#module-context::t))
                                                   (_K7967_ _in7992_
                                                            _rest7991_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in7992_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in7992_
                             '3
                             gx#module-import::t
                             '#f))
                   (_K7967_ (##direct-structure-ref
                             (##direct-structure-ref
                              _in7992_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)
                            _rest7991_)
                   (_lp7962_ _rest7991_ _loads7965_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in7992_
                      'gx#import-set::t))
                   (let ((_phi7994_
                          (##direct-structure-ref
                           _in7992_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _phi7994_)
                         (_K7967_ (##direct-structure-ref
                                   _in7992_
                                   '1
                                   gx#import-set::t
                                   '#f)
                                  _rest7991_)
                         (if (fxpositive? _phi7994_)
                             (let ((_deps7996_
                                    (_import-set-template7924_ _in7992_ '0)))
                               (_lp7962_
                                (foldl1 cons _rest7991_ _deps7996_)
                                _loads7965_))
                             (_lp7962_ _rest7991_ _loads7965_))))
                   (gxc#raise-compile-error
                    '"Unexpected import"
                    _stx7922_
                    _in7992_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest79687976_))
                                           (let ((_hd79738001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest79687976_)))
                                                 (_tl79748003_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest79687976_))))
                                             (let* ((_in8006_ _hd79738001_)
                                                    (_rest8008_ _tl79748003_))
                                               (_K79727998_
                                                _rest8008_
                                                _in8006_)))
                                           (_else79707988_)))))))
                             _tl79317946_)))
                        (_g79267936_ _g79277939_)))))
            (_g79258017_ _stx7922_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_stx7738_)
        (letrec ((_add-lift!7740_
                  (lambda (_expr7920_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (cons _expr7920_ (unbox (gxc#current-compile-lift))))))
                 (_generate-syntax-quote7741_
                  (lambda (_id7917_ _marks7918_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _id7917_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _marks7918_ '()))))))))
                 (_generate-simple7742_
                  (lambda (_stxq7912_)
                    (let ((_gid7914_ (gxc#generate-runtime-temporary__% '#t))
                          (_qid7915_
                           (gxc#generate-runtime-identifier _stxq7912_)))
                      (_add-lift!7740_
                       (cons 'define
                             (cons _gid7914_
                                   (cons (_generate-syntax-quote7741_
                                          _qid7915_
                                          ''())
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7912_
                       _gid7914_)
                      _gid7914_)))
                 (_generate-serialized7743_
                  (lambda (_stxq7902_ _marks7903_)
                    (let* ((_mark-refs7905_
                            (map _generate-mark7744_ _marks7903_))
                           (_gid7907_ (gxc#generate-runtime-temporary__% '#t))
                           (_qid7909_
                            (gxc#generate-runtime-identifier _stxq7902_)))
                      (_add-lift!7740_
                       (cons 'define
                             (cons _gid7907_
                                   (cons (_generate-syntax-quote7741_
                                          _qid7909_
                                          (cons 'list _mark-refs7905_))
                                         '()))))
                      (table-set!
                       (gxc#current-compile-identifiers)
                       _stxq7902_
                       _gid7907_)
                      _gid7907_)))
                 (_generate-mark7744_
                  (lambda (_mark7888_)
                    (let ((_$e7890_
                           (table-ref
                            (gxc#current-compile-marks)
                            _mark7888_
                            '#f)))
                      (if _$e7890_
                          (values _$e7890_)
                          (let* ((_gid7893_
                                  (gxc#generate-runtime-temporary__% '#t))
                                 (_repr7895_ (_serialize-mark7745_ _mark7888_))
                                 (_ctx7897_
                                  (gx#core-context-top__1
                                   (##structure-ref
                                    _mark7888_
                                    '2
                                    gx#expander-mark::t
                                    '#f)))
                                 (_ctx-ref7899_
                                  (if (eq? _ctx7897_
                                           (gx#current-expander-context))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_context-ref7746_
                                                               _ctx7897_)
                                                              '()))
                                                  '())))))
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark7888_
                             _gid7893_)
                            (_add-lift!7740_
                             (cons 'define
                                   (cons _gid7893_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr7895_ '()))
                   (cons _ctx-ref7899_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid7893_)))))
                 (_serialize-mark7745_
                  (lambda (_mark7835_)
                    (letrec ((_quote-e7837_
                              (lambda (_sym7886_)
                                (if (interned-symbol? _sym7886_)
                                    _sym7886_
                                    (gxc#generate-runtime-gensym-reference__0
                                     _sym7886_)))))
                      (let* ((_mark78387847_ _mark7835_)
                             (_E78407851_
                              (lambda ()
                                (error '"No clause matching" _mark78387847_)))
                             (_K78417863_
                              (lambda (_trace7854_
                                       _phi7855_
                                       _ctx7856_
                                       _subst7857_)
                                (let ((_subs7859_
                                       (if _subst7857_
                                           (table->list _subst7857_)
                                           '())))
                                  (cons _phi7855_
                                        (map (lambda (_pair7861_)
                                               (cons (_quote-e7837_
                                                      (car _pair7861_))
                                                     (_quote-e7837_
                                                      (cdr _pair7861_))))
                                             _subs7859_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark78387847_
                               'gx#expander-mark::t))
                            (let* ((_e78427866_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78387847_ '1)))
                                   (_subst7869_ _e78427866_)
                                   (_e78437871_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78387847_ '2)))
                                   (_ctx7874_ _e78437871_)
                                   (_e78447876_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78387847_ '3)))
                                   (_phi7879_ _e78447876_)
                                   (_e78457881_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _mark78387847_ '4)))
                                   (_trace7884_ _e78457881_))
                              (_K78417863_
                               _trace7884_
                               _phi7879_
                               _ctx7874_
                               _subst7869_))
                            (_E78407851_))))))
                 (_context-ref7746_
                  (lambda (_ctx7822_)
                    (if (let ((__tmp16704
                               (##structure-ref
                                _ctx7822_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp16704
                           'gx#module-context::t))
                        (let ((_ctx-ref7824_
                               (_context-ref-nested7748_ _ctx7822_))
                              (_ctx-origin7825_
                               (_context-ref-origin7747_ _ctx7822_))
                              (_origin7826_
                               (_context-ref-origin7747_
                                (gx#current-expander-context))))
                          (if (eq? _origin7826_ _ctx-origin7825_)
                              (let ((_ref7828_
                                     (_context-ref-nested7748_
                                      (gx#current-expander-context))))
                                (let _lp7830_ ((_ref7832_ (cdr _ref7828_))
                                               (_ctx-ref7833_
                                                (cdr _ctx-ref7824_)))
                                  (if (and (pair? _ref7832_)
                                           (eq? (car _ref7832_)
                                                (car _ctx-ref7833_)))
                                      (_lp7830_
                                       (cdr _ref7832_)
                                       (cdr _ctx-ref7833_))
                                      (cons '#f _ctx-ref7833_))))
                              _ctx-ref7824_))
                        (make-symbol
                         '":"
                         (##structure-ref
                          _ctx7822_
                          '1
                          gx#expander-context::t
                          '#f)))))
                 (_context-ref-origin7747_
                  (lambda (_ctx7814_)
                    (let _lp7816_ ((_ctx7818_ _ctx7814_))
                      (let ((_super7820_
                             (##structure-ref
                              _ctx7818_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super7820_
                               'gx#module-context::t))
                            (_lp7816_ _super7820_)
                            _ctx7818_)))))
                 (_context-ref-nested7748_
                  (lambda (_ctx7805_)
                    (let _lp7807_ ((_ctx7809_ _ctx7805_) (_r7810_ '()))
                      (let ((_super7812_
                             (##structure-ref
                              _ctx7809_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super7812_
                               'gx#module-context::t))
                            (_lp7807_
                             _super7812_
                             (cons (car (##structure-ref
                                         _ctx7809_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _r7810_))
                            (cons (make-symbol
                                   '":"
                                   (##structure-ref
                                    _ctx7809_
                                    '1
                                    gx#expander-context::t
                                    '#f))
                                  _r7810_)))))))
          (let* ((_g77507763_
                  (lambda (_g77517760_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g77517760_)))
                 (_g77497802_
                  (lambda (_g77517766_)
                    (if (gx#stx-pair? _g77517766_)
                        (let ((_e77537768_ (gx#stx-e _g77517766_)))
                          (let ((_hd77547771_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e77537768_)))
                                (_tl77557773_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e77537768_))))
                            (if (gx#stx-pair? _tl77557773_)
                                (let ((_e77567776_ (gx#stx-e _tl77557773_)))
                                  (let ((_hd77577779_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e77567776_)))
                                        (_tl77587781_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e77567776_))))
                                    (if (gx#stx-null? _tl77587781_)
                                        ((lambda (_L7784_)
                                           (if (gx#identifier? _L7784_)
                                               (let ((_$e7797_
                                                      (table-ref
                                                       (gxc#current-compile-identifiers)
                                                       _L7784_
                                                       '#f)))
                                                 (if _$e7797_
                                                     (values _$e7797_)
                                                     (let ((_marks7800_
                                                            (##direct-structure-ref
                                                             _L7784_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _marks7800_)
                                                           (_generate-simple7742_
                                                            _L7784_)
                                                           (_generate-serialized7743_
                                                            _L7784_
                                                            _marks7800_)))))
                                               (gxc#raise-compile-error
                                                '"Cannot quote non-identifier syntax"
                                                _L7784_)))
                                         _hd77577779_)
                                        (_g77507763_ _g77517766_))))
                                (_g77507763_ _g77517766_))))
                        (_g77507763_ _g77517766_)))))
            (_g77497802_ _stx7738_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_stx7671_)
        (let* ((_g76737690_
                (lambda (_g76747687_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76747687_)))
               (_g76727735_
                (lambda (_g76747693_)
                  (if (gx#stx-pair? _g76747693_)
                      (let ((_e76777695_ (gx#stx-e _g76747693_)))
                        (let ((_hd76787698_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76777695_)))
                              (_tl76797700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76777695_))))
                          (if (gx#stx-pair? _tl76797700_)
                              (let ((_e76807703_ (gx#stx-e _tl76797700_)))
                                (let ((_hd76817706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e76807703_)))
                                      (_tl76827708_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e76807703_))))
                                  (if (gx#stx-pair? _tl76827708_)
                                      (let ((_e76837711_
                                             (gx#stx-e _tl76827708_)))
                                        (let ((_hd76847714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e76837711_)))
                                              (_tl76857716_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e76837711_))))
                                          (if (gx#stx-null? _tl76857716_)
                                              ((lambda (_L7719_ _L7720_)
                                                 (cons 'define
                                                       (cons (gx#stx-e _L7720_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7719_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd76847714_
                                               _hd76817706_)
                                              (_g76737690_ _g76747693_))))
                                      (_g76737690_ _g76747693_))))
                              (_g76737690_ _g76747693_))))
                      (_g76737690_ _g76747693_)))))
          (_g76727735_ _stx7671_))))
    (define gxc#generate-meta-begin%
      (lambda (_stx7620_ _state7621_)
        (let* ((_g76237633_
                (lambda (_g76247630_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76247630_)))
               (_g76227668_
                (lambda (_g76247636_)
                  (if (gx#stx-pair? _g76247636_)
                      (let ((_e76267638_ (gx#stx-e _g76247636_)))
                        (let ((_hd76277641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e76267638_)))
                              (_tl76287643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e76267638_))))
                          ((lambda (_L7646_)
                             (let* ((_c-body7660_
                                     (map (lambda (_g76557657_)
                                            (gxc#compile-e
                                             _g76557657_
                                             _state7621_))
                                          _L7646_))
                                    (_c-body7665_
                                     (filter (lambda (_$obj7662_)
                                               (not (eq? _$obj7662_ '#!void)))
                                             _c-body7660_)))
                               (cons '%#begin _c-body7665_)))
                           _tl76287643_)))
                      (_g76237633_ _g76247636_)))))
          (_g76227668_ _stx7620_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_stx7528_ _state7529_)
        (let* ((_g75317541_
                (lambda (_g75327538_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g75327538_)))
               (_g75307617_
                (lambda (_g75327544_)
                  (if (gx#stx-pair? _g75327544_)
                      (let ((_e75347546_ (gx#stx-e _g75327544_)))
                        (let ((_hd75357549_
                               (let ()
                                 (declare (not safe))
                                 (##car _e75347546_)))
                              (_tl75367551_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e75347546_))))
                          ((lambda (_L7554_)
                             (let* ((_phi7564_
                                     (fx+ (gx#current-expander-phi) '1))
                                    (_block7566_
                                     (gxc#meta-state-begin-phi!
                                      _state7529_
                                      _phi7564_))
                                    (_compiled7569_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#apply-generate-meta-phi
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                '%#begin)
                                               _L7554_)
                                         _state7529_))
                                      gx#current-expander-phi
                                      _phi7564_)))
                               (let* ((_g75727582_
                                       (lambda (_g75737579_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g75737579_)))
                                      (_g75717614_
                                       (lambda (_g75737585_)
                                         (if (gx#stx-pair? _g75737585_)
                                             (let ((_e75757587_
                                                    (gx#stx-e _g75737585_)))
                                               (let ((_hd75767590_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e75757587_)))
                                                     (_tl75777592_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e75757587_))))
                                                 (if (gx#identifier?
                                                      _hd75767590_)
                                                     (if (gx#stx-eq?
                                                          '%#begin
                                                          _hd75767590_)
                                                         ((lambda (_L7595_)
                                                            (let ((_c-body7612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj7609_)
                                     (not (eq? _$obj7609_ '#!void)))
                                   _L7595_)))
                      (if _block7566_
                          (cons '%#begin-syntax
                                (cons (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons '_gx#load-module
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _block7566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _c-body7612_))
                          (if (null? _c-body7612_)
                              '#!void
                              (cons '%#begin-syntax _c-body7612_)))))
                  _tl75777592_)
                 (_g75727582_ _g75737585_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g75727582_
                                                      _g75737585_))))
                                             (_g75727582_ _g75737585_)))))
                                 (_g75717614_ _compiled7569_))))
                           _tl75367551_)))
                      (_g75317541_ _g75327544_)))))
          (_g75307617_ _stx7528_))))
    (define gxc#generate-meta-module%
      (lambda (_stx7459_ _state7460_)
        (gxc#meta-state-end-phi! _state7460_)
        (let* ((_g74627476_
                (lambda (_g74637473_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g74637473_)))
               (_g74617525_
                (lambda (_g74637479_)
                  (if (gx#stx-pair? _g74637479_)
                      (let ((_e74667481_ (gx#stx-e _g74637479_)))
                        (let ((_hd74677484_
                               (let ()
                                 (declare (not safe))
                                 (##car _e74667481_)))
                              (_tl74687486_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e74667481_))))
                          (if (gx#stx-pair? _tl74687486_)
                              (let ((_e74697489_ (gx#stx-e _tl74687486_)))
                                (let ((_hd74707492_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e74697489_)))
                                      (_tl74717494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e74697489_))))
                                  ((lambda (_L7497_ _L7498_)
                                     (let ((_key7511_
                                            (gx#core-identifier-key _L7498_)))
                                       (if (interned-symbol? _key7511_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"Cannot compile module with uninterned id"
                                            _stx7459_
                                            _L7498_
                                            _key7511_))
                                       (let* ((_ctx7513_
                                               (gx#syntax-local-e__0 _L7498_))
                                              (_code7516_
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e
                                                   (##structure-ref
                                                    _ctx7513_
                                                    '11
                                                    gx#module-context::t
                                                    '#f)
                                                   _state7460_))
                                                gx#current-expander-context
                                                _ctx7513_))
                                              (_rt7518_
                                               (table-ref
                                                (gxc#current-compile-runtime-sections)
                                                _ctx7513_
                                                '#f))
                                              (_loader7520_
                                               (if _rt7518_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons '_gx#load-module '()))
                             (cons (cons '%#quote (cons _rt7518_ '())) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_modid7522_ (gx#stx-e _L7498_)))
                                         (gxc#meta-state-end-phi! _state7460_)
                                         (cons '%#module
                                               (cons _modid7522_
                                                     (cons _code7516_
                                                           _loader7520_))))))
                                   _tl74717494_
                                   _hd74707492_)))
                              (_g74627476_ _g74637479_))))
                      (_g74627476_ _g74637479_)))))
          (_g74617525_ _stx7459_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx7449_ _context-chain7450_)
        (let _lp7452_ ((_ctx7454_ _ctx7449_) (_path7455_ '()))
          (let ((_super7457_
                 (##structure-ref _ctx7454_ '3 gx#phi-context::t '#f)))
            (if (memq _super7457_ _context-chain7450_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _ctx7454_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _path7455_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super7457_
                       'gx#module-context::t))
                    (_lp7452_
                     _super7457_
                     (cons (car (##structure-ref
                                 _ctx7454_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _path7455_))
                    (cons (make-symbol
                           '":"
                           (##structure-ref
                            _ctx7454_
                            '1
                            gx#expander-context::t
                            '#f))
                          _path7455_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp7444_ ((_ctx7446_ (gx#current-expander-context)) (_r7447_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx7446_ 'gx#module-context::t))
              (_lp7444_
               (##structure-ref _ctx7446_ '3 gx#phi-context::t '#f)
               (cons _ctx7446_ _r7447_))
              _r7447_))))
    (define gxc#generate-meta-import%
      (lambda (_stx7213_ _state7214_)
        (letrec* ((_context-chain7216_ (gxc#current-context-chain))
                  (_make-import-spec7217_
                   (lambda (_in7380_)
                     (let* ((_in73817393_ _in7380_)
                            (_E73837397_
                             (lambda ()
                               (error '"No clause matching" _in73817393_)))
                            (_K73847407_
                             (lambda (_phi7400_
                                      _name7401_
                                      _src-name7402_
                                      _src-phi7403_
                                      _src-key7404_
                                      _src-ctx7405_)
                               (cons _phi7400_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name7401_)
                                           (cons _src-phi7403_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _src-name7402_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in73817393_
                              'gx#module-import::t))
                           (let ((_e73857410_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _in73817393_ '1))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e73857410_
                                    'gx#module-export::t))
                                 (let* ((_e73887413_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73857410_ '1)))
                                        (_src-ctx7416_ _e73887413_)
                                        (_e73897418_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73857410_ '2)))
                                        (_src-key7421_ _e73897418_)
                                        (_e73907423_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73857410_ '3)))
                                        (_src-phi7426_ _e73907423_)
                                        (_e73917428_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _e73857410_ '4)))
                                        (_src-name7431_ _e73917428_)
                                        (_e73867433_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in73817393_ '2)))
                                        (_name7436_ _e73867433_)
                                        (_e73877438_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _in73817393_ '3)))
                                        (_phi7441_ _e73877438_))
                                   (_K73847407_
                                    _phi7441_
                                    _name7436_
                                    _src-name7431_
                                    _src-phi7426_
                                    _src-key7421_
                                    _src-ctx7416_))
                                 (_E73837397_)))
                           (_E73837397_)))))
                  (_make-import-path7218_
                   (lambda (_ctx7378_)
                     (gxc#generate-meta-import-path
                      _ctx7378_
                      _context-chain7216_)))
                  (_make-import-spec-in7219_
                   (lambda (_ctx7375_ _in7376_)
                     (cons 'spec:
                           (cons (_make-import-path7218_ _ctx7375_)
                                 (reverse _in7376_))))))
          (gxc#meta-state-end-phi! _state7214_)
          (let* ((_g72217231_
                  (lambda (_g72227228_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g72227228_)))
                 (_g72207372_
                  (lambda (_g72227234_)
                    (if (gx#stx-pair? _g72227234_)
                        (let ((_e72247236_ (gx#stx-e _g72227234_)))
                          (let ((_hd72257239_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e72247236_)))
                                (_tl72267241_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e72247236_))))
                            ((lambda (_L7244_)
                               (let _lp7255_ ((_rest7257_ _L7244_)
                                              (_current-src7258_ '#f)
                                              (_current-in7259_ '())
                                              (_r7260_ '()))
                                 (let* ((_rest72617269_ _rest7257_)
                                        (_else72637279_
                                         (lambda ()
                                           (let ((_r7277_ (if _current-src7258_
                                                              (cons (_make-import-spec-in7219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src7258_
                             _current-in7259_)
                            _r7260_)
                      _r7260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r7277_)))))
                                        (_K72657360_
                                         (lambda (_rest7282_ _in7283_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in7283_
                                                  'gx#module-import::t))
                                               (let* ((_in72847291_ _in7283_)
                                                      (_E72867295_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in72847291_)))
                                                      (_K72877300_
                                                       (lambda (_src-ctx7298_)
                                                         (if (eq? _current-src7258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx7298_)
                     (_lp7255_
                      _rest7282_
                      _current-src7258_
                      (cons (_make-import-spec7217_ _in7283_) _current-in7259_)
                      _r7260_)
                     (if _current-src7258_
                         (_lp7255_
                          _rest7282_
                          _src-ctx7298_
                          (cons (_make-import-spec7217_ _in7283_) '())
                          (cons (_make-import-spec-in7219_
                                 _current-src7258_
                                 _current-in7259_)
                                _r7260_))
                         (_lp7255_
                          _rest7282_
                          _src-ctx7298_
                          (cons (_make-import-spec7217_ _in7283_) '())
                          _r7260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in72847291_
                                                        'gx#module-import::t))
                                                     (let ((_e72887303_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _in72847291_
                                                               '1))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e72887303_
                                                              'gx#module-export::t))
                                                           (let* ((_e72897306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##vector-ref _e72887303_ '1)))
                          (_src-ctx7309_ _e72897306_))
                     (_K72877300_ _src-ctx7309_))
                   (_E72867295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E72867295_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in7283_
                                                      'gx#import-set::t))
                                                   (let* ((_phi7311_
                                                           (##direct-structure-ref
                                                            _in7283_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src7313_
                                                           (##direct-structure-ref
                                                            _in7283_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in7353_
                                                           (let* ((_g73147323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path7218_ _src7313_))
                          (_E73177327_
                           (lambda ()
                             (error '"No clause matching" _g73147323_))))
                     (let ((_K73197343_ (lambda (_path7341_) _path7341_))
                           (_K73187333_
                            (lambda (_path7331_) (cons 'in: _path7331_))))
                       (if (let () (declare (not safe)) (##pair? _g73147323_))
                           (let ((_tl73217348_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g73147323_)))
                                 (_hd73207346_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g73147323_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl73217348_))
                                 (let ((_path7351_ _hd73207346_))
                                   (_K73197343_ _path7351_))
                                 (let ((_path7336_ _g73147323_))
                                   (_K73187333_ _path7336_))))
                           (let ((_path7336_ _g73147323_))
                             (_K73187333_ _path7336_))))))
                  (_r7355_ (if _current-src7258_
                               (cons (_make-import-spec-in7219_
                                      _current-src7258_
                                      _current-in7259_)
                                     _r7260_)
                               _r7260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp7255_
                                                      _rest7282_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi7311_)
                                                                _src-in7353_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi7311_ (cons _src-in7353_ '()))))
                    _r7355_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in7283_
                                                          'gx#module-context::t))
                                                       (let ((_r7358_ (if _current-src7258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in7219_
                                         _current-src7258_
                                         _current-in7259_)
                                        _r7260_)
                                  _r7260_)))
                 (_lp7255_
                  _rest7282_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path7218_ _in7283_))
                        _r7358_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest72617269_))
                                       (let ((_hd72667363_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest72617269_)))
                                             (_tl72677365_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest72617269_))))
                                         (let* ((_in7368_ _hd72667363_)
                                                (_rest7370_ _tl72677365_))
                                           (_K72657360_ _rest7370_ _in7368_)))
                                       (_else72637279_)))))
                             _tl72267241_)))
                        (_g72217231_ _g72227234_)))))
            (_g72207372_ _stx7213_)))))
    (define gxc#generate-meta-export%
      (lambda (_stx7023_ _state7024_)
        (letrec* ((_context-chain7026_ (gxc#current-context-chain))
                  (_make-import-path7027_
                   (lambda (_ctx7211_)
                     (gxc#generate-meta-import-path
                      _ctx7211_
                      _context-chain7026_))))
          (let* ((_g70297039_
                  (lambda (_g70307036_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g70307036_)))
                 (_g70287208_
                  (lambda (_g70307042_)
                    (if (gx#stx-pair? _g70307042_)
                        (let ((_e70327044_ (gx#stx-e _g70307042_)))
                          (let ((_hd70337047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e70327044_)))
                                (_tl70347049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e70327044_))))
                            ((lambda (_L7052_)
                               (let _lp7063_ ((_rest7065_ _L7052_)
                                              (_r7066_ '()))
                                 (let* ((_rest70677075_ _rest7065_)
                                        (_else70697083_
                                         (lambda ()
                                           (cons '%#export (reverse _r7066_))))
                                        (_K70717196_
                                         (lambda (_rest7086_ _out7087_)
                                           (let* ((_out70887101_ _out7087_)
                                                  (_E70917105_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _out70887101_))))
                                             (let ((_K70957175_
                                                    (lambda (_name7171_
                                                             _phi7172_
                                                             _key7173_)
                                                      (_lp7063_
                                                       _rest7086_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _phi7172_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _key7173_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _name7171_)
                                             '()))))
                     _r7066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K70927155_
                                                    (lambda (_phi7109_
                                                             _src7110_)
                                                      (let* ((_out7150_
                                                              (if _src7110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_g71117120_
                                              (_make-import-path7027_
                                               _src7110_))
                                             (_E71147124_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _g71117120_))))
                                        (let ((_K71167140_
                                               (lambda (_path7138_)
                                                 _path7138_))
                                              (_K71157130_
                                               (lambda (_path7128_)
                                                 (cons 'in: _path7128_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _g71117120_))
                                              (let ((_tl71187145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _g71117120_)))
                                                    (_hd71177143_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _g71117120_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl71187145_))
                                                    (let ((_path7148_
                                                           _hd71177143_))
                                                      (_K71167140_ _path7148_))
                                                    (let ((_path7133_
                                                           _g71117120_))
                                                      (_K71157130_
                                                       _path7133_))))
                                              (let ((_path7133_ _g71117120_))
                                                (_K71157130_ _path7133_)))))
                                      '()))
                          '#t))
                     (_out7152_
                      (if (fxzero? _phi7109_)
                          _out7150_
                          (cons 'phi: (cons _phi7109_ (cons _out7150_ '()))))))
                (_lp7063_ _rest7086_ (cons _out7152_ _r7066_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match70907168_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out70887101_
                                                               'gx#export-set::t))
                                                            (let* ((_e70937158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out70887101_ '1)))
                           (_e70947163_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _out70887101_ '2))))
                      (let ((_src7161_ _e70937158_) (_phi7166_ _e70947163_))
                        (_K70927155_ _phi7166_ _src7161_)))
                    (_E70917105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out70887101_
                                                        'gx#module-export::t))
                                                     (let* ((_e70967178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _out70887101_ '1)))
                    (_e70977181_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out70887101_ '2)))
                    (_e70987186_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out70887101_ '3)))
                    (_e70997191_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _out70887101_ '4))))
               (let ((_key7184_ _e70977181_)
                     (_phi7189_ _e70987186_)
                     (_name7194_ _e70997191_))
                 (_K70957175_ _name7194_ _phi7189_ _key7184_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_try-match70907168_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest70677075_))
                                       (let ((_hd70727199_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest70677075_)))
                                             (_tl70737201_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest70677075_))))
                                         (let* ((_out7204_ _hd70727199_)
                                                (_rest7206_ _tl70737201_))
                                           (_K70717196_ _rest7206_ _out7204_)))
                                       (_else70697083_)))))
                             _tl70347049_)))
                        (_g70297039_ _g70307042_)))))
            (_g70287208_ _stx7023_)))))
    (define gxc#generate-meta-provide%
      (lambda (_stx6984_ _state6985_)
        (gxc#meta-state-end-phi! _state6985_)
        (let* ((_g69876997_
                (lambda (_g69886994_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g69886994_)))
               (_g69867020_
                (lambda (_g69887000_)
                  (if (gx#stx-pair? _g69887000_)
                      (let ((_e69907002_ (gx#stx-e _g69887000_)))
                        (let ((_hd69917005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e69907002_)))
                              (_tl69927007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e69907002_))))
                          ((lambda (_L7010_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L7010_)))
                           _tl69927007_)))
                      (_g69876997_ _g69887000_)))))
          (_g69867020_ _stx6984_))))
    (define gxc#generate-meta-extern%
      (lambda (_stx6855_ _state6856_)
        (letrec ((_generate16858_
                  (lambda (_id6979_ _eid6980_)
                    (let ((_eid6982_ (gx#stx-e _eid6980_)))
                      (if (interned-symbol? _eid6982_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx6855_
                           _eid6982_))
                      (cons (gxc#generate-runtime-identifier _id6979_)
                            (cons _eid6982_ '()))))))
          (let* ((_g68606888_
                  (lambda (_g68616885_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g68616885_)))
                 (_g68596976_
                  (lambda (_g68616891_)
                    (if (gx#stx-pair? _g68616891_)
                        (let ((_e68646893_ (gx#stx-e _g68616891_)))
                          (let ((_hd68656896_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e68646893_)))
                                (_tl68666898_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e68646893_))))
                            (if (gx#stx-pair/null? _tl68666898_)
                                (let ((_g16705_
                                       (gx#syntax-split-splice
                                        _tl68666898_
                                        '0)))
                                  (begin
                                    (let ((_g16706_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g16705_)
                                                 (##vector-length _g16705_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g16706_ 2)))
                                          (error "Context expects 2 values"
                                                 _g16706_)))
                                    (let ((_target68676901_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16705_ 0)))
                                          (_tl68696903_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g16705_ 1))))
                                      (if (gx#stx-null? _tl68696903_)
                                          (letrec ((_loop68706906_
                                                    (lambda (_hd68686909_
                                                             _eid68746911_
                                                             _id68756913_)
                                                      (if (gx#stx-pair?
                                                           _hd68686909_)
                                                          (let ((_e68716916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd68686909_)))
                    (let ((_lp-hd68726919_
                           (let () (declare (not safe)) (##car _e68716916_)))
                          (_lp-tl68736921_
                           (let () (declare (not safe)) (##cdr _e68716916_))))
                      (if (gx#stx-pair? _lp-hd68726919_)
                          (let ((_e68786924_ (gx#stx-e _lp-hd68726919_)))
                            (let ((_hd68796927_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e68786924_)))
                                  (_tl68806929_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e68786924_))))
                              (if (gx#stx-pair? _tl68806929_)
                                  (let ((_e68816932_ (gx#stx-e _tl68806929_)))
                                    (let ((_hd68826935_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e68816932_)))
                                          (_tl68836937_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e68816932_))))
                                      (if (gx#stx-null? _tl68836937_)
                                          (_loop68706906_
                                           _lp-tl68736921_
                                           (cons _hd68826935_ _eid68746911_)
                                           (cons _hd68796927_ _id68756913_))
                                          (_g68606888_ _g68616891_))))
                                  (_g68606888_ _g68616891_))))
                          (_g68606888_ _g68616891_))))
                  (let ((_eid68766940_ (reverse _eid68746911_))
                        (_id68776942_ (reverse _id68756913_)))
                    ((lambda (_L6945_ _L6946_)
                       (cons '%#extern
                             (map _generate16858_
                                  (foldr1 (lambda (_g69616964_ _g69626966_)
                                            (cons _g69616964_ _g69626966_))
                                          '()
                                          _L6946_)
                                  (foldr1 (lambda (_g69686971_ _g69696973_)
                                            (cons _g69686971_ _g69696973_))
                                          '()
                                          _L6945_))))
                     _eid68766940_
                     _id68776942_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop68706906_
                                             _target68676901_
                                             '()
                                             '()))
                                          (_g68606888_ _g68616891_)))))
                                (_g68606888_ _g68616891_))))
                        (_g68606888_ _g68616891_)))))
            (_g68596976_ _stx6855_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_stx6645_ _state6646_)
        (letrec ((_generate16648_
                  (lambda (_id6850_)
                    (let ((_eid6852_
                           (gxc#generate-runtime-binding-id _id6850_))
                          (_ident6853_
                           (gxc#generate-runtime-identifier _id6850_)))
                      (cons '%#define-runtime
                            (cons _ident6853_ (cons _eid6852_ '()))))))
                 (_generate*6649_
                  (lambda (_all6818_)
                    (let* ((_all68196827_ _all6818_)
                           (_else68216835_
                            (lambda () (cons '%#begin _all6818_)))
                           (_K68236840_ (lambda (_one6838_) _one6838_)))
                      (if (let () (declare (not safe)) (##pair? _all68196827_))
                          (let ((_hd68246843_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all68196827_)))
                                (_tl68256845_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all68196827_))))
                            (let ((_one6848_ _hd68246843_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl68256845_))
                                  (_K68236840_ _one6848_)
                                  (_else68216835_))))
                          (_else68216835_))))))
          (let* ((_g66516668_
                  (lambda (_g66526665_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66526665_)))
                 (_g66506815_
                  (lambda (_g66526671_)
                    (if (gx#stx-pair? _g66526671_)
                        (let ((_e66556673_ (gx#stx-e _g66526671_)))
                          (let ((_hd66566676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e66556673_)))
                                (_tl66576678_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e66556673_))))
                            (if (gx#stx-pair? _tl66576678_)
                                (let ((_e66586681_ (gx#stx-e _tl66576678_)))
                                  (let ((_hd66596684_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e66586681_)))
                                        (_tl66606686_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e66586681_))))
                                    (if (gx#stx-pair? _tl66606686_)
                                        (let ((_e66616689_
                                               (gx#stx-e _tl66606686_)))
                                          (let ((_hd66626692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e66616689_)))
                                                (_tl66636694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e66616689_))))
                                            (if (gx#stx-null? _tl66636694_)
                                                ((lambda (_L6697_ _L6698_)
                                                   (let _lp6714_ ((_rest6716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6698_)
                          (_r6717_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx1661116612_
                                                             _rest6716_)
                                                            (_g67226739_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx1661116612_))))
                                                       (let ((___kont1661316614_
                                                              (lambda (_L6802_)
                                                                (_lp6714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6802_
                         _r6717_)))
                     (___kont1661516616_
                      (lambda (_L6775_ _L6776_)
                        (_lp6714_
                         _L6775_
                         (cons (_generate16648_ _L6776_) _r6717_))))
                     (___kont1661716618_
                      (lambda (_L6751_)
                        (_generate*6649_
                         (foldl1 cons
                                 (cons (_generate16648_ _L6751_) '())
                                 _r6717_))))
                     (___kont1661916620_
                      (lambda () (_generate*6649_ (reverse _r6717_)))))
                 (let ((_g67206762_
                        (lambda ()
                          (let ((_L6751_ ___stx1661116612_))
                            (if (gx#identifier? _L6751_)
                                (___kont1661716618_ _L6751_)
                                (___kont1661916620_))))))
                   (if (gx#stx-pair? ___stx1661116612_)
                       (let ((_e67256791_ (gx#stx-e ___stx1661116612_)))
                         (let ((_tl67276796_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e67256791_)))
                               (_hd67266794_
                                (let ()
                                  (declare (not safe))
                                  (##car _e67256791_))))
                           (if (gx#stx-datum? _hd67266794_)
                               (let ((_e67286799_ (gx#stx-e _hd67266794_)))
                                 (if (equal? _e67286799_ '#f)
                                     (___kont1661316614_ _tl67276796_)
                                     (___kont1661516616_
                                      _tl67276796_
                                      _hd67266794_)))
                               (___kont1661516616_
                                _tl67276796_
                                _hd67266794_))))
                       (_g67206762_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd66626692_
                                                 _hd66596684_)
                                                (_g66516668_ _g66526671_))))
                                        (_g66516668_ _g66526671_))))
                                (_g66516668_ _g66526671_))))
                        (_g66516668_ _g66526671_)))))
            (_g66506815_ _stx6645_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_stx6542_ _state6543_)
        (let* ((_g65456562_
                (lambda (_g65466559_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g65466559_)))
               (_g65446642_
                (lambda (_g65466565_)
                  (if (gx#stx-pair? _g65466565_)
                      (let ((_e65496567_ (gx#stx-e _g65466565_)))
                        (let ((_hd65506570_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65496567_)))
                              (_tl65516572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65496567_))))
                          (if (gx#stx-pair? _tl65516572_)
                              (let ((_e65526575_ (gx#stx-e _tl65516572_)))
                                (let ((_hd65536578_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65526575_)))
                                      (_tl65546580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65526575_))))
                                  (if (gx#stx-pair? _tl65546580_)
                                      (let ((_e65556583_
                                             (gx#stx-e _tl65546580_)))
                                        (let ((_hd65566586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e65556583_)))
                                              (_tl65576588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e65556583_))))
                                          (if (gx#stx-null? _tl65576588_)
                                              ((lambda (_L6591_ _L6592_)
                                                 (let* ((_eid6607_
                                                         (gxc#generate-runtime-binding-id
                                                          _L6592_))
                                                        (_phi6609_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1))
                                                        (_block6611_
                                                         (gxc#meta-state-begin-phi!
                                                          _state6543_
                                                          _phi6609_)))
                                                   (let* ((_g66146621_
                                                           (lambda (_g66156618_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g66156618_)))
                                                          (_g66136639_
                                                           (lambda (_g66156624_)
                                                             ((lambda (_L6626_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state6543_
                           _phi6609_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L6626_ (cons _L6591_ '()))))))
                      _g66156624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66136639_ _eid6607_))
                                                   (if _block6611_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block6611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L6592_)
                                             (cons _eid6607_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L6592_)
                           (cons _eid6607_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd65566586_
                                               _hd65536578_)
                                              (_g65456562_ _g65466565_))))
                                      (_g65456562_ _g65466565_))))
                              (_g65456562_ _g65466565_))))
                      (_g65456562_ _g65466565_)))))
          (_g65446642_ _stx6542_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_stx6474_ _state6475_)
        (let* ((_g64776494_
                (lambda (_g64786491_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g64786491_)))
               (_g64766539_
                (lambda (_g64786497_)
                  (if (gx#stx-pair? _g64786497_)
                      (let ((_e64816499_ (gx#stx-e _g64786497_)))
                        (let ((_hd64826502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e64816499_)))
                              (_tl64836504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e64816499_))))
                          (if (gx#stx-pair? _tl64836504_)
                              (let ((_e64846507_ (gx#stx-e _tl64836504_)))
                                (let ((_hd64856510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e64846507_)))
                                      (_tl64866512_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e64846507_))))
                                  (if (gx#stx-pair? _tl64866512_)
                                      (let ((_e64876515_
                                             (gx#stx-e _tl64866512_)))
                                        (let ((_hd64886518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e64876515_)))
                                              (_tl64896520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e64876515_))))
                                          (if (gx#stx-null? _tl64896520_)
                                              ((lambda (_L6523_ _L6524_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _L6524_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6523_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd64886518_
                                               _hd64856510_)
                                              (_g64776494_ _g64786497_))))
                                      (_g64776494_ _g64786497_))))
                              (_g64776494_ _g64786497_))))
                      (_g64776494_ _g64786497_)))))
          (_g64766539_ _stx6474_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_stx6471_ _state6472_)
        (gxc#meta-state-add-phi!
         _state6472_
         (gx#current-expander-phi)
         _stx6471_)
        (gxc#generate-meta-define-values% _stx6471_ _state6472_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_stx6468_ _state6469_)
        (gxc#meta-state-add-phi!
         _state6469_
         (gx#current-expander-phi)
         _stx6468_)
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
      (lambda _$args6465_
        (apply make-struct-instance gxc#meta-state::t _$args6465_)))
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
      (lambda (_self6462_ _ctx6463_)
        (if (let ((__tmp16707
                   (let () (declare (not safe)) (##vector-length _self6462_))))
              (declare (not safe))
              (##fx< '4 __tmp16707))
            (begin
              (let ((__tmp16708
                     (gxc#module-id->path-string
                      (##structure-ref
                       _ctx6463_
                       '1
                       gx#expander-context::t
                       '#f))))
                (declare (not safe))
                (##vector-set! _self6462_ '1 __tmp16708))
              (let () (declare (not safe)) (##vector-set! _self6462_ '2 '1))
              (let ((__tmp16709 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self6462_ '3 __tmp16709))
              (let () (declare (not safe)) (##vector-set! _self6462_ '4 '())))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self6462_))))
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
      (lambda _$args6337_
        (apply make-struct-instance gxc#meta-state-block::t _$args6337_)))
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
      (lambda (_state6296_ _phi6297_)
        (let* ((_state62986306_ _state6296_)
               (_E63006310_
                (lambda () (error '"No clause matching" _state62986306_)))
               (_K63016319_
                (lambda (_open6313_ _n6314_ _src6315_)
                  (if (table-ref _open6313_ _phi6297_ '#f)
                      '#f
                      (let ((_block-ref6317_
                             (string-append
                              _src6315_
                              '"__"
                              (number->string _n6314_))))
                        (##structure-set!
                         _state6296_
                         (fx+ _n6314_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open6313_
                         _phi6297_
                         (let ((__tmp16710 (gx#current-expander-context)))
                           (declare (not safe))
                           (##structure
                            gxc#meta-state-block::t
                            __tmp16710
                            _phi6297_
                            _n6314_
                            '())))
                        _block-ref6317_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _state62986306_ 'gxc#meta-state::t))
              (let* ((_e63026322_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state62986306_ '1)))
                     (_src6325_ _e63026322_)
                     (_e63036327_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state62986306_ '2)))
                     (_n6330_ _e63036327_)
                     (_e63046332_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _state62986306_ '3)))
                     (_open6335_ _e63046332_))
                (_K63016319_ _open6335_ _n6330_ _src6325_))
              (_E63006310_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_state6290_ _phi6291_ _stx6292_)
        (let ((_block6294_
               (table-ref
                (##structure-ref _state6290_ '3 gxc#meta-state::t '#f)
                _phi6291_
                '#f)))
          (##structure-set!
           _block6294_
           (cons _stx6292_
                 (##structure-ref _block6294_ '4 gxc#meta-state-block::t '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state6285_)
        (##structure-set!
         _state6285_
         (hash-fold
          (lambda (_g16711_ _block6287_ _r6288_) (cons _block6287_ _r6288_))
          (##structure-ref _state6285_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state6285_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state6285_
         (make-table 'test: eq?)
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state6237_)
        (gxc#meta-state-end-phi! _state6237_)
        (foldl1 (lambda (_block6239_ _r6240_)
                  (let* ((_block62416250_ _block6239_)
                         (_E62436254_
                          (lambda ()
                            (error '"No clause matching" _block62416250_)))
                         (_K62446262_
                          (lambda (_code6257_ _n6258_ _phi6259_ _ctx6260_)
                            (if (null? _code6257_)
                                _r6240_
                                (cons (cons _ctx6260_
                                            (cons _phi6259_
                                                  (cons _n6258_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code6257_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r6240_)))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _block62416250_
                           'gxc#meta-state-block::t))
                        (let* ((_e62456265_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62416250_ '1)))
                               (_ctx6268_ _e62456265_)
                               (_e62466270_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62416250_ '2)))
                               (_phi6273_ _e62466270_)
                               (_e62476275_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62416250_ '3)))
                               (_n6278_ _e62476275_)
                               (_e62486280_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _block62416250_ '4)))
                               (_code6283_ _e62486280_))
                          (_K62446262_ _code6283_ _n6278_ _phi6273_ _ctx6268_))
                        (_E62436254_))))
                '()
                (##structure-ref _state6237_ '4 gxc#meta-state::t '#f))))
    (define gxc#collect-expression-refs
      (lambda (_stx6233_)
        (let ((_ht6235_ (make-table 'test: eq?)))
          (gxc#apply-collect-expression-refs _stx6233_ _ht6235_)
          _ht6235_)))
    (define gxc#collect-refs-ref%
      (lambda (_stx6176_ _ht6177_)
        (let* ((_g61796192_
                (lambda (_g61806189_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61806189_)))
               (_g61786230_
                (lambda (_g61806195_)
                  (if (gx#stx-pair? _g61806195_)
                      (let ((_e61826197_ (gx#stx-e _g61806195_)))
                        (let ((_hd61836200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e61826197_)))
                              (_tl61846202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e61826197_))))
                          (if (gx#stx-pair? _tl61846202_)
                              (let ((_e61856205_ (gx#stx-e _tl61846202_)))
                                (let ((_hd61866208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e61856205_)))
                                      (_tl61876210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e61856205_))))
                                  (if (gx#stx-null? _tl61876210_)
                                      ((lambda (_L6213_)
                                         (let* ((_bind6225_
                                                 (gx#resolve-identifier__0
                                                  _L6213_))
                                                (_eid6227_
                                                 (if _bind6225_
                                                     (##structure-ref
                                                      _bind6225_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L6213_))))
                                           (table-set!
                                            _ht6177_
                                            _eid6227_
                                            _eid6227_)))
                                       _hd61866208_)
                                      (_g61796192_ _g61806195_))))
                              (_g61796192_ _g61806195_))))
                      (_g61796192_ _g61806195_)))))
          (_g61786230_ _stx6176_))))
    (define gxc#collect-refs-setq%
      (lambda (_stx6103_ _ht6104_)
        (let* ((_g61066123_
                (lambda (_g61076120_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61076120_)))
               (_g61056173_
                (lambda (_g61076126_)
                  (if (gx#stx-pair? _g61076126_)
                      (let ((_e61106128_ (gx#stx-e _g61076126_)))
                        (let ((_hd61116131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e61106128_)))
                              (_tl61126133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e61106128_))))
                          (if (gx#stx-pair? _tl61126133_)
                              (let ((_e61136136_ (gx#stx-e _tl61126133_)))
                                (let ((_hd61146139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e61136136_)))
                                      (_tl61156141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e61136136_))))
                                  (if (gx#stx-pair? _tl61156141_)
                                      (let ((_e61166144_
                                             (gx#stx-e _tl61156141_)))
                                        (let ((_hd61176147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e61166144_)))
                                              (_tl61186149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e61166144_))))
                                          (if (gx#stx-null? _tl61186149_)
                                              ((lambda (_L6152_ _L6153_)
                                                 (let* ((_bind6168_
                                                         (gx#resolve-identifier__0
                                                          _L6153_))
                                                        (_eid6170_
                                                         (if _bind6168_
                                                             (##structure-ref
                                                              _bind6168_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L6153_))))
                                                   (table-set!
                                                    _ht6104_
                                                    _eid6170_
                                                    _eid6170_)
                                                   (gxc#compile-e
                                                    _L6152_
                                                    _ht6104_)))
                                               _hd61176147_
                                               _hd61146139_)
                                              (_g61066123_ _g61076126_))))
                                      (_g61066123_ _g61076126_))))
                              (_g61066123_ _g61076126_))))
                      (_g61066123_ _g61076126_)))))
          (_g61056173_ _stx6103_))))
    (define gxc#find-runtime-begin%
      (lambda (_stx6065_)
        (let* ((_g60676077_
                (lambda (_g60686074_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g60686074_)))
               (_g60666100_
                (lambda (_g60686080_)
                  (if (gx#stx-pair? _g60686080_)
                      (let ((_e60706082_ (gx#stx-e _g60686080_)))
                        (let ((_hd60716085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60706082_)))
                              (_tl60726087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60706082_))))
                          ((lambda (_L6090_) (ormap1 gxc#compile-e _L6090_))
                           _tl60726087_)))
                      (_g60676077_ _g60686080_)))))
          (_g60666100_ _stx6065_))))
    (define gxc#find-lambda-expression-begin%
      (lambda (_stx6027_)
        (let* ((_g60296039_
                (lambda (_g60306036_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g60306036_)))
               (_g60286062_
                (lambda (_g60306042_)
                  (if (gx#stx-pair? _g60306042_)
                      (let ((_e60326044_ (gx#stx-e _g60306042_)))
                        (let ((_hd60336047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e60326044_)))
                              (_tl60346049_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e60326044_))))
                          ((lambda (_L6052_) (gxc#compile-e (last _L6052_)))
                           _tl60346049_)))
                      (_g60296039_ _g60306042_)))))
          (_g60286062_ _stx6027_))))
    (define gxc#find-lambda-expression-begin-annotation%
      (lambda (_stx5960_)
        (let* ((_g59625979_
                (lambda (_g59635976_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g59635976_)))
               (_g59616024_
                (lambda (_g59635982_)
                  (if (gx#stx-pair? _g59635982_)
                      (let ((_e59665984_ (gx#stx-e _g59635982_)))
                        (let ((_hd59675987_
                               (let ()
                                 (declare (not safe))
                                 (##car _e59665984_)))
                              (_tl59685989_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e59665984_))))
                          (if (gx#stx-pair? _tl59685989_)
                              (let ((_e59695992_ (gx#stx-e _tl59685989_)))
                                (let ((_hd59705995_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e59695992_)))
                                      (_tl59715997_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e59695992_))))
                                  (if (gx#stx-pair? _tl59715997_)
                                      (let ((_e59726000_
                                             (gx#stx-e _tl59715997_)))
                                        (let ((_hd59736003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e59726000_)))
                                              (_tl59746005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e59726000_))))
                                          (if (gx#stx-null? _tl59746005_)
                                              ((lambda (_L6008_ _L6009_)
                                                 (gxc#compile-e _L6008_))
                                               _hd59736003_
                                               _hd59705995_)
                                              (_g59625979_ _g59635982_))))
                                      (_g59625979_ _g59635982_))))
                              (_g59625979_ _g59635982_))))
                      (_g59625979_ _g59635982_)))))
          (_g59616024_ _stx5960_))))
    (define gxc#find-lambda-expression-let-values%
      (lambda (_stx5893_)
        (let* ((_g58955912_
                (lambda (_g58965909_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58965909_)))
               (_g58945957_
                (lambda (_g58965915_)
                  (if (gx#stx-pair? _g58965915_)
                      (let ((_e58995917_ (gx#stx-e _g58965915_)))
                        (let ((_hd59005920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e58995917_)))
                              (_tl59015922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e58995917_))))
                          (if (gx#stx-pair? _tl59015922_)
                              (let ((_e59025925_ (gx#stx-e _tl59015922_)))
                                (let ((_hd59035928_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e59025925_)))
                                      (_tl59045930_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e59025925_))))
                                  (if (gx#stx-pair? _tl59045930_)
                                      (let ((_e59055933_
                                             (gx#stx-e _tl59045930_)))
                                        (let ((_hd59065936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e59055933_)))
                                              (_tl59075938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e59055933_))))
                                          (if (gx#stx-null? _tl59075938_)
                                              ((lambda (_L5941_ _L5942_)
                                                 (gxc#compile-e _L5941_))
                                               _hd59065936_
                                               _hd59035928_)
                                              (_g58955912_ _g58965915_))))
                                      (_g58955912_ _g58965915_))))
                              (_g58955912_ _g58965915_))))
                      (_g58955912_ _g58965915_)))))
          (_g58945957_ _stx5893_))))
    (define gxc#count-values-single% (lambda (_stx5891_) '1))
    (define gxc#count-values-begin%
      (lambda (_stx5809_)
        (let* ((_g58115830_
                (lambda (_g58125827_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58125827_)))
               (_g58105888_
                (lambda (_g58125833_)
                  (if (gx#stx-pair? _g58125833_)
                      (let ((_e58145835_ (gx#stx-e _g58125833_)))
                        (let ((_hd58155838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e58145835_)))
                              (_tl58165840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e58145835_))))
                          (if (gx#stx-pair/null? _tl58165840_)
                              (let ((_g16712_
                                     (gx#syntax-split-splice _tl58165840_ '0)))
                                (begin
                                  (let ((_g16713_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g16712_)
                                               (##vector-length _g16712_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g16713_ 2)))
                                        (error "Context expects 2 values"
                                               _g16713_)))
                                  (let ((_target58175843_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16712_ 0)))
                                        (_tl58195845_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g16712_ 1))))
                                    (if (gx#stx-null? _tl58195845_)
                                        (letrec ((_loop58205848_
                                                  (lambda (_hd58185851_
                                                           _expr58245853_)
                                                    (if (gx#stx-pair?
                                                         _hd58185851_)
                                                        (let ((_e58215856_
                                                               (gx#stx-e
                                                                _hd58185851_)))
                                                          (let ((_lp-hd58225859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e58215856_)))
                        (_lp-tl58235861_
                         (let () (declare (not safe)) (##cdr _e58215856_))))
                    (_loop58205848_
                     _lp-tl58235861_
                     (cons _lp-hd58225859_ _expr58245853_))))
                (let ((_expr58255864_ (reverse _expr58245853_)))
                  ((lambda (_L5867_)
                     (gxc#compile-e
                      (last (foldr1 (lambda (_g58805883_ _g58815885_)
                                      (cons _g58805883_ _g58815885_))
                                    '()
                                    _L5867_))))
                   _expr58255864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop58205848_
                                           _target58175843_
                                           '()))
                                        (_g58115830_ _g58125833_)))))
                              (_g58115830_ _g58125833_))))
                      (_g58115830_ _g58125833_)))))
          (_g58105888_ _stx5809_))))
    (define gxc#count-values-begin-annotation%
      (lambda (_stx5742_)
        (let* ((_g57445761_
                (lambda (_g57455758_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g57455758_)))
               (_g57435806_
                (lambda (_g57455764_)
                  (if (gx#stx-pair? _g57455764_)
                      (let ((_e57485766_ (gx#stx-e _g57455764_)))
                        (let ((_hd57495769_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57485766_)))
                              (_tl57505771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57485766_))))
                          (if (gx#stx-pair? _tl57505771_)
                              (let ((_e57515774_ (gx#stx-e _tl57505771_)))
                                (let ((_hd57525777_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57515774_)))
                                      (_tl57535779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57515774_))))
                                  (if (gx#stx-pair? _tl57535779_)
                                      (let ((_e57545782_
                                             (gx#stx-e _tl57535779_)))
                                        (let ((_hd57555785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e57545782_)))
                                              (_tl57565787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e57545782_))))
                                          (if (gx#stx-null? _tl57565787_)
                                              ((lambda (_L5790_ _L5791_)
                                                 (gxc#compile-e _L5790_))
                                               _hd57555785_
                                               _hd57525777_)
                                              (_g57445761_ _g57455764_))))
                                      (_g57445761_ _g57455764_))))
                              (_g57445761_ _g57455764_))))
                      (_g57445761_ _g57455764_)))))
          (_g57435806_ _stx5742_))))
    (define gxc#count-values-let-values%
      (lambda (_stx5675_)
        (let* ((_g56775694_
                (lambda (_g56785691_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g56785691_)))
               (_g56765739_
                (lambda (_g56785697_)
                  (if (gx#stx-pair? _g56785697_)
                      (let ((_e56815699_ (gx#stx-e _g56785697_)))
                        (let ((_hd56825702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e56815699_)))
                              (_tl56835704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e56815699_))))
                          (if (gx#stx-pair? _tl56835704_)
                              (let ((_e56845707_ (gx#stx-e _tl56835704_)))
                                (let ((_hd56855710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e56845707_)))
                                      (_tl56865712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e56845707_))))
                                  (if (gx#stx-pair? _tl56865712_)
                                      (let ((_e56875715_
                                             (gx#stx-e _tl56865712_)))
                                        (let ((_hd56885718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e56875715_)))
                                              (_tl56895720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e56875715_))))
                                          (if (gx#stx-null? _tl56895720_)
                                              ((lambda (_L5723_ _L5724_)
                                                 (gxc#compile-e _L5723_))
                                               _hd56885718_
                                               _hd56855710_)
                                              (_g56775694_ _g56785697_))))
                                      (_g56775694_ _g56785697_))))
                              (_g56775694_ _g56785697_))))
                      (_g56775694_ _g56785697_)))))
          (_g56765739_ _stx5675_))))
    (define gxc#count-values-call%
      (lambda (_stx5542_)
        (let* ((___stx1664116642_ _stx5542_)
               (_g55455574_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1664116642_))))
          (let ((___kont1664316644_
                 (lambda (_L5642_ _L5643_)
                   (length (foldr1 (lambda (_g56645667_ _g56655669_)
                                     (cons _g56645667_ _g56655669_))
                                   '()
                                   _L5642_))))
                (___kont1664716648_ (lambda () '#f)))
            (let ((___match1668616687_
                   (lambda (_e55495586_
                            _hd55505589_
                            _tl55515591_
                            _e55525594_
                            _hd55535597_
                            _tl55545599_
                            _e55555602_
                            _hd55565605_
                            _tl55575607_
                            _e55585610_
                            _hd55595613_
                            _tl55605615_
                            ___splice1664516646_
                            _target55615618_
                            _tl55635620_)
                     (letrec ((_loop55645623_
                               (lambda (_hd55625626_ _rand55685628_)
                                 (if (gx#stx-pair? _hd55625626_)
                                     (let ((_e55655631_
                                            (gx#stx-e _hd55625626_)))
                                       (let ((_lp-tl55675636_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e55655631_)))
                                             (_lp-hd55665634_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e55655631_))))
                                         (_loop55645623_
                                          _lp-tl55675636_
                                          (cons _lp-hd55665634_
                                                _rand55685628_))))
                                     (let ((_rand55695639_
                                            (reverse _rand55685628_)))
                                       (let ((_L5642_ _rand55695639_)
                                             (_L5643_ _hd55595613_))
                                         (if (gx#free-identifier=?
                                              _L5643_
                                              'values)
                                             (___kont1664316644_
                                              _L5642_
                                              _L5643_)
                                             (___kont1664716648_))))))))
                       (_loop55645623_ _target55615618_ '())))))
              (if (gx#stx-pair? ___stx1664116642_)
                  (let ((_e55495586_ (gx#stx-e ___stx1664116642_)))
                    (let ((_tl55515591_
                           (let () (declare (not safe)) (##cdr _e55495586_)))
                          (_hd55505589_
                           (let () (declare (not safe)) (##car _e55495586_))))
                      (if (gx#stx-pair? _tl55515591_)
                          (let ((_e55525594_ (gx#stx-e _tl55515591_)))
                            (let ((_tl55545599_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e55525594_)))
                                  (_hd55535597_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e55525594_))))
                              (if (gx#stx-pair? _hd55535597_)
                                  (let ((_e55555602_ (gx#stx-e _hd55535597_)))
                                    (let ((_tl55575607_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e55555602_)))
                                          (_hd55565605_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e55555602_))))
                                      (if (gx#identifier? _hd55565605_)
                                          (if (gx#stx-eq? '%#ref _hd55565605_)
                                              (if (gx#stx-pair? _tl55575607_)
                                                  (let ((_e55585610_
                                                         (gx#stx-e
                                                          _tl55575607_)))
                                                    (let ((_tl55605615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e55585610_)))
                                                          (_hd55595613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e55585610_))))
                                                      (if (gx#stx-null?
                                                           _tl55605615_)
                                                          (if (gx#stx-pair/null?
                                                               _tl55545599_)
                                                              (let ((___splice1664516646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl55545599_ '0)))
                        (let ((_tl55635620_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1664516646_ '1)))
                              (_target55615618_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice1664516646_ '0))))
                          (if (gx#stx-null? _tl55635620_)
                              (___match1668616687_
                               _e55495586_
                               _hd55505589_
                               _tl55515591_
                               _e55525594_
                               _hd55535597_
                               _tl55545599_
                               _e55555602_
                               _hd55565605_
                               _tl55575607_
                               _e55585610_
                               _hd55595613_
                               _tl55605615_
                               ___splice1664516646_
                               _target55615618_
                               _tl55635620_)
                              (___kont1664716648_))))
                      (___kont1664716648_))
                  (___kont1664716648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1664716648_))
                                              (___kont1664716648_))
                                          (___kont1664716648_))))
                                  (___kont1664716648_))))
                          (___kont1664716648_))))
                  (___kont1664716648_)))))))
    (define gxc#count-values-if%
      (lambda (_stx5446_)
        (let* ((_g54485469_
                (lambda (_g54495466_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54495466_)))
               (_g54475539_
                (lambda (_g54495472_)
                  (if (gx#stx-pair? _g54495472_)
                      (let ((_e54535474_ (gx#stx-e _g54495472_)))
                        (let ((_hd54545477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e54535474_)))
                              (_tl54555479_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e54535474_))))
                          (if (gx#stx-pair? _tl54555479_)
                              (let ((_e54565482_ (gx#stx-e _tl54555479_)))
                                (let ((_hd54575485_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e54565482_)))
                                      (_tl54585487_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e54565482_))))
                                  (if (gx#stx-pair? _tl54585487_)
                                      (let ((_e54595490_
                                             (gx#stx-e _tl54585487_)))
                                        (let ((_hd54605493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e54595490_)))
                                              (_tl54615495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e54595490_))))
                                          (if (gx#stx-pair? _tl54615495_)
                                              (let ((_e54625498_
                                                     (gx#stx-e _tl54615495_)))
                                                (let ((_hd54635501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e54625498_)))
                                                      (_tl54645503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e54625498_))))
                                                  (if (gx#stx-null?
                                                       _tl54645503_)
                                                      ((lambda (_L5506_
                                                                _L5507_
                                                                _L5508_)
                                                         (let ((_c155255527_
                                                                (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5507_)))
                   (if _c155255527_
                       (let* ((_c15530_ _c155255527_)
                              (_c255315533_ (gxc#compile-e _L5506_)))
                         (if _c255315533_
                             (let ((_c25536_ _c255315533_))
                               (if (fx= _c15530_ _c25536_) _c15530_ '#f))
                             '#f))
                       '#f)))
               _hd54635501_
               _hd54605493_
               _hd54575485_)
              (_g54485469_ _g54495472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g54485469_ _g54495472_))))
                                      (_g54485469_ _g54495472_))))
                              (_g54485469_ _g54495472_))))
                      (_g54485469_ _g54495472_)))))
          (_g54475539_ _stx5446_))))))
