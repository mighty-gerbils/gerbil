(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12999_ . _args13000_)
      (let* ((_g1300213012_
              (lambda (_g1300313009_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1300313009_)))
             (_g1300113040_
              (lambda (_g1300313015_)
                (if (gx#stx-pair? _g1300313015_)
                    (let ((_e1300513017_ (gx#stx-e _g1300313015_)))
                      (let ((_hd1300613020_ (##car _e1300513017_))
                            (_tl1300713022_ (##cdr _e1300513017_)))
                        ((lambda (_L13025_)
                           (let ((_$e13035_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L13025_)
                                   '#f)))
                             (if _$e13035_
                                 ((lambda (_method13038_)
                                    (apply _method13038_
                                           _stx12999_
                                           _args13000_))
                                  _$e13035_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12999_
                                  _L13025_))))
                         _hd1300613020_)))
                    (_g1300213012_ _g1300313015_)))))
        (_g1300113040_ _stx12999_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12996_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12996_ '%#begin-annotation void)
           (table-set! _tbl12996_ '%#lambda void)
           (table-set! _tbl12996_ '%#case-lambda void)
           (table-set! _tbl12996_ '%#let-values void)
           (table-set! _tbl12996_ '%#letrec-values void)
           (table-set! _tbl12996_ '%#letrec*-values void)
           (table-set! _tbl12996_ '%#quote void)
           (table-set! _tbl12996_ '%#quote-syntax void)
           (table-set! _tbl12996_ '%#call void)
           (table-set! _tbl12996_ '%#if void)
           (table-set! _tbl12996_ '%#ref void)
           (table-set! _tbl12996_ '%#set! void)
           (table-set! _tbl12996_ '%#struct-instance? void)
           (table-set! _tbl12996_ '%#struct-direct-instance? void)
           (table-set! _tbl12996_ '%#struct-ref void)
           (table-set! _tbl12996_ '%#struct-set! void)
           (table-set! _tbl12996_ '%#struct-direct-ref void)
           (table-set! _tbl12996_ '%#struct-direct-set! void)
           (table-set! _tbl12996_ '%#struct-unchecked-ref void)
           (table-set! _tbl12996_ '%#struct-unchecked-set! void)
           _tbl12996_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12992_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12992_ '%#begin void)
           (table-set! _tbl12992_ '%#begin-syntax void)
           (table-set! _tbl12992_ '%#begin-foreign void)
           (table-set! _tbl12992_ '%#module void)
           (table-set! _tbl12992_ '%#import void)
           (table-set! _tbl12992_ '%#export void)
           (table-set! _tbl12992_ '%#provide void)
           (table-set! _tbl12992_ '%#extern void)
           (table-set! _tbl12992_ '%#define-values void)
           (table-set! _tbl12992_ '%#define-syntax void)
           (table-set! _tbl12992_ '%#define-alias void)
           (table-set! _tbl12992_ '%#declare void)
           _tbl12992_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12988_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12988_ (force gxc#&void-special-form))
           (hash-copy! _tbl12988_ (force gxc#&void-expression))
           _tbl12988_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12984_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12984_ '%#begin-annotation false)
           (table-set! _tbl12984_ '%#lambda false)
           (table-set! _tbl12984_ '%#case-lambda false)
           (table-set! _tbl12984_ '%#let-values false)
           (table-set! _tbl12984_ '%#letrec-values false)
           (table-set! _tbl12984_ '%#letrec*-values false)
           (table-set! _tbl12984_ '%#quote false)
           (table-set! _tbl12984_ '%#quote-syntax false)
           (table-set! _tbl12984_ '%#call false)
           (table-set! _tbl12984_ '%#if false)
           (table-set! _tbl12984_ '%#ref false)
           (table-set! _tbl12984_ '%#set! false)
           (table-set! _tbl12984_ '%#struct-instance? false)
           (table-set! _tbl12984_ '%#struct-direct-instance? false)
           (table-set! _tbl12984_ '%#struct-ref false)
           (table-set! _tbl12984_ '%#struct-set! false)
           (table-set! _tbl12984_ '%#struct-direct-ref false)
           (table-set! _tbl12984_ '%#struct-direct-set! false)
           (table-set! _tbl12984_ '%#struct-unchecked-ref false)
           (table-set! _tbl12984_ '%#struct-unchecked-set! false)
           _tbl12984_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12980_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12980_ '%#begin false)
           (table-set! _tbl12980_ '%#begin-syntax false)
           (table-set! _tbl12980_ '%#begin-foreign false)
           (table-set! _tbl12980_ '%#module false)
           (table-set! _tbl12980_ '%#import false)
           (table-set! _tbl12980_ '%#export false)
           (table-set! _tbl12980_ '%#provide false)
           (table-set! _tbl12980_ '%#extern false)
           (table-set! _tbl12980_ '%#define-values false)
           (table-set! _tbl12980_ '%#define-syntax false)
           (table-set! _tbl12980_ '%#define-alias false)
           (table-set! _tbl12980_ '%#declare false)
           _tbl12980_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12976_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12976_ (force gxc#&false-special-form))
           (hash-copy! _tbl12976_ (force gxc#&false-expression))
           _tbl12976_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12972_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12972_ (force gxc#&void-expression))
           (hash-copy! _tbl12972_ (force gxc#&void-special-form))
           (table-set! _tbl12972_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12972_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12972_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12972_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12972_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12972_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx12965_ . _args12967_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12965_ _args12967_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl12962_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12962_ (force gxc#&void))
           (table-set! _tbl12962_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12962_ '%#module gxc#lift-modules-module%)
           _tbl12962_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx12955_ . _args12957_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12955_ _args12957_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl12952_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12952_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl12952_ '%#begin-syntax false)
           (table-set! _tbl12952_ '%#begin-foreign true)
           (table-set! _tbl12952_ '%#begin-annotation true)
           (table-set! _tbl12952_ '%#module false)
           (table-set! _tbl12952_ '%#import false)
           (table-set! _tbl12952_ '%#export false)
           (table-set! _tbl12952_ '%#provide false)
           (table-set! _tbl12952_ '%#extern false)
           (table-set! _tbl12952_ '%#define-values true)
           (table-set! _tbl12952_ '%#define-syntax false)
           (table-set! _tbl12952_ '%#define-alias false)
           (table-set! _tbl12952_ '%#declare false)
           (table-set! _tbl12952_ '%#lambda true)
           (table-set! _tbl12952_ '%#case-lambda true)
           (table-set! _tbl12952_ '%#let-values true)
           (table-set! _tbl12952_ '%#letrec-values true)
           (table-set! _tbl12952_ '%#letrec*-values true)
           (table-set! _tbl12952_ '%#quote true)
           (table-set! _tbl12952_ '%#call true)
           (table-set! _tbl12952_ '%#if true)
           (table-set! _tbl12952_ '%#ref true)
           (table-set! _tbl12952_ '%#set! true)
           (table-set! _tbl12952_ '%#struct-instance? true)
           (table-set! _tbl12952_ '%#struct-direct-instance? true)
           (table-set! _tbl12952_ '%#struct-ref true)
           (table-set! _tbl12952_ '%#struct-set! true)
           (table-set! _tbl12952_ '%#struct-direct-ref true)
           (table-set! _tbl12952_ '%#struct-direct-set! true)
           (table-set! _tbl12952_ '%#struct-unchecked-ref true)
           (table-set! _tbl12952_ '%#struct-unchecked-set! true)
           _tbl12952_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx12945_ . _args12947_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12945_ _args12947_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl12942_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12942_ (force gxc#&false))
           (table-set! _tbl12942_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl12942_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl12942_ '%#lambda values)
           (table-set! _tbl12942_ '%#case-lambda values)
           (table-set!
            _tbl12942_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12942_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl12942_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl12942_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx12935_ . _args12937_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12935_ _args12937_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&count-values
    (make-promise
     (lambda ()
       (let ((_tbl12932_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12932_ (force gxc#&false-expression))
           (table-set! _tbl12932_ '%#begin gxc#count-values-begin%)
           (table-set!
            _tbl12932_
            '%#begin-annotation
            gxc#count-values-begin-annotation%)
           (table-set! _tbl12932_ '%#lambda gxc#count-values-single%)
           (table-set! _tbl12932_ '%#case-lambda gxc#count-values-single%)
           (table-set! _tbl12932_ '%#let-values gxc#count-values-let-values%)
           (table-set!
            _tbl12932_
            '%#letrec-values
            gxc#count-values-let-values%)
           (table-set!
            _tbl12932_
            '%#letrec*-values
            gxc#count-values-let-values%)
           (table-set! _tbl12932_ '%#quote gxc#count-values-single%)
           (table-set! _tbl12932_ '%#call gxc#count-values-call%)
           (table-set! _tbl12932_ '%#if gxc#count-values-if%)
           _tbl12932_)))))
  (define gxc#apply-count-values
    (lambda (_stx12925_ . _args12927_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12925_ _args12927_))
       gxc#current-compile-methods
       (force gxc#&count-values))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl12922_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12922_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl12922_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl12922_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl12922_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl12918_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12918_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12918_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12918_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl12918_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx12911_ . _args12913_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12911_ _args12913_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl12908_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12908_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl12908_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl12908_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl12908_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl12908_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl12908_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl12908_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl12908_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl12908_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl12908_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl12908_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl12908_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl12908_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl12908_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl12908_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl12908_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl12908_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl12908_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl12908_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl12908_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl12908_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl12908_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl12908_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl12908_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl12908_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl12908_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx12901_ . _args12903_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12901_ _args12903_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl12898_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12898_ (force gxc#&generate-runtime))
           (table-set!
            _tbl12898_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl12898_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx12891_ . _args12893_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12891_ _args12893_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl12888_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12888_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl12888_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl12888_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl12888_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl12888_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl12888_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl12888_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl12888_ '%#quote void)
           (table-set! _tbl12888_ '%#quote-syntax void)
           (table-set! _tbl12888_ '%#call gxc#collect-operands)
           (table-set! _tbl12888_ '%#if gxc#collect-operands)
           (table-set! _tbl12888_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl12888_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl12888_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl12888_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl12888_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl12888_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl12888_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl12888_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl12888_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl12888_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl12888_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx12881_ . _args12883_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12881_ _args12883_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl12878_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12878_ (force gxc#&void-expression))
           (table-set! _tbl12878_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12878_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl12878_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl12878_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl12878_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl12878_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl12878_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl12878_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl12878_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12878_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl12878_ '%#begin-foreign void)
           (table-set! _tbl12878_ '%#declare void)
           _tbl12878_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx12871_ . _args12873_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12871_ _args12873_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl12868_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12868_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl12868_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl12868_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl12868_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl12868_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl12868_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12868_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12868_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12868_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12868_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12868_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl12868_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl12868_ '%#declare void)
           _tbl12868_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx12861_ . _args12863_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx12861_ _args12863_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx12818_ . _args12819_)
      (let* ((_g1282112831_
              (lambda (_g1282212828_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1282212828_)))
             (_g1282012858_
              (lambda (_g1282212834_)
                (if (gx#stx-pair? _g1282212834_)
                    (let ((_e1282412836_ (gx#stx-e _g1282212834_)))
                      (let ((_hd1282512839_ (##car _e1282412836_))
                            (_tl1282612841_ (##cdr _e1282412836_)))
                        ((lambda (_L12844_)
                           (for-each
                            (lambda (_g1285312855_)
                              (apply gxc#compile-e _g1285312855_ _args12819_))
                            (gx#stx-e _L12844_)))
                         _tl1282612841_)))
                    (_g1282112831_ _g1282212834_)))))
        (_g1282012858_ _stx12818_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx12814_ . _args12815_)
      (call-with-parameters
       (lambda () (apply gxc#collect-begin% _stx12814_ _args12815_))
       gx#current-expander-phi
       (fx+ (gx#current-expander-phi) '1))))
  (define gxc#collect-module%
    (lambda (_stx12756_ . _args12757_)
      (let* ((_g1275912773_
              (lambda (_g1276012770_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1276012770_)))
             (_g1275812811_
              (lambda (_g1276012776_)
                (if (gx#stx-pair? _g1276012776_)
                    (let ((_e1276312778_ (gx#stx-e _g1276012776_)))
                      (let ((_hd1276412781_ (##car _e1276312778_))
                            (_tl1276512783_ (##cdr _e1276312778_)))
                        (if (gx#stx-pair? _tl1276512783_)
                            (let ((_e1276612786_ (gx#stx-e _tl1276512783_)))
                              (let ((_hd1276712789_ (##car _e1276612786_))
                                    (_tl1276812791_ (##cdr _e1276612786_)))
                                ((lambda (_L12794_ _L12795_)
                                   (let ((_ctx12808_
                                          (gx#syntax-local-e__0 _L12795_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx12808_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args12757_))
                                      gx#current-expander-context
                                      _ctx12808_)))
                                 _tl1276812791_
                                 _hd1276712789_)))
                            (_g1275912773_ _g1276012776_))))
                    (_g1275912773_ _g1276012776_)))))
        (_g1275812811_ _stx12756_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx12688_ . _args12689_)
      (let* ((_g1269112708_
              (lambda (_g1269212705_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1269212705_)))
             (_g1269012753_
              (lambda (_g1269212711_)
                (if (gx#stx-pair? _g1269212711_)
                    (let ((_e1269512713_ (gx#stx-e _g1269212711_)))
                      (let ((_hd1269612716_ (##car _e1269512713_))
                            (_tl1269712718_ (##cdr _e1269512713_)))
                        (if (gx#stx-pair? _tl1269712718_)
                            (let ((_e1269812721_ (gx#stx-e _tl1269712718_)))
                              (let ((_hd1269912724_ (##car _e1269812721_))
                                    (_tl1270012726_ (##cdr _e1269812721_)))
                                (if (gx#stx-pair? _tl1270012726_)
                                    (let ((_e1270112729_
                                           (gx#stx-e _tl1270012726_)))
                                      (let ((_hd1270212732_
                                             (##car _e1270112729_))
                                            (_tl1270312734_
                                             (##cdr _e1270112729_)))
                                        (if (gx#stx-null? _tl1270312734_)
                                            ((lambda (_L12737_ _L12738_)
                                               (apply gxc#compile-e
                                                      _L12737_
                                                      _args12689_))
                                             _hd1270212732_
                                             _hd1269912724_)
                                            (_g1269112708_ _g1269212711_))))
                                    (_g1269112708_ _g1269212711_))))
                            (_g1269112708_ _g1269212711_))))
                    (_g1269112708_ _g1269212711_)))))
        (_g1269012753_ _stx12688_))))
  (define gxc#collect-define-values%
    (lambda (_stx12620_ . _args12621_)
      (let* ((_g1262312640_
              (lambda (_g1262412637_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1262412637_)))
             (_g1262212685_
              (lambda (_g1262412643_)
                (if (gx#stx-pair? _g1262412643_)
                    (let ((_e1262712645_ (gx#stx-e _g1262412643_)))
                      (let ((_hd1262812648_ (##car _e1262712645_))
                            (_tl1262912650_ (##cdr _e1262712645_)))
                        (if (gx#stx-pair? _tl1262912650_)
                            (let ((_e1263012653_ (gx#stx-e _tl1262912650_)))
                              (let ((_hd1263112656_ (##car _e1263012653_))
                                    (_tl1263212658_ (##cdr _e1263012653_)))
                                (if (gx#stx-pair? _tl1263212658_)
                                    (let ((_e1263312661_
                                           (gx#stx-e _tl1263212658_)))
                                      (let ((_hd1263412664_
                                             (##car _e1263312661_))
                                            (_tl1263512666_
                                             (##cdr _e1263312661_)))
                                        (if (gx#stx-null? _tl1263512666_)
                                            ((lambda (_L12669_ _L12670_)
                                               (apply gxc#compile-e
                                                      _L12669_
                                                      _args12621_))
                                             _hd1263412664_
                                             _hd1263112656_)
                                            (_g1262312640_ _g1262412643_))))
                                    (_g1262312640_ _g1262412643_))))
                            (_g1262312640_ _g1262412643_))))
                    (_g1262312640_ _g1262412643_)))))
        (_g1262212685_ _stx12620_))))
  (define gxc#collect-define-syntax%
    (lambda (_stx12551_ . _args12552_)
      (let* ((_g1255412571_
              (lambda (_g1255512568_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1255512568_)))
             (_g1255312617_
              (lambda (_g1255512574_)
                (if (gx#stx-pair? _g1255512574_)
                    (let ((_e1255812576_ (gx#stx-e _g1255512574_)))
                      (let ((_hd1255912579_ (##car _e1255812576_))
                            (_tl1256012581_ (##cdr _e1255812576_)))
                        (if (gx#stx-pair? _tl1256012581_)
                            (let ((_e1256112584_ (gx#stx-e _tl1256012581_)))
                              (let ((_hd1256212587_ (##car _e1256112584_))
                                    (_tl1256312589_ (##cdr _e1256112584_)))
                                (if (gx#stx-pair? _tl1256312589_)
                                    (let ((_e1256412592_
                                           (gx#stx-e _tl1256312589_)))
                                      (let ((_hd1256512595_
                                             (##car _e1256412592_))
                                            (_tl1256612597_
                                             (##cdr _e1256412592_)))
                                        (if (gx#stx-null? _tl1256612597_)
                                            ((lambda (_L12600_ _L12601_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (apply gxc#compile-e
                                                         _L12600_
                                                         _args12552_))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1256512595_
                                             _hd1256212587_)
                                            (_g1255412571_ _g1255512574_))))
                                    (_g1255412571_ _g1255512574_))))
                            (_g1255412571_ _g1255512574_))))
                    (_g1255412571_ _g1255512574_)))))
        (_g1255312617_ _stx12551_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx12483_ . _args12484_)
      (let* ((_g1248612503_
              (lambda (_g1248712500_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1248712500_)))
             (_g1248512548_
              (lambda (_g1248712506_)
                (if (gx#stx-pair? _g1248712506_)
                    (let ((_e1249012508_ (gx#stx-e _g1248712506_)))
                      (let ((_hd1249112511_ (##car _e1249012508_))
                            (_tl1249212513_ (##cdr _e1249012508_)))
                        (if (gx#stx-pair? _tl1249212513_)
                            (let ((_e1249312516_ (gx#stx-e _tl1249212513_)))
                              (let ((_hd1249412519_ (##car _e1249312516_))
                                    (_tl1249512521_ (##cdr _e1249312516_)))
                                (if (gx#stx-pair? _tl1249512521_)
                                    (let ((_e1249612524_
                                           (gx#stx-e _tl1249512521_)))
                                      (let ((_hd1249712527_
                                             (##car _e1249612524_))
                                            (_tl1249812529_
                                             (##cdr _e1249612524_)))
                                        (if (gx#stx-null? _tl1249812529_)
                                            ((lambda (_L12532_ _L12533_)
                                               (apply gxc#compile-e
                                                      _L12532_
                                                      _args12484_))
                                             _hd1249712527_
                                             _hd1249412519_)
                                            (_g1248612503_ _g1248712506_))))
                                    (_g1248612503_ _g1248712506_))))
                            (_g1248612503_ _g1248712506_))))
                    (_g1248612503_ _g1248712506_)))))
        (_g1248512548_ _stx12483_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx12365_ . _args12366_)
      (let* ((_g1236812396_
              (lambda (_g1236912393_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1236912393_)))
             (_g1236712480_
              (lambda (_g1236912399_)
                (if (gx#stx-pair? _g1236912399_)
                    (let ((_e1237212401_ (gx#stx-e _g1236912399_)))
                      (let ((_hd1237312404_ (##car _e1237212401_))
                            (_tl1237412406_ (##cdr _e1237212401_)))
                        (if (gx#stx-pair/null? _tl1237412406_)
                            (let ((_g14215_
                                   (gx#syntax-split-splice _tl1237412406_ '0)))
                              (begin
                                (let ((_g14216_
                                       (if (##values? _g14215_)
                                           (##vector-length _g14215_)
                                           1)))
                                  (if (not (##fx= _g14216_ 2))
                                      (error "Context expects 2 values"
                                             _g14216_)))
                                (let ((_target1237512409_
                                       (##vector-ref _g14215_ 0))
                                      (_tl1237712411_
                                       (##vector-ref _g14215_ 1)))
                                  (if (gx#stx-null? _tl1237712411_)
                                      (letrec ((_loop1237812414_
                                                (lambda (_hd1237612417_
                                                         _body1238212419_
                                                         _hd1238312421_)
                                                  (if (gx#stx-pair?
                                                       _hd1237612417_)
                                                      (let ((_e1237912424_
                                                             (gx#stx-e
                                                              _hd1237612417_)))
                                                        (let ((_lp-hd1238012427_
                                                               (##car _e1237912424_))
                                                              (_lp-tl1238112429_
                                                               (##cdr _e1237912424_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1238012427_)
                                                              (let ((_e1238612432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1238012427_)))
                        (let ((_hd1238712435_ (##car _e1238612432_))
                              (_tl1238812437_ (##cdr _e1238612432_)))
                          (if (gx#stx-pair? _tl1238812437_)
                              (let ((_e1238912440_ (gx#stx-e _tl1238812437_)))
                                (let ((_hd1239012443_ (##car _e1238912440_))
                                      (_tl1239112445_ (##cdr _e1238912440_)))
                                  (if (gx#stx-null? _tl1239112445_)
                                      (_loop1237812414_
                                       _lp-tl1238112429_
                                       (cons _hd1239012443_ _body1238212419_)
                                       (cons _hd1238712435_ _hd1238312421_))
                                      (_g1236812396_ _g1236912399_))))
                              (_g1236812396_ _g1236912399_))))
                      (_g1236812396_ _g1236912399_))))
              (let ((_body1238412448_ (reverse _body1238212419_))
                    (_hd1238512450_ (reverse _hd1238312421_)))
                ((lambda (_L12453_ _L12454_)
                   (for-each
                    (lambda (_g1246812470_)
                      (apply gxc#compile-e _g1246812470_ _args12366_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1247212475_ _g1247312477_)
                                (cons _g1247212475_ _g1247312477_))
                              '()
                              _L12453_))))
                 _body1238412448_
                 _hd1238512450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1237812414_
                                         _target1237512409_
                                         '()
                                         '()))
                                      (_g1236812396_ _g1236912399_)))))
                            (_g1236812396_ _g1236912399_))))
                    (_g1236812396_ _g1236912399_)))))
        (_g1236712480_ _stx12365_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx12218_ . _args12219_)
      (let* ((_g1222112256_
              (lambda (_g1222212253_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1222212253_)))
             (_g1222012362_
              (lambda (_g1222212259_)
                (if (gx#stx-pair? _g1222212259_)
                    (let ((_e1222612261_ (gx#stx-e _g1222212259_)))
                      (let ((_hd1222712264_ (##car _e1222612261_))
                            (_tl1222812266_ (##cdr _e1222612261_)))
                        (if (gx#stx-pair? _tl1222812266_)
                            (let ((_e1222912269_ (gx#stx-e _tl1222812266_)))
                              (let ((_hd1223012272_ (##car _e1222912269_))
                                    (_tl1223112274_ (##cdr _e1222912269_)))
                                (if (gx#stx-pair/null? _hd1223012272_)
                                    (let ((_g14217_
                                           (gx#syntax-split-splice
                                            _hd1223012272_
                                            '0)))
                                      (begin
                                        (let ((_g14218_
                                               (if (##values? _g14217_)
                                                   (##vector-length _g14217_)
                                                   1)))
                                          (if (not (##fx= _g14218_ 2))
                                              (error "Context expects 2 values"
                                                     _g14218_)))
                                        (let ((_target1223212277_
                                               (##vector-ref _g14217_ 0))
                                              (_tl1223412279_
                                               (##vector-ref _g14217_ 1)))
                                          (if (gx#stx-null? _tl1223412279_)
                                              (letrec ((_loop1223512282_
                                                        (lambda (_hd1223312285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1223912287_
                         _hd1224012289_)
                  (if (gx#stx-pair? _hd1223312285_)
                      (let ((_e1223612292_ (gx#stx-e _hd1223312285_)))
                        (let ((_lp-hd1223712295_ (##car _e1223612292_))
                              (_lp-tl1223812297_ (##cdr _e1223612292_)))
                          (if (gx#stx-pair? _lp-hd1223712295_)
                              (let ((_e1224312300_
                                     (gx#stx-e _lp-hd1223712295_)))
                                (let ((_hd1224412303_ (##car _e1224312300_))
                                      (_tl1224512305_ (##cdr _e1224312300_)))
                                  (if (gx#stx-pair? _tl1224512305_)
                                      (let ((_e1224612308_
                                             (gx#stx-e _tl1224512305_)))
                                        (let ((_hd1224712311_
                                               (##car _e1224612308_))
                                              (_tl1224812313_
                                               (##cdr _e1224612308_)))
                                          (if (gx#stx-null? _tl1224812313_)
                                              (_loop1223512282_
                                               _lp-tl1223812297_
                                               (cons _hd1224712311_
                                                     _expr1223912287_)
                                               (cons _hd1224412303_
                                                     _hd1224012289_))
                                              (_g1222112256_ _g1222212259_))))
                                      (_g1222112256_ _g1222212259_))))
                              (_g1222112256_ _g1222212259_))))
                      (let ((_expr1224112316_ (reverse _expr1223912287_))
                            (_hd1224212318_ (reverse _hd1224012289_)))
                        (if (gx#stx-pair? _tl1223112274_)
                            (let ((_e1224912321_ (gx#stx-e _tl1223112274_)))
                              (let ((_hd1225012324_ (##car _e1224912321_))
                                    (_tl1225112326_ (##cdr _e1224912321_)))
                                (if (gx#stx-null? _tl1225112326_)
                                    ((lambda (_L12329_ _L12330_ _L12331_)
                                       (for-each
                                        (lambda (_g1235012352_)
                                          (apply gxc#compile-e
                                                 _g1235012352_
                                                 _args12219_))
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1235412357_
                                                           _g1235512359_)
                                                    (cons _g1235412357_
                                                          _g1235512359_))
                                                  (cons _L12329_ '())
                                                  _L12330_))))
                                     _hd1225012324_
                                     _expr1224112316_
                                     _hd1224212318_)
                                    (_g1222112256_ _g1222212259_))))
                            (_g1222112256_ _g1222212259_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1223512282_
                                                 _target1223212277_
                                                 '()
                                                 '()))
                                              (_g1222112256_ _g1222212259_)))))
                                    (_g1222112256_ _g1222212259_))))
                            (_g1222112256_ _g1222212259_))))
                    (_g1222112256_ _g1222212259_)))))
        (_g1222012362_ _stx12218_))))
  (define gxc#collect-body-setq%
    (lambda (_stx12150_ . _args12151_)
      (let* ((_g1215312170_
              (lambda (_g1215412167_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1215412167_)))
             (_g1215212215_
              (lambda (_g1215412173_)
                (if (gx#stx-pair? _g1215412173_)
                    (let ((_e1215712175_ (gx#stx-e _g1215412173_)))
                      (let ((_hd1215812178_ (##car _e1215712175_))
                            (_tl1215912180_ (##cdr _e1215712175_)))
                        (if (gx#stx-pair? _tl1215912180_)
                            (let ((_e1216012183_ (gx#stx-e _tl1215912180_)))
                              (let ((_hd1216112186_ (##car _e1216012183_))
                                    (_tl1216212188_ (##cdr _e1216012183_)))
                                (if (gx#stx-pair? _tl1216212188_)
                                    (let ((_e1216312191_
                                           (gx#stx-e _tl1216212188_)))
                                      (let ((_hd1216412194_
                                             (##car _e1216312191_))
                                            (_tl1216512196_
                                             (##cdr _e1216312191_)))
                                        (if (gx#stx-null? _tl1216512196_)
                                            ((lambda (_L12199_ _L12200_)
                                               (apply gxc#compile-e
                                                      _L12199_
                                                      _args12151_))
                                             _hd1216412194_
                                             _hd1216112186_)
                                            (_g1215312170_ _g1215412173_))))
                                    (_g1215312170_ _g1215412173_))))
                            (_g1215312170_ _g1215412173_))))
                    (_g1215312170_ _g1215412173_)))))
        (_g1215212215_ _stx12150_))))
  (define gxc#collect-operands
    (lambda (_stx12063_ . _args12064_)
      (let* ((_g1206612085_
              (lambda (_g1206712082_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1206712082_)))
             (_g1206512147_
              (lambda (_g1206712088_)
                (if (gx#stx-pair? _g1206712088_)
                    (let ((_e1206912090_ (gx#stx-e _g1206712088_)))
                      (let ((_hd1207012093_ (##car _e1206912090_))
                            (_tl1207112095_ (##cdr _e1206912090_)))
                        (if (gx#stx-pair/null? _tl1207112095_)
                            (let ((_g14219_
                                   (gx#syntax-split-splice _tl1207112095_ '0)))
                              (begin
                                (let ((_g14220_
                                       (if (##values? _g14219_)
                                           (##vector-length _g14219_)
                                           1)))
                                  (if (not (##fx= _g14220_ 2))
                                      (error "Context expects 2 values"
                                             _g14220_)))
                                (let ((_target1207212098_
                                       (##vector-ref _g14219_ 0))
                                      (_tl1207412100_
                                       (##vector-ref _g14219_ 1)))
                                  (if (gx#stx-null? _tl1207412100_)
                                      (letrec ((_loop1207512103_
                                                (lambda (_hd1207312106_
                                                         _rands1207912108_)
                                                  (if (gx#stx-pair?
                                                       _hd1207312106_)
                                                      (let ((_e1207612111_
                                                             (gx#stx-e
                                                              _hd1207312106_)))
                                                        (let ((_lp-hd1207712114_
                                                               (##car _e1207612111_))
                                                              (_lp-tl1207812116_
                                                               (##cdr _e1207612111_)))
                                                          (_loop1207512103_
                                                           _lp-tl1207812116_
                                                           (cons _lp-hd1207712114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rands1207912108_))))
              (let ((_rands1208012119_ (reverse _rands1207912108_)))
                ((lambda (_L12122_)
                   (for-each
                    (lambda (_g1213512137_)
                      (apply gxc#compile-e _g1213512137_ _args12064_))
                    (begin
                      '#!void
                      (foldr1 (lambda (_g1213912142_ _g1214012144_)
                                (cons _g1213912142_ _g1214012144_))
                              '()
                              _L12122_))))
                 _rands1208012119_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1207512103_
                                         _target1207212098_
                                         '()))
                                      (_g1206612085_ _g1206712088_)))))
                            (_g1206612085_ _g1206712088_))))
                    (_g1206612085_ _g1206712088_)))))
        (_g1206512147_ _stx12063_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11994_)
      (let* ((_g1199612013_
              (lambda (_g1199712010_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1199712010_)))
             (_g1199512060_
              (lambda (_g1199712016_)
                (if (gx#stx-pair? _g1199712016_)
                    (let ((_e1200012018_ (gx#stx-e _g1199712016_)))
                      (let ((_hd1200112021_ (##car _e1200012018_))
                            (_tl1200212023_ (##cdr _e1200012018_)))
                        (if (gx#stx-pair? _tl1200212023_)
                            (let ((_e1200312026_ (gx#stx-e _tl1200212023_)))
                              (let ((_hd1200412029_ (##car _e1200312026_))
                                    (_tl1200512031_ (##cdr _e1200312026_)))
                                (if (gx#stx-pair? _tl1200512031_)
                                    (let ((_e1200612034_
                                           (gx#stx-e _tl1200512031_)))
                                      (let ((_hd1200712037_
                                             (##car _e1200612034_))
                                            (_tl1200812039_
                                             (##cdr _e1200612034_)))
                                        (if (gx#stx-null? _tl1200812039_)
                                            ((lambda (_L12042_ _L12043_)
                                               (gx#stx-for-each1
                                                (lambda (_bind12058_)
                                                  (if (gx#identifier?
                                                       _bind12058_)
                                                      (gxc#add-module-binding!
                                                       _bind12058_
                                                       '#f)
                                                      '#!void))
                                                _L12043_))
                                             _hd1200712037_
                                             _hd1200412029_)
                                            (_g1199612013_ _g1199712016_))))
                                    (_g1199612013_ _g1199712016_))))
                            (_g1199612013_ _g1199712016_))))
                    (_g1199612013_ _g1199712016_)))))
        (_g1199512060_ _stx11994_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11927_)
      (let* ((_g1192911946_
              (lambda (_g1193011943_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1193011943_)))
             (_g1192811991_
              (lambda (_g1193011949_)
                (if (gx#stx-pair? _g1193011949_)
                    (let ((_e1193311951_ (gx#stx-e _g1193011949_)))
                      (let ((_hd1193411954_ (##car _e1193311951_))
                            (_tl1193511956_ (##cdr _e1193311951_)))
                        (if (gx#stx-pair? _tl1193511956_)
                            (let ((_e1193611959_ (gx#stx-e _tl1193511956_)))
                              (let ((_hd1193711962_ (##car _e1193611959_))
                                    (_tl1193811964_ (##cdr _e1193611959_)))
                                (if (gx#stx-pair? _tl1193811964_)
                                    (let ((_e1193911967_
                                           (gx#stx-e _tl1193811964_)))
                                      (let ((_hd1194011970_
                                             (##car _e1193911967_))
                                            (_tl1194111972_
                                             (##cdr _e1193911967_)))
                                        (if (gx#stx-null? _tl1194111972_)
                                            ((lambda (_L11975_ _L11976_)
                                               (gxc#add-module-binding!
                                                _L11976_
                                                '#t))
                                             _hd1194011970_
                                             _hd1193711962_)
                                            (_g1192911946_ _g1193011949_))))
                                    (_g1192911946_ _g1193011949_))))
                            (_g1192911946_ _g1193011949_))))
                    (_g1192911946_ _g1193011949_)))))
        (_g1192811991_ _stx11927_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11869_ _modules11870_)
      (let* ((_g1187211886_
              (lambda (_g1187311883_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1187311883_)))
             (_g1187111924_
              (lambda (_g1187311889_)
                (if (gx#stx-pair? _g1187311889_)
                    (let ((_e1187611891_ (gx#stx-e _g1187311889_)))
                      (let ((_hd1187711894_ (##car _e1187611891_))
                            (_tl1187811896_ (##cdr _e1187611891_)))
                        (if (gx#stx-pair? _tl1187811896_)
                            (let ((_e1187911899_ (gx#stx-e _tl1187811896_)))
                              (let ((_hd1188011902_ (##car _e1187911899_))
                                    (_tl1188111904_ (##cdr _e1187911899_)))
                                ((lambda (_L11907_ _L11908_)
                                   (let ((_ctx11921_
                                          (gx#syntax-local-e__0 _L11908_)))
                                     (begin
                                       (set-box!
                                        _modules11870_
                                        (cons _ctx11921_
                                              (unbox _modules11870_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11921_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11870_))
                                        gx#current-expander-context
                                        _ctx11921_))))
                                 _tl1188111904_
                                 _hd1188011902_)))
                            (_g1187211886_ _g1187311889_))))
                    (_g1187211886_ _g1187311889_)))))
        (_g1187111924_ _stx11869_))))
  (define gxc#add-module-binding!
    (lambda (_id11863_ _syntax?11864_)
      (let ((_eid11866_
             (##structure-ref
              (gx#resolve-identifier__0 _id11863_)
              '1
              gx#binding::t
              '#f))
            (_ht11867_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11866_)
            '#!void
            (table-set!
             _ht11867_
             _eid11866_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11866_)
              _syntax?11864_))))))
  (define gxc#runtime-identifier=?
    (lambda (_id111856_ _id211857_)
      (letrec ((_symbol-e11859_
                (lambda (_id11861_)
                  (if (symbol? _id11861_)
                      _id11861_
                      (gxc#generate-runtime-binding-id _id11861_)))))
        (eq? (_symbol-e11859_ _id111856_) (_symbol-e11859_ _id211857_)))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id11834_)
      (let ((_$e11836_
             (if (##structure-direct-instance-of?
                  _id11834_
                  'gx#syntax-quote::t)
                 (gx#resolve-identifier__0 _id11834_)
                 '#f)))
        (if _$e11836_
            ((lambda (_bind11839_)
               (let ((_eid11841_
                      (##structure-ref _bind11839_ '1 gx#binding::t '#f))
                     (_ht11842_
                      (##structure-ref
                       (gxc#current-compile-symbol-table)
                       '2
                       gxc#symbol-table::t
                       '#f)))
                 (if (interned-symbol? _eid11841_)
                     _eid11841_
                     (let ((_$e11844_ (table-ref _ht11842_ _eid11841_ '#f)))
                       (if _$e11844_
                           (values _$e11844_)
                           (if (##structure-instance-of?
                                _bind11839_
                                'gx#local-binding::t)
                               (let ((_gid11847_
                                      (gxc#generate-runtime-gensym-reference__0
                                       _eid11841_)))
                                 (begin
                                   (table-set! _ht11842_ _eid11841_ _gid11847_)
                                   _gid11847_))
                               (if (##structure-instance-of?
                                    _bind11839_
                                    'gx#module-binding::t)
                                   (let ((_gid11854_
                                          (let ((_$e11849_
                                                 (##structure-ref
                                                  (##structure-ref
                                                   _bind11839_
                                                   '4
                                                   gx#module-binding::t
                                                   '#f)
                                                  '6
                                                  gx#module-context::t
                                                  '#f)))
                                            (if _$e11849_
                                                ((lambda (_ns11852_)
                                                   (make-symbol
                                                    _ns11852_
                                                    '"#"
                                                    _eid11841_))
                                                 _$e11849_)
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _eid11841_)))))
                                     (begin
                                       (table-set!
                                        _ht11842_
                                        _eid11841_
                                        _gid11854_)
                                       _gid11854_))
                                   (gxc#raise-compile-error
                                    '"Cannot compile reference to uninterned binding"
                                    _id11834_
                                    _eid11841_
                                    _bind11839_))))))))
             _$e11836_)
            (if (interned-symbol? (gx#stx-e _id11834_))
                (gx#stx-e _id11834_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id11834_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id11832_)
      (if (gx#identifier? _id11832_)
          (gxc#generate-runtime-binding-id _id11832_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym11812_ _quote?11813_)
        (let* ((_ht11815_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e11817_ (table-ref _ht11815_ _sym11812_ '#f)))
          (if _$e11817_
              (values _$e11817_)
              (let ((_g11820_
                     (if _quote?11813_
                         (make-symbol
                          '"__"
                          _sym11812_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym11812_ '"_"))))
                (begin
                  (table-set! _ht11815_ _sym11812_ _g11820_)
                  _g11820_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym11825_)
          (let ((_quote?11827_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym11825_
             _quote?11827_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g14222_
          (let ((_g14221_ (length _g14222_)))
            (cond ((##fx= _g14221_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g14222_))
                  ((##fx= _g14221_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g14222_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g14222_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id11809_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id11809_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key11769_)
      (if (interned-symbol? _key11769_)
          _key11769_
          (if (uninterned-symbol? _key11769_)
              (gxc#generate-runtime-gensym-reference__0 _key11769_)
              (let* ((_key1177011777_ _key11769_)
                     (_E1177211781_
                      (lambda ()
                        (error '"No clause matching" _key1177011777_)))
                     (_K1177311797_
                      (lambda (_mark11784_ _eid11785_)
                        (let ((_$e11787_
                               (##structure-ref
                                _mark11784_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e11787_
                              ((lambda (_ht11790_)
                                 (let ((_$e11792_
                                        (table-ref _ht11790_ _eid11785_ '#f)))
                                   (if _$e11792_
                                       ((lambda (_id11795_)
                                          (if (interned-symbol? _id11795_)
                                              _id11795_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id11795_)))
                                        _$e11792_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid11785_))))
                               _$e11787_)
                              (gxc#generate-runtime-identifier-key
                               _eid11785_))))))
                (if (##pair? _key1177011777_)
                    (let ((_hd1177411800_ (##car _key1177011777_))
                          (_tl1177511802_ (##cdr _key1177011777_)))
                      (let* ((_eid11805_ _hd1177411800_)
                             (_mark11807_ _tl1177511802_))
                        (_K1177311797_ _mark11807_ _eid11805_)))
                    (_E1177211781_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top11756_)
        (if _top11756_
            (let ((_ns11758_
                   (##structure-ref
                    (gx#core-context-top__1 (gx#current-expander-context))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi11759_ (gx#current-expander-phi)))
              (if (fxpositive? _phi11759_)
                  (make-symbol
                   _ns11758_
                   '"["
                   (number->string _phi11759_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns11758_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top11765_ '#f))
            (gxc#generate-runtime-temporary__% _top11765_))))
      (define gxc#generate-runtime-temporary
        (lambda _g14224_
          (let ((_g14223_ (length _g14224_)))
            (cond ((##fx= _g14223_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g14224_))
                  ((##fx= _g14223_ 1)
                   (apply gxc#generate-runtime-temporary__% _g14224_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g14224_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx11753_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx11673_)
      (let* ((_g1167511685_
              (lambda (_g1167611682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1167611682_)))
             (_g1167411750_
              (lambda (_g1167611688_)
                (if (gx#stx-pair? _g1167611688_)
                    (let ((_e1167811690_ (gx#stx-e _g1167611688_)))
                      (let ((_hd1167911693_ (##car _e1167811690_))
                            (_tl1168011695_ (##cdr _e1167811690_)))
                        ((lambda (_L11698_)
                           (let* ((_body11708_
                                   (gx#stx-map1 gxc#compile-e _L11698_))
                                  (_body11747_
                                   (filter (lambda (_stx11710_)
                                             (let* ((___stx1313913140_
                                                     _stx11710_)
                                                    (_g1171311722_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        ___stx1313913140_))))
                                               (let ((___kont1314113142_
                                                      (lambda () '#f))
                                                     (___kont1314313144_
                                                      (lambda () '#t)))
                                                 (if (gx#stx-pair?
                                                      ___stx1313913140_)
                                                     (let ((_e1171511734_
                                                            (gx#stx-e
                                                             ___stx1313913140_)))
                                                       (let ((_tl1171711739_
                                                              (##cdr _e1171511734_))
                                                             (_hd1171611737_
                                                              (##car _e1171511734_)))
                                                         (if (gx#identifier?
                                                              _hd1171611737_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'begin
                          _hd1171611737_)
                         (if (gx#stx-null? _tl1171711739_)
                             (___kont1314113142_)
                             (___kont1314313144_))
                         (___kont1314313144_))
                     (___kont1314313144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont1314313144_)))))
                                           _body11708_)))
                             (if (fx= (length _body11747_) '1)
                                 (car _body11747_)
                                 (cons 'begin _body11747_))))
                         _tl1168011695_)))
                    (_g1167511685_ _g1167611688_)))))
        (_g1167411750_ _stx11673_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx11635_)
      (let* ((_g1163711647_
              (lambda (_g1163811644_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1163811644_)))
             (_g1163611670_
              (lambda (_g1163811650_)
                (if (gx#stx-pair? _g1163811650_)
                    (let ((_e1164011652_ (gx#stx-e _g1163811650_)))
                      (let ((_hd1164111655_ (##car _e1164011652_))
                            (_tl1164211657_ (##cdr _e1164011652_)))
                        ((lambda (_L11660_)
                           (cons 'begin (gx#syntax->datum _L11660_)))
                         _tl1164211657_)))
                    (_g1163711647_ _g1163811650_)))))
        (_g1163611670_ _stx11635_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx11512_)
      (let* ((___stx1315913160_ _stx11512_)
             (_g1151511543_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1315913160_))))
        (let ((___kont1316113162_
               (lambda (_L11617_ _L11618_) (gxc#compile-e _L11617_)))
              (___kont1316313164_
               (lambda (_L11572_ _L11573_)
                 (cons 'begin
                       (cons (cons 'declare (map gx#syntax->datum _L11573_))
                             (cons (gxc#compile-e _L11572_) '()))))))
          (let ((___match1318413185_
                 (lambda (_e1151911593_
                          _hd1152011596_
                          _tl1152111598_
                          _e1152211601_
                          _hd1152311604_
                          _tl1152411606_
                          _e1152511609_
                          _hd1152611612_
                          _tl1152711614_)
                   (let ((_L11617_ _hd1152611612_) (_L11618_ _hd1152311604_))
                     (if (gx#identifier? _L11618_)
                         (___kont1316113162_ _L11617_ _L11618_)
                         (___kont1316313164_
                          _hd1152611612_
                          _hd1152311604_))))))
            (if (gx#stx-pair? ___stx1315913160_)
                (let ((_e1151911593_ (gx#stx-e ___stx1315913160_)))
                  (let ((_tl1152111598_ (##cdr _e1151911593_))
                        (_hd1152011596_ (##car _e1151911593_)))
                    (if (gx#stx-pair? _tl1152111598_)
                        (let ((_e1152211601_ (gx#stx-e _tl1152111598_)))
                          (let ((_tl1152411606_ (##cdr _e1152211601_))
                                (_hd1152311604_ (##car _e1152211601_)))
                            (if (gx#stx-pair? _tl1152411606_)
                                (let ((_e1152511609_
                                       (gx#stx-e _tl1152411606_)))
                                  (let ((_tl1152711614_ (##cdr _e1152511609_))
                                        (_hd1152611612_ (##car _e1152511609_)))
                                    (if (gx#stx-null? _tl1152711614_)
                                        (___match1318413185_
                                         _e1151911593_
                                         _hd1152011596_
                                         _tl1152111598_
                                         _e1152211601_
                                         _hd1152311604_
                                         _tl1152411606_
                                         _e1152511609_
                                         _hd1152611612_
                                         _tl1152711614_)
                                        (_g1151511543_))))
                                (_g1151511543_))))
                        (_g1151511543_))))
                (_g1151511543_)))))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx11474_)
      (let* ((_g1147611486_
              (lambda (_g1147711483_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1147711483_)))
             (_g1147511509_
              (lambda (_g1147711489_)
                (if (gx#stx-pair? _g1147711489_)
                    (let ((_e1147911491_ (gx#stx-e _g1147711489_)))
                      (let ((_hd1148011494_ (##car _e1147911491_))
                            (_tl1148111496_ (##cdr _e1147911491_)))
                        ((lambda (_L11499_)
                           (cons 'declare (map gx#syntax->datum _L11499_)))
                         _tl1148111496_)))
                    (_g1147611486_ _g1147711489_)))))
        (_g1147511509_ _stx11474_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx11221_)
      (let* ((_g1122311240_
              (lambda (_g1122411237_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1122411237_)))
             (_g1122211471_
              (lambda (_g1122411243_)
                (if (gx#stx-pair? _g1122411243_)
                    (let ((_e1122711245_ (gx#stx-e _g1122411243_)))
                      (let ((_hd1122811248_ (##car _e1122711245_))
                            (_tl1122911250_ (##cdr _e1122711245_)))
                        (if (gx#stx-pair? _tl1122911250_)
                            (let ((_e1123011253_ (gx#stx-e _tl1122911250_)))
                              (let ((_hd1123111256_ (##car _e1123011253_))
                                    (_tl1123211258_ (##cdr _e1123011253_)))
                                (if (gx#stx-pair? _tl1123211258_)
                                    (let ((_e1123311261_
                                           (gx#stx-e _tl1123211258_)))
                                      (let ((_hd1123411264_
                                             (##car _e1123311261_))
                                            (_tl1123511266_
                                             (##cdr _e1123311261_)))
                                        (if (gx#stx-null? _tl1123511266_)
                                            ((lambda (_L11269_ _L11270_)
                                               (let* ((___stx1323713238_
                                                       _L11270_)
                                                      (_g1128711301_
                                                       (lambda ()
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx1323713238_))))
                                                 (let ((___kont1323913240_
                                                        (lambda ()
                                                          (gxc#compile-e
                                                           _L11269_)))
                                                       (___kont1324113242_
                                                        (lambda (_L11433_)
                                                          (let ((_eid11442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-binding-id _L11433_)))
                    (begin
                      (let ((_lambda-expr1144311445_
                             (gxc#apply-find-lambda-expression _L11269_)))
                        (if _lambda-expr1144311445_
                            (let ((_lambda-expr11448_ _lambda-expr1144311445_))
                              (table-set!
                               (gxc#current-compile-runtime-names)
                               _lambda-expr11448_
                               _eid11442_))
                            '#f))
                      (cons 'define
                            (cons _eid11442_
                                  (cons (gxc#compile-e _L11269_) '())))))))
               (___kont1324313244_
                (lambda ()
                  (let* ((_tmp11308_ (gxc#generate-runtime-temporary__% '#t))
                         (_body11417_
                          (let _lp11310_ ((_rest11312_ _L11270_)
                                          (_k11313_ '0)
                                          (_r11314_ '()))
                            (let* ((___stx1320713208_ _rest11312_)
                                   (_g1131911336_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx1320713208_))))
                              (let ((___kont1320913210_
                                     (lambda (_L11404_)
                                       (_lp11310_
                                        _L11404_
                                        (fx+ _k11313_ '1)
                                        _r11314_)))
                                    (___kont1321113212_
                                     (lambda (_L11377_ _L11378_)
                                       (_lp11310_
                                        _L11377_
                                        (fx+ _k11313_ '1)
                                        (cons (cons 'define
                                                    (cons (gxc#generate-runtime-binding-id
                                                           _L11378_)
                                                          (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tmp11308_
                         _k11313_
                         _L11377_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r11314_))))
                                    (___kont1321313214_
                                     (lambda (_L11348_)
                                       (foldl1 cons
                                               (cons (cons 'define
                                                           (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11348_)
                         (cons (gxc#generate-runtime-values->list
                                _tmp11308_
                                _k11313_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r11314_)))
                                    (___kont1321513216_
                                     (lambda () (reverse _r11314_))))
                                (let ((_g1131711364_
                                       (lambda ()
                                         (let ((_L11348_ ___stx1320713208_))
                                           (if (gx#identifier? _L11348_)
                                               (___kont1321313214_ _L11348_)
                                               (___kont1321513216_))))))
                                  (if (gx#stx-pair? ___stx1320713208_)
                                      (let ((_e1132211393_
                                             (gx#stx-e ___stx1320713208_)))
                                        (let ((_tl1132411398_
                                               (##cdr _e1132211393_))
                                              (_hd1132311396_
                                               (##car _e1132211393_)))
                                          (if (gx#stx-datum? _hd1132311396_)
                                              (let ((_e1132511401_
                                                     (gx#stx-e
                                                      _hd1132311396_)))
                                                (if (equal? _e1132511401_ '#f)
                                                    (___kont1320913210_
                                                     _tl1132411398_)
                                                    (___kont1321113212_
                                                     _tl1132411398_
                                                     _hd1132311396_)))
                                              (___kont1321113212_
                                               _tl1132411398_
                                               _hd1132311396_))))
                                      (_g1131711364_))))))))
                    (cons 'begin
                          (cons (cons 'define
                                      (cons _tmp11308_
                                            (cons (gxc#compile-e _L11269_)
                                                  '())))
                                (cons (gxc#generate-runtime-check-values
                                       _tmp11308_
                                       _L11270_
                                       _L11269_)
                                      _body11417_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        ___stx1323713238_)
                                                       (let ((_e1128911455_
                                                              (gx#stx-e
                                                               ___stx1323713238_)))
                                                         (let ((_tl1129111460_
                                                                (##cdr _e1128911455_))
                                                               (_hd1129011458_
                                                                (##car _e1128911455_)))
                                                           (if (gx#stx-datum?
                                                                _hd1129011458_)
                                                               (let ((_e1129211463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1129011458_)))
                         (if (equal? _e1129211463_ '#f)
                             (if (gx#stx-null? _tl1129111460_)
                                 (___kont1323913240_)
                                 (___kont1324313244_))
                             (if (gx#stx-null? _tl1129111460_)
                                 (___kont1324113242_ _hd1129011458_)
                                 (___kont1324313244_))))
                       (if (gx#stx-null? _tl1129111460_)
                           (___kont1324113242_ _hd1129011458_)
                           (___kont1324313244_)))))
               (___kont1324313244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1123411264_
                                             _hd1123111256_)
                                            (_g1122311240_ _g1122411243_))))
                                    (_g1122311240_ _g1122411243_))))
                            (_g1122311240_ _g1122411243_))))
                    (_g1122311240_ _g1122411243_)))))
        (_g1122211471_ _stx11221_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals11197_ _hd11198_ _expr11199_)
      (let ((_$e11201_ (gxc#apply-count-values _expr11199_)))
        (if _$e11201_
            ((lambda (_count11204_)
               (let ((_len11206_ (gx#stx-length _hd11198_))
                     (_cmp11207_ (if (gx#stx-list? _hd11198_) fx= fx>=)))
                 (if (let ((_$e11209_ (fx= _len11206_ '0)))
                       (if _$e11209_
                           _$e11209_
                           (_cmp11207_ _count11204_ _len11206_)))
                     '#!void
                     (gxc#raise-compile-error
                      '"Value count mismatch"
                      _expr11199_
                      _hd11198_))))
             _$e11201_)
            (let* ((_len11212_ (gx#stx-length _hd11198_))
                   (_cmp11214_ (if (gx#stx-list? _hd11198_) '##fx= '##fx>=))
                   (_errmsg11216_
                    (string-append
                     (if (gx#stx-list? _hd11198_)
                         '"Context expects "
                         '"Context expects at least ")
                     (number->string _len11212_)
                     '" values"))
                   (_count11218_ (gxc#generate-runtime-temporary__0)))
              (if (if (not (gx#stx-list? _hd11198_)) (fx= _len11212_ '0) '#f)
                  '#!void
                  (cons 'let
                        (cons (cons (cons _count11218_
                                          (cons (gxc#generate-runtime-values-count
                                                 _vals11197_)
                                                '()))
                                    '())
                              (cons (cons 'if
                                          (cons (cons 'not
                                                      (cons (cons _cmp11214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11218_ (cons _len11212_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'error
                                                            (cons _errmsg11216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _count11218_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))))))
  (define gxc#generate-runtime-values-count
    (lambda (_var11195_)
      (cons 'if
            (cons (cons '##values? (cons _var11195_ '()))
                  (cons (cons '##vector-length (cons _var11195_ '()))
                        (cons '1 '()))))))
  (define gxc#generate-runtime-values-ref
    (lambda (_var11191_ _i11192_ _rest11193_)
      (if (if (fx= _i11192_ '0) (not (gx#stx-pair? _rest11193_)) '#f)
          (cons 'if
                (cons (cons '##values? (cons _var11191_ '()))
                      (cons (cons '##vector-ref
                                  (cons _var11191_ (cons '0 '())))
                            (cons _var11191_ '()))))
          (cons '##vector-ref (cons _var11191_ (cons _i11192_ '()))))))
  (define gxc#generate-runtime-values->list
    (lambda (_var11188_ _i11189_)
      (if (fx= _i11189_ '0)
          (cons 'if
                (cons (cons '##values? (cons _var11188_ '()))
                      (cons (cons '##vector->list (cons _var11188_ '()))
                            (cons (cons 'list (cons _var11188_ '())) '()))))
          (if (fx= _i11189_ '1)
              (cons 'if
                    (cons (cons '##values? (cons _var11188_ '()))
                          (cons (cons '##cdr
                                      (cons (cons '##vector->list
                                                  (cons _var11188_ '()))
                                            '()))
                                (cons ''() '()))))
              (cons 'list-tail
                    (cons (cons '##vector->list (cons _var11188_ '()))
                          (cons _i11189_ '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx11121_)
      (let* ((_g1112311140_
              (lambda (_g1112411137_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1112411137_)))
             (_g1112211185_
              (lambda (_g1112411143_)
                (if (gx#stx-pair? _g1112411143_)
                    (let ((_e1112711145_ (gx#stx-e _g1112411143_)))
                      (let ((_hd1112811148_ (##car _e1112711145_))
                            (_tl1112911150_ (##cdr _e1112711145_)))
                        (if (gx#stx-pair? _tl1112911150_)
                            (let ((_e1113011153_ (gx#stx-e _tl1112911150_)))
                              (let ((_hd1113111156_ (##car _e1113011153_))
                                    (_tl1113211158_ (##cdr _e1113011153_)))
                                (if (gx#stx-pair? _tl1113211158_)
                                    (let ((_e1113311161_
                                           (gx#stx-e _tl1113211158_)))
                                      (let ((_hd1113411164_
                                             (##car _e1113311161_))
                                            (_tl1113511166_
                                             (##cdr _e1113311161_)))
                                        (if (gx#stx-null? _tl1113511166_)
                                            ((lambda (_L11169_ _L11170_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L11170_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L11169_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1113411164_
                                             _hd1113111156_)
                                            (_g1112311140_ _g1112411143_))))
                                    (_g1112311140_ _g1112411143_))))
                            (_g1112311140_ _g1112411143_))))
                    (_g1112311140_ _g1112411143_)))))
        (_g1112211185_ _stx11121_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd11119_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd11119_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx9662_)
      (letrec ((_dispatch-case?9664_
                (lambda (_hd10349_ _body10350_)
                  (let* ((_form10352_ (cons _hd10349_ (cons _body10350_ '())))
                         (___stx1326913270_ _form10352_)
                         (_g1035710514_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1326913270_))))
                    (let ((___kont1327113272_
                           (lambda (_L11039_ _L11040_ _L11041_) '#t))
                          (___kont1327713278_
                           (lambda (_L10827_
                                    _L10828_
                                    _L10829_
                                    _L10830_
                                    _L10831_
                                    _L10832_)
                             '#t))
                          (___kont1328313284_
                           (lambda (_L10622_ _L10623_ _L10624_ _L10625_) '#t))
                          (___kont1328513286_ (lambda () '#f)))
                      (let* ((___match1341013411_
                              (lambda (_e1047410526_
                                       _hd1047510529_
                                       _tl1047610531_
                                       _e1047710534_
                                       _hd1047810537_
                                       _tl1047910539_
                                       _e1048010542_
                                       _hd1048110545_
                                       _tl1048210547_
                                       _e1048310550_
                                       _hd1048410553_
                                       _tl1048510555_
                                       _e1048610558_
                                       _hd1048710561_
                                       _tl1048810563_
                                       _e1048910566_
                                       _hd1049010569_
                                       _tl1049110571_
                                       _e1049210574_
                                       _hd1049310577_
                                       _tl1049410579_
                                       _e1049510582_
                                       _hd1049610585_
                                       _tl1049710587_
                                       _e1049810590_
                                       _hd1049910593_
                                       _tl1050010595_
                                       _e1050110598_
                                       _hd1050210601_
                                       _tl1050310603_
                                       _e1050410606_
                                       _hd1050510609_
                                       _tl1050610611_
                                       _e1050710614_
                                       _hd1050810617_
                                       _tl1050910619_)
                                (let ((_L10622_ _hd1050810617_)
                                      (_L10623_ _hd1049910593_)
                                      (_L10624_ _hd1049010569_)
                                      (_L10625_ _hd1047510529_))
                                  (if (if (gx#identifier? _L10625_)
                                          (if (gxc#runtime-identifier=?
                                               _L10624_
                                               'apply)
                                              (if (gx#free-identifier=?
                                                   _L10625_
                                                   _L10622_)
                                                  (not (gx#free-identifier=?
                                                        _L10623_
                                                        _L10625_))
                                                  '#f)
                                              '#f)
                                          '#f)
                                      (___kont1328313284_
                                       _L10622_
                                       _L10623_
                                       _L10624_
                                       _L10625_)
                                      (___kont1328513286_)))))
                             (___match1338213383_
                              (lambda (_e1047410526_
                                       _hd1047510529_
                                       _tl1047610531_
                                       _e1047710534_
                                       _hd1047810537_
                                       _tl1047910539_
                                       _e1048010542_
                                       _hd1048110545_
                                       _tl1048210547_
                                       _e1048310550_
                                       _hd1048410553_
                                       _tl1048510555_
                                       _e1048610558_
                                       _hd1048710561_
                                       _tl1048810563_
                                       _e1048910566_
                                       _hd1049010569_
                                       _tl1049110571_
                                       _e1049210574_
                                       _hd1049310577_
                                       _tl1049410579_
                                       _e1049510582_
                                       _hd1049610585_
                                       _tl1049710587_
                                       _e1049810590_
                                       _hd1049910593_
                                       _tl1050010595_)
                                (if (gx#stx-pair? _tl1049410579_)
                                    (let ((_e1050110598_
                                           (gx#stx-e _tl1049410579_)))
                                      (let ((_tl1050310603_
                                             (##cdr _e1050110598_))
                                            (_hd1050210601_
                                             (##car _e1050110598_)))
                                        (if (gx#stx-pair? _hd1050210601_)
                                            (let ((_e1050410606_
                                                   (gx#stx-e _hd1050210601_)))
                                              (let ((_tl1050610611_
                                                     (##cdr _e1050410606_))
                                                    (_hd1050510609_
                                                     (##car _e1050410606_)))
                                                (if (gx#identifier?
                                                     _hd1050510609_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd1050510609_)
                                                        (if (gx#stx-pair?
                                                             _tl1050610611_)
                                                            (let ((_e1050710614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1050610611_)))
                      (let ((_tl1050910619_ (##cdr _e1050710614_))
                            (_hd1050810617_ (##car _e1050710614_)))
                        (if (gx#stx-null? _tl1050910619_)
                            (if (gx#stx-null? _tl1050310603_)
                                (if (gx#stx-null? _tl1047910539_)
                                    (___match1341013411_
                                     _e1047410526_
                                     _hd1047510529_
                                     _tl1047610531_
                                     _e1047710534_
                                     _hd1047810537_
                                     _tl1047910539_
                                     _e1048010542_
                                     _hd1048110545_
                                     _tl1048210547_
                                     _e1048310550_
                                     _hd1048410553_
                                     _tl1048510555_
                                     _e1048610558_
                                     _hd1048710561_
                                     _tl1048810563_
                                     _e1048910566_
                                     _hd1049010569_
                                     _tl1049110571_
                                     _e1049210574_
                                     _hd1049310577_
                                     _tl1049410579_
                                     _e1049510582_
                                     _hd1049610585_
                                     _tl1049710587_
                                     _e1049810590_
                                     _hd1049910593_
                                     _tl1050010595_
                                     _e1050110598_
                                     _hd1050210601_
                                     _tl1050310603_
                                     _e1050410606_
                                     _hd1050510609_
                                     _tl1050610611_
                                     _e1050710614_
                                     _hd1050810617_
                                     _tl1050910619_)
                                    (___kont1328513286_))
                                (___kont1328513286_))
                            (___kont1328513286_))))
                    (___kont1328513286_))
                (___kont1328513286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1328513286_))))
                                            (___kont1328513286_))))
                                    (___kont1328513286_))))
                             (___match1331213313_
                              (lambda (_e1041010667_
                                       _hd1041110670_
                                       _tl1041210672_
                                       ___splice1327913280_
                                       _target1041310675_
                                       _tl1041510677_)
                                (letrec ((_loop1041610680_
                                          (lambda (_hd1041410683_
                                                   _arg1042010685_)
                                            (if (gx#stx-pair? _hd1041410683_)
                                                (let ((_e1041710688_
                                                       (gx#stx-e
                                                        _hd1041410683_)))
                                                  (let ((_lp-tl1041910693_
                                                         (##cdr _e1041710688_))
                                                        (_lp-hd1041810691_
                                                         (##car _e1041710688_)))
                                                    (_loop1041610680_
                                                     _lp-tl1041910693_
                                                     (cons _lp-hd1041810691_
                                                           _arg1042010685_))))
                                                (let ((_arg1042110696_
                                                       (reverse _arg1042010685_)))
                                                  (if (gx#stx-pair?
                                                       _tl1041210672_)
                                                      (let ((_e1042210699_
                                                             (gx#stx-e
                                                              _tl1041210672_)))
                                                        (let ((_tl1042410704_
                                                               (##cdr _e1042210699_))
                                                              (_hd1042310702_
                                                               (##car _e1042210699_)))
                                                          (if (gx#stx-pair?
                                                               _hd1042310702_)
                                                              (let ((_e1042510707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1042310702_)))
                        (let ((_tl1042710712_ (##cdr _e1042510707_))
                              (_hd1042610710_ (##car _e1042510707_)))
                          (if (gx#identifier? _hd1042610710_)
                              (if (gx#stx-eq? '%#call _hd1042610710_)
                                  (if (gx#stx-pair? _tl1042710712_)
                                      (let ((_e1042810715_
                                             (gx#stx-e _tl1042710712_)))
                                        (let ((_tl1043010720_
                                               (##cdr _e1042810715_))
                                              (_hd1042910718_
                                               (##car _e1042810715_)))
                                          (if (gx#stx-pair? _hd1042910718_)
                                              (let ((_e1043110723_
                                                     (gx#stx-e
                                                      _hd1042910718_)))
                                                (let ((_tl1043310728_
                                                       (##cdr _e1043110723_))
                                                      (_hd1043210726_
                                                       (##car _e1043110723_)))
                                                  (if (gx#identifier?
                                                       _hd1043210726_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1043210726_)
                                                          (if (gx#stx-pair?
                                                               _tl1043310728_)
                                                              (let ((_e1043410731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1043310728_)))
                        (let ((_tl1043610736_ (##cdr _e1043410731_))
                              (_hd1043510734_ (##car _e1043410731_)))
                          (if (gx#stx-null? _tl1043610736_)
                              (if (gx#stx-pair? _tl1043010720_)
                                  (let ((_e1043710739_
                                         (gx#stx-e _tl1043010720_)))
                                    (let ((_tl1043910744_
                                           (##cdr _e1043710739_))
                                          (_hd1043810742_
                                           (##car _e1043710739_)))
                                      (if (gx#stx-pair? _hd1043810742_)
                                          (let ((_e1044010747_
                                                 (gx#stx-e _hd1043810742_)))
                                            (let ((_tl1044210752_
                                                   (##cdr _e1044010747_))
                                                  (_hd1044110750_
                                                   (##car _e1044010747_)))
                                              (if (gx#identifier?
                                                   _hd1044110750_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1044110750_)
                                                      (if (gx#stx-pair?
                                                           _tl1044210752_)
                                                          (let ((_e1044310755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1044210752_)))
                    (let ((_tl1044510760_ (##cdr _e1044310755_))
                          (_hd1044410758_ (##car _e1044310755_)))
                      (if (gx#stx-null? _tl1044510760_)
                          (if (gx#stx-pair/null? _tl1043910744_)
                              (if (fx>= (gx#stx-length _tl1043910744_) '1)
                                  (let ((___splice1328113282_
                                         (gx#syntax-split-splice
                                          _tl1043910744_
                                          '1)))
                                    (let ((_tl1044810765_
                                           (##vector-ref
                                            ___splice1328113282_
                                            '1))
                                          (_target1044610763_
                                           (##vector-ref
                                            ___splice1328113282_
                                            '0)))
                                      (if (gx#stx-pair? _tl1044810765_)
                                          (let ((_e1045510768_
                                                 (gx#stx-e _tl1044810765_)))
                                            (let ((_tl1045710773_
                                                   (##cdr _e1045510768_))
                                                  (_hd1045610771_
                                                   (##car _e1045510768_)))
                                              (if (gx#stx-pair? _hd1045610771_)
                                                  (let ((_e1045810776_
                                                         (gx#stx-e
                                                          _hd1045610771_)))
                                                    (let ((_tl1046010781_
                                                           (##cdr _e1045810776_))
                                                          (_hd1045910779_
                                                           (##car _e1045810776_)))
                                                      (if (gx#identifier?
                                                           _hd1045910779_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd1045910779_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1046010781_)
                          (let ((_e1046110784_ (gx#stx-e _tl1046010781_)))
                            (let ((_tl1046310789_ (##cdr _e1046110784_))
                                  (_hd1046210787_ (##car _e1046110784_)))
                              (if (gx#stx-null? _tl1046310789_)
                                  (if (gx#stx-null? _tl1045710773_)
                                      (letrec ((_loop1044910792_
                                                (lambda (_hd1044710795_
                                                         _xarg1045310797_)
                                                  (if (gx#stx-pair?
                                                       _hd1044710795_)
                                                      (let ((_e1045010800_
                                                             (gx#stx-e
                                                              _hd1044710795_)))
                                                        (let ((_lp-tl1045210805_
                                                               (##cdr _e1045010800_))
                                                              (_lp-hd1045110803_
                                                               (##car _e1045010800_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1045110803_)
                                                              (let ((_e1046410808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1045110803_)))
                        (let ((_tl1046610813_ (##cdr _e1046410808_))
                              (_hd1046510811_ (##car _e1046410808_)))
                          (if (gx#identifier? _hd1046510811_)
                              (if (gx#stx-eq? '%#ref _hd1046510811_)
                                  (if (gx#stx-pair? _tl1046610813_)
                                      (let ((_e1046710816_
                                             (gx#stx-e _tl1046610813_)))
                                        (let ((_tl1046910821_
                                               (##cdr _e1046710816_))
                                              (_hd1046810819_
                                               (##car _e1046710816_)))
                                          (if (gx#stx-null? _tl1046910821_)
                                              (_loop1044910792_
                                               _lp-tl1045210805_
                                               (cons _hd1046810819_
                                                     _xarg1045310797_))
                                              (___match1338213383_
                                               _e1041010667_
                                               _hd1041110670_
                                               _tl1041210672_
                                               _e1042210699_
                                               _hd1042310702_
                                               _tl1042410704_
                                               _e1042510707_
                                               _hd1042610710_
                                               _tl1042710712_
                                               _e1042810715_
                                               _hd1042910718_
                                               _tl1043010720_
                                               _e1043110723_
                                               _hd1043210726_
                                               _tl1043310728_
                                               _e1043410731_
                                               _hd1043510734_
                                               _tl1043610736_
                                               _e1043710739_
                                               _hd1043810742_
                                               _tl1043910744_
                                               _e1044010747_
                                               _hd1044110750_
                                               _tl1044210752_
                                               _e1044310755_
                                               _hd1044410758_
                                               _tl1044510760_))))
                                      (___match1338213383_
                                       _e1041010667_
                                       _hd1041110670_
                                       _tl1041210672_
                                       _e1042210699_
                                       _hd1042310702_
                                       _tl1042410704_
                                       _e1042510707_
                                       _hd1042610710_
                                       _tl1042710712_
                                       _e1042810715_
                                       _hd1042910718_
                                       _tl1043010720_
                                       _e1043110723_
                                       _hd1043210726_
                                       _tl1043310728_
                                       _e1043410731_
                                       _hd1043510734_
                                       _tl1043610736_
                                       _e1043710739_
                                       _hd1043810742_
                                       _tl1043910744_
                                       _e1044010747_
                                       _hd1044110750_
                                       _tl1044210752_
                                       _e1044310755_
                                       _hd1044410758_
                                       _tl1044510760_))
                                  (___match1338213383_
                                   _e1041010667_
                                   _hd1041110670_
                                   _tl1041210672_
                                   _e1042210699_
                                   _hd1042310702_
                                   _tl1042410704_
                                   _e1042510707_
                                   _hd1042610710_
                                   _tl1042710712_
                                   _e1042810715_
                                   _hd1042910718_
                                   _tl1043010720_
                                   _e1043110723_
                                   _hd1043210726_
                                   _tl1043310728_
                                   _e1043410731_
                                   _hd1043510734_
                                   _tl1043610736_
                                   _e1043710739_
                                   _hd1043810742_
                                   _tl1043910744_
                                   _e1044010747_
                                   _hd1044110750_
                                   _tl1044210752_
                                   _e1044310755_
                                   _hd1044410758_
                                   _tl1044510760_))
                              (___match1338213383_
                               _e1041010667_
                               _hd1041110670_
                               _tl1041210672_
                               _e1042210699_
                               _hd1042310702_
                               _tl1042410704_
                               _e1042510707_
                               _hd1042610710_
                               _tl1042710712_
                               _e1042810715_
                               _hd1042910718_
                               _tl1043010720_
                               _e1043110723_
                               _hd1043210726_
                               _tl1043310728_
                               _e1043410731_
                               _hd1043510734_
                               _tl1043610736_
                               _e1043710739_
                               _hd1043810742_
                               _tl1043910744_
                               _e1044010747_
                               _hd1044110750_
                               _tl1044210752_
                               _e1044310755_
                               _hd1044410758_
                               _tl1044510760_))))
                      (___match1338213383_
                       _e1041010667_
                       _hd1041110670_
                       _tl1041210672_
                       _e1042210699_
                       _hd1042310702_
                       _tl1042410704_
                       _e1042510707_
                       _hd1042610710_
                       _tl1042710712_
                       _e1042810715_
                       _hd1042910718_
                       _tl1043010720_
                       _e1043110723_
                       _hd1043210726_
                       _tl1043310728_
                       _e1043410731_
                       _hd1043510734_
                       _tl1043610736_
                       _e1043710739_
                       _hd1043810742_
                       _tl1043910744_
                       _e1044010747_
                       _hd1044110750_
                       _tl1044210752_
                       _e1044310755_
                       _hd1044410758_
                       _tl1044510760_))))
              (let ((_xarg1045410824_ (reverse _xarg1045310797_)))
                (if (gx#stx-null? _tl1042410704_)
                    (let ((_L10827_ _hd1046210787_)
                          (_L10828_ _xarg1045410824_)
                          (_L10829_ _hd1044410758_)
                          (_L10830_ _hd1043510734_)
                          (_L10831_ _tl1041510677_)
                          (_L10832_ _arg1042110696_))
                      (if (if (gx#identifier-list?
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1087510878_ _g1087610880_)
                                           (cons _g1087510878_ _g1087610880_))
                                         '()
                                         _L10832_)))
                              (if (gx#identifier? _L10831_)
                                  (if (gxc#runtime-identifier=?
                                       _L10830_
                                       'apply)
                                      (if (fx= (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1088210885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1088310887_)
                           (cons _g1088210885_ _g1088310887_))
                         '()
                         _L10832_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (length (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1088910892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1089010894_)
                           (cons _g1088910892_ _g1089010894_))
                         '()
                         _L10828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (andmap2 gx#free-identifier=?
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g1089610899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1089710901_)
                           (cons _g1089610899_ _g1089710901_))
                         '()
                         _L10832_))
               (begin
                 '#!void
                 (foldr1 (lambda (_g1090310906_ _g1090410908_)
                           (cons _g1090310906_ _g1090410908_))
                         '()
                         _L10828_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   _L10831_
                                                   _L10827_)
                                                  (not (find (lambda (_g1091010912_)
                                                               (gx#free-identifier=?
                                                                _g1091010912_
                                                                _L10829_))
                                                             (begin
                                                               '#!void
                                                               (foldr1 (lambda (_g1091410917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1091510919_)
                                 (cons _g1091410917_ _g1091510919_))
                               (cons _L10831_ '())
                               _L10832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '#f)
                                              '#f)
                                          '#f)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont1327713278_
                           _L10827_
                           _L10828_
                           _L10829_
                           _L10830_
                           _L10831_
                           _L10832_)
                          (___match1338213383_
                           _e1041010667_
                           _hd1041110670_
                           _tl1041210672_
                           _e1042210699_
                           _hd1042310702_
                           _tl1042410704_
                           _e1042510707_
                           _hd1042610710_
                           _tl1042710712_
                           _e1042810715_
                           _hd1042910718_
                           _tl1043010720_
                           _e1043110723_
                           _hd1043210726_
                           _tl1043310728_
                           _e1043410731_
                           _hd1043510734_
                           _tl1043610736_
                           _e1043710739_
                           _hd1043810742_
                           _tl1043910744_
                           _e1044010747_
                           _hd1044110750_
                           _tl1044210752_
                           _e1044310755_
                           _hd1044410758_
                           _tl1044510760_)))
                    (___match1338213383_
                     _e1041010667_
                     _hd1041110670_
                     _tl1041210672_
                     _e1042210699_
                     _hd1042310702_
                     _tl1042410704_
                     _e1042510707_
                     _hd1042610710_
                     _tl1042710712_
                     _e1042810715_
                     _hd1042910718_
                     _tl1043010720_
                     _e1043110723_
                     _hd1043210726_
                     _tl1043310728_
                     _e1043410731_
                     _hd1043510734_
                     _tl1043610736_
                     _e1043710739_
                     _hd1043810742_
                     _tl1043910744_
                     _e1044010747_
                     _hd1044110750_
                     _tl1044210752_
                     _e1044310755_
                     _hd1044410758_
                     _tl1044510760_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1044910792_
                                         _target1044610763_
                                         '()))
                                      (___match1338213383_
                                       _e1041010667_
                                       _hd1041110670_
                                       _tl1041210672_
                                       _e1042210699_
                                       _hd1042310702_
                                       _tl1042410704_
                                       _e1042510707_
                                       _hd1042610710_
                                       _tl1042710712_
                                       _e1042810715_
                                       _hd1042910718_
                                       _tl1043010720_
                                       _e1043110723_
                                       _hd1043210726_
                                       _tl1043310728_
                                       _e1043410731_
                                       _hd1043510734_
                                       _tl1043610736_
                                       _e1043710739_
                                       _hd1043810742_
                                       _tl1043910744_
                                       _e1044010747_
                                       _hd1044110750_
                                       _tl1044210752_
                                       _e1044310755_
                                       _hd1044410758_
                                       _tl1044510760_))
                                  (___match1338213383_
                                   _e1041010667_
                                   _hd1041110670_
                                   _tl1041210672_
                                   _e1042210699_
                                   _hd1042310702_
                                   _tl1042410704_
                                   _e1042510707_
                                   _hd1042610710_
                                   _tl1042710712_
                                   _e1042810715_
                                   _hd1042910718_
                                   _tl1043010720_
                                   _e1043110723_
                                   _hd1043210726_
                                   _tl1043310728_
                                   _e1043410731_
                                   _hd1043510734_
                                   _tl1043610736_
                                   _e1043710739_
                                   _hd1043810742_
                                   _tl1043910744_
                                   _e1044010747_
                                   _hd1044110750_
                                   _tl1044210752_
                                   _e1044310755_
                                   _hd1044410758_
                                   _tl1044510760_))))
                          (___match1338213383_
                           _e1041010667_
                           _hd1041110670_
                           _tl1041210672_
                           _e1042210699_
                           _hd1042310702_
                           _tl1042410704_
                           _e1042510707_
                           _hd1042610710_
                           _tl1042710712_
                           _e1042810715_
                           _hd1042910718_
                           _tl1043010720_
                           _e1043110723_
                           _hd1043210726_
                           _tl1043310728_
                           _e1043410731_
                           _hd1043510734_
                           _tl1043610736_
                           _e1043710739_
                           _hd1043810742_
                           _tl1043910744_
                           _e1044010747_
                           _hd1044110750_
                           _tl1044210752_
                           _e1044310755_
                           _hd1044410758_
                           _tl1044510760_))
                      (___match1338213383_
                       _e1041010667_
                       _hd1041110670_
                       _tl1041210672_
                       _e1042210699_
                       _hd1042310702_
                       _tl1042410704_
                       _e1042510707_
                       _hd1042610710_
                       _tl1042710712_
                       _e1042810715_
                       _hd1042910718_
                       _tl1043010720_
                       _e1043110723_
                       _hd1043210726_
                       _tl1043310728_
                       _e1043410731_
                       _hd1043510734_
                       _tl1043610736_
                       _e1043710739_
                       _hd1043810742_
                       _tl1043910744_
                       _e1044010747_
                       _hd1044110750_
                       _tl1044210752_
                       _e1044310755_
                       _hd1044410758_
                       _tl1044510760_))
                  (___match1338213383_
                   _e1041010667_
                   _hd1041110670_
                   _tl1041210672_
                   _e1042210699_
                   _hd1042310702_
                   _tl1042410704_
                   _e1042510707_
                   _hd1042610710_
                   _tl1042710712_
                   _e1042810715_
                   _hd1042910718_
                   _tl1043010720_
                   _e1043110723_
                   _hd1043210726_
                   _tl1043310728_
                   _e1043410731_
                   _hd1043510734_
                   _tl1043610736_
                   _e1043710739_
                   _hd1043810742_
                   _tl1043910744_
                   _e1044010747_
                   _hd1044110750_
                   _tl1044210752_
                   _e1044310755_
                   _hd1044410758_
                   _tl1044510760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match1338213383_
                                                   _e1041010667_
                                                   _hd1041110670_
                                                   _tl1041210672_
                                                   _e1042210699_
                                                   _hd1042310702_
                                                   _tl1042410704_
                                                   _e1042510707_
                                                   _hd1042610710_
                                                   _tl1042710712_
                                                   _e1042810715_
                                                   _hd1042910718_
                                                   _tl1043010720_
                                                   _e1043110723_
                                                   _hd1043210726_
                                                   _tl1043310728_
                                                   _e1043410731_
                                                   _hd1043510734_
                                                   _tl1043610736_
                                                   _e1043710739_
                                                   _hd1043810742_
                                                   _tl1043910744_
                                                   _e1044010747_
                                                   _hd1044110750_
                                                   _tl1044210752_
                                                   _e1044310755_
                                                   _hd1044410758_
                                                   _tl1044510760_))))
                                          (___match1338213383_
                                           _e1041010667_
                                           _hd1041110670_
                                           _tl1041210672_
                                           _e1042210699_
                                           _hd1042310702_
                                           _tl1042410704_
                                           _e1042510707_
                                           _hd1042610710_
                                           _tl1042710712_
                                           _e1042810715_
                                           _hd1042910718_
                                           _tl1043010720_
                                           _e1043110723_
                                           _hd1043210726_
                                           _tl1043310728_
                                           _e1043410731_
                                           _hd1043510734_
                                           _tl1043610736_
                                           _e1043710739_
                                           _hd1043810742_
                                           _tl1043910744_
                                           _e1044010747_
                                           _hd1044110750_
                                           _tl1044210752_
                                           _e1044310755_
                                           _hd1044410758_
                                           _tl1044510760_))))
                                  (___match1338213383_
                                   _e1041010667_
                                   _hd1041110670_
                                   _tl1041210672_
                                   _e1042210699_
                                   _hd1042310702_
                                   _tl1042410704_
                                   _e1042510707_
                                   _hd1042610710_
                                   _tl1042710712_
                                   _e1042810715_
                                   _hd1042910718_
                                   _tl1043010720_
                                   _e1043110723_
                                   _hd1043210726_
                                   _tl1043310728_
                                   _e1043410731_
                                   _hd1043510734_
                                   _tl1043610736_
                                   _e1043710739_
                                   _hd1043810742_
                                   _tl1043910744_
                                   _e1044010747_
                                   _hd1044110750_
                                   _tl1044210752_
                                   _e1044310755_
                                   _hd1044410758_
                                   _tl1044510760_))
                              (___match1338213383_
                               _e1041010667_
                               _hd1041110670_
                               _tl1041210672_
                               _e1042210699_
                               _hd1042310702_
                               _tl1042410704_
                               _e1042510707_
                               _hd1042610710_
                               _tl1042710712_
                               _e1042810715_
                               _hd1042910718_
                               _tl1043010720_
                               _e1043110723_
                               _hd1043210726_
                               _tl1043310728_
                               _e1043410731_
                               _hd1043510734_
                               _tl1043610736_
                               _e1043710739_
                               _hd1043810742_
                               _tl1043910744_
                               _e1044010747_
                               _hd1044110750_
                               _tl1044210752_
                               _e1044310755_
                               _hd1044410758_
                               _tl1044510760_))
                          (___kont1328513286_))))
                  (___kont1328513286_))
              (___kont1328513286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1328513286_))))
                                          (___kont1328513286_))))
                                  (___kont1328513286_))
                              (___kont1328513286_))))
                      (___kont1328513286_))
                  (___kont1328513286_))
              (___kont1328513286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1328513286_))))
                                      (___kont1328513286_))
                                  (___kont1328513286_))
                              (___kont1328513286_))))
                      (___kont1328513286_))))
              (___kont1328513286_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1041610680_ _target1041310675_ '()))))
                             (___match1330013301_
                              (lambda (_e1036210927_
                                       _hd1036310930_
                                       _tl1036410932_
                                       ___splice1327313274_
                                       _target1036510935_
                                       _tl1036710937_)
                                (letrec ((_loop1036810940_
                                          (lambda (_hd1036610943_
                                                   _arg1037210945_)
                                            (if (gx#stx-pair? _hd1036610943_)
                                                (let ((_e1036910948_
                                                       (gx#stx-e
                                                        _hd1036610943_)))
                                                  (let ((_lp-tl1037110953_
                                                         (##cdr _e1036910948_))
                                                        (_lp-hd1037010951_
                                                         (##car _e1036910948_)))
                                                    (_loop1036810940_
                                                     _lp-tl1037110953_
                                                     (cons _lp-hd1037010951_
                                                           _arg1037210945_))))
                                                (let ((_arg1037310956_
                                                       (reverse _arg1037210945_)))
                                                  (if (gx#stx-pair?
                                                       _tl1036410932_)
                                                      (let ((_e1037410959_
                                                             (gx#stx-e
                                                              _tl1036410932_)))
                                                        (let ((_tl1037610964_
                                                               (##cdr _e1037410959_))
                                                              (_hd1037510962_
                                                               (##car _e1037410959_)))
                                                          (if (gx#stx-pair?
                                                               _hd1037510962_)
                                                              (let ((_e1037710967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1037510962_)))
                        (let ((_tl1037910972_ (##cdr _e1037710967_))
                              (_hd1037810970_ (##car _e1037710967_)))
                          (if (gx#identifier? _hd1037810970_)
                              (if (gx#stx-eq? '%#call _hd1037810970_)
                                  (if (gx#stx-pair? _tl1037910972_)
                                      (let ((_e1038010975_
                                             (gx#stx-e _tl1037910972_)))
                                        (let ((_tl1038210980_
                                               (##cdr _e1038010975_))
                                              (_hd1038110978_
                                               (##car _e1038010975_)))
                                          (if (gx#stx-pair? _hd1038110978_)
                                              (let ((_e1038310983_
                                                     (gx#stx-e
                                                      _hd1038110978_)))
                                                (let ((_tl1038510988_
                                                       (##cdr _e1038310983_))
                                                      (_hd1038410986_
                                                       (##car _e1038310983_)))
                                                  (if (gx#identifier?
                                                       _hd1038410986_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1038410986_)
                                                          (if (gx#stx-pair?
                                                               _tl1038510988_)
                                                              (let ((_e1038610991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1038510988_)))
                        (let ((_tl1038810996_ (##cdr _e1038610991_))
                              (_hd1038710994_ (##car _e1038610991_)))
                          (if (gx#stx-null? _tl1038810996_)
                              (if (gx#stx-pair/null? _tl1038210980_)
                                  (let ((___splice1327513276_
                                         (gx#syntax-split-splice
                                          _tl1038210980_
                                          '0)))
                                    (let ((_tl1039111001_
                                           (##vector-ref
                                            ___splice1327513276_
                                            '1))
                                          (_target1038910999_
                                           (##vector-ref
                                            ___splice1327513276_
                                            '0)))
                                      (if (gx#stx-null? _tl1039111001_)
                                          (letrec ((_loop1039211004_
                                                    (lambda (_hd1039011007_
                                                             _xarg1039611009_)
                                                      (if (gx#stx-pair?
                                                           _hd1039011007_)
                                                          (let ((_e1039311012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1039011007_)))
                    (let ((_lp-tl1039511017_ (##cdr _e1039311012_))
                          (_lp-hd1039411015_ (##car _e1039311012_)))
                      (if (gx#stx-pair? _lp-hd1039411015_)
                          (let ((_e1039811020_ (gx#stx-e _lp-hd1039411015_)))
                            (let ((_tl1040011025_ (##cdr _e1039811020_))
                                  (_hd1039911023_ (##car _e1039811020_)))
                              (if (gx#identifier? _hd1039911023_)
                                  (if (gx#stx-eq? '%#ref _hd1039911023_)
                                      (if (gx#stx-pair? _tl1040011025_)
                                          (let ((_e1040111028_
                                                 (gx#stx-e _tl1040011025_)))
                                            (let ((_tl1040311033_
                                                   (##cdr _e1040111028_))
                                                  (_hd1040211031_
                                                   (##car _e1040111028_)))
                                              (if (gx#stx-null? _tl1040311033_)
                                                  (_loop1039211004_
                                                   _lp-tl1039511017_
                                                   (cons _hd1040211031_
                                                         _xarg1039611009_))
                                                  (___match1331213313_
                                                   _e1036210927_
                                                   _hd1036310930_
                                                   _tl1036410932_
                                                   ___splice1327313274_
                                                   _target1036510935_
                                                   _tl1036710937_))))
                                          (___match1331213313_
                                           _e1036210927_
                                           _hd1036310930_
                                           _tl1036410932_
                                           ___splice1327313274_
                                           _target1036510935_
                                           _tl1036710937_))
                                      (___match1331213313_
                                       _e1036210927_
                                       _hd1036310930_
                                       _tl1036410932_
                                       ___splice1327313274_
                                       _target1036510935_
                                       _tl1036710937_))
                                  (___match1331213313_
                                   _e1036210927_
                                   _hd1036310930_
                                   _tl1036410932_
                                   ___splice1327313274_
                                   _target1036510935_
                                   _tl1036710937_))))
                          (___match1331213313_
                           _e1036210927_
                           _hd1036310930_
                           _tl1036410932_
                           ___splice1327313274_
                           _target1036510935_
                           _tl1036710937_))))
                  (let ((_xarg1039711036_ (reverse _xarg1039611009_)))
                    (if (gx#stx-null? _tl1037610964_)
                        (let ((_L11039_ _xarg1039711036_)
                              (_L11040_ _hd1038710994_)
                              (_L11041_ _arg1037310956_))
                          (if (if (gx#identifier-list?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1106911072_
                                                      _g1107011074_)
                                               (cons _g1106911072_
                                                     _g1107011074_))
                                             '()
                                             _L11041_)))
                                  (if (fx= (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1107611079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1107711081_)
                       (cons _g1107611079_ _g1107711081_))
                     '()
                     _L11041_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (length (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1108311086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1108411088_)
                       (cons _g1108311086_ _g1108411088_))
                     '()
                     _L11039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (andmap2 gx#free-identifier=?
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1109011093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1109111095_)
                       (cons _g1109011093_ _g1109111095_))
                     '()
                     _L11041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1109711100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1109811102_)
                       (cons _g1109711100_ _g1109811102_))
                     '()
                     _L11039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (not (find (lambda (_g1110411106_)
                                                       (gx#free-identifier=?
                                                        _g1110411106_
                                                        _L11040_))
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g1110811111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1110911113_)
                         (cons _g1110811111_ _g1110911113_))
                       '()
                       _L11041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '#f)
                                      '#f)
                                  '#f)
                              (___kont1327113272_ _L11039_ _L11040_ _L11041_)
                              (___match1331213313_
                               _e1036210927_
                               _hd1036310930_
                               _tl1036410932_
                               ___splice1327313274_
                               _target1036510935_
                               _tl1036710937_)))
                        (___match1331213313_
                         _e1036210927_
                         _hd1036310930_
                         _tl1036410932_
                         ___splice1327313274_
                         _target1036510935_
                         _tl1036710937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1039211004_
                                             _target1038910999_
                                             '()))
                                          (___match1331213313_
                                           _e1036210927_
                                           _hd1036310930_
                                           _tl1036410932_
                                           ___splice1327313274_
                                           _target1036510935_
                                           _tl1036710937_))))
                                  (___match1331213313_
                                   _e1036210927_
                                   _hd1036310930_
                                   _tl1036410932_
                                   ___splice1327313274_
                                   _target1036510935_
                                   _tl1036710937_))
                              (___match1331213313_
                               _e1036210927_
                               _hd1036310930_
                               _tl1036410932_
                               ___splice1327313274_
                               _target1036510935_
                               _tl1036710937_))))
                      (___match1331213313_
                       _e1036210927_
                       _hd1036310930_
                       _tl1036410932_
                       ___splice1327313274_
                       _target1036510935_
                       _tl1036710937_))
                  (___match1331213313_
                   _e1036210927_
                   _hd1036310930_
                   _tl1036410932_
                   ___splice1327313274_
                   _target1036510935_
                   _tl1036710937_))
              (___match1331213313_
               _e1036210927_
               _hd1036310930_
               _tl1036410932_
               ___splice1327313274_
               _target1036510935_
               _tl1036710937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1331213313_
                                               _e1036210927_
                                               _hd1036310930_
                                               _tl1036410932_
                                               ___splice1327313274_
                                               _target1036510935_
                                               _tl1036710937_))))
                                      (___match1331213313_
                                       _e1036210927_
                                       _hd1036310930_
                                       _tl1036410932_
                                       ___splice1327313274_
                                       _target1036510935_
                                       _tl1036710937_))
                                  (___match1331213313_
                                   _e1036210927_
                                   _hd1036310930_
                                   _tl1036410932_
                                   ___splice1327313274_
                                   _target1036510935_
                                   _tl1036710937_))
                              (___match1331213313_
                               _e1036210927_
                               _hd1036310930_
                               _tl1036410932_
                               ___splice1327313274_
                               _target1036510935_
                               _tl1036710937_))))
                      (___match1331213313_
                       _e1036210927_
                       _hd1036310930_
                       _tl1036410932_
                       ___splice1327313274_
                       _target1036510935_
                       _tl1036710937_))))
              (___match1331213313_
               _e1036210927_
               _hd1036310930_
               _tl1036410932_
               ___splice1327313274_
               _target1036510935_
               _tl1036710937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop1036810940_ _target1036510935_ '())))))
                        (if (gx#stx-pair? ___stx1326913270_)
                            (let ((_e1036210927_ (gx#stx-e ___stx1326913270_)))
                              (let ((_tl1036410932_ (##cdr _e1036210927_))
                                    (_hd1036310930_ (##car _e1036210927_)))
                                (if (gx#stx-pair/null? _hd1036310930_)
                                    (let ((___splice1327313274_
                                           (gx#syntax-split-splice
                                            _hd1036310930_
                                            '0)))
                                      (let ((_tl1036710937_
                                             (##vector-ref
                                              ___splice1327313274_
                                              '1))
                                            (_target1036510935_
                                             (##vector-ref
                                              ___splice1327313274_
                                              '0)))
                                        (if (gx#stx-null? _tl1036710937_)
                                            (___match1330013301_
                                             _e1036210927_
                                             _hd1036310930_
                                             _tl1036410932_
                                             ___splice1327313274_
                                             _target1036510935_
                                             _tl1036710937_)
                                            (___match1331213313_
                                             _e1036210927_
                                             _hd1036310930_
                                             _tl1036410932_
                                             ___splice1327313274_
                                             _target1036510935_
                                             _tl1036710937_))))
                                    (if (gx#stx-pair? _tl1036410932_)
                                        (let ((_e1047710534_
                                               (gx#stx-e _tl1036410932_)))
                                          (let ((_tl1047910539_
                                                 (##cdr _e1047710534_))
                                                (_hd1047810537_
                                                 (##car _e1047710534_)))
                                            (if (gx#stx-pair? _hd1047810537_)
                                                (let ((_e1048010542_
                                                       (gx#stx-e
                                                        _hd1047810537_)))
                                                  (let ((_tl1048210547_
                                                         (##cdr _e1048010542_))
                                                        (_hd1048110545_
                                                         (##car _e1048010542_)))
                                                    (if (gx#identifier?
                                                         _hd1048110545_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd1048110545_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1048210547_)
                        (let ((_e1048310550_ (gx#stx-e _tl1048210547_)))
                          (let ((_tl1048510555_ (##cdr _e1048310550_))
                                (_hd1048410553_ (##car _e1048310550_)))
                            (if (gx#stx-pair? _hd1048410553_)
                                (let ((_e1048610558_
                                       (gx#stx-e _hd1048410553_)))
                                  (let ((_tl1048810563_ (##cdr _e1048610558_))
                                        (_hd1048710561_ (##car _e1048610558_)))
                                    (if (gx#identifier? _hd1048710561_)
                                        (if (gx#stx-eq? '%#ref _hd1048710561_)
                                            (if (gx#stx-pair? _tl1048810563_)
                                                (let ((_e1048910566_
                                                       (gx#stx-e
                                                        _tl1048810563_)))
                                                  (let ((_tl1049110571_
                                                         (##cdr _e1048910566_))
                                                        (_hd1049010569_
                                                         (##car _e1048910566_)))
                                                    (if (gx#stx-null?
                                                         _tl1049110571_)
                                                        (if (gx#stx-pair?
                                                             _tl1048510555_)
                                                            (let ((_e1049210574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1048510555_)))
                      (let ((_tl1049410579_ (##cdr _e1049210574_))
                            (_hd1049310577_ (##car _e1049210574_)))
                        (if (gx#stx-pair? _hd1049310577_)
                            (let ((_e1049510582_ (gx#stx-e _hd1049310577_)))
                              (let ((_tl1049710587_ (##cdr _e1049510582_))
                                    (_hd1049610585_ (##car _e1049510582_)))
                                (if (gx#identifier? _hd1049610585_)
                                    (if (gx#stx-eq? '%#ref _hd1049610585_)
                                        (if (gx#stx-pair? _tl1049710587_)
                                            (let ((_e1049810590_
                                                   (gx#stx-e _tl1049710587_)))
                                              (let ((_tl1050010595_
                                                     (##cdr _e1049810590_))
                                                    (_hd1049910593_
                                                     (##car _e1049810590_)))
                                                (if (gx#stx-null?
                                                     _tl1050010595_)
                                                    (if (gx#stx-pair?
                                                         _tl1049410579_)
                                                        (let ((_e1050110598_
                                                               (gx#stx-e
                                                                _tl1049410579_)))
                                                          (let ((_tl1050310603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1050110598_))
                        (_hd1050210601_ (##car _e1050110598_)))
                    (if (gx#stx-pair? _hd1050210601_)
                        (let ((_e1050410606_ (gx#stx-e _hd1050210601_)))
                          (let ((_tl1050610611_ (##cdr _e1050410606_))
                                (_hd1050510609_ (##car _e1050410606_)))
                            (if (gx#identifier? _hd1050510609_)
                                (if (gx#stx-eq? '%#ref _hd1050510609_)
                                    (if (gx#stx-pair? _tl1050610611_)
                                        (let ((_e1050710614_
                                               (gx#stx-e _tl1050610611_)))
                                          (let ((_tl1050910619_
                                                 (##cdr _e1050710614_))
                                                (_hd1050810617_
                                                 (##car _e1050710614_)))
                                            (if (gx#stx-null? _tl1050910619_)
                                                (if (gx#stx-null?
                                                     _tl1050310603_)
                                                    (if (gx#stx-null?
                                                         _tl1047910539_)
                                                        (___match1341013411_
                                                         _e1036210927_
                                                         _hd1036310930_
                                                         _tl1036410932_
                                                         _e1047710534_
                                                         _hd1047810537_
                                                         _tl1047910539_
                                                         _e1048010542_
                                                         _hd1048110545_
                                                         _tl1048210547_
                                                         _e1048310550_
                                                         _hd1048410553_
                                                         _tl1048510555_
                                                         _e1048610558_
                                                         _hd1048710561_
                                                         _tl1048810563_
                                                         _e1048910566_
                                                         _hd1049010569_
                                                         _tl1049110571_
                                                         _e1049210574_
                                                         _hd1049310577_
                                                         _tl1049410579_
                                                         _e1049510582_
                                                         _hd1049610585_
                                                         _tl1049710587_
                                                         _e1049810590_
                                                         _hd1049910593_
                                                         _tl1050010595_
                                                         _e1050110598_
                                                         _hd1050210601_
                                                         _tl1050310603_
                                                         _e1050410606_
                                                         _hd1050510609_
                                                         _tl1050610611_
                                                         _e1050710614_
                                                         _hd1050810617_
                                                         _tl1050910619_)
                                                        (___kont1328513286_))
                                                    (___kont1328513286_))
                                                (___kont1328513286_))))
                                        (___kont1328513286_))
                                    (___kont1328513286_))
                                (___kont1328513286_))))
                        (___kont1328513286_))))
                (___kont1328513286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont1328513286_))))
                                            (___kont1328513286_))
                                        (___kont1328513286_))
                                    (___kont1328513286_))))
                            (___kont1328513286_))))
                    (___kont1328513286_))
                (___kont1328513286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1328513286_))
                                            (___kont1328513286_))
                                        (___kont1328513286_))))
                                (___kont1328513286_))))
                        (___kont1328513286_))
                    (___kont1328513286_))
                (___kont1328513286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1328513286_))))
                                        (___kont1328513286_)))))
                            (___kont1328513286_)))))))
               (_dispatch-case-e9665_
                (lambda (_hd9813_ _body9814_)
                  (let* ((_form9816_ (cons _hd9813_ (cons _body9814_ '())))
                         (___stx1341313414_ _form9816_)
                         (_g98209944_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1341313414_))))
                    (let ((___kont1341513416_
                           (lambda (_L10315_ _L10316_ _L10317_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10316_ '())))))
                          (___kont1342113422_
                           (lambda (_L10163_ _L10164_ _L10165_ _L10166_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10163_ '())))))
                          (___kont1342513426_
                           (lambda (_L10029_ _L10030_ _L10031_)
                             (gxc#compile-e
                              (cons (gx#datum->syntax__0 '#f '%#ref)
                                    (cons _L10029_ '()))))))
                      (let* ((___match1352213523_
                              (lambda (_e99109949_
                                       _hd99119952_
                                       _tl99129954_
                                       _e99139957_
                                       _hd99149960_
                                       _tl99159962_
                                       _e99169965_
                                       _hd99179968_
                                       _tl99189970_
                                       _e99199973_
                                       _hd99209976_
                                       _tl99219978_
                                       _e99229981_
                                       _hd99239984_
                                       _tl99249986_
                                       _e99259989_
                                       _hd99269992_
                                       _tl99279994_
                                       _e99289997_
                                       _hd992910000_
                                       _tl993010002_
                                       _e993110005_
                                       _hd993210008_
                                       _tl993310010_
                                       _e993410013_
                                       _hd993510016_
                                       _tl993610018_)
                                (if (gx#stx-pair? _tl993010002_)
                                    (let ((_e993710021_
                                           (gx#stx-e _tl993010002_)))
                                      (let ((_tl993910026_
                                             (##cdr _e993710021_))
                                            (_hd993810024_
                                             (##car _e993710021_)))
                                        (if (gx#stx-null? _tl993910026_)
                                            (if (gx#stx-null? _tl99159962_)
                                                (___kont1342513426_
                                                 _hd993510016_
                                                 _hd99269992_
                                                 _hd99119952_)
                                                (_g98209944_))
                                            (_g98209944_))))
                                    (_g98209944_))))
                             (___match1345213453_
                              (lambda (_e987110067_
                                       _hd987210070_
                                       _tl987310072_
                                       ___splice1342313424_
                                       _target987410075_
                                       _tl987610077_)
                                (letrec ((_loop987710080_
                                          (lambda (_hd987510083_
                                                   _arg988110085_)
                                            (if (gx#stx-pair? _hd987510083_)
                                                (let ((_e987810088_
                                                       (gx#stx-e
                                                        _hd987510083_)))
                                                  (let ((_lp-tl988010093_
                                                         (##cdr _e987810088_))
                                                        (_lp-hd987910091_
                                                         (##car _e987810088_)))
                                                    (_loop987710080_
                                                     _lp-tl988010093_
                                                     (cons _lp-hd987910091_
                                                           _arg988110085_))))
                                                (let ((_arg988210096_
                                                       (reverse _arg988110085_)))
                                                  (if (gx#stx-pair?
                                                       _tl987310072_)
                                                      (let ((_e988310099_
                                                             (gx#stx-e
                                                              _tl987310072_)))
                                                        (let ((_tl988510104_
                                                               (##cdr _e988310099_))
                                                              (_hd988410102_
                                                               (##car _e988310099_)))
                                                          (if (gx#stx-pair?
                                                               _hd988410102_)
                                                              (let ((_e988610107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd988410102_)))
                        (let ((_tl988810112_ (##cdr _e988610107_))
                              (_hd988710110_ (##car _e988610107_)))
                          (if (gx#identifier? _hd988710110_)
                              (if (gx#stx-eq? '%#call _hd988710110_)
                                  (if (gx#stx-pair? _tl988810112_)
                                      (let ((_e988910115_
                                             (gx#stx-e _tl988810112_)))
                                        (let ((_tl989110120_
                                               (##cdr _e988910115_))
                                              (_hd989010118_
                                               (##car _e988910115_)))
                                          (if (gx#stx-pair? _hd989010118_)
                                              (let ((_e989210123_
                                                     (gx#stx-e _hd989010118_)))
                                                (let ((_tl989410128_
                                                       (##cdr _e989210123_))
                                                      (_hd989310126_
                                                       (##car _e989210123_)))
                                                  (if (gx#identifier?
                                                       _hd989310126_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd989310126_)
                                                          (if (gx#stx-pair?
                                                               _tl989410128_)
                                                              (let ((_e989510131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl989410128_)))
                        (let ((_tl989710136_ (##cdr _e989510131_))
                              (_hd989610134_ (##car _e989510131_)))
                          (if (gx#stx-null? _tl989710136_)
                              (if (gx#stx-pair? _tl989110120_)
                                  (let ((_e989810139_
                                         (gx#stx-e _tl989110120_)))
                                    (let ((_tl990010144_ (##cdr _e989810139_))
                                          (_hd989910142_ (##car _e989810139_)))
                                      (if (gx#stx-pair? _hd989910142_)
                                          (let ((_e990110147_
                                                 (gx#stx-e _hd989910142_)))
                                            (let ((_tl990310152_
                                                   (##cdr _e990110147_))
                                                  (_hd990210150_
                                                   (##car _e990110147_)))
                                              (if (gx#identifier?
                                                   _hd990210150_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd990210150_)
                                                      (if (gx#stx-pair?
                                                           _tl990310152_)
                                                          (let ((_e990410155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl990310152_)))
                    (let ((_tl990610160_ (##cdr _e990410155_))
                          (_hd990510158_ (##car _e990410155_)))
                      (if (gx#stx-null? _tl990610160_)
                          (if (gx#stx-null? _tl988510104_)
                              (___kont1342113422_
                               _hd990510158_
                               _hd989610134_
                               _tl987610077_
                               _arg988210096_)
                              (___match1352213523_
                               _e987110067_
                               _hd987210070_
                               _tl987310072_
                               _e988310099_
                               _hd988410102_
                               _tl988510104_
                               _e988610107_
                               _hd988710110_
                               _tl988810112_
                               _e988910115_
                               _hd989010118_
                               _tl989110120_
                               _e989210123_
                               _hd989310126_
                               _tl989410128_
                               _e989510131_
                               _hd989610134_
                               _tl989710136_
                               _e989810139_
                               _hd989910142_
                               _tl990010144_
                               _e990110147_
                               _hd990210150_
                               _tl990310152_
                               _e990410155_
                               _hd990510158_
                               _tl990610160_))
                          (_g98209944_))))
                  (_g98209944_))
              (_g98209944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g98209944_))))
                                          (_g98209944_))))
                                  (_g98209944_))
                              (_g98209944_))))
                      (_g98209944_))
                  (_g98209944_))
              (_g98209944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g98209944_))))
                                      (_g98209944_))
                                  (_g98209944_))
                              (_g98209944_))))
                      (_g98209944_))))
              (_g98209944_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop987710080_ _target987410075_ '()))))
                             (___match1344013441_
                              (lambda (_e982510203_
                                       _hd982610206_
                                       _tl982710208_
                                       ___splice1341713418_
                                       _target982810211_
                                       _tl983010213_)
                                (letrec ((_loop983110216_
                                          (lambda (_hd982910219_
                                                   _arg983510221_)
                                            (if (gx#stx-pair? _hd982910219_)
                                                (let ((_e983210224_
                                                       (gx#stx-e
                                                        _hd982910219_)))
                                                  (let ((_lp-tl983410229_
                                                         (##cdr _e983210224_))
                                                        (_lp-hd983310227_
                                                         (##car _e983210224_)))
                                                    (_loop983110216_
                                                     _lp-tl983410229_
                                                     (cons _lp-hd983310227_
                                                           _arg983510221_))))
                                                (let ((_arg983610232_
                                                       (reverse _arg983510221_)))
                                                  (if (gx#stx-pair?
                                                       _tl982710208_)
                                                      (let ((_e983710235_
                                                             (gx#stx-e
                                                              _tl982710208_)))
                                                        (let ((_tl983910240_
                                                               (##cdr _e983710235_))
                                                              (_hd983810238_
                                                               (##car _e983710235_)))
                                                          (if (gx#stx-pair?
                                                               _hd983810238_)
                                                              (let ((_e984010243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd983810238_)))
                        (let ((_tl984210248_ (##cdr _e984010243_))
                              (_hd984110246_ (##car _e984010243_)))
                          (if (gx#identifier? _hd984110246_)
                              (if (gx#stx-eq? '%#call _hd984110246_)
                                  (if (gx#stx-pair? _tl984210248_)
                                      (let ((_e984310251_
                                             (gx#stx-e _tl984210248_)))
                                        (let ((_tl984510256_
                                               (##cdr _e984310251_))
                                              (_hd984410254_
                                               (##car _e984310251_)))
                                          (if (gx#stx-pair? _hd984410254_)
                                              (let ((_e984610259_
                                                     (gx#stx-e _hd984410254_)))
                                                (let ((_tl984810264_
                                                       (##cdr _e984610259_))
                                                      (_hd984710262_
                                                       (##car _e984610259_)))
                                                  (if (gx#identifier?
                                                       _hd984710262_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd984710262_)
                                                          (if (gx#stx-pair?
                                                               _tl984810264_)
                                                              (let ((_e984910267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl984810264_)))
                        (let ((_tl985110272_ (##cdr _e984910267_))
                              (_hd985010270_ (##car _e984910267_)))
                          (if (gx#stx-null? _tl985110272_)
                              (if (gx#stx-pair/null? _tl984510256_)
                                  (let ((___splice1341913420_
                                         (gx#syntax-split-splice
                                          _tl984510256_
                                          '0)))
                                    (let ((_tl985410277_
                                           (##vector-ref
                                            ___splice1341913420_
                                            '1))
                                          (_target985210275_
                                           (##vector-ref
                                            ___splice1341913420_
                                            '0)))
                                      (if (gx#stx-null? _tl985410277_)
                                          (letrec ((_loop985510280_
                                                    (lambda (_hd985310283_
                                                             _xarg985910285_)
                                                      (if (gx#stx-pair?
                                                           _hd985310283_)
                                                          (let ((_e985610288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd985310283_)))
                    (let ((_lp-tl985810293_ (##cdr _e985610288_))
                          (_lp-hd985710291_ (##car _e985610288_)))
                      (if (gx#stx-pair? _lp-hd985710291_)
                          (let ((_e986110296_ (gx#stx-e _lp-hd985710291_)))
                            (let ((_tl986310301_ (##cdr _e986110296_))
                                  (_hd986210299_ (##car _e986110296_)))
                              (if (gx#identifier? _hd986210299_)
                                  (if (gx#stx-eq? '%#ref _hd986210299_)
                                      (if (gx#stx-pair? _tl986310301_)
                                          (let ((_e986410304_
                                                 (gx#stx-e _tl986310301_)))
                                            (let ((_tl986610309_
                                                   (##cdr _e986410304_))
                                                  (_hd986510307_
                                                   (##car _e986410304_)))
                                              (if (gx#stx-null? _tl986610309_)
                                                  (_loop985510280_
                                                   _lp-tl985810293_
                                                   (cons _hd986510307_
                                                         _xarg985910285_))
                                                  (___match1345213453_
                                                   _e982510203_
                                                   _hd982610206_
                                                   _tl982710208_
                                                   ___splice1341713418_
                                                   _target982810211_
                                                   _tl983010213_))))
                                          (___match1345213453_
                                           _e982510203_
                                           _hd982610206_
                                           _tl982710208_
                                           ___splice1341713418_
                                           _target982810211_
                                           _tl983010213_))
                                      (___match1345213453_
                                       _e982510203_
                                       _hd982610206_
                                       _tl982710208_
                                       ___splice1341713418_
                                       _target982810211_
                                       _tl983010213_))
                                  (___match1345213453_
                                   _e982510203_
                                   _hd982610206_
                                   _tl982710208_
                                   ___splice1341713418_
                                   _target982810211_
                                   _tl983010213_))))
                          (___match1345213453_
                           _e982510203_
                           _hd982610206_
                           _tl982710208_
                           ___splice1341713418_
                           _target982810211_
                           _tl983010213_))))
                  (let ((_xarg986010312_ (reverse _xarg985910285_)))
                    (if (gx#stx-null? _tl983910240_)
                        (___kont1341513416_
                         _xarg986010312_
                         _hd985010270_
                         _arg983610232_)
                        (___match1345213453_
                         _e982510203_
                         _hd982610206_
                         _tl982710208_
                         ___splice1341713418_
                         _target982810211_
                         _tl983010213_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop985510280_
                                             _target985210275_
                                             '()))
                                          (___match1345213453_
                                           _e982510203_
                                           _hd982610206_
                                           _tl982710208_
                                           ___splice1341713418_
                                           _target982810211_
                                           _tl983010213_))))
                                  (___match1345213453_
                                   _e982510203_
                                   _hd982610206_
                                   _tl982710208_
                                   ___splice1341713418_
                                   _target982810211_
                                   _tl983010213_))
                              (___match1345213453_
                               _e982510203_
                               _hd982610206_
                               _tl982710208_
                               ___splice1341713418_
                               _target982810211_
                               _tl983010213_))))
                      (___match1345213453_
                       _e982510203_
                       _hd982610206_
                       _tl982710208_
                       ___splice1341713418_
                       _target982810211_
                       _tl983010213_))
                  (___match1345213453_
                   _e982510203_
                   _hd982610206_
                   _tl982710208_
                   ___splice1341713418_
                   _target982810211_
                   _tl983010213_))
              (___match1345213453_
               _e982510203_
               _hd982610206_
               _tl982710208_
               ___splice1341713418_
               _target982810211_
               _tl983010213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match1345213453_
                                               _e982510203_
                                               _hd982610206_
                                               _tl982710208_
                                               ___splice1341713418_
                                               _target982810211_
                                               _tl983010213_))))
                                      (___match1345213453_
                                       _e982510203_
                                       _hd982610206_
                                       _tl982710208_
                                       ___splice1341713418_
                                       _target982810211_
                                       _tl983010213_))
                                  (___match1345213453_
                                   _e982510203_
                                   _hd982610206_
                                   _tl982710208_
                                   ___splice1341713418_
                                   _target982810211_
                                   _tl983010213_))
                              (___match1345213453_
                               _e982510203_
                               _hd982610206_
                               _tl982710208_
                               ___splice1341713418_
                               _target982810211_
                               _tl983010213_))))
                      (___match1345213453_
                       _e982510203_
                       _hd982610206_
                       _tl982710208_
                       ___splice1341713418_
                       _target982810211_
                       _tl983010213_))))
              (___match1345213453_
               _e982510203_
               _hd982610206_
               _tl982710208_
               ___splice1341713418_
               _target982810211_
               _tl983010213_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_loop983110216_ _target982810211_ '())))))
                        (if (gx#stx-pair? ___stx1341313414_)
                            (let ((_e982510203_ (gx#stx-e ___stx1341313414_)))
                              (let ((_tl982710208_ (##cdr _e982510203_))
                                    (_hd982610206_ (##car _e982510203_)))
                                (if (gx#stx-pair/null? _hd982610206_)
                                    (let ((___splice1341713418_
                                           (gx#syntax-split-splice
                                            _hd982610206_
                                            '0)))
                                      (let ((_tl983010213_
                                             (##vector-ref
                                              ___splice1341713418_
                                              '1))
                                            (_target982810211_
                                             (##vector-ref
                                              ___splice1341713418_
                                              '0)))
                                        (if (gx#stx-null? _tl983010213_)
                                            (___match1344013441_
                                             _e982510203_
                                             _hd982610206_
                                             _tl982710208_
                                             ___splice1341713418_
                                             _target982810211_
                                             _tl983010213_)
                                            (___match1345213453_
                                             _e982510203_
                                             _hd982610206_
                                             _tl982710208_
                                             ___splice1341713418_
                                             _target982810211_
                                             _tl983010213_))))
                                    (if (gx#stx-pair? _tl982710208_)
                                        (let ((_e99139957_
                                               (gx#stx-e _tl982710208_)))
                                          (let ((_tl99159962_
                                                 (##cdr _e99139957_))
                                                (_hd99149960_
                                                 (##car _e99139957_)))
                                            (if (gx#stx-pair? _hd99149960_)
                                                (let ((_e99169965_
                                                       (gx#stx-e
                                                        _hd99149960_)))
                                                  (let ((_tl99189970_
                                                         (##cdr _e99169965_))
                                                        (_hd99179968_
                                                         (##car _e99169965_)))
                                                    (if (gx#identifier?
                                                         _hd99179968_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd99179968_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl99189970_)
                        (let ((_e99199973_ (gx#stx-e _tl99189970_)))
                          (let ((_tl99219978_ (##cdr _e99199973_))
                                (_hd99209976_ (##car _e99199973_)))
                            (if (gx#stx-pair? _hd99209976_)
                                (let ((_e99229981_ (gx#stx-e _hd99209976_)))
                                  (let ((_tl99249986_ (##cdr _e99229981_))
                                        (_hd99239984_ (##car _e99229981_)))
                                    (if (gx#identifier? _hd99239984_)
                                        (if (gx#stx-eq? '%#ref _hd99239984_)
                                            (if (gx#stx-pair? _tl99249986_)
                                                (let ((_e99259989_
                                                       (gx#stx-e
                                                        _tl99249986_)))
                                                  (let ((_tl99279994_
                                                         (##cdr _e99259989_))
                                                        (_hd99269992_
                                                         (##car _e99259989_)))
                                                    (if (gx#stx-null?
                                                         _tl99279994_)
                                                        (if (gx#stx-pair?
                                                             _tl99219978_)
                                                            (let ((_e99289997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl99219978_)))
                      (let ((_tl993010002_ (##cdr _e99289997_))
                            (_hd992910000_ (##car _e99289997_)))
                        (if (gx#stx-pair? _hd992910000_)
                            (let ((_e993110005_ (gx#stx-e _hd992910000_)))
                              (let ((_tl993310010_ (##cdr _e993110005_))
                                    (_hd993210008_ (##car _e993110005_)))
                                (if (gx#identifier? _hd993210008_)
                                    (if (gx#stx-eq? '%#ref _hd993210008_)
                                        (if (gx#stx-pair? _tl993310010_)
                                            (let ((_e993410013_
                                                   (gx#stx-e _tl993310010_)))
                                              (let ((_tl993610018_
                                                     (##cdr _e993410013_))
                                                    (_hd993510016_
                                                     (##car _e993410013_)))
                                                (if (gx#stx-null?
                                                     _tl993610018_)
                                                    (if (gx#stx-pair?
                                                         _tl993010002_)
                                                        (let ((_e993710021_
                                                               (gx#stx-e
                                                                _tl993010002_)))
                                                          (let ((_tl993910026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e993710021_))
                        (_hd993810024_ (##car _e993710021_)))
                    (if (gx#stx-null? _tl993910026_)
                        (if (gx#stx-null? _tl99159962_)
                            (___kont1342513426_
                             _hd993510016_
                             _hd99269992_
                             _hd982610206_)
                            (_g98209944_))
                        (_g98209944_))))
                (_g98209944_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98209944_))))
                                            (_g98209944_))
                                        (_g98209944_))
                                    (_g98209944_))))
                            (_g98209944_))))
                    (_g98209944_))
                (_g98209944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98209944_))
                                            (_g98209944_))
                                        (_g98209944_))))
                                (_g98209944_))))
                        (_g98209944_))
                    (_g98209944_))
                (_g98209944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g98209944_))))
                                        (_g98209944_)))))
                            (_g98209944_)))))))
               (_generate19666_
                (lambda (_args9801_ _arglen9802_ _hd9803_ _body9804_)
                  (let* ((_len9806_ (gx#stx-length _hd9803_))
                         (_condition9808_
                          (if (gx#stx-list? _hd9803_)
                              (cons '##fx=
                                    (cons _arglen9802_ (cons _len9806_ '())))
                              (if (> _len9806_ '0)
                                  (cons '##fx>=
                                        (cons _arglen9802_
                                              (cons _len9806_ '())))
                                  '#t)))
                         (_dispatch9810_
                          (if (_dispatch-case?9664_ _hd9803_ _body9804_)
                              (_dispatch-case-e9665_ _hd9803_ _body9804_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9803_)
                                          (cons (gxc#compile-e _body9804_)
                                                '()))))))
                    (cons _condition9808_
                          (cons (cons 'apply
                                      (cons _dispatch9810_
                                            (cons _args9801_ '())))
                                '()))))))
        (let* ((_g96689696_
                (lambda (_g96699693_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g96699693_)))
               (_g96679798_
                (lambda (_g96699699_)
                  (if (gx#stx-pair? _g96699699_)
                      (let ((_e96729701_ (gx#stx-e _g96699699_)))
                        (let ((_hd96739704_ (##car _e96729701_))
                              (_tl96749706_ (##cdr _e96729701_)))
                          (if (gx#stx-pair/null? _tl96749706_)
                              (let ((_g14225_
                                     (gx#syntax-split-splice _tl96749706_ '0)))
                                (begin
                                  (let ((_g14226_
                                         (if (##values? _g14225_)
                                             (##vector-length _g14225_)
                                             1)))
                                    (if (not (##fx= _g14226_ 2))
                                        (error "Context expects 2 values"
                                               _g14226_)))
                                  (let ((_target96759709_
                                         (##vector-ref _g14225_ 0))
                                        (_tl96779711_
                                         (##vector-ref _g14225_ 1)))
                                    (if (gx#stx-null? _tl96779711_)
                                        (letrec ((_loop96789714_
                                                  (lambda (_hd96769717_
                                                           _body96829719_
                                                           _hd96839721_)
                                                    (if (gx#stx-pair?
                                                         _hd96769717_)
                                                        (let ((_e96799724_
                                                               (gx#stx-e
                                                                _hd96769717_)))
                                                          (let ((_lp-hd96809727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e96799724_))
                        (_lp-tl96819729_ (##cdr _e96799724_)))
                    (if (gx#stx-pair? _lp-hd96809727_)
                        (let ((_e96869732_ (gx#stx-e _lp-hd96809727_)))
                          (let ((_hd96879735_ (##car _e96869732_))
                                (_tl96889737_ (##cdr _e96869732_)))
                            (if (gx#stx-pair? _tl96889737_)
                                (let ((_e96899740_ (gx#stx-e _tl96889737_)))
                                  (let ((_hd96909743_ (##car _e96899740_))
                                        (_tl96919745_ (##cdr _e96899740_)))
                                    (if (gx#stx-null? _tl96919745_)
                                        (_loop96789714_
                                         _lp-tl96819729_
                                         (cons _hd96909743_ _body96829719_)
                                         (cons _hd96879735_ _hd96839721_))
                                        (_g96689696_ _g96699699_))))
                                (_g96689696_ _g96699699_))))
                        (_g96689696_ _g96699699_))))
                (let ((_body96849748_ (reverse _body96829719_))
                      (_hd96859750_ (reverse _hd96839721_)))
                  ((lambda (_L9753_ _L9754_)
                     (let ((_args9773_ (gxc#generate-runtime-temporary__0))
                           (_arglen9774_ (gxc#generate-runtime-temporary__0))
                           (_name9775_
                            (let ((_$e9770_
                                   (table-ref
                                    (gxc#current-compile-runtime-names)
                                    _stx9662_
                                    '#f)))
                              (if _$e9770_ _$e9770_ ''case-lambda-dispatch))))
                       (cons 'lambda
                             (cons _args9773_
                                   (cons (cons 'let
                                               (cons (cons (cons _arglen9774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'length (cons _args9773_ '())) '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons 'cond
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 cons
                                 (cons (cons 'else
                                             (cons (cons '##raise-wrong-number-of-arguments-exception
                                                         (cons _name9775_
                                                               (cons _args9773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (map (lambda (_g97769779_ _g97779781_)
                                        (_generate19666_
                                         _args9773_
                                         _arglen9774_
                                         _g97769779_
                                         _g97779781_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g97839786_
                                                         _g97849788_)
                                                  (cons _g97839786_
                                                        _g97849788_))
                                                '()
                                                _L9754_))
                                      (begin
                                        '#!void
                                        (foldr1 (lambda (_g97909793_
                                                         _g97919795_)
                                                  (cons _g97909793_
                                                        _g97919795_))
                                                '()
                                                _L9753_)))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _body96849748_
                   _hd96859750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop96789714_
                                           _target96759709_
                                           '()
                                           '()))
                                        (_g96689696_ _g96699699_)))))
                              (_g96689696_ _g96699699_))))
                      (_g96689696_ _g96699699_)))))
          (_g96679798_ _stx9662_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx8727_ _compiled-body?8728_)
        (letrec ((_generate-simple8730_
                  (lambda (_hd9649_ _body9650_)
                    (_coalesce-let*8731_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd9649_
                      _body9650_
                      _compiled-body?8728_))))
                 (_coalesce-let*8731_
                  (lambda (_code9033_)
                    (let* ((___stx1353513536_ _code9033_)
                           (_g90389173_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1353513536_))))
                      (let ((___kont1353713538_
                             (lambda (_L9608_ _L9609_ _L9610_)
                               (cons 'let
                                     (cons (cons (cons _L9610_
                                                       (cons _L9609_ '()))
                                                 '())
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g96389641_
                                                              _g96399643_)
                                                       (cons _g96389641_
                                                             _g96399643_))
                                                     '()
                                                     _L9608_))))))
                            (___kont1354113542_
                             (lambda (_L9467_ _L9468_ _L9469_ _L9470_ _L9471_)
                               (cons 'let*
                                     (cons (cons (cons _L9471_
                                                       (cons _L9470_ '()))
                                                 (cons (cons _L9469_
                                                             (cons _L9468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g95079510_
                                                              _g95089512_)
                                                       (cons _g95079510_
                                                             _g95089512_))
                                                     '()
                                                     _L9467_))))))
                            (___kont1354513546_
                             (lambda (_L9297_ _L9298_ _L9299_ _L9300_)
                               (cons 'let*
                                     (cons (cons (cons _L9300_
                                                       (cons _L9299_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g93359338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g93369340_)
                     (cons _g93359338_ _g93369340_))
                   '()
                   _L9298_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g93429345_
                                                              _g93439347_)
                                                       (cons _g93429345_
                                                             _g93439347_))
                                                     '()
                                                     _L9297_))))))
                            (___kont1355113552_ (lambda () _code9033_)))
                        (let* ((___match1378013781_
                                (lambda (_e91279185_
                                         _hd91289188_
                                         _tl91299190_
                                         _e91309193_
                                         _hd91319196_
                                         _tl91329198_
                                         _e91339201_
                                         _hd91349204_
                                         _tl91359206_
                                         _e91369209_
                                         _hd91379212_
                                         _tl91389214_
                                         _e91399217_
                                         _hd91409220_
                                         _tl91419222_
                                         _e91429225_
                                         _hd91439228_
                                         _tl91449230_
                                         _e91459233_
                                         _hd91469236_
                                         _tl91479238_
                                         _e91489241_
                                         _hd91499244_
                                         _tl91509246_
                                         ___splice1354713548_
                                         _target91519249_
                                         _tl91539251_)
                                  (letrec ((_loop91549254_
                                            (lambda (_hd91529257_
                                                     _bind91589259_)
                                              (if (gx#stx-pair? _hd91529257_)
                                                  (let ((_e91559262_
                                                         (gx#stx-e
                                                          _hd91529257_)))
                                                    (let ((_lp-tl91579267_
                                                           (##cdr _e91559262_))
                                                          (_lp-hd91569265_
                                                           (##car _e91559262_)))
                                                      (_loop91549254_
                                                       _lp-tl91579267_
                                                       (cons _lp-hd91569265_
                                                             _bind91589259_))))
                                                  (let ((_bind91599270_
                                                         (reverse _bind91589259_)))
                                                    (if (gx#stx-pair/null?
                                                         _tl91509246_)
                                                        (let ((___splice1354913550_
                                                               (gx#syntax-split-splice
                                                                _tl91509246_
                                                                '0)))
                                                          (let ((_tl91629275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice1354913550_ '1))
                        (_target91609273_
                         (##vector-ref ___splice1354913550_ '0)))
                    (if (gx#stx-null? _tl91629275_)
                        (letrec ((_loop91639278_
                                  (lambda (_hd91619281_ _body91679283_)
                                    (if (gx#stx-pair? _hd91619281_)
                                        (let ((_e91649286_
                                               (gx#stx-e _hd91619281_)))
                                          (let ((_lp-tl91669291_
                                                 (##cdr _e91649286_))
                                                (_lp-hd91659289_
                                                 (##car _e91649286_)))
                                            (_loop91639278_
                                             _lp-tl91669291_
                                             (cons _lp-hd91659289_
                                                   _body91679283_))))
                                        (let ((_body91689294_
                                               (reverse _body91679283_)))
                                          (if (gx#stx-null? _tl91449230_)
                                              (___kont1354513546_
                                               _body91689294_
                                               _bind91599270_
                                               _hd91409220_
                                               _hd91379212_)
                                              (___kont1355113552_)))))))
                          (_loop91639278_ _target91609273_ '()))
                        (___kont1355113552_))))
                (___kont1355113552_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_loop91549254_ _target91519249_ '()))))
                               (___match1371213713_
                                (lambda (_e90819355_
                                         _hd90829358_
                                         _tl90839360_
                                         _e90849363_
                                         _hd90859366_
                                         _tl90869368_
                                         _e90879371_
                                         _hd90889374_
                                         _tl90899376_
                                         _e90909379_
                                         _hd90919382_
                                         _tl90929384_
                                         _e90939387_
                                         _hd90949390_
                                         _tl90959392_
                                         _e90969395_
                                         _hd90979398_
                                         _tl90989400_
                                         _e90999403_
                                         _hd91009406_
                                         _tl91019408_
                                         _e91029411_
                                         _hd91039414_
                                         _tl91049416_
                                         _e91059419_
                                         _hd91069422_
                                         _tl91079424_
                                         _e91089427_
                                         _hd91099430_
                                         _tl91109432_
                                         _e91119435_
                                         _hd91129438_
                                         _tl91139440_
                                         ___splice1354313544_
                                         _target91149443_
                                         _tl91169445_)
                                  (letrec ((_loop91179448_
                                            (lambda (_hd91159451_
                                                     _body91219453_)
                                              (if (gx#stx-pair? _hd91159451_)
                                                  (let ((_e91189456_
                                                         (gx#stx-e
                                                          _hd91159451_)))
                                                    (let ((_lp-tl91209461_
                                                           (##cdr _e91189456_))
                                                          (_lp-hd91199459_
                                                           (##car _e91189456_)))
                                                      (_loop91179448_
                                                       _lp-tl91209461_
                                                       (cons _lp-hd91199459_
                                                             _body91219453_))))
                                                  (let ((_body91229464_
                                                         (reverse _body91219453_)))
                                                    (if (gx#stx-null?
                                                         _tl90989400_)
                                                        (___kont1354113542_
                                                         _body91229464_
                                                         _hd91129438_
                                                         _hd91099430_
                                                         _hd90949390_
                                                         _hd90919382_)
                                                        (___kont1355113552_)))))))
                                    (_loop91179448_ _target91149443_ '()))))
                               (___match1362213623_
                                (lambda (_e90439520_
                                         _hd90449523_
                                         _tl90459525_
                                         _e90469528_
                                         _hd90479531_
                                         _tl90489533_
                                         _e90499536_
                                         _hd90509539_
                                         _tl90519541_
                                         _e90529544_
                                         _hd90539547_
                                         _tl90549549_
                                         _e90559552_
                                         _hd90569555_
                                         _tl90579557_
                                         _e90589560_
                                         _hd90599563_
                                         _tl90609565_
                                         _e90619568_
                                         _hd90629571_
                                         _tl90639573_
                                         _e90649576_
                                         _hd90659579_
                                         _tl90669581_
                                         ___splice1353913540_
                                         _target90679584_
                                         _tl90699586_)
                                  (letrec ((_loop90709589_
                                            (lambda (_hd90689592_
                                                     _body90749594_)
                                              (if (gx#stx-pair? _hd90689592_)
                                                  (let ((_e90719597_
                                                         (gx#stx-e
                                                          _hd90689592_)))
                                                    (let ((_lp-tl90739602_
                                                           (##cdr _e90719597_))
                                                          (_lp-hd90729600_
                                                           (##car _e90719597_)))
                                                      (_loop90709589_
                                                       _lp-tl90739602_
                                                       (cons _lp-hd90729600_
                                                             _body90749594_))))
                                                  (let ((_body90759605_
                                                         (reverse _body90749594_)))
                                                    (if (gx#stx-null?
                                                         _tl90609565_)
                                                        (___kont1353713538_
                                                         _body90759605_
                                                         _hd90569555_
                                                         _hd90539547_)
                                                        (___kont1355113552_)))))))
                                    (_loop90709589_ _target90679584_ '())))))
                          (if (gx#stx-pair? ___stx1353513536_)
                              (let ((_e90439520_ (gx#stx-e ___stx1353513536_)))
                                (let ((_tl90459525_ (##cdr _e90439520_))
                                      (_hd90449523_ (##car _e90439520_)))
                                  (if (gx#identifier? _hd90449523_)
                                      (if (gx#stx-eq? 'let _hd90449523_)
                                          (if (gx#stx-pair? _tl90459525_)
                                              (let ((_e90469528_
                                                     (gx#stx-e _tl90459525_)))
                                                (let ((_tl90489533_
                                                       (##cdr _e90469528_))
                                                      (_hd90479531_
                                                       (##car _e90469528_)))
                                                  (if (gx#stx-pair?
                                                       _hd90479531_)
                                                      (let ((_e90499536_
                                                             (gx#stx-e
                                                              _hd90479531_)))
                                                        (let ((_tl90519541_
                                                               (##cdr _e90499536_))
                                                              (_hd90509539_
                                                               (##car _e90499536_)))
                                                          (if (gx#stx-pair?
                                                               _hd90509539_)
                                                              (let ((_e90529544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd90509539_)))
                        (let ((_tl90549549_ (##cdr _e90529544_))
                              (_hd90539547_ (##car _e90529544_)))
                          (if (gx#stx-pair? _tl90549549_)
                              (let ((_e90559552_ (gx#stx-e _tl90549549_)))
                                (let ((_tl90579557_ (##cdr _e90559552_))
                                      (_hd90569555_ (##car _e90559552_)))
                                  (if (gx#stx-null? _tl90579557_)
                                      (if (gx#stx-null? _tl90519541_)
                                          (if (gx#stx-pair? _tl90489533_)
                                              (let ((_e90589560_
                                                     (gx#stx-e _tl90489533_)))
                                                (let ((_tl90609565_
                                                       (##cdr _e90589560_))
                                                      (_hd90599563_
                                                       (##car _e90589560_)))
                                                  (if (gx#stx-pair?
                                                       _hd90599563_)
                                                      (let ((_e90619568_
                                                             (gx#stx-e
                                                              _hd90599563_)))
                                                        (let ((_tl90639573_
                                                               (##cdr _e90619568_))
                                                              (_hd90629571_
                                                               (##car _e90619568_)))
                                                          (if (gx#identifier?
                                                               _hd90629571_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'let
                           _hd90629571_)
                          (if (gx#stx-pair? _tl90639573_)
                              (let ((_e90649576_ (gx#stx-e _tl90639573_)))
                                (let ((_tl90669581_ (##cdr _e90649576_))
                                      (_hd90659579_ (##car _e90649576_)))
                                  (if (gx#stx-null? _hd90659579_)
                                      (if (gx#stx-pair/null? _tl90669581_)
                                          (let ((___splice1353913540_
                                                 (gx#syntax-split-splice
                                                  _tl90669581_
                                                  '0)))
                                            (let ((_tl90699586_
                                                   (##vector-ref
                                                    ___splice1353913540_
                                                    '1))
                                                  (_target90679584_
                                                   (##vector-ref
                                                    ___splice1353913540_
                                                    '0)))
                                              (if (gx#stx-null? _tl90699586_)
                                                  (___match1362213623_
                                                   _e90439520_
                                                   _hd90449523_
                                                   _tl90459525_
                                                   _e90469528_
                                                   _hd90479531_
                                                   _tl90489533_
                                                   _e90499536_
                                                   _hd90509539_
                                                   _tl90519541_
                                                   _e90529544_
                                                   _hd90539547_
                                                   _tl90549549_
                                                   _e90559552_
                                                   _hd90569555_
                                                   _tl90579557_
                                                   _e90589560_
                                                   _hd90599563_
                                                   _tl90609565_
                                                   _e90619568_
                                                   _hd90629571_
                                                   _tl90639573_
                                                   _e90649576_
                                                   _hd90659579_
                                                   _tl90669581_
                                                   ___splice1353913540_
                                                   _target90679584_
                                                   _tl90699586_)
                                                  (___kont1355113552_))))
                                          (___kont1355113552_))
                                      (if (gx#stx-pair? _hd90659579_)
                                          (let ((_e91059419_
                                                 (gx#stx-e _hd90659579_)))
                                            (let ((_tl91079424_
                                                   (##cdr _e91059419_))
                                                  (_hd91069422_
                                                   (##car _e91059419_)))
                                              (if (gx#stx-pair? _hd91069422_)
                                                  (let ((_e91089427_
                                                         (gx#stx-e
                                                          _hd91069422_)))
                                                    (let ((_tl91109432_
                                                           (##cdr _e91089427_))
                                                          (_hd91099430_
                                                           (##car _e91089427_)))
                                                      (if (gx#stx-pair?
                                                           _tl91109432_)
                                                          (let ((_e91119435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl91109432_)))
                    (let ((_tl91139440_ (##cdr _e91119435_))
                          (_hd91129438_ (##car _e91119435_)))
                      (if (gx#stx-null? _tl91139440_)
                          (if (gx#stx-null? _tl91079424_)
                              (if (gx#stx-pair/null? _tl90669581_)
                                  (let ((___splice1354313544_
                                         (gx#syntax-split-splice
                                          _tl90669581_
                                          '0)))
                                    (let ((_tl91169445_
                                           (##vector-ref
                                            ___splice1354313544_
                                            '1))
                                          (_target91149443_
                                           (##vector-ref
                                            ___splice1354313544_
                                            '0)))
                                      (if (gx#stx-null? _tl91169445_)
                                          (___match1371213713_
                                           _e90439520_
                                           _hd90449523_
                                           _tl90459525_
                                           _e90469528_
                                           _hd90479531_
                                           _tl90489533_
                                           _e90499536_
                                           _hd90509539_
                                           _tl90519541_
                                           _e90529544_
                                           _hd90539547_
                                           _tl90549549_
                                           _e90559552_
                                           _hd90569555_
                                           _tl90579557_
                                           _e90589560_
                                           _hd90599563_
                                           _tl90609565_
                                           _e90619568_
                                           _hd90629571_
                                           _tl90639573_
                                           _e90649576_
                                           _hd90659579_
                                           _tl90669581_
                                           _e91059419_
                                           _hd91069422_
                                           _tl91079424_
                                           _e91089427_
                                           _hd91099430_
                                           _tl91109432_
                                           _e91119435_
                                           _hd91129438_
                                           _tl91139440_
                                           ___splice1354313544_
                                           _target91149443_
                                           _tl91169445_)
                                          (___kont1355113552_))))
                                  (___kont1355113552_))
                              (___kont1355113552_))
                          (___kont1355113552_))))
                  (___kont1355113552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont1355113552_))))
                                          (___kont1355113552_)))))
                              (___kont1355113552_))
                          (if (gx#stx-eq? 'let* _hd90629571_)
                              (if (gx#stx-pair? _tl90639573_)
                                  (let ((_e91489241_ (gx#stx-e _tl90639573_)))
                                    (let ((_tl91509246_ (##cdr _e91489241_))
                                          (_hd91499244_ (##car _e91489241_)))
                                      (if (gx#stx-pair/null? _hd91499244_)
                                          (let ((___splice1354713548_
                                                 (gx#syntax-split-splice
                                                  _hd91499244_
                                                  '0)))
                                            (let ((_tl91539251_
                                                   (##vector-ref
                                                    ___splice1354713548_
                                                    '1))
                                                  (_target91519249_
                                                   (##vector-ref
                                                    ___splice1354713548_
                                                    '0)))
                                              (if (gx#stx-null? _tl91539251_)
                                                  (___match1378013781_
                                                   _e90439520_
                                                   _hd90449523_
                                                   _tl90459525_
                                                   _e90469528_
                                                   _hd90479531_
                                                   _tl90489533_
                                                   _e90499536_
                                                   _hd90509539_
                                                   _tl90519541_
                                                   _e90529544_
                                                   _hd90539547_
                                                   _tl90549549_
                                                   _e90559552_
                                                   _hd90569555_
                                                   _tl90579557_
                                                   _e90589560_
                                                   _hd90599563_
                                                   _tl90609565_
                                                   _e90619568_
                                                   _hd90629571_
                                                   _tl90639573_
                                                   _e91489241_
                                                   _hd91499244_
                                                   _tl91509246_
                                                   ___splice1354713548_
                                                   _target91519249_
                                                   _tl91539251_)
                                                  (___kont1355113552_))))
                                          (___kont1355113552_))))
                                  (___kont1355113552_))
                              (___kont1355113552_)))
                      (___kont1355113552_))))
              (___kont1355113552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1355113552_))
                                          (___kont1355113552_))
                                      (___kont1355113552_))))
                              (___kont1355113552_))))
                      (___kont1355113552_))))
              (___kont1355113552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont1355113552_))
                                          (___kont1355113552_))
                                      (___kont1355113552_))))
                              (___kont1355113552_)))))))
                 (_generate-values8732_
                  (lambda (_hd8846_ _body8847_)
                    (let _lp8849_ ((_rest8851_ _hd8846_)
                                   (_bind8852_ '())
                                   (_check8853_ '())
                                   (_post8854_ '()))
                      (let* ((___stx1382713828_ _rest8851_)
                             (_g88578868_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1382713828_))))
                        (let ((___kont1382913830_
                               (lambda (_L8895_ _L8896_)
                                 (let* ((___stx1378313784_ _L8896_)
                                        (_g89118936_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1378313784_))))
                                   (let ((___kont1378513786_
                                          (lambda (_L9009_ _L9010_)
                                            (let ((_eid9024_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L9010_))
                                                  (_expr9025_
                                                   (gxc#compile-e _L9009_)))
                                              (_lp8849_
                                               _L8895_
                                               (cons (cons _eid9024_
                                                           (cons _expr9025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8852_)
                                               _check8853_
                                               _post8854_))))
                                         (___kont1378713788_
                                          (lambda (_L8957_ _L8958_)
                                            (let* ((_vals8971_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values8973_
                                                    (gxc#generate-runtime-check-values
                                                     _vals8971_
                                                     _L8958_
                                                     _L8957_))
                                                   (_refs8975_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals8971_
                                                     _L8958_))
                                                   (_expr8977_
                                                    (gxc#compile-e _L8957_)))
                                              (_lp8849_
                                               _L8895_
                                               (cons (cons _vals8971_
                                                           (cons _expr8977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8852_)
                                               (cons _check-values8973_
                                                     _check8853_)
                                               (cons _refs8975_
                                                     _post8854_))))))
                                     (if (gx#stx-pair? ___stx1378313784_)
                                         (let ((_e89158985_
                                                (gx#stx-e ___stx1378313784_)))
                                           (let ((_tl89178990_
                                                  (##cdr _e89158985_))
                                                 (_hd89168988_
                                                  (##car _e89158985_)))
                                             (if (gx#stx-pair? _hd89168988_)
                                                 (let ((_e89188993_
                                                        (gx#stx-e
                                                         _hd89168988_)))
                                                   (let ((_tl89208998_
                                                          (##cdr _e89188993_))
                                                         (_hd89198996_
                                                          (##car _e89188993_)))
                                                     (if (gx#stx-null?
                                                          _tl89208998_)
                                                         (if (gx#stx-pair?
                                                              _tl89178990_)
                                                             (let ((_e89219001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl89178990_)))
                       (let ((_tl89239006_ (##cdr _e89219001_))
                             (_hd89229004_ (##car _e89219001_)))
                         (if (gx#stx-null? _tl89239006_)
                             (___kont1378513786_ _hd89229004_ _hd89198996_)
                             (_g89118936_))))
                     (_g89118936_))
                 (if (gx#stx-pair? _tl89178990_)
                     (let ((_e89298949_ (gx#stx-e _tl89178990_)))
                       (let ((_tl89318954_ (##cdr _e89298949_))
                             (_hd89308952_ (##car _e89298949_)))
                         (if (gx#stx-null? _tl89318954_)
                             (___kont1378713788_ _hd89308952_ _hd89168988_)
                             (_g89118936_))))
                     (_g89118936_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl89178990_)
                                                     (let ((_e89298949_
                                                            (gx#stx-e
                                                             _tl89178990_)))
                                                       (let ((_tl89318954_
                                                              (##cdr _e89298949_))
                                                             (_hd89308952_
                                                              (##car _e89298949_)))
                                                         (if (gx#stx-null?
                                                              _tl89318954_)
                                                             (___kont1378713788_
                                                              _hd89308952_
                                                              _hd89168988_)
                                                             (_g89118936_))))
                                                     (_g89118936_)))))
                                         (_g89118936_))))))
                              (___kont1383113832_
                               (lambda ()
                                 (let* ((_body8875_
                                         (if _compiled-body?8728_
                                             _body8847_
                                             (gxc#compile-e _body8847_)))
                                        (_body8877_
                                         (_generate-values-post8733_
                                          _post8854_
                                          _body8875_))
                                        (_body8879_
                                         (_generate-values-check8734_
                                          _check8853_
                                          _body8877_)))
                                   (cons 'let
                                         (cons (reverse _bind8852_)
                                               (cons _body8879_ '())))))))
                          (if (gx#stx-pair? ___stx1382713828_)
                              (let ((_e88618887_ (gx#stx-e ___stx1382713828_)))
                                (let ((_tl88638892_ (##cdr _e88618887_))
                                      (_hd88628890_ (##car _e88618887_)))
                                  (___kont1382913830_
                                   _tl88638892_
                                   _hd88628890_)))
                              (___kont1383113832_)))))))
                 (_generate-values-post8733_
                  (lambda (_post8805_ _body8806_)
                    (let _lp8808_ ((_rest8810_ _post8805_)
                                   (_body8811_ _body8806_))
                      (let* ((_rest88128820_ _rest8810_)
                             (_else88148828_ (lambda () _body8811_))
                             (_K88168834_
                              (lambda (_rest8831_ _bind8832_)
                                (_lp8808_
                                 _rest8831_
                                 (cons 'let
                                       (cons _bind8832_
                                             (cons _body8811_ '())))))))
                        (if (##pair? _rest88128820_)
                            (let ((_hd88178837_ (##car _rest88128820_))
                                  (_tl88188839_ (##cdr _rest88128820_)))
                              (let* ((_bind8842_ _hd88178837_)
                                     (_rest8844_ _tl88188839_))
                                (_K88168834_ _rest8844_ _bind8842_)))
                            (_else88148828_))))))
                 (_generate-values-check8734_
                  (lambda (_check8802_ _body8803_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8803_ '())
                                  (reverse _check8802_))))))
          (let* ((_g87368753_
                  (lambda (_g87378750_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g87378750_)))
                 (_g87358799_
                  (lambda (_g87378756_)
                    (if (gx#stx-pair? _g87378756_)
                        (let ((_e87408758_ (gx#stx-e _g87378756_)))
                          (let ((_hd87418761_ (##car _e87408758_))
                                (_tl87428763_ (##cdr _e87408758_)))
                            (if (gx#stx-pair? _tl87428763_)
                                (let ((_e87438766_ (gx#stx-e _tl87428763_)))
                                  (let ((_hd87448769_ (##car _e87438766_))
                                        (_tl87458771_ (##cdr _e87438766_)))
                                    (if (gx#stx-pair? _tl87458771_)
                                        (let ((_e87468774_
                                               (gx#stx-e _tl87458771_)))
                                          (let ((_hd87478777_
                                                 (##car _e87468774_))
                                                (_tl87488779_
                                                 (##cdr _e87468774_)))
                                            (if (gx#stx-null? _tl87488779_)
                                                ((lambda (_L8782_ _L8783_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8783_)
                                                       (_generate-simple8730_
                                                        _L8783_
                                                        _L8782_)
                                                       (_generate-values8732_
                                                        _L8783_
                                                        _L8782_)))
                                                 _hd87478777_
                                                 _hd87448769_)
                                                (_g87368753_ _g87378756_))))
                                        (_g87368753_ _g87378756_))))
                                (_g87368753_ _g87378756_))))
                        (_g87368753_ _g87378756_)))))
            (_g87358799_ _stx8727_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx9655_)
          (let ((_compiled-body?9657_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx9655_
             _compiled-body?9657_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g14228_
          (let ((_g14227_ (length _g14228_)))
            (cond ((##fx= _g14227_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g14228_))
                  ((##fx= _g14227_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g14228_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g14228_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals8621_ _hd8622_)
      (let _lp8624_ ((_rest8626_ _hd8622_) (_k8627_ '0) (_r8628_ '()))
        (let* ((___stx1384113842_ _rest8626_)
               (_g86338650_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1384113842_))))
          (let ((___kont1384313844_
                 (lambda (_L8713_)
                   (_lp8624_ _L8713_ (fx+ _k8627_ '1) _r8628_)))
                (___kont1384513846_
                 (lambda (_L8686_ _L8687_)
                   (_lp8624_
                    _L8686_
                    (fx+ _k8627_ '1)
                    (cons (cons (gxc#generate-runtime-binding-id _L8687_)
                                (cons (gxc#generate-runtime-values-ref
                                       _vals8621_
                                       _k8627_
                                       _L8686_)
                                      '()))
                          _r8628_))))
                (___kont1384713848_
                 (lambda (_L8662_)
                   (foldl1 cons
                           (cons (cons (gxc#generate-runtime-binding-id
                                        _L8662_)
                                       (cons (gxc#generate-runtime-values->list
                                              _vals8621_
                                              _k8627_)
                                             '()))
                                 '())
                           _r8628_)))
                (___kont1384913850_ (lambda () (reverse _r8628_))))
            (let ((_g86318673_
                   (lambda ()
                     (let ((_L8662_ ___stx1384113842_))
                       (if (gx#identifier? _L8662_)
                           (___kont1384713848_ _L8662_)
                           (___kont1384913850_))))))
              (if (gx#stx-pair? ___stx1384113842_)
                  (let ((_e86368702_ (gx#stx-e ___stx1384113842_)))
                    (let ((_tl86388707_ (##cdr _e86368702_))
                          (_hd86378705_ (##car _e86368702_)))
                      (if (gx#stx-datum? _hd86378705_)
                          (let ((_e86398710_ (gx#stx-e _hd86378705_)))
                            (if (equal? _e86398710_ '#f)
                                (___kont1384313844_ _tl86388707_)
                                (___kont1384513846_
                                 _tl86388707_
                                 _hd86378705_)))
                          (___kont1384513846_ _tl86388707_ _hd86378705_))))
                  (_g86318673_))))))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx8303_ _compiled-body?8304_)
        (letrec ((_generate-simple8306_
                  (lambda (_hd8608_ _body8609_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd8608_
                     _body8609_
                     _compiled-body?8304_)))
                 (_generate-values8307_
                  (lambda (_hd8387_ _body8388_)
                    (let _lp8390_ ((_rest8392_ _hd8387_)
                                   (_bind8393_ '())
                                   (_check8394_ '())
                                   (_post8395_ '()))
                      (let* ((___stx1391513916_ _rest8392_)
                             (_g83988409_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx1391513916_))))
                        (let ((___kont1391713918_
                               (lambda (_L8436_ _L8437_)
                                 (let* ((___stx1387113872_ _L8437_)
                                        (_g84528477_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx1387113872_))))
                                   (let ((___kont1387313874_
                                          (lambda (_L8584_ _L8585_)
                                            (let ((_eid8599_
                                                   (gxc#generate-runtime-binding-id*
                                                    _L8585_))
                                                  (_expr8600_
                                                   (gxc#compile-e _L8584_)))
                                              (_lp8390_
                                               _L8436_
                                               (cons (cons _eid8599_
                                                           (cons _expr8600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind8393_)
                                               _check8394_
                                               _post8395_))))
                                         (___kont1387513876_
                                          (lambda (_L8498_ _L8499_)
                                            (let* ((_vals8512_
                                                    (gxc#generate-runtime-temporary__0))
                                                   (_check-values8514_
                                                    (gxc#generate-runtime-check-values
                                                     _vals8512_
                                                     _L8499_
                                                     _L8498_))
                                                   (_refs8516_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _vals8512_
                                                     _L8499_))
                                                   (_expr8518_
                                                    (gxc#compile-e _L8498_)))
                                              (_lp8390_
                                               _L8436_
                                               (foldl1 cons
                                                       (cons (cons _vals8512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr8518_ '()))
                     _bind8393_)
               (map (lambda (_e85208522_)
                      (let* ((_g85248533_ _e85208522_)
                             (_E85268537_
                              (lambda ()
                                (error '"No clause matching" _g85248533_)))
                             (_K85278542_
                              (lambda (_eid8540_)
                                (cons _eid8540_ (cons '#!void '())))))
                        (if (##pair? _g85248533_)
                            (let ((_hd85288545_ (##car _g85248533_))
                                  (_tl85298547_ (##cdr _g85248533_)))
                              (let ((_eid8550_ _hd85288545_))
                                (if (##pair? _tl85298547_)
                                    (let ((_tl85318552_ (##cdr _tl85298547_)))
                                      (if (##null? _tl85318552_)
                                          (_K85278542_ _eid8550_)
                                          (_E85268537_)))
                                    (_E85268537_))))
                            (_E85268537_))))
                    _refs8516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _check-values8514_
                                                     _check8394_)
                                               (foldl1 cons
                                                       _refs8516_
                                                       _post8395_))))))
                                     (if (gx#stx-pair? ___stx1387113872_)
                                         (let ((_e84568560_
                                                (gx#stx-e ___stx1387113872_)))
                                           (let ((_tl84588565_
                                                  (##cdr _e84568560_))
                                                 (_hd84578563_
                                                  (##car _e84568560_)))
                                             (if (gx#stx-pair? _hd84578563_)
                                                 (let ((_e84598568_
                                                        (gx#stx-e
                                                         _hd84578563_)))
                                                   (let ((_tl84618573_
                                                          (##cdr _e84598568_))
                                                         (_hd84608571_
                                                          (##car _e84598568_)))
                                                     (if (gx#stx-null?
                                                          _tl84618573_)
                                                         (if (gx#stx-pair?
                                                              _tl84588565_)
                                                             (let ((_e84628576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl84588565_)))
                       (let ((_tl84648581_ (##cdr _e84628576_))
                             (_hd84638579_ (##car _e84628576_)))
                         (if (gx#stx-null? _tl84648581_)
                             (___kont1387313874_ _hd84638579_ _hd84608571_)
                             (_g84528477_))))
                     (_g84528477_))
                 (if (gx#stx-pair? _tl84588565_)
                     (let ((_e84708490_ (gx#stx-e _tl84588565_)))
                       (let ((_tl84728495_ (##cdr _e84708490_))
                             (_hd84718493_ (##car _e84708490_)))
                         (if (gx#stx-null? _tl84728495_)
                             (___kont1387513876_ _hd84718493_ _hd84578563_)
                             (_g84528477_))))
                     (_g84528477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl84588565_)
                                                     (let ((_e84708490_
                                                            (gx#stx-e
                                                             _tl84588565_)))
                                                       (let ((_tl84728495_
                                                              (##cdr _e84708490_))
                                                             (_hd84718493_
                                                              (##car _e84708490_)))
                                                         (if (gx#stx-null?
                                                              _tl84728495_)
                                                             (___kont1387513876_
                                                              _hd84718493_
                                                              _hd84578563_)
                                                             (_g84528477_))))
                                                     (_g84528477_)))))
                                         (_g84528477_))))))
                              (___kont1391913920_
                               (lambda ()
                                 (let* ((_body8416_
                                         (if _compiled-body?8304_
                                             _body8388_
                                             (gxc#compile-e _body8388_)))
                                        (_body8418_
                                         (_generate-values-post8309_
                                          _post8395_
                                          _body8416_))
                                        (_body8420_
                                         (_generate-values-check8308_
                                          _check8394_
                                          _body8418_)))
                                   (cons 'letrec
                                         (cons (reverse _bind8393_)
                                               (cons _body8420_ '())))))))
                          (if (gx#stx-pair? ___stx1391513916_)
                              (let ((_e84028428_ (gx#stx-e ___stx1391513916_)))
                                (let ((_tl84048433_ (##cdr _e84028428_))
                                      (_hd84038431_ (##car _e84028428_)))
                                  (___kont1391713918_
                                   _tl84048433_
                                   _hd84038431_)))
                              (___kont1391913920_)))))))
                 (_generate-values-check8308_
                  (lambda (_check8384_ _body8385_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8385_ '())
                                  (reverse _check8384_)))))
                 (_generate-values-post8309_
                  (lambda (_post8377_ _body8378_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8378_ '())
                                  (map (lambda (_g83798381_)
                                         (cons 'set! _g83798381_))
                                       (reverse _post8377_)))))))
          (let* ((_g83118328_
                  (lambda (_g83128325_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g83128325_)))
                 (_g83108374_
                  (lambda (_g83128331_)
                    (if (gx#stx-pair? _g83128331_)
                        (let ((_e83158333_ (gx#stx-e _g83128331_)))
                          (let ((_hd83168336_ (##car _e83158333_))
                                (_tl83178338_ (##cdr _e83158333_)))
                            (if (gx#stx-pair? _tl83178338_)
                                (let ((_e83188341_ (gx#stx-e _tl83178338_)))
                                  (let ((_hd83198344_ (##car _e83188341_))
                                        (_tl83208346_ (##cdr _e83188341_)))
                                    (if (gx#stx-pair? _tl83208346_)
                                        (let ((_e83218349_
                                               (gx#stx-e _tl83208346_)))
                                          (let ((_hd83228352_
                                                 (##car _e83218349_))
                                                (_tl83238354_
                                                 (##cdr _e83218349_)))
                                            (if (gx#stx-null? _tl83238354_)
                                                ((lambda (_L8357_ _L8358_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8358_)
                                                       (_generate-simple8306_
                                                        _L8358_
                                                        _L8357_)
                                                       (_generate-values8307_
                                                        _L8358_
                                                        _L8357_)))
                                                 _hd83228352_
                                                 _hd83198344_)
                                                (_g83118328_ _g83128331_))))
                                        (_g83118328_ _g83128331_))))
                                (_g83118328_ _g83128331_))))
                        (_g83118328_ _g83128331_)))))
            (_g83108374_ _stx8303_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx8614_)
          (let ((_compiled-body?8616_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx8614_
             _compiled-body?8616_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g14230_
          (let ((_g14229_ (length _g14230_)))
            (cond ((##fx= _g14229_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g14230_))
                  ((##fx= _g14229_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g14230_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g14230_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7885_)
      (letrec ((_generate-values7887_
                (lambda (_hd8130_ _body8131_)
                  (let _lp8133_ ((_rest8135_ _hd8130_) (_bind8136_ '()))
                    (let* ((_rest81378145_ _rest8135_)
                           (_else81398156_
                            (lambda ()
                              (let ((_bind8153_ (reverse _bind8136_))
                                    (_body8154_ (gxc#compile-e _body8131_)))
                                (cons 'letrec*
                                      (cons _bind8153_
                                            (cons _body8154_ '()))))))
                           (_K81418290_
                            (lambda (_rest8159_ _hd-bind8160_)
                              (let* ((___stx1392913930_ _hd-bind8160_)
                                     (_g81638188_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         ___stx1392913930_))))
                                (let ((___kont1393113932_
                                       (lambda (_L8269_ _L8270_)
                                         (let ((_eid8284_
                                                (gxc#generate-runtime-binding-id*
                                                 _L8270_))
                                               (_expr8285_
                                                (gxc#compile-e _L8269_)))
                                           (_lp8133_
                                            _rest8159_
                                            (cons (cons _eid8284_
                                                        (cons _expr8285_ '()))
                                                  _bind8136_)))))
                                      (___kont1393313934_
                                       (lambda (_L8209_ _L8210_)
                                         (let* ((_vals8229_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_tmp8231_
                                                 (gxc#generate-runtime-temporary__0))
                                                (_check-values8233_
                                                 (gxc#generate-runtime-check-values
                                                  _tmp8231_
                                                  _L8210_
                                                  _L8209_))
                                                (_refs8235_
                                                 (gxc#generate-runtime-let-values-bind
                                                  _vals8229_
                                                  _L8210_))
                                                (_expr8237_
                                                 (gxc#compile-e _L8209_)))
                                           (_lp8133_
                                            _rest8159_
                                            (foldl1 cons
                                                    (cons (cons _vals8229_
                                                                (cons (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons _tmp8231_
                                                      (cons _expr8237_ '()))
                                                '())
                                          (cons _check-values8233_
                                                (cons _tmp8231_ '()))))
                              '()))
                  _bind8136_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs8235_))))))
                                  (if (gx#stx-pair? ___stx1392913930_)
                                      (let ((_e81678245_
                                             (gx#stx-e ___stx1392913930_)))
                                        (let ((_tl81698250_
                                               (##cdr _e81678245_))
                                              (_hd81688248_
                                               (##car _e81678245_)))
                                          (if (gx#stx-pair? _hd81688248_)
                                              (let ((_e81708253_
                                                     (gx#stx-e _hd81688248_)))
                                                (let ((_tl81728258_
                                                       (##cdr _e81708253_))
                                                      (_hd81718256_
                                                       (##car _e81708253_)))
                                                  (if (gx#stx-null?
                                                       _tl81728258_)
                                                      (if (gx#stx-pair?
                                                           _tl81698250_)
                                                          (let ((_e81738261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl81698250_)))
                    (let ((_tl81758266_ (##cdr _e81738261_))
                          (_hd81748264_ (##car _e81738261_)))
                      (if (gx#stx-null? _tl81758266_)
                          (___kont1393113932_ _hd81748264_ _hd81718256_)
                          (_g81638188_))))
                  (_g81638188_))
              (if (gx#stx-pair? _tl81698250_)
                  (let ((_e81818201_ (gx#stx-e _tl81698250_)))
                    (let ((_tl81838206_ (##cdr _e81818201_))
                          (_hd81828204_ (##car _e81818201_)))
                      (if (gx#stx-null? _tl81838206_)
                          (___kont1393313934_ _hd81828204_ _hd81688248_)
                          (_g81638188_))))
                  (_g81638188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl81698250_)
                                                  (let ((_e81818201_
                                                         (gx#stx-e
                                                          _tl81698250_)))
                                                    (let ((_tl81838206_
                                                           (##cdr _e81818201_))
                                                          (_hd81828204_
                                                           (##car _e81818201_)))
                                                      (if (gx#stx-null?
                                                           _tl81838206_)
                                                          (___kont1393313934_
                                                           _hd81828204_
                                                           _hd81688248_)
                                                          (_g81638188_))))
                                                  (_g81638188_)))))
                                      (_g81638188_)))))))
                      (if (##pair? _rest81378145_)
                          (let ((_hd81428293_ (##car _rest81378145_))
                                (_tl81438295_ (##cdr _rest81378145_)))
                            (let* ((_hd-bind8298_ _hd81428293_)
                                   (_rest8300_ _tl81438295_))
                              (_K81418290_ _rest8300_ _hd-bind8298_)))
                          (_else81398156_))))))
               (_generate-letrec?7888_
                (lambda (_hd8020_)
                  (let _lp8022_ ((_rest8024_ _hd8020_))
                    (let* ((_rest80258033_ _rest8024_)
                           (_else80278041_ (lambda () '#t))
                           (_K80298118_
                            (lambda (_rest8044_ _hd-bind8045_)
                              (let* ((_g80478064_
                                      (lambda (_g80488061_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g80488061_)))
                                     (_g80468115_
                                      (lambda (_g80488067_)
                                        (if (gx#stx-pair? _g80488067_)
                                            (let ((_e80518069_
                                                   (gx#stx-e _g80488067_)))
                                              (let ((_hd80528072_
                                                     (##car _e80518069_))
                                                    (_tl80538074_
                                                     (##cdr _e80518069_)))
                                                (if (gx#stx-pair? _hd80528072_)
                                                    (let ((_e80548077_
                                                           (gx#stx-e
                                                            _hd80528072_)))
                                                      (let ((_hd80558080_
                                                             (##car _e80548077_))
                                                            (_tl80568082_
                                                             (##cdr _e80548077_)))
                                                        (if (gx#stx-null?
                                                             _tl80568082_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80538074_)
                        (let ((_e80578085_ (gx#stx-e _tl80538074_)))
                          (let ((_hd80588088_ (##car _e80578085_))
                                (_tl80598090_ (##cdr _e80578085_)))
                            (if (gx#stx-null? _tl80598090_)
                                ((lambda (_L8093_ _L8094_)
                                   (if (_is-lambda-expr?7889_ _L8093_)
                                       (_lp8022_ _rest8044_)
                                       '#f))
                                 _hd80588088_
                                 _hd80558080_)
                                (_g80478064_ _g80488067_))))
                        (_g80478064_ _g80488067_))
                    (_g80478064_ _g80488067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g80478064_
                                                     _g80488067_))))
                                            (_g80478064_ _g80488067_)))))
                                (_g80468115_ _hd-bind8045_)))))
                      (if (##pair? _rest80258033_)
                          (let ((_hd80308121_ (##car _rest80258033_))
                                (_tl80318123_ (##cdr _rest80258033_)))
                            (let* ((_hd-bind8126_ _hd80308121_)
                                   (_rest8128_ _tl80318123_))
                              (_K80298118_ _rest8128_ _hd-bind8126_)))
                          (_else80278041_))))))
               (_is-lambda-expr?7889_
                (lambda (_expr7957_)
                  (let* ((___stx1397313974_ _expr7957_)
                         (_g79607974_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx1397313974_))))
                    (let ((___kont1397513976_ (lambda (_L8002_ _L8003_) '#t))
                          (___kont1397713978_ (lambda () '#f)))
                      (if (gx#stx-pair? ___stx1397313974_)
                          (let ((_e79647986_ (gx#stx-e ___stx1397313974_)))
                            (let ((_tl79667991_ (##cdr _e79647986_))
                                  (_hd79657989_ (##car _e79647986_)))
                              (if (gx#identifier? _hd79657989_)
                                  (if (gx#stx-eq? '%#lambda _hd79657989_)
                                      (if (gx#stx-pair? _tl79667991_)
                                          (let ((_e79677994_
                                                 (gx#stx-e _tl79667991_)))
                                            (let ((_tl79697999_
                                                   (##cdr _e79677994_))
                                                  (_hd79687997_
                                                   (##car _e79677994_)))
                                              (___kont1397513976_
                                               _tl79697999_
                                               _hd79687997_)))
                                          (___kont1397713978_))
                                      (___kont1397713978_))
                                  (___kont1397713978_))))
                          (___kont1397713978_)))))))
        (let* ((_g78917908_
                (lambda (_g78927905_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78927905_)))
               (_g78907954_
                (lambda (_g78927911_)
                  (if (gx#stx-pair? _g78927911_)
                      (let ((_e78957913_ (gx#stx-e _g78927911_)))
                        (let ((_hd78967916_ (##car _e78957913_))
                              (_tl78977918_ (##cdr _e78957913_)))
                          (if (gx#stx-pair? _tl78977918_)
                              (let ((_e78987921_ (gx#stx-e _tl78977918_)))
                                (let ((_hd78997924_ (##car _e78987921_))
                                      (_tl79007926_ (##cdr _e78987921_)))
                                  (if (gx#stx-pair? _tl79007926_)
                                      (let ((_e79017929_
                                             (gx#stx-e _tl79007926_)))
                                        (let ((_hd79027932_
                                               (##car _e79017929_))
                                              (_tl79037934_
                                               (##cdr _e79017929_)))
                                          (if (gx#stx-null? _tl79037934_)
                                              ((lambda (_L7937_ _L7938_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7938_)
                                                     (if (_generate-letrec?7888_
                                                          _L7938_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7938_
                                                          _L7937_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7938_
                                                          _L7937_
                                                          '#f))
                                                     (_generate-values7887_
                                                      _L7938_
                                                      _L7937_)))
                                               _hd79027932_
                                               _hd78997924_)
                                              (_g78917908_ _g78927911_))))
                                      (_g78917908_ _g78927911_))))
                              (_g78917908_ _g78927911_))))
                      (_g78917908_ _g78927911_)))))
          (_g78907954_ _stx7885_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7778_)
      (let _lp7780_ ((_rest7782_ _hd7778_))
        (let* ((___stx1399713998_ _rest7782_)
               (_g77867807_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1399713998_))))
          (let ((___kont1399914000_
                 (lambda (_L7858_ _L7859_ _L7860_) (_lp7780_ _L7858_)))
                (___kont1400114002_ (lambda () '#t))
                (___kont1400314004_ (lambda () '#f)))
            (let ((_g77847821_
                   (lambda ()
                     (if (gx#stx-null? ___stx1399713998_)
                         (___kont1400114002_)
                         (___kont1400314004_)))))
              (if (gx#stx-pair? ___stx1399713998_)
                  (let ((_e77917826_ (gx#stx-e ___stx1399713998_)))
                    (let ((_tl77937831_ (##cdr _e77917826_))
                          (_hd77927829_ (##car _e77917826_)))
                      (if (gx#stx-pair? _hd77927829_)
                          (let ((_e77947834_ (gx#stx-e _hd77927829_)))
                            (let ((_tl77967839_ (##cdr _e77947834_))
                                  (_hd77957837_ (##car _e77947834_)))
                              (if (gx#stx-pair? _hd77957837_)
                                  (let ((_e77977842_ (gx#stx-e _hd77957837_)))
                                    (let ((_tl77997847_ (##cdr _e77977842_))
                                          (_hd77987845_ (##car _e77977842_)))
                                      (if (gx#stx-null? _tl77997847_)
                                          (if (gx#stx-pair? _tl77967839_)
                                              (let ((_e78007850_
                                                     (gx#stx-e _tl77967839_)))
                                                (let ((_tl78027855_
                                                       (##cdr _e78007850_))
                                                      (_hd78017853_
                                                       (##car _e78007850_)))
                                                  (if (gx#stx-null?
                                                       _tl78027855_)
                                                      (___kont1399914000_
                                                       _tl77937831_
                                                       _hd78017853_
                                                       _hd77987845_)
                                                      (___kont1400314004_))))
                                              (___kont1400314004_))
                                          (___kont1400314004_))))
                                  (___kont1400314004_))))
                          (___kont1400314004_))))
                  (_g77847821_))))))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form7702_ _hd7703_ _body7704_ _compiled-body?7705_)
      (letrec ((_generate17707_
                (lambda (_bind7709_)
                  (let* ((_g77117728_
                          (lambda (_g77127725_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g77127725_)))
                         (_g77107775_
                          (lambda (_g77127731_)
                            (if (gx#stx-pair? _g77127731_)
                                (let ((_e77157733_ (gx#stx-e _g77127731_)))
                                  (let ((_hd77167736_ (##car _e77157733_))
                                        (_tl77177738_ (##cdr _e77157733_)))
                                    (if (gx#stx-pair? _hd77167736_)
                                        (let ((_e77187741_
                                               (gx#stx-e _hd77167736_)))
                                          (let ((_hd77197744_
                                                 (##car _e77187741_))
                                                (_tl77207746_
                                                 (##cdr _e77187741_)))
                                            (if (gx#stx-null? _tl77207746_)
                                                (if (gx#stx-pair? _tl77177738_)
                                                    (let ((_e77217749_
                                                           (gx#stx-e
                                                            _tl77177738_)))
                                                      (let ((_hd77227752_
                                                             (##car _e77217749_))
                                                            (_tl77237754_
                                                             (##cdr _e77217749_)))
                                                        (if (gx#stx-null?
                                                             _tl77237754_)
                                                            ((lambda (_L7757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7758_)
                       (cons (gxc#generate-runtime-binding-id* _L7758_)
                             (cons (gxc#compile-e _L7757_) '())))
                     _hd77227752_
                     _hd77197744_)
                    (_g77117728_ _g77127731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77117728_ _g77127731_))
                                                (_g77117728_ _g77127731_))))
                                        (_g77117728_ _g77127731_))))
                                (_g77117728_ _g77127731_)))))
                    (_g77107775_ _bind7709_)))))
        (cons _form7702_
              (cons (map _generate17707_ _hd7703_)
                    (cons (if _compiled-body?7705_
                              _body7704_
                              (gxc#compile-e _body7704_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx7610_)
      (letrec ((_generate17612_
                (lambda (_datum7664_)
                  (if (let ((_$e7666_ (null? _datum7664_)))
                        (if _$e7666_
                            _$e7666_
                            (let ((_$e7669_ (interned-symbol? _datum7664_)))
                              (if _$e7669_
                                  _$e7669_
                                  (let ((_$e7672_
                                         (gx#self-quoting? _datum7664_)))
                                    (if _$e7672_
                                        _$e7672_
                                        (eof-object? _datum7664_)))))))
                      _datum7664_
                      (if (uninterned-symbol? _datum7664_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum7664_
                           '#t)
                          (if (pair? _datum7664_)
                              (cons (_generate17612_ (car _datum7664_))
                                    (_generate17612_ (cdr _datum7664_)))
                              (if (box? _datum7664_)
                                  (box (_generate17612_ (unbox _datum7664_)))
                                  (if (vector? _datum7664_)
                                      (vector-map _generate17612_ _datum7664_)
                                      (if (let ((_$e7675_
                                                 (s8vector? _datum7664_)))
                                            (if _$e7675_
                                                _$e7675_
                                                (let ((_$e7678_
                                                       (u8vector?
                                                        _datum7664_)))
                                                  (if _$e7678_
                                                      _$e7678_
                                                      (let ((_$e7681_
                                                             (s16vector?
                                                              _datum7664_)))
                                                        (if _$e7681_
                                                            _$e7681_
                                                            (let ((_$e7684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum7664_)))
                      (if _$e7684_
                          _$e7684_
                          (let ((_$e7687_ (s32vector? _datum7664_)))
                            (if _$e7687_
                                _$e7687_
                                (let ((_$e7690_ (u32vector? _datum7664_)))
                                  (if _$e7690_
                                      _$e7690_
                                      (let ((_$e7693_
                                             (s64vector? _datum7664_)))
                                        (if _$e7693_
                                            _$e7693_
                                            (let ((_$e7696_
                                                   (u64vector? _datum7664_)))
                                              (if _$e7696_
                                                  _$e7696_
                                                  (let ((_$e7699_
                                                         (f32vector?
                                                          _datum7664_)))
                                                    (if _$e7699_
                                                        _$e7699_
                                                        (f64vector?
                                                         _datum7664_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum7664_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx7610_))))))))))
        (let* ((_g76147627_
                (lambda (_g76157624_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g76157624_)))
               (_g76137661_
                (lambda (_g76157630_)
                  (if (gx#stx-pair? _g76157630_)
                      (let ((_e76177632_ (gx#stx-e _g76157630_)))
                        (let ((_hd76187635_ (##car _e76177632_))
                              (_tl76197637_ (##cdr _e76177632_)))
                          (if (gx#stx-pair? _tl76197637_)
                              (let ((_e76207640_ (gx#stx-e _tl76197637_)))
                                (let ((_hd76217643_ (##car _e76207640_))
                                      (_tl76227645_ (##cdr _e76207640_)))
                                  (if (gx#stx-null? _tl76227645_)
                                      ((lambda (_L7648_)
                                         (cons 'quote
                                               (cons (_generate17612_
                                                      (gx#stx-e _L7648_))
                                                     '())))
                                       _hd76217643_)
                                      (_g76147627_ _g76157630_))))
                              (_g76147627_ _g76157630_))))
                      (_g76147627_ _g76157630_)))))
          (_g76137661_ _stx7610_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx7303_)
      (let* ((_g73057319_
              (lambda (_g73067316_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g73067316_)))
             (_g73047607_
              (lambda (_g73067322_)
                (if (gx#stx-pair? _g73067322_)
                    (let ((_e73097324_ (gx#stx-e _g73067322_)))
                      (let ((_hd73107327_ (##car _e73097324_))
                            (_tl73117329_ (##cdr _e73097324_)))
                        (if (gx#stx-pair? _tl73117329_)
                            (let ((_e73127332_ (gx#stx-e _tl73117329_)))
                              (let ((_hd73137335_ (##car _e73127332_))
                                    (_tl73147337_ (##cdr _e73127332_)))
                                ((lambda (_L7340_ _L7341_)
                                   (let ((_rator7354_ (gxc#compile-e _L7341_))
                                         (_rands7355_
                                          (map gxc#compile-e _L7340_)))
                                     (let* ((___stx1403714038_ _rator7354_)
                                            (_g73587410_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx1403714038_))))
                                       (let ((___kont1403914040_
                                              (lambda (_L7534_
                                                       _L7535_
                                                       _L7536_
                                                       _L7537_)
                                                (if (fx= (length _rands7355_)
                                                         (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr1 (lambda (_g75737576_ _g75747578_)
                                     (cons _g75737576_ _g75747578_))
                                   '()
                                   _L7536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_id7581_ _L7537_)
                                                           (_args7590_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g75827585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g75837587_)
                                (cons _g75827585_ _g75837587_))
                              '()
                              _L7536_)))
                   (_body7599_
                    (begin
                      '#!void
                      (foldr1 (lambda (_g75917594_ _g75927596_)
                                (cons _g75917594_ _g75927596_))
                              '()
                              _L7535_)))
                   (_init7601_ (map list _args7590_ _rands7355_)))
              (cons 'let (cons _id7581_ (cons _init7601_ _body7599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#raise-compile-error
                                                     '"Illegal loop application; arity mismatch"
                                                     _stx7303_))))
                                             (___kont1404514046_
                                              (lambda ()
                                                (cons _rator7354_
                                                      _rands7355_))))
                                         (let ((___match1410414105_
                                                (lambda (_e73647422_
                                                         _hd73657425_
                                                         _tl73667427_
                                                         _e73677430_
                                                         _hd73687433_
                                                         _tl73697435_
                                                         _e73707438_
                                                         _hd73717441_
                                                         _tl73727443_
                                                         _e73737446_
                                                         _hd73747449_
                                                         _tl73757451_
                                                         _e73767454_
                                                         _hd73777457_
                                                         _tl73787459_
                                                         _e73797462_
                                                         _hd73807465_
                                                         _tl73817467_
                                                         _e73827470_
                                                         _hd73837473_
                                                         _tl73847475_
                                                         ___splice1404114042_
                                                         _target73857478_
                                                         _tl73877480_)
                                                  (letrec ((_loop73887483_
                                                            (lambda (_hd73867486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg73927488_)
                      (if (gx#stx-pair? _hd73867486_)
                          (let ((_e73897491_ (gx#stx-e _hd73867486_)))
                            (let ((_lp-tl73917496_ (##cdr _e73897491_))
                                  (_lp-hd73907494_ (##car _e73897491_)))
                              (_loop73887483_
                               _lp-tl73917496_
                               (cons _lp-hd73907494_ _arg73927488_))))
                          (let ((_arg73937499_ (reverse _arg73927488_)))
                            (if (gx#stx-pair/null? _tl73847475_)
                                (let ((___splice1404314044_
                                       (gx#syntax-split-splice
                                        _tl73847475_
                                        '0)))
                                  (let ((_tl73967504_
                                         (##vector-ref
                                          ___splice1404314044_
                                          '1))
                                        (_target73947502_
                                         (##vector-ref
                                          ___splice1404314044_
                                          '0)))
                                    (if (gx#stx-null? _tl73967504_)
                                        (letrec ((_loop73977507_
                                                  (lambda (_hd73957510_
                                                           _body74017512_)
                                                    (if (gx#stx-pair?
                                                         _hd73957510_)
                                                        (let ((_e73987515_
                                                               (gx#stx-e
                                                                _hd73957510_)))
                                                          (let ((_lp-tl74007520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e73987515_))
                        (_lp-hd73997518_ (##car _e73987515_)))
                    (_loop73977507_
                     _lp-tl74007520_
                     (cons _lp-hd73997518_ _body74017512_))))
                (let ((_body74027523_ (reverse _body74017512_)))
                  (if (gx#stx-null? _tl73787459_)
                      (if (gx#stx-null? _tl73727443_)
                          (if (gx#stx-pair? _tl73697435_)
                              (let ((_e74037526_ (gx#stx-e _tl73697435_)))
                                (let ((_tl74057531_ (##cdr _e74037526_))
                                      (_hd74047529_ (##car _e74037526_)))
                                  (if (gx#stx-null? _tl74057531_)
                                      (let ((_L7534_ _hd74047529_)
                                            (_L7535_ _body74027523_)
                                            (_L7536_ _arg73937499_)
                                            (_L7537_ _hd73747449_))
                                        (if (eq? _L7537_ _L7534_)
                                            (___kont1403914040_
                                             _L7534_
                                             _L7535_
                                             _L7536_
                                             _L7537_)
                                            (___kont1404514046_)))
                                      (___kont1404514046_))))
                              (___kont1404514046_))
                          (___kont1404514046_))
                      (___kont1404514046_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop73977507_
                                           _target73947502_
                                           '()))
                                        (___kont1404514046_))))
                                (___kont1404514046_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop73887483_
                                                     _target73857478_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx1403714038_)
                                               (let ((_e73647422_
                                                      (gx#stx-e
                                                       ___stx1403714038_)))
                                                 (let ((_tl73667427_
                                                        (##cdr _e73647422_))
                                                       (_hd73657425_
                                                        (##car _e73647422_)))
                                                   (if (gx#identifier?
                                                        _hd73657425_)
                                                       (if (gx#stx-eq?
                                                            'letrec
                                                            _hd73657425_)
                                                           (if (gx#stx-pair?
                                                                _tl73667427_)
                                                               (let ((_e73677430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl73667427_)))
                         (let ((_tl73697435_ (##cdr _e73677430_))
                               (_hd73687433_ (##car _e73677430_)))
                           (if (gx#stx-pair? _hd73687433_)
                               (let ((_e73707438_ (gx#stx-e _hd73687433_)))
                                 (let ((_tl73727443_ (##cdr _e73707438_))
                                       (_hd73717441_ (##car _e73707438_)))
                                   (if (gx#stx-pair? _hd73717441_)
                                       (let ((_e73737446_
                                              (gx#stx-e _hd73717441_)))
                                         (let ((_tl73757451_
                                                (##cdr _e73737446_))
                                               (_hd73747449_
                                                (##car _e73737446_)))
                                           (if (gx#stx-pair? _tl73757451_)
                                               (let ((_e73767454_
                                                      (gx#stx-e _tl73757451_)))
                                                 (let ((_tl73787459_
                                                        (##cdr _e73767454_))
                                                       (_hd73777457_
                                                        (##car _e73767454_)))
                                                   (if (gx#stx-pair?
                                                        _hd73777457_)
                                                       (let ((_e73797462_
                                                              (gx#stx-e
                                                               _hd73777457_)))
                                                         (let ((_tl73817467_
                                                                (##cdr _e73797462_))
                                                               (_hd73807465_
                                                                (##car _e73797462_)))
                                                           (if (gx#identifier?
                                                                _hd73807465_)
                                                               (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'lambda
                            _hd73807465_)
                           (if (gx#stx-pair? _tl73817467_)
                               (let ((_e73827470_ (gx#stx-e _tl73817467_)))
                                 (let ((_tl73847475_ (##cdr _e73827470_))
                                       (_hd73837473_ (##car _e73827470_)))
                                   (if (gx#stx-pair/null? _hd73837473_)
                                       (let ((___splice1404114042_
                                              (gx#syntax-split-splice
                                               _hd73837473_
                                               '0)))
                                         (let ((_tl73877480_
                                                (##vector-ref
                                                 ___splice1404114042_
                                                 '1))
                                               (_target73857478_
                                                (##vector-ref
                                                 ___splice1404114042_
                                                 '0)))
                                           (if (gx#stx-null? _tl73877480_)
                                               (___match1410414105_
                                                _e73647422_
                                                _hd73657425_
                                                _tl73667427_
                                                _e73677430_
                                                _hd73687433_
                                                _tl73697435_
                                                _e73707438_
                                                _hd73717441_
                                                _tl73727443_
                                                _e73737446_
                                                _hd73747449_
                                                _tl73757451_
                                                _e73767454_
                                                _hd73777457_
                                                _tl73787459_
                                                _e73797462_
                                                _hd73807465_
                                                _tl73817467_
                                                _e73827470_
                                                _hd73837473_
                                                _tl73847475_
                                                ___splice1404114042_
                                                _target73857478_
                                                _tl73877480_)
                                               (___kont1404514046_))))
                                       (___kont1404514046_))))
                               (___kont1404514046_))
                           (___kont1404514046_))
                       (___kont1404514046_))))
               (___kont1404514046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1404514046_))))
                                       (___kont1404514046_))))
                               (___kont1404514046_))))
                       (___kont1404514046_))
                   (___kont1404514046_))
               (___kont1404514046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont1404514046_)))))))
                                 _tl73147337_
                                 _hd73137335_)))
                            (_g73057319_ _g73067322_))))
                    (_g73057319_ _g73067322_)))))
        (_g73047607_ _stx7303_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx7265_)
      (let* ((_g72677277_
              (lambda (_g72687274_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72687274_)))
             (_g72667300_
              (lambda (_g72687280_)
                (if (gx#stx-pair? _g72687280_)
                    (let ((_e72707282_ (gx#stx-e _g72687280_)))
                      (let ((_hd72717285_ (##car _e72707282_))
                            (_tl72727287_ (##cdr _e72707282_)))
                        ((lambda (_L7290_)
                           (cons 'if (map gxc#compile-e _L7290_)))
                         _tl72727287_)))
                    (_g72677277_ _g72687280_)))))
        (_g72667300_ _stx7265_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx7214_)
      (let* ((_g72167229_
              (lambda (_g72177226_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g72177226_)))
             (_g72157262_
              (lambda (_g72177232_)
                (if (gx#stx-pair? _g72177232_)
                    (let ((_e72197234_ (gx#stx-e _g72177232_)))
                      (let ((_hd72207237_ (##car _e72197234_))
                            (_tl72217239_ (##cdr _e72197234_)))
                        (if (gx#stx-pair? _tl72217239_)
                            (let ((_e72227242_ (gx#stx-e _tl72217239_)))
                              (let ((_hd72237245_ (##car _e72227242_))
                                    (_tl72247247_ (##cdr _e72227242_)))
                                (if (gx#stx-null? _tl72247247_)
                                    ((lambda (_L7250_)
                                       (gxc#generate-runtime-binding-id
                                        _L7250_))
                                     _hd72237245_)
                                    (_g72167229_ _g72177232_))))
                            (_g72167229_ _g72177232_))))
                    (_g72167229_ _g72177232_)))))
        (_g72157262_ _stx7214_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx7147_)
      (let* ((_g71497166_
              (lambda (_g71507163_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g71507163_)))
             (_g71487211_
              (lambda (_g71507169_)
                (if (gx#stx-pair? _g71507169_)
                    (let ((_e71537171_ (gx#stx-e _g71507169_)))
                      (let ((_hd71547174_ (##car _e71537171_))
                            (_tl71557176_ (##cdr _e71537171_)))
                        (if (gx#stx-pair? _tl71557176_)
                            (let ((_e71567179_ (gx#stx-e _tl71557176_)))
                              (let ((_hd71577182_ (##car _e71567179_))
                                    (_tl71587184_ (##cdr _e71567179_)))
                                (if (gx#stx-pair? _tl71587184_)
                                    (let ((_e71597187_
                                           (gx#stx-e _tl71587184_)))
                                      (let ((_hd71607190_ (##car _e71597187_))
                                            (_tl71617192_ (##cdr _e71597187_)))
                                        (if (gx#stx-null? _tl71617192_)
                                            ((lambda (_L7195_ _L7196_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L7196_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7195_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd71607190_
                                             _hd71577182_)
                                            (_g71497166_ _g71507169_))))
                                    (_g71497166_ _g71507169_))))
                            (_g71497166_ _g71507169_))))
                    (_g71497166_ _g71507169_)))))
        (_g71487211_ _stx7147_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx7080_)
      (let* ((_g70827099_
              (lambda (_g70837096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70837096_)))
             (_g70817144_
              (lambda (_g70837102_)
                (if (gx#stx-pair? _g70837102_)
                    (let ((_e70867104_ (gx#stx-e _g70837102_)))
                      (let ((_hd70877107_ (##car _e70867104_))
                            (_tl70887109_ (##cdr _e70867104_)))
                        (if (gx#stx-pair? _tl70887109_)
                            (let ((_e70897112_ (gx#stx-e _tl70887109_)))
                              (let ((_hd70907115_ (##car _e70897112_))
                                    (_tl70917117_ (##cdr _e70897112_)))
                                (if (gx#stx-pair? _tl70917117_)
                                    (let ((_e70927120_
                                           (gx#stx-e _tl70917117_)))
                                      (let ((_hd70937123_ (##car _e70927120_))
                                            (_tl70947125_ (##cdr _e70927120_)))
                                        (if (gx#stx-null? _tl70947125_)
                                            ((lambda (_L7128_ _L7129_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7128_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7129_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70937123_
                                             _hd70907115_)
                                            (_g70827099_ _g70837102_))))
                                    (_g70827099_ _g70837102_))))
                            (_g70827099_ _g70837102_))))
                    (_g70827099_ _g70837102_)))))
        (_g70817144_ _stx7080_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx7013_)
      (let* ((_g70157032_
              (lambda (_g70167029_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g70167029_)))
             (_g70147077_
              (lambda (_g70167035_)
                (if (gx#stx-pair? _g70167035_)
                    (let ((_e70197037_ (gx#stx-e _g70167035_)))
                      (let ((_hd70207040_ (##car _e70197037_))
                            (_tl70217042_ (##cdr _e70197037_)))
                        (if (gx#stx-pair? _tl70217042_)
                            (let ((_e70227045_ (gx#stx-e _tl70217042_)))
                              (let ((_hd70237048_ (##car _e70227045_))
                                    (_tl70247050_ (##cdr _e70227045_)))
                                (if (gx#stx-pair? _tl70247050_)
                                    (let ((_e70257053_
                                           (gx#stx-e _tl70247050_)))
                                      (let ((_hd70267056_ (##car _e70257053_))
                                            (_tl70277058_ (##cdr _e70257053_)))
                                        (if (gx#stx-null? _tl70277058_)
                                            ((lambda (_L7061_ _L7062_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L7061_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7062_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd70267056_
                                             _hd70237048_)
                                            (_g70157032_ _g70167035_))))
                                    (_g70157032_ _g70167035_))))
                            (_g70157032_ _g70167035_))))
                    (_g70157032_ _g70167035_)))))
        (_g70147077_ _stx7013_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6930_)
      (let* ((_g69326953_
              (lambda (_g69336950_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g69336950_)))
             (_g69317010_
              (lambda (_g69336956_)
                (if (gx#stx-pair? _g69336956_)
                    (let ((_e69376958_ (gx#stx-e _g69336956_)))
                      (let ((_hd69386961_ (##car _e69376958_))
                            (_tl69396963_ (##cdr _e69376958_)))
                        (if (gx#stx-pair? _tl69396963_)
                            (let ((_e69406966_ (gx#stx-e _tl69396963_)))
                              (let ((_hd69416969_ (##car _e69406966_))
                                    (_tl69426971_ (##cdr _e69406966_)))
                                (if (gx#stx-pair? _tl69426971_)
                                    (let ((_e69436974_
                                           (gx#stx-e _tl69426971_)))
                                      (let ((_hd69446977_ (##car _e69436974_))
                                            (_tl69456979_ (##cdr _e69436974_)))
                                        (if (gx#stx-pair? _tl69456979_)
                                            (let ((_e69466982_
                                                   (gx#stx-e _tl69456979_)))
                                              (let ((_hd69476985_
                                                     (##car _e69466982_))
                                                    (_tl69486987_
                                                     (##cdr _e69466982_)))
                                                (if (gx#stx-null? _tl69486987_)
                                                    ((lambda (_L6990_
                                                              _L6991_
                                                              _L6992_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6990_)
                           (cons (gxc#compile-e _L6991_)
                                 (cons (gxc#compile-e _L6992_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd69476985_
                                                     _hd69446977_
                                                     _hd69416969_)
                                                    (_g69326953_
                                                     _g69336956_))))
                                            (_g69326953_ _g69336956_))))
                                    (_g69326953_ _g69336956_))))
                            (_g69326953_ _g69336956_))))
                    (_g69326953_ _g69336956_)))))
        (_g69317010_ _stx6930_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6831_)
      (let* ((_g68336858_
              (lambda (_g68346855_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g68346855_)))
             (_g68326927_
              (lambda (_g68346861_)
                (if (gx#stx-pair? _g68346861_)
                    (let ((_e68396863_ (gx#stx-e _g68346861_)))
                      (let ((_hd68406866_ (##car _e68396863_))
                            (_tl68416868_ (##cdr _e68396863_)))
                        (if (gx#stx-pair? _tl68416868_)
                            (let ((_e68426871_ (gx#stx-e _tl68416868_)))
                              (let ((_hd68436874_ (##car _e68426871_))
                                    (_tl68446876_ (##cdr _e68426871_)))
                                (if (gx#stx-pair? _tl68446876_)
                                    (let ((_e68456879_
                                           (gx#stx-e _tl68446876_)))
                                      (let ((_hd68466882_ (##car _e68456879_))
                                            (_tl68476884_ (##cdr _e68456879_)))
                                        (if (gx#stx-pair? _tl68476884_)
                                            (let ((_e68486887_
                                                   (gx#stx-e _tl68476884_)))
                                              (let ((_hd68496890_
                                                     (##car _e68486887_))
                                                    (_tl68506892_
                                                     (##cdr _e68486887_)))
                                                (if (gx#stx-pair? _tl68506892_)
                                                    (let ((_e68516895_
                                                           (gx#stx-e
                                                            _tl68506892_)))
                                                      (let ((_hd68526898_
                                                             (##car _e68516895_))
                                                            (_tl68536900_
                                                             (##cdr _e68516895_)))
                                                        (if (gx#stx-null?
                                                             _tl68536900_)
                                                            ((lambda (_L6903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6904_
                              _L6905_
                              _L6906_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6904_)
                                   (cons (gxc#compile-e _L6903_)
                                         (cons (gxc#compile-e _L6905_)
                                               (cons (gxc#compile-e _L6906_)
                                                     (cons ''#f '())))))))
                     _hd68526898_
                     _hd68496890_
                     _hd68466882_
                     _hd68436874_)
                    (_g68336858_ _g68346861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g68336858_
                                                     _g68346861_))))
                                            (_g68336858_ _g68346861_))))
                                    (_g68336858_ _g68346861_))))
                            (_g68336858_ _g68346861_))))
                    (_g68336858_ _g68346861_)))))
        (_g68326927_ _stx6831_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx6748_)
      (let* ((_g67506771_
              (lambda (_g67516768_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g67516768_)))
             (_g67496828_
              (lambda (_g67516774_)
                (if (gx#stx-pair? _g67516774_)
                    (let ((_e67556776_ (gx#stx-e _g67516774_)))
                      (let ((_hd67566779_ (##car _e67556776_))
                            (_tl67576781_ (##cdr _e67556776_)))
                        (if (gx#stx-pair? _tl67576781_)
                            (let ((_e67586784_ (gx#stx-e _tl67576781_)))
                              (let ((_hd67596787_ (##car _e67586784_))
                                    (_tl67606789_ (##cdr _e67586784_)))
                                (if (gx#stx-pair? _tl67606789_)
                                    (let ((_e67616792_
                                           (gx#stx-e _tl67606789_)))
                                      (let ((_hd67626795_ (##car _e67616792_))
                                            (_tl67636797_ (##cdr _e67616792_)))
                                        (if (gx#stx-pair? _tl67636797_)
                                            (let ((_e67646800_
                                                   (gx#stx-e _tl67636797_)))
                                              (let ((_hd67656803_
                                                     (##car _e67646800_))
                                                    (_tl67666805_
                                                     (##cdr _e67646800_)))
                                                (if (gx#stx-null? _tl67666805_)
                                                    ((lambda (_L6808_
                                                              _L6809_
                                                              _L6810_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6808_)
                           (cons (gxc#compile-e _L6809_)
                                 (cons (gxc#compile-e _L6810_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd67656803_
                                                     _hd67626795_
                                                     _hd67596787_)
                                                    (_g67506771_
                                                     _g67516774_))))
                                            (_g67506771_ _g67516774_))))
                                    (_g67506771_ _g67516774_))))
                            (_g67506771_ _g67516774_))))
                    (_g67506771_ _g67516774_)))))
        (_g67496828_ _stx6748_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx6649_)
      (let* ((_g66516676_
              (lambda (_g66526673_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g66526673_)))
             (_g66506745_
              (lambda (_g66526679_)
                (if (gx#stx-pair? _g66526679_)
                    (let ((_e66576681_ (gx#stx-e _g66526679_)))
                      (let ((_hd66586684_ (##car _e66576681_))
                            (_tl66596686_ (##cdr _e66576681_)))
                        (if (gx#stx-pair? _tl66596686_)
                            (let ((_e66606689_ (gx#stx-e _tl66596686_)))
                              (let ((_hd66616692_ (##car _e66606689_))
                                    (_tl66626694_ (##cdr _e66606689_)))
                                (if (gx#stx-pair? _tl66626694_)
                                    (let ((_e66636697_
                                           (gx#stx-e _tl66626694_)))
                                      (let ((_hd66646700_ (##car _e66636697_))
                                            (_tl66656702_ (##cdr _e66636697_)))
                                        (if (gx#stx-pair? _tl66656702_)
                                            (let ((_e66666705_
                                                   (gx#stx-e _tl66656702_)))
                                              (let ((_hd66676708_
                                                     (##car _e66666705_))
                                                    (_tl66686710_
                                                     (##cdr _e66666705_)))
                                                (if (gx#stx-pair? _tl66686710_)
                                                    (let ((_e66696713_
                                                           (gx#stx-e
                                                            _tl66686710_)))
                                                      (let ((_hd66706716_
                                                             (##car _e66696713_))
                                                            (_tl66716718_
                                                             (##cdr _e66696713_)))
                                                        (if (gx#stx-null?
                                                             _tl66716718_)
                                                            ((lambda (_L6721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6722_
                              _L6723_
                              _L6724_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L6722_)
                                   (cons (gxc#compile-e _L6721_)
                                         (cons (gxc#compile-e _L6723_)
                                               (cons (gxc#compile-e _L6724_)
                                                     (cons ''#f '())))))))
                     _hd66706716_
                     _hd66676708_
                     _hd66646700_
                     _hd66616692_)
                    (_g66516676_ _g66526679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66516676_
                                                     _g66526679_))))
                                            (_g66516676_ _g66526679_))))
                                    (_g66516676_ _g66526679_))))
                            (_g66516676_ _g66526679_))))
                    (_g66516676_ _g66526679_)))))
        (_g66506745_ _stx6649_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx6566_)
      (let* ((_g65686589_
              (lambda (_g65696586_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65696586_)))
             (_g65676646_
              (lambda (_g65696592_)
                (if (gx#stx-pair? _g65696592_)
                    (let ((_e65736594_ (gx#stx-e _g65696592_)))
                      (let ((_hd65746597_ (##car _e65736594_))
                            (_tl65756599_ (##cdr _e65736594_)))
                        (if (gx#stx-pair? _tl65756599_)
                            (let ((_e65766602_ (gx#stx-e _tl65756599_)))
                              (let ((_hd65776605_ (##car _e65766602_))
                                    (_tl65786607_ (##cdr _e65766602_)))
                                (if (gx#stx-pair? _tl65786607_)
                                    (let ((_e65796610_
                                           (gx#stx-e _tl65786607_)))
                                      (let ((_hd65806613_ (##car _e65796610_))
                                            (_tl65816615_ (##cdr _e65796610_)))
                                        (if (gx#stx-pair? _tl65816615_)
                                            (let ((_e65826618_
                                                   (gx#stx-e _tl65816615_)))
                                              (let ((_hd65836621_
                                                     (##car _e65826618_))
                                                    (_tl65846623_
                                                     (##cdr _e65826618_)))
                                                (if (gx#stx-null? _tl65846623_)
                                                    ((lambda (_L6626_
                                                              _L6627_
                                                              _L6628_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6626_)
                           (cons (gxc#compile-e _L6627_)
                                 (cons (gxc#compile-e _L6628_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd65836621_
                                                     _hd65806613_
                                                     _hd65776605_)
                                                    (_g65686589_
                                                     _g65696592_))))
                                            (_g65686589_ _g65696592_))))
                                    (_g65686589_ _g65696592_))))
                            (_g65686589_ _g65696592_))))
                    (_g65686589_ _g65696592_)))))
        (_g65676646_ _stx6566_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx6467_)
      (let* ((_g64696494_
              (lambda (_g64706491_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64706491_)))
             (_g64686563_
              (lambda (_g64706497_)
                (if (gx#stx-pair? _g64706497_)
                    (let ((_e64756499_ (gx#stx-e _g64706497_)))
                      (let ((_hd64766502_ (##car _e64756499_))
                            (_tl64776504_ (##cdr _e64756499_)))
                        (if (gx#stx-pair? _tl64776504_)
                            (let ((_e64786507_ (gx#stx-e _tl64776504_)))
                              (let ((_hd64796510_ (##car _e64786507_))
                                    (_tl64806512_ (##cdr _e64786507_)))
                                (if (gx#stx-pair? _tl64806512_)
                                    (let ((_e64816515_
                                           (gx#stx-e _tl64806512_)))
                                      (let ((_hd64826518_ (##car _e64816515_))
                                            (_tl64836520_ (##cdr _e64816515_)))
                                        (if (gx#stx-pair? _tl64836520_)
                                            (let ((_e64846523_
                                                   (gx#stx-e _tl64836520_)))
                                              (let ((_hd64856526_
                                                     (##car _e64846523_))
                                                    (_tl64866528_
                                                     (##cdr _e64846523_)))
                                                (if (gx#stx-pair? _tl64866528_)
                                                    (let ((_e64876531_
                                                           (gx#stx-e
                                                            _tl64866528_)))
                                                      (let ((_hd64886534_
                                                             (##car _e64876531_))
                                                            (_tl64896536_
                                                             (##cdr _e64876531_)))
                                                        (if (gx#stx-null?
                                                             _tl64896536_)
                                                            ((lambda (_L6539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6540_
                              _L6541_
                              _L6542_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L6540_)
                                   (cons (gxc#compile-e _L6539_)
                                         (cons (gxc#compile-e _L6541_)
                                               (cons (gxc#compile-e _L6542_)
                                                     (cons ''#f '())))))))
                     _hd64886534_
                     _hd64856526_
                     _hd64826518_
                     _hd64796510_)
                    (_g64696494_ _g64706497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64696494_
                                                     _g64706497_))))
                                            (_g64696494_ _g64706497_))))
                                    (_g64696494_ _g64706497_))))
                            (_g64696494_ _g64706497_))))
                    (_g64696494_ _g64706497_)))))
        (_g64686563_ _stx6467_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx6321_)
      (letrec ((_import-set-template6323_
                (lambda (_in6419_ _phi6420_)
                  (let ((_iphi6422_
                         (fx+ _phi6420_
                              (##direct-structure-ref
                               _in6419_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports6423_
                         (##structure-ref
                          (##direct-structure-ref
                           _in6419_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp6425_ ((_rest6427_ _imports6423_) (_r6428_ '()))
                      (let* ((_rest64296437_ _rest6427_)
                             (_else64316445_ (lambda () _r6428_))
                             (_K64336455_
                              (lambda (_rest6448_ _in6449_)
                                (if (##structure-instance-of?
                                     _in6449_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi6422_)
                                        (_lp6425_
                                         _rest6448_
                                         (cons _in6449_ _r6428_))
                                        (_lp6425_ _rest6448_ _r6428_))
                                    (if (##structure-direct-instance-of?
                                         _in6449_
                                         'gx#module-import::t)
                                        (let ((_iphi6451_
                                               (fx+ _phi6420_
                                                    (##direct-structure-ref
                                                     _in6449_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi6451_)
                                              (_lp6425_
                                               _rest6448_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in6449_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r6428_))
                                              (_lp6425_ _rest6448_ _r6428_)))
                                        (if (##structure-direct-instance-of?
                                             _in6449_
                                             'gx#import-set::t)
                                            (let ((_xphi6453_
                                                   (fx+ _iphi6422_
                                                        (##direct-structure-ref
                                                         _in6449_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi6453_)
                                                  (_lp6425_
                                                   _rest6448_
                                                   (cons (##direct-structure-ref
                                                          _in6449_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r6428_))
                                                  (if (fxpositive? _xphi6453_)
                                                      (_lp6425_
                                                       _rest6448_
                                                       (foldl1 cons
                                                               _r6428_
                                                               (_import-set-template6323_
                                                                _in6449_
                                                                _iphi6422_)))
                                                      (_lp6425_
                                                       _rest6448_
                                                       _r6428_))))
                                            (_lp6425_ _rest6448_ _r6428_)))))))
                        (if (##pair? _rest64296437_)
                            (let ((_hd64346458_ (##car _rest64296437_))
                                  (_tl64356460_ (##cdr _rest64296437_)))
                              (let* ((_in6463_ _hd64346458_)
                                     (_rest6465_ _tl64356460_))
                                (_K64336455_ _rest6465_ _in6463_)))
                            (_else64316445_))))))))
        (let* ((_g63256335_
                (lambda (_g63266332_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63266332_)))
               (_g63246416_
                (lambda (_g63266338_)
                  (if (gx#stx-pair? _g63266338_)
                      (let ((_e63286340_ (gx#stx-e _g63266338_)))
                        (let ((_hd63296343_ (##car _e63286340_))
                              (_tl63306345_ (##cdr _e63286340_)))
                          ((lambda (_L6348_)
                             (let ((_ht6359_ (make-hash-table-eq)))
                               (let _lp6361_ ((_rest6363_ _L6348_)
                                              (_loads6364_ '()))
                                 (letrec ((_K6366_ (lambda (_ctx6409_
                                                            _rest6410_)
                                                     (let ((_id6412_
                                                            (##structure-ref
                                                             _ctx6409_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht6359_
                                                            _id6412_
                                                            '#f)
                                                           (_lp6361_
                                                            _rest6410_
                                                            _loads6364_)
                                                           (let ((_rt6414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append
                           (gxc#module-id->path-string _id6412_)
                           '"__rt")))
                     (begin
                       (table-set! _ht6359_ _id6412_ _rt6414_)
                       (_lp6361_ _rest6410_ (cons _rt6414_ _loads6364_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest63676375_ _rest6363_)
                                          (_else63696387_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g63826384_)
                                                          (list 'load-module
                                                                _g63826384_))
                                                        (reverse _loads6364_)))))
                                          (_K63716397_
                                           (lambda (_rest6390_ _in6391_)
                                             (if (##structure-instance-of?
                                                  _in6391_
                                                  'gx#module-context::t)
                                                 (_K6366_ _in6391_ _rest6390_)
                                                 (if (##structure-direct-instance-of?
                                                      _in6391_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in6391_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K6366_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in6391_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest6390_)
                 (_lp6361_ _rest6390_ _loads6364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in6391_
                                                          'gx#import-set::t)
                                                         (let ((_phi6393_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in6391_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi6393_)
                       (_K6366_ (##direct-structure-ref
                                 _in6391_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest6390_)
                       (if (fxpositive? _phi6393_)
                           (let ((_deps6395_
                                  (_import-set-template6323_ _in6391_ '0)))
                             (_lp6361_
                              (foldl1 cons _rest6390_ _deps6395_)
                              _loads6364_))
                           (_lp6361_ _rest6390_ _loads6364_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx6321_
                  _in6391_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest63676375_)
                                         (let ((_hd63726400_
                                                (##car _rest63676375_))
                                               (_tl63736402_
                                                (##cdr _rest63676375_)))
                                           (let* ((_in6405_ _hd63726400_)
                                                  (_rest6407_ _tl63736402_))
                                             (_K63716397_
                                              _rest6407_
                                              _in6405_)))
                                         (_else63696387_)))))))
                           _tl63306345_)))
                      (_g63256335_ _g63266338_)))))
          (_g63246416_ _stx6321_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx6144_)
      (letrec ((_add-lift!6146_
                (lambda (_expr6319_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr6319_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple6147_
                (lambda (_stxq6314_)
                  (let ((_gid6316_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid6317_
                         (gxc#generate-runtime-identifier _stxq6314_)))
                    (begin
                      (_add-lift!6146_
                       (cons 'define
                             (cons _gid6316_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6317_
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
                      _gid6316_))))
               (_generate-serialized6148_
                (lambda (_stxq6304_ _marks6305_)
                  (let* ((_mark-refs6307_
                          (map _generate-mark6149_ _marks6305_))
                         (_gid6309_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid6311_
                          (gxc#generate-runtime-identifier _stxq6304_)))
                    (begin
                      (_add-lift!6146_
                       (cons 'define
                             (cons _gid6309_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid6311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs6307_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid6309_))))
               (_generate-mark6149_
                (lambda (_mark6290_)
                  (let ((_$e6292_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark6290_
                          '#f)))
                    (if _$e6292_
                        (values _$e6292_)
                        (let* ((_gid6295_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr6297_ (_serialize-mark6150_ _mark6290_))
                               (_ctx6299_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark6290_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref6301_
                                (if (eq? _ctx6299_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref6151_
                                                             _ctx6299_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark6290_
                             _gid6295_)
                            (_add-lift!6146_
                             (cons 'define
                                   (cons _gid6295_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr6297_ '()))
                   (cons _ctx-ref6301_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid6295_))))))
               (_serialize-mark6150_
                (lambda (_mark6237_)
                  (letrec ((_quote-e6239_
                            (lambda (_sym6288_)
                              (if (interned-symbol? _sym6288_)
                                  _sym6288_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym6288_)))))
                    (let* ((_mark62406249_ _mark6237_)
                           (_E62426253_
                            (lambda ()
                              (error '"No clause matching" _mark62406249_)))
                           (_K62436265_
                            (lambda (_trace6256_
                                     _phi6257_
                                     _ctx6258_
                                     _subst6259_)
                              (let ((_subs6261_
                                     (if _subst6259_
                                         (table->list _subst6259_)
                                         '())))
                                (cons _phi6257_
                                      (map (lambda (_pair6263_)
                                             (cons (_quote-e6239_
                                                    (car _pair6263_))
                                                   (_quote-e6239_
                                                    (cdr _pair6263_))))
                                           _subs6261_))))))
                      (if (##structure-instance-of?
                           _mark62406249_
                           'gx#expander-mark::t)
                          (let* ((_e62446268_ (##vector-ref _mark62406249_ '1))
                                 (_subst6271_ _e62446268_)
                                 (_e62456273_ (##vector-ref _mark62406249_ '2))
                                 (_ctx6276_ _e62456273_)
                                 (_e62466278_ (##vector-ref _mark62406249_ '3))
                                 (_phi6281_ _e62466278_)
                                 (_e62476283_ (##vector-ref _mark62406249_ '4))
                                 (_trace6286_ _e62476283_))
                            (_K62436265_
                             _trace6286_
                             _phi6281_
                             _ctx6276_
                             _subst6271_))
                          (_E62426253_))))))
               (_context-ref6151_
                (lambda (_ctx6224_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx6224_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref6226_
                             (_context-ref-nested6153_ _ctx6224_))
                            (_ctx-origin6227_
                             (_context-ref-origin6152_ _ctx6224_))
                            (_origin6228_
                             (_context-ref-origin6152_
                              (gx#current-expander-context))))
                        (if (eq? _origin6228_ _ctx-origin6227_)
                            (let ((_ref6230_
                                   (_context-ref-nested6153_
                                    (gx#current-expander-context))))
                              (let _lp6232_ ((_ref6234_ (cdr _ref6230_))
                                             (_ctx-ref6235_
                                              (cdr _ctx-ref6226_)))
                                (if (if (pair? _ref6234_)
                                        (eq? (car _ref6234_)
                                             (car _ctx-ref6235_))
                                        '#f)
                                    (_lp6232_
                                     (cdr _ref6234_)
                                     (cdr _ctx-ref6235_))
                                    (cons '#f _ctx-ref6235_))))
                            _ctx-ref6226_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx6224_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin6152_
                (lambda (_ctx6216_)
                  (let _lp6218_ ((_ctx6220_ _ctx6216_))
                    (let ((_super6222_
                           (##structure-ref
                            _ctx6220_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6222_
                           'gx#module-context::t)
                          (_lp6218_ _super6222_)
                          _ctx6220_)))))
               (_context-ref-nested6153_
                (lambda (_ctx6207_)
                  (let _lp6209_ ((_ctx6211_ _ctx6207_) (_r6212_ '()))
                    (let ((_super6214_
                           (##structure-ref
                            _ctx6211_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super6214_
                           'gx#module-context::t)
                          (_lp6209_
                           _super6214_
                           (cons (car (##structure-ref
                                       _ctx6211_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r6212_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx6211_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r6212_)))))))
        (let* ((_g61556168_
                (lambda (_g61566165_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61566165_)))
               (_g61546204_
                (lambda (_g61566171_)
                  (if (gx#stx-pair? _g61566171_)
                      (let ((_e61586173_ (gx#stx-e _g61566171_)))
                        (let ((_hd61596176_ (##car _e61586173_))
                              (_tl61606178_ (##cdr _e61586173_)))
                          (if (gx#stx-pair? _tl61606178_)
                              (let ((_e61616181_ (gx#stx-e _tl61606178_)))
                                (let ((_hd61626184_ (##car _e61616181_))
                                      (_tl61636186_ (##cdr _e61616181_)))
                                  (if (gx#stx-null? _tl61636186_)
                                      ((lambda (_L6189_)
                                         (if (gx#identifier? _L6189_)
                                             (let ((_marks6202_
                                                    (##direct-structure-ref
                                                     _L6189_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks6202_)
                                                   (_generate-simple6147_
                                                    _L6189_)
                                                   (_generate-serialized6148_
                                                    _L6189_
                                                    _marks6202_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L6189_)))
                                       _hd61626184_)
                                      (_g61556168_ _g61566171_))))
                              (_g61556168_ _g61566171_))))
                      (_g61556168_ _g61566171_)))))
          (_g61546204_ _stx6144_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx6077_)
      (let* ((_g60796096_
              (lambda (_g60806093_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60806093_)))
             (_g60786141_
              (lambda (_g60806099_)
                (if (gx#stx-pair? _g60806099_)
                    (let ((_e60836101_ (gx#stx-e _g60806099_)))
                      (let ((_hd60846104_ (##car _e60836101_))
                            (_tl60856106_ (##cdr _e60836101_)))
                        (if (gx#stx-pair? _tl60856106_)
                            (let ((_e60866109_ (gx#stx-e _tl60856106_)))
                              (let ((_hd60876112_ (##car _e60866109_))
                                    (_tl60886114_ (##cdr _e60866109_)))
                                (if (gx#stx-pair? _tl60886114_)
                                    (let ((_e60896117_
                                           (gx#stx-e _tl60886114_)))
                                      (let ((_hd60906120_ (##car _e60896117_))
                                            (_tl60916122_ (##cdr _e60896117_)))
                                        (if (gx#stx-null? _tl60916122_)
                                            ((lambda (_L6125_ _L6126_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L6126_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6125_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60906120_
                                             _hd60876112_)
                                            (_g60796096_ _g60806099_))))
                                    (_g60796096_ _g60806099_))))
                            (_g60796096_ _g60806099_))))
                    (_g60796096_ _g60806099_)))))
        (_g60786141_ _stx6077_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx6026_ _state6027_)
      (let* ((_g60296039_
              (lambda (_g60306036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60306036_)))
             (_g60286074_
              (lambda (_g60306042_)
                (if (gx#stx-pair? _g60306042_)
                    (let ((_e60326044_ (gx#stx-e _g60306042_)))
                      (let ((_hd60336047_ (##car _e60326044_))
                            (_tl60346049_ (##cdr _e60326044_)))
                        ((lambda (_L6052_)
                           (let* ((_c-body6066_
                                   (map (lambda (_g60616063_)
                                          (gxc#compile-e
                                           _g60616063_
                                           _state6027_))
                                        _L6052_))
                                  (_c-body6071_
                                   (filter (lambda (_$obj6068_)
                                             (not (eq? _$obj6068_ '#!void)))
                                           _c-body6066_)))
                             (cons '%#begin _c-body6071_)))
                         _tl60346049_)))
                    (_g60296039_ _g60306042_)))))
        (_g60286074_ _stx6026_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5934_ _state5935_)
      (let* ((_g59375947_
              (lambda (_g59385944_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59385944_)))
             (_g59366023_
              (lambda (_g59385950_)
                (if (gx#stx-pair? _g59385950_)
                    (let ((_e59405952_ (gx#stx-e _g59385950_)))
                      (let ((_hd59415955_ (##car _e59405952_))
                            (_tl59425957_ (##cdr _e59405952_)))
                        ((lambda (_L5960_)
                           (let* ((_phi5970_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5972_
                                   (gxc#meta-state-begin-phi!
                                    _state5935_
                                    _phi5970_))
                                  (_compiled5975_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5960_)
                                       _state5935_))
                                    gx#current-expander-phi
                                    _phi5970_)))
                             (let* ((_g59785988_
                                     (lambda (_g59795985_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59795985_)))
                                    (_g59776020_
                                     (lambda (_g59795991_)
                                       (if (gx#stx-pair? _g59795991_)
                                           (let ((_e59815993_
                                                  (gx#stx-e _g59795991_)))
                                             (let ((_hd59825996_
                                                    (##car _e59815993_))
                                                   (_tl59835998_
                                                    (##cdr _e59815993_)))
                                               (if (gx#identifier?
                                                    _hd59825996_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd59825996_)
                                                       ((lambda (_L6001_)
                                                          (let ((_c-body6018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj6015_)
                                   (not (eq? _$obj6015_ '#!void)))
                                 _L6001_)))
                    (if _block5972_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body6018_))
                        (if (null? _c-body6018_)
                            '#!void
                            (cons '%#begin-syntax _c-body6018_)))))
                _tl59835998_)
               (_g59785988_ _g59795991_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59785988_ _g59795991_))))
                                           (_g59785988_ _g59795991_)))))
                               (_g59776020_ _compiled5975_))))
                         _tl59425957_)))
                    (_g59375947_ _g59385950_)))))
        (_g59366023_ _stx5934_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5865_ _state5866_)
      (begin
        (gxc#meta-state-end-phi! _state5866_)
        (let* ((_g58685882_
                (lambda (_g58695879_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g58695879_)))
               (_g58675931_
                (lambda (_g58695885_)
                  (if (gx#stx-pair? _g58695885_)
                      (let ((_e58725887_ (gx#stx-e _g58695885_)))
                        (let ((_hd58735890_ (##car _e58725887_))
                              (_tl58745892_ (##cdr _e58725887_)))
                          (if (gx#stx-pair? _tl58745892_)
                              (let ((_e58755895_ (gx#stx-e _tl58745892_)))
                                (let ((_hd58765898_ (##car _e58755895_))
                                      (_tl58775900_ (##cdr _e58755895_)))
                                  ((lambda (_L5903_ _L5904_)
                                     (let ((_key5917_
                                            (gx#core-identifier-key _L5904_)))
                                       (begin
                                         (if (interned-symbol? _key5917_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5865_
                                              _L5904_
                                              _key5917_))
                                         (let* ((_ctx5919_
                                                 (gx#syntax-local-e__0
                                                  _L5904_))
                                                (_code5922_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5919_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5866_))
                                                  gx#current-expander-context
                                                  _ctx5919_))
                                                (_rt5924_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5919_
                                                  '#f))
                                                (_loader5926_
                                                 (if _rt5924_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5924_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5928_
                                                 (gx#stx-e _L5904_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5866_)
                                             (cons '%#module
                                                   (cons _modid5928_
                                                         (cons _code5922_
                                                               _loader5926_))))))))
                                   _tl58775900_
                                   _hd58765898_)))
                              (_g58685882_ _g58695885_))))
                      (_g58685882_ _g58695885_)))))
          (_g58675931_ _stx5865_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5855_ _context-chain5856_)
      (let _lp5858_ ((_ctx5860_ _ctx5855_) (_path5861_ '()))
        (let ((_super5863_
               (##structure-ref _ctx5860_ '3 gx#phi-context::t '#f)))
          (if (memq _super5863_ _context-chain5856_)
              (cons '#f
                    (cons (car (##structure-ref
                                _ctx5860_
                                '7
                                gx#module-context::t
                                '#f))
                          _path5861_))
              (if (##structure-instance-of? _super5863_ 'gx#module-context::t)
                  (_lp5858_
                   _super5863_
                   (cons (car (##structure-ref
                               _ctx5860_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5861_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5860_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5861_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5850_ ((_ctx5852_ (gx#current-expander-context)) (_r5853_ '()))
        (if (##structure-instance-of? _ctx5852_ 'gx#module-context::t)
            (_lp5850_
             (##structure-ref _ctx5852_ '3 gx#phi-context::t '#f)
             (cons _ctx5852_ _r5853_))
            _r5853_))))
  (define gxc#generate-meta-import%
    (lambda (_stx5619_ _state5620_)
      (letrec* ((_context-chain5622_ (gxc#current-context-chain))
                (_make-import-spec5623_
                 (lambda (_in5786_)
                   (let* ((_in57875799_ _in5786_)
                          (_E57895803_
                           (lambda ()
                             (error '"No clause matching" _in57875799_)))
                          (_K57905813_
                           (lambda (_phi5806_
                                    _name5807_
                                    _src-name5808_
                                    _src-phi5809_
                                    _src-key5810_
                                    _src-ctx5811_)
                             (cons _phi5806_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5807_)
                                         (cons _src-phi5809_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5808_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in57875799_
                          'gx#module-import::t)
                         (let ((_e57915816_ (##vector-ref _in57875799_ '1)))
                           (if (##structure-direct-instance-of?
                                _e57915816_
                                'gx#module-export::t)
                               (let* ((_e57945819_
                                       (##vector-ref _e57915816_ '1))
                                      (_src-ctx5822_ _e57945819_)
                                      (_e57955824_
                                       (##vector-ref _e57915816_ '2))
                                      (_src-key5827_ _e57955824_)
                                      (_e57965829_
                                       (##vector-ref _e57915816_ '3))
                                      (_src-phi5832_ _e57965829_)
                                      (_e57975834_
                                       (##vector-ref _e57915816_ '4))
                                      (_src-name5837_ _e57975834_)
                                      (_e57925839_
                                       (##vector-ref _in57875799_ '2))
                                      (_name5842_ _e57925839_)
                                      (_e57935844_
                                       (##vector-ref _in57875799_ '3))
                                      (_phi5847_ _e57935844_))
                                 (_K57905813_
                                  _phi5847_
                                  _name5842_
                                  _src-name5837_
                                  _src-phi5832_
                                  _src-key5827_
                                  _src-ctx5822_))
                               (_E57895803_)))
                         (_E57895803_)))))
                (_make-import-path5624_
                 (lambda (_ctx5784_)
                   (gxc#generate-meta-import-path
                    _ctx5784_
                    _context-chain5622_)))
                (_make-import-spec-in5625_
                 (lambda (_ctx5781_ _in5782_)
                   (cons 'spec:
                         (cons (_make-import-path5624_ _ctx5781_)
                               (reverse _in5782_))))))
        (begin
          (gxc#meta-state-end-phi! _state5620_)
          (let* ((_g56275637_
                  (lambda (_g56285634_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g56285634_)))
                 (_g56265778_
                  (lambda (_g56285640_)
                    (if (gx#stx-pair? _g56285640_)
                        (let ((_e56305642_ (gx#stx-e _g56285640_)))
                          (let ((_hd56315645_ (##car _e56305642_))
                                (_tl56325647_ (##cdr _e56305642_)))
                            ((lambda (_L5650_)
                               (let _lp5661_ ((_rest5663_ _L5650_)
                                              (_current-src5664_ '#f)
                                              (_current-in5665_ '())
                                              (_r5666_ '()))
                                 (let* ((_rest56675675_ _rest5663_)
                                        (_else56695685_
                                         (lambda ()
                                           (let ((_r5683_ (if _current-src5664_
                                                              (cons (_make-import-spec-in5625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src5664_
                             _current-in5665_)
                            _r5666_)
                      _r5666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r5683_)))))
                                        (_K56715766_
                                         (lambda (_rest5688_ _in5689_)
                                           (if (##structure-direct-instance-of?
                                                _in5689_
                                                'gx#module-import::t)
                                               (let* ((_in56905697_ _in5689_)
                                                      (_E56925701_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in56905697_)))
                                                      (_K56935706_
                                                       (lambda (_src-ctx5704_)
                                                         (if (eq? _current-src5664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx5704_)
                     (_lp5661_
                      _rest5688_
                      _current-src5664_
                      (cons (_make-import-spec5623_ _in5689_) _current-in5665_)
                      _r5666_)
                     (if _current-src5664_
                         (_lp5661_
                          _rest5688_
                          _src-ctx5704_
                          (cons (_make-import-spec5623_ _in5689_) '())
                          (cons (_make-import-spec-in5625_
                                 _current-src5664_
                                 _current-in5665_)
                                _r5666_))
                         (_lp5661_
                          _rest5688_
                          _src-ctx5704_
                          (cons (_make-import-spec5623_ _in5689_) '())
                          _r5666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in56905697_
                                                      'gx#module-import::t)
                                                     (let ((_e56945709_
                                                            (##vector-ref
                                                             _in56905697_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e56945709_
                                                            'gx#module-export::t)
                                                           (let* ((_e56955712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e56945709_ '1))
                          (_src-ctx5715_ _e56955712_))
                     (_K56935706_ _src-ctx5715_))
                   (_E56925701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E56925701_)))
                                               (if (##structure-direct-instance-of?
                                                    _in5689_
                                                    'gx#import-set::t)
                                                   (let* ((_phi5717_
                                                           (##direct-structure-ref
                                                            _in5689_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src5719_
                                                           (##direct-structure-ref
                                                            _in5689_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5759_
                                                           (let* ((_g57205729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path5624_ _src5719_))
                          (_E57235733_
                           (lambda ()
                             (error '"No clause matching" _g57205729_))))
                     (let ((_K57255749_ (lambda (_path5747_) _path5747_))
                           (_K57245739_
                            (lambda (_path5737_) (cons 'in: _path5737_))))
                       (if (##pair? _g57205729_)
                           (let ((_tl57275754_ (##cdr _g57205729_))
                                 (_hd57265752_ (##car _g57205729_)))
                             (if (##null? _tl57275754_)
                                 (let ((_path5757_ _hd57265752_))
                                   (_K57255749_ _path5757_))
                                 (let ((_path5742_ _g57205729_))
                                   (_K57245739_ _path5742_))))
                           (let ((_path5742_ _g57205729_))
                             (_K57245739_ _path5742_))))))
                  (_r5761_ (if _current-src5664_
                               (cons (_make-import-spec-in5625_
                                      _current-src5664_
                                      _current-in5665_)
                                     _r5666_)
                               _r5666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp5661_
                                                      _rest5688_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi5717_)
                                                                _src-in5759_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi5717_ (cons _src-in5759_ '()))))
                    _r5761_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in5689_
                                                        'gx#module-context::t)
                                                       (let ((_r5764_ (if _current-src5664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in5625_
                                         _current-src5664_
                                         _current-in5665_)
                                        _r5666_)
                                  _r5666_)))
                 (_lp5661_
                  _rest5688_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path5624_ _in5689_))
                        _r5764_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56675675_)
                                       (let ((_hd56725769_
                                              (##car _rest56675675_))
                                             (_tl56735771_
                                              (##cdr _rest56675675_)))
                                         (let* ((_in5774_ _hd56725769_)
                                                (_rest5776_ _tl56735771_))
                                           (_K56715766_ _rest5776_ _in5774_)))
                                       (_else56695685_)))))
                             _tl56325647_)))
                        (_g56275637_ _g56285640_)))))
            (_g56265778_ _stx5619_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx5429_ _state5430_)
      (letrec* ((_context-chain5432_ (gxc#current-context-chain))
                (_make-import-path5433_
                 (lambda (_ctx5617_)
                   (gxc#generate-meta-import-path
                    _ctx5617_
                    _context-chain5432_))))
        (let* ((_g54355445_
                (lambda (_g54365442_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54365442_)))
               (_g54345614_
                (lambda (_g54365448_)
                  (if (gx#stx-pair? _g54365448_)
                      (let ((_e54385450_ (gx#stx-e _g54365448_)))
                        (let ((_hd54395453_ (##car _e54385450_))
                              (_tl54405455_ (##cdr _e54385450_)))
                          ((lambda (_L5458_)
                             (let _lp5469_ ((_rest5471_ _L5458_) (_r5472_ '()))
                               (let* ((_rest54735481_ _rest5471_)
                                      (_else54755489_
                                       (lambda ()
                                         (cons '%#export (reverse _r5472_))))
                                      (_K54775602_
                                       (lambda (_rest5492_ _out5493_)
                                         (let* ((_out54945507_ _out5493_)
                                                (_E54975511_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out54945507_))))
                                           (let ((_K55015581_
                                                  (lambda (_name5577_
                                                           _phi5578_
                                                           _key5579_)
                                                    (_lp5469_
                                                     _rest5492_
                                                     (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _phi5578_
                               (cons (gxc#generate-runtime-identifier-key
                                      _key5579_)
                                     (cons (gxc#generate-runtime-identifier-key
                                            _name5577_)
                                           '()))))
                   _r5472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K54985561_
                                                  (lambda (_phi5515_ _src5516_)
                                                    (let* ((_out5556_
                                                            (if _src5516_
                                                                (cons 'import:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let* ((_g55175526_
                                            (_make-import-path5433_ _src5516_))
                                           (_E55205530_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _g55175526_))))
                                      (let ((_K55225546_
                                             (lambda (_path5544_) _path5544_))
                                            (_K55215536_
                                             (lambda (_path5534_)
                                               (cons 'in: _path5534_))))
                                        (if (##pair? _g55175526_)
                                            (let ((_tl55245551_
                                                   (##cdr _g55175526_))
                                                  (_hd55235549_
                                                   (##car _g55175526_)))
                                              (if (##null? _tl55245551_)
                                                  (let ((_path5554_
                                                         _hd55235549_))
                                                    (_K55225546_ _path5554_))
                                                  (let ((_path5539_
                                                         _g55175526_))
                                                    (_K55215536_ _path5539_))))
                                            (let ((_path5539_ _g55175526_))
                                              (_K55215536_ _path5539_)))))
                                    '()))
                        '#t))
                   (_out5558_
                    (if (fxzero? _phi5515_)
                        _out5556_
                        (cons 'phi: (cons _phi5515_ (cons _out5556_ '()))))))
              (_lp5469_ _rest5492_ (cons _out5558_ _r5472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match54965574_
                                                    (lambda ()
                                                      (if (##structure-direct-instance-of?
                                                           _out54945507_
                                                           'gx#export-set::t)
                                                          (let* ((_e54995564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref _out54945507_ '1))
                         (_e55005569_ (##vector-ref _out54945507_ '2)))
                    (let ((_src5567_ _e54995564_) (_phi5572_ _e55005569_))
                      (_K54985561_ _phi5572_ _src5567_)))
                  (_E54975511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-direct-instance-of?
                                                    _out54945507_
                                                    'gx#module-export::t)
                                                   (let* ((_e55025584_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '1))
                                                          (_e55035587_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '2))
                                                          (_e55045592_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '3))
                                                          (_e55055597_
                                                           (##vector-ref
                                                            _out54945507_
                                                            '4)))
                                                     (let ((_key5590_
                                                            _e55035587_)
                                                           (_phi5595_
                                                            _e55045592_)
                                                           (_name5600_
                                                            _e55055597_))
                                                       (_K55015581_
                                                        _name5600_
                                                        _phi5595_
                                                        _key5590_)))
                                                   (_try-match54965574_))))))))
                                 (if (##pair? _rest54735481_)
                                     (let ((_hd54785605_
                                            (##car _rest54735481_))
                                           (_tl54795607_
                                            (##cdr _rest54735481_)))
                                       (let* ((_out5610_ _hd54785605_)
                                              (_rest5612_ _tl54795607_))
                                         (_K54775602_ _rest5612_ _out5610_)))
                                     (_else54755489_)))))
                           _tl54405455_)))
                      (_g54355445_ _g54365448_)))))
          (_g54345614_ _stx5429_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx5390_ _state5391_)
      (begin
        (gxc#meta-state-end-phi! _state5391_)
        (let* ((_g53935403_
                (lambda (_g53945400_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53945400_)))
               (_g53925426_
                (lambda (_g53945406_)
                  (if (gx#stx-pair? _g53945406_)
                      (let ((_e53965408_ (gx#stx-e _g53945406_)))
                        (let ((_hd53975411_ (##car _e53965408_))
                              (_tl53985413_ (##cdr _e53965408_)))
                          ((lambda (_L5416_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L5416_)))
                           _tl53985413_)))
                      (_g53935403_ _g53945406_)))))
          (_g53925426_ _stx5390_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx5261_ _state5262_)
      (letrec ((_generate15264_
                (lambda (_id5385_ _eid5386_)
                  (let ((_eid5388_ (gx#stx-e _eid5386_)))
                    (begin
                      (if (interned-symbol? _eid5388_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx5261_
                           _eid5388_))
                      (cons (gxc#generate-runtime-identifier _id5385_)
                            (cons _eid5388_ '())))))))
        (let* ((_g52665294_
                (lambda (_g52675291_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52675291_)))
               (_g52655382_
                (lambda (_g52675297_)
                  (if (gx#stx-pair? _g52675297_)
                      (let ((_e52705299_ (gx#stx-e _g52675297_)))
                        (let ((_hd52715302_ (##car _e52705299_))
                              (_tl52725304_ (##cdr _e52705299_)))
                          (if (gx#stx-pair/null? _tl52725304_)
                              (let ((_g14231_
                                     (gx#syntax-split-splice _tl52725304_ '0)))
                                (begin
                                  (let ((_g14232_
                                         (if (##values? _g14231_)
                                             (##vector-length _g14231_)
                                             1)))
                                    (if (not (##fx= _g14232_ 2))
                                        (error "Context expects 2 values"
                                               _g14232_)))
                                  (let ((_target52735307_
                                         (##vector-ref _g14231_ 0))
                                        (_tl52755309_
                                         (##vector-ref _g14231_ 1)))
                                    (if (gx#stx-null? _tl52755309_)
                                        (letrec ((_loop52765312_
                                                  (lambda (_hd52745315_
                                                           _eid52805317_
                                                           _id52815319_)
                                                    (if (gx#stx-pair?
                                                         _hd52745315_)
                                                        (let ((_e52775322_
                                                               (gx#stx-e
                                                                _hd52745315_)))
                                                          (let ((_lp-hd52785325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e52775322_))
                        (_lp-tl52795327_ (##cdr _e52775322_)))
                    (if (gx#stx-pair? _lp-hd52785325_)
                        (let ((_e52845330_ (gx#stx-e _lp-hd52785325_)))
                          (let ((_hd52855333_ (##car _e52845330_))
                                (_tl52865335_ (##cdr _e52845330_)))
                            (if (gx#stx-pair? _tl52865335_)
                                (let ((_e52875338_ (gx#stx-e _tl52865335_)))
                                  (let ((_hd52885341_ (##car _e52875338_))
                                        (_tl52895343_ (##cdr _e52875338_)))
                                    (if (gx#stx-null? _tl52895343_)
                                        (_loop52765312_
                                         _lp-tl52795327_
                                         (cons _hd52885341_ _eid52805317_)
                                         (cons _hd52855333_ _id52815319_))
                                        (_g52665294_ _g52675297_))))
                                (_g52665294_ _g52675297_))))
                        (_g52665294_ _g52675297_))))
                (let ((_eid52825346_ (reverse _eid52805317_))
                      (_id52835348_ (reverse _id52815319_)))
                  ((lambda (_L5351_ _L5352_)
                     (cons '%#extern
                           (map _generate15264_
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g53675370_ _g53685372_)
                                            (cons _g53675370_ _g53685372_))
                                          '()
                                          _L5352_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g53745377_ _g53755379_)
                                            (cons _g53745377_ _g53755379_))
                                          '()
                                          _L5351_)))))
                   _eid52825346_
                   _id52835348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop52765312_
                                           _target52735307_
                                           '()
                                           '()))
                                        (_g52665294_ _g52675297_)))))
                              (_g52665294_ _g52675297_))))
                      (_g52665294_ _g52675297_)))))
          (_g52655382_ _stx5261_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx5051_ _state5052_)
      (letrec ((_generate15054_
                (lambda (_id5256_)
                  (let ((_eid5258_ (gxc#generate-runtime-binding-id _id5256_))
                        (_ident5259_
                         (gxc#generate-runtime-identifier _id5256_)))
                    (cons '%#define-runtime
                          (cons _ident5259_ (cons _eid5258_ '()))))))
               (_generate*5055_
                (lambda (_all5224_)
                  (let* ((_all52255233_ _all5224_)
                         (_else52275241_ (lambda () (cons '%#begin _all5224_)))
                         (_K52295246_ (lambda (_one5244_) _one5244_)))
                    (if (##pair? _all52255233_)
                        (let ((_hd52305249_ (##car _all52255233_))
                              (_tl52315251_ (##cdr _all52255233_)))
                          (let ((_one5254_ _hd52305249_))
                            (if (##null? _tl52315251_)
                                (_K52295246_ _one5254_)
                                (_else52275241_))))
                        (_else52275241_))))))
        (let* ((_g50575074_
                (lambda (_g50585071_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50585071_)))
               (_g50565221_
                (lambda (_g50585077_)
                  (if (gx#stx-pair? _g50585077_)
                      (let ((_e50615079_ (gx#stx-e _g50585077_)))
                        (let ((_hd50625082_ (##car _e50615079_))
                              (_tl50635084_ (##cdr _e50615079_)))
                          (if (gx#stx-pair? _tl50635084_)
                              (let ((_e50645087_ (gx#stx-e _tl50635084_)))
                                (let ((_hd50655090_ (##car _e50645087_))
                                      (_tl50665092_ (##cdr _e50645087_)))
                                  (if (gx#stx-pair? _tl50665092_)
                                      (let ((_e50675095_
                                             (gx#stx-e _tl50665092_)))
                                        (let ((_hd50685098_
                                               (##car _e50675095_))
                                              (_tl50695100_
                                               (##cdr _e50675095_)))
                                          (if (gx#stx-null? _tl50695100_)
                                              ((lambda (_L5103_ _L5104_)
                                                 (let _lp5120_ ((_rest5122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L5104_)
                        (_r5123_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((___stx1413814139_
                                                           _rest5122_)
                                                          (_g51285145_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx1413814139_))))
                                                     (let ((___kont1414014141_
                                                            (lambda (_L5208_)
                                                              (_lp5120_
                                                               _L5208_
                                                               _r5123_)))
                                                           (___kont1414214143_
                                                            (lambda (_L5181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5182_)
                      (_lp5120_
                       _L5181_
                       (cons (_generate15054_ _L5182_) _r5123_))))
                   (___kont1414414145_
                    (lambda (_L5157_)
                      (_generate*5055_
                       (foldl1 cons
                               (cons (_generate15054_ _L5157_) '())
                               _r5123_))))
                   (___kont1414614147_
                    (lambda () (_generate*5055_ (reverse _r5123_)))))
               (let ((_g51265168_
                      (lambda ()
                        (let ((_L5157_ ___stx1413814139_))
                          (if (gx#identifier? _L5157_)
                              (___kont1414414145_ _L5157_)
                              (___kont1414614147_))))))
                 (if (gx#stx-pair? ___stx1413814139_)
                     (let ((_e51315197_ (gx#stx-e ___stx1413814139_)))
                       (let ((_tl51335202_ (##cdr _e51315197_))
                             (_hd51325200_ (##car _e51315197_)))
                         (if (gx#stx-datum? _hd51325200_)
                             (let ((_e51345205_ (gx#stx-e _hd51325200_)))
                               (if (equal? _e51345205_ '#f)
                                   (___kont1414014141_ _tl51335202_)
                                   (___kont1414214143_
                                    _tl51335202_
                                    _hd51325200_)))
                             (___kont1414214143_ _tl51335202_ _hd51325200_))))
                     (_g51265168_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd50685098_
                                               _hd50655090_)
                                              (_g50575074_ _g50585077_))))
                                      (_g50575074_ _g50585077_))))
                              (_g50575074_ _g50585077_))))
                      (_g50575074_ _g50585077_)))))
          (_g50565221_ _stx5051_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4948_ _state4949_)
      (let* ((_g49514968_
              (lambda (_g49524965_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49524965_)))
             (_g49505048_
              (lambda (_g49524971_)
                (if (gx#stx-pair? _g49524971_)
                    (let ((_e49554973_ (gx#stx-e _g49524971_)))
                      (let ((_hd49564976_ (##car _e49554973_))
                            (_tl49574978_ (##cdr _e49554973_)))
                        (if (gx#stx-pair? _tl49574978_)
                            (let ((_e49584981_ (gx#stx-e _tl49574978_)))
                              (let ((_hd49594984_ (##car _e49584981_))
                                    (_tl49604986_ (##cdr _e49584981_)))
                                (if (gx#stx-pair? _tl49604986_)
                                    (let ((_e49614989_
                                           (gx#stx-e _tl49604986_)))
                                      (let ((_hd49624992_ (##car _e49614989_))
                                            (_tl49634994_ (##cdr _e49614989_)))
                                        (if (gx#stx-null? _tl49634994_)
                                            ((lambda (_L4997_ _L4998_)
                                               (let* ((_eid5013_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4998_))
                                                      (_phi5015_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block5017_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4949_
                                                        _phi5015_)))
                                                 (begin
                                                   (let* ((_g50205027_
                                                           (lambda (_g50215024_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g50215024_)))
                                                          (_g50195045_
                                                           (lambda (_g50215030_)
                                                             ((lambda (_L5032_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4949_
                           _phi5015_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L5032_ (cons _L4997_ '()))))))
                      _g50215030_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50195045_ _eid5013_))
                                                   (if _block5017_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block5017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4998_)
                                             (cons _eid5013_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4998_)
                           (cons _eid5013_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd49624992_
                                             _hd49594984_)
                                            (_g49514968_ _g49524971_))))
                                    (_g49514968_ _g49524971_))))
                            (_g49514968_ _g49524971_))))
                    (_g49514968_ _g49524971_)))))
        (_g49505048_ _stx4948_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4880_ _state4881_)
      (let* ((_g48834900_
              (lambda (_g48844897_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48844897_)))
             (_g48824945_
              (lambda (_g48844903_)
                (if (gx#stx-pair? _g48844903_)
                    (let ((_e48874905_ (gx#stx-e _g48844903_)))
                      (let ((_hd48884908_ (##car _e48874905_))
                            (_tl48894910_ (##cdr _e48874905_)))
                        (if (gx#stx-pair? _tl48894910_)
                            (let ((_e48904913_ (gx#stx-e _tl48894910_)))
                              (let ((_hd48914916_ (##car _e48904913_))
                                    (_tl48924918_ (##cdr _e48904913_)))
                                (if (gx#stx-pair? _tl48924918_)
                                    (let ((_e48934921_
                                           (gx#stx-e _tl48924918_)))
                                      (let ((_hd48944924_ (##car _e48934921_))
                                            (_tl48954926_ (##cdr _e48934921_)))
                                        (if (gx#stx-null? _tl48954926_)
                                            ((lambda (_L4929_ _L4930_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4930_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4929_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd48944924_
                                             _hd48914916_)
                                            (_g48834900_ _g48844903_))))
                                    (_g48834900_ _g48844903_))))
                            (_g48834900_ _g48844903_))))
                    (_g48834900_ _g48844903_)))))
        (_g48824945_ _stx4880_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4877_ _state4878_)
      (begin
        (gxc#meta-state-add-phi!
         _state4878_
         (gx#current-expander-phi)
         _stx4877_)
        (gxc#generate-meta-define-values% _stx4877_ _state4878_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4874_ _state4875_)
      (begin
        (gxc#meta-state-add-phi!
         _state4875_
         (gx#current-expander-phi)
         _stx4874_)
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
    (lambda _$args4871_
      (apply make-struct-instance gxc#meta-state::t _$args4871_)))
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
    (lambda (_self4868_ _ctx4869_)
      (if (##fx< '4 (##vector-length _self4868_))
          (begin
            (##vector-set!
             _self4868_
             '1
             (gxc#module-id->path-string
              (##structure-ref _ctx4869_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4868_ '2 '1)
            (##vector-set! _self4868_ '3 (make-hash-table-eq))
            (##vector-set! _self4868_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4868_))))
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
    (lambda _$args4743_
      (apply make-struct-instance gxc#meta-state-block::t _$args4743_)))
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
    (lambda (_state4702_ _phi4703_)
      (let* ((_state47044712_ _state4702_)
             (_E47064716_
              (lambda () (error '"No clause matching" _state47044712_)))
             (_K47074725_
              (lambda (_open4719_ _n4720_ _src4721_)
                (if (table-ref _open4719_ _phi4703_ '#f)
                    '#f
                    (let ((_block-ref4723_
                           (string-append
                            _src4721_
                            '"__"
                            (number->string _n4720_))))
                      (begin
                        (##structure-set!
                         _state4702_
                         (fx+ _n4720_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open4719_
                         _phi4703_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi4703_
                          _n4720_
                          '()))
                        _block-ref4723_))))))
        (if (##structure-instance-of? _state47044712_ 'gxc#meta-state::t)
            (let* ((_e47084728_ (##vector-ref _state47044712_ '1))
                   (_src4731_ _e47084728_)
                   (_e47094733_ (##vector-ref _state47044712_ '2))
                   (_n4736_ _e47094733_)
                   (_e47104738_ (##vector-ref _state47044712_ '3))
                   (_open4741_ _e47104738_))
              (_K47074725_ _open4741_ _n4736_ _src4731_))
            (_E47064716_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state4696_ _phi4697_ _stx4698_)
      (let ((_block4700_
             (table-ref
              (##structure-ref _state4696_ '3 gxc#meta-state::t '#f)
              _phi4697_
              '#f)))
        (##structure-set!
         _block4700_
         (cons _stx4698_
               (##structure-ref _block4700_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state4691_)
      (begin
        (##structure-set!
         _state4691_
         (hash-fold
          (lambda (_g14233_ _block4693_ _r4694_) (cons _block4693_ _r4694_))
          (##structure-ref _state4691_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state4691_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state4691_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state4643_)
      (begin
        (gxc#meta-state-end-phi! _state4643_)
        (foldl1 (lambda (_block4645_ _r4646_)
                  (let* ((_block46474656_ _block4645_)
                         (_E46494660_
                          (lambda ()
                            (error '"No clause matching" _block46474656_)))
                         (_K46504668_
                          (lambda (_code4663_ _n4664_ _phi4665_ _ctx4666_)
                            (if (null? _code4663_)
                                _r4646_
                                (cons (cons _ctx4666_
                                            (cons _phi4665_
                                                  (cons _n4664_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code4663_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r4646_)))))
                    (if (##structure-instance-of?
                         _block46474656_
                         'gxc#meta-state-block::t)
                        (let* ((_e46514671_ (##vector-ref _block46474656_ '1))
                               (_ctx4674_ _e46514671_)
                               (_e46524676_ (##vector-ref _block46474656_ '2))
                               (_phi4679_ _e46524676_)
                               (_e46534681_ (##vector-ref _block46474656_ '3))
                               (_n4684_ _e46534681_)
                               (_e46544686_ (##vector-ref _block46474656_ '4))
                               (_code4689_ _e46544686_))
                          (_K46504668_ _code4689_ _n4684_ _phi4679_ _ctx4674_))
                        (_E46494660_))))
                '()
                (##structure-ref _state4643_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx4639_)
      (let ((_ht4641_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx4639_ _ht4641_)
          _ht4641_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx4582_ _ht4583_)
      (let* ((_g45854598_
              (lambda (_g45864595_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45864595_)))
             (_g45844636_
              (lambda (_g45864601_)
                (if (gx#stx-pair? _g45864601_)
                    (let ((_e45884603_ (gx#stx-e _g45864601_)))
                      (let ((_hd45894606_ (##car _e45884603_))
                            (_tl45904608_ (##cdr _e45884603_)))
                        (if (gx#stx-pair? _tl45904608_)
                            (let ((_e45914611_ (gx#stx-e _tl45904608_)))
                              (let ((_hd45924614_ (##car _e45914611_))
                                    (_tl45934616_ (##cdr _e45914611_)))
                                (if (gx#stx-null? _tl45934616_)
                                    ((lambda (_L4619_)
                                       (let* ((_bind4631_
                                               (gx#resolve-identifier__0
                                                _L4619_))
                                              (_eid4633_
                                               (if _bind4631_
                                                   (##structure-ref
                                                    _bind4631_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L4619_))))
                                         (table-set!
                                          _ht4583_
                                          _eid4633_
                                          _eid4633_)))
                                     _hd45924614_)
                                    (_g45854598_ _g45864601_))))
                            (_g45854598_ _g45864601_))))
                    (_g45854598_ _g45864601_)))))
        (_g45844636_ _stx4582_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx4509_ _ht4510_)
      (let* ((_g45124529_
              (lambda (_g45134526_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45134526_)))
             (_g45114579_
              (lambda (_g45134532_)
                (if (gx#stx-pair? _g45134532_)
                    (let ((_e45164534_ (gx#stx-e _g45134532_)))
                      (let ((_hd45174537_ (##car _e45164534_))
                            (_tl45184539_ (##cdr _e45164534_)))
                        (if (gx#stx-pair? _tl45184539_)
                            (let ((_e45194542_ (gx#stx-e _tl45184539_)))
                              (let ((_hd45204545_ (##car _e45194542_))
                                    (_tl45214547_ (##cdr _e45194542_)))
                                (if (gx#stx-pair? _tl45214547_)
                                    (let ((_e45224550_
                                           (gx#stx-e _tl45214547_)))
                                      (let ((_hd45234553_ (##car _e45224550_))
                                            (_tl45244555_ (##cdr _e45224550_)))
                                        (if (gx#stx-null? _tl45244555_)
                                            ((lambda (_L4558_ _L4559_)
                                               (let* ((_bind4574_
                                                       (gx#resolve-identifier__0
                                                        _L4559_))
                                                      (_eid4576_
                                                       (if _bind4574_
                                                           (##structure-ref
                                                            _bind4574_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L4559_))))
                                                 (begin
                                                   (table-set!
                                                    _ht4510_
                                                    _eid4576_
                                                    _eid4576_)
                                                   (gxc#compile-e
                                                    _L4558_
                                                    _ht4510_))))
                                             _hd45234553_
                                             _hd45204545_)
                                            (_g45124529_ _g45134532_))))
                                    (_g45124529_ _g45134532_))))
                            (_g45124529_ _g45134532_))))
                    (_g45124529_ _g45134532_)))))
        (_g45114579_ _stx4509_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx4471_)
      (let* ((_g44734483_
              (lambda (_g44744480_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44744480_)))
             (_g44724506_
              (lambda (_g44744486_)
                (if (gx#stx-pair? _g44744486_)
                    (let ((_e44764488_ (gx#stx-e _g44744486_)))
                      (let ((_hd44774491_ (##car _e44764488_))
                            (_tl44784493_ (##cdr _e44764488_)))
                        ((lambda (_L4496_) (ormap1 gxc#compile-e _L4496_))
                         _tl44784493_)))
                    (_g44734483_ _g44744486_)))))
        (_g44724506_ _stx4471_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx4433_)
      (let* ((_g44354445_
              (lambda (_g44364442_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44364442_)))
             (_g44344468_
              (lambda (_g44364448_)
                (if (gx#stx-pair? _g44364448_)
                    (let ((_e44384450_ (gx#stx-e _g44364448_)))
                      (let ((_hd44394453_ (##car _e44384450_))
                            (_tl44404455_ (##cdr _e44384450_)))
                        ((lambda (_L4458_) (gxc#compile-e (last _L4458_)))
                         _tl44404455_)))
                    (_g44354445_ _g44364448_)))))
        (_g44344468_ _stx4433_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx4366_)
      (let* ((_g43684385_
              (lambda (_g43694382_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43694382_)))
             (_g43674430_
              (lambda (_g43694388_)
                (if (gx#stx-pair? _g43694388_)
                    (let ((_e43724390_ (gx#stx-e _g43694388_)))
                      (let ((_hd43734393_ (##car _e43724390_))
                            (_tl43744395_ (##cdr _e43724390_)))
                        (if (gx#stx-pair? _tl43744395_)
                            (let ((_e43754398_ (gx#stx-e _tl43744395_)))
                              (let ((_hd43764401_ (##car _e43754398_))
                                    (_tl43774403_ (##cdr _e43754398_)))
                                (if (gx#stx-pair? _tl43774403_)
                                    (let ((_e43784406_
                                           (gx#stx-e _tl43774403_)))
                                      (let ((_hd43794409_ (##car _e43784406_))
                                            (_tl43804411_ (##cdr _e43784406_)))
                                        (if (gx#stx-null? _tl43804411_)
                                            ((lambda (_L4414_ _L4415_)
                                               (gxc#compile-e _L4414_))
                                             _hd43794409_
                                             _hd43764401_)
                                            (_g43684385_ _g43694388_))))
                                    (_g43684385_ _g43694388_))))
                            (_g43684385_ _g43694388_))))
                    (_g43684385_ _g43694388_)))))
        (_g43674430_ _stx4366_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx4299_)
      (let* ((_g43014318_
              (lambda (_g43024315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g43024315_)))
             (_g43004363_
              (lambda (_g43024321_)
                (if (gx#stx-pair? _g43024321_)
                    (let ((_e43054323_ (gx#stx-e _g43024321_)))
                      (let ((_hd43064326_ (##car _e43054323_))
                            (_tl43074328_ (##cdr _e43054323_)))
                        (if (gx#stx-pair? _tl43074328_)
                            (let ((_e43084331_ (gx#stx-e _tl43074328_)))
                              (let ((_hd43094334_ (##car _e43084331_))
                                    (_tl43104336_ (##cdr _e43084331_)))
                                (if (gx#stx-pair? _tl43104336_)
                                    (let ((_e43114339_
                                           (gx#stx-e _tl43104336_)))
                                      (let ((_hd43124342_ (##car _e43114339_))
                                            (_tl43134344_ (##cdr _e43114339_)))
                                        (if (gx#stx-null? _tl43134344_)
                                            ((lambda (_L4347_ _L4348_)
                                               (gxc#compile-e _L4347_))
                                             _hd43124342_
                                             _hd43094334_)
                                            (_g43014318_ _g43024321_))))
                                    (_g43014318_ _g43024321_))))
                            (_g43014318_ _g43024321_))))
                    (_g43014318_ _g43024321_)))))
        (_g43004363_ _stx4299_))))
  (define gxc#count-values-single% (lambda (_stx4297_) '1))
  (define gxc#count-values-begin%
    (lambda (_stx4215_)
      (let* ((_g42174236_
              (lambda (_g42184233_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42184233_)))
             (_g42164294_
              (lambda (_g42184239_)
                (if (gx#stx-pair? _g42184239_)
                    (let ((_e42204241_ (gx#stx-e _g42184239_)))
                      (let ((_hd42214244_ (##car _e42204241_))
                            (_tl42224246_ (##cdr _e42204241_)))
                        (if (gx#stx-pair/null? _tl42224246_)
                            (let ((_g14234_
                                   (gx#syntax-split-splice _tl42224246_ '0)))
                              (begin
                                (let ((_g14235_
                                       (if (##values? _g14234_)
                                           (##vector-length _g14234_)
                                           1)))
                                  (if (not (##fx= _g14235_ 2))
                                      (error "Context expects 2 values"
                                             _g14235_)))
                                (let ((_target42234249_
                                       (##vector-ref _g14234_ 0))
                                      (_tl42254251_ (##vector-ref _g14234_ 1)))
                                  (if (gx#stx-null? _tl42254251_)
                                      (letrec ((_loop42264254_
                                                (lambda (_hd42244257_
                                                         _expr42304259_)
                                                  (if (gx#stx-pair?
                                                       _hd42244257_)
                                                      (let ((_e42274262_
                                                             (gx#stx-e
                                                              _hd42244257_)))
                                                        (let ((_lp-hd42284265_
                                                               (##car _e42274262_))
                                                              (_lp-tl42294267_
                                                               (##cdr _e42274262_)))
                                                          (_loop42264254_
                                                           _lp-tl42294267_
                                                           (cons _lp-hd42284265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr42304259_))))
              (let ((_expr42314270_ (reverse _expr42304259_)))
                ((lambda (_L4273_)
                   (gxc#compile-e
                    (last (begin
                            '#!void
                            (foldr1 (lambda (_g42864289_ _g42874291_)
                                      (cons _g42864289_ _g42874291_))
                                    '()
                                    _L4273_)))))
                 _expr42314270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop42264254_ _target42234249_ '()))
                                      (_g42174236_ _g42184239_)))))
                            (_g42174236_ _g42184239_))))
                    (_g42174236_ _g42184239_)))))
        (_g42164294_ _stx4215_))))
  (define gxc#count-values-begin-annotation%
    (lambda (_stx4148_)
      (let* ((_g41504167_
              (lambda (_g41514164_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41514164_)))
             (_g41494212_
              (lambda (_g41514170_)
                (if (gx#stx-pair? _g41514170_)
                    (let ((_e41544172_ (gx#stx-e _g41514170_)))
                      (let ((_hd41554175_ (##car _e41544172_))
                            (_tl41564177_ (##cdr _e41544172_)))
                        (if (gx#stx-pair? _tl41564177_)
                            (let ((_e41574180_ (gx#stx-e _tl41564177_)))
                              (let ((_hd41584183_ (##car _e41574180_))
                                    (_tl41594185_ (##cdr _e41574180_)))
                                (if (gx#stx-pair? _tl41594185_)
                                    (let ((_e41604188_
                                           (gx#stx-e _tl41594185_)))
                                      (let ((_hd41614191_ (##car _e41604188_))
                                            (_tl41624193_ (##cdr _e41604188_)))
                                        (if (gx#stx-null? _tl41624193_)
                                            ((lambda (_L4196_ _L4197_)
                                               (gxc#compile-e _L4196_))
                                             _hd41614191_
                                             _hd41584183_)
                                            (_g41504167_ _g41514170_))))
                                    (_g41504167_ _g41514170_))))
                            (_g41504167_ _g41514170_))))
                    (_g41504167_ _g41514170_)))))
        (_g41494212_ _stx4148_))))
  (define gxc#count-values-let-values%
    (lambda (_stx4081_)
      (let* ((_g40834100_
              (lambda (_g40844097_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g40844097_)))
             (_g40824145_
              (lambda (_g40844103_)
                (if (gx#stx-pair? _g40844103_)
                    (let ((_e40874105_ (gx#stx-e _g40844103_)))
                      (let ((_hd40884108_ (##car _e40874105_))
                            (_tl40894110_ (##cdr _e40874105_)))
                        (if (gx#stx-pair? _tl40894110_)
                            (let ((_e40904113_ (gx#stx-e _tl40894110_)))
                              (let ((_hd40914116_ (##car _e40904113_))
                                    (_tl40924118_ (##cdr _e40904113_)))
                                (if (gx#stx-pair? _tl40924118_)
                                    (let ((_e40934121_
                                           (gx#stx-e _tl40924118_)))
                                      (let ((_hd40944124_ (##car _e40934121_))
                                            (_tl40954126_ (##cdr _e40934121_)))
                                        (if (gx#stx-null? _tl40954126_)
                                            ((lambda (_L4129_ _L4130_)
                                               (gxc#compile-e _L4129_))
                                             _hd40944124_
                                             _hd40914116_)
                                            (_g40834100_ _g40844103_))))
                                    (_g40834100_ _g40844103_))))
                            (_g40834100_ _g40844103_))))
                    (_g40834100_ _g40844103_)))))
        (_g40824145_ _stx4081_))))
  (define gxc#count-values-call%
    (lambda (_stx3948_)
      (let* ((___stx1416814169_ _stx3948_)
             (_g39513980_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx1416814169_))))
        (let ((___kont1417014171_
               (lambda (_L4048_ _L4049_)
                 (length (begin
                           '#!void
                           (foldr1 (lambda (_g40704073_ _g40714075_)
                                     (cons _g40704073_ _g40714075_))
                                   '()
                                   _L4048_)))))
              (___kont1417414175_ (lambda () '#f)))
          (let ((___match1421314214_
                 (lambda (_e39553992_
                          _hd39563995_
                          _tl39573997_
                          _e39584000_
                          _hd39594003_
                          _tl39604005_
                          _e39614008_
                          _hd39624011_
                          _tl39634013_
                          _e39644016_
                          _hd39654019_
                          _tl39664021_
                          ___splice1417214173_
                          _target39674024_
                          _tl39694026_)
                   (letrec ((_loop39704029_
                             (lambda (_hd39684032_ _rand39744034_)
                               (if (gx#stx-pair? _hd39684032_)
                                   (let ((_e39714037_ (gx#stx-e _hd39684032_)))
                                     (let ((_lp-tl39734042_
                                            (##cdr _e39714037_))
                                           (_lp-hd39724040_
                                            (##car _e39714037_)))
                                       (_loop39704029_
                                        _lp-tl39734042_
                                        (cons _lp-hd39724040_
                                              _rand39744034_))))
                                   (let ((_rand39754045_
                                          (reverse _rand39744034_)))
                                     (let ((_L4048_ _rand39754045_)
                                           (_L4049_ _hd39654019_))
                                       (if (gx#free-identifier=?
                                            _L4049_
                                            'values)
                                           (___kont1417014171_ _L4048_ _L4049_)
                                           (___kont1417414175_))))))))
                     (_loop39704029_ _target39674024_ '())))))
            (if (gx#stx-pair? ___stx1416814169_)
                (let ((_e39553992_ (gx#stx-e ___stx1416814169_)))
                  (let ((_tl39573997_ (##cdr _e39553992_))
                        (_hd39563995_ (##car _e39553992_)))
                    (if (gx#stx-pair? _tl39573997_)
                        (let ((_e39584000_ (gx#stx-e _tl39573997_)))
                          (let ((_tl39604005_ (##cdr _e39584000_))
                                (_hd39594003_ (##car _e39584000_)))
                            (if (gx#stx-pair? _hd39594003_)
                                (let ((_e39614008_ (gx#stx-e _hd39594003_)))
                                  (let ((_tl39634013_ (##cdr _e39614008_))
                                        (_hd39624011_ (##car _e39614008_)))
                                    (if (gx#identifier? _hd39624011_)
                                        (if (gx#stx-eq? '%#ref _hd39624011_)
                                            (if (gx#stx-pair? _tl39634013_)
                                                (let ((_e39644016_
                                                       (gx#stx-e
                                                        _tl39634013_)))
                                                  (let ((_tl39664021_
                                                         (##cdr _e39644016_))
                                                        (_hd39654019_
                                                         (##car _e39644016_)))
                                                    (if (gx#stx-null?
                                                         _tl39664021_)
                                                        (if (gx#stx-pair/null?
                                                             _tl39604005_)
                                                            (let ((___splice1417214173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl39604005_ '0)))
                      (let ((_tl39694026_
                             (##vector-ref ___splice1417214173_ '1))
                            (_target39674024_
                             (##vector-ref ___splice1417214173_ '0)))
                        (if (gx#stx-null? _tl39694026_)
                            (___match1421314214_
                             _e39553992_
                             _hd39563995_
                             _tl39573997_
                             _e39584000_
                             _hd39594003_
                             _tl39604005_
                             _e39614008_
                             _hd39624011_
                             _tl39634013_
                             _e39644016_
                             _hd39654019_
                             _tl39664021_
                             ___splice1417214173_
                             _target39674024_
                             _tl39694026_)
                            (___kont1417414175_))))
                    (___kont1417414175_))
                (___kont1417414175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont1417414175_))
                                            (___kont1417414175_))
                                        (___kont1417414175_))))
                                (___kont1417414175_))))
                        (___kont1417414175_))))
                (___kont1417414175_)))))))
  (define gxc#count-values-if%
    (lambda (_stx3852_)
      (let* ((_g38543875_
              (lambda (_g38553872_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38553872_)))
             (_g38533945_
              (lambda (_g38553878_)
                (if (gx#stx-pair? _g38553878_)
                    (let ((_e38593880_ (gx#stx-e _g38553878_)))
                      (let ((_hd38603883_ (##car _e38593880_))
                            (_tl38613885_ (##cdr _e38593880_)))
                        (if (gx#stx-pair? _tl38613885_)
                            (let ((_e38623888_ (gx#stx-e _tl38613885_)))
                              (let ((_hd38633891_ (##car _e38623888_))
                                    (_tl38643893_ (##cdr _e38623888_)))
                                (if (gx#stx-pair? _tl38643893_)
                                    (let ((_e38653896_
                                           (gx#stx-e _tl38643893_)))
                                      (let ((_hd38663899_ (##car _e38653896_))
                                            (_tl38673901_ (##cdr _e38653896_)))
                                        (if (gx#stx-pair? _tl38673901_)
                                            (let ((_e38683904_
                                                   (gx#stx-e _tl38673901_)))
                                              (let ((_hd38693907_
                                                     (##car _e38683904_))
                                                    (_tl38703909_
                                                     (##cdr _e38683904_)))
                                                (if (gx#stx-null? _tl38703909_)
                                                    ((lambda (_L3912_
                                                              _L3913_
                                                              _L3914_)
                                                       (let ((_c139313933_
                                                              (gxc#compile-e
                                                               _L3913_)))
                                                         (if _c139313933_
                                                             (let* ((_c13936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _c139313933_)
                            (_c239373939_ (gxc#compile-e _L3912_)))
                       (if _c239373939_
                           (let ((_c23942_ _c239373939_))
                             (if (fx= _c13936_ _c23942_) _c13936_ '#f))
                           '#f))
                     '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd38693907_
                                                     _hd38663899_
                                                     _hd38633891_)
                                                    (_g38543875_
                                                     _g38553878_))))
                                            (_g38543875_ _g38553878_))))
                                    (_g38543875_ _g38553878_))))
                            (_g38543875_ _g38553878_))))
                    (_g38543875_ _g38553878_)))))
        (_g38533945_ _stx3852_)))))
